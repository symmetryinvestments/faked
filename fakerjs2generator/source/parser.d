module parser;

import std.array : array;
import std.ascii : isAlphaNum;
import std.algorithm.searching : all, canFind, endsWith, startsWith;
import std.algorithm.iteration : filter, joiner, map, splitter;
import std.exception : enforce;
import std.conv : to;
import std.file : exists, readText;
import std.format : format;
import std.range : ElementEncodingType, empty;
import std.string : strip;
import std.stdio;
import std.typecons : Nullable, nullable;
import std.traits : FieldNameTuple, isArray, isIntegral, isSomeString;
import std.uni : toLower, isControl;
import std.utf : byDchar;
import std.sumtype;
import std.json;

import defis;
import helper;

string[][] mergeArray =
	[ [ "person", "first_name" ]
	, [ "person", "last_name" ]
	, [ "person", "prefix" ]
	];

void backFillMergeArray(ref JsonFile l) {
	if(!l.first_name.isNull()) {
		if(l.data.person.isNull()) {
			l.data.person = PersonFolder.init;
		}
		l.data.person.get().first_name = l.first_name.get();
	}
	if(!l.last_name.isNull()) {
		if(l.data.person.isNull()) {
			l.data.person = PersonFolder.init;
		}
		l.data.person.get().last_name = l.last_name.get();
	}
	if(!l.prefix.isNull()) {
		if(l.data.person.isNull()) {
			l.data.person = PersonFolder.init;
		}
		l.data.person.get().prefix = l.prefix.get();
	}
	if(!l.female_middle_name.isNull()) {
		if(l.data.person.isNull()) {
			l.data.person = PersonFolder.init;
		}
		l.data.person.get().female_middle_name = l.female_middle_name.get();
	}
	if(!l.male_middle_name.isNull()) {
		if(l.data.person.isNull()) {
			l.data.person = PersonFolder.init;
		}
		l.data.person.get().male_middle_name = l.male_middle_name.get();
	}
	if(!l.county.isNull()) {
		if(l.data.location.isNull()) {
			l.data.location = LocationFolder.init;
		}
		l.data.location.get().county = l.county.get();
	}
}

T parseJson(T)(JSONValue jv) {
	return parseJson!(T)(jv, []);
}

private bool containsControlCharacter(string s) {
	dchar[] cs = [ '\u061C', '\u200E', '\u200F', '\u202A', '\u202B'
		, '\u202C','\u202D', '\u202E', '\u2066', '\u2067', '\u2068', '\u2069'
		];
	foreach(dchar c; s) {
		if(isControl(c) || canFind(cs, c)) {
			return true;
		}
	}
	return false;
}

private T parseJson(T)(JSONValue jv, string[] path) {
	static if(isArray!T && !isSomeString!T) {
		enforce(jv.type == JSONType.array, format("Got '%s' wanted array in %s type %s"
					, jv, path, jv.type));
		alias EET = ElementEncodingType!T;
		static if(is(EET == string)) {
			return jv.arrayNoRef()
				.map!(it => parseJson!(EET)(it, path))
				.filter!(s => !containsControlCharacter(s))
				.array;
		} else {
			return jv.arrayNoRef()
				.map!(it => parseJson!(EET)(it, path))
				.array;
		}
	} else static if(is(T == Nullable!F, F)) {
		return jv.type == JSONType.null_
			? T.init
			: parseJson!(F)(jv, path).nullable();
	} else static if(is(T == Mustache[string])) {{
		T ret;
		foreach(key, value; jv.objectNoRef()) {
			ret[key] = Mustache(value.get!string());
		}
		return ret;
	}} else static if(is(T == SumType!(TT), TT...)) {{
		T ret;
		static foreach(H; TT) {
			try {
				static if(is(H == string[])) {
					ret = parseJson!(H)(jv, path);
				}
			} catch(Exception e) {
				//writefln("parseSumType %s '%s'", path, e.msg);
			}
		}
		return ret;
	}} else static if(is(T == Number)) {{
		return Number(jv.get!string());
	}} else static if(is(T == Mustache)) {{
		return Mustache(jv.get!string());
	}} else static if(is(T == string)) {
		return jv.get!string();
	} else static if(is(T == struct)) {
		T ret;
		static foreach(string mem; [FieldNameTuple!(T)].filter!(m => !m.empty)) {{
			enum memJS = stripTrailingUnderscore(mem);
			enforce(jv.type == JSONType.object
					, format("expected an object got '%s' %s", jv.toPrettyString()
						, path ~ mem));
			JSONValue* mPtr = memJS in jv;

			alias MemType = typeof(__traits(getMember, T, mem));
			static if(is(MemType == string)) {
				__traits(getMember, ret, mem) = (*mPtr).get!string();
			} else static if(is(MemType == Nullable!F, F)) {
				if(mPtr !is null && (*mPtr).type != JSONType.null_) {
					__traits(getMember, ret, mem) = parseJson!(F)(*mPtr, path ~ mem);
				}
			} else static if(isIntegral!(MemType)) {
				__traits(getMember, ret, mem) = (*mPtr).get!int();
			} else {
				enforce(mPtr !is null, format("Expected non null %s", path ~ mem));
				__traits(getMember, ret, mem) = parseJson!(MemType)(*mPtr, path ~ mem);
			}
		}}
		return ret;
	} else {
		static assert(false, "Not handled " ~ T.stringof);
	}
}

Language parseLanguage(string folder) {
	return parseFolder!(Language)([folder]);
}

T parseFolder(T)(string[] path) {
	T ret;
	static foreach(string mem; [FieldNameTuple!(T)].filter!(m => !m.empty)) {{
		try {
			alias MemType = typeof(__traits(getMember, T, mem));
			string lowerCase = mem.toLower();
			//writefln("%--(%s, %), %s %s %s", path, mem, lowerCase, MemType.stringof);
			if(MemType.stringof.endsWith("Folder")) {
				string trimFolder = MemType.stringof[0 .. $ - 6].toLower();
				__traits(getMember, ret, mem) = parseFolder!(MemType)(path ~ trimFolder);
			} else {
				static if(is(MemType == Mustache[string])) {
					__traits(getMember, ret, mem) = parseMustacheObject(path ~ mem);
				} else static if(is(MemType == SumType!(TT), TT...)) {
					__traits(getMember, ret, mem) = parseSumType!(TT)(path ~ mem);
				} else static if(is(MemType == MergeArray)) {
					__traits(getMember, ret, mem) = parseMergeArray(path ~ mem);
				} else static if(is(MemType == Number[])) {
					//writeln("Number[]");
				} else {
					__traits(getMember, ret, mem) = parseStruct!(MemType)(path ~ mem);
				}
			}
		} catch(Exception e) {
			writefln("%--(%s,%),%s %s", path, mem, e.message);
		}
	}}
	return ret;
}

string[] parseStringArray(string[] path) {
	string f = openAndTrimFile(path);
	if(f.empty) {
		//writefln("empty %(%s, %)", path);
		return [];
	} else {
		JSONValue j = parseJSON(f);
		return j.arrayNoRef
			.map!((JSONValue it) {
				return it.get!string();
			})
			.array;
	}
}

Mustache[] parseMustacheArray(string[] path) {
	string f = openAndTrimFile(path);
	if(f.empty) {
		//writefln("empty %(%s, %)", path);
		return [];
	} else {
		JSONValue j = parseJSON(f);
		return j.arrayNoRef
			.map!((JSONValue it) {
				return Mustache(it.get!string());
			})
			.array;
	}
}

Number[] parseNumberArray(string[] path) {
	string f = openAndTrimFile(path);
	if(f.empty) {
		//writefln("empty %(%s, %)", path);
		return [];
	} else {
		JSONValue j = parseJSON(f);
		return j.arrayNoRef
			.map!((JSONValue it) {
				return Number(it.get!string());
			})
			.array;
	}
}

MergeArray parseMergeArray(string[] path) {
	MergeArray ret;
	string f = openAndTrimFile(path);
	if(f.empty) {
		return ret;
	} else {
		string s = f;
		const pre = "mergeArrays(";
		const post = ");";
		enforce(s.startsWith(pre)
				, format("not mergeArray prefix '%s'", s));
		enforce(s.endsWith(post)
				, format("not mergeArray postfix '%s'", s));
		s = s[pre.length .. $ - post.length];
		ret = MergeArray(s.splitter(",")
				.map!(it => it.strip())
				.array);
		return ret;
	}
}

Mustache[string] parseMustacheObject(string[] path) {
	string f = openAndTrimFile(path);
	Mustache[string] ret;
	if(f.empty) {
		return ret;
	} else {
		JSONValue j = parseJSON(f);
		foreach(key, value; j.objectNoRef()) {
			ret[key] = Mustache(value.get!string());
		}
		return ret;
	}
}

T parseStruct(T)(string[] path) {
	string f = openAndTrimFile(path);
	T ret;
	if(f.empty) {
		return ret;
	} else {
		JSONValue j;
		try {
			j = parseJSON(f);
		} catch(Exception e) {
			throw new Exception("Failed to json parse '" ~ f ~ "'");
		}
		ret = parseStruct!(T)(j);
		return ret;
	}
}

T parseStruct(T)(JSONValue j) {
	static if(is(T == Nullable!F, F)) {
		return j.isNull()
			? T.init
			: nullable(parseStruct!(F)(j));
	} else static if(isArray!(T) && !isSomeString!(T)) {
		enforce(j.type == JSONType.array
				, format("Not an array but %s", j.toPrettyString()));
		alias ET = ElementEncodingType!(T);
		T ret = j.arrayNoRef()
			.map!(it => it.parseStruct!(ET)())
			.array;
		return ret;
	} else static if(isSomeString!(T)) {
		return j.get!(string)();
	} else static if(is(T == Mustache)) {
		enforce(j.type == JSONType.string
				, format("expected an Mustache got '%s'", j.toPrettyString()));
		return Mustache(j.get!string());
	} else static if(is(T == Number)) {
		enforce(j.type == JSONType.string
				, format("expected an Number got '%s'", j.toPrettyString()));
		return Number(j.get!string());
	} else static if(is(T == MustacheWeight)) {
		enforce(j.type == JSONType.object
				, format("expected an MustacheWeight got '%s'", j.toPrettyString()));
		MustacheWeight wm;

		JSONValue* vPtr = "value" in j;
		enforce(vPtr !is null
				, format("'value' not in '%s'", j.toPrettyString()));
		enforce((*vPtr).type == JSONType.string
				, format("'value' not in a string but '%s'", j.toPrettyString()));
		wm.value = Mustache((*vPtr).get!string());

		JSONValue* wPtr = "weight" in j;
		enforce(wPtr !is null
				, format("'weight' not in '%s'", j.toPrettyString()));
		enforce((wPtr).type == JSONType.integer
				, format("'weight' not in a integer but '%s'", j.toPrettyString()));
		wm.weight = (*wPtr).get!int();

		return wm;
	} else {
		T ret;
		static foreach(string mem; [FieldNameTuple!(T)].filter!(m => !m.empty)) {{
			enum memJS = stripTrailingUnderscore(mem);
			enforce(j.type == JSONType.object
					, format("expected an object got '%s'", j.toPrettyString()));
			JSONValue* mPtr = memJS in j;

			alias MemType = typeof(__traits(getMember, T, mem));
			static if(is(MemType == Nullable!F, F)) {
				if(mPtr !is null) {
					__traits(getMember, ret, mem) = parseStruct!(F)(*mPtr);
				}
			} else {
				enforce(mPtr !is null
						, format("%s not in '%s'", memJS, j.toPrettyString()));

				static if(is(MemType == string)) {
					__traits(getMember, ret, mem) = (*mPtr).get!string();
				} else static if(is(MemType == SumType!(TT), TT...)) {
					writeln("SumType ", T.stringof);
				} else static if(isIntegral!(MemType)) {
					__traits(getMember, ret, mem) = cast(MemType)(*mPtr).get!int();
				} else {
					__traits(getMember, ret, mem) = parseStruct!(MemType)(*mPtr);
				}
			}
		}}
		return ret;
	}
}

SumType!(TT) parseSumType(TT...)(string[] path) {
	SumType!(TT) ret;
	string f = openAndTrimFile(path);
	if(f.empty) {
		return ret;
	}
	static foreach(T; TT) {
		try {
			static if(is(T == string[])) {
				string[] r = parseStringArray(path);
				if(!r.empty) {
					ret = r;
					return ret;
				}
			} else static if(is(T == MergeArray)) {
				MergeArray r = parseMergeArray(path);
				if(!r.arrayNames.empty) {
					ret = r;
					return ret;
				}
			} else static if(!is(T == Dummy)) {
				static assert(false, T.stringof ~ " Not Handled");
			}
		} catch(Exception e) {
			writefln("parseSumType %s '%s'", path, e.msg);
		}
	}
	return ret;
}



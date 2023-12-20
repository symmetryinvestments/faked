module parser;

import std.array : array;
import std.algorithm.searching : endsWith, startsWith;
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
import std.uni : toLower;

import json2;
import defis;
import helper;

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
				static if(is(MemType == MustacheWeight)) {
					assert(false, format("%--(%s,%),%s", path, mem));
				} else static if(is(MemType == MergeArray)) {
					assert(false, format("%--(%s,%),%s", path, mem));
				} else static if(isArray!(MemType) &&
						is(ElementEncodingType!(MemType) == Number))
				{
					assert(false, format("%--(%s,%),%s", path, mem));
				} else static if(isArray!(MemType) &&
						is(ElementEncodingType!(MemType) == Mustache))
				{
					__traits(getMember, ret, mem) = parseMustacheArray(path ~ mem);
				} else static if(isArray!(MemType) &&
						is(ElementEncodingType!(MemType) == string))
				{
					__traits(getMember, ret, mem) = parseStringArray(path ~ mem);
				} else static if(is(MemType == Mustache[string])) {
					__traits(getMember, ret, mem) = parseMustacheObject(path ~ mem);
				} else static if(is(MemType == struct)) {
					assert(false, format("%--(%s,%),%s", path, mem));
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
		JSONValue j = parseJSON(f);
		ret = parseStruct!(T)(j);
		return ret;
	}
}

T parseStruct(T)(JSONValue j) {
	T ret;
	static if(isArray!(T) && !isSomeString!(T)) {
		enforce(j.type == JSONType.array
				, format("Not an array but %s", j.toPrettyString()));
		alias ET = ElementEncodingType!(T);
		ret = j.arrayNoRef()
			.map!(it => it.parseStruct!(T)())
			.array;
	} else {
		static foreach(mem; FieldNameTuple!(T)) {{
			enum memJS = stripTrailingUnderscore(mem);
			JSONValue* mPtr = memJS in j;
			enforce(mPtr !is null
					, format("%s not in %s", memJS, j.toPrettyString()));

			alias MemType = typeof(__traits(getMember, T, mem));
			static if(is(MemType == string)) {
				__traits(getMember, ret, mem) = (*mPtr).get!string();
			} else static if(isIntegral!(MemType)) {
				__traits(getMember, ret, mem) = (*mPtr).get!int();
			} else {
				static assert(false, T.stringof ~ "." ~ mem);
			}
		}}
	}
	return ret;
}

string stripTrailingUnderscore(string s) {
	return s.endsWith("_")
		? s[0 .. $ - 1]
		: s;
}


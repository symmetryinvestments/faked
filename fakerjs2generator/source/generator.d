module generator;

import std.array : appender;
import std.algorithm.iteration : filter;
import std.algorithm.searching : endsWith;
import std.exception : enforce;
import std.conv : to;
import std.uni : toUpper , toLower;
import std.format : format, formattedWrite;
import std.range : empty;
import std.traits : FieldNameTuple;
import std.typecons : Nullable;
import std.stdio;
import std.sumtype;

import helper;
import defis;

void generate(Language lang, string langName, const bool base) {
	auto app = appender!string();
	traverse(lang, app, [], base);
	writeln(app.data);
	writeln("\n\n\n");
}

void generate(Out)(Language lang, auto ref Out o, string[] path, const bool base) {
	traverse(lang, o, path, base);
}

void traverse(T,Out)(T t, ref Out o, string[] path, const bool base) {
	static if(T.stringof.endsWith("Folder")
			|| is(T == Language)
			|| is(T == Product_Name)
			|| is(T == DateWeekday)
			|| is(T == Title)
			|| is(T == DateMonth))
	{
		static foreach(string mem; [FieldNameTuple!(T)].filter!(m => !m.empty)) {{
			traverse(__traits(getMember, t, mem), o, path ~ mem, base);
		}}
	} else static if(is(T == Nullable!F, F)) {
		if(!t.isNull()) {
			traverse(t.get(), o, path, base);
		}
	} else {
		static if(is(T == string[])) {
			genStringArray(t, o, path, base);
			formattedWrite(o, "\n\n");
		} else static if(is(T == Mustache[])) {
			genMustache(t, o, path, base);
			formattedWrite(o, "\n\n");
		} else static if(is(T == Number[])) {
			//genNumberArray(t, o, path);
		} else {
			writefln("Unhandled %s", T.stringof);
		}
	}
}

void genTopMatter(Out)(ref JsonFile jf, auto ref Out o, const string language, const bool base) {
	if(base) {
		iformat(o, 0, `module faker.base;

import std.random;
import std.array;
import std.format;
import std.conv : to;
import std.string : toUpper;
import std.range : iota, take, repeat;
import std.algorithm : map, joiner;

class Faker {
@safe:
	Random rnd;
	this(int seed) {
		this.rnd = Random(seed);
	}

`);
	} else {
		string chain = jf.chain.length == 1 ? "en" : jf.chain[0];
		chain = chain == "en"
			? "Faker"
			: "Faker_" ~ chain.toLower();
		iformat(o, 0, `module faker.faker_%1$s;

import std.random;
import std.array;
import std.format;
import std.conv : to;
import std.string : toUpper;
import std.range : iota, take, repeat;
import std.algorithm : map, joiner;
import faker.base;%3$s

class Faker_%1$s : %2$s {
@safe:
	this(int seed) {
		super(seed);
	}

`, language.toLower(), chain
, chain != "Faker" ? "\nimport faker.faker_%s;".format(jf.chain[0].toLower()) : "");
	}
}

void genStringArray(Out)(string[] strs, ref Out o, string[] path, const bool base) {
	iformat(o, 1, "%sstring %s() {\n", base ? "" : "override ", pathToFuncName(path));
	iformat(o, 2, "const string[] strs =\n\t\t[ ");
	str80(o, strs, 2);
	o.put(" ];\n\n");
	iformat(o, 2, "return choice(strs, this.rnd);\n\t}");
}

void genMustache(Out)(Mustache[] m, ref Out o, string[] path, const bool base) {
	iformat(o, 1, "%sstring %s() {\n", base ? "" : "override ", pathToFuncName(path));
	iformat(o, 2, "assert(false);\n\t}");
}

string pathToFuncName(string[] path) {
	enforce(path.length > 1, to!string(path));
	string ret = path[0];
	foreach(it; path[1 .. $]) {
		char up = to!char(it[0].toUpper());
		string ta = up ~ it[1 .. $].camelCase();
		ret ~= ta;
	}
	return ret;
}

void iformat(Out,Args...)(ref Out o, size_t indent, string f, Args args) {
	foreach(_; 0 .. indent) {
		o.put('\t');
	}
	formattedWrite(o, f, args);
}

void str80(Out)(ref Out o, string[] strs, size_t tabs) {
	size_t curStrCount;
	size_t curLength = tabs * 4;
	size_t curLineCount = 0;
	foreach(idx, s; strs) {
		if(curStrCount == 0) {
			if(idx > 0) {
				o.put(", ");
				curLength += 2;
			}
			o.put("q\"{");
			o.put(s);
			o.put("}\"");
			curLength += s.length + 2;
			++curStrCount;
		} else {
			if(curLength > 80) {
				curLength = tabs * 4;
				o.put('\n');
				foreach(_; 0 .. tabs) {
					o.put('\t');
				}
				curStrCount = 0;
			}
			if(idx > 0) {
				o.put(", ");
				curLength += 2;
			}
			o.put("q\"{");
			o.put(s);
			o.put("}\"");
			curLength += s.length + 2;
		}
	}
}

module generator;

import std.array : appender;
import std.algorithm.iteration : filter;
import std.algorithm.searching : endsWith;
import std.exception : enforce;
import std.conv : to;
import std.uni : toUpper;
import std.format : formattedWrite;
import std.range : empty;
import std.traits : FieldNameTuple;
import std.stdio;
import std.sumtype;

import defis;

void generate(Language lang, string langName) {
	auto app = appender!string();
	traverse(lang, app, []);
}

void traverse(T,Out)(T t, ref Out o, string[] path) {
	static if(T.stringof.endsWith("Folder") || is(T == Language)) {
		static foreach(string mem; [FieldNameTuple!(T)].filter!(m => !m.empty)) {{
			traverse(__traits(getMember, t, mem), o, path ~ mem);
		}}
	} else {
		static if(is(T == string[])) {
			genStringArray(t, o, path);
		} else static if(is(T == Number[])) {
			//genNumberArray(t, o, path);
		} else static if(is(T == ForwardToOther)) {
			writeln("ForwardToOther");
			genForwardToOther(t, o, path);
		} else static if(is(T == SumType!(TT), TT...)) {
			writeln("SumType");
			enum m = buildForwarder!(TT);
			pragma(msg, m);
			mixin(m);
		} else {
			writefln("Unhandled %s", T.stringof);
		}
	}
}

void genForwardToOther(Out)(ForwardToOther fto, ref Out o, string[] path) {
	auto app = appender!string();
	iformat(app, 1, "string %s() {\n", pathToFuncName(path));
	iformat(app, 2, "return %s();\n", fto.fwd);
	iformat(app, 0, "}\n", fto.fwd);
	writeln(app.data);
}

void genStringArray(Out)(string[] strs, ref Out o, string[] path) {
	iformat(o, 1, "string %s() {\n", pathToFuncName(path));
	iformat(o, 2, "const string[] strs =\n\t\t[ ");
	str80(o, strs, 2);
	o.put(" ];\n\n");
	iformat(o, 2, "return choice(strs, this.rnd);\n\t}\n");
}

string pathToFuncName(string[] path) {
	enforce(path.length > 1, to!string(path));
	string ret = path[0];
	foreach(it; path[1 .. $]) {
		char up = to!char(it[0].toUpper());
		string ta = up ~ it[1 .. $];
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
			o.put('"');
			o.put(s);
			o.put('"');
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
			o.put('"');
			o.put(s);
			o.put('"');
			curLength += s.length + 2;
		}
	}
}

string buildForwarder(TT...)() {
	string ret = "t.match!(";
	static foreach(T; TT) {
		ret ~= "\n\t(" ~ T.stringof ~ " h) { writefln(\"\\tMatch %s\", `" ~ T.stringof ~ "`); traverse(h, o, path); }, ";
	}
	ret ~= "\n);\n";
	return ret;
}

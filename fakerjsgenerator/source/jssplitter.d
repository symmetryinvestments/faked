module jssplitter;

import std.array;
import std.algorithm;
import std.stdio;
import std.string;
import std.json;
import std.typecons : Nullable, nullable;

enum Type {
	undefined,
	strings,
	call,
	json,
	digit,
	mustache,
	unknown,
}

Type findType(string[] lines) {
	Type type = Type.undefined;
	foreach(l; lines) {
		bool isCall = l.indexOf("#{") != -1;
		bool isMustache = l.indexOf("{{") != -1;
		bool isJson = l.endsWith(": {") || l.endsWith(": [");
		bool isDigit = l.indexOf("##") != -1 || l.indexOf(".#") != -1
			|| l.indexOf("#") != -1;

		Type t;
		if(isCall && !isMustache && !isJson && !isDigit) {
			t = Type.call;
		} else if(!isCall && isMustache && !isJson && !isDigit) {
			t = Type.mustache;
		} else if(!isCall && !isMustache && isJson && !isDigit) {
			t = Type.json;
		} else if(!isCall && !isMustache && !isJson && isDigit) {
			t = Type.digit;
		} else {
			t = Type.strings;
		}

		//writefln("%20s %s", t, l);

		if(type == Type.undefined) {
			//writefln("first %s %s %s %s '%s'", isCall, isMustache, isJson, isDigit, l);
			type = t;
			continue;
		} else if(t != type && type != Type.json) {
			//writefln("secon %s %s %s %s %s %s '%s'", isCall, isMustache, isJson, isDigit
			//		, t, type, l);
			type = Type.unknown;
			break;
		}
	}
	return type;
}

string removeLicense(string code) {
	if(code.startsWith("/*")) {
		code = code[code.indexOf("*/", 2) + 2 .. $].stripLeft();
	}
	return code;
}

struct TypeLines {
	Type type;
	string[] lines;
}

private string[] singleLineSplit(string s) {
	string[] a = s.split("\n");
	string[][] b = a.map!(it => it.split(", ")).array;
	string[] c = b.joiner().array;
	auto ret2 = c
		.map!(l => l.strip)
		.filter!(l => !l.empty)
		.filter!(l => !l.startsWith("//"))
		.array;
	return ret2;
}

Nullable!TypeLines jssplit(string input, const string path) {
	//string[] lines = split(input.removeLicense(), "\n")
	string[] lines = singleLineSplit(input.removeLicense())
		.map!(a => a.strip("\", \t\n\r"))
		.filter!(a => !a.empty && !a.startsWith("//"))
		.array;

	//if(lines.length < 3) {
	//	//writeln("\t\tshort");
	//	return TypeLines(Type.undefined, []);
	//}
	string[] prefixes = [ "module[\"exports\"] = "
		, "module.exports = "
		, "module['exports'] = "
		, "export default ["
		, "export default Object.freeze(["
		, "export default {"
	];
	auto pf = prefixes.find!((a,b) => b.startsWith(a))(lines.front);
	if(pf.empty) {
		writefln("Failed to work file %s", path);
		return Nullable!(TypeLines).init;
	}
	assert(!pf.empty, lines.front ~ "\n\n" ~ path);
	lines[0] = lines[0][pf.front.length .. $].strip();
	lines = lines[0 .. $]
		.map!(strip)
		.filter!(l => !l.empty)
		.map!(a => {
			a = a.startsWith("'") ? a[1 .. $] : a;
			a = a.endsWith("'") ? a[0 .. $ - 1] : a;
			return a;
		}())
		.array;
	auto postFixes = ["];", "}", "};", "]", "]);"];
	auto psx = postFixes.find!((a,b) => b.endsWith(a))(lines.back);
	assert(!psx.empty, "'" ~ lines.back ~ "'");
	lines.back = lines.back[0 .. $ - psx.front.length].strip();
	lines = lines.filter!(it => !it.empty).array;

	Type type = findType(lines);
	if(type == Type.unknown) {
		//writefln("unknown %(%s\n%)", lines);
		writefln("unknown %s", path);
	}

	return nullable(TypeLines(type, lines));
}

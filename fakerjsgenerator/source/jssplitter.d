module jssplitter;

import std.array;
import std.algorithm;
import std.stdio;
import std.string;
import std.json;

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
		bool isDigit = l.indexOf("##") != -1 || l.indexOf(".#") != -1;

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
			type = t;
			continue;
		} else if(t != type && type != Type.json) {
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

TypeLines jssplit(string input) {
	string[] lines = split(input.removeLicense(), "\n")
		.map!(a => a.strip("\", \t\n\r"))
		.filter!(a => !a.empty && !a.startsWith("//"))
		.array;

	if(lines.length < 3) {
		//writeln("\t\tshort");
		return TypeLines(Type.undefined, []);
	}
	assert(lines.front.startsWith("module[\"exports\"] = ")
				|| lines.front.startsWith("module.exports = ")
				|| lines.front.startsWith("module['exports'] = ")
			, lines.front ~ "\n" ~ input);
	lines = lines[1 .. $]
		.map!(a => {
			if(!a.empty && a[$ - 1] == '\'') {
				a = a[0 .. $ - 1];
			}
			if(!a.empty && a[0] == '\'') {
				a = a[1 .. $];
			}
			return a;
		}())
		.array;
	//writeln(lines);
	assert(lines.back.startsWith("];")
            || lines.back.startsWith("}")
            || lines.back.startsWith("]"),
			lines.back ~ "\n" ~ input);
	lines = lines[0 .. $ - 1];

	Type type = findType(lines);
	if(type == Type.unknown) {
		//writefln("unknown %(%s\n%)", lines);
	}

	return TypeLines(type, lines);
}

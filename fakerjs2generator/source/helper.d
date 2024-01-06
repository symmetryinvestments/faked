module helper;

import std.algorithm.searching : canFind, endsWith, startsWith;
import std.algorithm.iteration : filter, joiner, map, splitter;
import std.file : exists, readText;
import std.stdio;
import std.range : empty;
import std.conv : to;
import std.uni;
import std.utf;
import std.string : strip;

bool isImportLine(string l) {
	l = l.strip();
	return l.startsWith("import")
		&& l.endsWith(";");
}

string stripImports(string s) {
	string ret;
	bool done = false;
	foreach(l; s.splitter("\n")) {
		if(l.startsWith("//")) {
			continue;
		}
		if(done) {
			ret ~= "\n" ~ l;
		} else {
			if(l.strip.empty()) {
				ret ~= "\n" ~ l;
				continue;
			}
			const isImport = l.startsWith("import") && l.endsWith(";");
			if(!isImport) {
				done = true;
				ret ~= "\n" ~ l;
			}
		}
	}
	return ret;
}

string openAndTrimFile(string[] path) {
	const prefixes = [ "export default Object.freeze("
		, "Object.freeze("
		, "export default null;"
		, "export default"
		];
	const postfixes = [ ");", ";" ];
	string s = "faker/src/locales/" ~ path.joiner("/").to!string() ~ ".ts";
	bool e = exists(s);
	if(!e) {
		return "";
	} else {
		string r = readText(s);
		r = stripImports(r).strip();
		foreach(pre; prefixes) {
			if(r.startsWith(pre)) {
				r = r[pre.length .. $];
				r = r.strip();
			}
		}
		foreach(post; postfixes) {
			if(r.startsWith(post)) {
				r = r[0 .. $ - post.length];
				r = r.strip();
			}
		}

		return r.strip().validateString();
	}
}

string validateString(string s) {
	return s.byUTF!(dchar).to!string();
}

string stripTrailingUnderscore(string s) {
	return s.endsWith("_")
		? s[0 .. $ - 1]
		: s;
}

string camelCase(const string input, dchar[] separaters = ['_']) {
	string output;
	bool upcaseNext = false;
	foreach(c; input) {
		if (!separaters.canFind(c)) {
			if (upcaseNext) {
				output ~= c.toUpper;
				upcaseNext = false;
			}
			else
				output ~= c.toLower;
		}
		else {
			upcaseNext = true;
		}
	}

	return output;
}

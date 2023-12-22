import std.stdio;
import std.file : dirEntries, SpanMode;
import std.string : lastIndexOf;

import parser;
import defis;
import generator;

void main() {
	writeln("Edit source/app.d to start your project.");

	foreach(d; dirEntries("faker/src/locale/", SpanMode.shallow)) {
		string n = d.name;
		ptrdiff_t s = n.lastIndexOf('/');
		n = n[s + 1 .. $ - 3];
		writeln(n);
		Language en = parseLanguage(n);
	}

	//Language en = parseLanguage("en");
	//generate(en, "en");
}

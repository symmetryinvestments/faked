import std.stdio;

import parser;
import defis;
import generator;

void main() {
	writeln("Edit source/app.d to start your project.");
	Language en = parseLanguage("en");
	generate(en, "en");
}

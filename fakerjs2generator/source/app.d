import std.array;
import std.stdio;
import std.algorithm.iteration : filter;
import std.algorithm.sorting : sort;
import std.file : DirEntry, dirEntries, SpanMode, readText;
import std.string : lastIndexOf;
import std.uni : toLower;
import std.format;
import std.json;

import parser;
import defis;
import generator;

void main() {
	genCustomTypes();
	JsonFile bs = buildBase();
	string[] langs;
	DirEntry[] entries = dirEntries("", "*.json", SpanMode.shallow)
			.filter!(it => it.name != "dub.json")
			.filter!(it => it.name != "base.json")
			.array
			.sort!((a,b) => a.name < b.name)
			.array;

	foreach(j; entries) {
		writeln(j.name);
		JSONValue jv = parseJSON(readText(j.name));
		JsonFile jf = parseJson!(JsonFile)(jv, [j.name]);
		backFillMergeArray(jf);
		string langName = j.name[0 .. $ - 5];
		langs ~= langName;
		auto f = File(format("../source/faked/faker_%s.d", langName.toLower()), "w");
		genTopMatter(jf, f.lockingTextWriter(), langName, false);
		generate(jf.data, f.lockingTextWriter(), [], false);
		f.writeln("}");
	}
	generateForward(bs, langs);
}

JsonFile buildBase() {
	string en = "base.json";
	JSONValue jv = parseJSON(readText(en));
	JsonFile jf = parseJson!(JsonFile)(jv, [en]);
	backFillMergeArray(jf);
	string langName = en[0 .. $ - 5];
	auto f = File("../source/faked/faker_base.d", "w");
	genTopMatter(jf, f.lockingTextWriter(), "en", true);
	generate(jf.data, f.lockingTextWriter(), [], true);
	f.writeln("}\n");
	traverseMustachAAs(jf.data, f.lockingTextWriter(), []);
	return jf;
}

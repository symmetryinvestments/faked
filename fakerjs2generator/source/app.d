import std.stdio;
import std.algorithm.iteration : filter;
import std.file : dirEntries, SpanMode, readText;
import std.string : lastIndexOf;
import std.json;

import parser;
import defis;
import generator;

void main() {
	foreach(j; dirEntries("", "*.json", SpanMode.shallow)
			.filter!(it => it.name != "dub.json"))
	{
		writeln(j.name);
		JSONValue jv = parseJSON(readText(j.name));
		JsonFile jf = parseJson!(JsonFile)(jv, [j.name]);
		backFillMergeArray(jf);
	}
}

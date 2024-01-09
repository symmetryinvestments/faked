import std;

const tsfile = `
import %1$s from './src/locales/%1$s/index';
import fs from 'fs';
%3$s // first_name
%4$s // last_name
%5$s // prefix
%6$s // female_middle_name
%7$s // male_middle_name
%8$s // county

const Data = {
	data: %1$s,
	chain: %2$s,
	first_name: %9$s,
	last_name: %10$s,
	prefix: %11$s,
	female_middle_name: %12$s,
	male_middle_name: %13$s,
	county: %14$s,
}
fs.writeFile("%1$s.json", JSON.stringify(Data,null,4), function(err) {
    if (err) {
        console.log(err);
    }
});
`;

string[] localeChain(string lang) {
	const prefix = "faker/src/locale/";
	const fn = prefix ~ lang ~ ".ts";
	string c = readText(fn);
	foreach(l; c.splitter("\n")) {
		const lcl = l.indexOf("locale");
		if(lcl != -1) {
			const lb = l.indexOf("[", lcl);
			if(lb != -1) {
				const rb = l.indexOf("]", lb);
				string[] ret = l[lb+1 .. rb]
					.splitter(",")
					.map!(s => s.strip())
					.filter!(s => s != lang)
					.array;
				return ret;
			}
		}
	}
	return [];
}

string[][] condImport =
	[ ["person", "first_name"]
	, ["person", "last_name"]
	, ["person", "prefix"]
	, ["person", "female_middle_name"]
	, ["person", "male_middle_name"]
	, ["location", "county"]
	];

void main() {
	const prefix = "faker/src/locales/";
	foreach(l; dirEntries(prefix, SpanMode.shallow)) {
		const lang = l[prefix.length .. $];
		if(lang != "index.ts") {
			string fn = "faker/" ~ lang ~ ".ts";
			string[] lc = localeChain(lang);
			{
				bool[] es = new bool[](condImport.length);
				foreach(idx, it; condImport) {
					string condFn = format("%s%s/%--(%s/%).ts", prefix, lang, it);
					es[idx] = exists(condFn);
				}
				auto f = File(fn, "w");
				f.writefln(tsfile, lang, lc
					, es[0] ? format("import %s from './src/locales/%s/%--(%s/%)';\n"
							, condImport[0][$ - 1], lang, condImport[0])
						: ""
					, es[1] ? format("import %s from './src/locales/%s/%--(%s/%)';\n"
							, condImport[1][$ - 1], lang, condImport[1])
						: ""
					, es[2] ? format("import %s from './src/locales/%s/%--(%s/%)';\n"
							, condImport[2][$ - 1], lang, condImport[2])
						: ""
					, es[3] ? format("import %s from './src/locales/%s/%--(%s/%)';\n"
							, condImport[3][$ - 1], lang, condImport[3])
						: ""
					, es[4] ? format("import %s from './src/locales/%s/%--(%s/%)';\n"
							, condImport[4][$ - 1], lang, condImport[4])
						: ""
					, es[5] ? format("import %s from './src/locales/%s/%--(%s/%)';\n"
							, condImport[5][$ - 1], lang, condImport[5])
						: ""
					, es[0] ? condImport[0][$ - 1] : "null"
					, es[1] ? condImport[1][$ - 1] : "null"
					, es[2] ? condImport[2][$ - 1] : "null"
					, es[3] ? condImport[3][$ - 1] : "null"
					, es[4] ? condImport[4][$ - 1] : "null"
					, es[5] ? condImport[5][$ - 1] : "null"
						);
			}
			auto p = execute(["ts-node", fn]);
			writeln(fn, " ", p);
		}
	}
}

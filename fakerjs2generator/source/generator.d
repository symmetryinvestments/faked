module generator;

import std.array : array, appender, replace;
import std.algorithm.iteration : filter, fold, joiner, map, splitter;
import std.algorithm.searching : endsWith, startsWith;
import std.exception : enforce;
import std.conv : to;
import std.uni : toUpper , toLower;
import std.format : format, formattedWrite;
import std.range : empty;
import std.json;
import std.traits : FieldNameTuple;
import std.typecons : Nullable;
import std.string : indexOf;
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
		} else static if(is(T == Airplane[])) {
			genAirplane(t, o, path, base);
			formattedWrite(o, "\n\n");
		} else static if(is(T == Airport[])) {
			genAirport(t, o, path, base);
			formattedWrite(o, "\n\n");
		} else static if(is(T == Currency[])) {
			genCurrency(t, o, path, base);
			formattedWrite(o, "\n\n");
		} else static if(is(T == ChemicalUnit[])) {
			genChemicalUnit(t, o, path, base);
			formattedWrite(o, "\n\n");
		} else static if(is(T == ChemicalElement[])) {
			genChemicalElement(t, o, path, base);
			formattedWrite(o, "\n\n");
		} else static if(is(T == Airline[])) {
			genAirline(t, o, path, base);
			formattedWrite(o, "\n\n");
		} else static if(is(T == MustacheWeight[])) {
			genMustacheWeight(t, o, path, base);
			formattedWrite(o, "\n\n");
		} else static if(is(T == Mustache[string])) {
			genMustacheAA(t, o, path, base);
			formattedWrite(o, "\n\n");
		} else static if(is(T == Number[])) {
			genNumber(t, o, path, base);
			formattedWrite(o, "\n\n");
		} else {
			writefln("Unhandled %s", T.stringof);
		}
	}
}

void genNumber(Out)(Number[] n, ref Out o, string[] path, const bool base) {
	iformat(o, 1, "%sstring %s() {\n", base ? "" : "override ", pathToFuncName(path));
	iformat(o, 2, "const string[] strs =\n\t\t[ ");
	str80(o, n.map!(it => it.num).array, 2);
	o.put(" ];\n\n");
	iformat(o, 2, "return numberBuild(choice(str, this.rnd));\n");
	iformat(o, 1, "}");
}

void genMustacheWeight(Out)(MustacheWeight[] m, ref Out o, string[] path, const bool base) {
	int max = m.map!(it => it.weight).fold!((a, b) => a + b);
	int begin = 0;
	iformat(o, 1, "%sstring %s() {\n", base ? "" : "override ", pathToFuncName(path));
	iformat(o, 2, "const int rndInt = uniform(0, %s, this.rnd);\n\n", max);
	foreach(idx, it; m) {
		iformat(o, 2, "if(rndInt >= %s && rndInt < %s) {\n", begin
				, it.weight + begin);
		iformat(o, 3, "return ");
		buildSingleMustache(o, it.value);
		formattedWrite(o, ";\n");
		iformat(o, 2, "}\n");
		begin += it.weight;
	}
	formattedWrite(o, "\n");
	iformat(o, 2, "return \"\";\n");
	iformat(o, 1, "}");
}

void genMustacheAA(Out)(Mustache[string] m, ref Out o, string[] path, const bool base) {
	string enumName = toFirstUpper(pathToFuncName(path));
	// Non parameter passthrough
	iformat(o, 1, "%sstring %s() {\n", base ? "" : "override ", pathToFuncName(path));
	iformat(o, 2, "const %sEnum[] enums = [ %--(%s, %) ];\n", enumName
			, m.keys().map!(it => enumName ~ "Enum." ~ it));
	iformat(o, 2, "return %s(choice(enums, this.rnd));\n"
			, pathToFuncName(path));
	iformat(o, 1, "}\n\n");

	iformat(o, 1, "%sstring %s(%sEnum which) {\n", base ? "" : "override ", pathToFuncName(path)
			, enumName
			);
	iformat(o, 2, "final switch(which) {\n", m.length);
	foreach(it; m.byKeyValue()) {
		iformat(o, 3, "case %sEnum.%s: return ", enumName, it.key);
		buildSingleMustache(o, it.value);
		formattedWrite(o, ";\n");
	}
	iformat(o, 2, "}\n");
	iformat(o, 2, "return \"\";\n");
	iformat(o, 1, "}");
}

void genChemicalUnit(Out)(ChemicalUnit[] m, ref Out o, string[] path, const bool base) {
	iformat(o, 1, "%sChemicalUnit %s() {\n", base ? "" : "override ", pathToFuncName(path));
	iformat(o, 2, "final switch(uniform(0, %s, this.rnd)) {\n", m.length);
	foreach(idx, it; m) {
		iformat(o, 3, "case %s: return ChemicalUnit(%s, %s)", idx
					, `q"{` ~ it.name ~ `}"`
					, `q"{` ~ it.symbol ~ `}"`);
		formattedWrite(o, ";\n");
	}
	iformat(o, 2, "}\n");
	iformat(o, 2, "return ChemicalUnit(\"\", \"\");\n");
	iformat(o, 1, "}");
}

void genChemicalElement(Out)(ChemicalElement[] m, ref Out o, string[] path, const bool base) {
	iformat(o, 1, "%sChemicalElement %s() {\n", base ? "" : "override ", pathToFuncName(path));
	iformat(o, 2, "final switch(uniform(0, %s, this.rnd)) {\n", m.length);
	foreach(idx, it; m) {
		iformat(o, 3, "case %s: return ChemicalElement(%s, %s, %s)", idx
					, `q"{` ~ it.symbol ~ `}"`
					, `q"{` ~ it.name ~ `}"`
					, it.atomicNumber);
		formattedWrite(o, ";\n");
	}
	iformat(o, 2, "}\n");
	iformat(o, 2, "return ChemicalElement(\"\", \"\", 0);\n");
	iformat(o, 1, "}");
}

void genCurrency(Out)(Currency[] m, ref Out o, string[] path, const bool base) {
	iformat(o, 1, "%sCurrency %s() {\n", base ? "" : "override ", pathToFuncName(path));
	iformat(o, 2, "final switch(uniform(0, %s, this.rnd)) {\n", m.length);
	foreach(idx, it; m) {
		iformat(o, 3, "case %s: return Currency(%s, %s, %s)", idx
					, `q"{` ~ it.name ~ `}"`
					, `q"{` ~ it.code ~ `}"`
					, `q"{` ~ it.symbol ~ `}"`);
		formattedWrite(o, ";\n");
	}
	iformat(o, 2, "}\n");
	iformat(o, 2, "return Currency(\"\", \"\", \"\");\n");
	iformat(o, 1, "}");
}

void genAirplane(Out)(Airplane[] m, ref Out o, string[] path, const bool base) {
	iformat(o, 1, "%sAirplane %s() {\n", base ? "" : "override ", pathToFuncName(path));
	iformat(o, 2, "final switch(uniform(0, %s, this.rnd)) {\n", m.length);
	foreach(idx, it; m) {
		iformat(o, 3, "case %s: return Airplane(%s, %s)", idx
				, it.name.isNull()
					? "Nullable!(string).init"
					: "nullable(q\"{" ~ it.name.get() ~ "}\")"
				, it.iataTypeCode.isNull()
					? "Nullable!(string).init"
					: "nullable(q\"{" ~ it.iataTypeCode.get() ~ "}\")");
		formattedWrite(o, ";\n");
	}
	iformat(o, 2, "}\n");
	iformat(o, 2, "return Airplane(Nullable!(string).init, Nullable!(string).init);\n");
	iformat(o, 1, "}");
}

void genAirport(Out)(Airport[] m, ref Out o, string[] path, const bool base) {
	iformat(o, 1, "%sAirport %s() {\n", base ? "" : "override ", pathToFuncName(path));
	iformat(o, 2, "final switch(uniform(0, %s, this.rnd)) {\n", m.length);
	foreach(idx, it; m) {
		iformat(o, 3, "case %s: return Airport(%s, %s)", idx
				, it.name.isNull()
					? "Nullable!(string).init"
					: "nullable(q\"{" ~ it.name.get() ~ "}\")"
				, it.iataCode.isNull()
					? "Nullable!(string).init"
					: "nullable(q\"{" ~ it.iataCode.get() ~ "}\")");
		formattedWrite(o, ";\n");
	}
	iformat(o, 2, "}\n");
	iformat(o, 2, "return Airport(Nullable!(string).init, Nullable!(string).init);\n");
	iformat(o, 1, "}");
}

void genAirline(Out)(Airline[] m, ref Out o, string[] path, const bool base) {
	iformat(o, 1, "%sAirline %s() {\n", base ? "" : "override ", pathToFuncName(path));
	iformat(o, 2, "final switch(uniform(0, %s, this.rnd)) {\n", m.length);
	foreach(idx, it; m) {
		iformat(o, 3, "case %s: return Airline(%s, %s)", idx
				, it.name.isNull()
					? "Nullable!(string).init"
					: "nullable(q\"{" ~ it.name.get() ~ "}\")"
				, it.iataCode.isNull()
					? "Nullable!(string).init"
					: "nullable(q\"{" ~ it.iataCode.get() ~ "}\")");
		formattedWrite(o, ";\n");
	}
	iformat(o, 2, "}\n");
	iformat(o, 2, "return Airline(Nullable!(string).init, Nullable!(string).init);\n");
	iformat(o, 1, "}");
}

void genMustache(Out)(Mustache[] m, ref Out o, string[] path, const bool base) {
	iformat(o, 1, "%sstring %s() {\n", base ? "" : "override ", pathToFuncName(path));
	iformat(o, 2, "final switch(uniform(0, %s, this.rnd)) {\n", m.length);
	foreach(idx, it; m) {
		iformat(o, 3, "case %s: return ", idx);
		buildSingleMustache(o, it);
		formattedWrite(o, ";\n");
	}
	iformat(o, 2, "}\n");
	iformat(o, 2, "return \"\";\n");
	iformat(o, 1, "}");
}

void buildSingleMustache(Out)(ref Out o, Mustache mus) {
	string line = mus.str.replace("\"", "\\\"");
	ptrdiff_t idx = line.indexOf("{{");
	ptrdiff_t cur = 0;
	long cnt;
	while(idx != -1) {
		string interme = line[cur .. idx];
		if(!interme.empty) {
			o.put((cnt == 0 ? "\"" : " ~ \"") ~ interme ~ "\"");
			++cnt;
		}
		ptrdiff_t close = line.indexOf("}}", idx);
		enforce(close != -1, line);
		string musT = line[idx + 2 .. close];
		if(musT.startsWith("number.int(") && musT.endsWith(")")) {
			string musTJS = musT["number.int(".length .. $ - 1];
			musTJS = musTJS.replace("\\\"", "\"");
			JSONValue mm = parseJSON(musTJS);
			o.put(" ~ uniform(" ~ mm["min"].get!int().to!string() ~ ", "
				~ mm["min"].get!int().to!string() ~ ").to!string()");
		} else {
			//ret ~= (cnt == 0 ? "" : " ~ ") ~ line[idx + 2 .. close]
			//	.replaceDotOrSection(section).camelCase() ~ "()";
			o.put((cnt == 0 ? "" : " ~ ") ~ mustacheToFuncIdentifer(line[idx + 2 .. close]) ~ "()");
		}
		++cnt;
		cur = close + 2;
		idx = line.indexOf("{{", cur);
	}
	string rest = line[cur .. $];
	if(!rest.empty) {
		o.put((cnt == 0 ? "\"" : " ~ \"") ~ rest ~ "\"");
	}
}

string mustacheToFuncIdentifer(string s) {
	string[] as = s.splitter("_")
		.map!(it => it.splitter("."))
		.joiner
		.array;
	return as.length < 2
		? as[0]
		: pathToFuncName(as);
}

void genCustomTypes() {
	auto file = File("../source/faked/customtypes.d", "w");
	file.writeln(`module faker.customtypes;

import std.typecons : Nullable;

struct Airline {
	Nullable!(string) name;
	Nullable!(string) iataCode;
}

struct Airplane {
	Nullable!(string) name;
	Nullable!(string) iataTypeCode;
}

struct Airport {
	Nullable!(string) name;
	Nullable!(string) iataCode;
}

struct Currency {
	string name;
	string code;
	string symbol;
}

struct ChemicalElement {
	string symbol;
	string name;
	int atomicNumber;
}

struct ChemicalUnit {
	string name;
	string symbol;
}

`);
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

import faker.customtypes;

class Faker {
@safe:
	Random rnd;
	this(int seed) {
		this.rnd = Random(seed);
	}

	final string numberBuild(string s, dchar sym = '#') {
		auto app = appender!string();
		for(size_t idx = 0; idx < s.length; ++idx) {
            dchar c = s[idx];
			if(c == sym) {
				formattedWrite(app, "%%d", uniform(0, 10, this.rnd));
            } else if(c == '[') {
                ++idx;
                size_t start = idx;
                while(idx < s.length && s[idx] != ']') {
                    ++idx;
                }
                enforce(idx < s.length && s[idx] == ']');
                string[] ft = s[start .. idx].split("-");
                enforce(ft.length == 2);
                int[] ftI = ft.map!(a => to!int(a)).array;
                enforce(ft.length == 2);
                int n = uniform(ftI[0], ftI[1], this.rnd);
                formattedWrite(app, "%%d", n);
            } else if(c == '!') {
				formattedWrite(app, "%%d", uniform(2, 10, this.rnd));
			} else {
				app.put(c);
			}
		}
		return app.data;
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

import faker.customtypes;
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

string pathToFuncName(string[] path) {
	path = path.map!(p => p.splitter("_"))
		.joiner
		.filter!(it => !it.empty)
		.array;
	enforce(path.length > 1, to!string(path));
	string ret = path[0];
	foreach(it; path[1 .. $]) {
		char up = to!char(it[0].toUpper());
		string ta = up ~ it[1 .. $];
		ret ~= ta;
	}
	return ret;
}

string toFirstUpper(string s) {
	enforce(!s.empty);
	string ret = s[0].toUpper().to!string() ~ s[1 .. $];
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

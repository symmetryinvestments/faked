module generator;

import std.array : array, appender, replace;
import std.algorithm.iteration : filter, fold, joiner, map, splitter;
import std.algorithm.searching : any, canFind, endsWith, startsWith;
import std.algorithm.sorting : sort;
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

void generatePackage(string[] langs) {
	auto f = File("../source/faked/package.d", "w");
	f.writefln(`module faked;

public import faked.customtypes;
public import faked.fakerenums;
public import faked.faker_base;
public import faked.faker_en;
` ~ "%--(public import faked.faker_%s;\n%);\n", langs.map!(l => l.toLower()));
}

void generateUnittest(JsonFile bs, JsonFile en, string[] langs, string[] funcs) {
	auto f = File("../source/faked/tests.d", "w");
	f.writefln(`module faked.tests;

import faked.customtypes;
import faked.fakerenums;
import faked.fakerforwarder;
import faked.faker_base;
import faked.faker_en;
` ~ "%--(import faked.faker_%s;\n%);\n", langs.map!(l => l.toLower()));

	foreach(l; langs.map!(it => it.toLower())) {
		f.writefln(`
unittest {
	auto f = new Faker_%s(13);
`, l);
		auto ltw = f.lockingTextWriter();
		foreach(fu; funcs) {
			iformat(ltw, 1, "foreach(i; 0 .. 4) {\n");
			iformat(ltw, 2, "f.%s();\n", fu);
			iformat(ltw, 1, "}\n");
		}
		f.writeln("}");
	}
	f.writefln(`
unittest {
	auto f = new FakerForwarder(13);
`);
	auto ltw = f.lockingTextWriter();
	foreach(fu; funcs) {
		iformat(ltw, 1, "foreach(i; 0 .. 4) {\n");
		iformat(ltw, 2, "f.%s();\n", fu);
		iformat(ltw, 1, "}\n");
	}
	f.writeln("}");
}

void generateForward(JsonFile bs, JsonFile en, string[] langs) {
	auto f = File("../source/faked/fakerforwarder.d", "w");
	f.writefln(`module faked.fakerforwarder;

import std.random;

import faked.customtypes;
import faked.fakerenums;
import faked.faker_en;
` ~ "%--(%s\n%)" ~ `

class FakerForwarder {
@safe:
	Random rnd;
	Faker_en[] toPassThrough = [ ` ~ "%--(%s, %)" ~ ` ];

	this(int seed = 1338) {
		this.rnd = Random(seed);
	}

	string companyName() {
		return choice(this.toPassThrough, this.rnd).companyName();
	}
	final string internetEmoji() {
		return choice(this.toPassThrough, this.rnd).internetEmoji();
	}

	final string locationCity() {
		return choice(this.toPassThrough, this.rnd).locationCity();
	}

	final string personJobDescriptor() {
		return choice(this.toPassThrough, this.rnd).personJobDescriptor();
	}

	final string personJobType() {
		return choice(this.toPassThrough, this.rnd).personJobType();
	}

	final string personJobArea() {
		return choice(this.toPassThrough, this.rnd).personJobArea();
	}

    final string companyCatchPhrase() {
		return choice(this.toPassThrough, this.rnd).companyCatchPhrase();
	}

    final string phoneNumber() {
		return choice(this.toPassThrough, this.rnd).phoneNumber();
	}

    final string loremText(size_t length = size_t.max) {
		return choice(this.toPassThrough, this.rnd).loremText(length);
	}

    final string loremParagraphs(size_t length = size_t.max) {
		return choice(this.toPassThrough, this.rnd).loremParagraphs(length);
	}

    final string loremParagraph(size_t length = size_t.max) {
		return choice(this.toPassThrough, this.rnd).loremParagraph(length);
	}

    final string loremSentance(size_t length = size_t.max) {
		return choice(this.toPassThrough, this.rnd).loremSentance(length);
	}

    final string loremSentances(size_t length = size_t.max) {
		return choice(this.toPassThrough, this.rnd).loremSentances(length);
	}
`
	, langs.map!(l => "import faked.faker_" ~ l.toLower() ~ ";")
	, langs.map!(l => "new Faker_" ~ l.toLower() ~ "(1337)")
	);

	auto ltw = f.lockingTextWriter();
	traverseFwd(bs.data, ltw, []);
	traverseFwd(en.data, ltw, []);

	f.writeln("}");
}

void traverseFwd(T,Out)(T t, ref Out o, string[] path) {
	static if(T.stringof.endsWith("Folder")
			|| is(T == Language)
			|| is(T == Product_Name)
			|| is(T == DateWeekday)
			|| is(T == Title)
			|| is(T == DateMonth))
	{
		static foreach(string mem; [FieldNameTuple!(T)].filter!(m => !m.empty)) {{
			traverseFwd(__traits(getMember, t, mem), o, path ~ mem);
		}}
	} else static if(is(T == Nullable!F, F)) {
		if(!t.isNull()) {
			traverseFwd(t.get(), o, path);
		}
	} else {
		string ptfn = pathToFuncName(path);
		static if(is(T == string[])) {
			iformat(o, 1, "final string %s() {\n", ptfn);
			iformat(o, 2, "return choice(this.toPassThrough, this.rnd).%s();\n\t}\n\n"
					, ptfn);
		} else static if(is(T == Mustache[])) {
			iformat(o, 1, "final string %s() {\n", ptfn);
			iformat(o, 2, "return choice(this.toPassThrough, this.rnd).%s();\n\t}\n\n"
					, ptfn);
		} else static if(is(T == Airplane[])) {
			iformat(o, 1, "final Airplane %s() {\n", ptfn);
			iformat(o, 2, "return choice(this.toPassThrough, this.rnd).%s();\n\t}\n\n"
					, ptfn);
		} else static if(is(T == Airport[])) {
			iformat(o, 1, "final Airport %s() {\n", ptfn);
			iformat(o, 2, "return choice(this.toPassThrough, this.rnd).%s();\n\t}\n\n"
					, ptfn);
		} else static if(is(T == Currency[])) {
			iformat(o, 1, "final Currency %s() {\n", ptfn);
			iformat(o, 2, "return choice(this.toPassThrough, this.rnd).%s();\n\t}\n\n"
					, ptfn);
		} else static if(is(T == ChemicalUnit[])) {
			iformat(o, 1, "final ChemicalUnit %s() {\n", ptfn);
			iformat(o, 2, "return choice(this.toPassThrough, this.rnd).%s();\n\t}\n\n"
					, ptfn);
		} else static if(is(T == ChemicalElement[])) {
			iformat(o, 1, "final ChemicalElement %s() {\n", ptfn);
			iformat(o, 2, "return choice(this.toPassThrough, this.rnd).%s();\n\t}\n\n"
					, ptfn);
		} else static if(is(T == Airline[])) {
			iformat(o, 1, "final Airline %s() {\n", ptfn);
			iformat(o, 2, "return choice(this.toPassThrough, this.rnd).%s();\n\t}\n\n"
					, ptfn);
		} else static if(is(T == MustacheWeight[])) {
			iformat(o, 1, "final string %s() {\n", ptfn);
			iformat(o, 2, "return choice(this.toPassThrough, this.rnd).%s();\n\t}\n\n"
					, ptfn);
		} else static if(is(T == Mustache[string])) {
			iformat(o, 1, "final string %s() {\n", ptfn);
			iformat(o, 2, "return choice(this.toPassThrough, this.rnd).%s();\n\t}\n\n"
					, ptfn);
		} else static if(is(T == Number[])) {
			iformat(o, 1, "final string %s() {\n", ptfn);
			iformat(o, 2, "return choice(this.toPassThrough, this.rnd).%s();\n\t}\n\n"
					, ptfn);
		} else {
			writefln("Unhandled %s", T.stringof);
		}
	}
}

void generate(Out)(JsonFile jf, const string langName, Language lang, auto ref Out o, string[] path
		, ref string[][string] methodsOfBaseClass)
{
	traverse(jf, langName, lang, o, path, methodsOfBaseClass);
}

void traverseMustachAAs(T,Out)(T t, auto ref Out o, string[] path) {
	static if(T.stringof.endsWith("Folder")
			|| is(T == Language)
			|| is(T == Product_Name)
			|| is(T == DateWeekday)
			|| is(T == Title)
			|| is(T == DateMonth))
	{
		static foreach(string mem; [FieldNameTuple!(T)].filter!(m => !m.empty)) {{
			traverseMustachAAs(__traits(getMember, t, mem), o, path ~ mem);
		}}
	} else static if(is(T == Nullable!F, F)) {
		if(!t.isNull()) {
			traverseMustachAAs(t.get(), o, path);
		}
	} else {
		static if(is(T == Mustache[string])) {
			string enumName = toFirstUpper(pathToFuncName(path));
			formattedWrite(o, "enum %sEnum {\n", enumName);
			foreach(idx, key; t.keys()) {
				iformat(o, 1, "%s %s\n", idx == 0 ? " " : ",", key);
			}
			formattedWrite(o, "}\n\n");
		}
	}
}

private bool shouldOverride(string funcName, string[] chain
		, ref string[][string] methodsOfBaseClass)
{
	foreach(it; chain) {
		enforce(it in methodsOfBaseClass, it ~ " " ~
				methodsOfBaseClass.keys().to!string());
		if(canFind(methodsOfBaseClass[it], funcName)) {
			return true;
		}
	}
	return false;
}

void traverse(T,Out)(JsonFile jf, const string langName, T t, ref Out o, string[] path
		, ref string[][string] methodsOfBaseClass)
{
	if(langName !in methodsOfBaseClass) {
		methodsOfBaseClass[langName] = [];
	}
	static if(T.stringof.endsWith("Folder")
			|| is(T == Language)
			|| is(T == Product_Name)
			|| is(T == DateWeekday)
			|| is(T == Title)
			|| is(T == DateMonth))
	{
		static foreach(string mem; [FieldNameTuple!(T)].filter!(m => !m.empty)) {{
			traverse(jf, langName, __traits(getMember, t, mem), o, path ~ mem
					, methodsOfBaseClass);
		}}
	} else static if(is(T == Nullable!F, F)) {
		if(!t.isNull()) {
			traverse(jf, langName, t.get(), o, path, methodsOfBaseClass);
		}
	} else {
		const string funcName = pathToFuncName(path);
		const bool overWrite = shouldOverride(funcName, jf.chain, methodsOfBaseClass);
		static if(is(T == string[])) {
			methodsOfBaseClass[langName] ~= genStringArray(t, o, path, overWrite);
			formattedWrite(o, "\n\n");
		} else static if(is(T == Mustache[])) {
			methodsOfBaseClass[langName] ~= genMustache(t, o, path, overWrite);
			formattedWrite(o, "\n\n");
		} else static if(is(T == Airplane[])) {
			methodsOfBaseClass[langName] ~= genAirplane(t, o, path, overWrite);
			formattedWrite(o, "\n\n");
		} else static if(is(T == Airport[])) {
			methodsOfBaseClass[langName] ~= genAirport(t, o, path, overWrite);
			formattedWrite(o, "\n\n");
		} else static if(is(T == Currency[])) {
			methodsOfBaseClass[langName] ~= genCurrency(t, o, path, overWrite);
			formattedWrite(o, "\n\n");
		} else static if(is(T == ChemicalUnit[])) {
			methodsOfBaseClass[langName] ~= genChemicalUnit(t, o, path, overWrite);
			formattedWrite(o, "\n\n");
		} else static if(is(T == ChemicalElement[])) {
			methodsOfBaseClass[langName] ~= genChemicalElement(t, o, path, overWrite);
			formattedWrite(o, "\n\n");
		} else static if(is(T == Airline[])) {
			methodsOfBaseClass[langName] ~= genAirline(t, o, path, overWrite);
			formattedWrite(o, "\n\n");
		} else static if(is(T == MustacheWeight[])) {
			methodsOfBaseClass[langName] ~= genMustacheWeight(t, o, path, overWrite);
			formattedWrite(o, "\n\n");
		} else static if(is(T == Mustache[string])) {
			methodsOfBaseClass[langName] ~= genMustacheAA(t, o, path, overWrite);
			formattedWrite(o, "\n\n");
		} else static if(is(T == Number[])) {
			methodsOfBaseClass[langName] ~= genNumber(t, o, path, overWrite);
			formattedWrite(o, "\n\n");
		} else {
			writefln("Unhandled %s", T.stringof);
		}
	}
}

string genNumber(Out)(Number[] n, ref Out o, string[] path, const bool overWrite) {
	string ret = pathToFuncName(path);
	iformat(o, 1, "%sstring %s() {\n", overWrite ? "override " : "", ret);
	iformat(o, 2, "const string[] strs =\n\t\t[ ");
	str80(o, n.map!(it => it.num).array, 2);
	o.put(" ];\n\n");
	iformat(o, 2, "return numberBuild(choice(strs, this.rnd));\n");
	iformat(o, 1, "}");
	return ret;
}

string genMustacheWeight(Out)(MustacheWeight[] m, ref Out o, string[] path
		, const bool overWrite)
{
	string ret = pathToFuncName(path);
	int max = m.map!(it => it.weight).fold!((a, b) => a + b);
	int begin = 0;
	iformat(o, 1, "%sstring %s() {\n", overWrite ? "override " : "", ret);
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
	return ret;
}

string genMustacheAA(Out)(Mustache[string] m, ref Out o, string[] path
		, const bool overWrite)
{
	string ret = pathToFuncName(path);
	string enumName = toFirstUpper(ret);
	// Non parameter passthrough
	iformat(o, 1, "%sstring %s() {\n", overWrite ? "override " : "", ret);
	iformat(o, 2, "const %sEnum[] enums = [ %--(%s, %) ];\n", enumName
			, m.keys().map!(it => enumName ~ "Enum." ~ it));
	iformat(o, 2, "return %s(choice(enums, this.rnd));\n"
			, pathToFuncName(path));
	iformat(o, 1, "}\n\n");

	iformat(o, 1, "%sstring %s(%sEnum which) {\n", overWrite ? "override " : ""
			, pathToFuncName(path), enumName
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
	return ret;
}

string genChemicalUnit(Out)(ChemicalUnit[] m, ref Out o, string[] path
		, const bool overWrite)
{
	string ret = pathToFuncName(path);
	iformat(o, 1, "%sChemicalUnit %s() {\n", overWrite ? "override " : "", ret);
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
	return ret;
}

string genChemicalElement(Out)(ChemicalElement[] m, ref Out o, string[] path
		, const bool overWrite)
{
	string ret = pathToFuncName(path);
	iformat(o, 1, "%sChemicalElement %s() {\n", overWrite ? "override " : "", ret);
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
	return ret;
}

string genCurrency(Out)(Currency[] m, ref Out o, string[] path
		, const bool overWrite)
{
	string ret = pathToFuncName(path);
	iformat(o, 1, "%sCurrency %s() {\n", overWrite ? "override " : "", pathToFuncName(path));
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
	return ret;
}

string genAirplane(Out)(Airplane[] m, ref Out o, string[] path
		, const bool overWrite)
{
	string ret = pathToFuncName(path);
	iformat(o, 1, "%sAirplane %s() {\n", overWrite ? "override " : "", ret);
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
	return ret;
}

string genAirport(Out)(Airport[] m, ref Out o, string[] path
		, const bool overWrite)
{
	string ret = pathToFuncName(path);
	iformat(o, 1, "%sAirport %s() {\n", overWrite ? "override " : "", ret);
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
	return ret;
}

string genAirline(Out)(Airline[] m, ref Out o, string[] path
		, const bool overWrite)
{
	string ret = pathToFuncName(path);
	iformat(o, 1, "%sAirline %s() {\n", overWrite ? "override " : "", ret);
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
	return ret;
}

string genMustache(Out)(Mustache[] m, ref Out o, string[] path
		, const bool overWrite)
{
	string ret = pathToFuncName(path);
	iformat(o, 1, "%sstring %s() {\n", overWrite ? "override " : "", ret);
	iformat(o, 2, "final switch(uniform(0, %s, this.rnd)) {\n", m.length);
	foreach(idx, it; m) {
		iformat(o, 3, "case %s: return ", idx);
		buildSingleMustache(o, it);
		formattedWrite(o, ";\n");
	}
	iformat(o, 2, "}\n");
	iformat(o, 2, "return \"\";\n");
	iformat(o, 1, "}");
	return ret;
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
	file.writeln(`module faked.customtypes;

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
		iformat(o, 0, `module faked.faker_base;

import std.algorithm : map, joiner;
import std.array;
import std.conv : to;
import std.exception : enforce;
import std.format;
import std.random;
import std.range : iota, take, repeat;
import std.string : toUpper;
import std.typecons : Nullable, nullable;

import faked.customtypes;
import faked.fakerenums;

class Faker_base {
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

	final string internetEmoji() {
		final switch(uniform(0, 10, this.rnd)) {
			case 0: return this.internetEmojiSmiley();
			case 1: return this.internetEmojiBody();
			case 2: return this.internetEmojiPerson();
			case 3: return this.internetEmojiNature();
			case 4: return this.internetEmojiFood();
			case 5: return this.internetEmojiTravel();
			case 6: return this.internetEmojiActivity();
			case 7: return this.internetEmojiObject();
			case 8: return this.internetEmojiSymbol();
			case 9: return this.internetEmojiFlag();
		}
	}

`);
	} else {
		string chain =
			jf.chain.empty
				? ""
				: (" : Faker_" ~ jf.chain[0].toLower());

		string import_ = jf.chain.empty
			? ""
			: "\nimport faked.faker_" ~ jf.chain[0].toLower() ~ ";";

		iformat(o, 0, `module faked.faker_%1$s;

import std.algorithm : map, joiner;
import std.array;
import std.conv : to;
import std.exception : enforce;
import std.format;
import std.random;
import std.range : iota, take, repeat;
import std.string : toUpper;
import std.typecons : Nullable, nullable;

import faked.customtypes;
import faked.fakerenums;
%3$s

class Faker_%1$s%2$s {
@safe:
	this(int seed) {
		super(seed);
	}

`, language.toLower(), chain, import_);
		if(language.toLower() == "en") {
			iformat(o, 1, `string locationStreet() {
		return this.locationStreetPattern();
	}

	string locationCity() {
		return locationCityPattern();
	}

	string personJobDescriptor() {
		return personTitleDescriptor();
	}

	string personJobType() {
		return personTitleJob();
	}

	string personJobArea() {
		return personTitleLevel();
	}

	string companyName() {
		return companyNamePattern();
	}

    string loremSentance(size_t length = size_t.max) {
		import std.algorithm : copy;
        length = length == size_t.max || length == 0
            ? uniform(3, 10, this.rnd)
            : length;
        auto app = appender!string();
		copy(iota(length).map!(a => loremWords).joiner(" "), app);
        //foreach(it; 0 .. length) {
        //    app.put(loremWords());
        //    app.put(" ");
        //}
        switch(uniform(0, 15, this.rnd)) {
            case 0: app.put("!"); break;
            case 1: app.put("?"); break;
            default: app.put("."); break;
        }

        string ret = app.data;
        string f = to!string(toUpper(ret.front));
        ret.popFront();
        return f ~ ret;
    }

	///
    string loremSentances(size_t length = size_t.max) {
        import std.algorithm : map, joiner;
        import std.range : iota;
        import std.conv : to;
        length = length == size_t.max || length == 0
            ? uniform(2, 6, this.rnd)
            : length;

        return iota(length)
            .map!(a => loremSentance())
            .joiner(" ")
            .to!string();
    }

	///
    string loremParagraph(size_t length = size_t.max) {
        length = length == size_t.max || length == 0
            ? uniform(2, 6, this.rnd)
            : length;

        return loremSentances(length + uniform(0, 3, this.rnd));
    }

	///
    string loremParagraphs(size_t length = size_t.max) {
        import std.algorithm : map, joiner;
        import std.range : iota;

        length = length == size_t.max || length == 0
            ? uniform(2, 6, this.rnd)
            : length;
        return iota(length)
            .map!(a => loremParagraph())
            .joiner("\n")
            .to!string();
    }

	///
    string loremText(size_t length = size_t.max) {
        length = length == size_t.max || length == 0
            ? uniform(2, 6, this.rnd)
            : length;

        auto app = appender!string();
        foreach(it; 0 .. length) {
            switch(uniform(0, 4, this.rnd)) {
                case 0:
                    app.put(loremWords());
                    continue;
                case 1:
                    app.put(loremParagraph());
                    continue;
                case 2:
                    app.put(loremSentance());
                    continue;
                case 3:
                    app.put(loremSentances());
                    continue;
                default:
                    assert(false);
            }
        }

        return app.data();
    }

	///
    string phoneNumber() {
        return this.numberBuild(this.phoneNumberFormats());
    }

	///
    string companyCatchPhrase() {
        return companyAdjective() ~ " "
            ~ companyDescriptor() ~ " "
            ~ companyNoun();
    }
`);
		}
	}
}

string genStringArray(Out)(string[] strs, ref Out o, string[] path
		, const bool overWrite)
{
	string ret = pathToFuncName(path);
	iformat(o, 1, "%sstring %s() {\n", overWrite ? "override " : "", ret);
	iformat(o, 2, "const string[] strs =\n\t\t[ ");
	str80(o, strs, 2);
	o.put(" ];\n\n");
	iformat(o, 2, "return choice(strs, this.rnd);\n\t}");
	return ret;
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

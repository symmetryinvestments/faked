module generator;

import std.array;
import std.stdio;
import std.string;
import std.typecons;
import std.json;
import std.algorithm;
import std.format;
import std.conv : to;
import transforms.camel;
import transforms.snake;
import iban;

class Generator {
    import fakerjsgenerator;
	string output;
	string locale;
    string[] toOverride;

	this(string locale, string fallback, string[] toOverride) {
        this.toOverride = toOverride;
		this.locale = locale;
		if(locale == "en") {
			this.output = `
///
module faked.base;

import std.datetime;
import std.exception : enforce;

struct Currency {
@safe:
    string name;
    string code;
    string symbol;

    @property bool empty() const {
        return name.length == 0;
    }
}

///
struct BBan {
    string type;
    long count;
}

///
struct IbanFormat {
    string country;
    long total;
    BBan[] bban;
    string format;
}

///
struct IbanData {
    dchar[] alpha;
    string[] pattern10;
    string[] pattern100;
    IbanFormat[] formats;
    string[] iso3166;
}

///
class Faker {
@safe:
	import std.random;
	import std.array;
	import std.format;
	import std.conv : to;
    import std.string : toUpper;
    import std.range : iota, take, repeat;
    import std.algorithm : map, joiner;

	///
	Random rnd;

	///
	this(int seed) {
		this.rnd = Random(seed);
	}

	///
    string addressLatitude() {
        return to!string(uniform(-90.0, 90.0, this.rnd));
    }

	///
    string addressLongitude() {
        return to!string(uniform(-90.0, 90.0, this.rnd));
    }

	///
    string financeAccount(size_t length = 8) {
        string s;
        foreach(i; 0 .. length) {
            s ~= "#";
        }
        return digitBuild(s);
    }

	///
    string financeRoutingNumber() {
        import std.conv : to;
        import std.math : ceil;
		auto routingNumber = digitBuild("########");

		// Modules 10 straight summation.
		size_t sum = 0;

		for(size_t i = 0; i < routingNumber.length; i += 3) {
			sum += to!size_t(routingNumber[i]) * 3;
			sum += to!size_t(routingNumber[i + 1]) * 7;
            if(i + 2 < routingNumber.length) {
			    sum += to!size_t(routingNumber[i + 2]);
            } else {
                sum += 0;
            }
		}

		return routingNumber ~ to!string((ceil(sum / 10.0) * 10 - sum));
    }

	///
    string financeMask(size_t length = 4, bool parents = true,
            bool ellipsis = true)
    {
        import std.algorithm : joiner;
        import std.conv : to;
        string tmp = "";

        for(size_t i = 0; i < length; i++) {
            tmp ~= '#';
        }

        //prefix with ellipsis
        tmp = ellipsis ? ["...", tmp].joiner("").to!string() : tmp;

        tmp = parents ? ["(", tmp, ")"].joiner("").to!string() : tmp;

        //generate random numbers
        tmp = digitBuild(tmp);

        return tmp;
    }

	///
    string financeBitcoinAddress() {
        import std.conv : to;
        static enum data =
            to!(dchar[])(
                "123456789abcdefghijkmnopqrstuvwxyzABCDEFGHIJKLMNPQRSTUVWXYZ"
            );

        string ret = to!string(choice([1, 3], this.rnd));
        foreach(it; 0 .. choice([25,35], this.rnd)) {
            ret ~= choice(data, this.rnd);
        }
        return ret;
    }

	///
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
        return this.digitBuild(this.phoneNumberFormats());
    }

	///
    string commerceProductName() {
        return this.commerceProductNameAdjective() ~
              this.commerceProductNameMaterial() ~ " " ~
              this.commerceProductNameProduct();
    }

	///
    string companyCatchPhrase() {
        return companyAdjective() ~ " "
            ~ companyDescriptor() ~ " "
            ~ companyNoun();
    }

	//
    string companyBs() {
        return companyBsVerb() ~ " " ~ companyBsAdjective() ~ " " ~
            companyBsNoun();
    }

	///
    string internetUserName(string firstname = "", string lastname = "") {
        firstname = firstname.empty ? this.nameFirstName() : firstname;
        lastname = lastname.empty ? this.nameLastName() : lastname;

        string ret;

        switch(uniform(0, 3, this.rnd)) {
            case 0:
                ret = firstname ~ to!string(uniform(0, 100, this.rnd));
                break;
            case 1:
                ret = firstname ~ choice([".", "_"], this.rnd) ~ lastname;
                break;
            case 2:
                ret = firstname ~ choice([".", "_"], this.rnd) ~ lastname
                    ~ to!string(uniform(0, 100, this.rnd));
                break;
            default:
                assert(false);
        }

        return ret.replace("'", "").replace(" ", "");
    }

	///
    string internetProtocol() {
        return choice(["http", "https"], this.rnd);
    }

	///
    string internetDomainWord() {
        import std.uni : isAlphaNum;
        import std.utf : byDchar;
        import std.algorithm : filter;

        return this.nameFirstName()
            .byDchar()
            .filter!(a => isAlphaNum(a))
            .to!string();
    }

	///
    string internetDomainName() {
        return this.internetDomainWord() ~ "." ~ this.internetDomainSuffix();
    }

	///
    string internetUrl() {
        return this.internetProtocol() ~ "://" ~ this.internetDomainName();
    }

	///
    string internetIPv4() {
        int[4] t;
        foreach(i; 0 .. t.length) {
            t[i] = uniform(0, 256, this.rnd);
        }

        return t[].map!(a => to!string(a)).joiner(".").to!string();
    }

	///
    string internetIPv6() {
        static enum elem = ["0", "1", "2", "3", "4", "5", "6", "7", "8", "9",
             "a", "b", "c", "d", "e", "f"];

        return iota(8)
            .map!(a => randomCover(elem, this.rnd).take(4).to!string())
            .joiner(".")
            .to!string();
    }

	///
    string internetColor(int baseRed255 = 0, int baseGreen255 = 0,
            int baseBlue255 = 0)
    {
        int red = to!int((uniform(0, 256, this.rnd) + baseRed255) / 2);
        int green = to!int((uniform(0, 256, this.rnd) + baseGreen255) / 2);
        int blue = to!int((uniform(0, 256, this.rnd) + baseBlue255) / 2);
        string redStr = red.to!string(16);
        string greenStr = green.to!string(16);
        string blueStr = blue.to!string(16);
        return "#" ~
            (redStr.length == 1 ? "0" : "") ~ redStr ~
            (greenStr.length == 1 ? "0" : "") ~ greenStr ~
            (blueStr.length == 1 ? "0": "") ~ blueStr;
    }

	///
    string internetPassword(bool strong = false) {
        return strong ? "Password" : "password";
    }

	///
    string vehicle() {
        return this.vehicleManufacturer() ~ " " ~ this.vehicleModel();
    }

	///
    string vehicleVin() {
        return (this.helperAlphaNum(10) ~ this.helperAlpha(1, true)
            ~ this.helperAlphaNum(1)
            ~ to!string(uniform(10000, 100000, this.rnd))
            ).toUpper();
    }

	///
    string helperAlpha(size_t count = 1, bool upperCase = false) @trusted {
        static enum data = to!(dchar[])(['a', 'b', 'c', 'd', 'e', 'f', 'g',
			'h', 'i', 'j', 'k', 'l', 'm', 'n', 'o', 'p', 'q', 'r', 's', 't',
			'u', 'v', 'w', 'x', 'y', 'z']);

		return iota(count).map!(a => choice(data, this.rnd)).to!string();
    }

	///
    string helperAlphaNum(size_t count = 1) @trusted {
        static enum data = to!(dchar[])(['0', '1', '2', '3', '4', '5', '6', '7',
			'8', '9', 'a', 'b', 'c', 'd', 'e', 'f', 'g', 'h', 'i', 'j', 'k',
			'l', 'm', 'n', 'o', 'p', 'q', 'r', 's', 't', 'u', 'v', 'w', 'x',
			'y', 'z']);
		return iota(count).map!(a => choice(data, this.rnd)).to!string();
    }

	///
    string helperHexaDecimal(size_t count = 1) @trusted {
        static enum data = to!(dchar[])(['0', '1', '2', '3', '4', '5', '6',
			'7', '8', '9', 'a', 'b', 'c', 'd', 'e', 'f', 'A', 'B', 'C', 'D',
			'E', 'F']);

		return iota(count).map!(a => choice(data, this.rnd)).to!string();
    }

	///
    string passportNumber() {
        return helperHexaDecimal(9);
    }

	///
    DateTime datePast(size_t years = 10, DateTime refDate =
            cast(DateTime)Clock.currTime())
    {
        return refDate + dur!"minutes"(-uniform(0, years * 365 * 24 * 60,
                    this.rnd));
    }

	///
    DateTime dateFuture(size_t years = 10, DateTime refDate =
            cast(DateTime)Clock.currTime())
    {
        return refDate + dur!"minutes"(uniform(0, years * 365 * 24 * 60,
                    this.rnd));
    }

	///
    DateTime dateBetween(DateTime begin, DateTime end) {
        enforce(begin <= end, "begin must be <= end");
        Duration d = end - begin;
        long hours = d.total!"hours"();
        return begin + dur!("hours")(uniform(0, hours, this.rnd));
    }

	///
	string ukNationalInsuranceNumber() {
		auto app = appender!string();

        static enum data =
            to!(dchar[])(
                "ABCEGHJKLMNPRSTUWXYZ"
            );

        static enum suffix =
            to!(dchar[])(
                "ABCD"
            );

		formattedWrite(app, "%s%s", choice(data, this.rnd), choice(data, this.rnd));
		formattedWrite(app, "%06d", uniform(0, 1_000_000, this.rnd));
		formattedWrite(app, "%02d", uniform(0, 100, this.rnd));
		formattedWrite(app, "%s", choice(suffix, this.rnd));
		return app.data;
	}

	///
	string nameGenderBinary() {
		return choice(["Man", "Woman"], this.rnd);
	}

`;

            this.output ~= format("\tstatic IbanData ibanData = %s;",
                    buildIbanData()
                );
		} else {
            this.output = format(`///
module faked.faker_%1$s;

import faked.base;
%3$s

///
class Faker_%1$s : Faker%2$s {
@safe:
	import std.random;
	import std.array;
	import std.format;
	import std.conv : to;

	///
	this(int seed) {
        super(seed);
	}

`,
            toLower(locale), (fallback.empty || fallback == "en") ? ""
                : "_" ~ fallback,
            (fallback.empty || fallback == "en") ? ""
                : format("import faked.faker_%s;", fallback)
            );
        }

        if(locale == "en") {
            this.output ~= `
	///
	string digitBuild(string s, dchar sym = '#') {
		auto app = appender!string();
		for(size_t idx = 0; idx < s.length; ++idx) {
            dchar c = s[idx];
			if(c == sym) {
				formattedWrite(app, "%d", uniform(0, 10, this.rnd));
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
                formattedWrite(app, "%d", n);
            } else if(c == '!') {
				formattedWrite(app, "%d", uniform(2, 10, this.rnd));
			} else {
				app.put(c);
			}
		}
		return app.data;
	}

	///
    string replaceChars(string s) {
        static enum alpha = to!(dchar[])("ABCDEFGHIJKLMNOPQRSTUVWXYZ");
		auto app = appender!string();
		foreach(dchar c; s) {
			if(c == '#') {
				formattedWrite(app, "%d", choice(alpha, this.rnd));
			} else {
				app.put(c);
			}
		}
		return app.data;
    }

	///
    string replaceSymbols(string str) {
        static enum alpha = to!(dchar[])([
            'A','B','C','D','E','F','G','H','I','J','K','L',
            'M','N','O','P','Q','R','S','T','U','V','W','X','Y','Z'
        ]);

        auto app = appender!string();

        foreach(dchar c; str) {
            if(c == '#') {
                formattedWrite(app, "%d", uniform(0, 10, this.rnd));
            } else if(c == '?') {
                app.put(choice(alpha, this.rnd));
            } else if(c == '*') {
                formattedWrite(app, "%s",
                    (uniform(0, 2) == 1)
                        ? to!string(choice(alpha, this.rnd))
                        : to!string(uniform(0, 10, this.rnd))
                );
            } else {
                app.put(c);
            }
        }
        return app.data;
    }
`;
        } else {
        }
	}

	void finish() {
		this.output ~= "}\n";
	}

    string getOverrideString(string name) {
        return canFind(this.toOverride, name) ? "override " : "";
    }

    string buildStringImpl(string name, string data, string retType = "string") {
        string n = format("\t///\n\t%s%s %s() {\n" ~
            "\t\tauto data = [\n\t\t%s\n\t\t];\n" ~
		    "\t\treturn choice(data, this.rnd);\n" ~
		    "\t}\n\n", this.getOverrideString(name), retType, name, data);
        this.output ~= n;
        return name;
    }

	string[] buildNameTitle(string data) {
        string[] ret;
        JSONValue js = parseJson(data);

        foreach(key; ["descriptor", "job", "level"]) {
            if(const(JSONValue)* value = key in js) {
                string n = ("name_title_" ~ key).camelCase();
                ret ~= this.buildStringImpl(n,
                        value.array().map!(a => "\"" ~ a.str() ~ "\"")
                            .joiner(",\n\t\t").to!string()
                    );
            }
        }

        return ret;
    }

	string buildFinanceCurrency(string data) {
        JSONValue js = parseJson(data);
        auto jsO = js.object();
        return this.buildStringImpl("financeCurrency",
            jsO.keys()
                .map!(a => tuple(a, jsO[a]))
                .filter!(a => "code" in a[1] && "symbol" in a[1])
                .map!(a => format("Currency(\"%s\", \"%s\", \"%s\")",
                        a[0], a[1]["code"].str(), a[1]["symbol"].str())
                ).joiner(",\n\t\t").to!string()
            , "Currency"
        );
    }

    string[] buildIbanAndBic() {
        string tmp =`
	///
    string financeBIC() {
        enum string[] vowels = ["A", "E", "I", "O", "U"];
        int prob = uniform(0, 100, this.rnd);
        return this.replaceSymbols("???") ~
            choice(vowels, this.rnd) ~
            choice(ibanData.iso3166, this.rnd) ~
            this.replaceSymbols("?") ~ "1" ~
            (prob < 10 ?
                this.replaceSymbols("?" ~ choice(vowels, this.rnd) ~ "?") :
            prob < 40 ?
                this.replaceSymbols("###") : "");
    }

	///
    long mod97(string digitStr) {
        long m = 0;
        for(long i = 0; i < digitStr.length; i++) {
            m = ((m * 10) + (digitStr[i] | 0)) % 97;
        }
        return m;
    }

	///
    string toDigitString(string str) {
        import std.uni;
        auto app = appender!string();
        foreach(dchar c; str) {
            switch(c) {
                case 'a': .. case 'z':
                    formattedWrite(app, "%s", Grapheme(toUpper(c))[0] - 55);
                    break;
                case 'A': .. case 'Z':
                    formattedWrite(app, "%s", Grapheme(c)[0] - 55);
                    break;
                default:
                    app.put(c);
                    break;
            }
        }
        return app.data;
        //return str.replace(/[A-Z]/gi, function(match) {
        //    return match.toUpperCase().charCodeAt(0) - 55;
        //});
    }

    /// TODO IBAN generation looks broken
    string financeIBAN(bool fourSpace = false) {
        auto ibanFormat = choice(ibanData.formats, this.rnd);
        auto app = appender!string();
        string s;
        int count = 0;
        for(int b = 0; b < ibanFormat.bban.length; ++b) {
            auto bban = ibanFormat.bban[b];
            long c = bban.count;
            count += bban.count;
            while(c > 0) {
                if(bban.type == "a") {
                    //s += faker.random.arrayElement(ibanLib.alpha);
                    app.put(choice(ibanData.alpha, this.rnd));
                } else if (bban.type == "c") {
                    if (uniform(0, 100, this.rnd) < 80) {
                        formattedWrite(app, "%d", uniform(0, 10, this.rnd));
                        //s += faker.random.number(9);
                    } else {
                        app.put(choice(ibanData.alpha, this.rnd));
                        //s += faker.random.arrayElement(ibanLib.alpha);
                    }
                } else {
                    if (c >= 3 && uniform(0, 101, this.rnd) < 30) {
                    //if (c >= 3 && faker.random.number(100) < 30) {
                        if (uniform(0, 2, this.rnd) == 1) {
                            //s += faker.random.arrayElement(ibanLib.pattern100);
                            app.put(choice(ibanData.pattern100, this.rnd));
                            c -= 2;
                        } else {
                            //s += faker.random.arrayElement(ibanLib.pattern10);
                            app.put(choice(ibanData.pattern10, this.rnd));
                            c--;
                        }
                    } else {
                        //s += faker.random.number(9);
                        formattedWrite(app, "%d", uniform(0, 10, this.rnd));
                    }
                }
                c--;
            }
            s = app.data[0 .. count];
        }
        auto checksum = 98 - mod97(toDigitString(s ~ ibanFormat.country ~ "00"));
        string checksumStr;
        if (checksum < 10) {
            checksumStr = "0" ~ to!string(checksum);
        }
        auto iban = ibanFormat.country ~ checksumStr ~ s;
        return fourSpace
            ? format("%,4?s", ' ', iban)
            : iban;
    }
`;

        this.output ~= tmp;

        //return ["financeIBAN", "financeBIC"];
        return ["financeBIC", "financeIBAN"];
    }

    string[] buildCreditCards(Sub sub) {
        import jssplitter;

        string[] ret;

        string tmp = `
	///
    string financeCreditCardCVV() {
        string ret;
        for(int i = 0; i < 3; ++i) {
            ret ~= to!string(uniform(0, 3, this.rnd));
        }
        return ret;
    }
`;
        tmp ~= format(`
	///
    string financeCreditCard() {
        switch(uniform(0, %s, this.rnd)) {
`, sub.subs.length - 2);
        int cnt = 0;
        foreach(key, value; sub.subs) {
            if(key == "laser" || key == "maestro") {
                continue;
            }
            tmp ~= format("\t\t\tcase " ~ to!string(cnt++)
                    ~ ": \n\t\t\t\treturn financeCreditCard%s();\n",
                to!string(toUpper(key[0])) ~ key[1 .. $].camelCase());
        }
        tmp ~= `
            default:
                assert(false);
        }
        assert(false);
    }

`;
        this.output ~= tmp;

        foreach(key, value; sub.subs) {
			TypeLines tl = jssplit(value.data);
			if(tl.type == Type.digit) {
                string fname = "financeCreditCard" ~ to!string(toUpper(key[0]))
                    ~ key[1 ..  $].camelCase();
		        tmp = format("\t///\n\t%sstring %s() {\n",
                        this.getOverrideString(fname), fname

                    );
		        tmp ~= format("\t\tauto data = [\n\t\t%(%s,\n\t\t%)\n\t\t];\n",
                        tl.lines
                    );
		        tmp ~= "\t\treturn this.digitBuild(choice(data, this.rnd));\n";
		        tmp ~= "\t}\n\n";

		        this.output ~= tmp;
                ret ~= fname;
            } else {
                writefln("failed on %s with type %s", key, tl.type);
            }

        }
        return ret ~ ["financeCreditCardCVV", "financeCreditCard"];
    }

	string[] buildCommerceProductName(string data) {
        string[] ret;
        JSONValue js = parseJson(data);
        auto jsO = js.object();
        foreach(key; ["adjective", "material", "product"]) {
            if(const(JSONValue)* value = key in js) {
                string n = ("commerce_product_name_" ~ key).camelCase();
                ret ~= this.buildStringImpl(n,
                        value.array().map!(a => "\"" ~ a.str() ~ "\"")
                            .joiner(",\n\t\t").to!string()
                    );
            }
        }
        return ret;
    }

	string buildString(string name, string postfix, string[] lines) {
		import std.utf : byUTF, replacementDchar;
		string fname = name ~ "_" ~ postfix;
		fname = fname.camelCase();

		//writefln("%s %s", fname, this.locale);
		string[] nlines;
		foreach(idx, ref line; lines) {
			try {
				string s = line.replace("\r\n", "\n")
					.replace("\"", "\\\"")
					.byUTF!dchar()
					.filter!(it => it != replacementDchar)
					.to!string();
				writefln("'%s'", s);
				nlines ~= s;
			} catch(Throwable t) {
				writefln("%s %s", idx, line);
			}
		}

        this.buildStringImpl(fname,
			nlines.map!(a => "\"" ~ a ~ "\"")
				.joiner(",\n\t\t")
				.to!string()
        );

        return fname;
	}

	string buildDigits(string name, string postfix, string[] lines) {
		string fname = name ~ "_" ~ postfix;
		fname = fname.camelCase();
		string n = format("\t///\n\t%sstring %s() {\n",
                this.getOverrideString(fname), fname
            );
		n ~= format("\t\tauto data = [\n\t\t%(%s,\n\t\t%)\n\t\t];\n",
                lines
            );
		n ~= "\t\treturn this.digitBuild(choice(data, this.rnd));\n";
		n ~= "\t}\n\n";

		this.output ~= n;
        return fname;
	}

	string buildCall(string name, string postfix, string[] lines) {
		string fname = name ~ "_" ~ postfix;
		fname = fname.camelCase();
		string n = format("\t///\n\t%sstring %s() {\n", this.getOverrideString(fname),
                fname
            );
		if(lines.length > 1) {
			n ~= format("\t\tswitch(uniform(0, %d, this.rnd)) {\n", lines.length);
			foreach(idx, l; lines) {
				n ~= format("\t\t\tcase %d:\n", idx);
				n ~= "\t\t\t\t" ~ buildCallImpl(l, name);
			}

			n ~= "\t\t\tdefault: assert(false);\n";
			n ~= "\t\t}\n";
		} else {
			n ~= "\t\t" ~ buildCallImpl(lines[0], name);
		}
		n ~= "\t}\n\n";

		this.output ~= n;
        return fname;
	}

	string buildCallImpl(string line, string prefix) {
		string ret = "return format!\"";
		bool inCall = false;
		string tmp;
		string[] calls;
		while(!line.empty) {
			if(inCall && line.front != '}') {
				tmp ~= line.front;
				line.popFront();
			} else if(inCall && line.front == '}') {
				calls ~= tmp;
				tmp = "";
				inCall = false;
				line.popFront();
				ret ~= "%s";
			} else if(line.startsWith("#{")) {
				assert(!inCall);
				inCall = true;
				line = line[2 .. $];
			} else {
				ret ~= line.front;
				line.popFront();
			}
		}
		ret ~= "\"(";
		ret ~= to!string(calls
				//.map!(a => prefix ~ "_" ~ to!char(toLower(a[0])) ~ a[1 ..$])
				.map!(a => callReplace(a, prefix))
				.map!(a => a ~ "()")
				.joiner(", "));
		ret ~= ");\n";
		return ret;
	}

	string callReplace(string s, string prefix) {
		if(s.indexOf(".") == -1) {
			string t = (prefix ~ "_" ~ s.snakeCase()).camelCase();
			//string t = (prefix ~ to!char(toUpper(s[0])) ~ s[1 .. $]);
			//t = t.camelCase();
			//writeln("nor ", s, " ", prefix, " ", t);
			return t;
		} else {
			string t = s.snakeCase();
			t = t.replace(".", "_");
			t = t.camelCase();
			//writeln("dot ", t);
			return t;
		}

	}
}

JSONValue parseJson(string input) {
    input = input.strip();
    enum fStr = "module[\"exports\"] = ";
    enum eStr = "};";
    if(!input.startsWith(fStr)) {
        return parseJSON("{}");
    }

    input = input[fStr.length .. $];

    if(!input.endsWith("};")) {
        return parseJSON("{}");
    }

    input = input[0 .. $ - 1];

    return parseJSON(input);
}

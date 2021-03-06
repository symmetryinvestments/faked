// generated by fakerjsgenerator
///
module faked.faker_en_ca;

import faked.base;


///
class Faker_en_ca : Faker {
@safe:
	import std.random;
	import std.array;
	import std.format;
	import std.conv : to;

	///
	this(int seed) {
        super(seed);
	}

	///
	override string phoneNumberFormats() {
		static enum data = [
		"!##-!##-####",
		"(!##)!##-####",
		"!##.!##.####",
		"1-!##-###-####",
		"!##-!##-#### x###",
		"(!##)!##-#### x###",
		"1-!##-!##-#### x###",
		"!##.!##.#### x###",
		"!##-!##-#### x####",
		"(!##)!##-#### x####",
		"1-!##-!##-#### x####",
		"!##.!##.#### x####",
		"!##-!##-#### x#####",
		"(!##)!##-#### x#####",
		"1-!##-!##-#### x#####",
		"!##.!##.#### x#####"
		];
		return this.digitBuild(choice(data, this.rnd));
	}

	///
	override string internetFreeEmail() {
		static enum data = [
		"gmail.com",
		"yahoo.ca",
		"hotmail.com"
		];
		return choice(data, this.rnd);
	}

	///
	override string internetDomainSuffix() {
		static enum data = [
		"ca",
		"com",
		"biz",
		"info",
		"name",
		"net",
		"org"
		];
		return choice(data, this.rnd);
	}

	///
	override string addressStateAbbr() {
		static enum data = [
		"AB",
		"BC",
		"MB",
		"NB",
		"NL",
		"NS",
		"NU",
		"NT",
		"ON",
		"PE",
		"QC",
		"SK",
		"YT"
		];
		return choice(data, this.rnd);
	}

	///
	override string addressState() {
		static enum data = [
		"Alberta",
		"British Columbia",
		"Manitoba",
		"New Brunswick",
		"Newfoundland and Labrador",
		"Nova Scotia",
		"Northwest Territories",
		"Nunavut",
		"Ontario",
		"Prince Edward Island",
		"Quebec",
		"Saskatchewan",
		"Yukon"
		];
		return choice(data, this.rnd);
	}

	///
	override string addressPostcode() {
		static enum data = [
		"A#? #?#",
		"B#? #?#",
		"C#? #?#",
		"E#? #?#",
		"G#? #?#",
		"H#? #?#",
		"J#? #?#",
		"K#? #?#",
		"L#? #?#",
		"M#? #?#",
		"N#? #?#",
		"P#? #?#",
		"R#? #?#",
		"S#? #?#",
		"T#? #?#",
		"V#? #?#",
		"X#? #?#",
		"Y#? #?#"
		];
		return choice(data, this.rnd);
	}

	///
	override string addressDefaultCountry() {
		static enum data = [
		"Canada"
		];
		return choice(data, this.rnd);
	}

}

module faked.faker_fr_ca;

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

import faked.faker_fr;

class Faker_fr_ca : Faker_fr {
@safe:
	this(int seed) {
		super(seed);
	}

	override string internetDomainSuffix() {
		const string[] strs =
		[ q"{qc.ca}", q"{ca}", q"{com}", q"{biz}", q"{info}", q"{name}", q"{net}", q"{org}" ];

		return choice(strs, this.rnd);
	}

	override string internetFreeEmail() {
		const string[] strs =
		[ q"{gmail.com}", q"{yahoo.ca}", q"{hotmail.com}" ];

		return choice(strs, this.rnd);
	}

	override string locationCityPattern() {
		final switch(uniform(0, 4, this.rnd)) {
			case 0: return locationCityPrefix() ~ " " ~ personFirstName() ~ locationCitySuffix();
			case 1: return locationCityPrefix() ~ " " ~ personFirstName();
			case 2: return personFirstName() ~ locationCitySuffix();
			case 3: return personLastName() ~ locationCitySuffix();
		}
		return "";
	}

	override string locationDefaultCountry() {
		const string[] strs =
		[ q"{Canada}" ];

		return choice(strs, this.rnd);
	}

	override string locationPostcode() {
		const string[] strs =
		[ q"{A#? #?#}", q"{B#? #?#}", q"{C#? #?#}", q"{E#? #?#}", q"{G#? #?#}", q"{H#? #?#}", q"{J#? #?#}"
		, q"{K#? #?#}", q"{L#? #?#}", q"{M#? #?#}", q"{N#? #?#}", q"{P#? #?#}", q"{R#? #?#}", q"{S#? #?#}"
		, q"{T#? #?#}", q"{V#? #?#}", q"{X#? #?#}", q"{Y#? #?#}" ];

		return numberBuild(choice(strs, this.rnd));
	}

	override string locationState() {
		const string[] strs =
		[ q"{Alberta}", q"{Colombie-Britannique}", q"{Manitoba}", q"{Nouveau-Brunswick}", q"{Terre-Neuve-et-Labrador}"
		, q"{Nouvelle-Écosse}", q"{Territoires du Nord-Ouest}", q"{Nunavut}", q"{Ontario}", q"{Île-du-Prince-Édouard}"
		, q"{Québec}", q"{Saskatchewan}", q"{Yukon}" ];

		return choice(strs, this.rnd);
	}

	override string locationStateAbbr() {
		const string[] strs =
		[ q"{AB}", q"{BC}", q"{MB}", q"{NB}", q"{NL}", q"{NS}", q"{NU}", q"{NT}", q"{ON}", q"{PE}", q"{QC}", q"{SK}", q"{YK}" ];

		return choice(strs, this.rnd);
	}

	override string locationStreetPattern() {
		final switch(uniform(0, 2, this.rnd)) {
			case 0: return personFirstName() ~ " " ~ locationStreetSuffix();
			case 1: return personLastName() ~ " " ~ locationStreetSuffix();
		}
		return "";
	}

	override string personLastNamePattern() {
		const int rndInt = uniform(0, 1, this.rnd);

		if(rndInt >= 0 && rndInt < 1) {
			return personLastName();
		}

		return "";
	}

	override string phoneNumberFormats() {
		const string[] strs =
		[ q"{### ###-####}", q"{1 ### ###-####}", q"{### ###-####, poste ###}" ];

		return numberBuild(choice(strs, this.rnd));
	}

}

module faker.faker_fr_ca;

import std.random;
import std.array;
import std.format;
import std.conv : to;
import std.string : toUpper;
import std.range : iota, take, repeat;
import std.algorithm : map, joiner;
import faker.base;
import faker.faker_fr;

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
		assert(false);
	}

	override string locationDefaultCountry() {
		const string[] strs =
		[ q"{Canada}" ];

		return choice(strs, this.rnd);
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
		assert(false);
	}

}

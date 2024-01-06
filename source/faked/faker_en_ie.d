module faker.faker_en_ie;

import std.random;
import std.array;
import std.format;
import std.conv : to;
import std.string : toUpper;
import std.range : iota, take, repeat;
import std.algorithm : map, joiner;
import faker.base;

class Faker_en_ie : Faker {
@safe:
	this(int seed) {
		super(seed);
	}

	override string internetDomainSuffix() {
		const string[] strs =
		[ q"{ie}", q"{com}", q"{net}", q"{info}", q"{eu}" ];

		return choice(strs, this.rnd);
	}

	override string locationCityPattern() {
		assert(false);
	}

	override string locationCounty() {
		const string[] strs =
		[ q"{Carlow}", q"{Cavan}", q"{Clare}", q"{Cork}", q"{Donegal}", q"{Dublin}", q"{Galway}", q"{Kerry}"
		, q"{Kildare}", q"{Kilkenny}", q"{Laois}", q"{Leitrim}", q"{Limerick}", q"{Longford}", q"{Louth}"
		, q"{Mayo}", q"{Meath}", q"{Monaghan}", q"{Offaly}", q"{Roscommon}", q"{Sligo}", q"{Tipperary}"
		, q"{Waterford}", q"{Westmeath}", q"{Wexford}", q"{Wicklow}" ];

		return choice(strs, this.rnd);
	}

	override string locationDefaultCountry() {
		const string[] strs =
		[ q"{Ireland}" ];

		return choice(strs, this.rnd);
	}

	override string locationStreetPattern() {
		assert(false);
	}

}

module faker.faker_en_ie;

import std.random;
import std.array;
import std.format;
import std.conv : to;
import std.string : toUpper;
import std.range : iota, take, repeat;
import std.algorithm : map, joiner;

import faker.customtypes;
import faker.base;

class Faker_en_ie : Faker {
@safe:
	this(int seed) {
		super(seed);
	}

	override string cellPhoneFormats() {
		const string[] strs =
		[ q"{082 ### ####}", q"{083 ### ####}", q"{085 ### ####}", q"{086 ### ####}", q"{087 ### ####}"
		, q"{089 ### ####}" ];

		return numberBuild(choice(str, this.rnd));
	}

	override string internetDomainSuffix() {
		const string[] strs =
		[ q"{ie}", q"{com}", q"{net}", q"{info}", q"{eu}" ];

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

	override string locationPostcode() {
		const string[] strs =
		[ q"{A## ****}", q"{D## ****}", q"{E## ****}", q"{F## ****}", q"{H## ****}", q"{K## ****}", q"{N## ****}"
		, q"{P## ****}", q"{R## ****}", q"{T## ****}", q"{V## ****}", q"{W## ****}", q"{X## ****}", q"{Y## ****}" ];

		return numberBuild(choice(str, this.rnd));
	}

	override string locationStreetPattern() {
		final switch(uniform(0, 2, this.rnd)) {
			case 0: return personFirstName() ~ " " ~ locationStreetSuffix();
			case 1: return personLastName() ~ " " ~ locationStreetSuffix();
		}
		return "";
	}

	override string personLastNamePattern() {
		const int rndInt = uniform(0, 100, this.rnd);

		if(rndInt >= 0 && rndInt < 95) {
			return personLastName();
		}
		if(rndInt >= 95 && rndInt < 100) {
			return personLastName() ~ "-" ~ personLastName();
		}

		return "";
	}

	override string phoneNumberFormats() {
		const string[] strs =
		[ q"{01 #######}", q"{021 #######}", q"{022 #######}", q"{023 #######}", q"{024 #######}", q"{025 #######}"
		, q"{026 #######}", q"{027 #######}", q"{028 #######}", q"{029 #######}", q"{0402 #######}"
		, q"{0404 #######}", q"{041 #######}", q"{042 #######}", q"{043 #######}", q"{044 #######}"
		, q"{045 #######}", q"{046 #######}", q"{047 #######}", q"{049 #######}", q"{0504 #######}"
		, q"{0505 #######}", q"{051 #######}", q"{052 #######}", q"{053 #######}", q"{056 #######}"
		, q"{057 #######}", q"{058 #######}", q"{059 #######}", q"{061 #######}", q"{062 #######}"
		, q"{063 #######}", q"{064 #######}", q"{065 #######}", q"{066 #######}", q"{067 #######}"
		, q"{068 #######}", q"{069 #######}", q"{071 #######}", q"{074 #######}", q"{090 #######}"
		, q"{091 #######}", q"{093 #######}", q"{094 #######}", q"{095 #######}", q"{096 #######}"
		, q"{097 #######}", q"{098 #######}", q"{099 #######}" ];

		return numberBuild(choice(str, this.rnd));
	}

}

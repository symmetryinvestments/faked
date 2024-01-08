module faked.faker_en_bork;

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

import faked.faker_en;

class Faker_en_bork : Faker_en {
@safe:
	this(int seed) {
		super(seed);
	}

	override string loremWords() {
		const string[] strs =
		[ q"{Boot}", q"{I}", q"{Nu}", q"{Nur}", q"{Tu}", q"{Um}", q"{a}", q"{becoose-a}", q"{boot}", q"{bork}", q"{burn}"
		, q"{chuuses}", q"{cumplete-a}", q"{cun}", q"{cunseqooences}", q"{curcoomstunces}", q"{dee}"
		, q"{deeslikes}", q"{denuoonceeng}", q"{desures}", q"{du}", q"{eccuoont}", q"{ectooel}", q"{edfuntege-a}"
		, q"{efueeds}", q"{egeeen}", q"{ell}", q"{ere-a}", q"{feend}", q"{foolt}", q"{frum}", q"{geefe-a}"
		, q"{gesh}", q"{greet}", q"{heem}", q"{heppeeness}", q"{hes}", q"{hoo}", q"{hoomun}", q"{idea}", q"{ifer}"
		, q"{in}", q"{incuoonter}", q"{injuy}", q"{itselff}", q"{ixcept}", q"{ixemple-a}", q"{ixerceese-a}"
		, q"{ixpleeen}", q"{ixplurer}", q"{ixpuoond}", q"{ixtremely}", q"{knoo}", q"{lebureeuoos}", q"{lufes}"
		, q"{meestekee}", q"{mester-booeelder}", q"{moost}", q"{mun}", q"{nu}", q"{nut}", q"{oobteeen}"
		, q"{oocceseeunelly}", q"{ooccoor}", q"{ooff}", q"{oone-a}", q"{oor}", q"{peeen}", q"{peeenffool}"
		, q"{physeecel}", q"{pleesoore-a}", q"{poorsooe-a}", q"{poorsooes}", q"{preeesing}", q"{prucoore-a}"
		, q"{prudooces}", q"{reeght}", q"{reshunelly}", q"{resooltunt}", q"{sume-a}", q"{teecheengs}"
		, q"{teke-a}", q"{thees}", q"{thet}", q"{thuse-a}", q"{treefiel}", q"{troot}", q"{tu}", q"{tueel}"
		, q"{und}", q"{undertekes}", q"{unnuyeeng}", q"{uny}", q"{unyune-a}", q"{us}", q"{veell}", q"{veet}"
		, q"{ves}", q"{vheech}", q"{vhu}", q"{yuoo}", q"{zee}", q"{zeere-a}" ];

		return choice(strs, this.rnd);
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

}

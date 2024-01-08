module faked.faker_en_au_ocker;

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

import faked.faker_en_au;

class Faker_en_au_ocker : Faker_en_au {
@safe:
	this(int seed) {
		super(seed);
	}

	override string companySuffix() {
		const string[] strs =
		[ q"{Pty Ltd}", q"{and Sons}", q"{Corp}", q"{Group}", q"{Brothers}", q"{Partners}" ];

		return choice(strs, this.rnd);
	}

	override string internetDomainSuffix() {
		const string[] strs =
		[ q"{com.au}", q"{com}", q"{net.au}", q"{net}", q"{org.au}", q"{org}" ];

		return choice(strs, this.rnd);
	}

	override string locationBuildingNumber() {
		const string[] strs =
		[ q"{####}", q"{###}", q"{##}" ];

		return numberBuild(choice(strs, this.rnd));
	}

	override string locationCityName() {
		const string[] strs =
		[ q"{Bondi}", q"{Burleigh Heads}", q"{Carlton}", q"{Fitzroy}", q"{Fremantle}", q"{Glenelg}", q"{Manly}"
		, q"{Noosa}", q"{Stones Corner}", q"{St Kilda}", q"{Surry Hills}", q"{Yarra Valley}" ];

		return choice(strs, this.rnd);
	}

	override string locationCityPattern() {
		final switch(uniform(0, 1, this.rnd)) {
			case 0: return locationCityName();
		}
		return "";
	}

	override string locationDefaultCountry() {
		const string[] strs =
		[ q"{Australia}" ];

		return choice(strs, this.rnd);
	}

	override string locationPostcode() {
		const string[] strs =
		[ q"{0###}", q"{2###}", q"{3###}", q"{4###}", q"{5###}", q"{6###}", q"{7###}" ];

		return numberBuild(choice(strs, this.rnd));
	}

	override string locationState() {
		const string[] strs =
		[ q"{New South Wales}", q"{Queensland}", q"{Northern Territory}", q"{South Australia}", q"{Western Australia}"
		, q"{Tasmania}", q"{Australian Capital Territory}", q"{Victoria}" ];

		return choice(strs, this.rnd);
	}

	override string locationStateAbbr() {
		const string[] strs =
		[ q"{NSW}", q"{QLD}", q"{NT}", q"{SA}", q"{WA}", q"{TAS}", q"{ACT}", q"{VIC}" ];

		return choice(strs, this.rnd);
	}

	override string locationStreetName() {
		const string[] strs =
		[ q"{Ramsay Street}", q"{Bonnie Doon}", q"{Cavill Avenue}", q"{Queen Street}" ];

		return choice(strs, this.rnd);
	}

	override string locationStreetPattern() {
		final switch(uniform(0, 1, this.rnd)) {
			case 0: return locationStreetName();
		}
		return "";
	}

	override string locationStreetSuffix() {
		const string[] strs =
		[ q"{Avenue}", q"{Boulevard}", q"{Circle}", q"{Circuit}", q"{Court}", q"{Crescent}", q"{Crest}", q"{Drive}"
		, q"{Estate Dr}", q"{Grove}", q"{Hill}", q"{Island}", q"{Junction}", q"{Knoll}", q"{Lane}", q"{Loop}"
		, q"{Mall}", q"{Manor}", q"{Meadow}", q"{Mews}", q"{Parade}", q"{Parkway}", q"{Pass}", q"{Place}"
		, q"{Plaza}", q"{Ridge}", q"{Road}", q"{Run}", q"{Square}", q"{Station St}", q"{Street}", q"{Summit}"
		, q"{Terrace}", q"{Track}", q"{Trail}", q"{View Rd}", q"{Way}" ];

		return choice(strs, this.rnd);
	}

	override string personFirstName() {
		const string[] strs =
		[ q"{Charlotte}", q"{Ava}", q"{Chloe}", q"{Emily}", q"{Olivia}", q"{Zoe}", q"{Lily}", q"{Sophie}", q"{Amelia}"
		, q"{Sofia}", q"{Ella}", q"{Isabella}", q"{Ruby}", q"{Sienna}", q"{Mia+3}", q"{Grace}", q"{Emma}"
		, q"{Ivy}", q"{Layla}", q"{Abigail}", q"{Isla}", q"{Hannah}", q"{Zara}", q"{Lucy}", q"{Evie}", q"{Annabelle}"
		, q"{Madison}", q"{Alice}", q"{Georgia}", q"{Maya}", q"{Madeline}", q"{Audrey}", q"{Scarlett}"
		, q"{Isabelle}", q"{Chelsea}", q"{Mila}", q"{Holly}", q"{Indiana}", q"{Poppy}", q"{Harper}", q"{Sarah}"
		, q"{Alyssa}", q"{Jasmine}", q"{Imogen}", q"{Hayley}", q"{Pheobe}", q"{Eva}", q"{Evelyn}", q"{Mackenzie}"
		, q"{Ayla}", q"{Oliver}", q"{Jack}", q"{Jackson}", q"{William}", q"{Ethan}", q"{Charlie}", q"{Lucas}"
		, q"{Cooper}", q"{Lachlan}", q"{Noah}", q"{Liam}", q"{Alexander}", q"{Max}", q"{Isaac}", q"{Thomas}"
		, q"{Xavier}", q"{Oscar}", q"{Benjamin}", q"{Aiden}", q"{Mason}", q"{Samuel}", q"{James}", q"{Levi}"
		, q"{Riley}", q"{Harrison}", q"{Ryan}", q"{Henry}", q"{Jacob}", q"{Joshua}", q"{Leo}", q"{Zach}", q"{Harry}"
		, q"{Hunter}", q"{Flynn}", q"{Archie}", q"{Tyler}", q"{Elijah}", q"{Hayden}", q"{Jayden}", q"{Blake}"
		, q"{Archer}", q"{Ashton}", q"{Sebastian}", q"{Zachery}", q"{Lincoln}", q"{Mitchell}", q"{Luca}"
		, q"{Nathan}", q"{Kai}", q"{Connor}", q"{Tom}", q"{Nigel}", q"{Matt}", q"{Sean}" ];

		return choice(strs, this.rnd);
	}

	override string personLastName() {
		const string[] strs =
		[ q"{Smith}", q"{Jones}", q"{Williams}", q"{Brown}", q"{Wilson}", q"{Taylor}", q"{Morton}", q"{White}"
		, q"{Martin}", q"{Anderson}", q"{Thompson}", q"{Nguyen}", q"{Thomas}", q"{Walker}", q"{Harris}"
		, q"{Lee}", q"{Ryan}", q"{Robinson}", q"{Kelly}", q"{King}", q"{Rausch}", q"{Ridge}", q"{Connolly}"
		, q"{LeQuesne}" ];

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

	override string phoneNumberFormats() {
		const string[] strs =
		[ q"{0# #### ####}", q"{+61 # #### ####}", q"{04## ### ###}", q"{+61 4## ### ###}" ];

		return numberBuild(choice(strs, this.rnd));
	}

}

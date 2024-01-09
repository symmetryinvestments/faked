module faked.faker_fi;

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

import faked.faker_en;

class Faker_fi : Faker_en {
@safe:
	this(int seed) {
		super(seed);
	}

	override string locationBuildingNumber() {
		const string[] strs =
		[ q"{###}", q"{##}", q"{#}" ];

		return numberBuild(choice(strs, this.rnd));
	}

	override string locationCityName() {
		const string[] strs =
		[ q"{Espoo}", q"{Helsinki}", q"{Hyvinkää}", q"{Iisalmi}", q"{Joensuu}", q"{Jyväskylä}", q"{Kokkola}"
		, q"{Kuopio}", q"{Lahti}", q"{Oulu}", q"{Pori}", q"{Porvoo}", q"{Raisio}", q"{Rovaniemi}", q"{Sastamala}"
		, q"{Tampere}", q"{Turku}", q"{Vaasa}", q"{Valkeakoski}", q"{Vantaa}" ];

		return choice(strs, this.rnd);
	}

	override string locationCityPattern() {
		final switch(uniform(0, 1, this.rnd)) {
			case 0: return locationCityName();
		}
		return "";
	}

	override string locationPostcode() {
		const string[] strs =
		[ q"{#####}" ];

		return numberBuild(choice(strs, this.rnd));
	}

	override string locationSecondaryAddress() {
		const string[] strs =
		[ q"{A}", q"{B}", q"{C}", q"{A #}", q"{A ##}", q"{B #}", q"{B ##}", q"{C #}", q"{C ##}" ];

		return numberBuild(choice(strs, this.rnd));
	}

	override string locationState() {
		const string[] strs =
		[ q"{Ahvenanmaa}", q"{Etelä-Karjala}", q"{Etelä-Pohjanmaa}", q"{Etelä-Savo}", q"{Kainuu}"
		, q"{Kanta-Häme}", q"{Keski-Pohjanmaa}", q"{Keski-Suomi}", q"{Kymenlaakso}", q"{Lappi}"
		, q"{Päijät-Häme}", q"{Pirkanmaa}", q"{Pohjanmaa}", q"{Pohjois-Karjala}", q"{Pohjois-Pohjanmaa}"
		, q"{Pohjois-Savo}", q"{Satakunta}", q"{Uusimaa}", q"{Varsinais-Suomi}" ];

		return choice(strs, this.rnd);
	}

	override string locationStreetAddress() {
		const LocationStreetAddressEnum[] enums = [ LocationStreetAddressEnum.normal, LocationStreetAddressEnum.full ];
		return locationStreetAddress(choice(enums, this.rnd));
	}

	override string locationStreetAddress(LocationStreetAddressEnum which) {
		final switch(which) {
			case LocationStreetAddressEnum.normal: return locationStreet() ~ " " ~ locationBuildingNumber();
			case LocationStreetAddressEnum.full: return locationStreet() ~ " " ~ locationBuildingNumber() ~ " " ~ locationSecondaryAddress();
		}
		return "";
	}

	override string locationStreetPattern() {
		final switch(uniform(0, 2, this.rnd)) {
			case 0: return personFirstName() ~ locationStreetSuffix();
			case 1: return personLastName() ~ locationStreetSuffix();
		}
		return "";
	}

	override string locationStreetSuffix() {
		const string[] strs =
		[ q"{katu}", q"{tie}", q"{kuja}", q"{polku}", q"{kaari}", q"{linja}", q"{raitti}", q"{rinne}", q"{penger}"
		, q"{ranta}", q"{väylä}" ];

		return choice(strs, this.rnd);
	}

	override string personFemaleFirstName() {
		const string[] strs =
		[ q"{Aino}", q"{Anja}", q"{Anna}", q"{Anne}", q"{Anneli}", q"{Annikki}", q"{Eeva}", q"{Elina}", q"{Elisabet}"
		, q"{Emilia}", q"{Eveliina}", q"{Hanna}", q"{Hannele}", q"{Helena}", q"{Inkeri}", q"{Irmeli}", q"{Johanna}"
		, q"{Kaarina}", q"{Karoliina}", q"{Katariina}", q"{Kristiina}", q"{Kyllikki}", q"{Laura}", q"{Leena}"
		, q"{Liisa}", q"{Maarit}", q"{Maija}", q"{Mari}", q"{Maria}", q"{Marika}", q"{Marja}", q"{Marjatta}"
		, q"{Minna}", q"{Orvokki}", q"{Pauliina}", q"{Pirjo}", q"{Pirkko}", q"{Päivi}", q"{Riitta}", q"{Ritva}"
		, q"{Sari}", q"{Satu}", q"{Sinikka}", q"{Sofia}", q"{Susanna}", q"{Tarja}", q"{Tellervo}", q"{Tiina}"
		, q"{Tuula}", q"{Tuulikki}" ];

		return choice(strs, this.rnd);
	}

	override string personFirstName() {
		const string[] strs =
		[ q"{Aleksi}", q"{Antero}", q"{Antti}", q"{Ari}", q"{Eero}", q"{Ensio}", q"{Erik}", q"{Erkki}", q"{Hannu}"
		, q"{Heikki}", q"{Henrik}", q"{Ilmari}", q"{Jaakko}", q"{Janne}", q"{Jari}", q"{Johannes}", q"{Juha}"
		, q"{Juhani}", q"{Juho}", q"{Jukka}", q"{Kalervo}", q"{Kalevi}", q"{Kari}", q"{Kristian}", q"{Lauri}"
		, q"{Markku}", q"{Marko}", q"{Markus}", q"{Martti}", q"{Matias}", q"{Matti}", q"{Mika}", q"{Mikael}"
		, q"{Mikko}", q"{Olavi}", q"{Oskari}", q"{Pekka}", q"{Pentti}", q"{Petri}", q"{Petteri}", q"{Sakari}"
		, q"{Sami}", q"{Seppo}", q"{Tapani}", q"{Tapio}", q"{Timo}", q"{Tuomas}", q"{Valtteri}", q"{Veikko}"
		, q"{Ville}", q"{Aino}", q"{Anja}", q"{Anna}", q"{Anne}", q"{Anneli}", q"{Annikki}", q"{Eeva}", q"{Elina}"
		, q"{Elisabet}", q"{Emilia}", q"{Eveliina}", q"{Hanna}", q"{Hannele}", q"{Helena}", q"{Inkeri}"
		, q"{Irmeli}", q"{Johanna}", q"{Kaarina}", q"{Karoliina}", q"{Katariina}", q"{Kristiina}", q"{Kyllikki}"
		, q"{Laura}", q"{Leena}", q"{Liisa}", q"{Maarit}", q"{Maija}", q"{Mari}", q"{Maria}", q"{Marika}"
		, q"{Marja}", q"{Marjatta}", q"{Minna}", q"{Orvokki}", q"{Pauliina}", q"{Pirjo}", q"{Pirkko}", q"{Päivi}"
		, q"{Riitta}", q"{Ritva}", q"{Sari}", q"{Satu}", q"{Sinikka}", q"{Sofia}", q"{Susanna}", q"{Tarja}"
		, q"{Tellervo}", q"{Tiina}", q"{Tuula}", q"{Tuulikki}" ];

		return choice(strs, this.rnd);
	}

	override string personLastName() {
		const string[] strs =
		[ q"{Aaltonen}", q"{Ahonen}", q"{Anttila}", q"{Hakala}", q"{Heikkilä}", q"{Heikkinen}", q"{Heinonen}"
		, q"{Hiltunen}", q"{Hirvonen}", q"{Hämäläinen}", q"{Jokinen}", q"{Järvinen}", q"{Kallio}"
		, q"{Karjalainen}", q"{Kinnunen}", q"{Koivisto}", q"{Korhonen}", q"{Koskinen}", q"{Laakso}"
		, q"{Laaksonen}", q"{Lahtinen}", q"{Laine}", q"{Laitinen}", q"{Lehtinen}", q"{Lehto}", q"{Lehtonen}"
		, q"{Leinonen}", q"{Leppänen}", q"{Manninen}", q"{Mattila}", q"{Miettinen}", q"{Mustonen}"
		, q"{Mäkelä}", q"{Mäkinen}", q"{Niemi}", q"{Nieminen}", q"{Ojala}", q"{Pitkänen}", q"{Rantanen}"
		, q"{Räsänen}", q"{Saarinen}", q"{Salminen}", q"{Salo}", q"{Salonen}", q"{Savolainen}", q"{Toivonen}"
		, q"{Tuominen}", q"{Turunen}", q"{Virtanen}", q"{Väisänen}" ];

		return choice(strs, this.rnd);
	}

	override string personLastNamePattern() {
		const int rndInt = uniform(0, 1, this.rnd);

		if(rndInt >= 0 && rndInt < 1) {
			return personLastName();
		}

		return "";
	}

	override string personMaleFirstName() {
		const string[] strs =
		[ q"{Aleksi}", q"{Antero}", q"{Antti}", q"{Ari}", q"{Eero}", q"{Ensio}", q"{Erik}", q"{Erkki}", q"{Hannu}"
		, q"{Heikki}", q"{Henrik}", q"{Ilmari}", q"{Jaakko}", q"{Janne}", q"{Jari}", q"{Johannes}", q"{Juha}"
		, q"{Juhani}", q"{Juho}", q"{Jukka}", q"{Kalervo}", q"{Kalevi}", q"{Kari}", q"{Kristian}", q"{Lauri}"
		, q"{Markku}", q"{Marko}", q"{Markus}", q"{Martti}", q"{Matias}", q"{Matti}", q"{Mika}", q"{Mikael}"
		, q"{Mikko}", q"{Olavi}", q"{Oskari}", q"{Pekka}", q"{Pentti}", q"{Petri}", q"{Petteri}", q"{Sakari}"
		, q"{Sami}", q"{Seppo}", q"{Tapani}", q"{Tapio}", q"{Timo}", q"{Tuomas}", q"{Valtteri}", q"{Veikko}"
		, q"{Ville}" ];

		return choice(strs, this.rnd);
	}

	override string personName() {
		const int rndInt = uniform(0, 1, this.rnd);

		if(rndInt >= 0 && rndInt < 1) {
			return personFirstName() ~ " " ~ personLastName();
		}

		return "";
	}

}

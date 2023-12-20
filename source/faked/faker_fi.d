// generated by fakerjsgenerator
///
module faked.faker_fi;

import faked.base;


///
class Faker_fi : Faker {
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
	override string locationCityName() {
		auto data = [
		"Espoo",
		"Helsinki",
		"Hyvinkää",
		"Iisalmi",
		"Joensuu",
		"Jyväskylä",
		"Kokkola",
		"Kuopio",
		"Lahti",
		"Oulu",
		"Pori",
		"Porvoo",
		"Raisio",
		"Rovaniemi",
		"Sastamala",
		"Tampere",
		"Turku",
		"Vaasa",
		"Valkeakoski",
		"Vantaa"
		];
		return choice(data, this.rnd);
	}

	///
	override string locationState() {
		auto data = [
		"Ahvenanmaa",
		"Etelä-Karjala",
		"Etelä-Pohjanmaa",
		"Etelä-Savo",
		"Kainuu",
		"Kanta-Häme",
		"Keski-Pohjanmaa",
		"Keski-Suomi",
		"Kymenlaakso",
		"Lappi",
		"Päijät-Häme",
		"Pirkanmaa",
		"Pohjanmaa",
		"Pohjois-Karjala",
		"Pohjois-Pohjanmaa",
		"Pohjois-Savo",
		"Satakunta",
		"Uusimaa",
		"Varsinais-Suomi"
		];
		return choice(data, this.rnd);
	}


	override string locationStreetPattern() {
		final switch(uniform(0, 2, this.rnd)) {
			case 0: return personFirstName() ~ locationStreetSuffix();
			case 1: return personLastName() ~ locationStreetSuffix();
		}
	}


	override string locationStreetAddress() {
		final switch(uniform(0, 2, this.rnd)) {
			case 0: return "normal: '" ~ locationStreet() ~ " " ~ locationBuildingNumber();
			case 1: return "full: '" ~ locationStreet() ~ " " ~ locationBuildingNumber() ~ " " ~ locationSecondaryAddress();
		}
	}


	override string locationCityPattern() {
		final switch(uniform(0, 1, this.rnd)) {
			case 0: return locationCityName() ~ "'";
		}
	}

	///
	override string locationBuildingNumber() {
		auto data = [
		"###",
		"##",
		"#'"
		];
		return this.digitBuild(choice(data, this.rnd));
	}


	override string locationSecondaryAddress() {
		final switch(uniform(0, 9, this.rnd)) {
			case 0: return "A";
			case 1: return "B";
			case 2: return "C";
			case 3: return "A #";
			case 4: return "A ##";
			case 5: return "B #";
			case 6: return "B ##";
			case 7: return "C #";
			case 8: return "C ##'";
		}
	}

	///
	override string locationPostcode() {
		auto data = [
		"#####'"
		];
		return this.digitBuild(choice(data, this.rnd));
	}

	///
	override string locationStreetSuffix() {
		auto data = [
		"katu",
		"tie",
		"kuja",
		"polku",
		"kaari",
		"linja",
		"raitti",
		"rinne",
		"penger",
		"ranta",
		"väylä"
		];
		return choice(data, this.rnd);
	}

	///
	override string personFemaleFirstName() {
		auto data = [
		"Aino",
		"Anja",
		"Anna",
		"Anne",
		"Anneli",
		"Annikki",
		"Eeva",
		"Elina",
		"Elisabet",
		"Emilia",
		"Eveliina",
		"Hanna",
		"Hannele",
		"Helena",
		"Inkeri",
		"Irmeli",
		"Johanna",
		"Kaarina",
		"Karoliina",
		"Katariina",
		"Kristiina",
		"Kyllikki",
		"Laura",
		"Leena",
		"Liisa",
		"Maarit",
		"Maija",
		"Mari",
		"Maria",
		"Marika",
		"Marja",
		"Marjatta",
		"Minna",
		"Orvokki",
		"Pauliina",
		"Pirjo",
		"Pirkko",
		"Päivi",
		"Riitta",
		"Ritva",
		"Sari",
		"Satu",
		"Sinikka",
		"Sofia",
		"Susanna",
		"Tarja",
		"Tellervo",
		"Tiina",
		"Tuula",
		"Tuulikki"
		];
		return choice(data, this.rnd);
	}


	override string personLastNamePattern() {
		final switch(uniform(0, 2, this.rnd)) {
			case 0: return "{ value: '" ~ personLastName();
			case 1: return "weight: 1 }";
		}
	}

	///
	override string personLastName() {
		auto data = [
		"Aaltonen",
		"Ahonen",
		"Anttila",
		"Hakala",
		"Heikkilä",
		"Heikkinen",
		"Heinonen",
		"Hiltunen",
		"Hirvonen",
		"Hämäläinen",
		"Jokinen",
		"Järvinen",
		"Kallio",
		"Karjalainen",
		"Kinnunen",
		"Koivisto",
		"Korhonen",
		"Koskinen",
		"Laakso",
		"Laaksonen",
		"Lahtinen",
		"Laine",
		"Laitinen",
		"Lehtinen",
		"Lehto",
		"Lehtonen",
		"Leinonen",
		"Leppänen",
		"Manninen",
		"Mattila",
		"Miettinen",
		"Mustonen",
		"Mäkelä",
		"Mäkinen",
		"Niemi",
		"Nieminen",
		"Ojala",
		"Pitkänen",
		"Rantanen",
		"Räsänen",
		"Saarinen",
		"Salminen",
		"Salo",
		"Salonen",
		"Savolainen",
		"Toivonen",
		"Tuominen",
		"Turunen",
		"Virtanen",
		"Väisänen"
		];
		return choice(data, this.rnd);
	}

	///
	override string personFirstName() {
		auto data = [
		"Aleksi",
		"Antero",
		"Antti",
		"Ari",
		"Eero",
		"Ensio",
		"Erik",
		"Erkki",
		"Hannu",
		"Heikki",
		"Henrik",
		"Ilmari",
		"Jaakko",
		"Janne",
		"Jari",
		"Johannes",
		"Juha",
		"Juhani",
		"Juho",
		"Jukka",
		"Kalervo",
		"Kalevi",
		"Kari",
		"Kristian",
		"Lauri",
		"Markku",
		"Marko",
		"Markus",
		"Martti",
		"Matias",
		"Matti",
		"Mika",
		"Mikael",
		"Mikko",
		"Olavi",
		"Oskari",
		"Pekka",
		"Pentti",
		"Petri",
		"Petteri",
		"Sakari",
		"Sami",
		"Seppo",
		"Tapani",
		"Tapio",
		"Timo",
		"Tuomas",
		"Valtteri",
		"Veikko",
		"Ville",
		"Aino",
		"Anja",
		"Anna",
		"Anne",
		"Anneli",
		"Annikki",
		"Eeva",
		"Elina",
		"Elisabet",
		"Emilia",
		"Eveliina",
		"Hanna",
		"Hannele",
		"Helena",
		"Inkeri",
		"Irmeli",
		"Johanna",
		"Kaarina",
		"Karoliina",
		"Katariina",
		"Kristiina",
		"Kyllikki",
		"Laura",
		"Leena",
		"Liisa",
		"Maarit",
		"Maija",
		"Mari",
		"Maria",
		"Marika",
		"Marja",
		"Marjatta",
		"Minna",
		"Orvokki",
		"Pauliina",
		"Pirjo",
		"Pirkko",
		"Päivi",
		"Riitta",
		"Ritva",
		"Sari",
		"Satu",
		"Sinikka",
		"Sofia",
		"Susanna",
		"Tarja",
		"Tellervo",
		"Tiina",
		"Tuula",
		"Tuulikki"
		];
		return choice(data, this.rnd);
	}

	///
	override string personMaleFirstName() {
		auto data = [
		"Aleksi",
		"Antero",
		"Antti",
		"Ari",
		"Eero",
		"Ensio",
		"Erik",
		"Erkki",
		"Hannu",
		"Heikki",
		"Henrik",
		"Ilmari",
		"Jaakko",
		"Janne",
		"Jari",
		"Johannes",
		"Juha",
		"Juhani",
		"Juho",
		"Jukka",
		"Kalervo",
		"Kalevi",
		"Kari",
		"Kristian",
		"Lauri",
		"Markku",
		"Marko",
		"Markus",
		"Martti",
		"Matias",
		"Matti",
		"Mika",
		"Mikael",
		"Mikko",
		"Olavi",
		"Oskari",
		"Pekka",
		"Pentti",
		"Petri",
		"Petteri",
		"Sakari",
		"Sami",
		"Seppo",
		"Tapani",
		"Tapio",
		"Timo",
		"Tuomas",
		"Valtteri",
		"Veikko",
		"Ville"
		];
		return choice(data, this.rnd);
	}


	override string personName() {
		final switch(uniform(0, 2, this.rnd)) {
			case 0: return "{ value: '" ~ personFirstName() ~ " " ~ personLastName();
			case 1: return "weight: 1 }";
		}
	}

}

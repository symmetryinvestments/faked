module faked.faker_nb_no;

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

class Faker_nb_no : Faker_en {
@safe:
	this(int seed) {
		super(seed);
	}

	override string commerceDepartment() {
		const string[] strs =
		[ q"{Barn}", q"{Bøker}", q"{Dagligvarer}", q"{Datamaskiner}", q"{Elektronikk}", q"{Filmer}", q"{Hage og utemiljø}"
		, q"{Helse}", q"{Hjem}", q"{Klær}", q"{Leker}", q"{Musikk}", q"{Sko}", q"{Skjønnhet}", q"{Spill}"
		, q"{Smykker}", q"{Sport}", q"{Verktøy}" ];

		return choice(strs, this.rnd);
	}

	override string companyNamePattern() {
		switch(uniform(0, 3, this.rnd)) {
			case 0: return personLastName() ~ " " ~ companySuffix();
			case 1: return personLastName() ~ "-" ~ personLastName();
			case 2: return personLastName() ~ ", " ~ personLastName() ~ " og " ~ personLastName();
			default: return "";
		}
	}

	override string companySuffix() {
		const string[] strs =
		[ q"{Gruppen}", q"{AS}", q"{ASA}", q"{BA}", q"{RFH}", q"{og Sønner}" ];

		return choice(strs, this.rnd);
	}

	override string internetDomainSuffix() {
		const string[] strs =
		[ q"{no}", q"{com}", q"{net}", q"{org}" ];

		return choice(strs, this.rnd);
	}

	override string locationBuildingNumber() {
		const string[] strs =
		[ q"{#}", q"{##}" ];

		return numberBuild(choice(strs, this.rnd));
	}

	override string locationCityName() {
		const string[] strs =
		[ q"{Fet}", q"{Gjes}", q"{Høy}", q"{Inn}", q"{Fager}", q"{Lille}", q"{Lo}", q"{Mal}", q"{Nord}", q"{Nær}"
		, q"{Sand}", q"{Sme}", q"{Stav}", q"{Stor}", q"{Tand}", q"{Ut}", q"{Vest}" ];

		return choice(strs, this.rnd);
	}

	override string locationCityPattern() {
		switch(uniform(0, 1, this.rnd)) {
			case 0: return locationCityName() ~ locationCitySuffix();
			default: return "";
		}
	}

	override string locationCitySuffix() {
		const string[] strs =
		[ q"{berg}", q"{borg}", q"{by}", q"{bø}", q"{dal}", q"{eid}", q"{fjell}", q"{fjord}", q"{foss}", q"{grunn}"
		, q"{hamn}", q"{havn}", q"{helle}", q"{mark}", q"{nes}", q"{odden}", q"{sand}", q"{sjøen}", q"{stad}"
		, q"{strand}", q"{strøm}", q"{sund}", q"{vik}", q"{vær}", q"{våg}", q"{ø}", q"{øy}", q"{ås}" ];

		return choice(strs, this.rnd);
	}

	override string locationDefaultCountry() {
		const string[] strs =
		[ q"{Norge}" ];

		return choice(strs, this.rnd);
	}

	override string locationPostcode() {
		const string[] strs =
		[ q"{####}", q"{0###}" ];

		return numberBuild(choice(strs, this.rnd));
	}

	override string locationSecondaryAddress() {
		const string[] strs =
		[ q"{Leil. ###}", q"{Oppgang A}", q"{Oppgang B}" ];

		return numberBuild(choice(strs, this.rnd));
	}

	override string locationState() {
		const string[] strs =
		[ q"{}" ];

		return choice(strs, this.rnd);
	}

	override string locationStreetAddress() {
		const LocationStreetAddressEnum[] enums = [ LocationStreetAddressEnum.normal, LocationStreetAddressEnum.full ];
		return locationStreetAddress(choice(enums, this.rnd));
	}

	override string locationStreetAddress(LocationStreetAddressEnum which) {
		switch(which) {
			case LocationStreetAddressEnum.normal: return locationStreet() ~ " " ~ locationBuildingNumber();
			case LocationStreetAddressEnum.full: return locationStreet() ~ " " ~ locationBuildingNumber() ~ " " ~ locationSecondaryAddress();
			default: return "";
		}
	}

	override string locationStreetName() {
		const string[] strs =
		[ q"{Eike}", q"{Bjørke}", q"{Gran}", q"{Vass}", q"{Furu}", q"{Litj}", q"{Lille}", q"{Høy}", q"{Fosse}"
		, q"{Elve}", q"{Ku}", q"{Konvall}", q"{Soldugg}", q"{Hestemyr}", q"{Granitt}", q"{Hegge}", q"{Rogne}"
		, q"{Fiol}", q"{Sol}", q"{Ting}", q"{Malm}", q"{Klokker}", q"{Preste}", q"{Dam}", q"{Geiterygg}", q"{Bekke}"
		, q"{Berg}", q"{Kirke}", q"{Kors}", q"{Bru}", q"{Blåveis}", q"{Torg}", q"{Sjø}" ];

		return choice(strs, this.rnd);
	}

	override string locationStreetPattern() {
		switch(uniform(0, 4, this.rnd)) {
			case 0: return locationStreetName() ~ locationStreetSuffix();
			case 1: return locationStreetPrefix() ~ " " ~ locationStreetName() ~ locationStreetSuffix();
			case 2: return personFirstName() ~ locationCommonStreetSuffix();
			case 3: return personLastName() ~ locationCommonStreetSuffix();
			default: return "";
		}
	}

	override string locationStreetSuffix() {
		const string[] strs =
		[ q"{alléen}", q"{bakken}", q"{berget}", q"{bråten}", q"{eggen}", q"{engen}", q"{ekra}", q"{faret}"
		, q"{flata}", q"{gata}", q"{gjerdet}", q"{grenda}", q"{gropa}", q"{hagen}", q"{haugen}", q"{havna}"
		, q"{holtet}", q"{høgda}", q"{jordet}", q"{kollen}", q"{kroken}", q"{lia}", q"{lunden}", q"{lyngen}"
		, q"{løkka}", q"{marka}", q"{moen}", q"{myra}", q"{plassen}", q"{ringen}", q"{roa}", q"{røa}", q"{skogen}"
		, q"{skrenten}", q"{spranget}", q"{stien}", q"{stranda}", q"{stubben}", q"{stykket}", q"{svingen}"
		, q"{tjernet}", q"{toppen}", q"{tunet}", q"{vollen}", q"{vika}", q"{åsen}" ];

		return choice(strs, this.rnd);
	}

	string locationCommonStreetSuffix() {
		const string[] strs =
		[ q"{sgate}", q"{svei}", q"{s Gate}", q"{s Vei}", q"{gata}", q"{veien}" ];

		return choice(strs, this.rnd);
	}

	string locationStreetPrefix() {
		const string[] strs =
		[ q"{Øvre}", q"{Nedre}", q"{Søndre}", q"{Gamle}", q"{Østre}", q"{Vestre}" ];

		return choice(strs, this.rnd);
	}

	override string personFemaleFirstName() {
		const string[] strs =
		[ q"{Emma}", q"{Sara}", q"{Thea}", q"{Ida}", q"{Julie}", q"{Nora}", q"{Emilie}", q"{Ingrid}", q"{Hanna}"
		, q"{Maria}", q"{Sofie}", q"{Anna}", q"{Malin}", q"{Amalie}", q"{Vilde}", q"{Frida}", q"{Andrea}"
		, q"{Tuva}", q"{Victoria}", q"{Mia}", q"{Karoline}", q"{Mathilde}", q"{Martine}", q"{Linnea}", q"{Marte}"
		, q"{Hedda}", q"{Marie}", q"{Helene}", q"{Silje}", q"{Leah}", q"{Maja}", q"{Elise}", q"{Oda}", q"{Kristine}"
		, q"{Aurora}", q"{Kaja}", q"{Camilla}", q"{Mari}", q"{Maren}", q"{Mina}", q"{Selma}", q"{Jenny}", q"{Celine}"
		, q"{Eline}", q"{Sunniva}", q"{Natalie}", q"{Tiril}", q"{Synne}", q"{Sandra}", q"{Madeleine}" ];

		return choice(strs, this.rnd);
	}

	override string personFemalePrefix() {
		const string[] strs =
		[ q"{Dr.}", q"{Prof.}" ];

		return choice(strs, this.rnd);
	}

	override string personFirstName() {
		const string[] strs =
		[ q"{Emma}", q"{Sara}", q"{Thea}", q"{Ida}", q"{Julie}", q"{Nora}", q"{Emilie}", q"{Ingrid}", q"{Hanna}"
		, q"{Maria}", q"{Sofie}", q"{Anna}", q"{Malin}", q"{Amalie}", q"{Vilde}", q"{Frida}", q"{Andrea}"
		, q"{Tuva}", q"{Victoria}", q"{Mia}", q"{Karoline}", q"{Mathilde}", q"{Martine}", q"{Linnea}", q"{Marte}"
		, q"{Hedda}", q"{Marie}", q"{Helene}", q"{Silje}", q"{Leah}", q"{Maja}", q"{Elise}", q"{Oda}", q"{Kristine}"
		, q"{Aurora}", q"{Kaja}", q"{Camilla}", q"{Mari}", q"{Maren}", q"{Mina}", q"{Selma}", q"{Jenny}", q"{Celine}"
		, q"{Eline}", q"{Sunniva}", q"{Natalie}", q"{Tiril}", q"{Synne}", q"{Sandra}", q"{Madeleine}", q"{Markus}"
		, q"{Mathias}", q"{Kristian}", q"{Jonas}", q"{Andreas}", q"{Alexander}", q"{Martin}", q"{Sander}"
		, q"{Daniel}", q"{Magnus}", q"{Henrik}", q"{Tobias}", q"{Kristoffer}", q"{Emil}", q"{Adrian}", q"{Sebastian}"
		, q"{Marius}", q"{Elias}", q"{Fredrik}", q"{Thomas}", q"{Sondre}", q"{Benjamin}", q"{Jakob}", q"{Oliver}"
		, q"{Lucas}", q"{Oskar}", q"{Nikolai}", q"{Filip}", q"{Mats}", q"{William}", q"{Erik}", q"{Simen}"
		, q"{Ole}", q"{Eirik}", q"{Isak}", q"{Kasper}", q"{Noah}", q"{Lars}", q"{Joakim}", q"{Johannes}", q"{Håkon}"
		, q"{Sindre}", q"{Jørgen}", q"{Herman}", q"{Anders}", q"{Jonathan}", q"{Even}", q"{Theodor}", q"{Mikkel}"
		, q"{Aksel}" ];

		return choice(strs, this.rnd);
	}

	override string personLastName() {
		const string[] strs =
		[ q"{Johansen}", q"{Hansen}", q"{Andersen}", q"{Kristiansen}", q"{Larsen}", q"{Olsen}", q"{Solberg}"
		, q"{Andresen}", q"{Pedersen}", q"{Nilsen}", q"{Berg}", q"{Halvorsen}", q"{Karlsen}", q"{Svendsen}"
		, q"{Jensen}", q"{Haugen}", q"{Martinsen}", q"{Eriksen}", q"{Sørensen}", q"{Johnsen}", q"{Myhrer}"
		, q"{Johannessen}", q"{Nielsen}", q"{Hagen}", q"{Pettersen}", q"{Bakke}", q"{Skuterud}", q"{Løken}"
		, q"{Gundersen}", q"{Strand}", q"{Jørgensen}", q"{Kvarme}", q"{Røed}", q"{Sæther}", q"{Stensrud}"
		, q"{Moe}", q"{Kristoffersen}", q"{Jakobsen}", q"{Holm}", q"{Aas}", q"{Lie}", q"{Moen}", q"{Andreassen}"
		, q"{Vedvik}", q"{Nguyen}", q"{Jacobsen}", q"{Torgersen}", q"{Ruud}", q"{Krogh}", q"{Christiansen}"
		, q"{Bjerke}", q"{Aalerud}", q"{Borge}", q"{Sørlie}", q"{Berge}", q"{Østli}", q"{Ødegård}"
		, q"{Torp}", q"{Henriksen}", q"{Haukelidsæter}", q"{Fjeld}", q"{Danielsen}", q"{Aasen}", q"{Fredriksen}"
		, q"{Dahl}", q"{Berntsen}", q"{Arnesen}", q"{Wold}", q"{Thoresen}", q"{Solheim}", q"{Skoglund}"
		, q"{Bakken}", q"{Amundsen}", q"{Solli}", q"{Smogeli}", q"{Kristensen}", q"{Glosli}", q"{Fossum}"
		, q"{Evensen}", q"{Eide}", q"{Carlsen}", q"{Østby}", q"{Vegge}", q"{Tangen}", q"{Smedsrud}", q"{Olstad}"
		, q"{Lunde}", q"{Kleven}", q"{Huseby}", q"{Bjørnstad}", q"{Ryan}", q"{Rasmussen}", q"{Nygård}"
		, q"{Nordskaug}", q"{Nordby}", q"{Mathisen}", q"{Hopland}", q"{Gran}", q"{Finstad}", q"{Edvardsen}" ];

		return choice(strs, this.rnd);
	}

	override string personLastNamePattern() {
		const int rndInt = uniform(0, 10, this.rnd);

		if(rndInt >= 0 && rndInt < 8) {
			return personLastName();
		}
		if(rndInt >= 8 && rndInt < 10) {
			return personLastName() ~ " " ~ personLastName();
		}

		return "";
	}

	override string personMaleFirstName() {
		const string[] strs =
		[ q"{Markus}", q"{Mathias}", q"{Kristian}", q"{Jonas}", q"{Andreas}", q"{Alexander}", q"{Martin}"
		, q"{Sander}", q"{Daniel}", q"{Magnus}", q"{Henrik}", q"{Tobias}", q"{Kristoffer}", q"{Emil}", q"{Adrian}"
		, q"{Sebastian}", q"{Marius}", q"{Elias}", q"{Fredrik}", q"{Thomas}", q"{Sondre}", q"{Benjamin}"
		, q"{Jakob}", q"{Oliver}", q"{Lucas}", q"{Oskar}", q"{Nikolai}", q"{Filip}", q"{Mats}", q"{William}"
		, q"{Erik}", q"{Simen}", q"{Ole}", q"{Eirik}", q"{Isak}", q"{Kasper}", q"{Noah}", q"{Lars}", q"{Joakim}"
		, q"{Johannes}", q"{Håkon}", q"{Sindre}", q"{Jørgen}", q"{Herman}", q"{Anders}", q"{Jonathan}"
		, q"{Even}", q"{Theodor}", q"{Mikkel}", q"{Aksel}" ];

		return choice(strs, this.rnd);
	}

	override string personMalePrefix() {
		const string[] strs =
		[ q"{Dr.}", q"{Prof.}" ];

		return choice(strs, this.rnd);
	}

	override string personName() {
		const int rndInt = uniform(0, 11, this.rnd);

		if(rndInt >= 0 && rndInt < 1) {
			return personPrefix() ~ " " ~ personFirstName() ~ " " ~ personLastName();
		}
		if(rndInt >= 1 && rndInt < 2) {
			return personFirstName() ~ " " ~ personLastName() ~ " " ~ personSuffix();
		}
		if(rndInt >= 2 && rndInt < 11) {
			return personFirstName() ~ " " ~ personLastName();
		}

		return "";
	}

	override string personPrefix() {
		const string[] strs =
		[ q"{Dr.}", q"{Prof.}" ];

		return choice(strs, this.rnd);
	}

	override string personSuffix() {
		const string[] strs =
		[ q"{Jr.}", q"{Sr.}", q"{I}", q"{II}", q"{III}", q"{IV}", q"{V}" ];

		return choice(strs, this.rnd);
	}

	override string phoneNumberFormats() {
		const string[] strs =
		[ q"{########}", q"{## ## ## ##}", q"{### ## ###}", q"{+47 ## ## ## ##}" ];

		return numberBuild(choice(strs, this.rnd));
	}

	override ChemicalElement scienceChemicalElement() {
		switch(uniform(0, 118, this.rnd)) {
			case 0: return ChemicalElement(q"{H}", q"{Hydrogen}", 1);
			case 1: return ChemicalElement(q"{He}", q"{Helium}", 2);
			case 2: return ChemicalElement(q"{Li}", q"{Litium}", 3);
			case 3: return ChemicalElement(q"{Be}", q"{Beryllium}", 4);
			case 4: return ChemicalElement(q"{B}", q"{Bor}", 5);
			case 5: return ChemicalElement(q"{C}", q"{Karbon}", 6);
			case 6: return ChemicalElement(q"{N}", q"{Nitrogen}", 7);
			case 7: return ChemicalElement(q"{O}", q"{Oksygen}", 8);
			case 8: return ChemicalElement(q"{F}", q"{Fluor}", 9);
			case 9: return ChemicalElement(q"{Ne}", q"{Neon}", 10);
			case 10: return ChemicalElement(q"{Na}", q"{Natrium}", 11);
			case 11: return ChemicalElement(q"{Mg}", q"{Magnesium}", 12);
			case 12: return ChemicalElement(q"{Al}", q"{Aluminium}", 13);
			case 13: return ChemicalElement(q"{Si}", q"{Silisium}", 14);
			case 14: return ChemicalElement(q"{P}", q"{Fosfor}", 15);
			case 15: return ChemicalElement(q"{S}", q"{Svovel}", 16);
			case 16: return ChemicalElement(q"{Cl}", q"{Klor}", 17);
			case 17: return ChemicalElement(q"{Ar}", q"{Argon}", 18);
			case 18: return ChemicalElement(q"{K}", q"{Kalium}", 19);
			case 19: return ChemicalElement(q"{Ca}", q"{Kalsium}", 20);
			case 20: return ChemicalElement(q"{Sc}", q"{Scandium}", 21);
			case 21: return ChemicalElement(q"{Ti}", q"{Titan}", 22);
			case 22: return ChemicalElement(q"{V}", q"{Vanadium}", 23);
			case 23: return ChemicalElement(q"{Cr}", q"{Krom}", 24);
			case 24: return ChemicalElement(q"{Mn}", q"{Mangan}", 25);
			case 25: return ChemicalElement(q"{Fe}", q"{Jern}", 26);
			case 26: return ChemicalElement(q"{Co}", q"{Kobolt}", 27);
			case 27: return ChemicalElement(q"{Ni}", q"{Nikkel}", 28);
			case 28: return ChemicalElement(q"{Cu}", q"{Kobber}", 29);
			case 29: return ChemicalElement(q"{Zn}", q"{Sink}", 30);
			case 30: return ChemicalElement(q"{Ga}", q"{Gallium}", 31);
			case 31: return ChemicalElement(q"{Ge}", q"{Germanium}", 32);
			case 32: return ChemicalElement(q"{As}", q"{Arsen}", 33);
			case 33: return ChemicalElement(q"{Se}", q"{Selen}", 34);
			case 34: return ChemicalElement(q"{Br}", q"{Brom}", 35);
			case 35: return ChemicalElement(q"{Kr}", q"{Krypton}", 36);
			case 36: return ChemicalElement(q"{Rb}", q"{Rubidium}", 37);
			case 37: return ChemicalElement(q"{Sr}", q"{Strontium}", 38);
			case 38: return ChemicalElement(q"{Y}", q"{Yttrium}", 39);
			case 39: return ChemicalElement(q"{Zr}", q"{Zirkonium}", 40);
			case 40: return ChemicalElement(q"{Nb}", q"{Niob}", 41);
			case 41: return ChemicalElement(q"{Mo}", q"{Molybden}", 42);
			case 42: return ChemicalElement(q"{Tc}", q"{Technetium}", 43);
			case 43: return ChemicalElement(q"{Ru}", q"{Ruthenium}", 44);
			case 44: return ChemicalElement(q"{Rh}", q"{Rhodium}", 45);
			case 45: return ChemicalElement(q"{Pd}", q"{Palladium}", 46);
			case 46: return ChemicalElement(q"{Ag}", q"{Sølv}", 47);
			case 47: return ChemicalElement(q"{Cd}", q"{Kadmium}", 48);
			case 48: return ChemicalElement(q"{In}", q"{Indium}", 49);
			case 49: return ChemicalElement(q"{Sn}", q"{Tinn}", 50);
			case 50: return ChemicalElement(q"{Sb}", q"{Antimon}", 51);
			case 51: return ChemicalElement(q"{Te}", q"{Tellur}", 52);
			case 52: return ChemicalElement(q"{I}", q"{Jod}", 53);
			case 53: return ChemicalElement(q"{Xe}", q"{Xenon}", 54);
			case 54: return ChemicalElement(q"{Cs}", q"{Cesium}", 55);
			case 55: return ChemicalElement(q"{Ba}", q"{Barium}", 56);
			case 56: return ChemicalElement(q"{La}", q"{Lantan}", 57);
			case 57: return ChemicalElement(q"{Ce}", q"{Cerium}", 58);
			case 58: return ChemicalElement(q"{Pr}", q"{Praseodym}", 59);
			case 59: return ChemicalElement(q"{Nd}", q"{Neodym}", 60);
			case 60: return ChemicalElement(q"{Pm}", q"{Promethium}", 61);
			case 61: return ChemicalElement(q"{Sm}", q"{Samarium}", 62);
			case 62: return ChemicalElement(q"{Eu}", q"{Europium}", 63);
			case 63: return ChemicalElement(q"{Gd}", q"{Gadolinium}", 64);
			case 64: return ChemicalElement(q"{Tb}", q"{Terbium}", 65);
			case 65: return ChemicalElement(q"{Dy}", q"{Dysprosium}", 66);
			case 66: return ChemicalElement(q"{Ho}", q"{Holmium}", 67);
			case 67: return ChemicalElement(q"{Er}", q"{Erbium}", 68);
			case 68: return ChemicalElement(q"{Tm}", q"{Thulium}", 69);
			case 69: return ChemicalElement(q"{Yb}", q"{Ytterbium}", 70);
			case 70: return ChemicalElement(q"{Lu}", q"{Lutetium}", 71);
			case 71: return ChemicalElement(q"{Hf}", q"{Hafnium}", 72);
			case 72: return ChemicalElement(q"{Ta}", q"{Tantal}", 73);
			case 73: return ChemicalElement(q"{W}", q"{Wolfram}", 74);
			case 74: return ChemicalElement(q"{Re}", q"{Rhenium}", 75);
			case 75: return ChemicalElement(q"{Os}", q"{Osmium}", 76);
			case 76: return ChemicalElement(q"{Ir}", q"{Iridium}", 77);
			case 77: return ChemicalElement(q"{Pt}", q"{Platina}", 78);
			case 78: return ChemicalElement(q"{Au}", q"{Gull}", 79);
			case 79: return ChemicalElement(q"{Hg}", q"{Kvikksølv}", 80);
			case 80: return ChemicalElement(q"{Tl}", q"{Thallium}", 81);
			case 81: return ChemicalElement(q"{Pb}", q"{Bly}", 82);
			case 82: return ChemicalElement(q"{Bi}", q"{Vismut}", 83);
			case 83: return ChemicalElement(q"{Po}", q"{Polonium}", 84);
			case 84: return ChemicalElement(q"{At}", q"{Astat}", 85);
			case 85: return ChemicalElement(q"{Rn}", q"{Radon}", 86);
			case 86: return ChemicalElement(q"{Fr}", q"{Francium}", 87);
			case 87: return ChemicalElement(q"{Ra}", q"{Radium}", 88);
			case 88: return ChemicalElement(q"{Ac}", q"{Actinium}", 89);
			case 89: return ChemicalElement(q"{Th}", q"{Thorium}", 90);
			case 90: return ChemicalElement(q"{Pa}", q"{Protactinium}", 91);
			case 91: return ChemicalElement(q"{U}", q"{Uran}", 92);
			case 92: return ChemicalElement(q"{Np}", q"{Neptunium}", 93);
			case 93: return ChemicalElement(q"{Pu}", q"{Plutonium}", 94);
			case 94: return ChemicalElement(q"{Am}", q"{Americium}", 95);
			case 95: return ChemicalElement(q"{Cm}", q"{Curium}", 96);
			case 96: return ChemicalElement(q"{Bk}", q"{Berkelium}", 97);
			case 97: return ChemicalElement(q"{Cf}", q"{Californium}", 98);
			case 98: return ChemicalElement(q"{Es}", q"{Einsteinium}", 99);
			case 99: return ChemicalElement(q"{Fm}", q"{Fermium}", 100);
			case 100: return ChemicalElement(q"{Md}", q"{Mendelevium}", 101);
			case 101: return ChemicalElement(q"{No}", q"{Nobelium}", 102);
			case 102: return ChemicalElement(q"{Lr}", q"{Lawrencium}", 103);
			case 103: return ChemicalElement(q"{Rf}", q"{Rutherfordium}", 104);
			case 104: return ChemicalElement(q"{Db}", q"{Dubnium}", 105);
			case 105: return ChemicalElement(q"{Sg}", q"{Seaborgium}", 106);
			case 106: return ChemicalElement(q"{Bh}", q"{Bohrium}", 107);
			case 107: return ChemicalElement(q"{Hs}", q"{Hassium}", 108);
			case 108: return ChemicalElement(q"{Mt}", q"{Meitnerium}", 109);
			case 109: return ChemicalElement(q"{Ds}", q"{Darmstadtium}", 110);
			case 110: return ChemicalElement(q"{Rg}", q"{Røntgenium}", 111);
			case 111: return ChemicalElement(q"{Cn}", q"{Copernicium}", 112);
			case 112: return ChemicalElement(q"{Nh}", q"{Nihonium}", 113);
			case 113: return ChemicalElement(q"{Fl}", q"{Flerovium}", 114);
			case 114: return ChemicalElement(q"{Mc}", q"{Moscovium}", 115);
			case 115: return ChemicalElement(q"{Lv}", q"{Livermorium}", 116);
			case 116: return ChemicalElement(q"{Ts}", q"{Tenness}", 117);
			case 117: return ChemicalElement(q"{Og}", q"{Oganesson}", 118);
			default: return ChemicalElement("","");
		}
	}

	override ChemicalUnit scienceUnit() {
		switch(uniform(0, 22, this.rnd)) {
			case 0: return ChemicalUnit(q"{meter}", q"{m}");
			case 1: return ChemicalUnit(q"{sekund}", q"{s}");
			case 2: return ChemicalUnit(q"{mole}", q"{mol}");
			case 3: return ChemicalUnit(q"{ampere}", q"{A}");
			case 4: return ChemicalUnit(q"{kelvin}", q"{K}");
			case 5: return ChemicalUnit(q"{candela}", q"{cd}");
			case 6: return ChemicalUnit(q"{kilogram}", q"{kg}");
			case 7: return ChemicalUnit(q"{radian}", q"{rad}");
			case 8: return ChemicalUnit(q"{hertz}", q"{Hz}");
			case 9: return ChemicalUnit(q"{newton}", q"{N}");
			case 10: return ChemicalUnit(q"{pascal}", q"{Pa}");
			case 11: return ChemicalUnit(q"{joule}", q"{J}");
			case 12: return ChemicalUnit(q"{watt}", q"{W}");
			case 13: return ChemicalUnit(q"{coulomb}", q"{C}");
			case 14: return ChemicalUnit(q"{volt}", q"{V}");
			case 15: return ChemicalUnit(q"{ohm}", q"{Ω}");
			case 16: return ChemicalUnit(q"{tesla}", q"{T}");
			case 17: return ChemicalUnit(q"{grad celsius}", q"{°C}");
			case 18: return ChemicalUnit(q"{lumen}", q"{lm}");
			case 19: return ChemicalUnit(q"{becquerel}", q"{Bq}");
			case 20: return ChemicalUnit(q"{gray}", q"{Gy}");
			case 21: return ChemicalUnit(q"{sievert}", q"{Sv}");
			default: return ChemicalUnit("","");
		}
	}

	override string wordAdjective() {
		const string[] strs =
		[ q"{aktuell}", q"{alvorlig}", q"{ansvarlig}", q"{berømt}", q"{betydelig}", q"{bevisst}", q"{bred}"
		, q"{dum}", q"{dyp}", q"{ekkel}", q"{eksisterende}", q"{ekte}", q"{enkel}", q"{ensom}", q"{falsk}"
		, q"{fast}", q"{felles}", q"{fersk}", q"{fjern}", q"{flau}", q"{følsom}", q"{forsiktig}", q"{fremmed}"
		, q"{fryktelig}", q"{glatt}", q"{gravid}", q"{grunnleggende}", q"{heldig}", q"{hemmelig}", q"{hjelpsom}"
		, q"{hyppig}", q"{imponerende}", q"{kjedelig}", q"{kul}", q"{langsom}", q"{lat}", q"{lav}", q"{lignende}"
		, q"{løs}", q"{lovlig}", q"{lykkelig}", q"{lys}", q"{menneskelig}", q"{merkelig}", q"{midlertidig}"
		, q"{mistenkelig}", q"{modig}", q"{mørk}", q"{morsom}", q"{motsatt}", q"{mulig}", q"{naturlig}"
		, q"{nåværende}", q"{nødvendig}", q"{nøyaktig}", q"{nysgjerrig}", q"{nyttig}", q"{offentlig}"
		, q"{opprinnelig}", q"{ordentlig}", q"{plutselig}", q"{rå}", q"{rask}", q"{regelmessig}", q"{ren}"
		, q"{rettferdig}", q"{rimelig}", q"{rund}", q"{ryddig}", q"{sannsynlig}", q"{selvsikker}", q"{sint}"
		, q"{skarp}", q"{skikkelig}", q"{skyldig}", q"{smal}", q"{søt}", q"{spennende}", q"{stille}", q"{stolt}"
		, q"{stram}", q"{streng}", q"{stygg}", q"{sulten}", q"{sunn}", q"{synlig}", q"{tilgjengelig}", q"{tilstrekkelig}"
		, q"{tung}", q"{tynn}", q"{uavhengig}", q"{ujevn}", q"{ulovlig}", q"{ulykkelig}", q"{umiddelbar}"
		, q"{urettferdig}", q"{vellykket}", q"{vennlig}", q"{verdifull}", q"{vill}", q"{villig}", q"{voksen}"
		, q"{ærlig}", q"{åpen}", q"{åpenbar}" ];

		return choice(strs, this.rnd);
	}

	override string wordConjunction() {
		const string[] strs =
		[ q"{eller}", q"{for}", q"{men}", q"{og}", q"{så}" ];

		return choice(strs, this.rnd);
	}

	override string wordInterjection() {
		const string[] strs =
		[ q"{aha}", q"{au}", q"{bravo}", q"{bø}", q"{fy}", q"{fysj}", q"{huff}", q"{hurra}", q"{hæ}", q"{jippi}"
		, q"{nam}", q"{oi}", q"{ops}", q"{pytt}", q"{pøh}", q"{å}", q"{æsj}" ];

		return choice(strs, this.rnd);
	}

}

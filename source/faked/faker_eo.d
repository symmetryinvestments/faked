module faked.faker_eo;

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

class Faker_eo : Faker_en {
@safe:
	this(int seed) {
		super(seed);
	}

	override string animalBear() {
		const string[] strs =
		[ q"{amerika nigra urso}", q"{azia nigra urso}", q"{blanka urso}", q"{bruna urso}", q"{granda pando}"
		, q"{longlipa urso}", q"{malaja urso}", q"{okulvitra urso}" ];

		return choice(strs, this.rnd);
	}

	override string animalCrocodilia() {
		const string[] strs =
		[ q"{amerika krokodilo}", q"{aŭstralia krokodilo}", q"{ĉina aligatoro}", q"{filipina krokodilo}"
		, q"{gavialo}", q"{kuba krokodilo}", q"{mara krokodilo}", q"{marĉa krokodilo}", q"{meksika krokodilo}"
		, q"{misisipa aligatoro}", q"{nana krokodilo}", q"{nigra kajmano}", q"{nila krokodilo}"
		, q"{okcidentafrika krokodilo}", q"{orinoka krokodilo}", q"{siama krokodilo}" ];

		return choice(strs, this.rnd);
	}

	override string animalLion() {
		const string[] strs =
		[ q"{azia leono}", q"{berbera leono}", q"{kaba leono}", q"{masaja leono}", q"{okcidentafrika leono}"
		, q"{senegala leono}", q"{transvala leono}" ];

		return choice(strs, this.rnd);
	}

	override string commerceProductNameAdjective() {
		const string[] strs =
		[ q"{bela}", q"{bona}", q"{eleganta}", q"{elektra}", q"{ergonomia}", q"{inteligenta}", q"{luksa}"
		, q"{malaĉa}", q"{malgranda}", q"{manfarita}", q"{mirinda}", q"{moderna}", q"{mojosa}", q"{nekredebla}"
		, q"{oportuna}", q"{ordinara}", q"{populara}", q"{praktika}", q"{rafinita}", q"{recikligita}"
		, q"{rustika}", q"{senmarka}", q"{tajlorita}", q"{taŭga}", q"{unika}" ];

		return choice(strs, this.rnd);
	}

	override string commerceProductNameMaterial() {
		const string[] strs =
		[ q"{betona}", q"{bronza}", q"{ceramika}", q"{freŝa}", q"{frostigita}", q"{granita}", q"{kartona}"
		, q"{kaŭĉuka}", q"{kotona}", q"{ligna}", q"{metala}", q"{plasta}", q"{ŝtala}", q"{trikita}"
		, q"{vitra}" ];

		return choice(strs, this.rnd);
	}

	override string commerceProductNameProduct() {
		const string[] strs =
		[ q"{aŭto}", q"{biciklo}", q"{ĉapelo}", q"{ĉemizo}", q"{ekrano}", q"{flago}", q"{ganto}", q"{klavaro}"
		, q"{komputilo}", q"{mantuko}", q"{muso}", q"{nomŝildo}", q"{pantalono}", q"{pilko}", q"{sako}"
		, q"{sapo}", q"{seĝo}", q"{ŝuo}", q"{tablo}", q"{valizo}" ];

		return choice(strs, this.rnd);
	}

	override string databaseColumn() {
		const string[] strs =
		[ q"{identigilo}", q"{titolo}", q"{nomo}", q"{telefonnumero}", q"{grupo}", q"{kategorio}", q"{pasvorto}"
		, q"{komento}", q"{profilbildo}", q"{stato}" ];

		return choice(strs, this.rnd);
	}

	override string dateMonthWide() {
		const string[] strs =
		[ q"{januaro}", q"{februaro}", q"{marto}", q"{aprilo}", q"{majo}", q"{junio}", q"{julio}", q"{aŭgusto}"
		, q"{septembro}", q"{oktobro}", q"{novembro}", q"{decembro}" ];

		return choice(strs, this.rnd);
	}

	override string dateMonthAbbr() {
		const string[] strs =
		[ q"{jan}", q"{feb}", q"{mar}", q"{apr}", q"{maj}", q"{jun}", q"{jul}", q"{aŭg}", q"{sep}", q"{okt}", q"{nov}"
		, q"{dec}" ];

		return choice(strs, this.rnd);
	}

	override string dateWeekdayWide() {
		const string[] strs =
		[ q"{dimanĉo}", q"{lundo}", q"{mardo}", q"{merkredo}", q"{ĵaŭdo}", q"{vendredo}", q"{sabato}" ];

		return choice(strs, this.rnd);
	}

	override string dateWeekdayAbbr() {
		const string[] strs =
		[ q"{di}", q"{lu}", q"{ma}", q"{me}", q"{ĵa}", q"{ve}", q"{sa}" ];

		return choice(strs, this.rnd);
	}

	override string hackerAdjective() {
		const string[] strs =
		[ q"{altkvalita}", q"{aŭtomata}", q"{bludenta}", q"{cifereca}", q"{ĉefa}", q"{defaŭlta}", q"{enreta}"
		, q"{helpa}", q"{hibrida}", q"{interna}", q"{malfermitkoda}", q"{nesinkrona}", q"{neŭrona}"
		, q"{nuba}", q"{optika}", q"{plenekrana}", q"{plurbajta}", q"{plurplatforma}", q"{portebla}"
		, q"{realtempa}", q"{redunda}", q"{sendrata}", q"{solidstata}", q"{universala}", q"{virtuala}" ];

		return choice(strs, this.rnd);
	}

	override string hackerIngverb() {
		const string[] strs =
		[ q"{analizado}", q"{arĥivado}", q"{bitigado}", q"{densigado}", q"{enigado}", q"{generado}", q"{indeksado}"
		, q"{interŝanĝado}", q"{kalkulado}", q"{kodrompado}", q"{kodumado}", q"{kompilado}", q"{konektado}"
		, q"{kopiado}", q"{muntado}", q"{nuligado}", q"{preterpasado}", q"{programado}", q"{restartigado}"
		, q"{savkopiado}", q"{sinkronigado}", q"{sintezado}", q"{transpasado}", q"{transsendado}"
		, q"{validigado}" ];

		return choice(strs, this.rnd);
	}

	override string hackerNoun() {
		const string[] strs =
		[ q"{alarmo}", q"{aplikaĵo}", q"{bendlarĝo}", q"{buso}", q"{cirkvito}", q"{datumbazo}", q"{datumcentro}"
		, q"{disko}", q"{dosiero}", q"{ekrano}", q"{fajroŝirmilo}", q"{fluo}", q"{interfaco}", q"{karto}"
		, q"{kondensilo}", q"{konektilo}", q"{konektingo}", q"{konekto}", q"{matrico}", q"{operaciumo}"
		, q"{panelo}", q"{pelilo}", q"{programo}", q"{protokolo}", q"{rastrumero}", q"{reto}", q"{sentilo}"
		, q"{servilo}", q"{sistemo}", q"{transsendilo}" ];

		return choice(strs, this.rnd);
	}

	override string hackerPhrase() {
		switch(uniform(0, 9, this.rnd)) {
			case 0: return "Se ni povus " ~ hackerVerb() ~ " la " ~ hackerNoun() ~ "n, ni povus aliri la " ~ hackerAbbreviation() ~ "-" ~ hackerNoun() ~ "n per la " ~ hackerAdjective() ~ " " ~ hackerAbbreviation() ~ "-" ~ hackerNoun() ~ "!";
			case 1: return "Ni devas " ~ hackerVerb() ~ " la " ~ hackerAdjective() ~ "n " ~ hackerAbbreviation() ~ "-" ~ hackerNoun() ~ "n!";
			case 2: return "Provu " ~ hackerVerb() ~ " la " ~ hackerAbbreviation() ~ "-" ~ hackerNoun() ~ "n, eble ni sukcesos " ~ hackerVerb() ~ " la " ~ hackerAdjective() ~ "n " ~ hackerNoun() ~ "n!";
			case 3: return "Vi ne povas " ~ hackerVerb() ~ " la " ~ hackerNoun() ~ "n sen " ~ hackerIngverb() ~ " de la " ~ hackerAdjective() ~ " " ~ hackerAbbreviation() ~ "-" ~ hackerNoun() ~ "!";
			case 4: return "Uzu la " ~ hackerAdjective() ~ "n " ~ hackerAbbreviation() ~ "-" ~ hackerNoun() ~ "n, poste vi povos " ~ hackerVerb() ~ " la " ~ hackerAdjective() ~ "n " ~ hackerNoun() ~ "n!";
			case 5: return "La " ~ hackerAbbreviation() ~ "-" ~ hackerNoun() ~ " ne funkcias, provu " ~ hackerVerb() ~ " la " ~ hackerAdjective() ~ "n " ~ hackerNoun() ~ "n, por ke ni povu " ~ hackerVerb() ~ " la " ~ hackerAbbreviation() ~ "-" ~ hackerNoun() ~ "n!";
			case 6: return "Ne funkcios " ~ hackerIngverb() ~ " de la " ~ hackerNoun() ~ ", ni devas " ~ hackerVerb() ~ " la " ~ hackerAdjective() ~ "n " ~ hackerAbbreviation() ~ "-" ~ hackerNoun() ~ "n!";
			case 7: return "Mi provos " ~ hackerVerb() ~ " la " ~ hackerAdjective() ~ "n " ~ hackerAbbreviation() ~ "-" ~ hackerNoun() ~ "n, tio devus " ~ hackerVerb() ~ " la " ~ hackerAbbreviation() ~ "-" ~ hackerNoun() ~ "n!";
			case 8: return "Ne gravas, se ni ne povus " ~ hackerVerb() ~ " la " ~ hackerNoun() ~ "n, ni devas nur " ~ hackerVerb() ~ " la " ~ hackerAdjective() ~ "n " ~ hackerAbbreviation() ~ "-" ~ hackerNoun() ~ "!";
			default: return "";
		}
	}

	override string hackerVerb() {
		const string[] strs =
		[ q"{analizi}", q"{arĥivi}", q"{bitigi}", q"{densigi}", q"{enigi}", q"{generi}", q"{indeksi}", q"{interŝanĝi}"
		, q"{kalkuli}", q"{kodrompi}", q"{kodumi}", q"{kompili}", q"{konekti}", q"{kopii}", q"{munti}"
		, q"{nuligi}", q"{preterpasi}", q"{programi}", q"{restartigi}", q"{savkopii}", q"{sinkronigi}"
		, q"{sintezi}", q"{transpasi}", q"{transsendi}", q"{validigi}" ];

		return choice(strs, this.rnd);
	}

	override string locationCityPattern() {
		switch(uniform(0, 2, this.rnd)) {
			case 0: return locationCityPrefix() ~ " " ~ personFirstName() ~ locationCitySuffix();
			case 1: return personFirstName() ~ locationCitySuffix();
			default: return "";
		}
	}

	override string locationCityPrefix() {
		const string[] strs =
		[ q"{Norda}", q"{Orienta}", q"{Suda}", q"{Okcidenta}", q"{Bona}", q"{Nova}", q"{Malnova}" ];

		return choice(strs, this.rnd);
	}

	override string locationCitySuffix() {
		const string[] strs =
		[ q"{burgo}", q"{damo}", q"{fildo}", q"{forto}", q"{fuorto}", q"{grado}", q"{haveno}", q"{porto}", q"{stado}"
		, q"{ŝiro}", q"{urbo}", q"{valo}", q"{viko}", q"{vilao}", q"{vilaĝo}", q"{vilo}" ];

		return choice(strs, this.rnd);
	}

	override string locationCountry() {
		const string[] strs =
		[ q"{Afganio}", q"{Alando}", q"{Albanio}", q"{Alĝerio}", q"{Andoro}", q"{Angolo}", q"{Angvilo}"
		, q"{Antarkto}", q"{Antigvo kaj Barbudo}", q"{Argentino}", q"{Armenio}", q"{Arubo}", q"{Aŭstralio}"
		, q"{Aŭstrio}", q"{Azerbajĝano}", q"{Bahamoj}", q"{Bangladeŝo}", q"{Barato}", q"{Barbado}"
		, q"{Barejno}", q"{Belgio}", q"{Belizo}", q"{Belorusio}", q"{Benino}", q"{Bermudo}", q"{Bocvano}"
		, q"{Bolivio}", q"{Bosnio kaj Hercegovino}", q"{Brazilo}", q"{Brita Hindoceana Teritorio}"
		, q"{Britaj Virgulinsuloj}", q"{Brunejo}", q"{Bulgario}", q"{Burkino}", q"{Burundo}", q"{Butano}"
		, q"{Buvet-Insulo}", q"{Ĉado}", q"{Ĉeĥio}", q"{Centr-Afrika Respubliko}", q"{Ĉilio}"
		, q"{Ĉinio}", q"{Danio}", q"{Dominika Respubliko}", q"{Dominiko}", q"{Ebur-Bordo}", q"{Egiptio}"
		, q"{Ekvadoro}", q"{Ekvatora Gvineo}", q"{Eritreo}", q"{Estonio}", q"{Etiopio}", q"{Falklandaj Insuloj}"
		, q"{Ferooj}", q"{Fiĝioj}", q"{Filipinoj}", q"{Finnlando}", q"{Franca Gujano}", q"{Franca Polinezio}"
		, q"{Francaj Sudaj kaj Antarktaj Teritorioj}", q"{Francio}", q"{Gabono}", q"{Gambio}"
		, q"{Ganao}", q"{Germanio}", q"{Ĝibraltaro}", q"{Ĝibutio}", q"{Grekio}", q"{Grenado}", q"{Gronlando}"
		, q"{Gujano}", q"{Gvadelupo}", q"{Gvamo}", q"{Gvatemalo}", q"{Gvernsejo}", q"{Gvineo}", q"{Gvineo-Bisaŭo}"
		, q"{Haitio}", q"{Herda kaj Makdonaldaj Insuloj}", q"{Hispanio}", q"{Honduro}", q"{Honkongo}"
		, q"{Hungario}", q"{Indonezio}", q"{Irako}", q"{Irano}", q"{Irlando}", q"{Islando}", q"{Israelo}"
		, q"{Italio}", q"{Jamajko}", q"{Japanio}", q"{Jemeno}", q"{Ĵersejo}", q"{Jordanio}", q"{Kaboverdo}"
		, q"{Kajmaninsuloj}", q"{Kamboĝo}", q"{Kameruno}", q"{Kanado}", q"{Kariba Nederlando}", q"{Kartvelio}"
		, q"{Kataro}", q"{Kazaĥio}", q"{Kenjo}", q"{Kipro}", q"{Kirgizio}", q"{Kiribato}", q"{Kokosinsuloj}"
		, q"{Kolombio}", q"{Komoroj}", q"{Kongo Brazavila}", q"{Kongo Kinŝasa}", q"{Kostariko}"
		, q"{Kristnaskinsulo}", q"{Kroatio}", q"{Kubo}", q"{Kukinsuloj}", q"{Kuracao}", q"{Kuvajto}"
		, q"{Laoso}", q"{Latvio}", q"{Lesoto}", q"{Libano}", q"{Liberio}", q"{Libio}", q"{Liĥtenŝtejno}"
		, q"{Litovio}", q"{Luksemburgo}", q"{Madagaskaro}", q"{Majoto}", q"{Makao}", q"{Malajzio}", q"{Malavio}"
		, q"{Maldivoj}", q"{Malio}", q"{Malto}", q"{Manksinsulo}", q"{Maroko}", q"{Marŝalaj Insuloj}"
		, q"{Martiniko}", q"{Maŭricio}", q"{Maŭritanio}", q"{Meksiko}", q"{Mikronezio}", q"{Mjanmao}"
		, q"{Moldavio}", q"{Monako}", q"{Moncerato}", q"{Mongolio}", q"{Montenegro}", q"{Mozambiko}"
		, q"{Namibio}", q"{Nauro}", q"{Nederlando}", q"{Nepalo}", q"{Niĝerio}", q"{Niĝero}", q"{Nikaragvo}"
		, q"{Niuo}", q"{Nord-Koreio}", q"{Nord-Makedonio}", q"{Nord-Marianoj}", q"{Norfolkinsulo}"
		, q"{Norvegio}", q"{Nov-Kaledonio}", q"{Nov-Zelando}", q"{Okcidenta Saharo}", q"{Omano}"
		, q"{Orienta Timoro}", q"{Pakistano}", q"{Palaŭo}", q"{Palestino}", q"{Panamo}", q"{Papuo-Nov-Gvineo}"
		, q"{Paragvajo}", q"{Peruo}", q"{Pitkarna Insularo}", q"{Pollando}", q"{Portugalio}", q"{Puertoriko}"
		, q"{Reunio}", q"{Ruando}", q"{Rumanio}", q"{Rusio}", q"{Salomonoj}", q"{Salvadoro}", q"{Samoo}"
		, q"{Sankta Bartolomeo}", q"{Sankta Heleno}", q"{Sankta Kristoforo kaj Neviso}", q"{Sankta Lucio}"
		, q"{Sankta Marteno (franca)}", q"{Sankta Marteno (nederlanda)}", q"{Sankta Piero kaj Mikelono}"
		, q"{Sankta Vincento kaj Grenadinoj}", q"{Sanmarino}", q"{Santomeo kaj Principeo}"
		, q"{Sauda Arabio}", q"{Sejŝeloj}", q"{Senegalo}", q"{Serbio}", q"{Sieraleono}", q"{Singapuro}"
		, q"{Sirio}", q"{Slovakio}", q"{Slovenio}", q"{Somalio}", q"{Srilanko}", q"{Sud-Afriko}", q"{Sud-Georgio kaj Sud-Sandviĉinsuloj}"
		, q"{Sud-Koreio}", q"{Sud-Sudano}", q"{Sudano}", q"{Surinamo}", q"{Svalbardo kaj Janmajeno}"
		, q"{Svazilando}", q"{Svedio}", q"{Svislando}", q"{Taĝikio}", q"{Tajlando}", q"{Tajvano}", q"{Tanzanio}"
		, q"{Togolando}", q"{Tokelao}", q"{Tongo}", q"{Trinidado kaj Tobago}", q"{Tunizio}", q"{Turkio}"
		, q"{Turkmenio}", q"{Turkoj kaj Kajkoj}", q"{Tuvalo}", q"{Ugando}", q"{Ukrainio}", q"{Unuiĝinta Reĝlando}"
		, q"{Unuiĝintaj Arabaj Emirlandoj}", q"{Urugvajo}", q"{Usona Samoo}", q"{Usonaj Malgrandaj Insuloj}"
		, q"{Usonaj Virgulinsuloj}", q"{Usono}", q"{Uzbekio}", q"{Valiso kaj Futuno}", q"{Vanuatuo}"
		, q"{Vatikano}", q"{Venezuelo}", q"{Vjetnamio}", q"{Zambio}", q"{Zimbabvo}" ];

		return choice(strs, this.rnd);
	}

	override string locationDefaultCountry() {
		const string[] strs =
		[ q"{Esperantujo}" ];

		return choice(strs, this.rnd);
	}

	override string locationDirection() {
		const string[] strs =
		[ q"{nordo}", q"{oriento}", q"{sudo}", q"{okcidento}", q"{nordoriento}", q"{nordokcidenta}", q"{sudoriento}"
		, q"{sudokcidento}" ];

		return choice(strs, this.rnd);
	}

	override string locationDirectionAbbr() {
		const string[] strs =
		[ q"{N}", q"{E}", q"{S}", q"{U}", q"{NE}", q"{NU}", q"{SE}", q"{SU}" ];

		return choice(strs, this.rnd);
	}

	override string locationSecondaryAddress() {
		const string[] strs =
		[ q"{apartamento ###}", q"{ĉambro ###}" ];

		return numberBuild(choice(strs, this.rnd));
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

	override string locationStreetPattern() {
		switch(uniform(0, 4, this.rnd)) {
			case 0: return locationStreetPrefix() ~ " de " ~ personFirstName();
			case 1: return locationStreetPrefix() ~ " de " ~ personLastName();
			case 2: return personFirstName() ~ locationStreetSuffix();
			case 3: return locationCityPrefix() ~ " " ~ personFirstName() ~ locationStreetSuffix();
			default: return "";
		}
	}

	override string locationStreetSuffix() {
		const string[] strs =
		[ q"{aleo}", q"{arbaro}", q"{avenuo}", q"{bulvardo}", q"{digo}", q"{ĝardeno}", q"{insulo}", q"{kampo}"
		, q"{klifo}", q"{lago}", q"{monto}", q"{parko}", q"{placo}", q"{ponto}", q"{rivero}", q"{strato}"
		, q"{tunelo}", q"{viadukto}", q"{vojo}" ];

		return choice(strs, this.rnd);
	}

	string locationStreetPrefix() {
		const string[] strs =
		[ q"{Aleo}", q"{Arbaro}", q"{Avenuo}", q"{Bulvardo}", q"{Digo}", q"{Ĝardeno}", q"{Insulo}", q"{Kampo}"
		, q"{Klifo}", q"{Lago}", q"{Monto}", q"{Parko}", q"{Placo}", q"{Ponto}", q"{Rivero}", q"{Strato}"
		, q"{Tunelo}", q"{Viadukto}", q"{Vojo}" ];

		return choice(strs, this.rnd);
	}

	override string personBioPart() {
		const string[] strs =
		[ q"{aktivulo}", q"{aktoro}", q"{akuŝisto}", q"{amiko}", q"{artisto}", q"{astronomo}", q"{aŭtoro}"
		, q"{bakisto}", q"{biciklisto}", q"{bloganto}", q"{ĉokoladisto}", q"{dancisto}", q"{dentisto}"
		, q"{desegnisto}", q"{dezajnisto}", q"{dietisto}", q"{diplomato}", q"{direktoro}", q"{edukisto}"
		, q"{ekologo}", q"{eldonisto}", q"{entreprenisto}", q"{esperantisto}", q"{esploristo}", q"{estrarano}"
		, q"{farbisto}", q"{fervojisto}", q"{filmamanto}", q"{filmisto}", q"{filozofo}", q"{fizikisto}"
		, q"{fondinto}", q"{fotisto}", q"{gepatro}", q"{gimnasto}", q"{ginekologo}", q"{gitaristo}"
		, q"{GLAT-ulo}", q"{gvidanto}", q"{ĥemiisto}", q"{ĥirurgo}", q"{idisto}", q"{inĝeniero}"
		, q"{instruisto}", q"{inventinto}", q"{ĵurnalisto}", q"{kantisto}", q"{kasisto}", q"{komercisto}"
		, q"{komitatano}", q"{kreanto}", q"{kuiristo}", q"{kuracisto}", q"{laboristo}", q"{leganto}"
		, q"{lingvisto}", q"{ludanto}", q"{manlaboristo}", q"{maristo}", q"{matematikisto}", q"{modelo}"
		, q"{muzikisto}", q"{nerdo}", q"{novulo}", q"{oficisto}", q"{okulkuracisto}", q"{parolanto}"
		, q"{patrioto}", q"{pensiulo}", q"{pentristo}", q"{pianisto}", q"{poligloto}", q"{politikisto}"
		, q"{poŝtisto}", q"{presisto}", q"{prezidanto}", q"{programisto}", q"{psikologo}", q"{revulo}"
		, q"{sciencisto}", q"{sekretario}", q"{senlaborulo}", q"{staĝanto}", q"{stenografisto}"
		, q"{studento}", q"{tabloludanto}", q"{terapiisto}", q"{terkulturisto}", q"{trejnisto}", q"{urbestro}"
		, q"{vartisto}", q"{vendisto}", q"{verdulo}", q"{verkisto}", q"{veterano}", q"{videobloganto}"
		, q"{videoludanto}", q"{vojaĝanto}", q"{volapukisto}", q"{volontulo}" ];

		return choice(strs, this.rnd);
	}

	override string personBioPattern() {
		switch(uniform(0, 6, this.rnd)) {
			case 0: return personBioPart();
			case 1: return personBioPart() ~ " " ~ internetEmoji();
			case 2: return personBioPart() ~ ", " ~ personBioPart();
			case 3: return personBioPart() ~ ", " ~ personBioPart() ~ " " ~ internetEmoji();
			case 4: return personBioPart() ~ ", " ~ personBioPart() ~ ", " ~ personBioPart();
			case 5: return personBioPart() ~ ", " ~ personBioPart() ~ ", " ~ personBioPart() ~ " " ~ internetEmoji();
			default: return "";
		}
	}

	override string personFemaleFirstName() {
		const string[] strs =
		[ q"{Agripino}", q"{Albertino}", q"{Alcestiso}", q"{Alekso}", q"{Alfonsino}", q"{Alico}", q"{Amalio}"
		, q"{Anastazio}", q"{Angelino}", q"{Anno}", q"{Aŭgustino}", q"{Baŭcido}", q"{Beatrico}", q"{Berenico}"
		, q"{Berto}", q"{Brigito}", q"{Ĉarloto}", q"{Cecilio}", q"{Doroteo}", q"{Eleonoro}", q"{Elizabeto}"
		, q"{Elizo}", q"{Emilio}", q"{Ernestino}", q"{Evelino}", q"{Evo}", q"{Fatimo}", q"{Filipino}", q"{Gertrudo}"
		, q"{Gustavino}", q"{Hedvigo}", q"{Heleno}", q"{Henrieto}", q"{Hermiono}", q"{Ĥimeno}", q"{Ilzo}"
		, q"{Ireno}", q"{Izoldo}", q"{Jakelino}", q"{Jakobino}", q"{Janjo}", q"{Johanino}", q"{Joŝiko}"
		, q"{Jozefino}", q"{Judito}", q"{Julieto}", q"{Juliino}", q"{Karmeno}", q"{Karolino}", q"{Katerino}"
		, q"{Klanjo}", q"{Klaro}", q"{Klaŭdino}", q"{Klementino}", q"{Kleopatro}", q"{Klitemnestro}"
		, q"{Klotildo}", q"{Kreuzo}", q"{Krimhildo}", q"{Kristino}", q"{Ksantipo}", q"{Laŭro}", q"{Leopoldino}"
		, q"{Lilio}", q"{Ludovikino}", q"{Magdaleno}", q"{Malvino}", q"{Manjo}", q"{Margareto}", q"{Marinjo}"
		, q"{Mario}", q"{Miriamo}", q"{Mirto}", q"{Moniko}", q"{Olimpio}", q"{Paŭlino}", q"{Perpetuo}"
		, q"{Raĥelo}", q"{Rebeko}", q"{Rozo}", q"{Sabino}", q"{Sofinjo}", q"{Sofio}", q"{Sonjo}", q"{Stefanino}"
		, q"{Susano}", q"{Terezo}", q"{Ursulo}", q"{Veroniko}", q"{Vilhelmino}" ];

		return choice(strs, this.rnd);
	}

	override string personFemalePrefix() {
		const string[] strs =
		[ q"{s-ino}", q"{d-ro}", q"{d-ino}", q"{prof.}" ];

		return choice(strs, this.rnd);
	}

	override string personFirstName() {
		const string[] strs =
		[ q"{Abrahamo}", q"{Adolfo}", q"{Agripino}", q"{Albertino}", q"{Alcestiso}", q"{Aleksandro}", q"{Alekso}"
		, q"{Alfonsino}", q"{Alfredo}", q"{Alico}", q"{Amalio}", q"{Anastazio}", q"{Andreo}", q"{Angelino}"
		, q"{Anno}", q"{Antono}", q"{Anĝelo}", q"{Arturo}", q"{Aŭgustino}", q"{Aŭguĉjo}", q"{Bartolomeo}"
		, q"{Baŭcido}", q"{Beatrico}", q"{Berenico}", q"{Bertilo}", q"{Berto}", q"{Brigito}", q"{Bruno}"
		, q"{Cecilio}", q"{Dagoberto}", q"{Danielo}", q"{Donaldo}", q"{Doroteo}", q"{Edgaro}", q"{Eduardo}"
		, q"{Eleonoro}", q"{Elizabeto}", q"{Elizo}", q"{Emiliano}", q"{Emilio}", q"{Ernestino}", q"{Ernesto}"
		, q"{Erneĉjo}", q"{Evelino}", q"{Evo}", q"{Fatimo}", q"{Ferdinando}", q"{Fernando}", q"{Filipino}"
		, q"{Francisko}", q"{Frederiko}", q"{Gabrielo}", q"{Gastono}", q"{Georgo}", q"{Gertrudo}", q"{Gilberto}"
		, q"{Gustavino}", q"{Gustavo}", q"{Hasano}", q"{Hedvigo}", q"{Hektoro}", q"{Heleno}", q"{Henrieto}"
		, q"{Hermiono}", q"{Huberto}", q"{Hugo}", q"{Ilzo}", q"{Ireno}", q"{Ivano}", q"{Ivo}", q"{Izako}"
		, q"{Izoldo}", q"{Iŝmaelo}", q"{Jakelino}", q"{Jakobino}", q"{Jakobo}", q"{Janjo}", q"{Jano}"
		, q"{Joakimo}", q"{Johanino}", q"{Johano}", q"{Johanĉjo}", q"{Jonatano}", q"{Josuo}", q"{Jozefino}"
		, q"{Jozefo}", q"{Joĉjo}", q"{Joŝiko}", q"{Judito}", q"{Julieto}", q"{Juliino}", q"{Justeno}"
		, q"{Karlo}", q"{Karmeno}", q"{Karolino}", q"{Karolo}", q"{Katerino}", q"{Klanjo}", q"{Klaro}"
		, q"{Klaŭdino}", q"{Klaŭdo}", q"{Klementino}", q"{Kleopatro}", q"{Klitemnestro}", q"{Klotildo}"
		, q"{Knuto}", q"{Kreuzo}", q"{Krimhildo}", q"{Kristino}", q"{Ksantipo}", q"{Lamberto}", q"{Laŭrenco}"
		, q"{Laŭro}", q"{Leono}", q"{Leopoldino}", q"{Leopoldo}", q"{Lilio}", q"{Ludovikino}", q"{Ludoviko}"
		, q"{Luko}", q"{Magdaleno}", q"{Maksimo}", q"{Makso}", q"{Malvino}", q"{Manjo}", q"{Margareto}"
		, q"{Marinjo}", q"{Mario}", q"{Marko}", q"{Marteno}", q"{Mateo}", q"{Miriamo}", q"{Mirto}", q"{Miĉjo}"
		, q"{Moniko}", q"{Moseo}", q"{Muhamado}", q"{Nikolao}", q"{Nikolĉjo}", q"{Noaĥo}", q"{Olimpio}"
		, q"{Oskaro}", q"{Osvaldo}", q"{Pablo}", q"{Patriko}", q"{Paŭlino}", q"{Perpetuo}", q"{Petro}"
		, q"{Rafaelo}", q"{Raĥelo}", q"{Rebeko}", q"{Roberto}", q"{Rolando}", q"{Rozo}", q"{Rudolfo}"
		, q"{Sabino}", q"{Samuelo}", q"{Sebastiano}", q"{Simono}", q"{Sofinjo}", q"{Sofio}", q"{Sonjo}"
		, q"{Stanislao}", q"{Stefanino}", q"{Stefano}", q"{Susano}", q"{Terezo}", q"{Tiberio}", q"{Tomaso}"
		, q"{Ursulo}", q"{Veroniko}", q"{Viktoro}", q"{Vilhelmino}", q"{Vilhelmo}", q"{Vilĉjo}", q"{Vladimiro}"
		, q"{Ĉarloto}", q"{Ĥimeno}", q"{Ĵeromo}" ];

		return choice(strs, this.rnd);
	}

	override string personGender() {
		const string[] strs =
		[ q"{androgino}", q"{cisgenra virino}", q"{cisgenra viro}", q"{cisgenrulo}", q"{cisulo}", q"{cisvirino}"
		, q"{cisviro}", q"{dugenrulo}", q"{duspiritulo}", q"{genrokviro}", q"{hiĝro}", q"{interseksulo}"
		, q"{kviro}", q"{neduumulo}", q"{sengenrulo}", q"{transgenra virino}", q"{transgenra viro}"
		, q"{transgenrulo}", q"{transulo}", q"{transvirino}", q"{transviro}", q"{travesĉio}", q"{trigenrulo}"
		, q"{virino}", q"{viro}" ];

		return choice(strs, this.rnd);
	}

	override string personLastName() {
		const string[] strs =
		[ q"{Atanasov}", q"{Auld}", q"{Aymonier}", q"{Baghy}", q"{Bailey}", q"{Bastien}", q"{Beauchemin}"
		, q"{Becker}", q"{Bein}", q"{Bennemann}", q"{Bicknell}", q"{Boirac}", q"{Boulton}", q"{Bourlet}"
		, q"{Bouwes}", q"{Bulthuis}", q"{Cart}", q"{Cederblad}", q"{Christaller}", q"{Corret}", q"{Cseh}"
		, q"{Dirksen}", q"{Dor}", q"{Droogendijk}", q"{Elb}", q"{Ellis}", q"{Enderby}", q"{Engholm}", q"{Evstifejev}"
		, q"{Frenkel}", q"{Gasse}", q"{Geurts}", q"{Grabowski}", q"{Grosjean}", q"{Hermelin}", q"{Hideo}"
		, q"{Hodler}", q"{Holmes}", q"{Huet}", q"{Isbrücker}", q"{Junck}", q"{Kalocsay}", q"{Kotzin}"
		, q"{Krijt}", q"{Kriss}", q"{Kühnl}", q"{Kürsteiner}", q"{Lagrange}", q"{Lapenna}", q"{Lengyel}"
		, q"{Liniger}", q"{Lippmann}", q"{Luyken}", q"{Makkink}", q"{Malmgren}", q"{Matton}", q"{Meyer}"
		, q"{Migliorini}", q"{Millidge}", q"{Milsom}", q"{Mirski}", q"{Moscheles}", q"{Motteau}", q"{Mudie}"
		, q"{Mybs}", q"{Noël}", q"{Nourmont}", q"{Nylén}", q"{Pikover}", q"{Piron}", q"{Pollen}", q"{Privat}"
		, q"{Renard}", q"{Rhodes}", q"{Riisberg}", q"{Rittenberg}", q"{Rossetti}", q"{Sabadell}", q"{Schafer}"
		, q"{Schleyer}", q"{Schmid}", q"{Schmidt}", q"{Schröder}", q"{Schulz}", q"{Schwartz}", q"{Setälä}"
		, q"{Simon}", q"{Sofer}", q"{Stamatiadis}", q"{Stettler}", q"{Sturmer}", q"{Thisell}", q"{Uitterdijk}"
		, q"{Vallienne}", q"{Verax}", q"{Villanueva}", q"{Wackrill}", q"{Zaleski}", q"{Zamenhof}", q"{Zimmermann}" ];

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

	override string personMaleFirstName() {
		const string[] strs =
		[ q"{Abrahamo}", q"{Adolfo}", q"{Aleksandro}", q"{Alekso}", q"{Alfredo}", q"{Andreo}", q"{Anĝelo}"
		, q"{Antono}", q"{Arturo}", q"{Aŭguĉjo}", q"{Bartolomeo}", q"{Bertilo}", q"{Bruno}", q"{Dagoberto}"
		, q"{Danielo}", q"{Donaldo}", q"{Edgaro}", q"{Eduardo}", q"{Emiliano}", q"{Erneĉjo}", q"{Ernesto}"
		, q"{Ferdinando}", q"{Fernando}", q"{Francisko}", q"{Frederiko}", q"{Gabrielo}", q"{Gastono}"
		, q"{Georgo}", q"{Gilberto}", q"{Gustavo}", q"{Hasano}", q"{Hektoro}", q"{Huberto}", q"{Hugo}"
		, q"{Iŝmaelo}", q"{Ivano}", q"{Ivo}", q"{Izako}", q"{Jakobo}", q"{Jano}", q"{Ĵeromo}", q"{Joakimo}"
		, q"{Joĉjo}", q"{Johanĉjo}", q"{Johano}", q"{Jonatano}", q"{Josuo}", q"{Jozefo}", q"{Justeno}"
		, q"{Karlo}", q"{Karolo}", q"{Klaŭdo}", q"{Knuto}", q"{Lamberto}", q"{Laŭrenco}", q"{Leono}"
		, q"{Leopoldo}", q"{Ludoviko}", q"{Luko}", q"{Maksimo}", q"{Makso}", q"{Marko}", q"{Marteno}", q"{Mateo}"
		, q"{Miĉjo}", q"{Moseo}", q"{Muhamado}", q"{Nikolao}", q"{Nikolĉjo}", q"{Noaĥo}", q"{Oskaro}"
		, q"{Osvaldo}", q"{Pablo}", q"{Patriko}", q"{Petro}", q"{Rafaelo}", q"{Roberto}", q"{Rolando}"
		, q"{Rudolfo}", q"{Samuelo}", q"{Sebastiano}", q"{Simono}", q"{Stanislao}", q"{Stefano}", q"{Tiberio}"
		, q"{Tomaso}", q"{Viktoro}", q"{Vilĉjo}", q"{Vilhelmo}", q"{Vladimiro}" ];

		return choice(strs, this.rnd);
	}

	override string personMalePrefix() {
		const string[] strs =
		[ q"{s-ro}", q"{d-ro}", q"{prof.}" ];

		return choice(strs, this.rnd);
	}

	override string personName() {
		const int rndInt = uniform(0, 8, this.rnd);

		if(rndInt >= 0 && rndInt < 7) {
			return personFirstName() ~ " " ~ personLastName();
		}
		if(rndInt >= 7 && rndInt < 8) {
			return personPrefix() ~ " " ~ personFirstName() ~ " " ~ personLastName();
		}

		return "";
	}

	override string personPrefix() {
		const string[] strs =
		[ q"{d-ino}", q"{d-ro}", q"{prof.}", q"{s-ino}", q"{s-ro}" ];

		return choice(strs, this.rnd);
	}

	override string personSex() {
		const string[] strs =
		[ q"{vira}", q"{ina}" ];

		return choice(strs, this.rnd);
	}

	override string personWesternZodiacSign() {
		const string[] strs =
		[ q"{Akvisto}", q"{Fiŝoj}", q"{Ŝafo}", q"{Bovo}", q"{Ĝemeloj}", q"{Kankro}", q"{Leono}", q"{Virgulo}"
		, q"{Pesilo}", q"{Skorpio}", q"{Pafisto}", q"{Kaprikorno}" ];

		return choice(strs, this.rnd);
	}

	override ChemicalElement scienceChemicalElement() {
		switch(uniform(0, 118, this.rnd)) {
			case 0: return ChemicalElement(q"{H}", q"{hidrogeno}", 1);
			case 1: return ChemicalElement(q"{He}", q"{heliumo}", 2);
			case 2: return ChemicalElement(q"{Li}", q"{litio}", 3);
			case 3: return ChemicalElement(q"{Be}", q"{berilio}", 4);
			case 4: return ChemicalElement(q"{B}", q"{boro}", 5);
			case 5: return ChemicalElement(q"{C}", q"{karbono}", 6);
			case 6: return ChemicalElement(q"{N}", q"{nitrogeno}", 7);
			case 7: return ChemicalElement(q"{O}", q"{oksigeno}", 8);
			case 8: return ChemicalElement(q"{F}", q"{fluoro}", 9);
			case 9: return ChemicalElement(q"{Ne}", q"{neono}", 10);
			case 10: return ChemicalElement(q"{Na}", q"{natrio}", 11);
			case 11: return ChemicalElement(q"{Mg}", q"{magnezio}", 12);
			case 12: return ChemicalElement(q"{Al}", q"{aluminio}", 13);
			case 13: return ChemicalElement(q"{Si}", q"{silicio}", 14);
			case 14: return ChemicalElement(q"{P}", q"{fosforo}", 15);
			case 15: return ChemicalElement(q"{S}", q"{sulfuro}", 16);
			case 16: return ChemicalElement(q"{Cl}", q"{kloro}", 17);
			case 17: return ChemicalElement(q"{Ar}", q"{argono}", 18);
			case 18: return ChemicalElement(q"{K}", q"{kalio}", 19);
			case 19: return ChemicalElement(q"{Ca}", q"{kalcio}", 20);
			case 20: return ChemicalElement(q"{Sc}", q"{skandio}", 21);
			case 21: return ChemicalElement(q"{Ti}", q"{titano}", 22);
			case 22: return ChemicalElement(q"{V}", q"{vanado}", 23);
			case 23: return ChemicalElement(q"{Cr}", q"{kromo}", 24);
			case 24: return ChemicalElement(q"{Mn}", q"{mangano}", 25);
			case 25: return ChemicalElement(q"{Fe}", q"{fero}", 26);
			case 26: return ChemicalElement(q"{Co}", q"{kobalto}", 27);
			case 27: return ChemicalElement(q"{Ni}", q"{nikelo}", 28);
			case 28: return ChemicalElement(q"{Cu}", q"{kupro}", 29);
			case 29: return ChemicalElement(q"{Zn}", q"{zinko}", 30);
			case 30: return ChemicalElement(q"{Ga}", q"{galiumo}", 31);
			case 31: return ChemicalElement(q"{Ge}", q"{germaniumo}", 32);
			case 32: return ChemicalElement(q"{As}", q"{arseno}", 33);
			case 33: return ChemicalElement(q"{Se}", q"{seleno}", 34);
			case 34: return ChemicalElement(q"{Br}", q"{bromo}", 35);
			case 35: return ChemicalElement(q"{Kr}", q"{kriptono}", 36);
			case 36: return ChemicalElement(q"{Rb}", q"{rubidio}", 37);
			case 37: return ChemicalElement(q"{Sr}", q"{stroncio}", 38);
			case 38: return ChemicalElement(q"{Y}", q"{itrio}", 39);
			case 39: return ChemicalElement(q"{Zr}", q"{zirkonio}", 40);
			case 40: return ChemicalElement(q"{Nb}", q"{niobo}", 41);
			case 41: return ChemicalElement(q"{Mo}", q"{molibdeno}", 42);
			case 42: return ChemicalElement(q"{Tc}", q"{teknecio}", 43);
			case 43: return ChemicalElement(q"{Ru}", q"{rutenio}", 44);
			case 44: return ChemicalElement(q"{Rh}", q"{rodio}", 45);
			case 45: return ChemicalElement(q"{Pd}", q"{paladio}", 46);
			case 46: return ChemicalElement(q"{Ag}", q"{arĝento}", 47);
			case 47: return ChemicalElement(q"{Cd}", q"{kadmio}", 48);
			case 48: return ChemicalElement(q"{In}", q"{indio}", 49);
			case 49: return ChemicalElement(q"{Sn}", q"{stano}", 50);
			case 50: return ChemicalElement(q"{Sb}", q"{antimono}", 51);
			case 51: return ChemicalElement(q"{Te}", q"{teluro}", 52);
			case 52: return ChemicalElement(q"{I}", q"{jodo}", 53);
			case 53: return ChemicalElement(q"{Xe}", q"{ksenono}", 54);
			case 54: return ChemicalElement(q"{Cs}", q"{cezio}", 55);
			case 55: return ChemicalElement(q"{Ba}", q"{bario}", 56);
			case 56: return ChemicalElement(q"{La}", q"{lantano}", 57);
			case 57: return ChemicalElement(q"{Ce}", q"{cerio}", 58);
			case 58: return ChemicalElement(q"{Pr}", q"{prazeodimo}", 59);
			case 59: return ChemicalElement(q"{Nd}", q"{neodimo}", 60);
			case 60: return ChemicalElement(q"{Pm}", q"{prometio}", 61);
			case 61: return ChemicalElement(q"{Sm}", q"{samario}", 62);
			case 62: return ChemicalElement(q"{Eu}", q"{eŭropio}", 63);
			case 63: return ChemicalElement(q"{Gd}", q"{gadolinio}", 64);
			case 64: return ChemicalElement(q"{Tb}", q"{terbio}", 65);
			case 65: return ChemicalElement(q"{Dy}", q"{disprozio}", 66);
			case 66: return ChemicalElement(q"{Ho}", q"{holmio}", 67);
			case 67: return ChemicalElement(q"{Er}", q"{erbio}", 68);
			case 68: return ChemicalElement(q"{Tm}", q"{tulio}", 69);
			case 69: return ChemicalElement(q"{Yb}", q"{iterbio}", 70);
			case 70: return ChemicalElement(q"{Lu}", q"{lutecio}", 71);
			case 71: return ChemicalElement(q"{Hf}", q"{hafnio}", 72);
			case 72: return ChemicalElement(q"{Ta}", q"{tantalo}", 73);
			case 73: return ChemicalElement(q"{W}", q"{volframo}", 74);
			case 74: return ChemicalElement(q"{Re}", q"{renio}", 75);
			case 75: return ChemicalElement(q"{Os}", q"{osmio}", 76);
			case 76: return ChemicalElement(q"{Ir}", q"{iridio}", 77);
			case 77: return ChemicalElement(q"{Pt}", q"{plateno}", 78);
			case 78: return ChemicalElement(q"{Au}", q"{oro}", 79);
			case 79: return ChemicalElement(q"{Hg}", q"{hidrargo}", 80);
			case 80: return ChemicalElement(q"{Tl}", q"{talio}", 81);
			case 81: return ChemicalElement(q"{Pb}", q"{plumbo}", 82);
			case 82: return ChemicalElement(q"{Bi}", q"{bismuto}", 83);
			case 83: return ChemicalElement(q"{Po}", q"{polonio}", 84);
			case 84: return ChemicalElement(q"{At}", q"{astato}", 85);
			case 85: return ChemicalElement(q"{Rn}", q"{radono}", 86);
			case 86: return ChemicalElement(q"{Fr}", q"{franciumo}", 87);
			case 87: return ChemicalElement(q"{Ra}", q"{radiumo}", 88);
			case 88: return ChemicalElement(q"{Ac}", q"{aktiniumo}", 89);
			case 89: return ChemicalElement(q"{Th}", q"{torio}", 90);
			case 90: return ChemicalElement(q"{Pa}", q"{protaktinio}", 91);
			case 91: return ChemicalElement(q"{U}", q"{uranio}", 92);
			case 92: return ChemicalElement(q"{Np}", q"{neptunio}", 93);
			case 93: return ChemicalElement(q"{Pu}", q"{plutonio}", 94);
			case 94: return ChemicalElement(q"{Am}", q"{americio}", 95);
			case 95: return ChemicalElement(q"{Cm}", q"{kuriumo}", 96);
			case 96: return ChemicalElement(q"{Bk}", q"{berkelio}", 97);
			case 97: return ChemicalElement(q"{Cf}", q"{kaliforniumo}", 98);
			case 98: return ChemicalElement(q"{Es}", q"{ejnŝtejnio}", 99);
			case 99: return ChemicalElement(q"{Fm}", q"{fermio}", 100);
			case 100: return ChemicalElement(q"{Md}", q"{mendelevio}", 101);
			case 101: return ChemicalElement(q"{No}", q"{nobelio}", 102);
			case 102: return ChemicalElement(q"{Lr}", q"{laŭrencio}", 103);
			case 103: return ChemicalElement(q"{Rf}", q"{ruterfordio}", 104);
			case 104: return ChemicalElement(q"{Db}", q"{dubnio}", 105);
			case 105: return ChemicalElement(q"{Sg}", q"{seborgio}", 106);
			case 106: return ChemicalElement(q"{Bh}", q"{borio}", 107);
			case 107: return ChemicalElement(q"{Hs}", q"{hasio}", 108);
			case 108: return ChemicalElement(q"{Mt}", q"{mejtnerio}", 109);
			case 109: return ChemicalElement(q"{Ds}", q"{darmŝtatio}", 110);
			case 110: return ChemicalElement(q"{Rg}", q"{rentgenio}", 111);
			case 111: return ChemicalElement(q"{Cn}", q"{kopernicio}", 112);
			case 112: return ChemicalElement(q"{Nh}", q"{nihonio}", 113);
			case 113: return ChemicalElement(q"{Fl}", q"{flerovio}", 114);
			case 114: return ChemicalElement(q"{Mc}", q"{moskovio}", 115);
			case 115: return ChemicalElement(q"{Lv}", q"{livermorio}", 116);
			case 116: return ChemicalElement(q"{Ts}", q"{teneso}", 117);
			case 117: return ChemicalElement(q"{Og}", q"{oganesono}", 118);
			default: return ChemicalElement("","");
		}
	}

	override ChemicalUnit scienceUnit() {
		switch(uniform(0, 29, this.rnd)) {
			case 0: return ChemicalUnit(q"{metro}", q"{m}");
			case 1: return ChemicalUnit(q"{sekundo}", q"{s}");
			case 2: return ChemicalUnit(q"{molo}", q"{mol}");
			case 3: return ChemicalUnit(q"{ampero}", q"{A}");
			case 4: return ChemicalUnit(q"{kelvino}", q"{K}");
			case 5: return ChemicalUnit(q"{kandelo}", q"{cd}");
			case 6: return ChemicalUnit(q"{kilogramo}", q"{kg}");
			case 7: return ChemicalUnit(q"{radiano}", q"{rad}");
			case 8: return ChemicalUnit(q"{herco}", q"{Hz}");
			case 9: return ChemicalUnit(q"{neŭtono}", q"{N}");
			case 10: return ChemicalUnit(q"{paskalo}", q"{Pa}");
			case 11: return ChemicalUnit(q"{ĵulo}", q"{J}");
			case 12: return ChemicalUnit(q"{vato}", q"{W}");
			case 13: return ChemicalUnit(q"{kulombo}", q"{C}");
			case 14: return ChemicalUnit(q"{volto}", q"{V}");
			case 15: return ChemicalUnit(q"{omo}", q"{Ω}");
			case 16: return ChemicalUnit(q"{teslo}", q"{T}");
			case 17: return ChemicalUnit(q"{celsia grado}", q"{°C}");
			case 18: return ChemicalUnit(q"{lumeno}", q"{lm}");
			case 19: return ChemicalUnit(q"{bekerelo}", q"{Bq}");
			case 20: return ChemicalUnit(q"{grajo}", q"{Gy}");
			case 21: return ChemicalUnit(q"{siverto}", q"{Sv}");
			case 22: return ChemicalUnit(q"{steradiano}", q"{sr}");
			case 23: return ChemicalUnit(q"{farado}", q"{F}");
			case 24: return ChemicalUnit(q"{simenso}", q"{S}");
			case 25: return ChemicalUnit(q"{vebero}", q"{Wb}");
			case 26: return ChemicalUnit(q"{henro}", q"{H}");
			case 27: return ChemicalUnit(q"{lukso}", q"{lx}");
			case 28: return ChemicalUnit(q"{katalo}", q"{kat}");
			default: return ChemicalUnit("","");
		}
	}

	override string vehicleFuel() {
		const string[] strs =
		[ q"{benzina}", q"{dizela}", q"{elektra}", q"{hibrida}" ];

		return choice(strs, this.rnd);
	}

}

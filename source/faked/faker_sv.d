module faked.faker_sv;

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

class Faker_sv : Faker_en {
@safe:
	this(int seed) {
		super(seed);
	}

	override string cellPhoneFormats() {
		const string[] strs =
		[ q"{{{cell_phone.common_cell_prefix}}-###-####}" ];

		return numberBuild(choice(strs, this.rnd));
	}

	override string commerceProductNameAdjective() {
		const string[] strs =
		[ q"{Liten}", q"{Ergonomisk}", q"{Robust}", q"{Intelligent}", q"{Söt}", q"{Otrolig}", q"{Fantastisk}"
		, q"{Praktisk}", q"{Slimmad}", q"{Grym}" ];

		return choice(strs, this.rnd);
	}

	override string commerceProductNameMaterial() {
		const string[] strs =
		[ q"{Stål}", q"{Metall}", q"{Trä}", q"{Betong}", q"{Plast}", q"{Bomull}", q"{Granit}", q"{Gummi}"
		, q"{Latex}" ];

		return choice(strs, this.rnd);
	}

	override string commerceProductNameProduct() {
		const string[] strs =
		[ q"{Stol}", q"{Bil}", q"{Dator}", q"{Handskar}", q"{Byxor}", q"{Skjorta}", q"{Bord}", q"{Skor}", q"{Hatt}" ];

		return choice(strs, this.rnd);
	}

	override string commerceDepartment() {
		const string[] strs =
		[ q"{Böcker}", q"{Filmer}", q"{Musik}", q"{Spel}", q"{Elektronik}", q"{Datorer}", q"{Hem}", q"{Trädgård}"
		, q"{Verktyg}", q"{Livsmedel}", q"{Hälsa}", q"{Skönhet}", q"{Leksaker}", q"{Klädsel}", q"{Skor}"
		, q"{Smycken}", q"{Sport}" ];

		return choice(strs, this.rnd);
	}

	override string companyNamePattern() {
		switch(uniform(0, 3, this.rnd)) {
			case 0: return personLastName() ~ " " ~ companySuffix();
			case 1: return personLastName() ~ "-" ~ personLastName();
			case 2: return personLastName() ~ ", " ~ personLastName() ~ " " ~ companySuffix();
			default: return "";
		}
	}

	override string companySuffix() {
		const string[] strs =
		[ q"{Gruppen}", q"{AB}", q"{HB}", q"{Group}", q"{Investment}", q"{Kommanditbolag}", q"{Aktiebolag}" ];

		return choice(strs, this.rnd);
	}

	override string dateMonthWide() {
		const string[] strs =
		[ q"{januari}", q"{februari}", q"{mars}", q"{april}", q"{maj}", q"{juni}", q"{juli}", q"{augusti}", q"{september}"
		, q"{oktober}", q"{november}", q"{december}" ];

		return choice(strs, this.rnd);
	}

	override string dateMonthAbbr() {
		const string[] strs =
		[ q"{jan}", q"{feb}", q"{mar}", q"{apr}", q"{maj}", q"{jun}", q"{jul}", q"{aug}", q"{sep}", q"{okt}", q"{nov}"
		, q"{dec}" ];

		return choice(strs, this.rnd);
	}

	override string dateWeekdayWide() {
		const string[] strs =
		[ q"{söndag}", q"{måndag}", q"{tisdag}", q"{onsdag}", q"{torsdag}", q"{fredag}", q"{lördag}" ];

		return choice(strs, this.rnd);
	}

	override string dateWeekdayAbbr() {
		const string[] strs =
		[ q"{sön}", q"{mån}", q"{tis}", q"{ons}", q"{tor}", q"{fre}", q"{lör}" ];

		return choice(strs, this.rnd);
	}

	override string internetDomainSuffix() {
		const string[] strs =
		[ q"{se}", q"{nu}", q"{info}", q"{com}", q"{org}" ];

		return choice(strs, this.rnd);
	}

	override string locationBuildingNumber() {
		const string[] strs =
		[ q"{###}", q"{##}", q"{#}" ];

		return numberBuild(choice(strs, this.rnd));
	}

	override string locationCityPattern() {
		switch(uniform(0, 1, this.rnd)) {
			case 0: return locationCityPrefix() ~ locationCitySuffix();
			default: return "";
		}
	}

	override string locationCityPrefix() {
		const string[] strs =
		[ q"{Söder}", q"{Norr}", q"{Väst}", q"{Öster}", q"{Aling}", q"{Ar}", q"{Av}", q"{Bo}", q"{Br}", q"{Bå}"
		, q"{Ek}", q"{En}", q"{Esk}", q"{Fal}", q"{Gäv}", q"{Göte}", q"{Ha}", q"{Helsing}", q"{Karl}", q"{Krist}"
		, q"{Kram}", q"{Kung}", q"{Kö}", q"{Lyck}", q"{Ny}" ];

		return choice(strs, this.rnd);
	}

	override string locationCitySuffix() {
		const string[] strs =
		[ q"{stad}", q"{land}", q"{sås}", q"{ås}", q"{holm}", q"{tuna}", q"{sta}", q"{berg}", q"{löv}", q"{borg}"
		, q"{mora}", q"{hamn}", q"{fors}", q"{köping}", q"{by}", q"{hult}", q"{torp}", q"{fred}", q"{vik}" ];

		return choice(strs, this.rnd);
	}

	override string locationCountry() {
		const string[] strs =
		[ q"{Ryssland}", q"{Kanada}", q"{Kina}", q"{USA}", q"{Brasilien}", q"{Australien}", q"{Indien}", q"{Argentina}"
		, q"{Kazakstan}", q"{Algeriet}", q"{DR Kongo}", q"{Danmark}", q"{Färöarna}", q"{Grönland}"
		, q"{Saudiarabien}", q"{Mexiko}", q"{Indonesien}", q"{Sudan}", q"{Libyen}", q"{Iran}", q"{Mongoliet}"
		, q"{Peru}", q"{Tchad}", q"{Niger}", q"{Angola}", q"{Mali}", q"{Sydafrika}", q"{Colombia}", q"{Etiopien}"
		, q"{Bolivia}", q"{Mauretanien}", q"{Egypten}", q"{Tanzania}", q"{Nigeria}", q"{Venezuela}"
		, q"{Namibia}", q"{Pakistan}", q"{Moçambique}", q"{Turkiet}", q"{Chile}", q"{Zambia}", q"{Marocko}"
		, q"{Västsahara}", q"{Burma}", q"{Afghanistan}", q"{Somalia}", q"{Centralafrikanska republiken}"
		, q"{Sydsudan}", q"{Ukraina}", q"{Botswana}", q"{Madagaskar}", q"{Kenya}", q"{Frankrike}", q"{Franska Guyana}"
		, q"{Jemen}", q"{Thailand}", q"{Spanien}", q"{Turkmenistan}", q"{Kamerun}", q"{Papua Nya Guinea}"
		, q"{Sverige}", q"{Uzbekistan}", q"{Irak}", q"{Paraguay}", q"{Zimbabwe}", q"{Japan}", q"{Tyskland}"
		, q"{Kongo}", q"{Finland}", q"{Malaysia}", q"{Vietnam}", q"{Norge}", q"{Svalbard}", q"{Jan Mayen}"
		, q"{Elfenbenskusten}", q"{Polen}", q"{Italien}", q"{Filippinerna}", q"{Ecuador}", q"{Burkina Faso}"
		, q"{Nya Zeeland}", q"{Gabon}", q"{Guinea}", q"{Storbritannien}", q"{Ghana}", q"{Rumänien}"
		, q"{Laos}", q"{Uganda}", q"{Guyana}", q"{Oman}", q"{Vitryssland}", q"{Kirgizistan}", q"{Senegal}"
		, q"{Syrien}", q"{Kambodja}", q"{Uruguay}", q"{Tunisien}", q"{Surinam}", q"{Nepal}", q"{Bangladesh}"
		, q"{Tadzjikistan}", q"{Grekland}", q"{Nicaragua}", q"{Eritrea}", q"{Nordkorea}", q"{Malawi}"
		, q"{Benin}", q"{Honduras}", q"{Liberia}", q"{Bulgarien}", q"{Kuba}", q"{Guatemala}", q"{Island}"
		, q"{Sydkorea}", q"{Ungern}", q"{Portugal}", q"{Jordanien}", q"{Serbien}", q"{Azerbajdzjan}"
		, q"{Österrike}", q"{Förenade Arabemiraten}", q"{Tjeckien}", q"{Panama}", q"{Sierra Leone}"
		, q"{Irland}", q"{Georgien}", q"{Sri Lanka}", q"{Litauen}", q"{Lettland}", q"{Togo}", q"{Kroatien}"
		, q"{Bosnien och Hercegovina}", q"{Costa Rica}", q"{Slovakien}", q"{Dominikanska republiken}"
		, q"{Bhutan}", q"{Estland}", q"{Nederländerna}", q"{Schweiz}", q"{Guinea-Bissau}", q"{Taiwan}"
		, q"{Moldavien}", q"{Belgien}", q"{Lesotho}", q"{Armenien}", q"{Albanien}", q"{Salomonöarna}"
		, q"{Ekvatorialguinea}", q"{Burundi}", q"{Haiti}", q"{Rwanda}", q"{Makedonien}", q"{Djibouti}"
		, q"{Belize}", q"{Israel}", q"{El Salvador}", q"{Slovenien}", q"{Fiji}", q"{Kuwait}", q"{Swaziland}"
		, q"{Timor-Leste}", q"{Montenegro}", q"{Bahamas}", q"{Vanuatu}", q"{Qatar}", q"{Gambia}", q"{Jamaica}"
		, q"{Kosovo}", q"{Libanon}", q"{Cypern}", q"{Brunei}", q"{Trinidad och Tobago}", q"{Kap Verde}"
		, q"{Samoa}", q"{Luxemburg}", q"{Komorerna}", q"{Mauritius}", q"{São Tomé och Príncipe}"
		, q"{Kiribati}", q"{Dominica}", q"{Tonga}", q"{Mikronesiens federerade stater}", q"{Singapore}"
		, q"{Bahrain}", q"{Saint Lucia}", q"{Andorra}", q"{Palau}", q"{Seychellerna}", q"{Antigua och Barbuda}"
		, q"{Barbados}", q"{Saint Vincent och Grenadinerna}", q"{Grenada}", q"{Malta}", q"{Maldiverna}"
		, q"{Saint Kitts och Nevis}", q"{Marshallöarna}", q"{Liechtenstein}", q"{San Marino}"
		, q"{Tuvalu}", q"{Nauru}", q"{Monaco}", q"{Vatikanstaten}" ];

		return choice(strs, this.rnd);
	}

	override string locationDefaultCountry() {
		const string[] strs =
		[ q"{Sverige}" ];

		return choice(strs, this.rnd);
	}

	override string locationPostcode() {
		const string[] strs =
		[ q"{#####}" ];

		return numberBuild(choice(strs, this.rnd));
	}

	override string locationSecondaryAddress() {
		const string[] strs =
		[ q"{Lgh. ###}", q"{Hus ###}" ];

		return numberBuild(choice(strs, this.rnd));
	}

	override string locationState() {
		const string[] strs =
		[ q"{Blekinge}", q"{Dalarna}", q"{Gotland}", q"{Gävleborg}", q"{Göteborg}", q"{Halland}", q"{Jämtland}"
		, q"{Jönköping}", q"{Kalmar}", q"{Kronoberg}", q"{Norrbotten}", q"{Skaraborg}", q"{Skåne}"
		, q"{Stockholm}", q"{Södermanland}", q"{Uppsala}", q"{Värmland}", q"{Västerbotten}", q"{Västernorrland}"
		, q"{Västmanland}", q"{Älvsborg}", q"{Örebro}", q"{Östergötland}" ];

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
		[ q"{Björk}", q"{Järnvägs}", q"{Ring}", q"{Skol}", q"{Skogs}", q"{Ny}", q"{Gran}", q"{Idrotts}", q"{Stor}"
		, q"{Kyrk}", q"{Industri}", q"{Park}", q"{Strand}", q"{Trädgård}", q"{Ängs}", q"{Kyrko}", q"{Villa}"
		, q"{Ek}", q"{Kvarn}", q"{Stations}", q"{Back}", q"{Furu}", q"{Gen}", q"{Fabriks}", q"{Åker}", q"{Bäck}"
		, q"{Asp}" ];

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
		[ q"{vägen}", q"{gatan}", q"{gränden}", q"{gärdet}", q"{allén}" ];

		return choice(strs, this.rnd);
	}

	string locationCommonStreetSuffix() {
		const string[] strs =
		[ q"{s Väg}", q"{s Gata}" ];

		return choice(strs, this.rnd);
	}

	string locationStreetPrefix() {
		const string[] strs =
		[ q"{Västra}", q"{Östra}", q"{Norra}", q"{Södra}", q"{Övre}", q"{Undre}" ];

		return choice(strs, this.rnd);
	}

	override string personFemaleFirstName() {
		const string[] strs =
		[ q"{Anna}", q"{Eva}", q"{Maria}", q"{Karin}", q"{Sara}", q"{Kristina}", q"{Lena}", q"{Emma}", q"{Kerstin}"
		, q"{Marie}", q"{Malin}", q"{Ingrid}", q"{Jenny}", q"{Hanna}", q"{Linda}", q"{Annika}", q"{Susanne}"
		, q"{Elin}", q"{Monica}", q"{Birgitta}", q"{Sofia}", q"{Johanna}", q"{Inger}", q"{Carina}", q"{Elisabeth}"
		, q"{Julia}", q"{Ulla}", q"{Katarina}", q"{Linnéa}", q"{Emelie}", q"{Ida}", q"{Helena}", q"{Camilla}"
		, q"{Åsa}", q"{Anette}", q"{Sandra}", q"{Gunilla}", q"{Anita}", q"{Maja}", q"{Marianne}", q"{Margareta}"
		, q"{Amanda}", q"{Anneli}", q"{Therese}", q"{Ann}", q"{Josefin}", q"{Cecilia}", q"{Jessica}", q"{Helen}"
		, q"{Lisa}", q"{Matilda}", q"{Caroline}", q"{Alice}", q"{Frida}", q"{Ulrika}", q"{Elsa}", q"{Barbro}"
		, q"{Siv}", q"{Rebecca}", q"{Madeleine}", q"{Klara}", q"{Ebba}", q"{Sofie}", q"{Isabelle}", q"{Agneta}"
		, q"{Gun}", q"{Wilma}", q"{Lina}", q"{Berit}", q"{Pia}", q"{Ella}", q"{Ellen}", q"{Yvonne}", q"{Louise}"
		, q"{Astrid}", q"{Moa}", q"{Olivia}", q"{Nathalie}", q"{Mona}", q"{Agnes}", q"{Emilia}", q"{Alexandra}"
		, q"{Alva}", q"{Britt}", q"{Erika}", q"{Viktoria}", q"{Ann-Christin}", q"{Felicia}", q"{Ann-Marie}"
		, q"{Sonja}", q"{Britt-Marie}", q"{Pernilla}", q"{Lovisa}", q"{Charlotte}", q"{Linn}", q"{Gunnel}"
		, q"{Nina}", q"{Mikaela}", q"{Karolina}", q"{Lisbeth}" ];

		return choice(strs, this.rnd);
	}

	override string personFemalePrefix() {
		const string[] strs =
		[ q"{Dr.}", q"{Prof.}", q"{PhD.}" ];

		return choice(strs, this.rnd);
	}

	override string personFirstName() {
		const string[] strs =
		[ q"{Anna}", q"{Eva}", q"{Maria}", q"{Karin}", q"{Sara}", q"{Kristina}", q"{Lena}", q"{Emma}", q"{Kerstin}"
		, q"{Marie}", q"{Malin}", q"{Ingrid}", q"{Jenny}", q"{Hanna}", q"{Linda}", q"{Annika}", q"{Susanne}"
		, q"{Elin}", q"{Monica}", q"{Birgitta}", q"{Sofia}", q"{Johanna}", q"{Inger}", q"{Carina}", q"{Elisabeth}"
		, q"{Julia}", q"{Ulla}", q"{Katarina}", q"{Linnéa}", q"{Emelie}", q"{Ida}", q"{Helena}", q"{Camilla}"
		, q"{Åsa}", q"{Anette}", q"{Sandra}", q"{Gunilla}", q"{Anita}", q"{Maja}", q"{Marianne}", q"{Margareta}"
		, q"{Amanda}", q"{Anneli}", q"{Therese}", q"{Ann}", q"{Josefin}", q"{Cecilia}", q"{Jessica}", q"{Helen}"
		, q"{Lisa}", q"{Matilda}", q"{Caroline}", q"{Alice}", q"{Frida}", q"{Ulrika}", q"{Elsa}", q"{Barbro}"
		, q"{Siv}", q"{Rebecca}", q"{Madeleine}", q"{Klara}", q"{Ebba}", q"{Sofie}", q"{Isabelle}", q"{Agneta}"
		, q"{Gun}", q"{Wilma}", q"{Lina}", q"{Berit}", q"{Pia}", q"{Ella}", q"{Ellen}", q"{Yvonne}", q"{Louise}"
		, q"{Astrid}", q"{Moa}", q"{Olivia}", q"{Nathalie}", q"{Mona}", q"{Agnes}", q"{Emilia}", q"{Alexandra}"
		, q"{Alva}", q"{Britt}", q"{Erika}", q"{Viktoria}", q"{Ann-Christin}", q"{Felicia}", q"{Ann-Marie}"
		, q"{Sonja}", q"{Britt-Marie}", q"{Pernilla}", q"{Lovisa}", q"{Charlotte}", q"{Linn}", q"{Gunnel}"
		, q"{Nina}", q"{Mikaela}", q"{Karolina}", q"{Lisbeth}", q"{Lars}", q"{Mikael}", q"{Anders}", q"{Johan}"
		, q"{Erik}", q"{Per}", q"{Peter}", q"{Karl}", q"{Thomas}", q"{Jan}", q"{Daniel}", q"{Fredrik}", q"{Andreas}"
		, q"{Hans}", q"{Stefan}", q"{Mohamed}", q"{Mats}", q"{Marcus}", q"{Mattias}", q"{Magnus}", q"{Jonas}"
		, q"{Oskar}", q"{Alexander}", q"{Niklas}", q"{Bengt}", q"{Martin}", q"{Bo}", q"{Nils}", q"{Viktor}"
		, q"{Patrik}", q"{Björn}", q"{David}", q"{Leif}", q"{Filip}", q"{Henrik}", q"{Joakim}", q"{Emil}"
		, q"{Christer}", q"{Ulf}", q"{Sven}", q"{Simon}", q"{Christoffer}", q"{Anton}", q"{Gustav}", q"{Robert}"
		, q"{Christian}", q"{William}", q"{Tommy}", q"{Kjell}", q"{Lucas}", q"{Rickard}", q"{Håkan}", q"{Adam}"
		, q"{Göran}", q"{Jakob}", q"{Jonathan}", q"{Rolf}", q"{Lennart}", q"{Robin}", q"{Sebastian}", q"{Elias}"
		, q"{Tobias}", q"{John}", q"{Stig}", q"{Axel}", q"{Linus}", q"{Oliver}", q"{Kent}", q"{Hugo}", q"{Isak}"
		, q"{Roger}", q"{Jesper}", q"{Claes}", q"{Albin}", q"{Ludvig}", q"{Jörgen}", q"{Rasmus}", q"{Max}"
		, q"{Ali}", q"{Jimmy}", q"{Kenneth}", q"{Joel}", q"{Gunnar}", q"{Dennis}", q"{Josef}", q"{Johnny}"
		, q"{Olle}", q"{Liam}", q"{Leo}", q"{Olof}", q"{Pontus}", q"{Åke}", q"{Kurt}", q"{Kevin}", q"{Samuel}"
		, q"{Edvin}", q"{Gabriel}", q"{Torbjörn}", q"{Arvid}", q"{Felix}" ];

		return choice(strs, this.rnd);
	}

	override string personLastName() {
		const string[] strs =
		[ q"{Andersson}", q"{Johansson}", q"{Karlsson}", q"{Nilsson}", q"{Eriksson}", q"{Larsson}", q"{Olsson}"
		, q"{Persson}", q"{Svensson}", q"{Gustafsson}", q"{Pettersson}", q"{Jonsson}", q"{Jansson}"
		, q"{Hansson}", q"{Bengtsson}", q"{Jönsson}", q"{Lindberg}", q"{Jakobsson}", q"{Magnusson}"
		, q"{Olofsson}", q"{Lindström}", q"{Lindqvist}", q"{Lindgren}", q"{Berg}", q"{Axelsson}", q"{Bergström}"
		, q"{Lundberg}", q"{Lind}", q"{Lundgren}", q"{Lundqvist}", q"{Mattsson}", q"{Berglund}", q"{Fredriksson}"
		, q"{Sandberg}", q"{Henriksson}", q"{Forsberg}", q"{Sjöberg}", q"{Ali}", q"{Wallin}", q"{Mohamed}"
		, q"{Engström}", q"{Eklund}", q"{Danielsson}", q"{Lundin}", q"{Håkansson}", q"{Björk}", q"{Bergman}"
		, q"{Gunnarsson}", q"{Holm}", q"{Wikström}", q"{Samuelsson}", q"{Isaksson}", q"{Fransson}"
		, q"{Bergqvist}", q"{Nyström}", q"{Holmberg}", q"{Arvidsson}", q"{Löfgren}", q"{Söderberg}"
		, q"{Nyberg}", q"{Blomqvist}", q"{Claesson}", q"{Nordström}", q"{Ahmed}", q"{Mårtensson}"
		, q"{Lundström}", q"{Hassan}", q"{Viklund}", q"{Björklund}", q"{Eliasson}", q"{Pålsson}"
		, q"{Berggren}", q"{Sandström}", q"{Lund}", q"{Nordin}", q"{Ström}", q"{Åberg}", q"{Falk}", q"{Ekström}"
		, q"{Hermansson}", q"{Holmgren}", q"{Hellström}", q"{Dahlberg}", q"{Hedlund}", q"{Sundberg}"
		, q"{Sjögren}", q"{Ek}", q"{Blom}", q"{Abrahamsson}", q"{Martinsson}", q"{Öberg}", q"{Andreasson}"
		, q"{Strömberg}", q"{Månsson}", q"{Hansen}", q"{Åkesson}", q"{Dahl}", q"{Lindholm}", q"{Norberg}"
		, q"{Holmqvist}" ];

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
		[ q"{Lars}", q"{Mikael}", q"{Anders}", q"{Johan}", q"{Erik}", q"{Per}", q"{Peter}", q"{Karl}", q"{Thomas}"
		, q"{Jan}", q"{Daniel}", q"{Fredrik}", q"{Andreas}", q"{Hans}", q"{Stefan}", q"{Mohamed}", q"{Mats}"
		, q"{Marcus}", q"{Mattias}", q"{Magnus}", q"{Jonas}", q"{Oskar}", q"{Alexander}", q"{Niklas}", q"{Bengt}"
		, q"{Martin}", q"{Bo}", q"{Nils}", q"{Viktor}", q"{Patrik}", q"{Björn}", q"{David}", q"{Leif}", q"{Filip}"
		, q"{Henrik}", q"{Joakim}", q"{Emil}", q"{Christer}", q"{Ulf}", q"{Sven}", q"{Simon}", q"{Christoffer}"
		, q"{Anton}", q"{Gustav}", q"{Robert}", q"{Christian}", q"{William}", q"{Tommy}", q"{Kjell}", q"{Lucas}"
		, q"{Rickard}", q"{Håkan}", q"{Adam}", q"{Göran}", q"{Jakob}", q"{Jonathan}", q"{Rolf}", q"{Lennart}"
		, q"{Robin}", q"{Sebastian}", q"{Elias}", q"{Tobias}", q"{John}", q"{Stig}", q"{Axel}", q"{Linus}"
		, q"{Oliver}", q"{Kent}", q"{Hugo}", q"{Isak}", q"{Roger}", q"{Jesper}", q"{Claes}", q"{Albin}", q"{Ludvig}"
		, q"{Jörgen}", q"{Rasmus}", q"{Max}", q"{Ali}", q"{Jimmy}", q"{Kenneth}", q"{Joel}", q"{Gunnar}"
		, q"{Dennis}", q"{Josef}", q"{Johnny}", q"{Olle}", q"{Liam}", q"{Leo}", q"{Olof}", q"{Pontus}", q"{Åke}"
		, q"{Kurt}", q"{Kevin}", q"{Samuel}", q"{Edvin}", q"{Gabriel}", q"{Torbjörn}", q"{Arvid}", q"{Felix}" ];

		return choice(strs, this.rnd);
	}

	override string personMalePrefix() {
		const string[] strs =
		[ q"{Dr.}", q"{Prof.}", q"{PhD.}" ];

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
		[ q"{Dr.}", q"{PhD.}", q"{Prof.}" ];

		return choice(strs, this.rnd);
	}

	override string personTitleDescriptor() {
		const string[] strs =
		[ q"{Ansvarig}", q"{Senior}", q"{Junior}", q"{Företags}", q"{Organisatorisk}", q"{Intern}", q"{Tillträdande}"
		, q"{Nationell}", q"{Internationell}", q"{Regional}", q"{Global}" ];

		return choice(strs, this.rnd);
	}

	override string personTitleLevel() {
		const string[] strs =
		[ q"{Verkställande}", q"{Program}", q"{Varumärke}", q"{Säkerhet}", q"{Forskning}", q"{Marknadsföring}"
		, q"{Direktiv}", q"{Implementation}", q"{Integration}", q"{Funktionalitet}", q"{Taktik}"
		, q"{Marknader}", q"{Division}", q"{Grupp}", q"{Optimering}", q"{Infrastruktur}", q"{Operativ}"
		, q"{Finansiell}", q"{Kommunikation}" ];

		return choice(strs, this.rnd);
	}

	override string personTitleJob() {
		const string[] strs =
		[ q"{Direktör}", q"{Ingenjör}", q"{Handledare}", q"{Koordinator}", q"{Specialist}", q"{Administratör}"
		, q"{Arkitekt}", q"{Analytiker}", q"{Designer}", q"{Planerare}", q"{Tekniker}", q"{Utvecklare}"
		, q"{Konsult}", q"{Representant}", q"{Chef}", q"{Producent}", q"{Assistent}" ];

		return choice(strs, this.rnd);
	}

	override string phoneNumberFormats() {
		const string[] strs =
		[ q"{070#######}", q"{+4670#######}", q"{072#######}", q"{+4672#######}", q"{073#######}", q"{+4673#######}"
		, q"{076#######}", q"{+4676#######}", q"{079#######}", q"{+4679#######}", q"{01#####}", q"{+461#####}"
		, q"{02######}", q"{+462######}", q"{03#######}", q"{+463#######}", q"{04########}", q"{+464########}"
		, q"{05#####}", q"{+465#####}", q"{06######}", q"{+466######}", q"{08#######}", q"{+468#######}"
		, q"{09########}", q"{+469########}" ];

		return numberBuild(choice(strs, this.rnd));
	}

	string teamSuffix() {
		const string[] strs =
		[ q"{IF}", q"{FF}", q"{BK}", q"{HK}", q"{AIF}", q"{SK}", q"{FC}", q"{BoIS}", q"{FK}", q"{BIS}", q"{FIF}", q"{IK}" ];

		return choice(strs, this.rnd);
	}

	override string teamName() {
		switch(uniform(0, 1, this.rnd)) {
			case 0: return locationCity() ~ " " ~ teamSuffix();
			default: return "";
		}
	}

}

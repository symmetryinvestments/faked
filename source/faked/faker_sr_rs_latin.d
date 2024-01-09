module faked.faker_sr_rs_latin;

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

class Faker_sr_rs_latin : Faker_en {
@safe:
	this(int seed) {
		super(seed);
	}

	override string cellPhoneFormats() {
		const string[] strs =
		[ q"{06# ### ## ##}", q"{06########}", q"{+381 6# ### ####}" ];

		return numberBuild(choice(strs, this.rnd));
	}

	override string dateMonthWide() {
		const string[] strs =
		[ q"{januar}", q"{februar}", q"{mart}", q"{april}", q"{maj}", q"{jun}", q"{jul}", q"{avgust}", q"{septembar}"
		, q"{oktobar}", q"{novembar}", q"{decembar}" ];

		return choice(strs, this.rnd);
	}

	override string dateMonthAbbr() {
		const string[] strs =
		[ q"{jan}", q"{feb}", q"{mar}", q"{apr}", q"{maj}", q"{jun}", q"{jul}", q"{avg}", q"{sep}", q"{okt}", q"{nov}"
		, q"{dec}" ];

		return choice(strs, this.rnd);
	}

	override string dateWeekdayWide() {
		const string[] strs =
		[ q"{nedelja}", q"{ponedeljak}", q"{utorak}", q"{sreda}", q"{četvrtak}", q"{petak}", q"{subota}" ];

		return choice(strs, this.rnd);
	}

	override string dateWeekdayAbbr() {
		const string[] strs =
		[ q"{ned}", q"{pon}", q"{uto}", q"{sre}", q"{čet}", q"{pet}", q"{sub}" ];

		return choice(strs, this.rnd);
	}

	override string internetDomainSuffix() {
		const string[] strs =
		[ q"{rs}", q"{com}", q"{co.rs}", q"{edu.rs}", q"{in.rs}" ];

		return choice(strs, this.rnd);
	}

	override string locationBuildingNumber() {
		const string[] strs =
		[ q"{#}", q"{##}", q"{###}" ];

		return numberBuild(choice(strs, this.rnd));
	}

	override string locationCityName() {
		const string[] strs =
		[ q"{Beograd}", q"{Bor}", q"{Jagodina}", q"{Kikinda}", q"{Kraljevo}", q"{Kruševac}", q"{Leskovac}"
		, q"{Niš}", q"{Novi Pazar}", q"{Novi Sad}", q"{Pančevo}", q"{Paraćin}", q"{Pirot}", q"{Požarevac}"
		, q"{Prokuplje}", q"{Smederevo}", q"{Sombor}", q"{Sopot}", q"{Sremska Mitrovica}", q"{Subotica}"
		, q"{Užice}", q"{Vranje}", q"{Vršac}", q"{Zaječar}", q"{Zrenjanjin}", q"{Čačak}", q"{Šabac}" ];

		return choice(strs, this.rnd);
	}

	override string locationCityPattern() {
		switch(uniform(0, 1, this.rnd)) {
			case 0: return locationCityName();
		}
		return "";
	}

	override string locationCountry() {
		const string[] strs =
		[ q"{Avganistan}", q"{Albanija}", q"{Alžir}", q"{Američka Samoa}", q"{Andora}", q"{Angola}"
		, q"{Anguila}", q"{Antarktika}", q"{Antigua i Barbuda}", q"{Argentina}", q"{Armenija}", q"{Aruba}"
		, q"{Australija}", q"{Austrija}", q"{Azerbajdžan}", q"{Bahami}", q"{Bahrein}", q"{Bangladeš}"
		, q"{Barbados}", q"{Belorusija}", q"{Belgija}", q"{Belize}", q"{Benin}", q"{Bermuda}", q"{Butan}"
		, q"{Bolivija}", q"{Bonaire}", q"{Bosna i Hercegovina}", q"{Bocvana}", q"{Ostrvo Bouvet}"
		, q"{Brazil}", q"{Bruneji}", q"{Bugarska}", q"{Burikina Faso}", q"{Burundi}", q"{Kambodža}"
		, q"{Kameron}", q"{Kanada}", q"{Zelenortska Republika}", q"{Kajmanska Ostrva}", q"{Srednjoafrička Republika}"
		, q"{Čad}", q"{Čile}", q"{Kina}", q"{Božićna Ostrva}", q"{Keeling Ostrva}", q"{Kolumbija}"
		, q"{Komori}", q"{Kongo}", q"{Demokratska Republika Kongo}", q"{Cookova Ostrva}", q"{Kostarika}"
		, q"{Hrvatska}", q"{Kuba}", q"{Curacao}", q"{Kipar}", q"{Češka}", q"{Obala Slonovače}", q"{Danska}"
		, q"{Džibuti}", q"{Dominika}", q"{Dominikanska Republika}", q"{Ekvador}", q"{Egipat}", q"{Salvador}"
		, q"{Ekvatorijalna Gvineja}", q"{Eritreja}", q"{Estonija}", q"{Etiopija}", q"{Falkandska Ostrva}"
		, q"{Farska Ostrva}", q"{Fidži}", q"{Finska}", q"{Francuska}", q"{Francuska Gvajana}", q"{Francuska Polinezija}"
		, q"{Južni Francuski Teritoriji}", q"{Gabon}", q"{Gambija}", q"{Gruzija}", q"{Nemačka}"
		, q"{Gana}", q"{Gibraltar}", q"{Grčka}", q"{Grenland}", q"{Grenada}", q"{Guadelupe}", q"{Guam}"
		, q"{Gvatemala}", q"{Guernsey}", q"{Gvineja}", q"{Gvineja Bisau}", q"{Gvajana}", q"{Haiti}"
		, q"{Holandija}", q"{Ostvro Heard i Ostrvo McDonald}", q"{Vatikan}", q"{Honduras}", q"{Hong Kong}"
		, q"{Mađarska}", q"{Island}", q"{Indija}", q"{Indonezija}", q"{Iran}", q"{Irak}", q"{Irska}", q"{Isle of Man}"
		, q"{Izrael}", q"{Italija}", q"{Jamajka}", q"{Japan}", q"{Jersey}", q"{Jordan}", q"{Kazahstan}"
		, q"{Kenija}", q"{Kiribati}", q"{DNR Koreja}", q"{Rebublika Koreja}", q"{Kuvajt}", q"{Krigistan}"
		, q"{Laos}", q"{Latvija}", q"{Libanon}", q"{Lesoto}", q"{Liberija}", q"{Libija}", q"{Lihtenštajn}"
		, q"{Litvanija}", q"{Luksmburg}", q"{Makao}", q"{Makedonija}", q"{Madagaskar}", q"{Malavi}"
		, q"{Malezija}", q"{Maldivi}", q"{Mali}", q"{Malta}", q"{Maršalovi}", q"{Martinik}", q"{Mauritanija}"
		, q"{Mauricijus}", q"{Mayotte}", q"{Meksiko}", q"{Mikronezija}", q"{Moldavija}", q"{Monako}"
		, q"{Mongolija}", q"{Crna Gora}", q"{Monteserat}", q"{Maroko}", q"{Mozambik}", q"{Mjanmar}"
		, q"{Namibija}", q"{Nauru}", q"{Nepal}", q"{Nova Kaledonija}", q"{Novi Zeland}", q"{Nikaragva}"
		, q"{Niger}", q"{Nigerija}", q"{Niue}", q"{Norfolk}", q"{Severna Marijanska Ostrva}", q"{Norveška}"
		, q"{Oman}", q"{Pakistan}", q"{Palau}", q"{Palestina}", q"{Panama}", q"{Papua Nova Gvineja}"
		, q"{Paragvaj}", q"{Peur}", q"{Filipini}", q"{Pitcairn}", q"{Poljska}", q"{Portugal}", q"{Portoriko}"
		, q"{Katar}", q"{Rumunija}", q"{Ruska Federacija}", q"{Ruanda}", q"{Reunion}", q"{Sveti Bartolomej}"
		, q"{Sveta Helena}", q"{Sveti Kitts i Nevis}", q"{Sveta Lucija}", q"{Sveti Martin (fr. deo)}"
		, q"{Sveti Petar i Miquelon}", q"{Sveti Vincent i Grenadini}", q"{Samoa}", q"{San Marino}"
		, q"{Sveti Toma i Princip}", q"{Saudijska Arabija}", q"{Senegal}", q"{Srbija}", q"{Sejšeli}"
		, q"{Siera Leone}", q"{Singapur}", q"{Sveti Martin (hol.deo)}", q"{Slovačka}", q"{Slovenija}"
		, q"{Salomoska Ostrva}", q"{Somalija}", q"{Južna Afrika}", q"{Južna Georgia i južni Sandwich}"
		, q"{Južni Sudan}", q"{Španija}", q"{Šri Lanka}", q"{Sudan}", q"{Surinam}", q"{Svalvard i Jan Mayen}"
		, q"{Swaziland}", q"{Švedska}", q"{Švajcarska}", q"{Sirija}", q"{Tajvan}", q"{Tadžikistan}"
		, q"{Tanaznija}", q"{Tajland}", q"{Istočni Timor}", q"{Togo}", q"{Tokelau}", q"{Tonga}", q"{Trinidad i Tobago}"
		, q"{Tunis}", q"{Turska}", q"{Turkmenistan}", q"{Ostrva Turks i Caicos}", q"{Tuvalu}", q"{Uganda}"
		, q"{Ukrajina}", q"{Ujedinjeni Arapski Emirati }", q"{Ujedinjeno Kraljevstvo}", q"{Sjedinjenje Američke Države}"
		, q"{Urugvaj}", q"{Uzbekistan}", q"{Vanuatu}", q"{Venecuela}", q"{Vietnam}", q"{Britanska Devičanska Ostrva}"
		, q"{Američka Devičanska Ostrva}", q"{Wallis i Futuna}", q"{Zapadna Sahara}", q"{Jemen}"
		, q"{Zambija}", q"{Zimbabve}" ];

		return choice(strs, this.rnd);
	}

	override string locationDefaultCountry() {
		const string[] strs =
		[ q"{Srbija}" ];

		return choice(strs, this.rnd);
	}

	override string locationPostcode() {
		const string[] strs =
		[ q"{#####}" ];

		return numberBuild(choice(strs, this.rnd));
	}

	override string locationSecondaryAddress() {
		const string[] strs =
		[ q"{Sprat #}", q"{Stan ##}" ];

		return numberBuild(choice(strs, this.rnd));
	}

	override string locationState() {
		const string[] strs =
		[ q"{Borski okrug}", q"{Braničevski okrug}", q"{Grad Beograd}", q"{Zaječarski okrug}"
		, q"{Zapadnobački okrug}", q"{Zlatiborski okrug}", q"{Jablanički okrug}", q"{Južnobanatski okrug}"
		, q"{Južnobački okrug}", q"{Kolubarski okrug}", q"{Kosovski okrug}", q"{Kosovskomitrovački okrug}"
		, q"{Kosovskopomoravski okrug}", q"{Mačvanski okrug}", q"{Moravički okrug}", q"{Nišavski okrug}"
		, q"{Pećki okrug}", q"{Pirotski okrug}", q"{Podunavski okrug}", q"{Pomoravski okrug}"
		, q"{Prizrenski okrug}", q"{Pčinjski okrug}", q"{Rasinski okrug}", q"{Raški okrug}"
		, q"{Severnobanatski okrug}", q"{Severnobački okrug}", q"{Srednjobanatski okrug}"
		, q"{Sremski okrug}", q"{Toplički okrug}", q"{Šumadijski okrug}" ];

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
		}
		return "";
	}

	override string locationStreetName() {
		const string[] strs =
		[ q"{1. sokače}", q"{1300 kaplara}", q"{14. decembra}", q"{16. oktobra}", q"{2. sokače}"
		, q"{20. oktobra}", q"{21. divizije}", q"{21. maja}", q"{22. oktobra}", q"{23. srpske udarne divizije}"
		, q"{27. marta}", q"{29. novembra}", q"{3. sokače}", q"{4. sokače}", q"{5. sokače}", q"{6. Ličke divizije}"
		, q"{6. aprila}", q"{6. sokače}", q"{7. jula}", q"{7. sokače}", q"{8. sokače}", q"{Abardareva}"
		, q"{Alaska}", q"{Albanska}", q"{Albanske spomenice}", q"{Aleksandra Deroka}", q"{Aleksandra Fleminga}"
		, q"{Aleksandra Glišića}", q"{Aleksandra Stambolijskog}", q"{Auto put Beograd Novi Sad}"
		, q"{Avde Karabegovića}", q"{Baba Višnjina}", q"{Bagremova}", q"{Bajdina}", q"{Baje Sekulića}"
		, q"{Bajronova}", q"{Bakarska}", q"{Bakićeva}", q"{Balkanska}", q"{Baltička}", q"{Balšina}"
		, q"{Bana Ivaniša}", q"{Bana Mladena}", q"{Banatska}", q"{Banijska}", q"{Belička}", q"{Belog bagrema}"
		, q"{Belokrajjnska}", q"{Belopalanačka}", q"{Beogradska}", q"{Bilećka}", q"{Bogoboja Atanackovića}"
		, q"{Bogojavljenska}", q"{Bogoljuba čukića}", q"{Bojadžijska}", q"{Bokeljska}", q"{Bosanska}"
		, q"{Bose Milićević}", q"{Bože Jankovića}", q"{Božice Divnić}", q"{Božidara Adžije}"
		, q"{Bulevar AVNOJa}", q"{Bulevar Arsenija Čarnojevića}", q"{Bulevar Mira}", q"{Bulevar Vojvode Bojovića}"
		, q"{Bulevar Vojvode Mišića}", q"{Bulevar Vojvode Putnika}", q"{Bulevar kralja Aleksandra}"
		, q"{Bulevar umetnosti}", q"{Camblakova}", q"{Cankareva}", q"{Cara Dušana}", q"{Cara Lazara}"
		, q"{Carice Milice}", q"{Cavtatska}", q"{Cerska}", q"{Cetinjska}", q"{Crnogorska}", q"{Crnojevića}"
		, q"{Crnotravska}", q"{Cvetanova ćuprija}", q"{Cvetna}", q"{Cvećarska}", q"{Cvijićeva}"
		, q"{Daljska}", q"{Dalmatinska}", q"{Danice Marković}", q"{Danijelova}", q"{Danila Bojovića}"
		, q"{Danila Ilića}", q"{Danila Kiša}", q"{Daruvarska}", q"{Davida Pajića}", q"{Debarska}"
		, q"{Deligradska}", q"{Despota Stefana}", q"{Devojačka}", q"{Dimitrija Koturovića}"
		, q"{Donja}", q"{Dositejeva}", q"{Dr Agostina Neta}", q"{Dr Ivana Ribara}", q"{Dr Izabele Haton}"
		, q"{Dr Jovana Danića}", q"{Dr Rozali Morton}", q"{Drage Ljočić}", q"{Drage Spasić}"
		, q"{Dragoslava Srejovića}", q"{Džona Kenedija}", q"{Egejska}", q"{Elija Fincija}", q"{Emila Zole}"
		, q"{Emilijana Joksimovića}", q"{Fabrisova}", q"{Filipa Višnjića}", q"{Finžgarova}"
		, q"{Frana Levstika}", q"{France Prešerna}", q"{Francuska}", q"{Fruškogorska}", q"{Galipoljska}"
		, q"{Gandijeva}", q"{Garibaldijeva}", q"{Garsije Lorke}", q"{Gastona Gravijea}", q"{General Živka Pavlovića}"
		, q"{Generala Aračića}", q"{Generala Ždanova}", q"{Geteova}", q"{Glamočka}", q"{Gligorija Vozarovića}"
		, q"{Golijska}", q"{Golsvortijeva}", q"{Gorenjska}", q"{Gornja}", q"{Gospodar Jevremova}"
		, q"{Gospodar Jovanova}", q"{Gostivarska}", q"{Gragorčićeva}", q"{Gramšijeva}", q"{Gračanička}"
		, q"{Gruje Miškovića}", q"{Grčića Milenka}", q"{Gundulićev venac}", q"{Guslarska}"
		, q"{Hadži Milentijeva}", q"{Hadži Prodanova}", q"{Hadži Ruvimova}", q"{Hadži Đerina}"
		, q"{Hajduk Stankova}", q"{Hajima Davića}", q"{Hanibala Lucića}", q"{Hercegovačka}"
		, q"{Heroja Milana Tepića}", q"{Husinskih rudara}", q"{Hvarska}", q"{Idvorska}", q"{Igmanska}"
		, q"{Ignjata Joba}", q"{Ilije Garašanina}", q"{Ilirska}", q"{Imotska}", q"{Indire Gandi}"
		, q"{Internacionalnih brigada}", q"{Isidore Sekulić}", q"{Ivana Milutinovića}", q"{Ivana Mičurina}"
		, q"{Ivanovačka}", q"{Ivice Devčića}", q"{Ivićeva}", q"{Izletnička}", q"{Izvorska}"
		, q"{Jablanička}", q"{Jabučka}", q"{Jakuba Kuburovića}", q"{Jana Kolara}", q"{Janković Stojana}"
		, q"{Jasenička}", q"{Jaše Prodanovića}", q"{Jefimijina}", q"{Jerneja Kopitara}", q"{Jerusalimska}"
		, q"{Jezdićeva}", q"{Jirečekova}", q"{Jonska}", q"{Jovana Avakumovića}", q"{Jovana Mikića}"
		, q"{Jovana Trajkovića}", q"{Kajuhova}", q"{Kalenićeva}", q"{Karamatina}", q"{Karađorđev trg}"
		, q"{Karla Lukača}", q"{Karlovačka}", q"{Karnedžijeva}", q"{Katanićeva}", q"{Katarine Milovuk}"
		, q"{Katićeva}", q"{Kačanička}", q"{Kedrova}", q"{Kej oslobođenja}", q"{Kijevska}", q"{Kirovljeva}"
		, q"{Klanačka}", q"{Klare Cetkin}", q"{Kneza Miloša}", q"{Kninska}", q"{Kolarčeva}", q"{Komovska}"
		, q"{Kondina}", q"{Konovljanska}", q"{Kopernikova}", q"{Kosančićev venac}", q"{Kosmajska}"
		, q"{Kosovska}", q"{Koste Trifkovića}", q"{Kostolačka}", q"{Kovačka}", q"{Kozjačka}"
		, q"{Kragujevačkih đaka}", q"{Kritska}", q"{Krivolačka}", q"{Krušedolska}", q"{Kruševačka}"
		, q"{Kumanovska}", q"{Kursulina}", q"{Kuršumlijska}", q"{Ladno brdo}", q"{Lazara Savatića}"
		, q"{Laze Kostića}", q"{Lenjinov Bulevar}", q"{Lepenička}", q"{Limska}", q"{Lipovačka}"
		, q"{Listopadna}", q"{Ljermontova}", q"{Ljube Šercera}", q"{Lole Ribara}", q"{Lopudska}"
		, q"{Lovačka}", q"{Lošinjska}", q"{Luja Adamiča}", q"{Lukijana Mušitskog}", q"{Magelanova}"
		, q"{Maglajska}", q"{Majdanpečka}", q"{Majke Jevrosime}", q"{Marijane Gregoran}", q"{Marije Bursać}"
		, q"{Marička}", q"{Marka Oreškovića}", q"{Marka Pola}", q"{Marulićeva}", q"{Maršala Birjuzova}"
		, q"{Mažuranićeva}", q"{Metohijska}", q"{Mihaila Đurića}", q"{Mike Alasa}", q"{Milana Premasunca}"
		, q"{Milana Rakića}", q"{Mile Dimić}", q"{Milice Srpkinje}", q"{Miloja Đaka}", q"{Miloša Pocerca}"
		, q"{Milunke Savić}", q"{Milutina Bojića}", q"{Milutina Milankovića}", q"{Mirijevski Bulevar}"
		, q"{Miročka}", q"{Mite Ružića}", q"{Mitra Bakića}", q"{Mlade Bosne}", q"{Mojkovačka}"
		, q"{Mosorska}", q"{Mostarska}", q"{Moše Pijade}", q"{Murska}", q"{Mutapova}", q"{Nade Dimić}"
		, q"{Nade Naumović}", q"{Nake Spasić}", q"{Namesnika Protića}", q"{Nehruova}", q"{Nemanjina}"
		, q"{Nerodimska}", q"{Neznanog junaka}", q"{Nikolaja Gogolja}", q"{Nikole Grulovića}"
		, q"{Nikole Markovića}", q"{Nikole Ostrovskog}", q"{Nikšićka}", q"{Nićifora Dučića}"
		, q"{Nova Skojevska}", q"{Novakova}", q"{Novogradska}", q"{Novosadska}", q"{Nušićeva}"
		, q"{Obalskih radnika}", q"{Obilićev venac}", q"{Oblakovska}", q"{Obrenovački put}"
		, q"{Ognjena Price}", q"{Ohridska}", q"{Olge Alkalaj}", q"{Olge Jovanović}", q"{Omladinska}"
		, q"{Omladinskih brigada}", q"{Opatijska}", q"{Orahova}", q"{Oračka}", q"{Orfelinova}", q"{Orlovska}"
		, q"{Osmana Đikića}", q"{Ozrenska}", q"{Oštreljska}", q"{Pabla Nerude}", q"{Paje Adamova}"
		, q"{Palih boraca}", q"{Palisadska}", q"{Palmira Toljatija}", q"{Palmotićeva}", q"{Pančevački put}"
		, q"{Partizanski put}", q"{Patrisa Lumumbe}", q"{Paunova}", q"{Pavla Papa}", q"{Paštrovićeva}"
		, q"{Pere Velimirovića}", q"{Petra Kočića}", q"{Petra Lekovića}", q"{Pešterska}"
		, q"{Pilota M. Petrovića}", q"{Pinkijeva}", q"{Pionirska}", q"{Pirotska}", q"{Piva Karamatijevića}"
		, q"{Pivljanina Baje}", q"{Plzenska}", q"{Pop Lukina}", q"{Požarevačka}", q"{Požeška}"
		, q"{Prenjska}", q"{Preševska}", q"{Prilepska}", q"{Primorska}", q"{Prokupačka}", q"{Prolomska}"
		, q"{Prote Mateje}", q"{Prvomajska}", q"{Ptujska}", q"{Pukovnika Bacića}", q"{Puškinova}"
		, q"{Radanska}", q"{Rade Končara}", q"{Radivoja Koraća}", q"{Radnička}", q"{Radoja Dakića}"
		, q"{Rajićeva}", q"{Ramska}", q"{Rankeova}", q"{Ratka Mitrovića}", q"{Ravanička}", q"{Reljina}"
		, q"{Ribnička}", q"{Rige od Fere}", q"{Risanska}", q"{Rospi ćuprija}", q"{Rovinjska}", q"{Roze Luksemburg}"
		, q"{Ruska}", q"{Ruzveltova}", q"{Ruđera Boškovića}", q"{Salvadora Aljendea}", q"{Save Jovanovića}"
		, q"{Save Kovačevića}", q"{Save Tekelije}", q"{Savski Trg}", q"{Savski nasip}", q"{Savski venac}"
		, q"{Senjanina Ive}", q"{Serdara Janka Vukotića}", q"{Severni bulevar}", q"{Sime Šolaje}"
		, q"{Simina}", q"{Simonidina}", q"{Siva stena}", q"{Skender begova}", q"{Skerlićeva}", q"{Skver Mire Trailović}"
		, q"{Slanački put}", q"{Slavka Rodić}", q"{Slavoljuba Vuksanovića}", q"{Sokobanjska}"
		, q"{Solunska}", q"{Somborska}", q"{Sonje Marinković}", q"{Sopoćanska}", q"{Srpskih udarnih brigada}"
		, q"{Stanka Paunovića Veljka}", q"{Stevana Opačića}", q"{Stevana Sremca}", q"{Strahinjića Bana}"
		, q"{Strma}", q"{Strumička}", q"{Studentski trg}", q"{Subotička}", q"{Susedgradska}", q"{Svetozara Markovića}"
		, q"{Svrljiška}", q"{Tadeuša Košćuška}", q"{Takovska}", q"{Tamnavska}", q"{Terazije}"
		, q"{Tetovska}", q"{Timočka}", q"{Tiršova}", q"{Todora Dukina}", q"{Tolstojeva}", q"{Treći bulevar}"
		, q"{Trg Nikole Pašića}", q"{Trg Oslobođenja}", q"{Trg Republike}", q"{Trg Slavija}"
		, q"{Trgovačka}", q"{Trogirska}", q"{Trstenjakova}", q"{Tršćanska}", q"{Ubska}", q"{Ugrinovačka}"
		, q"{Uralska}", q"{Uroša Predića}", q"{Uroša Trojanovića}", q"{Uskočka}", q"{Uzun Mirkova}"
		, q"{Učitelja Stojana}", q"{Ušće}", q"{Užička}", q"{Vajara Đoke Jovanovića}", q"{Vardarska}"
		, q"{Vareška}", q"{Vase Pelagića}", q"{Velebitska}", q"{Velike stepenice}", q"{Velizara Stankovića}"
		, q"{Veslina Masleše}", q"{Viktora Igoa}", q"{Viline Vode}", q"{Visoka}", q"{Visokog Stevana}"
		, q"{Vitanovačka}", q"{Višegradska}", q"{Vladete Kovačevića}", q"{Vladimira Popovića}"
		, q"{Vlajkovićeva}", q"{Vodovodska}", q"{Vojvode Stepe}", q"{Vukasovićeva}", q"{Zabrđanska}"
		, q"{Zagorska}", q"{Zaplanjska}", q"{Zeleno brdo}", q"{Zemunska}", q"{Zemunski put}", q"{Zetska}"
		, q"{Zmaj Jovina}", q"{Zvečanska}", q"{Ćirila i Metodija}", q"{Ćukovačka}", q"{Ćustendilska}"
		, q"{Čarlija Čaplina}", q"{Čegarska}", q"{Čelebićka}", q"{Čumićeva}", q"{Đakovačka}"
		, q"{Đerdapska}", q"{Đorđa Jovanovića}", q"{Đure Daničića}", q"{Đure Đakovića}"
		, q"{Šafarikova}", q"{Šantićeva}", q"{Šejkina}", q"{Šekspirova}", q"{Šetalište}", q"{Šilerova}"
		, q"{Školski trg}", q"{Šumatovačka}", q"{Šupljikčeva}", q"{Žabljačka}", q"{Žarka Zrenjanina}"
		, q"{Živka Davidovića}", q"{Živojina Lazića}", q"{Žička}" ];

		return choice(strs, this.rnd);
	}

	override string locationStreetPattern() {
		switch(uniform(0, 1, this.rnd)) {
			case 0: return locationStreetName();
		}
		return "";
	}

	override string personFemaleFirstName() {
		const string[] strs =
		[ q"{Adrijana}", q"{Aleksandra}", q"{Ana}", q"{Anabela}", q"{Anastasija}", q"{Andrea}", q"{Andrijana}"
		, q"{Aneta}", q"{Anica}", q"{Anita}", q"{Anja}", q"{Anka}", q"{Anđela}", q"{Ava}", q"{Biljana}", q"{Bisenija}"
		, q"{Blagica}", q"{Bobana}", q"{Bogdana}", q"{Bojana}", q"{Bora}", q"{Borka}", q"{Bosiljka}", q"{Božena}"
		, q"{Božica}", q"{Branka}", q"{Brankica}", q"{Ceca}", q"{Dajana}", q"{Daliborka}", q"{Damjanka}"
		, q"{Dana}", q"{Danijela}", q"{Danila}", q"{Danka}", q"{Darija}", q"{Darinka}", q"{Dejana}", q"{Desanka}"
		, q"{Dijana}", q"{Divna}", q"{Dobrila}", q"{Dorotea}", q"{Draga}", q"{Dragana}", q"{Draginja}"
		, q"{Drina}", q"{Dubravka}", q"{Dunja}", q"{Dušanka}", q"{Dušica}", q"{Duška}", q"{Elena}", q"{Eleonora}"
		, q"{Ema}", q"{Emilija}", q"{Evdokija}", q"{Gabrijela}", q"{Gala}", q"{Galina}", q"{Gorana}", q"{Gordana}"
		, q"{Hana}", q"{Ilinka}", q"{Ina}", q"{Irina}", q"{Ivanka}", q"{Jadranka}", q"{Jana}", q"{Jasmina}"
		, q"{Jasna}", q"{Jelena}", q"{Jelica}", q"{Jelisaveta}", q"{Jelka}", q"{Jevrosima}", q"{Jovana}"
		, q"{Jovanka}", q"{Julia}", q"{Julijana}", q"{Katarina}", q"{Klara}", q"{Kristina}", q"{Ksenija}"
		, q"{Lada}", q"{Lara}", q"{Leposava}", q"{Lidija}", q"{Ljiljana}", q"{Ljuba}", q"{Ljubica}", q"{Magdalena}"
		, q"{Maja}", q"{Malina}", q"{Marica}", q"{Marina}", q"{Markika}", q"{Marta}", q"{Maša}", q"{Mašinka}"
		, q"{Melenija}", q"{Mia}", q"{Milana}", q"{Milanka}", q"{Milena}", q"{Milica}", q"{Miljana}", q"{Mina}"
		, q"{Mira}", q"{Mirela}", q"{Mirjana}", q"{Mirka}", q"{Mirna}", q"{Mitra}", q"{Mlađana}", q"{Momira}"
		, q"{Nada}", q"{Nadežda}", q"{Nastja}", q"{Natalija}", q"{Nataša}", q"{Nađa}", q"{Neda}", q"{Nela}"
		, q"{Neva}", q"{Nevena}", q"{Nikoleta}", q"{Nikolina}", q"{Nina}", q"{Njegomirka}", q"{Ognjana}"
		, q"{Olga}", q"{Olgica}", q"{Olivera}", q"{Peruna}", q"{Petra}", q"{Petrija}", q"{Radina}", q"{Radmila}"
		, q"{Radojka}", q"{Rakita}", q"{Renja}", q"{Ristana}", q"{Roksana}", q"{Romana}", q"{Rumena}", q"{Ruža}"
		, q"{Sanda}", q"{Sandra}", q"{Sanja}", q"{Sara}", q"{Selena}", q"{Senka}", q"{Silvija}", q"{Simonida}"
		, q"{Slava}", q"{Slavica}", q"{Slavka}", q"{Slađana}", q"{Slobodanka}", q"{Smiljana}", q"{Snežana}"
		, q"{Sofija}", q"{Sonja}", q"{Srna}", q"{Stanislava}", q"{Staša}", q"{Stefana}", q"{Stojanka}"
		, q"{Sunčica}", q"{Suzana}", q"{Svetlana}", q"{Tamara}", q"{Tanja}", q"{Tara}", q"{Tatjana}", q"{Tea}"
		, q"{Teodora}", q"{Teona}", q"{Una}", q"{Vasilisa}", q"{Vera}", q"{Verica}", q"{Veselinka}", q"{Vesna}"
		, q"{Vida}", q"{Višnja}", q"{Vladana}", q"{Vlatka}", q"{Vojislava}", q"{Vujica}", q"{Vukica}"
		, q"{Zavida}", q"{Zora}", q"{Zorana}", q"{Zorka}", q"{Zvezdana}", q"{Čarna}", q"{Đurica}", q"{Željka}" ];

		return choice(strs, this.rnd);
	}

	override string personFirstName() {
		const string[] strs =
		[ q"{Adam}", q"{Adrijana}", q"{Aleksa}", q"{Aleksandar}", q"{Aleksandra}", q"{Aleksej}", q"{Aljoša}"
		, q"{Ana}", q"{Anabela}", q"{Anastasija}", q"{Anastasije}", q"{Andrea}", q"{Andrej}", q"{Andrija}"
		, q"{Andrijana}", q"{Anej}", q"{Aneta}", q"{Anica}", q"{Anita}", q"{Anja}", q"{Anka}", q"{Anđela}"
		, q"{Arsenije}", q"{Ava}", q"{Aćim}", q"{Berislav}", q"{Biljana}", q"{Bisenija}", q"{Blagica}"
		, q"{Blagoje}", q"{Boban}", q"{Bobana}", q"{Bogdan}", q"{Bogdana}", q"{Bogoljub}", q"{Bojan}", q"{Bojana}"
		, q"{Bora}", q"{Boris}", q"{Borivoje}", q"{Borjan}", q"{Borka}", q"{Bosiljka}", q"{Boško}", q"{Boža}"
		, q"{Božena}", q"{Božica}", q"{Božidar}", q"{Branimir}", q"{Branislav}", q"{Branka}", q"{Brankica}"
		, q"{Branko}", q"{Budimir}", q"{Ceca}", q"{Cvijan}", q"{Cvijetin}", q"{Dabiživ}", q"{Dajana}"
		, q"{Daliborka}", q"{Damir}", q"{Damjan}", q"{Damjanka}", q"{Dana}", q"{Danijela}", q"{Danila}"
		, q"{Danilo}", q"{Danka}", q"{Danko}", q"{Darija}", q"{Darinka}", q"{Darko}", q"{David}", q"{Davor}"
		, q"{Dejan}", q"{Dejana}", q"{Desanka}", q"{Desimir}", q"{Dijana}", q"{Dimitrije}", q"{Divna}"
		, q"{Dobrila}", q"{Dorotea}", q"{Draga}", q"{Dragan}", q"{Dragana}", q"{Draginja}", q"{Dragiša}"
		, q"{Dragoje}", q"{Dragojlo}", q"{Dragoljub}", q"{Dragoslav}", q"{Dragutin}", q"{Draža}", q"{Dražen}"
		, q"{Dren}", q"{Drina}", q"{Dubravka}", q"{Dunja}", q"{Dušan}", q"{Dušanka}", q"{Dušica}", q"{Duška}"
		, q"{Duško}", q"{Elena}", q"{Eleonora}", q"{Ema}", q"{Emilija}", q"{Evdokija}", q"{Filip}", q"{Filotije}"
		, q"{Gabrijela}", q"{Gala}", q"{Galina}", q"{Gavrilo}", q"{Georgije}", q"{Gerasim}", q"{Gligorije}"
		, q"{Gojko}", q"{Golub}", q"{Goran}", q"{Gorana}", q"{Gordan}", q"{Gordana}", q"{Grgur}", q"{Grigorije}"
		, q"{Hana}", q"{Hvalimir}", q"{Ignjat}", q"{Igor}", q"{Ilarion}", q"{Ilija}", q"{Ilinka}", q"{Ina}"
		, q"{Irina}", q"{Ivan}", q"{Ivanka}", q"{Ivica}", q"{Ivo}", q"{Jadranka}", q"{Jadranko}", q"{Jakov}"
		, q"{Jana}", q"{Jasmina}", q"{Jasna}", q"{Jelena}", q"{Jelica}", q"{Jelisaveta}", q"{Jelka}", q"{Jevrosima}"
		, q"{Jezdimir}", q"{Jovan}", q"{Jovana}", q"{Jovanka}", q"{Jugoslav}", q"{Julia}", q"{Julijana}"
		, q"{Kalinik}", q"{Katarina}", q"{Kirilo}", q"{Klara}", q"{Konstantin}", q"{Kosta}", q"{Kristijan}"
		, q"{Kristina}", q"{Krsto}", q"{Ksenija}", q"{Kuzman}", q"{Lada}", q"{Lara}", q"{Lazar}", q"{Leposava}"
		, q"{Lidija}", q"{Ljiljana}", q"{Ljuba}", q"{Ljubica}", q"{Ljubiša}", q"{Ljubomir}", q"{Luka}"
		, q"{Magdalena}", q"{Maja}", q"{Malina}", q"{Mališa}", q"{Marica}", q"{Marina}", q"{Marinko}"
		, q"{Marjan}", q"{Markika}", q"{Marko}", q"{Marta}", q"{Mateja}", q"{Maša}", q"{Mašinka}", q"{Melenija}"
		, q"{Mia}", q"{Mihailo}", q"{Mihajlo}", q"{Mija}", q"{Mijat}", q"{Mika}", q"{Miladin}", q"{Milan}"
		, q"{Milana}", q"{Milanka}", q"{Milanko}", q"{Mile}", q"{Milena}", q"{Mileta}", q"{Milica}", q"{Milisav}"
		, q"{Milić}", q"{Miljan}", q"{Miljana}", q"{Milojica}", q"{Milomir}", q"{Milorad}", q"{Miloš}"
		, q"{Milutin}", q"{Mina}", q"{Miodrag}", q"{Miomir}", q"{Mira}", q"{Mirela}", q"{Mirjana}", q"{Mirka}"
		, q"{Mirko}", q"{Mirna}", q"{Miroslav}", q"{Mitar}", q"{Mitra}", q"{Miša}", q"{Miško}", q"{Mladen}"
		, q"{Mlađana}", q"{Momir}", q"{Momira}", q"{Nada}", q"{Nadežda}", q"{Nastja}", q"{Natalija}"
		, q"{Nataša}", q"{Nađa}", q"{Nebojša}", q"{Neda}", q"{Nedeljko}", q"{Nela}", q"{Nemanja}", q"{Nenad}"
		, q"{Neva}", q"{Neven}", q"{Nevena}", q"{Nikola}", q"{Nikoleta}", q"{Nikolina}", q"{Nikša}", q"{Nina}"
		, q"{Njegomirka}", q"{Novak}", q"{Obrad}", q"{Obren}", q"{Ognjana}", q"{Ognjen}", q"{Olga}", q"{Olgica}"
		, q"{Oliver}", q"{Olivera}", q"{Ostoja}", q"{Paja}", q"{Pavle}", q"{Pera}", q"{Perica}", q"{Pero}"
		, q"{Peruna}", q"{Petar}", q"{Petko}", q"{Petra}", q"{Petrija}", q"{Predrag}", q"{Prvoslav}", q"{Radenko}"
		, q"{Radina}", q"{Radivoje}", q"{Radiša}", q"{Radmila}", q"{Radmilo}", q"{Radojka}", q"{Radomir}"
		, q"{Radosav}", q"{Radoslav}", q"{Radovan}", q"{Radoš}", q"{Radul}", q"{Rajko}", q"{Rakita}", q"{Ranko}"
		, q"{Ratimir}", q"{Raško}", q"{Relja}", q"{Renja}", q"{Ristana}", q"{Rodoljub}", q"{Roksana}"
		, q"{Romana}", q"{Rumena}", q"{Ruža}", q"{Sanda}", q"{Sandra}", q"{Sanja}", q"{Sara}", q"{Saša}"
		, q"{Selena}", q"{Senka}", q"{Silvija}", q"{Simo}", q"{Simonida}", q"{Siniša}", q"{Slava}", q"{Slavica}"
		, q"{Slavka}", q"{Slavoljub}", q"{Slađana}", q"{Slobodan}", q"{Slobodanka}", q"{Smiljana}"
		, q"{Snežana}", q"{Sofija}", q"{Sonja}", q"{Srboljub}", q"{Sredoje}", q"{Srna}", q"{Stanislav}"
		, q"{Stanislava}", q"{Stanko}", q"{Staša}", q"{Stefan}", q"{Stefana}", q"{Stevan}", q"{Stojan}"
		, q"{Stojanka}", q"{Strahinja}", q"{Sunčica}", q"{Suzana}", q"{Svetislav}", q"{Svetlana}", q"{Svetolik}"
		, q"{Svetomir}", q"{Tadija}", q"{Tamara}", q"{Tanja}", q"{Tara}", q"{Tatjana}", q"{Tea}", q"{Teodora}"
		, q"{Teona}", q"{Tihomir}", q"{Tomislav}", q"{Una}", q"{Vanja}", q"{Vasil}", q"{Vasilisa}", q"{Vasko}"
		, q"{Velibor}", q"{Velimir}", q"{Vera}", q"{Verica}", q"{Veselinka}", q"{Vesna}", q"{Vida}", q"{Vidak}"
		, q"{Višnja}", q"{Vladana}", q"{Vladimir}", q"{Vlastimir}", q"{Vlatka}", q"{Vojin}", q"{Vojislava}"
		, q"{Vujadin}", q"{Vujica}", q"{Vuk}", q"{Vukan}", q"{Vukašin}", q"{Vukica}", q"{Vukota}", q"{Zafir}"
		, q"{Zarije}", q"{Zavida}", q"{Zora}", q"{Zoran}", q"{Zorana}", q"{Zorka}", q"{Zvezdana}", q"{Zvonko}"
		, q"{Čarna}", q"{Časlav}", q"{Čedomir}", q"{Đorđe}", q"{Đura}", q"{Đurađ}", q"{Đurica}"
		, q"{Željka}" ];

		return choice(strs, this.rnd);
	}

	override string personLastName() {
		const string[] strs =
		[ q"{Abadžija}", q"{Abadžić}", q"{Abazović}", q"{Adamović}", q"{Adašević}", q"{Aguridić}"
		, q"{Ajvazović}", q"{Akifović}", q"{Aksentijević}", q"{Aksentić}", q"{Aksin}", q"{Aksić}"
		, q"{Aksović}", q"{Akšam}", q"{Aladić}", q"{Aladžić}", q"{Alaković}", q"{Alanović}", q"{Alargić}"
		, q"{Alavanja}", q"{Alavantić}", q"{Aličić}", q"{Aljančić}", q"{Alković}", q"{Almašac}"
		, q"{Alparac}", q"{Aluga}", q"{Andesilić}", q"{Andić}", q"{Andonov}", q"{Andonović}", q"{Andrejević}"
		, q"{Andrejin}", q"{Andrejić}", q"{Antonić}", q"{Antonović}", q"{Antović}", q"{Antunović}"
		, q"{Antušević}", q"{Anučin}", q"{Anušić}", q"{Anđelić}", q"{Anđelković}", q"{Aćimović}"
		, q"{Aćin}", q"{Aćić}", q"{Ačanski}", q"{Ačić}", q"{Ađanski}", q"{Ašanin}", q"{Ašađanin}"
		, q"{Aškraba}", q"{Aškrabić}", q"{Ašonja}", q"{Ašćerić}", q"{Babac}", q"{Babalj}", q"{Babarogić}"
		, q"{Babin}", q"{Babić}", q"{Babović}", q"{Bajčetić}", q"{Bajčić}", q"{Bajšanski}", q"{Bakal}"
		, q"{Balabanović}", q"{Balašević}", q"{Baletić}", q"{Balević}", q"{Balešević}", q"{Banić}"
		, q"{Banićević}", q"{Banjac}", q"{Banjak}", q"{Banjalić}", q"{Barišić}", q"{Barošević}"
		, q"{Baroševčić}", q"{Basara}", q"{Basarić}", q"{Bastać}", q"{Batnožić}", q"{Bekavac}"
		, q"{Bekjarev}", q"{Beko}", q"{Bekonja}", q"{Bekovac}", q"{Bekvalac}", q"{Bekčić}", q"{Belivuk}"
		, q"{Belić}", q"{Belojević}", q"{Belopoljac}", q"{Belović}", q"{Belovuković}", q"{Beloševac}"
		, q"{Belošević}", q"{Belčević}", q"{Benaković}", q"{Birtašević}", q"{Birčaković}"
		, q"{Birčanin}", q"{Bivolarević}", q"{Bizetić}", q"{Bizumić}", q"{Bićanin}", q"{Bjeletić}"
		, q"{Bjelica}", q"{Bjelinić}", q"{Bjelivuk}", q"{Bjelić}", q"{Bjeličić}", q"{Bjelja}", q"{Bjelkić}"
		, q"{Bjelobaba}", q"{Bjelobrk}", q"{Bjeloglav}", q"{Bjelogrlić}", q"{Bjelojević}", q"{Blaćanin}"
		, q"{Blašković}", q"{Blažanović}", q"{Bocić}", q"{Bocokić}", q"{Bodiroga}", q"{Bogisavljević}"
		, q"{Bogoljubović}", q"{Bogosavac}", q"{Bolta}", q"{Boltić}", q"{Bolunović}", q"{Bomeštar}"
		, q"{Bonderović}", q"{Bondžić}", q"{Borilović}", q"{Borinčević}", q"{Borisavljević}"
		, q"{Borkovački}", q"{Borković}", q"{Borčanin}", q"{Bosanac}", q"{Bosančić}", q"{Bosiljkić}"
		, q"{Bosiljković}", q"{Bosiljčić}", q"{Bozalo}", q"{Bozdok}", q"{Bozdokov}", q"{Božanić}"
		, q"{Božanović}", q"{Božićković}", q"{Božičić}", q"{Božičković}", q"{Bratojević}"
		, q"{Bratonožić}", q"{Bratović}", q"{Brezo}", q"{Brezovac}", q"{Brešković}", q"{Brežančić}"
		, q"{Brkanović}", q"{Brkić}", q"{Brđanin}", q"{Brđović}", q"{Buač}", q"{Buača}", q"{Bubalo}"
		, q"{Bucalo}", q"{Bucalović}", q"{Buljin}", q"{Buljubašić}", q"{Buljugić}", q"{Bulovan}"
		, q"{Bunuševac}", q"{Burani}", q"{Burazer}", q"{Burazor}", q"{Burević}", q"{Burgić}", q"{Butarević}"
		, q"{Cikota}", q"{Cilikan}", q"{Cimbaljević}", q"{Cimeša}", q"{Cvetković}", q"{Cvetljanin}"
		, q"{Cvetojević}", q"{Cvetuljski}", q"{Cvijan}", q"{Cvijanović}", q"{Cvijančević}", q"{Cvijetin}"
		, q"{Cvijetinović}", q"{Cvijetić}", q"{Cvijić}", q"{Cvjetičanin}", q"{Dabić}", q"{Dabižljević}"
		, q"{Dabović}", q"{Dafunić}", q"{Dagović}", q"{Daišević}", q"{Dajić}", q"{Dajlić}", q"{Dačković}"
		, q"{Dačović}", q"{Dedejić}", q"{Dedijer}", q"{Devedžić}", q"{Devetak}", q"{Devrnja}", q"{Deđanski}"
		, q"{Dimitrijević}", q"{Dimitrić}", q"{Dimitrovski}", q"{Dimić}", q"{Dimkić}", q"{Dimković}"
		, q"{Dimović}", q"{Dimčević}", q"{Dimčić}", q"{Dimšić}", q"{Dingarac}", q"{Dobrilović}"
		, q"{Dobrinković}", q"{Dolović}", q"{Domanović}", q"{Domazet}", q"{Domiševac}", q"{Dondur}"
		, q"{Donević}", q"{Dončić}", q"{Dopuđa}", q"{Dorić}", q"{Doronjski}", q"{Dorontić}", q"{Drešević}"
		, q"{Drinić}", q"{Drinjak}", q"{Drljan}", q"{Drljača}", q"{Drmanac}", q"{Drmanović}", q"{Drmončić}"
		, q"{Drvarević}", q"{Drvenica}", q"{Drča}", q"{Drčelić}", q"{Dumanjić}", q"{Dumnić}", q"{Dvizac}"
		, q"{Dvokić}", q"{Dvoranac}", q"{Dženopoljac}", q"{Džepina}", q"{Džigumović}", q"{Džigurski}"
		, q"{Džikić}", q"{Džinić}", q"{Džodanović}", q"{Egelja}", q"{Egeljić}", q"{Egerić}"
		, q"{Egić}", q"{Floričelović}", q"{Fodulović}", q"{Franić}", q"{Gadžić}", q"{Gagić}"
		, q"{Gagović}", q"{Gagričić}", q"{Galinac}", q"{Galjak}", q"{Galjen}", q"{Gavrilović}", q"{Gavrić}"
		, q"{Gavrović}", q"{Gazdić}", q"{Gazibara}", q"{Gazivoda}", q"{Gaćina}", q"{Gaćinović}"
		, q"{Gačanović}", q"{Gačević}", q"{Gačić}", q"{Gađanski}", q"{Gledić}", q"{Gleđa}"
		, q"{Glintić}", q"{Glođović}", q"{Gložanski}", q"{Gluhović}", q"{Glukčević}", q"{Glumac}"
		, q"{Grabež}", q"{Grabić}", q"{Grabovac}", q"{Gradištanac}", q"{Gradojević}", q"{Grgurević}"
		, q"{Grkavac}", q"{Grkinić}", q"{Grubnić}", q"{Guzina}", q"{Gučanin}", q"{Gušanović}", q"{Gušatović}"
		, q"{Gušavac}", q"{Guševac}", q"{Gušić}", q"{Gušović}", q"{Heleta}", q"{Hrkalović}", q"{Hrnjak}"
		, q"{Ibrić}", q"{Igov}", q"{Igrić}", q"{Ilin}", q"{Ilinčić}", q"{Ilisić}", q"{Ilić}", q"{Iličin}"
		, q"{Isakov}", q"{Ičelić}", q"{Ištoković}", q"{Išvan}", q"{Jablanov}", q"{Jaćimović}"
		, q"{Jaćović}", q"{Jašarević}", q"{Jeftić}", q"{Jeftović}", q"{Jelačić}", q"{Jelašić}"
		, q"{Jelisavac}", q"{Jereminov}", q"{Jeremić}", q"{Jergić}", q"{Jerinić}", q"{Jerinkić}"
		, q"{Jerkov}", q"{Jerković}", q"{Jevremov}", q"{Jevremović}", q"{Jevremčević}", q"{Jevrić}"
		, q"{Jevrosimov}", q"{Jevrosimović}", q"{Jevtanović}", q"{Jevtić}", q"{Jevtović}", q"{Jevđenić}"
		, q"{Jevđenović}", q"{Jevđević}", q"{Jezdimirović}", q"{Jezdić}", q"{Jocković}", q"{Jokanović}"
		, q"{Jokin}", q"{Jokić}", q"{Jokičić}", q"{Joković}", q"{Joksimović}", q"{Jovanović}"
		, q"{Jurašić}", q"{Jurišević}", q"{Jurišin}", q"{Jurišić}", q"{Jurjević}", q"{Kablinović}"
		, q"{Kadijević}", q"{Kainović}", q"{Kaitović}", q"{Kajganić}", q"{Kalaba}", q"{Kalabić}"
		, q"{Kalajanović}", q"{Kalajdžić}", q"{Kalajitović}", q"{Kalajić}", q"{Kalendić}", q"{Karajčić}"
		, q"{Karakašević}", q"{Karaman}", q"{Karamarković}", q"{Karamata}", q"{Karatošić}", q"{Karaulac}"
		, q"{Karaulić}", q"{Karavidić}", q"{Karać}", q"{Karađorđević}", q"{Karašićević}"
		, q"{Kačaniklić}", q"{Kačar}", q"{Kačarević}", q"{Kačavenda}", q"{Kašanin}", q"{Kašiković}"
		, q"{Kašterović}", q"{Kekić}", q"{Keleka}", q"{Keleman}", q"{Kitić}", q"{Kitonjić}", q"{Kićanović}"
		, q"{Kićeskulov}", q"{Kićevac}", q"{Kičema}", q"{Kičić}", q"{Kišfalubac}", q"{Kladar}"
		, q"{Kladarin}", q"{Klander}", q"{Klasanović}", q"{Klačar}", q"{Klašnja}", q"{Klikovac}"
		, q"{Klimović}", q"{Klinac}", q"{Klincov}", q"{Klinić}", q"{Kojčinović}", q"{Kojčić}"
		, q"{Kokanov}", q"{Kokanović}", q"{Koković}", q"{Kokoškov}", q"{Kolak}", q"{Kolaković}"
		, q"{Kolar}", q"{Kolarević}", q"{Kolarić}", q"{Kolarov}", q"{Kolonja}", q"{Kolović}", q"{Kolundžija}"
		, q"{Kolundžić}", q"{Komad}", q"{Komadinić}", q"{Komadinović}", q"{Komanov}", q"{Komanović}"
		, q"{Komar}", q"{Komarica}", q"{Komarnički}", q"{Komarov}", q"{Komarčević}", q"{Komarčić}"
		, q"{Komatina}", q"{Komatinović}", q"{Komatović}", q"{Komazec}", q"{Komljen}", q"{Komljenović}"
		, q"{Komluški}", q"{Komnenić}", q"{Komnenov}", q"{Komnenović}", q"{Korda}", q"{Kordin}", q"{Kordić}"
		, q"{Kordulup}", q"{Korica}", q"{Kostadinović}", q"{Kostin}", q"{Kostić}", q"{Kotaranin}"
		, q"{Kotaraš}", q"{Kotarlić}", q"{Kotarčević}", q"{Kotević}", q"{Kovinjalo}", q"{Kovinčić}"
		, q"{Kovjanić}", q"{Kovljenić}", q"{Kovrlija}", q"{Kovčin}", q"{Kozarac}", q"{Kozarev}", q"{Kozarević}"
		, q"{Kozarski}", q"{Kozić}", q"{Kozlica}", q"{Kozlina}", q"{Kozlovački}", q"{Košanin}", q"{Košarac}"
		, q"{Košević}", q"{Košničar}", q"{Košničarević}", q"{Košpić}", q"{Koštunica}", q"{Košutarac}"
		, q"{Košutić}", q"{Kragulj}", q"{Kraguljac}", q"{Krainčanić}", q"{Krajinović}", q"{Krajišnik}"
		, q"{Krasić}", q"{Kremanac}", q"{Kremenović}", q"{Kresoja}", q"{Kresojević}", q"{Kreštalica}"
		, q"{Krga}", q"{Krilović}", q"{Krinulović}", q"{Kristić}", q"{Krivaja}", q"{Krivaćević}"
		, q"{Krivokuća}", q"{Krivošija}", q"{Krivošić}", q"{Krivčević}", q"{Kričak}", q"{Krička}"
		, q"{Kričković}", q"{Krišan}", q"{Krišanov}", q"{Krišanović}", q"{Križić}", q"{Krkeljić}"
		, q"{Krkić}", q"{Krkljuš}", q"{Krkobabić}", q"{Krpović}", q"{Krsmanić}", q"{Krsmanović}"
		, q"{Krsmić}", q"{Krspogačin}", q"{Krstajić}", q"{Krstanović}", q"{Krstekanić}", q"{Krstin}"
		, q"{Krstinić}", q"{Krstivojević}", q"{Krstić}", q"{Krstičić}", q"{Krstonić}", q"{Krušković}"
		, q"{Kružević}", q"{Krvavac}", q"{Krčevinac}", q"{Krčmar}", q"{Krčmarević}", q"{Kupusinac}"
		, q"{Kuraica}", q"{Kuridža}", q"{Kurija}", q"{Kurilić}", q"{Kurjački}", q"{Kurmazović}"
		, q"{Kurnoga}", q"{Kurobasa}", q"{Kurtuma}", q"{Kurucić}", q"{Kuručev}", q"{Kurćubić}", q"{Kurčubić}"
		, q"{Kusanović}", q"{Kušić}", q"{Kušljević}", q"{Kušljić}", q"{Kuželj}", q"{Kužet}"
		, q"{Kvačanović}", q"{Kvekić}", q"{Kvrgić}", q"{Labalo}", q"{Laban}", q"{Labanac}", q"{Labotić}"
		, q"{Labus}", q"{Laketa}", q"{Laketić}", q"{Lakić}", q"{Laletin}", q"{Lalić}", q"{Lambić}"
		, q"{Lazanski}", q"{Lazarac}", q"{Lazarev}", q"{Lazarević}", q"{Lazarov}", q"{Lazendić}", q"{Lazetić}"
		, q"{Lazin}", q"{Lazinica}", q"{Lazić}", q"{Laćman}", q"{Lačanin}", q"{Lačnjevac}", q"{Lađevac}"
		, q"{Lađević}", q"{Lađinović}", q"{Lažetić}", q"{Lelović}", q"{Lemaić}", q"{Lemajić}"
		, q"{Lemić}", q"{Leontijević}", q"{Leposavić}", q"{Lepović}", q"{Lepšanović}", q"{Lero}"
		, q"{Lesendrić}", q"{Levajac}", q"{Lečić}", q"{Lešević}", q"{Lilić}", q"{Ljubojević}"
		, q"{Ljubomirović}", q"{Ljubotina}", q"{Ljubović}", q"{Lomić}", q"{Lomović}", q"{Lukač}"
		, q"{Lukendić}", q"{Lučanović}", q"{Lučar}", q"{Lučić}", q"{Majkić}", q"{Majović}", q"{Majstorović}"
		, q"{Malinić}", q"{Malivuk}", q"{Malićanin}", q"{Mamula}", q"{Manastirlić}", q"{Mandarić}"
		, q"{Mandić}", q"{Mandoković}", q"{Mandrapa}", q"{Manjak}", q"{Manjenčić}", q"{Marinković}"
		, q"{Marinović}", q"{Marinčić}", q"{Marisavljević}", q"{Marić}", q"{Marjanov}", q"{Marjanović}"
		, q"{Marković}", q"{Marsenić}", q"{Martać}", q"{Martinac}", q"{Martinov}", q"{Martinović}"
		, q"{Matijević}", q"{Matić}", q"{Opricović}", q"{Oprić}", q"{Opsenica}", q"{Opuić}", q"{Oraovčić}"
		, q"{Orašanin}", q"{Orlović}", q"{Oro}", q"{Palavestra}", q"{Palačković}", q"{Paligorić}"
		, q"{Palija}", q"{Palikuća}", q"{Palić}", q"{Pališaški}", q"{Panišić}", q"{Panjak}", q"{Panjević}"
		, q"{Parmaković}", q"{Parojčić}", q"{Parović}", q"{Patafta}", q"{Patarac}", q"{Patković}"
		, q"{Patrnogić}", q"{Pavličić}", q"{Pavlov}", q"{Pavlović}", q"{Pavčić}", q"{Pačanin}"
		, q"{Pačariz}", q"{Pađen}", q"{Pašagić}", q"{Pašalić}", q"{Pašić}", q"{Penezić}", q"{Penić}"
		, q"{Penjišević}", q"{Penović}", q"{Penčić}", q"{Peović}", q"{Pepelčević}", q"{Perlaš}"
		, q"{Pješivac}", q"{Pješčić}", q"{Plakalović}", q"{Plamenac}", q"{Plačić}", q"{Plejo}"
		, q"{Plemić}", q"{Pleskonjić}", q"{Popčić}", q"{Poštić}", q"{Požarac}", q"{Prebiračević}"
		, q"{Predin}", q"{Predić}", q"{Predojev}", q"{Predojević}", q"{Predović}", q"{Predragović}"
		, q"{Preočanin}", q"{Prerad}", q"{Prkosovački}", q"{Protić}", q"{Prošić}", q"{Putinčanin}"
		, q"{Putnik}", q"{Puzavac}", q"{Puzigaća}", q"{Raca}", q"{Radinović}", q"{Radisavić}", q"{Radisavljević}"
		, q"{Radisavčević}", q"{Radivojac}", q"{Radivojša}", q"{Radonja}", q"{Radonjanin}", q"{Radonjić}"
		, q"{Radotić}", q"{Radovac}", q"{Radovanac}", q"{Radovanković}", q"{Radovanlija}", q"{Radovanov}"
		, q"{Radulaški}", q"{Radulić}", q"{Radulj}", q"{Raduljesković}", q"{Raduljević}", q"{Radusilović}"
		, q"{Radusinović}", q"{Radušić}", q"{Raduški}", q"{Rafailović}", q"{Rajšić}", q"{Rakanović}"
		, q"{Rakas}", q"{Rapovac}", q"{Rasinac}", q"{Raspopović}", q"{Rašetarević}", q"{Rašetić}"
		, q"{Rašević}", q"{Rašović}", q"{Rendulić}", q"{Renovica}", q"{Renovčević}", q"{Repac}"
		, q"{Resković}", q"{Rečević}", q"{Romčević}", q"{Rondović}", q"{Rovčanin}", q"{Rozgić}"
		, q"{Ročkomanović}", q"{Rošević}", q"{Roškić}", q"{Rumenić}", q"{Samolov}", q"{Samolovac}"
		, q"{Sanadrović}", q"{Sandalj}", q"{Sandić}", q"{Sando}", q"{Simijonović}", q"{Simin}", q"{Simić}"
		, q"{Simićević}", q"{Simjanović}", q"{Simojlović}", q"{Simonović}", q"{Simulov}", q"{Simunović}"
		, q"{Simurdić}", q"{Sladaković}", q"{Sladić}", q"{Sladoje}", q"{Sladojević}", q"{Slamarski}"
		, q"{Slankamenac}", q"{Slatinac}", q"{Slijepac}", q"{Slijepčević}", q"{Slobodanović}"
		, q"{Sparić}", q"{Spasenić}", q"{Spasenović}", q"{Spasić}", q"{Spasković}", q"{Spasojev}"
		, q"{Spasojević}", q"{Stanijanović}", q"{Stanijević}", q"{Stanikić}", q"{Starovlah}"
		, q"{Stepanić}", q"{Stepanov}", q"{Stepanović}", q"{Stevelić}", q"{Stevilović}", q"{Suvajac}"
		, q"{Suvajdžić}", q"{Suvajčević}", q"{Suvačarov}", q"{Suzović}", q"{Sučević}", q"{Suđić}"
		, q"{Suša}", q"{Svirčev}", q"{Tamindžić}", q"{Tampolja}", q"{Tanjga}", q"{Tankosić}", q"{Tapavica}"
		, q"{Tapavički}", q"{Tatomirov}", q"{Teofilović}", q"{Teokarević}", q"{Teovanović}", q"{Tepavac}"
		, q"{Tepavčević}", q"{Tepić}", q"{Tepša}", q"{Tepšić}", q"{Terzija}", q"{Terzin}", q"{Terzić}"
		, q"{Tesla}", q"{Tevdenić}", q"{Tešanović}", q"{Tica}", q"{Tihomirović}", q"{Tijanić}"
		, q"{Timotić}", q"{Tintor}", q"{Tojić}", q"{Tomanović}", q"{Tomasović}", q"{Tomazović}"
		, q"{Tomaš}", q"{Tomović}", q"{Tomušilović}", q"{Tomčić}", q"{Tončić}", q"{Topalov}"
		, q"{Topalović}", q"{Topalski}", q"{Topisirović}", q"{Topić}", q"{Topolović}", q"{Treskavica}"
		, q"{Trikić}", q"{Trikošanin}", q"{Trivkanović}", q"{Ubavić}", q"{Ubavkić}", q"{Ubiparip}"
		, q"{Ubiparipović}", q"{Ubner}", q"{Ubović}", q"{Udicki}", q"{Udilović}", q"{Udovičić}"
		, q"{Udovički}", q"{Udovčić}", q"{Ugarak}", q"{Uglješić}", q"{Ugričić}", q"{Ugrčić}"
		, q"{Ukraden}", q"{Ulemek}", q"{Uzelac}", q"{Varinac}", q"{Varićak}", q"{Vejnović}", q"{Vekecki}"
		, q"{Vekić}", q"{Velaja}", q"{Velanac}", q"{Veseličić}", q"{Vesin}", q"{Vesić}", q"{Vesković}"
		, q"{Vračar}", q"{Vračarević}", q"{Vrugić}", q"{Vukelić}", q"{Vukelja}", q"{Vukeljić}"
		, q"{Vukobradović}", q"{Vukobrat}", q"{Vuksanović}", q"{Vukčević}", q"{Vukša}", q"{Vukšić}"
		, q"{Vuleta}", q"{Vuletaš}", q"{Vuletin}", q"{Vulić}", q"{Vulićević}", q"{Vulišić}", q"{Vulović}"
		, q"{Vulčević}", q"{Vunjak}", q"{Vunturišević}", q"{Vučeta}", q"{Vučetić}", q"{Vučevac}"
		, q"{Vučkovac}", q"{Vučković}", q"{Vučo}", q"{Vučurević}", q"{Zebić}", q"{Zec}", q"{Zejak}"
		, q"{Zekan}", q"{Zimonjić}", q"{Zinaić}", q"{Zinajić}", q"{Zindović}", q"{Zipalović}", q"{Zipančić}"
		, q"{Ziramov}", q"{Zirojević}", q"{Ćukalac}", q"{Ćukalović}", q"{Ćukić}", q"{Ćuković}"
		, q"{Ćukteraš}", q"{Ćulibrk}", q"{Ćuslović}", q"{Čamagić}", q"{Čamdžić}", q"{Čapkunović}"
		, q"{Čaprnjić}", q"{Čarapina}", q"{Čarapić}", q"{Čaraveša}", q"{Čarnić}", q"{Čarović}"
		, q"{Čavaljuga}", q"{Čavdarević}", q"{Čavić}", q"{Čokov}", q"{Čolak}", q"{Čolaković}"
		, q"{Čolanić}", q"{Đedović}", q"{Đekanović}", q"{Đekić}", q"{Đeković}", q"{Đelić}"
		, q"{Đelkapić}", q"{Đelmaš}", q"{Đelošević}", q"{Đenić}", q"{Đenović}", q"{Đerasimović}"
		, q"{Đerašević}", q"{Đergović}", q"{Đerisilo}", q"{Đerić}", q"{Đoković}", q"{Đolović}"
		, q"{Đukelić}", q"{Šmitran}", q"{Šmrčak}", q"{Šobota}", q"{Šorgić}", q"{Šormaz}", q"{Šotić}"
		, q"{Šotra}", q"{Šujdović}", q"{Šukalo}", q"{Šukalović}", q"{Šukara}", q"{Šutaković}"
		, q"{Šutanovac}", q"{Žerajić}", q"{Žeravica}", q"{Žirović}", q"{Živadinović}", q"{Živak}"
		, q"{Živaljević}", q"{Živanac}" ];

		return choice(strs, this.rnd);
	}

	override string personMaleFirstName() {
		const string[] strs =
		[ q"{Adam}", q"{Aleksa}", q"{Aleksandar}", q"{Aleksej}", q"{Aljoša}", q"{Anastasije}", q"{Andrej}"
		, q"{Andrija}", q"{Anej}", q"{Arsenije}", q"{Aćim}", q"{Berislav}", q"{Blagoje}", q"{Boban}", q"{Bogdan}"
		, q"{Bogoljub}", q"{Bojan}", q"{Boris}", q"{Borivoje}", q"{Borjan}", q"{Boško}", q"{Boža}", q"{Božidar}"
		, q"{Branimir}", q"{Branislav}", q"{Branko}", q"{Budimir}", q"{Cvijan}", q"{Cvijetin}", q"{Dabiživ}"
		, q"{Damir}", q"{Damjan}", q"{Danilo}", q"{Danko}", q"{Darko}", q"{David}", q"{Davor}", q"{Dejan}"
		, q"{Desimir}", q"{Dimitrije}", q"{Dragan}", q"{Dragiša}", q"{Dragoje}", q"{Dragojlo}", q"{Dragoljub}"
		, q"{Dragoslav}", q"{Dragutin}", q"{Draža}", q"{Dražen}", q"{Dren}", q"{Dušan}", q"{Duško}"
		, q"{Filip}", q"{Filotije}", q"{Gavrilo}", q"{Georgije}", q"{Gerasim}", q"{Gligorije}", q"{Gojko}"
		, q"{Golub}", q"{Goran}", q"{Gordan}", q"{Grgur}", q"{Grigorije}", q"{Hvalimir}", q"{Ignjat}", q"{Igor}"
		, q"{Ilarion}", q"{Ilija}", q"{Ivan}", q"{Ivica}", q"{Ivo}", q"{Jadranko}", q"{Jakov}", q"{Jezdimir}"
		, q"{Jovan}", q"{Jugoslav}", q"{Kalinik}", q"{Kirilo}", q"{Konstantin}", q"{Kosta}", q"{Kristijan}"
		, q"{Krsto}", q"{Kuzman}", q"{Lazar}", q"{Ljubiša}", q"{Ljubomir}", q"{Luka}", q"{Mališa}", q"{Marinko}"
		, q"{Marjan}", q"{Marko}", q"{Mateja}", q"{Mihailo}", q"{Mihajlo}", q"{Mija}", q"{Mijat}", q"{Mika}"
		, q"{Miladin}", q"{Milan}", q"{Milanko}", q"{Mile}", q"{Mileta}", q"{Milisav}", q"{Milić}", q"{Miljan}"
		, q"{Milojica}", q"{Milomir}", q"{Milorad}", q"{Miloš}", q"{Milutin}", q"{Miodrag}", q"{Miomir}"
		, q"{Mirko}", q"{Miroslav}", q"{Mitar}", q"{Miša}", q"{Miško}", q"{Mladen}", q"{Momir}", q"{Nebojša}"
		, q"{Nedeljko}", q"{Nemanja}", q"{Nenad}", q"{Neven}", q"{Nikola}", q"{Nikša}", q"{Novak}", q"{Obrad}"
		, q"{Obren}", q"{Ognjen}", q"{Oliver}", q"{Ostoja}", q"{Paja}", q"{Pavle}", q"{Pera}", q"{Perica}"
		, q"{Pero}", q"{Petar}", q"{Petko}", q"{Predrag}", q"{Prvoslav}", q"{Radenko}", q"{Radivoje}", q"{Radiša}"
		, q"{Radmilo}", q"{Radomir}", q"{Radosav}", q"{Radoslav}", q"{Radovan}", q"{Radoš}", q"{Radul}"
		, q"{Rajko}", q"{Ranko}", q"{Ratimir}", q"{Raško}", q"{Relja}", q"{Rodoljub}", q"{Saša}", q"{Simo}"
		, q"{Siniša}", q"{Slavoljub}", q"{Slobodan}", q"{Srboljub}", q"{Sredoje}", q"{Stanislav}", q"{Stanko}"
		, q"{Stefan}", q"{Stevan}", q"{Stojan}", q"{Strahinja}", q"{Svetislav}", q"{Svetolik}", q"{Svetomir}"
		, q"{Tadija}", q"{Tihomir}", q"{Tomislav}", q"{Vanja}", q"{Vasil}", q"{Vasko}", q"{Velibor}", q"{Velimir}"
		, q"{Vidak}", q"{Vladimir}", q"{Vlastimir}", q"{Vojin}", q"{Vujadin}", q"{Vuk}", q"{Vukan}", q"{Vukašin}"
		, q"{Vukota}", q"{Zafir}", q"{Zarije}", q"{Zoran}", q"{Zvonko}", q"{Časlav}", q"{Čedomir}", q"{Đorđe}"
		, q"{Đura}", q"{Đurađ}" ];

		return choice(strs, this.rnd);
	}

	override string personName() {
		const int rndInt = uniform(0, 1, this.rnd);

		if(rndInt >= 0 && rndInt < 1) {
			return personFirstName() ~ " " ~ personLastName();
		}

		return "";
	}

	override string phoneNumberFormats() {
		const string[] strs =
		[ q"{### ###}", q"{### ### ####}", q"{06# ### ## ##}", q"{+381## ### ## ##}", q"{00381 ## ### ###}" ];

		return numberBuild(choice(strs, this.rnd));
	}

}

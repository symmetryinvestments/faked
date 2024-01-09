module faked.faker_lv;

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

class Faker_lv : Faker_en {
@safe:
	this(int seed) {
		super(seed);
	}

	override string cellPhoneFormats() {
		const string[] strs =
		[ q"{2#######}", q"{(371) 2#######}", q"{+371 2#######}" ];

		return numberBuild(choice(strs, this.rnd));
	}

	override string commerceProductNameAdjective() {
		const string[] strs =
		[ q"{Mazs}", q"{Ergonomisks}", q"{Raupjš}", q"{Vieds}", q"{Lielisks}", q"{Neticams}", q"{Fantastisks}"
		, q"{Praktisks}", q"{Spalvains}", q"{Ciets}", q"{Mīksts}", q"{Rūgts}" ];

		return choice(strs, this.rnd);
	}

	override string commerceProductNameMaterial() {
		const string[] strs =
		[ q"{dzelzs}", q"{koka}", q"{betona}", q"{plastmasas}", q"{kokvilnas}", q"{granīta}", q"{gumijas}" ];

		return choice(strs, this.rnd);
	}

	override string commerceProductNameProduct() {
		const string[] strs =
		[ q"{krēsls}", q"{auto}", q"{dators}", q"{siksna}", q"{gredzens}", q"{galds}", q"{džemperis}", q"{zābaks}"
		, q"{kažoks}", q"{radio}", q"{skaļrunis}", q"{monitors}", q"{televizors}", q"{skapis}", q"{ritenis}"
		, q"{plakāts}", q"{ceļarullis}", q"{nazis}", q"{plāksteris}", q"{telefons}", q"{pončiks}" ];

		return choice(strs, this.rnd);
	}

	override string commerceDepartment() {
		const string[] strs =
		[ q"{Grāmatu}", q"{Filmu}", q"{Mūzikas}", q"{Spēļu}", q"{Elektronikas}", q"{Datoru}", q"{Mājas}"
		, q"{Dārzkopības}", q"{Bakaleja}", q"{Veselības}", q"{Skaistuma}", q"{Rotaļlietu}", q"{Bērnu}"
		, q"{Zīdaiņu}", q"{Apģerba}", q"{Apavu}", q"{Dārglietu}", q"{Sporta}", q"{Tūrisma}", q"{Auto}"
		, q"{Rūpniecības}" ];

		return choice(strs, this.rnd);
	}

	override string companyNamePattern() {
		final switch(uniform(0, 5, this.rnd)) {
			case 0: return companyPrefix() ~ " " ~ personMaleLastName();
			case 1: return companyPrefix() ~ " " ~ personMaleLastName() ~ " " ~ companySuffix();
			case 2: return companyPrefix() ~ " " ~ personFemaleLastName() ~ " " ~ companySuffix();
			case 3: return personMaleLastName() ~ " un " ~ personMaleLastName();
			case 4: return personMaleLastName() ~ ", " ~ personMaleLastName() ~ " un " ~ personMaleLastName();
		}
		return "";
	}

	override string companySuffix() {
		const string[] strs =
		[ q"{un partneri}", q"{holdings}", q"{grupa}", q"{aģentūra}" ];

		return choice(strs, this.rnd);
	}

	string companyPrefix() {
		const string[] strs =
		[ q"{SIA}", q"{AS}", q"{IU}", q"{Bezp.Org.}", q"{Firma}", q"{Biedrība}" ];

		return choice(strs, this.rnd);
	}

	override string dateMonthWide() {
		const string[] strs =
		[ q"{janvāris}", q"{februāris}", q"{marts}", q"{aprīlis}", q"{maijs}", q"{jūnijs}", q"{jūlijs}"
		, q"{augusts}", q"{septembris}", q"{oktobris}", q"{novembris}", q"{decembris}" ];

		return choice(strs, this.rnd);
	}

	override string dateMonthAbbr() {
		const string[] strs =
		[ q"{jan.}", q"{feb.}", q"{mar.}", q"{apr.}", q"{mai.}", q"{jūn.}", q"{jūl.}", q"{aug.}", q"{sep.}", q"{okt.}"
		, q"{nov.}", q"{dec.}" ];

		return choice(strs, this.rnd);
	}

	override string dateWeekdayWide() {
		const string[] strs =
		[ q"{Svētdiena}", q"{Pirmdiena}", q"{Otrdiena}", q"{Trešdiena}", q"{Ceturtdiena}", q"{Piektdiena}"
		, q"{Sestdiena}" ];

		return choice(strs, this.rnd);
	}

	override string dateWeekdayAbbr() {
		const string[] strs =
		[ q"{Pr}", q"{Ot}", q"{Tr}", q"{Ct}", q"{Pk}", q"{Se}", q"{Sv}" ];

		return choice(strs, this.rnd);
	}

	override string internetDomainSuffix() {
		const string[] strs =
		[ q"{lv}", q"{com}", q"{info}", q"{net}", q"{org}" ];

		return choice(strs, this.rnd);
	}

	override string internetFreeEmail() {
		const string[] strs =
		[ q"{inbox.lv}", q"{one.lv}", q"{mail.lv}", q"{outlook.lv}", q"{apollo.lv}", q"{yahoo.com}", q"{hotmail.com}"
		, q"{gmail.com}" ];

		return choice(strs, this.rnd);
	}

	override string locationBuildingNumber() {
		const string[] strs =
		[ q"{###}", q"{##}" ];

		return numberBuild(choice(strs, this.rnd));
	}

	override string locationCityName() {
		const string[] strs =
		[ q"{Ainaži}", q"{Aizkraukle}", q"{Aizpute}", q"{Aknīste}", q"{Aloja}", q"{Alūksne}", q"{Ape}"
		, q"{Auce}", q"{Baldone}", q"{Baloži}", q"{Balvi}", q"{Bauska}", q"{Brocēni}", q"{Cēsis}", q"{Cesvaine}"
		, q"{Dagda}", q"{Daugavpils}", q"{Dobele}", q"{Durbe}", q"{Grobiņa}", q"{Gulbene}", q"{Ikšķile}"
		, q"{Ilūkste}", q"{Jaunjelgava}", q"{Jēkabpils}", q"{Jelgava}", q"{Jūrmala}", q"{Kandava}"
		, q"{Kārsava}", q"{Krāslava}", q"{Kuldīga}", q"{Ķegums}", q"{Lielvārde}", q"{Liepāja}"
		, q"{Līgatne}", q"{Limbaži}", q"{Līvāni}", q"{Lubāna}", q"{Ludza}", q"{Madona}", q"{Mazsalaca}"
		, q"{Ogre}", q"{Olaine}", q"{Pāvilosta}", q"{Piltene}", q"{Pļaviņas}", q"{Preiļi}", q"{Priekule}"
		, q"{Rēzekne}", q"{Rīga}", q"{Rūjiena}", q"{Sabile}", q"{Salacgrīva}", q"{Salaspils}", q"{Saldus}"
		, q"{Saulkrasti}", q"{Seda}", q"{Sigulda}", q"{Skrunda}", q"{Smiltene}", q"{Staicele}", q"{Stende}"
		, q"{Strenči}", q"{Subate}", q"{Talsi}", q"{Tukums}", q"{Valdemārpils}", q"{Valka}", q"{Valmiera}"
		, q"{Vangaži}", q"{Varakļāni}", q"{Ventspils}", q"{Viesīte}", q"{Viļaka}", q"{Viļāni}"
		, q"{Zilupe}" ];

		return choice(strs, this.rnd);
	}

	override string locationCityPattern() {
		final switch(uniform(0, 1, this.rnd)) {
			case 0: return locationCityName();
		}
		return "";
	}

	override string locationCountry() {
		const string[] strs =
		[ q"{Andora}", q"{Apvienotie Arābu Emirāti}", q"{Afganistāna}", q"{Albānija}", q"{Armēnija}"
		, q"{Antiļas}", q"{Angola}", q"{Antarktika}", q"{Argentīna}", q"{Amerikāņu Samoa}", q"{Austrija}"
		, q"{Austrālija}", q"{Azerbaidžāna}", q"{Bosnija un Hercegovina}", q"{Barbadosa}", q"{Bangladeša}"
		, q"{Beļģija}", q"{Burkinafaso}", q"{Bulgārija}", q"{Bahreina}", q"{Burundija}", q"{Benina}"
		, q"{Bruneja}", q"{Bolīvija}", q"{Brazīlija}", q"{Butāna}", q"{Buvē sala}", q"{Botsvāna}"
		, q"{Baltkrievija}", q"{Beliza}", q"{Kanāda}", q"{Kongo}", q"{Šveice}", q"{Kotdivuāra}", q"{Kuka salas}"
		, q"{Čīle}", q"{Kamerūna}", q"{Ķīna}", q"{Kolumbija}", q"{Kostarika}", q"{Kuba}", q"{Kaboverde}"
		, q"{Kipra}", q"{Čehija}", q"{Vācija}", q"{Dānija}", q"{Dominika}", q"{Alžīrija}", q"{Ekvadora}"
		, q"{Igaunija}", q"{Ēģipte}", q"{Spānija}", q"{Etiopija}", q"{Somija}", q"{Fidži}", q"{Francija}"
		, q"{Gabona}", q"{Lielbritānija}", q"{Grenāda}", q"{Gruzija}", q"{Gana}", q"{Grenlande}", q"{Gambija}"
		, q"{Gvineja}", q"{Gvadelupa}", q"{Grieķija}", q"{Gvatemala}", q"{Guama}", q"{Gajāna}", q"{Honkonga}"
		, q"{Hondurasa}", q"{Horvātija}", q"{Haiti}", q"{Ungārija}", q"{Indonēzija}", q"{Īrija}"
		, q"{Izraēla}", q"{Indija}", q"{Irāka}", q"{Irāna}", q"{Islande}", q"{Itālija}", q"{Jamaika}"
		, q"{Jordānija}", q"{Japāna}", q"{Kenija}", q"{Kirgizstāna}", q"{Kambodža}", q"{Korejas Tautas Demokrātiskā Republika}"
		, q"{Korejas Republika}", q"{Kuveita}", q"{Kaimanu salas}", q"{Kazahstāna}", q"{Laosa}"
		, q"{Libāna}", q"{Lihtenšteina}", q"{Šrilanka}", q"{Libērija}", q"{Lesoto}", q"{Lietuva}"
		, q"{Luksemburga}", q"{Latvija}", q"{Lībija}", q"{Maroka}", q"{Monako}", q"{Moldova}", q"{Madagaskara}"
		, q"{Maķedonija}", q"{Mali}", q"{Mongolija}", q"{Makao}", q"{Martinika}", q"{Mauritānija}"
		, q"{Montserrata}", q"{Malta}", q"{Maurīcija}", q"{Maldīvija}", q"{Malāvija}", q"{Meksika}"
		, q"{Malaizija}", q"{Mozambika}", q"{Namībija}", q"{Nigēra}", q"{Nigērija}", q"{Nikaragva}"
		, q"{Nīderlande}", q"{Norvēģija}", q"{Nepāla}", q"{Jaunzēlande}", q"{Omāna}", q"{Panama}"
		, q"{Peru}", q"{Filipīnas}", q"{Pakistāna}", q"{Polija}", q"{Puertoriko}", q"{Portugāle}"
		, q"{Paragvaja}", q"{Katara}", q"{Rumānija}", q"{Krievija}", q"{Ruanda}", q"{Saūda Arābija}"
		, q"{Sudāna}", q"{Zviedrija}", q"{Singapūra}", q"{Slovēnija}", q"{Slovākija}", q"{Sjerraleone}"
		, q"{Sanmarīno}", q"{Senegāla}", q"{Somālija}", q"{Surinama}", q"{Salvadora}", q"{Sīrija}"
		, q"{Svazilenda}", q"{Čada}", q"{Togo}", q"{Taizeme}", q"{Tadžikistāna}", q"{Turkmenistāna}"
		, q"{Tunisija}", q"{Tonga}", q"{Turcija}", q"{Taivāna}", q"{Tanzānija}", q"{Ukraina}", q"{Uganda}"
		, q"{Amerikas Savienotās Valstis}", q"{Urugvaja}", q"{Uzbekistāna}", q"{Venecuēla}"
		, q"{Vjetnama}", q"{Jemena}", q"{Zambija}", q"{Zimbabve}" ];

		return choice(strs, this.rnd);
	}

	override string locationDefaultCountry() {
		const string[] strs =
		[ q"{Latvija}" ];

		return choice(strs, this.rnd);
	}

	override string locationPostcode() {
		const string[] strs =
		[ q"{LV####}", q"{LV-####}" ];

		return numberBuild(choice(strs, this.rnd));
	}

	override string locationSecondaryAddress() {
		const string[] strs =
		[ q"{dz. ###}", q"{- ###}" ];

		return numberBuild(choice(strs, this.rnd));
	}

	override string locationState() {
		const string[] strs =
		[ q"{Aizkraukles raj.}", q"{Alūksnes raj.}", q"{Baltijas jūra}", q"{Balvu raj.}", q"{Bauskas raj.}"
		, q"{Cēsu raj.}", q"{Daugavpils raj.}", q"{Dobeles raj.}", q"{Gulbenes raj.}", q"{Jēkabpils raj.}"
		, q"{Jelgavas raj.}", q"{Jūrmala}", q"{Krāslavas raj.}", q"{Kuldīgas raj.}", q"{Liepājas raj.}"
		, q"{Limbažu raj.}", q"{Ludzas raj.}", q"{Madonas raj.}", q"{Ogres raj.}", q"{Preiļu raj.}"
		, q"{Rēzeknes raj.}", q"{Rīga un Rīgas raj.}", q"{Saldus raj.}", q"{Talsu raj.}", q"{Tukuma raj.}"
		, q"{Valkas raj.}", q"{Valmieras raj.}", q"{Ventspils raj.}" ];

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

	override string locationStreetName() {
		const string[] strs =
		[ q"{13. janvāra}", q"{Admirāļu}", q"{Airītes}", q"{Akaču}", q"{Akadēmijas}", q"{Akadēmiķa Mstislava Keldiša}"
		, q"{Akāciju}", q"{Aklā}", q"{Akmeņu}", q"{Aleksandra Bieziņa}", q"{Aleksandra Čaka}"
		, q"{Alfrēda Kalniņa}", q"{Alīses}", q"{Alksnāja}", q"{Amālijas}", q"{Anglikāņu}"
		, q"{Anniņmuižas}", q"{Apakšgrāvja}", q"{Apmetņu}", q"{Apriķu}", q"{Arsenāla}", q"{Artilērijas}"
		, q"{Asītes}", q"{Atgāzenes}", q"{Atgriežu}", q"{Atpūtas}", q"{Audēju}", q"{Augļu}", q"{Augšiela}"
		, q"{Augšzemes}", q"{Ābolu}", q"{Āpšu}", q"{Ārlavas}", q"{Babītes}", q"{Baložu}", q"{Baumaņa}"
		, q"{Bārbeles}", q"{Bārddziņu}", q"{Bāriņu}", q"{Bātas}", q"{Beverīnas}", q"{Bērzlapu}"
		, q"{Bērzupes}", q"{Bieķensalas}", q"{Biešu}", q"{Bišu}", q"{Bīskapa}", q"{Blaumaņa}"
		, q"{Blīdenes}", q"{Bramberģes}", q"{Brigādes}", q"{Briņģu}", q"{Brīvības}", q"{Bruņinieku}"
		, q"{Brūkleņu}", q"{Bukaišu}", q"{Centrāltirgus}", q"{Cepļa}", q"{Cēres}", q"{Cigoriņu}"
		, q"{Cīruļu}", q"{Čuguna}", q"{Dandāles}", q"{Dauguļu}", q"{Dāliju}", q"{Dārzaugļu}"
		, q"{Dārzciema}", q"{Dārziņu}", q"{Dignājas}", q"{Dikļu}", q"{Dīķa}", q"{Dreiliņu}"
		, q"{Dricānu}", q"{Dzelzceļa}", q"{Dzeņu}", q"{Dzērvju}", q"{Džūkstes}", q"{Ernesta Birznieka-Upīša}"
		, q"{Ernestīnes}", q"{Ērgļu}", q"{Festivāla}", q"{Firsa Sadovņikova}", q"{Friča Brīvzemnieka}"
		, q"{Fridriķa}", q"{Gaiziņa}", q"{Gleznotāju}", q"{Glūdas}", q"{Gogoļa}", q"{Granīta}"
		, q"{Grebenščikova}", q"{Grenču}", q"{Grēcinieku}", q"{Grēdu}", q"{Grīšļu}", q"{Grobiņas}"
		, q"{Ģertrūdes}", q"{Ģimnastikas}", q"{Hermaņa}", q"{Ikšķiles}", q"{Ilmājas}", q"{Indriķa}"
		, q"{Inženieru}", q"{Īsā}", q"{Īvandes}", q"{Īves}", q"{Jasmuižas}", q"{Jāņa}", q"{Jāņa Asara}"
		, q"{Jāņa Čakstes}", q"{Jāņa Endzelīna}", q"{Jāņa Grestes}", q"{Jāņavārtu}"
		, q"{Jāņogu}", q"{Jēkaba}", q"{Jēkabpils}", q"{Jēzusbaznīcas}", q"{Jukuma Vācieša}"
		, q"{Jūrkalnes}", q"{Kalēju}", q"{Kalētu}", q"{Kaļķu}", q"{Kameņu}", q"{Kaņiera}", q"{Kapseļu}"
		, q"{Kartupeļu}", q"{Katoļu}", q"{Kāļu}", q"{Kārļa Ulmaņa}", q"{Kārsavas}", q"{Klāņu}"
		, q"{Komētas}", q"{Konrāda}", q"{Kraukļu}", q"{Krāmu}", q"{Krāslavas}", q"{Krāsotāju}"
		, q"{Krišjāņa Barona}", q"{Krišjāņa Valdemāra}", q"{Krīdenera}", q"{Krūzes}"
		, q"{Kukšu}", q"{Kursīšu}", q"{Kviešu}", q"{Ķekavas}", q"{Ķemeru}", q"{Ķengaraga}", q"{Ķēniņu}"
		, q"{Ķivuļu}", q"{Latviešu strēlnieku}", q"{Lavīzes}", q"{Lāčplēša}", q"{Lieģu}"
		, q"{Liepājas}", q"{Lībagu}", q"{Līdaku}", q"{Līdera}", q"{Līksnas}", q"{Līvānu}", q"{Līvciema}"
		, q"{Līves}", q"{Lokomotīves}", q"{Lubānas}", q"{Ludviķa}", q"{Lutriņu}", q"{Ļaudonas}"
		, q"{Ļermontova}", q"{Magoņu}", q"{Makša}", q"{Malēju}", q"{Matīsa}", q"{Mazā Bauskas}"
		, q"{Mazā Bišu}", q"{Mazā Cepļa}", q"{Mazā Jaunavu}", q"{Mazā Kalna}", q"{Mazā Krasta}"
		, q"{Mazā Lubānas}", q"{Mazā Matīsa}", q"{Mazā Miesnieku}", q"{Mazā Monētu}", q"{Mazā Muzeja}"
		, q"{Mazā Nometņu}", q"{Mazā Pils}", q"{Mazā Smilšu}", q"{Mazā Stērstu}", q"{Mazā Trokšņu}"
		, q"{Mālu}", q"{Māras aleja}", q"{Mārstaļu}", q"{Mārupes}", q"{Merķeļa}", q"{Mežkalna}"
		, q"{Mežmalas}", q"{Mežotnes}", q"{Mēmeles}", q"{Mērsraga}", q"{Mūku}", q"{Mūkupurva}"
		, q"{Mūkusalas}", q"{Mūrnieku}", q"{Naudītes}", q"{Nāras}", q"{Neļķu}", q"{Nēģu}", q"{Nīgrandes}"
		, q"{Nīkrāces}", q"{Ojāra Vācieša}", q"{Olīvu}", q"{Ormaņu}", q"{Pampāļu}", q"{Paula Lejiņa}"
		, q"{Pārmiju}", q"{Pārslas}", q"{Pērkones}", q"{Pērnavas}", q"{Pērses}", q"{Pēterbaznīcas}"
		, q"{Pilsoņu}", q"{Pīpeņu}", q"{Planīcas}", q"{Plaužu}", q"{Pleskodāles}", q"{Plēnes}"
		, q"{Plēsuma}", q"{Plūmju}", q"{Pļavas}", q"{Pļaviņu}", q"{Pļavnieku}", q"{Poļu}", q"{Prāgas}"
		, q"{Preiļu}", q"{Prūšu}", q"{Purmsātu}", q"{Puškina}", q"{Pūpolu}", q"{Raiņa}", q"{Raņķa}"
		, q"{Raušu}", q"{Rāceņu}", q"{Rencēnu}", q"{Rēzeknes}", q"{Rēznas}", q"{Riharda Vāgnera}"
		, q"{Rikšotāju}", q"{Rīdzenes}", q"{Rītausmas}", q"{Rītupes}", q"{Robežu}", q"{Rubeņkalna}"
		, q"{Rudbāržu}", q"{Rušonu}", q"{Rūdolfa}", q"{Rūjienas}", q"{Rūsiņa}", q"{Sapņu}", q"{Sarkanā}"
		, q"{Sārtes}", q"{Sātiņu}", q"{Sējas}", q"{Sērenes}", q"{Sieksātes}", q"{Sīpeles}", q"{Sīpolu}"
		, q"{Skaņu}", q"{Skārņu}", q"{Skrīnes}", q"{Slāvu}", q"{Smārdes}", q"{Smilšu}", q"{Spaļu}"
		, q"{Sparģeļu}", q"{Spāres}", q"{Spārnu}", q"{Speķa}", q"{Spīdolas}", q"{Spīķeru}", q"{Staļģenes}"
		, q"{Stāvā}", q"{Stērstu}", q"{Stopiņu}", q"{Strenču}", q"{Strūgu}", q"{Suntažu}", q"{Sūnu}"
		, q"{Svētes}", q"{Šampētera}", q"{Šaurā}", q"{Šautuves}", q"{Šķirotavas}", q"{Šķūņu}"
		, q"{Tadaiķu}", q"{Taisnā}", q"{Teātra}", q"{Tempļa}", q"{Terēzes}", q"{Tējas}", q"{Tērbatas}"
		, q"{Tēriņu}", q"{Tērvetes}", q"{Tipogrāfijas}", q"{Tirgoņu}", q"{Tīnūžu}", q"{Tīraines}"
		, q"{Tīreļa}", q"{Tīruma}", q"{Torņa}", q"{Torņakalna}", q"{Trokšņu}", q"{Turgeņeva}"
		, q"{Ugāles}", q"{Upesgrīvas}", q"{Ūbeles}", q"{Ūdensvada}", q"{Vaiņodes}", q"{Valdeķu}"
		, q"{Valtaiķu}", q"{Vaļņu}", q"{Varakļānu}", q"{Varšavas}", q"{Vārnu}", q"{Vecpilsētas}"
		, q"{Velēnu}", q"{Vēja}", q"{Vienības}", q"{Viesītes}", q"{Viļānu}", q"{Virānes}", q"{Virsaišu}"
		, q"{Visvalža}", q"{Višķu}", q"{Zaķu}", q"{Zaļenieku}", q"{Zāļu}", q"{Zeltiņu}", q"{Zeļļu}"
		, q"{Zemaišu}", q"{Zemitāna}", q"{Zemītes}", q"{Zuteņu}", q"{Zvaigžņu}", q"{Zvārdes}"
		, q"{Zvārtavas}", q"{Žaņa Lipkes}", q"{Žīguru}", q"{Žubīšu}" ];

		return choice(strs, this.rnd);
	}

	override string locationStreetPattern() {
		final switch(uniform(0, 1, this.rnd)) {
			case 0: return locationStreetName() ~ " " ~ locationStreetSuffix();
		}
		return "";
	}

	override string locationStreetSuffix() {
		const string[] strs =
		[ q"{iela}", q"{bulvāris}", q"{gatve}", q"{gāte}", q"{laukums}", q"{dambis}" ];

		return choice(strs, this.rnd);
	}

	override string loremWords() {
		const string[] strs =
		[ q"{ā}", q"{āb}", q"{ābbās}", q"{ābduco}", q"{ābēo}", q"{ābscīdo}", q"{ābscondītus}"
		, q"{ābsēns}", q"{ābsorbēo}", q"{ābsquē}", q"{ābstērgo}", q"{ābsum}", q"{ābundāns}"
		, q"{ābutor}", q"{āccēdo}", q"{āccēndo}", q"{āccēptus}", q"{āccommodo}", q"{āččūšāmūš}"
		, q"{āččūšāņtīūm}", q"{āccusātor}", q"{ācēr}", q"{ācērbītās}", q"{ācērvus}"
		, q"{ācīdus}", q"{ācīēs}", q"{ācquīro}", q"{ācsī}", q"{ād}", q"{ādāmo}", q"{ādāugēo}"
		, q"{āddo}", q"{ādduco}", q"{ādēmptīo}", q"{ādēo}", q"{ādēptīo}", q"{ādfēctus}"
		, q"{ādfēro}", q"{ādfīcīo}", q"{ādflīcto}", q"{ādhāēro}", q"{ādhuc}", q"{ādīcīo}"
		, q"{ādīmplēo}", q"{ādīnvēntītīās}", q"{ādīpīščī}", q"{ādīpīscor}", q"{ādīuvo}"
		, q"{ādmīnīstrātīo}", q"{ādmīrātīo}", q"{ādmītto}", q"{ādmonēo}", q"{ādmovēo}"
		, q"{ādnuo}", q"{ādopto}", q"{ādsīduē}", q"{ādstrīngo}", q"{ādsuēsco}", q"{ādsum}"
		, q"{ādulātīo}", q"{ādulēscēns}", q"{āduro}", q"{ādvēnīo}", q"{ādvērsus}", q"{ādvoco}"
		, q"{āēdīfīcīum}", q"{āēgēr}", q"{āēgrē}", q"{āēgrotātīo}", q"{āēgrus}"
		, q"{āēnēus}", q"{āēquītās}", q"{āēquus}", q"{āēr}", q"{āēstās}", q"{āēstīvus}"
		, q"{āēstus}", q"{āētās}", q"{āētērnus}", q"{āgēr}", q"{āggēro}", q"{āggrēdīor}"
		, q"{āgnītīo}", q"{āgnosco}", q"{āgo}", q"{āīt}", q"{āīunt}", q"{āļīāš}", q"{ālīēnus}"
		, q"{ālīī}", q"{ālīoquī}", q"{ālīquā}", q"{āļīqūām}", q"{āļīqūīd}", q"{ālīus}"
		, q"{āllātus}", q"{ālo}", q"{āltēr}", q"{āltus}", q"{ālvēus}", q"{āmārītudo}", q"{āmbītus}"
		, q"{āmbulo}", q"{āmēt}", q"{āmīcītīā}", q"{āmīculum}", q"{āmīssīo}", q"{āmītā}"
		, q"{āmītto}", q"{āmo}", q"{āmor}", q"{āmovēo}", q"{āmplēxus}", q"{āmplītudo}", q"{āmplus}"
		, q"{āncīllā}", q"{āngēlus}", q"{āngulus}", q"{āngustus}", q"{ānīmādvērto}", q"{ānīmī}"
		, q"{āņīmī}", q"{ānīmus}", q"{ānnus}", q"{ānsēr}", q"{āntē}", q"{āntēā}", q"{āntēpono}"
		, q"{āntīquus}", q"{āpērīām}", q"{āpērīo}", q"{āpērtē}", q"{āpostolus}", q"{āppārātus}"
		, q"{āppēllo}", q"{āppono}", q"{āpposītus}", q"{āpprobo}", q"{āpto}", q"{āptus}", q"{āpud}"
		, q"{āquā}", q"{ārā}", q"{ārānēā}", q"{ārbītro}", q"{ārbor}", q"{ārbustum}", q"{ārcā}"
		, q"{ārcēo}", q"{ārcēsso}", q"{ārčhītēčto}", q"{ārcus}", q"{ārgēntum}", q"{ārgumēntum}"
		, q"{ārguo}", q"{ārmā}", q"{ārmārīum}", q"{āro}", q"{ārs}", q"{ārtīculus}", q"{ārtīfīcīosē}"
		, q"{ārto}", q"{ārx}", q"{āscīsco}", q"{āscīt}", q"{āspēr}", q"{āšpērīorēš}", q"{āšpērņātūr}"
		, q"{āspīcīo}", q"{āsporto}", q"{āssēntātor}", q"{āššūmēņdā}", q"{āstrum}"
		, q"{āt}", q"{ātāvus}", q"{ātēr}", q"{ātqūē}", q"{ātquī}", q"{ātrocītās}", q"{ātrox}"
		, q"{āttēro}", q"{āttollo}", q"{āttonbītus}", q"{āuctor}", q"{āuctus}", q"{āudācīā}"
		, q"{āudāx}", q"{āudēntīā}", q"{āudēo}", q"{āudīo}", q"{āudītor}", q"{āufēro}"
		, q"{āurēus}", q"{āurum}", q"{āut}", q"{āūt}", q"{āutēm}", q"{āūtēm}", q"{āutus}", q"{āuxīlīum}"
		, q"{āvārītīā}", q"{āvārus}", q"{āvēho}", q"{āvērto}", q"{bāīulus}", q"{bālbus}"
		, q"{bārbā}", q"{bārdus}", q"{bāsīum}", q"{bēātāē}", q"{bēātus}", q"{bēllīcus}"
		, q"{bēllum}", q"{bēnē}", q"{bēnēfīcīum}", q"{bēnēvolēntīā}", q"{bēnīgnē}"
		, q"{bēstīā}", q"{bībo}", q"{bīs}", q"{blāndīor}", q"{bļāņdītīīš}", q"{boņus}"
		, q"{boš}", q"{brēvīs}", q"{cādo}", q"{cāēcus}", q"{cāēlēstīs}", q"{cāēlum}", q"{cālāmītās}"
		, q"{cālcār}", q"{cālco}", q"{cālculus}", q"{cāllīdē}", q"{cāmpānā}", q"{cāndīdus}"
		, q"{cānīs}", q"{cānonīcus}", q"{cānto}", q"{cāpīllus}", q"{cāpīo}", q"{cāpītulus}"
		, q"{cāpto}", q"{cāput}", q"{cārbo}", q"{cārcēr}", q"{cārēo}", q"{cārīēs}", q"{cārīosus}"
		, q"{cārītās}", q"{cārmēn}", q"{cārpo}", q"{cārus}", q"{cāsso}", q"{cāstē}", q"{cāsus}"
		, q"{cātēnā}", q"{cātērvā}", q"{cāttus}", q"{cāudā}", q"{cāusā}", q"{cāutē}", q"{cāvēo}"
		, q"{cāvus}", q"{cēdo}", q"{cēlēbrēr}", q"{cēlēr}", q"{cēlo}", q"{cēnā}", q"{cēnāculum}"
		, q"{cēno}", q"{cēnsurā}", q"{cēntum}", q"{cērno}", q"{cērnuus}", q"{cērtē}", q"{cērtus}"
		, q"{cērvus}", q"{cētērā}", q"{chārīsmā}", q"{chīrogrāphum}", q"{cībo}", q"{cībus}"
		, q"{cīcutā}", q"{cīlīcīum}", q"{cīmēntārīus}", q"{cīmīnātīo}", q"{cīnīs}"
		, q"{cīrcumvēnīo}", q"{cīto}", q"{cīvīs}", q"{cīvītās}", q"{clām}", q"{clāmo}", q"{clāro}"
		, q"{clārus}", q"{clāudēo}", q"{clāustrum}", q"{clēmēntīā}", q"{clībānus}", q"{coādunātīo}"
		, q"{coāēgrēsco}", q"{coēpī}", q"{coērcēo}", q"{cogīto}", q"{cognātus}", q"{cognomēn}"
		, q"{čoģo}", q"{cohāēro}", q"{cohībēo}", q"{čohors}", q"{collīgo}", q"{coļļum}", q"{coļo}"
		, q"{coļor}", q"{comā}", q"{combībo}", q"{comburo}", q"{comēdo}", q"{comēs}", q"{comētēs}"
		, q"{comīs}", q"{comītātus}", q"{commēmoro}", q"{commīnor}", q"{čommodī}", q"{čommodo}"
		, q"{communīs}", q"{compāro}", q"{compēllo}", q"{complēctus}", q"{compoņo}", q"{comprēhēndo}"
		, q"{comptuš}", q"{conātus}", q"{concēdo}", q"{concīdo}", q"{cončūlko}", q"{condīco}"
		, q"{coņduco}", q"{confēro}", q"{confīdo}", q"{coņforto}", q"{confuģo}", q"{congrēgātīo}"
		, q"{conīcīo}", q"{conīēcto}", q"{conītor}", q"{conīurātīo}", q"{coņor}", q"{conquēror}"
		, q"{conscēndo}", q"{čoņšēčtētūr}", q"{čoņšēqūātūr}", q"{čoņšēqūūņtūr}"
		, q"{consērvo}", q"{consīdēro}", q"{conspērgo}", q"{constāns}", q"{consuāsor}", q"{contābēsco}"
		, q"{contēgo}", q"{contīgo}", q"{contrā}", q"{conturbo}", q"{convēntus}", q"{coņvoco}"
		, q"{copīā}", q"{copīosē}", q"{corņu}", q"{coronā}", q"{čorporīš}", q"{corpuš}", q"{corrēptīus}"
		, q"{corrīgo}", q"{corroboro}", q"{corrumpo}", q"{čorrūptī}", q"{coruscus}", q"{cotīdīē}"
		, q"{crāpulā}", q"{crās}", q"{crāstīnus}", q"{crēātor}", q"{crēbēr}", q"{crēbro}"
		, q"{crēdo}", q"{crēo}", q"{crēptīo}", q"{crēpusculum}", q"{crēsco}", q"{crētā}", q"{crībro}"
		, q"{crīnīs}", q"{crucīāmēntum}", q"{crudēlīs}", q"{cruēntus}", q"{crūr}", q"{crustulum}"
		, q"{crūx}", q"{cubīculārīs}", q"{cubītum}", q"{čūbo}", q"{cuī}", q"{cuīus}", q"{culpā}"
		, q"{čūļpā}", q"{cuļpo}", q"{cultēllus}", q"{culturā}", q"{cūm}", q"{čūm}", q"{čūmqūē}"
		, q"{cunābulā}", q"{cunāē}", q"{cunctātīo}", q"{cupīdītās}", q"{čūpīdītātē}"
		, q"{cupīo}", q"{cuppēdīā}", q"{cuprēssus}", q"{cūr}", q"{curā}", q"{curātīo}", q"{curīā}"
		, q"{curīosītās}", q"{curīs}", q"{cūro}", q"{currīculum}", q"{currūs}", q"{cursīm}"
		, q"{curšo}", q"{curšus}", q"{cūrto}", q"{curtūs}", q"{cūrvo}", q"{custodīā}", q"{dāmnātīo}"
		, q"{dāmno}", q"{dāpīfēr}", q"{dēbēo}", q"{dēbīlīto}", q"{dēbītīš}", q"{dēcēns}"
		, q"{dēcērno}", q"{dēcēt}", q"{dēcīmus}", q"{dēcīpīo}", q"{dēcor}", q"{dēcrētum}"
		, q"{dēcumbo}", q"{dēdēcor}", q"{dēdīco}", q"{dēduco}", q"{dēfāēco}", q"{dēfēndo}"
		, q"{dēfēro}", q"{dēfēssus}", q"{dēfētīscor}", q"{dēfīcīo}", q"{dēflēo}", q"{dēfluo}"
		, q"{dēfungo}", q"{dēgēnēro}", q"{dēgēro}", q"{dēgusto}", q"{dēīndē}", q"{dēlēctātīo}"
		, q"{dēļēčtūš}", q"{dēlēgo}", q"{dēļēņītī}", q"{dēlēo}", q"{dēlībēro}"
		, q"{dēlīcātē}", q"{dēlīnquo}", q"{dēludo}", q"{dēmēns}", q"{dēmērgo}", q"{dēmītto}"
		, q"{dēmo}", q"{dēmonstro}", q"{dēmoror}", q"{dēmulcēo}", q"{dēmum}", q"{dēnēgo}", q"{dēnīquē}"
		, q"{dēns}", q"{dēnuncīo}", q"{dēnuo}", q"{dēorsum}", q"{dēpērēo}", q"{dēpono}", q"{dēpopulo}"
		, q"{dēporto}", q"{dēprāēdor}", q"{dēprēcātor}", q"{dēprīmo}", q"{dēpromo}", q"{dēpulso}"
		, q"{dēputo}", q"{dērēlīnquo}", q"{dērīdēo}", q"{dērīpīo}", q"{dēšērūņt}"
		, q"{dēsīdēro}", q"{dēsīno}", q"{dēsīpīo}", q"{dēsolo}", q"{dēspārātus}", q"{dēspēcto}"
		, q"{dīčtā}", q"{dīģņīššīmoš}", q"{dīštīņčtīo}", q"{doļor}", q"{doļorē}"
		, q"{doļorēm}", q"{doļorēmqūē}", q"{doļorēš}", q"{doļorībūš}", q"{doļorūm}"
		, q"{dūčīmūš}", q"{ēā}", q"{ēāqūē}", q"{ēārūm}", q"{ēīūš}", q"{ēļīģēņdī}"
		, q"{ēņīm}", q"{ēoš}", q"{ērror}", q"{ēššē}", q"{ēšt}", q"{ēt}", q"{ēūm}", q"{ēvēņīēt}"
		, q"{ēx}", q"{ēxčēptūrī}", q"{ēxērčītātīoņēm}", q"{ēxpēdītā}", q"{ēxpļīčābo}"
		, q"{fāčērē}", q"{fāčīļīš}", q"{fūģā}", q"{fūģīāt}", q"{fūģīt}", q"{hārūm}"
		, q"{hīč}", q"{īd}", q"{īļļo}", q"{īļļūm}", q"{īmpēdīt}", q"{īņ}", q"{īņčīdūņt}"
		, q"{īnfīt}", q"{īnflāmmātīo}", q"{īņvēņtorē}", q"{īpšā}", q"{īpšām}", q"{īpšūm}"
		, q"{īštē}", q"{ītāqūē}", q"{īūrē}", q"{īūšto}", q"{ļāborē}", q"{ļāborīošām}"
		, q"{ļāborūm}", q"{ļāūdāņtīūm}", q"{ļībēro}", q"{māģņām}", q"{māģņī}"
		, q"{māīorēš}", q"{māxīmē}", q"{mīņīmā}", q"{mīņūš}", q"{modī}", q"{moļēštīāē}"
		, q"{moļēštīāš}", q"{moļļītīā}", q"{ņām}", q"{ņātūš}", q"{ņēčēššītātībūš}"
		, q"{ņēmo}", q"{ņēqūē}", q"{ņēščīūņt}", q"{ņīhīļ}", q"{ņīšī}", q"{ņobīš}"
		, q"{ņoņ}", q"{ņoštrūm}", q"{ņūļļā}", q"{ņūmqūām}", q"{oččāēčātī}", q"{ocēr}"
		, q"{odīo}", q"{odīt}", q"{offīčīā}", q"{offīčīīš}", q"{omņīš}", q"{optīo}", q"{pāēns}"
		, q"{pārīātūr}", q"{pātīor}", q"{pātrīā}", q"{pātrocīnor}", q"{pātruus}", q"{pāucī}"
		, q"{pāulātīm}", q"{pāupēr}", q"{pāx}", q"{pēccātus}", q"{pēcco}", q"{pēcto}", q"{pēctus}"
		, q"{pēcus}", q"{pēīor}", q"{pēl}", q"{pērfērēņdīš}", q"{pēršpīčīātīš}"
		, q"{pļāčēāt}", q"{porro}", q"{poššīmūš}", q"{prāēšēņtīūm}", q"{provīdēņt}"
		, q"{qūāē}", q"{qūāērāt}", q"{qūām}", q"{qūāš}", q"{qūāšī}", q"{qūī}", q"{qūīā}"
		, q"{qūībūšdām}", q"{qūīdēm}", q"{qūīš}", q"{qūīšqūām}", q"{qūo}", q"{qūod}"
		, q"{qūoš}", q"{rātīoņē}", q"{rēčūšāņdāē}", q"{rēīčīēņdīš}", q"{rēm}"
		, q"{rēpēļļāt}", q"{rēpēļļēņdūš}", q"{rēprēhēņdērīt}", q"{rēpūdīāņdāē}"
		, q"{rērūm}", q"{šāēpē}", q"{šāpīēņtē}", q"{šēd}", q"{šēqūī}", q"{šīmīļīqūē}"
		, q"{šīņt}", q"{šīt}", q"{socīus}", q"{sodālītās}", q"{soļ}", q"{solēo}", q"{solīo}"
		, q"{solītudo}", q"{solīum}", q"{sollērs}", q"{sollīcīto}", q"{soļum}", q"{soluš}", q"{šoļūtā}"
		, q"{soļutīo}", q"{soļvo}", q"{somnīculosus}", q"{somņus}", q"{soņītus}", q"{soņo}"
		, q"{sophīsmātā}", q"{šopor}", q"{sordēo}", q"{sortītus}", q"{spārgo}", q"{spēcīosus}"
		, q"{spēctāculum}", q"{spēculum}", q"{spērno}", q"{spēro}", q"{spēs}", q"{spīculum}"
		, q"{spīrītus}", q"{spolīātīo}", q"{spontē}", q"{stābīlīs}", q"{stātīm}", q"{stātuā}"
		, q"{stēllā}", q"{stīllīcīdīum}", q"{stīpēs}", q"{stīps}", q"{što}", q"{strēnuus}"
		, q"{struēs}", q"{studīo}", q"{stuļtus}", q"{suādēo}", q"{suāsorīā}", q"{sūb}", q"{subīto}"
		, q"{subīungo}", q"{sublīmē}", q"{subnēcto}", q"{subsēco}", q"{substāntīā}", q"{subvēnīo}"
		, q"{succēdo}", q"{succurro}", q"{suffīcīo}", q"{suffočo}", q"{suffrāgīum}", q"{suggēro}"
		, q"{suī}", q"{suļūm}", q"{sūm}", q"{summā}", q"{summīssē}", q"{summopērē}", q"{sūmo}"
		, q"{sumptus}", q"{šūņt}", q"{supēllēx}", q"{supēr}", q"{suppēllēx}", q"{supplānto}"
		, q"{suppono}", q"{suprā}", q"{surčūlus}", q"{surģo}", q"{suršum}", q"{suscīpīo}", q"{šūščīpīt}"
		, q"{suspēndo}", q"{sustīnēo}", q"{suūs}", q"{synāgogā}", q"{tābēllā}", q"{tābērnus}"
		, q"{tābēsco}", q"{tābgo}", q"{tābulā}", q"{tācēo}", q"{tāctus}", q"{tāēdīum}", q"{tālīo}"
		, q"{tālīs}", q"{tālus}", q"{tām}", q"{tāmdīu}", q"{tāmēn}", q"{tāmētsī}", q"{tāmīsīum}"
		, q"{tāmquām}", q"{tāndēm}", q"{tāntīllus}", q"{tāntum}", q"{tārdus}", q"{tēgo}", q"{tēmērītās}"
		, q"{tēmpērāntīā}", q"{tēmplum}", q"{tēmporā}", q"{tēmporē}", q"{tēmporībūš}"
		, q"{tēmptātīo}", q"{tēmpus}", q"{tēnāx}", q"{tēndo}", q"{tēnēo}", q"{tēnēr}", q"{tēņētūr}"
		, q"{tēnuīs}", q"{tēnus}", q"{tēpēsco}", q"{tēpīdus}", q"{tēr}", q"{tērēbro}", q"{tērēs}"
		, q"{tērgā}", q"{tērgēo}", q"{tērgīvērsātīo}", q"{tērgo}", q"{tērgum}", q"{tērmēs}"
		, q"{tērmīnātīo}", q"{tēro}", q"{tērrā}", q"{tērrēo}", q"{tērrīto}", q"{tērror}"
		, q"{tērsus}", q"{tērtīus}", q"{tēstīmonīum}", q"{tēxo}", q"{tēxtīlīs}", q"{tēxtor}"
		, q"{tēxtus}", q"{thālāssīnus}", q"{thēātrum}", q"{thēcā}", q"{thēmā}", q"{thēologus}"
		, q"{thērmāē}", q"{thēsāurus}", q"{thēsīs}", q"{thorāx}", q"{thymbrā}", q"{thymūm}"
		, q"{tībī}", q"{tīmīdus}", q"{tīmor}", q"{tītulus}", q"{tolēro}", q"{toļļo}", q"{tondēo}"
		, q"{toņšor}", q"{torquēo}", q"{torrēns}", q"{tot}", q"{totām}", q"{totīdēm}", q"{totīēs}"
		, q"{totūs}", q"{trācto}", q"{trādo}", q"{trāho}", q"{trāns}", q"{trēdēcīm}", q"{trēmo}"
		, q"{trēpīdē}", q"{trēs}", q"{trībuo}", q"{trīcēsīmus}", q"{trīduānā}", q"{trīpudīo}"
		, q"{trīstīs}", q"{trīumphus}", q"{trucīdo}", q"{truculēntēr}", q"{tubīnēus}", q"{tuī}"
		, q"{tūm}", q"{tumuļtus}", q"{tūnč}", q"{turbā}", q"{tūrbo}", q"{turpīs}", q"{tutāmēn}"
		, q"{tutīs}", q"{tyrānnus}", q"{ubērrīmē}", q"{ubī}", q"{ulcīscor}", q"{ūļļām}", q"{ullūs}"
		, q"{ultērīus}", q"{ultīo}", q"{ultrā}", q"{umbrā}", q"{umērus}", q"{umquām}", q"{unā}"
		, q"{undē}", q"{ūņdē}", q"{undīquē}", q"{unīvērsē}", q"{unūs}", q"{urbānus}", q"{urbš}"
		, q"{urēdo}", q"{usītās}", q"{usquē}", q"{ustīlo}", q"{ustulo}", q"{ušūs}", q"{ūt}", q"{utēr}"
		, q"{utērquē}", q"{utīlīs}", q"{utīquē}", q"{ūtor}", q"{utpotē}", q"{utrīmquē}", q"{utroquē}"
		, q"{utrūm}", q"{ūxor}", q"{vāco}", q"{vācuus}", q"{vādo}", q"{vāē}", q"{vāldē}", q"{vālēns}"
		, q"{vālēo}", q"{vālētudo}", q"{vālīdus}", q"{vāllum}", q"{vāpulus}", q"{vārīētās}"
		, q"{vārīus}", q"{vēhēmēns}", q"{vēl}", q"{vēļ}", q"{vēļīt}", q"{vēlocītēr}", q"{vēlum}"
		, q"{vēlut}", q"{vēnīā}", q"{vēņīām}", q"{vēnīo}", q"{vēntīto}", q"{vēntosus}"
		, q"{vēntus}", q"{vēnustās}", q"{vēr}", q"{vērbērā}", q"{vērbum}", q"{vērē}", q"{vērēcundīā}"
		, q"{vērēor}", q"{vērgo}", q"{vērītās}", q"{vērītātīš}", q"{vēro}", q"{vērsus}"
		, q"{vērto}", q"{vērumtāmēn}", q"{vērus}", q"{vēsco}", q"{vēsīcā}", q"{vēspēr}", q"{vēspīllo}"
		, q"{vēstēr}", q"{vēstīgīum}", q"{vēstrum}", q"{vētus}", q"{vīā}", q"{vīcīnus}", q"{vīcīssītudo}"
		, q"{vīctorīā}", q"{vīctus}", q"{vīdēlīcēt}", q"{vīdēo}", q"{vīduo}", q"{vīgīlo}"
		, q"{vīgor}", q"{vīlīcus}", q"{vīlīs}", q"{vīlītās}", q"{vīllā}", q"{vīnco}", q"{vīnculum}"
		, q"{vīndīco}", q"{vīnītor}", q"{vīnum}", q"{vīr}", q"{vīrgā}", q"{vīrgo}", q"{vīrīdīs}"
		, q"{vīrīlītēr}", q"{vīrtus}", q"{vīs}", q"{vīscus}", q"{vītā}", q"{vītāē}", q"{vītīosus}"
		, q"{vītīum}", q"{vīto}", q"{vīvo}", q"{vīx}", q"{vobīs}", q"{vocīfēror}", q"{vočo}", q"{volātīcus}"
		, q"{voļo}", q"{volubīlīs}", q"{voluntārīus}", q"{volūp}", q"{voļūptāš}", q"{voļūptātē}"
		, q"{voļūptātēm}", q"{voļūptātēš}", q"{voļūptātībūš}", q"{voļūptātūm}"
		, q"{volutābrum}", q"{volvā}", q"{vomēr}", q"{vomīcā}", q"{vomīto}", q"{vorāgo}", q"{vorāx}"
		, q"{voro}", q"{vos}", q"{votūm}", q"{vovēo}", q"{vox}", q"{vulārītēr}", q"{vulgārīs}", q"{vulgīvāgus}"
		, q"{vulgo}", q"{vulgus}", q"{vulnēro}", q"{vuļņus}", q"{vulpēs}", q"{vultīculus}", q"{xīphīās}" ];

		return choice(strs, this.rnd);
	}

	override string personFemaleFirstName() {
		const string[] strs =
		[ q"{Aīda}", q"{Akvelīna}", q"{Albertīne}", q"{Alvīne}", q"{Amālija}", q"{Astrīda}", q"{Aurēlija}"
		, q"{Ārija}", q"{Baņuta}", q"{Bārbala}", q"{Beāte}", q"{Dagmāra}", q"{Dainuvīte}", q"{Dārta}"
		, q"{Diāna}", q"{Dzirkstīte}", q"{Dzīle}", q"{Edīte}", q"{Elfrīda}", q"{Elīna}", q"{Elīza}"
		, q"{Elmīra}", q"{Elvīra}", q"{Emīlija}", q"{Ernestīne}", q"{Evelīna}", q"{Ērika}", q"{Frīda}"
		, q"{Gabriela}", q"{Gudrīte}", q"{Ģertrūde}", q"{Helēna}", q"{Hermīne}", q"{Ināra}", q"{Ingrīda}"
		, q"{Ingūna}", q"{Irēna}", q"{Īrisa}", q"{Janīna}", q"{Jasmīna}", q"{Jautrīte}", q"{Judīte}"
		, q"{Justīne}", q"{Jūlija}", q"{Jūsma}", q"{Karīna}", q"{Katrīna}", q"{Klāra}", q"{Kristiāna}"
		, q"{Kristīne}", q"{Lavīze}", q"{Lāsma}", q"{Leonīda}", q"{Leontīne}", q"{Liāna}", q"{Liliāna}"
		, q"{Lība}", q"{Līga}", q"{Līksma}", q"{Līna}", q"{Līva}", q"{Līvija}", q"{Līze}", q"{Luīze}"
		, q"{Lūcija}", q"{Malvīne}", q"{Māra}", q"{Mārīte}", q"{Mētra}", q"{Modrīte}", q"{Mudīte}"
		, q"{Olīvija}", q"{Otīlija}", q"{Patrīcija}", q"{Paulīne}", q"{Pārsla}", q"{Regīna}", q"{Renāte}"
		, q"{Rudīte}", q"{Rūta}", q"{Sabīne}", q"{Sarmīte}", q"{Saulcerīte}", q"{Skaidrīte}", q"{Spīdola}"
		, q"{Tamāra}", q"{Terēze}", q"{Tīna}", q"{Trīne}", q"{Undīne}", q"{Valentīna}", q"{Valērija}"
		, q"{Vēsma}", q"{Vijolīte}", q"{Vilhelmīne}", q"{Vizbulīte}", q"{Zeltīte}", q"{Ziedīte}"
		, q"{Zigfrīda}", q"{Zigrīda}", q"{Zīle}", q"{Žanete}", q"{Žanna}", q"{Ženija}", q"{Žubīte}" ];

		return choice(strs, this.rnd);
	}

	string personFemaleLastName() {
		const string[] strs =
		[ q"{Aigare}", q"{Alksne}", q"{Andersone}", q"{Aspere}", q"{Auziņa}", q"{Ābele}", q"{Āboliņa}"
		, q"{Āboltiņa}", q"{Balode}", q"{Beļavske}", q"{Bergmane}", q"{Bērziņa}", q"{Bērzīte}"
		, q"{Birziņa}", q"{Birzniece}", q"{Bīriņa}", q"{Blaua}", q"{Blekte}", q"{Breņķe}", q"{Briede}"
		, q"{Brunkeviča}", q"{Buile}", q"{Buša}", q"{Cauna}", q"{Cālīte}", q"{Cīrule}", q"{Čudara}"
		, q"{Danielsone}", q"{Dīriķe}", q"{Dombrovska}", q"{Dreimane}", q"{Dzene}", q"{Eglīte}", q"{Endziņa}"
		, q"{Fogele}", q"{Freimane}", q"{Gaile}", q"{Gailīte}", q"{Gibala}", q"{Graudiņa}", q"{Gribuste}"
		, q"{Grīnberga}", q"{Grūba}", q"{Jansone}", q"{Jēkabsone}", q"{Jukuma}", q"{Kalēja}", q"{Kalniņa}"
		, q"{Karlsone}", q"{Kauliņa}", q"{Kārkliņa}", q"{Kļaviņa}", q"{Koha}", q"{Koka}", q"{Krance}"
		, q"{Krastiņa}", q"{Kraule}", q"{Krauze}", q"{Krēsliņa}", q"{Krieviņa}", q"{Krieva}", q"{Kronberga}"
		, q"{Krūmiņa}", q"{Kulmane}", q"{Laiviņa}", q"{Landmane}", q"{Lapiņa}", q"{Lapsiņa}", q"{Lasmane}"
		, q"{Lauberga}", q"{Lāce}", q"{Legzdiņa}", q"{Lielmane}", q"{Liepiņa}", q"{Līce}", q"{Līdaka}"
		, q"{Loča}", q"{Lodiņa}", q"{Lūse}", q"{Matisone}", q"{Medne}", q"{Meiere}", q"{Mekša}", q"{Meldere}"
		, q"{Melngaile}", q"{Mihailova}", q"{Miķelsone}", q"{Niedra}", q"{Ose}", q"{Ostrovska}", q"{Ozere}"
		, q"{Ozoliņa}", q"{Ozola}", q"{Paltere}", q"{Pavlovska}", q"{Pence}", q"{Petrovska}", q"{Pērkona}"
		, q"{Pētersone}", q"{Podziņa}", q"{Pole}", q"{Pretkalniņa}", q"{Priedīte}", q"{Puķīte}"
		, q"{Putniņa}", q"{Riekstiņa}", q"{Romanovska}", q"{Rozenbaha}", q"{Rozīte}", q"{Rubene}"
		, q"{Rudzīte}", q"{Runce}", q"{Salmiņa}", q"{Seržante}", q"{Sietniece}", q"{Siliņa}", q"{Sīle}"
		, q"{Skudra}", q"{Smuģe}", q"{Sproģe}", q"{Sprūde}", q"{Strautiņa}", q"{Strautmane}", q"{Strazdiņa}"
		, q"{Širova}", q"{Šīrante}", q"{Šmite}", q"{Šteina}", q"{Tālberga}", q"{Teicāne}", q"{Tiltiņa}"
		, q"{Tīrele}", q"{Tuča}", q"{Ūdre}", q"{Valtere}", q"{Vasile}", q"{Vecumniece}", q"{Veinberga}"
		, q"{Veisa}", q"{Vilka}", q"{Vilsone}", q"{Viļuma}", q"{Vintere}", q"{Vītiņa}", q"{Vītoliņa}"
		, q"{Vītola}", q"{Vītuma}", q"{Volle}", q"{Zariņa}", q"{Zālīte}", q"{Zeidmane}", q"{Zeltiņa}"
		, q"{Ziemele}", q"{Zībere}", q"{Zunda}", q"{Zvaigzne}", q"{Zvejniece}", q"{Zvinele}", q"{Muceniece}"
		, q"{Dzirkale}", q"{Arāja}", q"{Sējēja}", q"{Podniece}", q"{Ratniece}", q"{Deģe}", q"{Bondare}"
		, q"{Sondore}", q"{Namiķe}", q"{Jumiķe}", q"{Muižniece}", q"{Bajāre}", q"{Ķēniņa}", q"{Ķeizare}"
		, q"{Barone}", q"{Vaivade}", q"{Zviedre}", q"{Vāciete}", q"{Lejiņa}", q"{Vanaga}", q"{Celma}"
		, q"{Liepa}", q"{Kalna}", q"{Celmiņa}", q"{Lejniece}", q"{Biseniece}", q"{Kurzemniece}", q"{Sauliete}"
		, q"{Pakalniete}", q"{Pridāne}", q"{Groduma}", q"{Kalnāja}", q"{Porgante}", q"{Sukute}", q"{Meškūna}"
		, q"{Rožkalne}", q"{Mazjāne}", q"{Latkovska}", q"{Jankovska}", q"{Šileiko}", q"{Budreiko}"
		, q"{Ivanova}", q"{Morozova}", q"{Logina}", q"{Gasjūne}", q"{Pauļuka}", q"{Sosāre}", q"{Meškūne}" ];

		return choice(strs, this.rnd);
	}

	override string personFemalePrefix() {
		const string[] strs =
		[ q"{Prof.}", q"{Dr.}", q"{Biedrs}" ];

		return choice(strs, this.rnd);
	}

	override string personFirstName() {
		const string[] strs =
		[ q"{Ainārs}", q"{Akvelīna}", q"{Albertīne}", q"{Alfrēds}", q"{Aloīzs}", q"{Alvīne}", q"{Amālija}"
		, q"{Andris}", q"{Andžejs}", q"{Andžs}", q"{Anrijs}", q"{Anšlavs}", q"{Arkādijs}", q"{Armīns}"
		, q"{Artūrs}", q"{Arvīds}", q"{Astrīda}", q"{Aurēlija}", q"{Aīda}", q"{Aļģirds}", q"{Aļģis}"
		, q"{Baņuta}", q"{Beāte}", q"{Boļeslavs}", q"{Broņislavs}", q"{Bārbala}", q"{Dagmāra}"
		, q"{Dainuvīte}", q"{Diāna}", q"{Dzirkstīte}", q"{Dzīle}", q"{Dāgs}", q"{Dārta}", q"{Dāvids}"
		, q"{Dāvis}", q"{Edgars}", q"{Eduards}", q"{Edvīns}", q"{Edīte}", q"{Edžus}", q"{Egīls}", q"{Einārs}"
		, q"{Eižens}", q"{Elfrīda}", q"{Elmārs}", q"{Elmīra}", q"{Elvīra}", q"{Elīna}", q"{Elīza}"
		, q"{Emīlija}", q"{Emīls}", q"{Ermīns}", q"{Ernestīne}", q"{Ervīns}", q"{Evelīna}", q"{Frīda}"
		, q"{Gabriela}", q"{Gudrīte}", q"{Gunārs}", q"{Helēna}", q"{Hermīne}", q"{Ilgmārs}", q"{Ilmārs}"
		, q"{Indriķis}", q"{Ingmārs}", q"{Ingrīda}", q"{Ingūna}", q"{Ināra}", q"{Inārs}", q"{Irēna}"
		, q"{Janīna}", q"{Jasmīna}", q"{Jautrīte}", q"{Jevgeņijs}", q"{Judīte}", q"{Jurģis}", q"{Justīne}"
		, q"{Jānis}", q"{Jāzeps}", q"{Jēkabs}", q"{Jūlija}", q"{Jūlijs}", q"{Jūsma}", q"{Karīna}"
		, q"{Katrīna}", q"{Klāra}", q"{Klāvs}", q"{Konrāds}", q"{Konstantīns}", q"{Kristiāna}"
		, q"{Kristiāns}", q"{Kristīne}", q"{Krišjānis}", q"{Krišs}", q"{Kārlis}", q"{Lavīze}"
		, q"{Leontīne}", q"{Leonīda}", q"{Leonīds}", q"{Liliāna}", q"{Liāna}", q"{Luīze}", q"{Lāsma}"
		, q"{Lība}", q"{Līga}", q"{Līksma}", q"{Līna}", q"{Līva}", q"{Līvija}", q"{Līze}", q"{Lūcija}"
		, q"{Malvīne}", q"{Marģers}", q"{Matīss}", q"{Miķelis}", q"{Modrīte}", q"{Monvīds}", q"{Mudīte}"
		, q"{Māra}", q"{Mārcis}", q"{Māris}", q"{Mārtiņš}", q"{Mārīte}", q"{Mētra}", q"{Niklāvs}"
		, q"{Ojārs}", q"{Olīvija}", q"{Otīlija}", q"{Oļegs}", q"{Oļģerts}", q"{Patrīcija}", q"{Paulīne}"
		, q"{Pārsla}", q"{Pāvils}", q"{Pēteris}", q"{Regnārs}", q"{Regīna}", q"{Renārs}", q"{Renāte}"
		, q"{Ričards}", q"{Romāns}", q"{Rudīte}", q"{Rūdis}", q"{Rūdolfs}", q"{Rūsiņš}", q"{Rūta}"
		, q"{Sabīne}", q"{Sarmīte}", q"{Saulcerīte}", q"{Skaidrīte}", q"{Spīdola}", q"{Tamāra}"
		, q"{Terēze}", q"{Trīne}", q"{Tālis}", q"{Tālivaldis}", q"{Tālrīts}", q"{Tīna}", q"{Undīne}"
		, q"{Uģis}", q"{Valdemārs}", q"{Valentīna}", q"{Valentīns}", q"{Valērija}", q"{Valērijs}"
		, q"{Vijolīte}", q"{Vilhelmīne}", q"{Vilmārs}", q"{Vitālijs}", q"{Vizbulīte}", q"{Voldemārs}"
		, q"{Vēsma}", q"{Zeltīte}", q"{Ziedīte}", q"{Zigfrīda}", q"{Zigfrīds}", q"{Zigmārs}", q"{Zigrīda}"
		, q"{Zīle}", q"{Ādams}", q"{Ādolfs}", q"{Ārija}", q"{Ārijs}", q"{Āris}", q"{Ērika}", q"{Ēriks}"
		, q"{Ēvalds}", q"{Ģederts}", q"{Ģertrūde}", q"{Ģirts}", q"{Īrisa}", q"{Žanete}", q"{Žanis}"
		, q"{Žanna}", q"{Ženija}", q"{Žubīte}" ];

		return choice(strs, this.rnd);
	}

	override string personMaleFirstName() {
		const string[] strs =
		[ q"{Ainārs}", q"{Alfrēds}", q"{Aloīzs}", q"{Aļģirds}", q"{Aļģis}", q"{Andris}", q"{Andžejs}"
		, q"{Andžs}", q"{Anrijs}", q"{Anšlavs}", q"{Arkādijs}", q"{Armīns}", q"{Artūrs}", q"{Arvīds}"
		, q"{Ādams}", q"{Ādolfs}", q"{Ārijs}", q"{Āris}", q"{Boļeslavs}", q"{Broņislavs}", q"{Dāgs}"
		, q"{Dāvids}", q"{Dāvis}", q"{Edgars}", q"{Edvīns}", q"{Eduards}", q"{Edžus}", q"{Egīls}"
		, q"{Einārs}", q"{Eižens}", q"{Elmārs}", q"{Emīls}", q"{Ermīns}", q"{Ervīns}", q"{Ēriks}"
		, q"{Ēvalds}", q"{Gunārs}", q"{Ģederts}", q"{Ģirts}", q"{Ilgmārs}", q"{Ilmārs}", q"{Inārs}"
		, q"{Indriķis}", q"{Ingmārs}", q"{Jānis}", q"{Jāzeps}", q"{Jevgeņijs}", q"{Jēkabs}", q"{Jurģis}"
		, q"{Jūlijs}", q"{Kārlis}", q"{Klāvs}", q"{Konrāds}", q"{Konstantīns}", q"{Kristiāns}"
		, q"{Krišjānis}", q"{Krišs}", q"{Leonīds}", q"{Marģers}", q"{Matīss}", q"{Mārcis}", q"{Māris}"
		, q"{Mārtiņš}", q"{Miķelis}", q"{Monvīds}", q"{Niklāvs}", q"{Ojārs}", q"{Oļegs}", q"{Oļģerts}"
		, q"{Pāvils}", q"{Pēteris}", q"{Regnārs}", q"{Renārs}", q"{Ričards}", q"{Romāns}", q"{Rūdis}"
		, q"{Rūdolfs}", q"{Rūsiņš}", q"{Tālis}", q"{Tālivaldis}", q"{Tālrīts}", q"{Uģis}", q"{Valdemārs}"
		, q"{Valentīns}", q"{Valērijs}", q"{Vilmārs}", q"{Vitālijs}", q"{Voldemārs}", q"{Zigfrīds}"
		, q"{Zigmārs}", q"{Žanis}" ];

		return choice(strs, this.rnd);
	}

	string personMaleLastName() {
		const string[] strs =
		[ q"{Aigars}", q"{Alksnis}", q"{Andersons}", q"{Aspers}", q"{Auziņš}", q"{Ābele}", q"{Āboliņš}"
		, q"{Āboltiņš}", q"{Balodis}", q"{Beļavskis}", q"{Bergmanis}", q"{Bērziņš}", q"{Bērzīts}"
		, q"{Birziņš}", q"{Birznieks}", q"{Bīriņš}", q"{Blaus}", q"{Blekte}", q"{Breņķis}", q"{Briedis}"
		, q"{Brunkevičs}", q"{Builis}", q"{Bušs}", q"{Caune}", q"{Cālītis}", q"{Cīrulis}", q"{Čudars}"
		, q"{Danielsons}", q"{Dīriķis}", q"{Dombrovskis}", q"{Dreimanis}", q"{Dzenis}", q"{Eglītis}"
		, q"{Endziņš}", q"{Fogelis}", q"{Freimanis}", q"{Gailis}", q"{Gailītis}", q"{Gibala}", q"{Graudiņš}"
		, q"{Gribusts}", q"{Grīnbergs}", q"{Grūbe}", q"{Jansons}", q"{Jēkabsons}", q"{Jukums}", q"{Kalējs}"
		, q"{Kalniņš}", q"{Karlsons}", q"{Kauliņš}", q"{Kārkliņš}", q"{Kļaviņš}", q"{Kohs}"
		, q"{Koks}", q"{Krancis}", q"{Krastiņš}", q"{Kraulis}", q"{Krauze}", q"{Krēsliņš}", q"{Krieviņš}"
		, q"{Krievs}", q"{Kronbergs}", q"{Krūmiņš}", q"{Kulmanis}", q"{Laiviņš}", q"{Landmanis}"
		, q"{Lapiņš}", q"{Lapsiņš}", q"{Lasmanis}", q"{Laubergs}", q"{Lācis}", q"{Legzdiņš}"
		, q"{Lielmanis}", q"{Liepiņš}", q"{Līcis}", q"{Līdaks}", q"{Ločs}", q"{Lodiņš}", q"{Lūsis}"
		, q"{Matisons}", q"{Mednis}", q"{Meiers}", q"{Mekšs}", q"{Melderis}", q"{Melngailis}", q"{Mihailovs}"
		, q"{Miķelsons}", q"{Niedra}", q"{Osis}", q"{Ostrovskis}", q"{Ozers}", q"{Ozoliņš}", q"{Ozols}"
		, q"{Palters}", q"{Pavlovskis}", q"{Pencis}", q"{Petrovskis}", q"{Pērkons}", q"{Pētersons}"
		, q"{Podziņš}", q"{Polis}", q"{Pretkalniņš}", q"{Priedītis}", q"{Puķītis}", q"{Putniņš}"
		, q"{Riekstiņš}", q"{Romanovskis}", q"{Rozenbahs}", q"{Rozītis}", q"{Rubenis}", q"{Rudzītis}"
		, q"{Runcis}", q"{Salmiņš}", q"{Seržants}", q"{Sietnieks}", q"{Siliņš}", q"{Sīlis}", q"{Skudra}"
		, q"{Smuģis}", q"{Sproģis}", q"{Sprūde}", q"{Strautiņš}", q"{Strautmanis}", q"{Strazdiņš}"
		, q"{Širovs}", q"{Šīrants}", q"{Šmits}", q"{Šteins}", q"{Tālbergs}", q"{Teicāns}", q"{Tiltiņš}"
		, q"{Tīrelis}", q"{Tučs}", q"{Ūdris}", q"{Valters}", q"{Vasils}", q"{Vecumnieks}", q"{Veinbergs}"
		, q"{Veiss}", q"{Vilks}", q"{Vilsons}", q"{Viļums}", q"{Vinters}", q"{Vītiņš}", q"{Vītoliņš}"
		, q"{Vītols}", q"{Vītums}", q"{Vollis}", q"{Zariņš}", q"{Zālītis}", q"{Zeidmanis}", q"{Zeltiņš}"
		, q"{Ziemelis}", q"{Zībers}", q"{Zunda}", q"{Zvaigzne}", q"{Zvejnieks}", q"{Zvinelis}", q"{Mucenieks}"
		, q"{Dzirkalis}", q"{Arājs}", q"{Sējējs}", q"{Podnieks}", q"{Ratnieks}", q"{Deģis}", q"{Bondars}"
		, q"{Sondors}", q"{Namiķis}", q"{Jumiķis}", q"{Muižnieks}", q"{Bajārs}", q"{Ķēniņš}"
		, q"{Ķeizars}", q"{Barons}", q"{Vaivads}", q"{Zviedrs}", q"{Vācietis}", q"{Lejiņš}", q"{Vanags}"
		, q"{Celms}", q"{Liepa}", q"{Kalns}", q"{Celmiņš}", q"{Lejnieks}", q"{Bisenieks}", q"{Kurzemnieks}"
		, q"{Saulietis}", q"{Pakalnietis}", q"{Pridāns}", q"{Grodums}", q"{Kalnājs}", q"{Porgants}"
		, q"{Sukuts}", q"{Meškūns}", q"{Rožkalns}", q"{Mazjānis}", q"{Latkovskis}", q"{Jankovskis}"
		, q"{Šileiko}", q"{Budreiko}", q"{Ivanovs}", q"{Morozovs}", q"{Logins}", q"{Gasjūns}", q"{Pauļuks}"
		, q"{Sosārs}" ];

		return choice(strs, this.rnd);
	}

	override string personMalePrefix() {
		const string[] strs =
		[ q"{Prof.}", q"{Dr.}", q"{Biedrs}" ];

		return choice(strs, this.rnd);
	}

	override string personName() {
		const int rndInt = uniform(0, 9, this.rnd);

		if(rndInt >= 0 && rndInt < 1) {
			return personPrefix() ~ " " ~ personFirstName() ~ " " ~ personLastName();
		}
		if(rndInt >= 1 && rndInt < 2) {
			return personFirstName() ~ " " ~ personLastName() ~ " " ~ personSuffix();
		}
		if(rndInt >= 2 && rndInt < 9) {
			return personFirstName() ~ " " ~ personLastName();
		}

		return "";
	}

	override string personPrefix() {
		const string[] strs =
		[ q"{Biedrs}", q"{Dr.}", q"{Prof.}" ];

		return choice(strs, this.rnd);
	}

	override string personSuffix() {
		const string[] strs =
		[ q"{k-dze}", q"{kundze}" ];

		return choice(strs, this.rnd);
	}

	override string personTitleDescriptor() {
		const string[] strs =
		[ q"{Galvenais}", q"{Vecākais}", q"{Tiešo}", q"{Korporatīvās}", q"{Produktu}", q"{Reģionālās}"
		, q"{Rajona}", q"{Klientu}", q"{Investīciju}", q"{Starptautiskās}", q"{Iekšējās}", q"{Personu}" ];

		return choice(strs, this.rnd);
	}

	override string personTitleLevel() {
		const string[] strs =
		[ q"{risinājumu}", q"{programmu}", q"{drošības}", q"{izpētes}", q"{mārketinga}", q"{vadības}"
		, q"{izveides}", q"{integrāciju}", q"{funkcionalitātes}", q"{taktikas}", q"{identitātes}"
		, q"{tirgus}", q"{grupas}", q"{nodaļas}", q"{pielietojumu}", q"{optimizācijas}", q"{operāciju}"
		, q"{infrastruktūras}", q"{intraneta}", q"{sakaru}", q"{kvalitātes}", q"{mobilitātes}"
		, q"{kontu}", q"{datu}", q"{kreatīvais}", q"{konfigurācijas}", q"{grāmatojumu}", q"{sadarbības}"
		, q"{lietojamības}", q"{mērījumu}" ];

		return choice(strs, this.rnd);
	}

	override string personTitleJob() {
		const string[] strs =
		[ q"{uzraugs}", q"{vadītājs}", q"{pārstāvis}", q"{oficieris}", q"{menedžers}", q"{inženieris}"
		, q"{speciālists}", q"{direktors}", q"{koordinators}", q"{administrators}", q"{arhitekts}"
		, q"{analītiķis}", q"{dizainers}", q"{plānotājs}", q"{pārraugs}", q"{tehniķis}", q"{izstrādātājs}"
		, q"{producents}", q"{konsultants}", q"{asistents}", q"{aģents}", q"{stratēģis}" ];

		return choice(strs, this.rnd);
	}

	override string phoneNumberFormats() {
		const string[] strs =
		[ q"{(371)6#######}", q"{+371 6#######}", q"{6#######}" ];

		return numberBuild(choice(strs, this.rnd));
	}

}

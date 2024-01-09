module faked.faker_fr_sn;

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

import faked.faker_fr;

class Faker_fr_sn : Faker_fr {
@safe:
	this(int seed) {
		super(seed);
	}

	override string internetDomainSuffix() {
		const string[] strs =
		[ q"{sn}", q"{com}", q"{net}", q"{org}" ];

		return choice(strs, this.rnd);
	}

	override string internetFreeEmail() {
		const string[] strs =
		[ q"{gmail.com}", q"{yahoo.com}", q"{hotmail.com}" ];

		return choice(strs, this.rnd);
	}

	override string locationBuildingNumber() {
		const string[] strs =
		[ q"{####}", q"{###}", q"{##}", q"{#}" ];

		return numberBuild(choice(strs, this.rnd));
	}

	override string locationCityName() {
		const string[] strs =
		[ q"{Bakel}", q"{Bambey}", q"{Bargny}", q"{Bignona}", q"{Dagana}", q"{Dahra}", q"{Dakar}", q"{Diourbel}"
		, q"{Fatick}", q"{Gandiaye}", q"{Gossas}", q"{Goudomp}", q"{Guinguinéo}", q"{Guédiawaye}"
		, q"{Joal-Fadiouth}", q"{Kaffrine}", q"{Kanel}", q"{Kaolack}", q"{Kayar}", q"{Khombole}", q"{Kolda}"
		, q"{Koungheul}", q"{Kébémer}", q"{Kédougou}", q"{Linguère}", q"{Louga}", q"{Matam}", q"{Mbacké}"
		, q"{Mboro}", q"{Mbour}", q"{NDofan}", q"{Ndioum}", q"{Ngaaÿ Meckhe}", q"{Nguékhokh}", q"{Nioro du Rip}"
		, q"{Ourossogui}", q"{Pikine}", q"{Pout}", q"{Richard-Toll}", q"{Rufisque}", q"{Saint-Louis}"
		, q"{Sokone}", q"{Sébikhotane}", q"{Sédhiou}", q"{Tambacounda}", q"{Thiadiaye}", q"{Thiès}"
		, q"{Tivaouane}", q"{Touba}", q"{Vélingara}", q"{Ziguinchor}" ];

		return choice(strs, this.rnd);
	}

	override string locationCityPattern() {
		switch(uniform(0, 1, this.rnd)) {
			case 0: return locationCityName();
		}
		return "";
	}

	override string locationDefaultCountry() {
		const string[] strs =
		[ q"{Sénégal}" ];

		return choice(strs, this.rnd);
	}

	override string locationPostcode() {
		const string[] strs =
		[ q"{#####}" ];

		return numberBuild(choice(strs, this.rnd));
	}

	override string locationSecondaryAddress() {
		const string[] strs =
		[ q"{Apt. ###}", q"{# étage}" ];

		return numberBuild(choice(strs, this.rnd));
	}

	override string locationState() {
		const string[] strs =
		[ q"{Dakar}", q"{Diourbel}", q"{Fatick}", q"{Kaffrine}", q"{Kaolack}", q"{Kolda}", q"{Kédougou}"
		, q"{Louga}", q"{Matam}", q"{Saint-Louis}", q"{Sédhiou}", q"{Tambacounda}", q"{Thiès}", q"{Ziguinchor}" ];

		return choice(strs, this.rnd);
	}

	override string locationStreetAddress() {
		const LocationStreetAddressEnum[] enums = [ LocationStreetAddressEnum.normal, LocationStreetAddressEnum.full ];
		return locationStreetAddress(choice(enums, this.rnd));
	}

	override string locationStreetAddress(LocationStreetAddressEnum which) {
		switch(which) {
			case LocationStreetAddressEnum.normal: return locationBuildingNumber() ~ " " ~ locationStreet();
			case LocationStreetAddressEnum.full: return locationBuildingNumber() ~ " " ~ locationStreet() ~ " " ~ locationSecondaryAddress();
		}
		return "";
	}

	override string locationStreetPattern() {
		switch(uniform(0, 1, this.rnd)) {
			case 0: return locationStreetPrefix() ~ " " ~ locationStreetSuffix();
		}
		return "";
	}

	override string locationStreetSuffix() {
		const string[] strs =
		[ q"{de l'alternance}", q"{de l'émergence}", q"{Abdou Aziz Sy Dabakh}", q"{Amadou Assane Ndoye}"
		, q"{Birago Diop}", q"{Blaise Diagne}", q"{Cheikh Amadou Bamba}", q"{Cheikh Anta Diop}"
		, q"{Cheikh Seydi El Hadji Malick Sy}", q"{Dial Diop}", q"{Faidherbe}", q"{Galandou Diouf}"
		, q"{Houphouët Boigny}", q"{Lamine Gueye}", q"{Lat Dior}", q"{Léopold Sedar Senghor}"
		, q"{Neslon Mandela}", q"{Saint Michel}", q"{St Joseph}", q"{Sérigne Fallou Mbacké}"
		, q"{Victor Hugo}", q"{Wagane Diouf}", q"{William Ponty}", q"{Yacine Boubou}", q"{de Bordeaux}"
		, q"{de Contournement Nord}", q"{de Nguinth}", q"{des Diambars}", q"{des Jasmins}", q"{du Baol}"
		, q"{du Tirailleur}" ];

		return choice(strs, this.rnd);
	}

	override string locationStreetPrefix() {
		const string[] strs =
		[ q"{Allée}", q"{Voie}", q"{Rue}", q"{Avenue}", q"{Boulevard}", q"{Quai}", q"{Place}", q"{Échangeur}"
		, q"{Résidence}", q"{Immeuble}" ];

		return choice(strs, this.rnd);
	}

	override string personFemaleFirstName() {
		const string[] strs =
		[ q"{Abibatou}", q"{Aby}", q"{Adama}", q"{Alima}", q"{Ami}", q"{Amie}", q"{Amina}", q"{Aminata}", q"{Amy}"
		, q"{Anna}", q"{Arame}", q"{Asta}", q"{Astou}", q"{Atta}", q"{Awa}", q"{Aïcha}", q"{Aïda}", q"{Aïssa}"
		, q"{Aïssata}", q"{Aïssatou}", q"{Banna}", q"{Bineta}", q"{Binta}", q"{Bintou}", q"{Coumba}"
		, q"{Dado}", q"{Diarra}", q"{Dieynaba}", q"{Dior}", q"{Elisabeth}", q"{Elène}", q"{Fanta}", q"{Fatim}"
		, q"{Fatima}", q"{Fatimata}", q"{Fatma}", q"{Fatou}", q"{Fatoumata}", q"{Fily}", q"{Haby}", q"{Hawa}"
		, q"{Jeanne}", q"{Josephine}", q"{Kadiatou}", q"{Khadidiatou}", q"{Khady}", q"{Khoudia}", q"{Kiné}"
		, q"{Lala}", q"{Madeleine}", q"{Maguette}", q"{Mariama}", q"{Marie}", q"{Marième}", q"{Mary}"
		, q"{Marème}", q"{Maï}", q"{Maïmouna}", q"{Néné}", q"{Oumou}", q"{Paulette}", q"{Penda}", q"{Rama}"
		, q"{Ramata}", q"{Ramatoulaye}", q"{Rokhaya}", q"{Rose}", q"{Safiatou}", q"{Safiétou}", q"{Salimata}"
		, q"{Salimatou}", q"{Saly}", q"{Seynabou}", q"{Soda}", q"{Sokhna}", q"{Sophie}", q"{Thérèse}"
		, q"{Yacine}", q"{Yaya}" ];

		return choice(strs, this.rnd);
	}

	override string personFirstName() {
		const string[] strs =
		[ q"{Abdou}", q"{Abdoul}", q"{Abdoulaye}", q"{Abibatou}", q"{Abou}", q"{Aboubacar}", q"{Aby}", q"{Adama}"
		, q"{Ahmed}", q"{Alassane}", q"{Alima}", q"{Aliou}", q"{Alioune}", q"{Alpha}", q"{Aly}", q"{Amadou}"
		, q"{Amady}", q"{Amath}", q"{Amdy}", q"{Ameth}", q"{Ami}", q"{Amie}", q"{Amina}", q"{Aminata}", q"{Amy}"
		, q"{Anna}", q"{Antoine}", q"{Arame}", q"{Arona}", q"{Asta}", q"{Astou}", q"{Atta}", q"{Awa}", q"{Aïcha}"
		, q"{Aïda}", q"{Aïssa}", q"{Aïssata}", q"{Aïssatou}", q"{Baba}", q"{Babacar}", q"{Bakary}"
		, q"{Banna}", q"{Bineta}", q"{Binta}", q"{Bintou}", q"{Birane}", q"{Bouba}", q"{Boubacar}", q"{Boubou}"
		, q"{Cheikh}", q"{Cheikhou}", q"{Chekhouna}", q"{Cherif}", q"{Coumba}", q"{Dado}", q"{Dame}", q"{Daouda}"
		, q"{Demba}", q"{Diarra}", q"{Dieynaba}", q"{Dior}", q"{Djibril}", q"{Elisabeth}", q"{Elène}"
		, q"{Fanta}", q"{Fatim}", q"{Fatima}", q"{Fatimata}", q"{Fatma}", q"{Fatou}", q"{Fatoumata}", q"{Fily}"
		, q"{Haby}", q"{Hamidou}", q"{Hawa}", q"{Ibou}", q"{Ibra}", q"{Ibrahima}", q"{Idrissa}", q"{Idy}"
		, q"{Insa}", q"{Ismaïla}", q"{Issa}", q"{Jean}", q"{Jeanne}", q"{Joseph}", q"{Josephine}", q"{Kadiatou}"
		, q"{Kalidou}", q"{Khadidiatou}", q"{Khadim}", q"{Khady}", q"{Khalifa}", q"{Khoudia}", q"{Kiné}"
		, q"{Kéba}", q"{Lala}", q"{Lamine}", q"{Lassana}", q"{Mactar}", q"{Madeleine}", q"{Mady}", q"{Maguette}"
		, q"{Makhtar}", q"{Malick}", q"{Mama}", q"{Mamadou}", q"{Mamady}", q"{Mamour}", q"{Mansour}", q"{Mariama}"
		, q"{Marie}", q"{Marième}", q"{Mary}", q"{Marème}", q"{Massamba}", q"{Matar}", q"{Maï}", q"{Maïmouna}"
		, q"{Mbaye}", q"{Meïssa}", q"{Michel}", q"{Moctar}", q"{Modou}", q"{Mohamadou}", q"{Mohamed}"
		, q"{Mohammed}", q"{Mouhamadou}", q"{Mouhamed}", q"{Mouhameth}", q"{Mouhammadou}", q"{Moussa}"
		, q"{Moustapha}", q"{Médoune}", q"{Néné}", q"{Omar}", q"{Oumar}", q"{Oumou}", q"{Ousmane}", q"{Pathé}"
		, q"{Paul}", q"{Paulette}", q"{Penda}", q"{Pierre}", q"{Rama}", q"{Ramata}", q"{Ramatoulaye}", q"{Rokhaya}"
		, q"{Rose}", q"{Sada}", q"{Sadio}", q"{Safiatou}", q"{Safiétou}", q"{Sagar}", q"{Salif}", q"{Salimata}"
		, q"{Salimatou}", q"{Saliou}", q"{Saly}", q"{Samba}", q"{Saèr}", q"{Seckou}", q"{Seydou}", q"{Seynabou}"
		, q"{Sidy}", q"{Siré}", q"{Soda}", q"{Sokhna}", q"{Sophie}", q"{Souleymane}", q"{Sékou}", q"{Thierno}"
		, q"{Thérèse}", q"{Tidiane}", q"{Waly}", q"{Yacine}", q"{Yaya}", q"{Yoro}", q"{Youssou}", q"{Youssouph}"
		, q"{Youssoupha}" ];

		return choice(strs, this.rnd);
	}

	override string personLastName() {
		const string[] strs =
		[ q"{Aïdara}", q"{Amar}", q"{Anne}", q"{Aw}", q"{Ba}", q"{Babou}", q"{Badiane}", q"{Badji}", q"{Bakhoum}"
		, q"{Baldé}", q"{Barry}", q"{Beye}", q"{Biteye}", q"{Bodian}", q"{Boye}", q"{Camara}", q"{Ciss}"
		, q"{Cisse}", q"{Cissokho}", q"{Coly}", q"{Coulibaly}", q"{Dabo}", q"{Dembelé}", q"{Dème}", q"{Dia}"
		, q"{Diaby}", q"{Diack}", q"{Diagne}", q"{Diakhaté}", q"{Diallo}", q"{Diamanka}", q"{Diao}", q"{Diarra}"
		, q"{Diatta}", q"{Diattara}", q"{Diaw}", q"{Diawara}", q"{Diédhiou}", q"{Diémé}", q"{Diène}"
		, q"{Dieng}", q"{Dieye}", q"{Diome}", q"{Dione}", q"{Diongue}", q"{Diop}", q"{Diouf}", q"{Dioum}"
		, q"{Djitté}", q"{Dramé}", q"{Fall}", q"{Faty}", q"{Faye}", q"{Fofana}", q"{Gadiaga}", q"{Gassama}"
		, q"{Gaye}", q"{Gning}", q"{Gningue}", q"{Gomis}", q"{Goudiaby}", q"{Gueye}", q"{Guissé}", q"{Hane}"
		, q"{Ka}", q"{Kamara}", q"{Kandé}", q"{Kandji}", q"{Kane}", q"{Kanté}", q"{Kassé}", q"{Kébé}"
		, q"{Keïta}", q"{Khouma}", q"{Konaté}", q"{Konté}", q"{Lam}", q"{Leye}", q"{Lo}", q"{Loum}", q"{Ly}"
		, q"{Mané}", q"{Manga}", q"{Mangane}", q"{Mar}", q"{Mbacké}", q"{Mballo}", q"{Mbaye}", q"{Mbèngue}"
		, q"{Mbodj}", q"{Mboup}", q"{Mbow}", q"{Mendy}", q"{Ndao}", q"{Ndaw}", q"{Ndiaye}", q"{Ndione}", q"{Ndir}"
		, q"{Ndong}", q"{Ndour}", q"{Ndoye}", q"{Ngom}", q"{Nguèr}", q"{Niane}", q"{Niang}", q"{Niass}", q"{Niasse}"
		, q"{Pouye}", q"{Sabaly}", q"{Sadio}", q"{Sagna}", q"{Sakho}", q"{Sall}", q"{Samb}", q"{Samba}", q"{Sambe}"
		, q"{Sambou}", q"{Sané}", q"{Sarr}", q"{Seck}", q"{Ségnane}", q"{Sène}", q"{Senghor}", q"{Seydi}"
		, q"{Seye}", q"{Sidibé}", q"{Sonko}", q"{Souare}", q"{Soumaré}", q"{Sow}", q"{Sy}", q"{Sylla}", q"{Tall}"
		, q"{Tamba}", q"{Thiam}", q"{Thiao}", q"{Thiaw}", q"{Thiongane}", q"{Thioub}", q"{Thioune}", q"{Tine}"
		, q"{Top}", q"{Touré}", q"{Traoré}", q"{Wade}", q"{Wane}", q"{Willane}", q"{Yade}" ];

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
		[ q"{Abdou}", q"{Abdoul}", q"{Abdoulaye}", q"{Abou}", q"{Aboubacar}", q"{Adama}", q"{Ahmed}", q"{Alassane}"
		, q"{Aliou}", q"{Alioune}", q"{Alpha}", q"{Aly}", q"{Amadou}", q"{Amady}", q"{Amath}", q"{Amdy}", q"{Ameth}"
		, q"{Antoine}", q"{Arona}", q"{Baba}", q"{Babacar}", q"{Bakary}", q"{Birane}", q"{Bouba}", q"{Boubacar}"
		, q"{Boubou}", q"{Cheikh}", q"{Cheikhou}", q"{Chekhouna}", q"{Cherif}", q"{Dame}", q"{Daouda}"
		, q"{Demba}", q"{Djibril}", q"{Hamidou}", q"{Ibou}", q"{Ibra}", q"{Ibrahima}", q"{Idrissa}", q"{Idy}"
		, q"{Insa}", q"{Ismaïla}", q"{Issa}", q"{Jean}", q"{Joseph}", q"{Kalidou}", q"{Kéba}", q"{Khadim}"
		, q"{Khalifa}", q"{Lamine}", q"{Lassana}", q"{Mactar}", q"{Mady}", q"{Makhtar}", q"{Malick}", q"{Mama}"
		, q"{Mamadou}", q"{Mamady}", q"{Mamour}", q"{Mansour}", q"{Massamba}", q"{Matar}", q"{Mbaye}", q"{Médoune}"
		, q"{Meïssa}", q"{Michel}", q"{Moctar}", q"{Modou}", q"{Mohamadou}", q"{Mohamed}", q"{Mohammed}"
		, q"{Mouhamadou}", q"{Mouhamed}", q"{Mouhameth}", q"{Mouhammadou}", q"{Moussa}", q"{Moustapha}"
		, q"{Omar}", q"{Oumar}", q"{Ousmane}", q"{Pathé}", q"{Paul}", q"{Pierre}", q"{Sada}", q"{Sadio}"
		, q"{Saèr}", q"{Sagar}", q"{Salif}", q"{Saliou}", q"{Samba}", q"{Seckou}", q"{Sékou}", q"{Seydou}"
		, q"{Sidy}", q"{Siré}", q"{Souleymane}", q"{Thierno}", q"{Tidiane}", q"{Waly}", q"{Yoro}", q"{Youssou}"
		, q"{Youssouph}", q"{Youssoupha}" ];

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

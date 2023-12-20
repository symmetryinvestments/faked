// generated by fakerjsgenerator
///
module faked.faker_en_ng;

import faked.base;


///
class Faker_en_ng : Faker {
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
	override string phoneNumberFormats() {
		auto data = [
		"0803 ### ####",
		"0703 ### ####",
		"234809 ### ####",
		"+234 802 ### ####",
		"0805### ####"
		];
		return this.digitBuild(choice(data, this.rnd));
	}

	///
	override string locationCityName() {
		auto data = [
		"Abala",
		"Abalakiri",
		"Bekirikiri",
		"Bela",
		"Belatiwa",
		"Bokodo",
		"Ibinta",
		"Ibiono Ewura",
		"Farin Yashe",
		"Fedare",
		"Fobir",
		"Fobro",
		"Gabgell",
		"Gamajigo",
		"Gana",
		"Gana Daji",
		"Gidan Hardo",
		"Abagbo",
		"Abalabi",
		"Abaranjeh",
		"Abatiwa",
		"Abegede",
		"Abekkun",
		"Abule Ijesha",
		"Abule-Nla",
		"Adata",
		"Addo",
		"Adekanbi",
		"Adeleye",
		"Ado",
		"Ado Odo",
		"Afami",
		"Afanji",
		"Afowo Doforo",
		"Afowowa",
		"Agada",
		"Agaja",
		"Agala",
		"Agani",
		"Aganni",
		"Agaw Awusa",
		"Agaw Shasha",
		"Agbaku",
		"Agbara",
		"Agbede",
		"Agbedi",
		"Agbejedo",
		"Agbele",
		"Agbelekale",
		"Agboju",
		"Agboku",
		"Agbon",
		"Agbonyedo",
		"Agbowa",
		"Agboyi",
		"Age Mowo",
		"Agege",
		"Agelete",
		"Agerige",
		"Agidi",
		"Agidingbi",
		"Ago Egun",
		"Ago Hausa",
		"Ago Sasa",
		"Agomu",
		"Agonrin",
		"Agonu",
		"Aguda",
		"Agun",
		"Agunfoye",
		"Agura",
		"Ahanfe",
		"Ahovo",
		"Ahun",
		"Aiyede",
		"Aiyeteju",
		"Aiyetoro",
		"Aiyetoto-Asogun",
		"Aja",
		"Ajagambari",
		"Ajara",
		"Ajara Agamaden",
		"Ajebandele",
		"Ajebaw",
		"Ajebo",
		"Ajegbenwa",
		"Ajegunle",
		"Ajelanwa",
		"Ajerogun",
		"Ajibade",
		"Ajibawo",
		"Ajibo",
		"Ajido",
		"Ajise",
		"Ajumo",
		"Akando",
		"Akangba",
		"Akarakumo",
		"Akawdo",
		"Akawkaw",
		"Akere",
		"Akessan",
		"Akete",
		"Akinbo",
		"Akinlade",
		"Akinogun",
		"Akinyele",
		"Akio",
		"Akobale",
		"Akodo",
		"Akoko",
		"Akore",
		"Akowonjo",
		"Alagba",
		"Alagbede",
		"Alagbon",
		"Alago",
		"Alagogo",
		"Alaguntan",
		"Alaiyabiagba",
		"Alapako",
		"Alaparu",
		"Alaparun",
		"Alapoti",
		"Alaru",
		"Alasia",
		"Ale",
		"Aliayabiagba",
		"Alimosho",
		"Alimoso",
		"Amuwo",
		"Anagoji",
		"Anagunji",
		"Angorin",
		"Animashawun",
		"Animshaun",
		"Apa",
		"Apamu",
		"Apapa",
		"Apapa Eleko",
		"Apese",
		"Appa",
		"Aqani",
		"Aradagun",
		"Arapagi Oloko",
		"Arapagi-Awlawkaw",
		"Arapagi-Ejetu",
		"Araromi",
		"Araromi Orita",
		"Araromi Tawpe",
		"Araromi Tope",
		"Arida",
		"Arigo",
		"Ashon",
		"Asipa",
		"Ason",
		"Asore",
		"Asunora",
		"Atan",
		"Atapa",
		"Awado",
		"Awaiye",
		"Awaye",
		"Awdan Ilaro",
		"Awdan Iyasi",
		"Awfin",
		"Awgawgawraw",
		"Awgawmbaw",
		"Awja-Ikoradu",
		"Awjaw",
		"Awoyaya",
		"Awreta",
		"Awteyi",
		"Awwaw",
		"Ayekoshe",
		"Ayinla",
		"Ayobo",
		"Babalawo",
		"Badagri",
		"Badagry",
		"Badawre",
		"Badore",
		"Baiyeku",
		"Balagbe",
		"Balogun",
		"Bamgbose",
		"Bamgboshe",
		"Bandu",
		"Banimgbe",
		"Banimgbo",
		"Bariga",
		"Baruwa",
		"Bassa",
		"Beshi",
		"Bodashe",
		"Bode Ase",
		"Bolorunpelu",
		"Cardoso",
		"Coker",
		"Coker Market",
		"Cokers Market",
		"Dankaka",
		"Doforo",
		"Dosa",
		"Dosemo",
		"Ebute Ikorodu",
		"Ebute Leki",
		"Ebute Lekki",
		"Ebute-Egga",
		"Ebute-Metta",
		"Efiran",
		"Egan",
		"Egba",
		"Egbe",
		"Eggan",
		"Egudu Bale",
		"Egun",
		"Eiyekose",
		"Ejigbo",
		"Ejinrin",
		"Ejirin",
		"Eko",
		"Ekoro",
		"Ekundayo",
		"Elachi",
		"Elemoki",
		"Eleputu",
		"Elere",
		"Elesin",
		"Eluju",
		"Emu",
		"Epe",
		"Epeh",
		"Era",
		"Ere",
		"Eregun",
		"Erekiti",
		"Erukan",
		"Eruku",
		"Erunkan",
		"Etegbin",
		"Euni",
		"Ewekora",
		"Ewekoro",
		"Ewu",
		"Ewu Ebi",
		"Falomo",
		"Fatade",
		"Fatedo",
		"Fonji",
		"Ganme",
		"Ganyingbo",
		"Gbagidan",
		"Gbaj",
		"Gbaji",
		"Gbanko",
		"Gberegbe",
		"Gberigbe",
		"Gbesse",
		"Gbeta",
		"Gbodo",
		"Gbogbo",
		"Gbogije",
		"Gbokuta",
		"George",
		"Ginti",
		"Hausa",
		"Henume",
		"Hundo",
		"Iba",
		"Ibadan",
		"Ibasa",
		"Ibasha",
		"Ibatefin",
		"Ibawe Kekere",
		"Ibawe Tukuru",
		"Ibbojo",
		"Ibefon",
		"Ibefum",
		"Ibefun",
		"Ibeju",
		"Ibereko",
		"Iberekodo",
		"Ibese",
		"Ibeshe",
		"Ibeshi",
		"Ibiku",
		"Ibode",
		"Ibogun Adina",
		"Ibogun Akiode",
		"Ibogun Sowunmi",
		"Iboju",
		"Ibon",
		"Ibopa",
		"Ida",
		"Idain Isaga",
		"Idain-Ishaga",
		"Idamo",
		"Idanfuru",
		"Idashaw",
		"Idaso",
		"Idata",
		"Iddo",
		"Ide",
		"Idele",
		"Ideno",
		"Idi Agbon Agana",
		"Idi Iroko",
		"Idi Ofe",
		"Idi Oro",
		"Idi-Off",
		"Idimarun",
		"Idimi",
		"Idimu",
		"Idiori",
		"Idiroko",
		"Idobarun",
		"Idoforo",
		"Idolanja",
		"Idole",
		"Idolehin",
		"Idolorisha",
		"Idolosa",
		"Idomu",
		"Idopetu",
		"Idosa",
		"Idosemo",
		"Idowu",
		"Ifako",
		"Igami",
		"Igando",
		"Igando Awlawja",
		"Iganmi",
		"Iganmu",
		"Iganmu Siding",
		"Igbalu",
		"Igbe",
		"Igbe Ewoliwo",
		"Igbede",
		"Igbegodo",
		"Igbekun",
		"Igbele",
		"Igbessa",
		"Igbin",
		"Igbin Oloya",
		"Igbo",
		"Igbo Ejo",
		"Igbo Fipe",
		"Igbobi",
		"Igbodu",
		"Igboefon",
		"Igbogbele",
		"Igbogila",
		"Igbogun",
		"Igbogun-Sowunmi",
		"Igboje",
		"Igbokushun",
		"Igbolobi",
		"Igbologun",
		"Igboloye",
		"Igbopa",
		"Igborosun",
		"Igbosa",
		"Igbosere",
		"Igboshere",
		"Igodonu",
		"Igoro",
		"Igu",
		"Igude",
		"Igunnu Akabo",
		"Ijagemo",
		"Ijaiye",
		"Ijako",
		"Ijako Orile",
		"Ijanikin",
		"Ijawmi",
		"Ijawmu",
		"Ijawtun",
		"Ijayie",
		"Ijede",
		"Ijegun",
		"Ijero",
		"Ijesa-Tedo",
		"Ijofin",
		"Ijomi",
		"Ijomu",
		"Ijora",
		"Ijora Village",
		"Ijotan",
		"Iju",
		"Iju Junction",
		"Iju Water Works",
		"Ikare",
		"Ikate",
		"Ikawga",
		"Ikawga-Zebe",
		"Ikawlaji",
		"Ikawta",
		"Ikeja",
		"Ikoga",
		"Ikoga Ile",
		"Ikogbo",
		"Ikolaja",
		"Ikorodu",
		"Ikosi",
		"Ikotan",
		"Ikotun",
		"Ikoyi",
		"Ikuata",
		"Ilade",
		"Ilado",
		"Ilado Ogunu",
		"Ilagbo",
		"Ilasa",
		"Ilashe",
		"Ilemere",
		"Ilepa",
		"Ileppaw",
		"Ilera",
		"Ilikiti",
		"Ilo",
		"Ilogbo",
		"Ilogbo Elegba",
		"Iloro",
		"Ilugboro",
		"Ilumawfin",
		"Ilumofin",
		"Imare",
		"Imawte",
		"Imeke",
		"Imeri",
		"Imeseju",
		"Imore",
		"Imoru",
		"Imota",
		"Inogbe",
		"Inupa",
		"Inupa Kekere",
		"Ipaja",
		"Ipakan",
		"Ipanmi",
		"Ipatira",
		"Ipeshu",
		"Ipesu",
		"Ipewu",
		"Ipokia",
		"Iponri",
		"Ipota",
		"Iragbo",
		"Iragon",
		"Iranla",
		"Irede",
		"Irewe",
		"Iru",
		"Isagatedo",
		"Isagbo",
		"Isagbo Ere",
		"Isagira",
		"Isaku",
		"Isalu",
		"Isashi",
		"Isasi",
		"Isawo",
		"Ise",
		"Iseku",
		"Isekun",
		"Iseri-Osun",
		"Ishaga",
		"Ishagbo",
		"Ishagira",
		"Ishasi",
		"Ishawo",
		"Isheri-Olofin",
		"Ishersi",
		"Ishola",
		"Isiu",
		"Isiwu",
		"Isola",
		"Isolo",
		"Isunba",
		"Ita Egbe",
		"Ita Onimosa",
		"Itagbo",
		"Itamaga",
		"Itawga",
		"Itawikin",
		"Itawmu",
		"Iteku",
		"Itele",
		"Itere",
		"Itire",
		"Itirin",
		"Ito Omu",
		"Itoga",
		"Itohun",
		"Itoikin",
		"Itokin",
		"Itomu",
		"Itori",
		"Iwaya",
		"Iwerekun",
		"Iworo",
		"Iwuku",
		"Iyafin",
		"Iyagbe",
		"Iyasi",
		"Iyesi",
		"Jaguna",
		"Janikin",
		"Jibowu",
		"Jinadu",
		"Kadara",
		"Kafara",
		"Kajola",
		"Kajola Iboro",
		"Kandoro",
		"Kese"
		];
		return choice(data, this.rnd);
	}

	///
	override string locationState() {
		auto data = [
		"FCT",
		"ABIA",
		"ADAMAWA",
		"Akwa Ibom",
		"Anambra",
		"Bauchi",
		"Bayelsa",
		"Benue",
		"Bornu",
		"Cross River",
		"Delta",
		"Ebonyi",
		"Edo",
		"Ekiti",
		"Enugu",
		"Gombe",
		"Imo",
		"Jigawa",
		"Kaduna",
		"Kano",
		"Katsina",
		"Kebbi",
		"Kogi",
		"Kwara",
		"Lagos",
		"Nasarawa",
		"Niger",
		"Ogun",
		"Ondo",
		"Osun",
		"Oyo",
		"Plateau",
		"Rivers",
		"Sokoto",
		"Taraba",
		"Yobe",
		"Zamfara"
		];
		return choice(data, this.rnd);
	}

	///
	override string locationPostcode() {
		auto data = [
		"#####",
		"####'"
		];
		return this.digitBuild(choice(data, this.rnd));
	}


	override string locationStreetPattern() {
		final switch(uniform(0, 2, this.rnd)) {
			case 0: return personFirstName() ~ " " ~ locationStreetSuffix();
			case 1: return personLastName() ~ " " ~ locationStreetSuffix();
		}
	}

	///
	override string locationDefaultCountry() {
		auto data = [
		"Nigeria",
		"Federal Republic of Nigeria",
		"NG",
		"NGN'"
		];
		return choice(data, this.rnd);
	}


	override string locationCityPattern() {
		final switch(uniform(0, 1, this.rnd)) {
			case 0: return locationCityName() ~ "'";
		}
	}

	///
	override string companySuffix() {
		auto data = [
		"Venture",
		"Ltd",
		"Plc'"
		];
		return choice(data, this.rnd);
	}

	///
	override string internetDomainSuffix() {
		auto data = [
		"com.ng",
		"com",
		"org.ng",
		"ng'"
		];
		return choice(data, this.rnd);
	}

	///
	override string personFemaleFirstName() {
		auto data = [
		"Adaugo",
		"Akunna",
		"Aminat",
		"Aminu",
		"Augustina",
		"Ayebatari",
		"Cherechi",
		"Chiamaka",
		"Chimamanda",
		"Chinyere",
		"Chizoba",
		"Ebiere",
		"Efe",
		"Fatima",
		"Ifeoma",
		"Ifunanya",
		"Isioma",
		"Jolayemi",
		"Lola",
		"Obioma",
		"Omawunmi",
		"Omolara",
		"Onome",
		"Rasheedah",
		"Sekinat",
		"Simisola",
		"Sumayyah",
		"Titi",
		"Titilayo",
		"Toluwani",
		"Zainab"
		];
		return choice(data, this.rnd);
	}


	override string personLastNamePattern() {
		final switch(uniform(0, 4, this.rnd)) {
			case 0: return "{ value: '" ~ personLastName();
			case 1: return "weight: 95 }";
			case 2: return "{ value: '" ~ personLastName() ~ "-" ~ personLastName();
			case 3: return "weight: 5 }";
		}
	}

	///
	override string personLastName() {
		auto data = [
		"Abiodun",
		"Abiola",
		"Abodunrin",
		"Abosede",
		"Adaobi",
		"Adebayo",
		"Adegboye",
		"Adegoke",
		"Ademayowa",
		"Ademola",
		"Adeniyan",
		"Adeoluwa",
		"Aderinsola",
		"Aderonke",
		"Adesina",
		"Adewale",
		"Adewunmi",
		"Adewura",
		"Adeyemo",
		"Afolabi",
		"Afunku",
		"Agboola",
		"Agnes",
		"Aigbiniode",
		"Ajakaiye",
		"Ajose-adeogun",
		"Akeem-omosanya",
		"Akerele",
		"Akintade",
		"Aligbe",
		"Amaechi",
		"Aminat",
		"Aremu",
		"Atanda",
		"Ayisat",
		"Ayobami",
		"Ayomide",
		"Babalola",
		"Babatunde",
		"Balogun",
		"Bamisebi",
		"Bello",
		"Busari",
		"Chibike",
		"Chibuike",
		"Chidinma",
		"Chidozie",
		"Christian",
		"Clare",
		"David",
		"Ebubechukwu",
		"Egbochukwu",
		"Ehigiator",
		"Ekwueme",
		"Elebiyo",
		"Elizabeth",
		"Emmanuel",
		"Esther",
		"Funmilayo",
		"Gbadamosi",
		"Gbogboade",
		"Grace",
		"Habeeb",
		"Hanifat",
		"Isaac",
		"Ismail",
		"Isokun",
		"Israel",
		"Iyalla",
		"Jamiu",
		"Jimoh",
		"Joshua",
		"Justina",
		"Katherine",
		"Kayode",
		"Kimberly",
		"Ladega",
		"Latifat",
		"Lawal",
		"Leonard",
		"Makuachukwu",
		"Maryam",
		"Maryjane",
		"Mayowa",
		"Miracle",
		"Mobolaji",
		"Mogbadunade",
		"Motalo",
		"Muinat",
		"Mukaram",
		"Mustapha",
		"Mutiat",
		"Ndukwu",
		"Ngozi",
		"Nojeem",
		"Nwachukwu",
		"Nwogu",
		"Nwuzor",
		"Obiageli",
		"Obianuju",
		"Odunayo",
		"Ogunbanwo",
		"Ogunwande",
		"Okonkwo",
		"Okunola",
		"Oladeji",
		"Oladimeji",
		"Olaoluwa",
		"Olasunkanmi",
		"Olasunkanmi-fasayo",
		"Olawale",
		"Olubukola",
		"Olubunmi",
		"Olufeyikemi",
		"Olumide",
		"Olutola",
		"Oluwakemi",
		"Oluwanisola",
		"Oluwaseun",
		"Oluwaseyi",
		"Oluwashina",
		"Oluwatosin",
		"Omobolaji",
		"Omobolanle",
		"Omolara",
		"Omowale",
		"Onohinosen",
		"Onose",
		"Onyinyechukwu",
		"Opeyemi",
		"Osuagwu",
		"Oyebola",
		"Oyelude",
		"Oyinkansola",
		"Peter",
		"Sabdat",
		"Saheed",
		"Salami",
		"Samuel",
		"Sanusi",
		"Sarah",
		"Segunmaru",
		"Sekinat",
		"Sulaimon",
		"Sylvester",
		"Taiwo",
		"Tamunoemi",
		"Tella",
		"Temitope",
		"Tolulope",
		"Uchechi",
		"Wasiu",
		"Wilcox",
		"Wuraola",
		"Yaqub",
		"Yussuf"
		];
		return choice(data, this.rnd);
	}

	///
	override string personFirstName() {
		auto data = [
		"Adaugo",
		"Akunna",
		"Aminat",
		"Aminu",
		"Augustina",
		"Ayebatari",
		"Cherechi",
		"Chiamaka",
		"Chimamanda",
		"Chinyere",
		"Chizoba",
		"Ebiere",
		"Efe",
		"Fatima",
		"Ifeoma",
		"Ifunanya",
		"Isioma",
		"Jolayemi",
		"Lola",
		"Obioma",
		"Omawunmi",
		"Omolara",
		"Onome",
		"Rasheedah",
		"Sekinat",
		"Simisola",
		"Sumayyah",
		"Titi",
		"Titilayo",
		"Toluwani",
		"Zainab",
		"Abimbola",
		"Abisola",
		"Abisoye",
		"Adeboye",
		"Adedayo",
		"Adegoke",
		"Akande",
		"Akanni",
		"Alade",
		"Ayinde",
		"Azubuike",
		"Banji",
		"Bankole",
		"Buchi",
		"Bukola",
		"Chinedu",
		"Chisom",
		"Chukwu",
		"Damilare",
		"Damilola",
		"Danjuma",
		"Ebiowei",
		"Emeka",
		"Emmanuel",
		"Esse",
		"Funmilade",
		"Funmilayo",
		"Gbeminiyi",
		"Gbemisola",
		"Habiba",
		"Ifeanyichukwu",
		"Ikenna",
		"Ikhidie",
		"Ireti",
		"Jadesola",
		"Johnson",
		"Kayode",
		"Kemi",
		"Kubra",
		"Kubura",
		"Lolade",
		"Makinwa",
		"Mohammed",
		"Musa",
		"Muyiwa",
		"Nnamdi",
		"Olaide",
		"Olufunmi",
		"Olumide",
		"Oluwunmi",
		"Onoriode",
		"Remilekun",
		"Rotimi",
		"Shade",
		"Shalewa",
		"Sname",
		"Tari",
		"Temitope",
		"Titilope",
		"Tobiloba",
		"Toke",
		"Tomiloba",
		"Tope",
		"Uzodimma",
		"Wale",
		"Yakubu",
		"Yusuf"
		];
		return choice(data, this.rnd);
	}

	///
	override string personMaleFirstName() {
		auto data = [
		"Abimbola",
		"Abisola",
		"Abisoye",
		"Adeboye",
		"Adedayo",
		"Adegoke",
		"Akande",
		"Akanni",
		"Alade",
		"Ayinde",
		"Azubuike",
		"Banji",
		"Bankole",
		"Buchi",
		"Bukola",
		"Chinedu",
		"Chisom",
		"Chukwu",
		"Damilare",
		"Damilola",
		"Danjuma",
		"Ebiowei",
		"Emeka",
		"Emmanuel",
		"Esse",
		"Funmilade",
		"Funmilayo",
		"Gbeminiyi",
		"Gbemisola",
		"Habiba",
		"Ifeanyichukwu",
		"Ikenna",
		"Ikhidie",
		"Ireti",
		"Jadesola",
		"Johnson",
		"Kayode",
		"Kemi",
		"Kubra",
		"Kubura",
		"Lolade",
		"Makinwa",
		"Mohammed",
		"Musa",
		"Muyiwa",
		"Nnamdi",
		"Olaide",
		"Olufunmi",
		"Olumide",
		"Oluwunmi",
		"Onoriode",
		"Remilekun",
		"Rotimi",
		"Shade",
		"Shalewa",
		"Sname",
		"Tari",
		"Temitope",
		"Titilope",
		"Tobiloba",
		"Toke",
		"Tomiloba",
		"Tope",
		"Uzodimma",
		"Wale",
		"Yakubu",
		"Yusuf"
		];
		return choice(data, this.rnd);
	}


	override string personName() {
		final switch(uniform(0, 4, this.rnd)) {
			case 0: return "{ value: '" ~ personFirstName() ~ " " ~ personLastName();
			case 1: return "weight: 1 }";
			case 2: return "{ value: '" ~ personLastName() ~ " " ~ personFirstName();
			case 3: return "weight: 1 }";
		}
	}

}

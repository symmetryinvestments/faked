module faked.faker_az;

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

import faked.faker_en;

class Faker_az : Faker_en {
@safe:
	this(int seed) {
		super(seed);
	}

	override string commerceProductNameAdjective() {
		const string[] strs =
		[ q"{Balaca}", q"{Ergonomik}", q"{Kobud}", q"{İntellektual}", q"{Möhtəşəm}", q"{İnanılmaz}"
		, q"{Fantastik}", q"{Əlverişli}", q"{Parlaq}", q"{Mükəmməl}" ];

		return choice(strs, this.rnd);
	}

	override string commerceProductNameMaterial() {
		const string[] strs =
		[ q"{Polad}", q"{Ağac}", q"{Beton}", q"{Plastik}", q"{Pambıq}", q"{Qranit}", q"{Rezin}" ];

		return choice(strs, this.rnd);
	}

	override string commerceProductNameProduct() {
		const string[] strs =
		[ q"{Stul}", q"{Avtomobil}", q"{Kompyuter}", q"{Beret}", q"{Kulon}", q"{Stol}", q"{Sviter}", q"{Kəmər}" ];

		return choice(strs, this.rnd);
	}

	override string companyNamePattern() {
		final switch(uniform(0, 3, this.rnd)) {
			case 0: return companyPrefix() ~ " " ~ personFemaleFirstName();
			case 1: return companyPrefix() ~ " " ~ personMaleFirstName();
			case 2: return companyPrefix() ~ " " ~ personMaleLastName();
		}
		return "";
	}

	override string dateMonthWide() {
		const string[] strs =
		[ q"{yanvar}", q"{fevral}", q"{mart}", q"{aprel}", q"{may}", q"{iyun}", q"{iyul}", q"{avqust}", q"{sentyabr}"
		, q"{oktyabr}", q"{noyabr}", q"{dekabr}" ];

		return choice(strs, this.rnd);
	}

	override string dateMonthAbbr() {
		const string[] strs =
		[ q"{янв.}", q"{февр.}", q"{март}", q"{апр.}", q"{май}", q"{июнь}", q"{июль}"
		, q"{авг.}", q"{сент.}", q"{окт.}", q"{нояб.}", q"{дек.}" ];

		return choice(strs, this.rnd);
	}

	override string dateWeekdayWide() {
		const string[] strs =
		[ q"{Bazar}", q"{Bazar ertəsi}", q"{Çərşənbə axşamı}", q"{Çərşənbə}", q"{Cümə axşamı}"
		, q"{Cümə}", q"{Şənbə}" ];

		return choice(strs, this.rnd);
	}

	override string dateWeekdayAbbr() {
		const string[] strs =
		[ q"{Ba}", q"{BE}", q"{ÇA}", q"{Çə}", q"{CA}", q"{Cü}", q"{Şə}" ];

		return choice(strs, this.rnd);
	}

	override string internetDomainSuffix() {
		const string[] strs =
		[ q"{com}", q"{az}", q"{com.az}", q"{info}", q"{net}", q"{org}" ];

		return choice(strs, this.rnd);
	}

	override string internetFreeEmail() {
		const string[] strs =
		[ q"{box.az}", q"{mail.az}", q"{gmail.com}", q"{yahoo.com}", q"{hotmail.com}" ];

		return choice(strs, this.rnd);
	}

	override string locationBuildingNumber() {
		const string[] strs =
		[ q"{###}" ];

		return numberBuild(choice(strs, this.rnd));
	}

	override string locationCityName() {
		const string[] strs =
		[ q"{Ağcabədi}", q"{Ağdam}", q"{Ağdaş}", q"{Ağdərə}", q"{Ağstafa}", q"{Ağsu}", q"{Astara}"
		, q"{Bakı}", q"{Balakən}", q"{Beyləqan}", q"{Bərdə}", q"{Biləsuvar}", q"{Cəbrayıl}"
		, q"{Cəlilabad}", q"{Culfa}", q"{Daşkəsən}", q"{Dəliməmmədli}", q"{Füzuli}", q"{Gədəbəy}"
		, q"{Gəncə}", q"{Goranboy}", q"{Göyçay}", q"{Göygöl}", q"{Göytəpə}", q"{Hacıqabul}"
		, q"{Horadiz}", q"{Xaçmaz}", q"{Xankəndi}", q"{Xocalı}", q"{Xocavənd}", q"{Xırdalan}", q"{Xızı}"
		, q"{Xudat}", q"{İmişli}", q"{İsmayıllı}", q"{Kəlbəcər}", q"{Kürdəmir}", q"{Qax}"
		, q"{Qazax}", q"{Qəbələ}", q"{Qobustan}", q"{Qovlar}", q"{Quba}", q"{Qubadlı}", q"{Qusar}"
		, q"{Laçın}", q"{Lerik}", q"{Lənkəran}", q"{Liman}", q"{Masallı}", q"{Mingəçevir}", q"{Naftalan}"
		, q"{Naxçıvan (şəhər)}", q"{Neftçala}", q"{Oğuz}", q"{Ordubad}", q"{Saatlı}", q"{Sabirabad}"
		, q"{Salyan}", q"{Samux}", q"{Siyəzən}", q"{Sumqayıt}", q"{Şabran}", q"{Şahbuz}", q"{Şamaxı}"
		, q"{Şəki}", q"{Şəmkir}", q"{Şərur}", q"{Şirvan}", q"{Şuşa}", q"{Tərtər}", q"{Tovuz}"
		, q"{Ucar}", q"{Yardımlı}", q"{Yevlax}", q"{Zaqatala}", q"{Zəngilan}", q"{Zərdab}" ];

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
		[ q"{Akrotiri və Dekeliya}", q"{Aland adaları}", q"{Albaniya}", q"{Almaniya}", q"{Amerika Samoası}"
		, q"{Andorra}", q"{Angilya}", q"{Anqola}", q"{Antiqua və Barbuda}", q"{Argentina}", q"{Aruba}"
		, q"{Avstraliya}", q"{Avstriya}", q"{Azərbaycan}", q"{Baham adaları}", q"{Banqladeş}"
		, q"{Barbados}", q"{Belçika}", q"{Beliz}", q"{Belarus}", q"{Benin}", q"{Bermud adaları}", q"{BƏƏ}"
		, q"{ABŞ}", q"{Boliviya}", q"{Bolqarıstan}", q"{Bosniya və Herseqovina}", q"{Botsvana}"
		, q"{Böyük Britaniya}", q"{Braziliya}", q"{Bruney}", q"{Burkina-Faso}", q"{Burundi}", q"{Butan}"
		, q"{Bəhreyn}", q"{Cersi}", q"{Cəbəli-Tariq}", q"{CAR}", q"{Cənubi Sudan}", q"{Cənubi Koreya}"
		, q"{Cibuti}", q"{Çad}", q"{Çexiya}", q"{Monteneqro}", q"{Çili}", q"{ÇXR}", q"{Danimarka}"
		, q"{Dominika}", q"{Dominikan Respublikası}", q"{Efiopiya}", q"{Ekvador}", q"{Ekvatorial Qvineya}"
		, q"{Eritreya}", q"{Ermənistan}", q"{Estoniya}", q"{Əfqanıstan}", q"{Əlcəzair}", q"{Farer adaları}"
		, q"{Fələstin Dövləti}", q"{Fici}", q"{Kot-d’İvuar}", q"{Filippin}", q"{Finlandiya}"
		, q"{Folklend adaları}", q"{Fransa}", q"{Fransa Polineziyası}", q"{Gernsi}", q"{Gürcüstan}"
		, q"{Haiti}", q"{Hindistan}", q"{Honduras}", q"{Honkonq}", q"{Xorvatiya}", q"{İndoneziya}"
		, q"{İordaniya}", q"{İraq}", q"{İran}", q"{İrlandiya}", q"{İslandiya}", q"{İspaniya}"
		, q"{İsrail}", q"{İsveç}", q"{İsveçrə}", q"{İtaliya}", q"{Kabo-Verde}", q"{Kamboca}"
		, q"{Kamerun}", q"{Kanada}", q"{Kayman adaları}", q"{Keniya}", q"{Kipr}", q"{Kiribati}", q"{Kokos adaları}"
		, q"{Kolumbiya}", q"{Komor adaları}", q"{Konqo Respublikası}", q"{KDR}", q"{Kosovo}", q"{Kosta-Rika}"
		, q"{Kuba}", q"{Kuk adaları}", q"{Küveyt}", q"{Qabon}", q"{Qambiya}", q"{Qana}", q"{Qətər}"
		, q"{Qayana}", q"{Qazaxıstan}", q"{Qərbi Sahara}", q"{Qırğızıstan}", q"{Qrenada}", q"{Qrenlandiya}"
		, q"{Quam}", q"{Qvatemala}", q"{Qvineya}", q"{Qvineya-Bisau}", q"{Laos}", q"{Latviya}", q"{Lesoto}"
		, q"{Liberiya}", q"{Litva}", q"{Livan}", q"{Liviya}", q"{Lixtenşteyn}", q"{Lüksemburq}", q"{Macarıstan}"
		, q"{Madaqaskar}", q"{Makao}", q"{Makedoniya}", q"{Malavi}", q"{Malayziya}", q"{Maldiv adaları}"
		, q"{Mali}", q"{Malta}", q"{Marşall adaları}", q"{Mavriki}", q"{Mavritaniya}", q"{Mayotta}"
		, q"{Meksika}", q"{Men adası}", q"{Mərakeş}", q"{MAR}", q"{Mikroneziya}", q"{Milad adası}"
		, q"{Misir}", q"{Myanma}", q"{Moldova}", q"{Monako}", q"{Monqolustan}", q"{Montserrat}", q"{Mozambik}"
		, q"{Müqəddəs Yelena, Askenson və Tristan-da-Kunya adaları}", q"{Namibiya}"
		, q"{Nauru}", q"{Nepal}", q"{Niderland}", q"{Niderland Antil adaları}", q"{Niger}", q"{Nigeriya}"
		, q"{Nikaraqua}", q"{Niue}", q"{Norfolk adası}", q"{Norveç}", q"{Oman}", q"{Özbəkistan}"
		, q"{Pakistan}", q"{Palau}", q"{Panama}", q"{Papua-Yeni Qvineya}", q"{Paraqvay}", q"{Peru}"
		, q"{Pitkern adaları}", q"{Polşa}", q"{Portuqaliya}", q"{Prednestroviya}", q"{Puerto-Riko}"
		, q"{Ruanda}", q"{Rumıniya}", q"{Rusiya}", q"{Salvador}", q"{Samoa}", q"{San-Marino}", q"{San-Tome və Prinsipi}"
		, q"{Seneqal}", q"{Sen-Bartelemi}", q"{Sent-Kits və Nevis}", q"{Sent-Lüsiya}", q"{Sen-Marten}"
		, q"{Sen-Pyer və Mikelon}", q"{Sent-Vinsent və Qrenadina}", q"{Serbiya}", q"{Seyşel adaları}"
		, q"{Səudiyyə Ərəbistanı}", q"{Sinqapur}", q"{Slovakiya}", q"{Sloveniya}", q"{Solomon adaları}"
		, q"{Somali}", q"{Somalilend}", q"{Sudan}", q"{Surinam}", q"{Suriya}", q"{Svazilend}", q"{Syerra-Leone}"
		, q"{Şərqi Timor}", q"{Şimali Marian adaları}", q"{Şpisbergen və Yan-Mayen}"
		, q"{Şri-Lanka}", q"{Tacikistan}", q"{Tanzaniya}", q"{Tailand}", q"{Çin Respublikası}"
		, q"{Törks və Kaykos adaları}", q"{Tokelau}", q"{Tonqa}", q"{Toqo}", q"{Trinidad və Tobaqo}"
		, q"{Tunis}", q"{Tuvalu}", q"{Türkiyə}", q"{Türkmənistan}", q"{Ukrayna}", q"{Uollis və Futuna}"
		, q"{Uqanda}", q"{Uruqvay}", q"{Vanuatu}", q"{Vatikan}", q"{Venesuela}", q"{Amerika Virgin adaları}"
		, q"{Britaniya Virgin adaları}", q"{Vyetnam}", q"{Yamayka}", q"{Yaponiya}", q"{Yeni Kaledoniya}"
		, q"{Yeni Zelandiya}", q"{Yəmən}", q"{Yunanıstan}", q"{Zambiya}", q"{Zimbabve}" ];

		return choice(strs, this.rnd);
	}

	override string locationDefaultCountry() {
		const string[] strs =
		[ q"{Azərbaycan}" ];

		return choice(strs, this.rnd);
	}

	override string locationPostcode() {
		const string[] strs =
		[ q"{AZ####}" ];

		return numberBuild(choice(strs, this.rnd));
	}

	override string locationSecondaryAddress() {
		const string[] strs =
		[ q"{m. ###}" ];

		return numberBuild(choice(strs, this.rnd));
	}

	override string locationStreetAddress() {
		const LocationStreetAddressEnum[] enums = [ LocationStreetAddressEnum.normal, LocationStreetAddressEnum.full ];
		return locationStreetAddress(choice(enums, this.rnd));
	}

	override string locationStreetAddress(LocationStreetAddressEnum which) {
		final switch(which) {
			case LocationStreetAddressEnum.normal: return locationStreet() ~ ", " ~ locationBuildingNumber();
			case LocationStreetAddressEnum.full: return locationStreet() ~ ", " ~ locationBuildingNumber() ~ " " ~ locationSecondaryAddress();
		}
		return "";
	}

	override string locationStreetName() {
		const string[] strs =
		[ q"{Abbas Fətullayev}", q"{Abbas Mirzə Şərifzadə}", q"{Abbas Səhhət}", q"{Abdulla Şaiq}"
		, q"{Afiyəddin Cəlilov}", q"{Axundov}", q"{Ağa Nemətulla}", q"{Ağadadaş Qurbanov}"
		, q"{Akademik Həsən Əliyev}", q"{Akademik Lətif İmanov}", q"{Alı Mustafayev}"
		, q"{Almas İldırım}", q"{Asəf Zeynallı}", q"{Asif Əsədullayev}", q"{Aşıq Alı}"
		, q"{Aşıq Ələsgər}", q"{Azadlıq prospekti}", q"{Bakıxanov}", q"{Balababa Məcidov}"
		, q"{Balaəmi Dadaşov}", q"{Behbud Şaxtantinski}", q"{Bəkir Çobanzadə}", q"{Bəsti Bağırova}"
		, q"{Bəşir Səfəroğlu}", q"{Böyük Qala}", q"{Cabir Əliyev}", q"{Camal Hacıəliyev}"
		, q"{Cavadxan}", q"{Cavanşir}", q"{Ceyhun Səlimov}", q"{Ceyhunbəy Hacıbəyli}", q"{Cəbiyev}"
		, q"{Cəfər Xəndan}", q"{Cəfər Cabbarlı}", q"{Cəlal Qurbanov}", q"{Cəlil Məmmədquluzadə}"
		, q"{Çingiz Mustafayev}", q"{Çobanzadə}", q"{Dadaş Bünyadzadə}", q"{Dağlı Yunus}"
		, q"{Dilarə Əliyeva}", q"{Elçin Əzimov}", q"{Eldar və Abdulla Əlibəyovlar}"
		, q"{Elxan Həsənov}", q"{Elşən Mehdiyev}", q"{Elşən Süleymanov}", q"{Etibar Bəkirov}"
		, q"{Əbdüləzəl Dəmirçizadə}", q"{Əbdülhəsən Anaplı}", q"{Əbdülkərim Əlizadə}"
		, q"{Əhməd bəy Ağaoğlu}", q"{Əhməd Cavad}", q"{Əhməd Cəmil}", q"{Əhməd Mehbalıyev}"
		, q"{Əhməd Rəcəbli}", q"{Əjdər Xanbabayev}", q"{Əkrəm Cəfərov}", q"{Ələsgər Qayıbov}"
		, q"{Əliağa Vahid}", q"{Əli Bəy Hüseynzadə}", q"{Əlimərdan bəy Topçubaşov}"
		, q"{Əliyar Əliyev}", q"{Əlövsət Abdulrəhimov}", q"{Əlövsət Quliyev}", q"{Əmir Bağırov}"
		, q"{Əsəd Əhmədov}", q"{Əşrəf Yunusov}", q"{Əzim Əzimzadə}", q"{Əziz Əliyev}"
		, q"{Heybət Heybətov}", q"{Həqiqət Rzayeva}", q"{Həmid Araslı}", q"{Hənifə Ələsgərova}"
		, q"{Hərbçilər}", q"{Həsənoğu}", q"{Həsən Seyidbəyli}", q"{Hətəm Allahverdiyev}"
		, q"{Həzi Aslanov}", q"{Hüsü Hacıyev}", q"{Hüseynqulu Sarabski}", q"{Fətəli xan Xoyski}"
		, q"{Fəzail Bayramov}", q"{Fikrət Əmirov}", q"{Fuad İbrahimbəyov}", q"{Fuad Yusifov}"
		, q"{General Əliağa Şıxlinski}", q"{Gülayə Qədirbəyova}", q"{Gənclik}", q"{Xaqani}"
		, q"{Xan Şuşinski}", q"{Xanlar}", q"{Xudu Məmmədov}", q"{İbrahimpaşa Dadaşov}"
		, q"{İdris Süleymanov}", q"{İlqar Abbasov}", q"{İlqar İsmayılov}", q"{İmran Qasımov}"
		, q"{İnqilab İsmayılov}", q"{İsfəndiyar Zülalov}", q"{İslam Abışov}", q"{İslam Səfərli}"
		, q"{İsmayıl bəy Qutqaşınlı}", q"{İsmayıl Mirzəgülov}", q"{İstiqlaliyyət}"
		, q"{28 May}", q"{İsgəndərov}", q"{İvan Turgenev}", q"{İzmir}", q"{İzzət Həmidov}"
		, q"{İzzət Orucova}", q"{Kamal Rəhimov}", q"{Kazım Kazımzadə}", q"{Kazımağa Kərimov}"
		, q"{Kərəm İsmayılov}", q"{Kiçik Qala}", q"{Koroğlu Rəhimov}", q"{Qaçaq Nəbi}"
		, q"{Qarabağ}", q"{Qədirbəyov}", q"{Qəzənfər Musabəyov}", q"{Qəzənfər Vəliyev}"
		, q"{Leyla Məmmədbəyova}", q"{Mahmud İbrahimov}", q"{Malik Məmmədov}", q"{Mehdi Abbasov}"
		, q"{Mehdi Mehdizadə}", q"{Məhəmməd Əmin Rəsulzadə}", q"{Məhəmməd Hadi}"
		, q"{Məhəmməd Xiyabani}", q"{Məhəmməd ibn Hinduşah Naxçıvani}", q"{Məhsəti Gəncəvi}"
		, q"{Məmmədyarov}", q"{Mərdanov qardaşları}", q"{Mətləb Ağayev}", q"{Məşədi Hilal}"
		, q"{Məzahir Rüstəmov}", q"{Mikayıl Müşviq}", q"{Mingəçevir}", q"{Mirəli Qaşqay}"
		, q"{Mirəli Seyidov}", q"{Mirzağa Əliyev}", q"{Mirzə İbrahimov}", q"{Mirzə Mənsur}"
		, q"{Mirzə Mustafayev}", q"{Murtuza Muxtarov}", q"{Mustafa Topçubaşov}", q"{Müqtədir Aydınbəyov}"
		, q"{Müslüm Maqomayev}", q"{Müzəffər Həsənov}", q"{Nabat Aşurbəyova}", q"{Naxçıvani}"
		, q"{Naximov}", q"{Nazim İsmaylov}", q"{Neapol}", q"{Neftçi Qurban Abbasov}", q"{Neftçilər prospekti}"
		, q"{Nəcəfbəy Vəzirov}", q"{Nəcəfqulu Rəfiyev}", q"{Nəriman Nərimanov}", q"{Nəsirəddin Tusi}"
		, q"{Nigar Rəfibəyli}", q"{Niyazi}", q"{Nizami}", q"{Nizami Abdullayev}", q"{Nobel prospekti}"
		, q"{Novruz}", q"{Novruzov qardaşları}", q"{Oqtay Vəliyev}", q"{Parlament}", q"{Puşkin}"
		, q"{Rafiq Ağayev}", q"{Ramiz Qəmbərov}", q"{Rəşid Behbudov}", q"{Rəşid Məcidov}"
		, q"{Ruhulla Axundov}", q"{Ruslan Allahverdiyev}", q"{Rüstəm Rüstəmov}", q"{Tahir Bağırov}"
		, q"{Tarzan Hacı Məmmədov}", q"{Tbilisi prospekti}", q"{Təbriz (Bakı)}", q"{Təbriz Xəlilbəyli}"
		, q"{Tofiq Məmmədov}", q"{Tolstoy}", q"{Sabit Orucov}", q"{Sabit Rəhman}", q"{Sahib Hümmətov}"
		, q"{Salatın Əsgərova}", q"{Sarayevo}", q"{Seyid Əzim Şirvani}", q"{Seyid Şuşinski}"
		, q"{Seyidov}", q"{Səməd bəy Mehmandarov}", q"{Səməd Vurğun}", q"{Səttar Bəhlulzadə}"
		, q"{Sona xanım Vəlixanlı}", q"{Sübhi Salayev}", q"{Süleyman Əhmədov}", q"{Süleyman Rəhimov}"
		, q"{Süleyman Rüstəm}", q"{Süleyman Sani Axundov}", q"{Süleyman Vəzirov}", q"{Şahin Səmədov}"
		, q"{Şamil Əzizbəyov}", q"{Şamil Kamilov}", q"{Şeyx Şamil}", q"{Şəfayət Mehdiyev}"
		, q"{Şəmsi Bədəlbəyli}", q"{Şirin Mirzəyev}", q"{Şıxəli Qurbanov}", q"{Şövkət Ələkbərova}"
		, q"{Ülvi Bünyadzadə}", q"{Üzeyir Hacıbəyov}", q"{Vasif Əliyev}", q"{Vəli Məmmədov}"
		, q"{Vladislav Plotnikov}", q"{Vüqar Quliyev}", q"{Vunq Tau}", q"{Yaqub Əliyev}", q"{Yaşar Abdullayev}"
		, q"{Yaşar Əliyev}", q"{Yavər Əliyev}", q"{Yesenin}", q"{Yəhya Hüseynov}", q"{Yılmaz Axundzadə}"
		, q"{Yüsif Eyvazov}", q"{Yusif Qasımov}", q"{Yusif Məmmədəliyev}", q"{Yusif Səfərov}"
		, q"{Yusif Vəzir Çəmənzəminli}", q"{Zahid Əliyev}", q"{Zahid Xəlilov}", q"{Zaur Kərimov}"
		, q"{Zavod}", q"{Zərgərpalan}" ];

		return choice(strs, this.rnd);
	}

	override string locationStreetPattern() {
		final switch(uniform(0, 2, this.rnd)) {
			case 0: return locationStreetSuffix() ~ " " ~ locationStreetName();
			case 1: return locationStreetName() ~ " " ~ locationStreetSuffix();
		}
		return "";
	}

	override string locationStreetSuffix() {
		const string[] strs =
		[ q"{küç.}", q"{küçəsi}", q"{prospekti}", q"{pr.}", q"{sahəsi}", q"{sh.}" ];

		return choice(strs, this.rnd);
	}

	override string personFemaleFirstName() {
		const string[] strs =
		[ q"{Anna}", q"{Adeliya}", q"{Afaq}", q"{Afət}", q"{Afərim}", q"{Aidə}", q"{Aygün}", q"{Aynur}"
		, q"{Alsu}", q"{Ayan}", q"{Aytən}", q"{Aygül}", q"{Aydan}", q"{Aylin}", q"{Bahar}", q"{Banu}", q"{Bəyaz}"
		, q"{Billurə}", q"{Cansu}", q"{Ceyla}", q"{Damla}", q"{Dəniz}", q"{Diana}", q"{Dilarə}", q"{Ella}"
		, q"{Elza}", q"{Elyanora}", q"{Ellada}", q"{Elvira}", q"{Elnarə}", q"{Esmira}", q"{Estella}", q"{Fatimə}"
		, q"{Fəxriyyə}", q"{Fərəh}", q"{Fərqanə}", q"{Fidan}", q"{Firuzə}", q"{Gövhər}", q"{Günay}"
		, q"{Gülay}", q"{Gülçin}", q"{Gülər}", q"{Gülsüm}", q"{Humay}", q"{Hüriyə}", q"{Hülya}"
		, q"{Jalə}", q"{Jasmin}", q"{Kübra}", q"{Ləman}", q"{Lamiyə}", q"{Lalə}", q"{Liliya}", q"{Laura}"
		, q"{Leyla}", q"{Maya}", q"{Mehriban}", q"{Mələk}", q"{Nuray}", q"{Nurgün}", q"{Nərgiz}", q"{Nigar}"
		, q"{Ofelya}", q"{Pəri}", q"{Röya}", q"{Səbinə}", q"{Selcan}", q"{Tansu}", q"{Tuba}", q"{Ülviyyə}"
		, q"{Ulduz}", q"{Ülkər}" ];

		return choice(strs, this.rnd);
	}

	override string personFirstName() {
		const string[] strs =
		[ q"{Abbas}", q"{Abdulla}", q"{Adeliya}", q"{Adil}", q"{Afaq}", q"{Afəl}", q"{Afərim}", q"{Afət}"
		, q"{Aidə}", q"{Akif}", q"{Alsu}", q"{Amid}", q"{Anar}", q"{Anna}", q"{Aqil}", q"{Ayan}", q"{Aydan}"
		, q"{Aygül}", q"{Aygün}", q"{Aylin}", q"{Aynur}", q"{Aytən}", q"{Bahar}", q"{Banu}", q"{Billurə}"
		, q"{Bəhram}", q"{Bəhruz}", q"{Bəxtiyar}", q"{Bəyaz}", q"{Cansu}", q"{Ceyla}", q"{Damla}", q"{Diana}"
		, q"{Dilarə}", q"{Dəniz}", q"{Ella}", q"{Ellada}", q"{Elnarə}", q"{Elnur}", q"{Elvira}", q"{Elyanora}"
		, q"{Elza}", q"{Emil}", q"{Emin}", q"{Esmira}", q"{Estella}", q"{Faiq}", q"{Fatimə}", q"{Fidan}"
		, q"{Firuzə}", q"{Fərqanə}", q"{Fərəh}", q"{Fəxriyyə}", q"{Gövhər}", q"{Gülay}", q"{Gülsüm}"
		, q"{Gülçin}", q"{Gülər}", q"{Günay}", q"{Humay}", q"{Hülya}", q"{Hüriyə}", q"{Jalə}"
		, q"{Jasmin}", q"{Kamran}", q"{Kübra}", q"{Lalə}", q"{Lamiyə}", q"{Laura}", q"{Leyla}", q"{Liliya}"
		, q"{Ləman}", q"{Maya}", q"{Mehriban}", q"{Mələk}", q"{Nadir}", q"{Nahid}", q"{Natiq}", q"{Nigar}"
		, q"{Nihad}", q"{Nuray}", q"{Nurgün}", q"{Nurlan}", q"{Nərgiz}", q"{Ofelya}", q"{Pəri}", q"{Rafiq}"
		, q"{Röya}", q"{Rəşad}", q"{Rəşid}", q"{Selcan}", q"{Səbinə}", q"{Tahir}", q"{Tansu}", q"{Tuba}"
		, q"{Tunar}", q"{Tərlan}", q"{Ulduz}", q"{Zahir}", q"{Zaur}", q"{Ülkər}", q"{Ülviyyə}", q"{İlham}"
		, q"{İlqar}", q"{İxtiyar}", q"{Şaiq}", q"{Şəhriyar}", q"{Əhməd}" ];

		return choice(strs, this.rnd);
	}

	override string personMaleFirstName() {
		const string[] strs =
		[ q"{Anar}", q"{Amid}", q"{Afəl}", q"{Abbas}", q"{Abdulla}", q"{Adil}", q"{Akif}", q"{Aqil}", q"{Bəhram}"
		, q"{Nurlan}", q"{Rafiq}", q"{Tərlan}", q"{Zaur}", q"{Emin}", q"{Emil}", q"{Kamran}", q"{Elnur}"
		, q"{Natiq}", q"{Rəşad}", q"{Rəşid}", q"{Tahir}", q"{Əhməd}", q"{Zahir}", q"{İlham}", q"{İlqar}"
		, q"{Nahid}", q"{Nihad}", q"{Faiq}", q"{İxtiyar}", q"{Şəhriyar}", q"{Şaiq}", q"{Bəxtiyar}"
		, q"{Bəhruz}", q"{Tunar}", q"{Nadir}" ];

		return choice(strs, this.rnd);
	}

	override string personName() {
		const int rndInt = uniform(0, 3, this.rnd);

		if(rndInt >= 0 && rndInt < 1) {
			return personFirstName();
		}
		if(rndInt >= 1 && rndInt < 2) {
			return personLastName() ~ " " ~ personFirstName();
		}
		if(rndInt >= 2 && rndInt < 3) {
			return personFirstName() ~ " " ~ personLastName();
		}

		return "";
	}

	override string phoneNumberFormats() {
		const string[] strs =
		[ q"{(9##)###-##-##}" ];

		return numberBuild(choice(strs, this.rnd));
	}

}

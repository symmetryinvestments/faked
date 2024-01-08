module faked.faker_en_ng;

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

class Faker_en_ng : Faker_en {
@safe:
	this(int seed) {
		super(seed);
	}

	override string companySuffix() {
		const string[] strs =
		[ q"{Venture}", q"{Ltd}", q"{Plc}" ];

		return choice(strs, this.rnd);
	}

	override string internetDomainSuffix() {
		const string[] strs =
		[ q"{com.ng}", q"{com}", q"{org.ng}", q"{ng}" ];

		return choice(strs, this.rnd);
	}

	override string locationCityName() {
		const string[] strs =
		[ q"{Abala}", q"{Abalakiri}", q"{Bekirikiri}", q"{Bela}", q"{Belatiwa}", q"{Bokodo}", q"{Ibinta}"
		, q"{Ibiono Ewura}", q"{Farin Yashe}", q"{Fedare}", q"{Fobir}", q"{Fobro}", q"{Gabgell}", q"{Gamajigo}"
		, q"{Gana}", q"{Gana Daji}", q"{Gidan Hardo}", q"{Abagbo}", q"{Abalabi}", q"{Abaranjeh}", q"{Abatiwa}"
		, q"{Abegede}", q"{Abekkun}", q"{Abule Ijesha}", q"{Abule-Nla}", q"{Adata}", q"{Addo}", q"{Adekanbi}"
		, q"{Adeleye}", q"{Ado}", q"{Ado Odo}", q"{Afami}", q"{Afanji}", q"{Afowo Doforo}", q"{Afowowa}"
		, q"{Agada}", q"{Agaja}", q"{Agala}", q"{Agani}", q"{Aganni}", q"{Agaw Awusa}", q"{Agaw Shasha}"
		, q"{Agbaku}", q"{Agbara}", q"{Agbede}", q"{Agbedi}", q"{Agbejedo}", q"{Agbele}", q"{Agbelekale}"
		, q"{Agboju}", q"{Agboku}", q"{Agbon}", q"{Agbonyedo}", q"{Agbowa}", q"{Agboyi}", q"{Age Mowo}"
		, q"{Agege}", q"{Agelete}", q"{Agerige}", q"{Agidi}", q"{Agidingbi}", q"{Ago Egun}", q"{Ago Hausa}"
		, q"{Ago Sasa}", q"{Agomu}", q"{Agonrin}", q"{Agonu}", q"{Aguda}", q"{Agun}", q"{Agunfoye}", q"{Agura}"
		, q"{Ahanfe}", q"{Ahovo}", q"{Ahun}", q"{Aiyede}", q"{Aiyeteju}", q"{Aiyetoro}", q"{Aiyetoto-Asogun}"
		, q"{Aja}", q"{Ajagambari}", q"{Ajara}", q"{Ajara Agamaden}", q"{Ajebandele}", q"{Ajebaw}", q"{Ajebo}"
		, q"{Ajegbenwa}", q"{Ajegunle}", q"{Ajelanwa}", q"{Ajerogun}", q"{Ajibade}", q"{Ajibawo}", q"{Ajibo}"
		, q"{Ajido}", q"{Ajise}", q"{Ajumo}", q"{Akando}", q"{Akangba}", q"{Akarakumo}", q"{Akawdo}", q"{Akawkaw}"
		, q"{Akere}", q"{Akessan}", q"{Akete}", q"{Akinbo}", q"{Akinlade}", q"{Akinogun}", q"{Akinyele}"
		, q"{Akio}", q"{Akobale}", q"{Akodo}", q"{Akoko}", q"{Akore}", q"{Akowonjo}", q"{Alagba}", q"{Alagbede}"
		, q"{Alagbon}", q"{Alago}", q"{Alagogo}", q"{Alaguntan}", q"{Alaiyabiagba}", q"{Alapako}", q"{Alaparu}"
		, q"{Alaparun}", q"{Alapoti}", q"{Alaru}", q"{Alasia}", q"{Ale}", q"{Aliayabiagba}", q"{Alimosho}"
		, q"{Alimoso}", q"{Amuwo}", q"{Anagoji}", q"{Anagunji}", q"{Angorin}", q"{Animashawun}", q"{Animshaun}"
		, q"{Apa}", q"{Apamu}", q"{Apapa}", q"{Apapa Eleko}", q"{Apese}", q"{Appa}", q"{Aqani}", q"{Aradagun}"
		, q"{Arapagi Oloko}", q"{Arapagi-Awlawkaw}", q"{Arapagi-Ejetu}", q"{Araromi}", q"{Araromi Orita}"
		, q"{Araromi Tawpe}", q"{Araromi Tope}", q"{Arida}", q"{Arigo}", q"{Ashon}", q"{Asipa}", q"{Ason}"
		, q"{Asore}", q"{Asunora}", q"{Atan}", q"{Atapa}", q"{Awado}", q"{Awaiye}", q"{Awaye}", q"{Awdan Ilaro}"
		, q"{Awdan Iyasi}", q"{Awfin}", q"{Awgawgawraw}", q"{Awgawmbaw}", q"{Awja-Ikoradu}", q"{Awjaw}"
		, q"{Awoyaya}", q"{Awreta}", q"{Awteyi}", q"{Awwaw}", q"{Ayekoshe}", q"{Ayinla}", q"{Ayobo}", q"{Babalawo}"
		, q"{Badagri}", q"{Badagry}", q"{Badawre}", q"{Badore}", q"{Baiyeku}", q"{Balagbe}", q"{Balogun}"
		, q"{Bamgbose}", q"{Bamgboshe}", q"{Bandu}", q"{Banimgbe}", q"{Banimgbo}", q"{Bariga}", q"{Baruwa}"
		, q"{Bassa}", q"{Beshi}", q"{Bodashe}", q"{Bode Ase}", q"{Bolorunpelu}", q"{Cardoso}", q"{Coker}"
		, q"{Coker Market}", q"{Cokers Market}", q"{Dankaka}", q"{Doforo}", q"{Dosa}", q"{Dosemo}", q"{Ebute Ikorodu}"
		, q"{Ebute Leki}", q"{Ebute Lekki}", q"{Ebute-Egga}", q"{Ebute-Metta}", q"{Efiran}", q"{Egan}"
		, q"{Egba}", q"{Egbe}", q"{Eggan}", q"{Egudu Bale}", q"{Egun}", q"{Eiyekose}", q"{Ejigbo}", q"{Ejinrin}"
		, q"{Ejirin}", q"{Eko}", q"{Ekoro}", q"{Ekundayo}", q"{Elachi}", q"{Elemoki}", q"{Eleputu}", q"{Elere}"
		, q"{Elesin}", q"{Eluju}", q"{Emu}", q"{Epe}", q"{Epeh}", q"{Era}", q"{Ere}", q"{Eregun}", q"{Erekiti}"
		, q"{Erukan}", q"{Eruku}", q"{Erunkan}", q"{Etegbin}", q"{Euni}", q"{Ewekora}", q"{Ewekoro}", q"{Ewu}"
		, q"{Ewu Ebi}", q"{Falomo}", q"{Fatade}", q"{Fatedo}", q"{Fonji}", q"{Ganme}", q"{Ganyingbo}", q"{Gbagidan}"
		, q"{Gbaj}", q"{Gbaji}", q"{Gbanko}", q"{Gberegbe}", q"{Gberigbe}", q"{Gbesse}", q"{Gbeta}", q"{Gbodo}"
		, q"{Gbogbo}", q"{Gbogije}", q"{Gbokuta}", q"{George}", q"{Ginti}", q"{Hausa}", q"{Henume}", q"{Hundo}"
		, q"{Iba}", q"{Ibadan}", q"{Ibasa}", q"{Ibasha}", q"{Ibatefin}", q"{Ibawe Kekere}", q"{Ibawe Tukuru}"
		, q"{Ibbojo}", q"{Ibefon}", q"{Ibefum}", q"{Ibefun}", q"{Ibeju}", q"{Ibereko}", q"{Iberekodo}"
		, q"{Ibese}", q"{Ibeshe}", q"{Ibeshi}", q"{Ibiku}", q"{Ibode}", q"{Ibogun Adina}", q"{Ibogun Akiode}"
		, q"{Ibogun Sowunmi}", q"{Iboju}", q"{Ibon}", q"{Ibopa}", q"{Ida}", q"{Idain Isaga}", q"{Idain-Ishaga}"
		, q"{Idamo}", q"{Idanfuru}", q"{Idashaw}", q"{Idaso}", q"{Idata}", q"{Iddo}", q"{Ide}", q"{Idele}"
		, q"{Ideno}", q"{Idi Agbon Agana}", q"{Idi Iroko}", q"{Idi Ofe}", q"{Idi Oro}", q"{Idi-Off}"
		, q"{Idimarun}", q"{Idimi}", q"{Idimu}", q"{Idiori}", q"{Idiroko}", q"{Idobarun}", q"{Idoforo}"
		, q"{Idolanja}", q"{Idole}", q"{Idolehin}", q"{Idolorisha}", q"{Idolosa}", q"{Idomu}", q"{Idopetu}"
		, q"{Idosa}", q"{Idosemo}", q"{Idowu}", q"{Ifako}", q"{Igami}", q"{Igando}", q"{Igando Awlawja}"
		, q"{Iganmi}", q"{Iganmu}", q"{Iganmu Siding}", q"{Igbalu}", q"{Igbe}", q"{Igbe Ewoliwo}", q"{Igbede}"
		, q"{Igbegodo}", q"{Igbekun}", q"{Igbele}", q"{Igbessa}", q"{Igbin}", q"{Igbin Oloya}", q"{Igbo}"
		, q"{Igbo Ejo}", q"{Igbo Fipe}", q"{Igbobi}", q"{Igbodu}", q"{Igboefon}", q"{Igbogbele}", q"{Igbogila}"
		, q"{Igbogun}", q"{Igbogun-Sowunmi}", q"{Igboje}", q"{Igbokushun}", q"{Igbolobi}", q"{Igbologun}"
		, q"{Igboloye}", q"{Igbopa}", q"{Igborosun}", q"{Igbosa}", q"{Igbosere}", q"{Igboshere}", q"{Igodonu}"
		, q"{Igoro}", q"{Igu}", q"{Igude}", q"{Igunnu Akabo}", q"{Ijagemo}", q"{Ijaiye}", q"{Ijako}", q"{Ijako Orile}"
		, q"{Ijanikin}", q"{Ijawmi}", q"{Ijawmu}", q"{Ijawtun}", q"{Ijayie}", q"{Ijede}", q"{Ijegun}", q"{Ijero}"
		, q"{Ijesa-Tedo}", q"{Ijofin}", q"{Ijomi}", q"{Ijomu}", q"{Ijora}", q"{Ijora Village}", q"{Ijotan}"
		, q"{Iju}", q"{Iju Junction}", q"{Iju Water Works}", q"{Ikare}", q"{Ikate}", q"{Ikawga}", q"{Ikawga-Zebe}"
		, q"{Ikawlaji}", q"{Ikawta}", q"{Ikeja}", q"{Ikoga}", q"{Ikoga Ile}", q"{Ikogbo}", q"{Ikolaja}"
		, q"{Ikorodu}", q"{Ikosi}", q"{Ikotan}", q"{Ikotun}", q"{Ikoyi}", q"{Ikuata}", q"{Ilade}", q"{Ilado}"
		, q"{Ilado Ogunu}", q"{Ilagbo}", q"{Ilasa}", q"{Ilashe}", q"{Ilemere}", q"{Ilepa}", q"{Ileppaw}"
		, q"{Ilera}", q"{Ilikiti}", q"{Ilo}", q"{Ilogbo}", q"{Ilogbo Elegba}", q"{Iloro}", q"{Ilugboro}"
		, q"{Ilumawfin}", q"{Ilumofin}", q"{Imare}", q"{Imawte}", q"{Imeke}", q"{Imeri}", q"{Imeseju}"
		, q"{Imore}", q"{Imoru}", q"{Imota}", q"{Inogbe}", q"{Inupa}", q"{Inupa Kekere}", q"{Ipaja}", q"{Ipakan}"
		, q"{Ipanmi}", q"{Ipatira}", q"{Ipeshu}", q"{Ipesu}", q"{Ipewu}", q"{Ipokia}", q"{Iponri}", q"{Ipota}"
		, q"{Iragbo}", q"{Iragon}", q"{Iranla}", q"{Irede}", q"{Irewe}", q"{Iru}", q"{Isagatedo}", q"{Isagbo}"
		, q"{Isagbo Ere}", q"{Isagira}", q"{Isaku}", q"{Isalu}", q"{Isashi}", q"{Isasi}", q"{Isawo}", q"{Ise}"
		, q"{Iseku}", q"{Isekun}", q"{Iseri-Osun}", q"{Ishaga}", q"{Ishagbo}", q"{Ishagira}", q"{Ishasi}"
		, q"{Ishawo}", q"{Isheri-Olofin}", q"{Ishersi}", q"{Ishola}", q"{Isiu}", q"{Isiwu}", q"{Isola}"
		, q"{Isolo}", q"{Isunba}", q"{Ita Egbe}", q"{Ita Onimosa}", q"{Itagbo}", q"{Itamaga}", q"{Itawga}"
		, q"{Itawikin}", q"{Itawmu}", q"{Iteku}", q"{Itele}", q"{Itere}", q"{Itire}", q"{Itirin}", q"{Ito Omu}"
		, q"{Itoga}", q"{Itohun}", q"{Itoikin}", q"{Itokin}", q"{Itomu}", q"{Itori}", q"{Iwaya}", q"{Iwerekun}"
		, q"{Iworo}", q"{Iwuku}", q"{Iyafin}", q"{Iyagbe}", q"{Iyasi}", q"{Iyesi}", q"{Jaguna}", q"{Janikin}"
		, q"{Jibowu}", q"{Jinadu}", q"{Kadara}", q"{Kafara}", q"{Kajola}", q"{Kajola Iboro}", q"{Kandoro}"
		, q"{Kese}" ];

		return choice(strs, this.rnd);
	}

	override string locationCityPattern() {
		final switch(uniform(0, 1, this.rnd)) {
			case 0: return locationCityName();
		}
		return "";
	}

	override string locationDefaultCountry() {
		const string[] strs =
		[ q"{Nigeria}", q"{Federal Republic of Nigeria}", q"{NG}", q"{NGN}" ];

		return choice(strs, this.rnd);
	}

	override string locationPostcode() {
		const string[] strs =
		[ q"{#####}", q"{####}" ];

		return numberBuild(choice(strs, this.rnd));
	}

	override string locationState() {
		const string[] strs =
		[ q"{FCT}", q"{ABIA}", q"{ADAMAWA}", q"{Akwa Ibom}", q"{Anambra}", q"{Bauchi}", q"{Bayelsa}", q"{Benue}"
		, q"{Bornu}", q"{Cross River}", q"{Delta}", q"{Ebonyi}", q"{Edo}", q"{Ekiti}", q"{Enugu}", q"{Gombe}"
		, q"{Imo}", q"{Jigawa}", q"{Kaduna}", q"{Kano}", q"{Katsina}", q"{Kebbi}", q"{Kogi}", q"{Kwara}", q"{Lagos}"
		, q"{Nasarawa}", q"{Niger}", q"{Ogun}", q"{Ondo}", q"{Osun}", q"{Oyo}", q"{Plateau}", q"{Rivers}"
		, q"{Sokoto}", q"{Taraba}", q"{Yobe}", q"{Zamfara}" ];

		return choice(strs, this.rnd);
	}

	override string locationStreetPattern() {
		final switch(uniform(0, 2, this.rnd)) {
			case 0: return personFirstName() ~ " " ~ locationStreetSuffix();
			case 1: return personLastName() ~ " " ~ locationStreetSuffix();
		}
		return "";
	}

	override string personFemaleFirstName() {
		const string[] strs =
		[ q"{Adaugo}", q"{Akunna}", q"{Aminat}", q"{Aminu}", q"{Augustina}", q"{Ayebatari}", q"{Cherechi}"
		, q"{Chiamaka}", q"{Chimamanda}", q"{Chinyere}", q"{Chizoba}", q"{Ebiere}", q"{Efe}", q"{Fatima}"
		, q"{Ifeoma}", q"{Ifunanya}", q"{Isioma}", q"{Jolayemi}", q"{Lola}", q"{Obioma}", q"{Omawunmi}"
		, q"{Omolara}", q"{Onome}", q"{Rasheedah}", q"{Sekinat}", q"{Simisola}", q"{Sumayyah}", q"{Titi}"
		, q"{Titilayo}", q"{Toluwani}", q"{Zainab}" ];

		return choice(strs, this.rnd);
	}

	override string personFirstName() {
		const string[] strs =
		[ q"{Adaugo}", q"{Akunna}", q"{Aminat}", q"{Aminu}", q"{Augustina}", q"{Ayebatari}", q"{Cherechi}"
		, q"{Chiamaka}", q"{Chimamanda}", q"{Chinyere}", q"{Chizoba}", q"{Ebiere}", q"{Efe}", q"{Fatima}"
		, q"{Ifeoma}", q"{Ifunanya}", q"{Isioma}", q"{Jolayemi}", q"{Lola}", q"{Obioma}", q"{Omawunmi}"
		, q"{Omolara}", q"{Onome}", q"{Rasheedah}", q"{Sekinat}", q"{Simisola}", q"{Sumayyah}", q"{Titi}"
		, q"{Titilayo}", q"{Toluwani}", q"{Zainab}", q"{Abimbola}", q"{Abisola}", q"{Abisoye}", q"{Adeboye}"
		, q"{Adedayo}", q"{Adegoke}", q"{Akande}", q"{Akanni}", q"{Alade}", q"{Ayinde}", q"{Azubuike}"
		, q"{Banji}", q"{Bankole}", q"{Buchi}", q"{Bukola}", q"{Chinedu}", q"{Chisom}", q"{Chukwu}", q"{Damilare}"
		, q"{Damilola}", q"{Danjuma}", q"{Ebiowei}", q"{Emeka}", q"{Emmanuel}", q"{Esse}", q"{Funmilade}"
		, q"{Funmilayo}", q"{Gbeminiyi}", q"{Gbemisola}", q"{Habiba}", q"{Ifeanyichukwu}", q"{Ikenna}"
		, q"{Ikhidie}", q"{Ireti}", q"{Jadesola}", q"{Johnson}", q"{Kayode}", q"{Kemi}", q"{Kubra}", q"{Kubura}"
		, q"{Lolade}", q"{Makinwa}", q"{Mohammed}", q"{Musa}", q"{Muyiwa}", q"{Nnamdi}", q"{Olaide}", q"{Olufunmi}"
		, q"{Olumide}", q"{Oluwunmi}", q"{Onoriode}", q"{Remilekun}", q"{Rotimi}", q"{Shade}", q"{Shalewa}"
		, q"{Sname}", q"{Tari}", q"{Temitope}", q"{Titilope}", q"{Tobiloba}", q"{Toke}", q"{Tomiloba}"
		, q"{Tope}", q"{Uzodimma}", q"{Wale}", q"{Yakubu}", q"{Yusuf}" ];

		return choice(strs, this.rnd);
	}

	override string personLastName() {
		const string[] strs =
		[ q"{Abiodun}", q"{Abiola}", q"{Abodunrin}", q"{Abosede}", q"{Adaobi}", q"{Adebayo}", q"{Adegboye}"
		, q"{Adegoke}", q"{Ademayowa}", q"{Ademola}", q"{Adeniyan}", q"{Adeoluwa}", q"{Aderinsola}"
		, q"{Aderonke}", q"{Adesina}", q"{Adewale}", q"{Adewunmi}", q"{Adewura}", q"{Adeyemo}", q"{Afolabi}"
		, q"{Afunku}", q"{Agboola}", q"{Agnes}", q"{Aigbiniode}", q"{Ajakaiye}", q"{Ajose-adeogun}"
		, q"{Akeem-omosanya}", q"{Akerele}", q"{Akintade}", q"{Aligbe}", q"{Amaechi}", q"{Aminat}", q"{Aremu}"
		, q"{Atanda}", q"{Ayisat}", q"{Ayobami}", q"{Ayomide}", q"{Babalola}", q"{Babatunde}", q"{Balogun}"
		, q"{Bamisebi}", q"{Bello}", q"{Busari}", q"{Chibike}", q"{Chibuike}", q"{Chidinma}", q"{Chidozie}"
		, q"{Christian}", q"{Clare}", q"{David}", q"{Ebubechukwu}", q"{Egbochukwu}", q"{Ehigiator}"
		, q"{Ekwueme}", q"{Elebiyo}", q"{Elizabeth}", q"{Emmanuel}", q"{Esther}", q"{Funmilayo}", q"{Gbadamosi}"
		, q"{Gbogboade}", q"{Grace}", q"{Habeeb}", q"{Hanifat}", q"{Isaac}", q"{Ismail}", q"{Isokun}", q"{Israel}"
		, q"{Iyalla}", q"{Jamiu}", q"{Jimoh}", q"{Joshua}", q"{Justina}", q"{Katherine}", q"{Kayode}", q"{Kimberly}"
		, q"{Ladega}", q"{Latifat}", q"{Lawal}", q"{Leonard}", q"{Makuachukwu}", q"{Maryam}", q"{Maryjane}"
		, q"{Mayowa}", q"{Miracle}", q"{Mobolaji}", q"{Mogbadunade}", q"{Motalo}", q"{Muinat}", q"{Mukaram}"
		, q"{Mustapha}", q"{Mutiat}", q"{Ndukwu}", q"{Ngozi}", q"{Nojeem}", q"{Nwachukwu}", q"{Nwogu}"
		, q"{Nwuzor}", q"{Obiageli}", q"{Obianuju}", q"{Odunayo}", q"{Ogunbanwo}", q"{Ogunwande}", q"{Okonkwo}"
		, q"{Okunola}", q"{Oladeji}", q"{Oladimeji}", q"{Olaoluwa}", q"{Olasunkanmi}", q"{Olasunkanmi-fasayo}"
		, q"{Olawale}", q"{Olubukola}", q"{Olubunmi}", q"{Olufeyikemi}", q"{Olumide}", q"{Olutola}"
		, q"{Oluwakemi}", q"{Oluwanisola}", q"{Oluwaseun}", q"{Oluwaseyi}", q"{Oluwashina}", q"{Oluwatosin}"
		, q"{Omobolaji}", q"{Omobolanle}", q"{Omolara}", q"{Omowale}", q"{Onohinosen}", q"{Onose}", q"{Onyinyechukwu}"
		, q"{Opeyemi}", q"{Osuagwu}", q"{Oyebola}", q"{Oyelude}", q"{Oyinkansola}", q"{Peter}", q"{Sabdat}"
		, q"{Saheed}", q"{Salami}", q"{Samuel}", q"{Sanusi}", q"{Sarah}", q"{Segunmaru}", q"{Sekinat}"
		, q"{Sulaimon}", q"{Sylvester}", q"{Taiwo}", q"{Tamunoemi}", q"{Tella}", q"{Temitope}", q"{Tolulope}"
		, q"{Uchechi}", q"{Wasiu}", q"{Wilcox}", q"{Wuraola}", q"{Yaqub}", q"{Yussuf}" ];

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
		[ q"{Abimbola}", q"{Abisola}", q"{Abisoye}", q"{Adeboye}", q"{Adedayo}", q"{Adegoke}", q"{Akande}"
		, q"{Akanni}", q"{Alade}", q"{Ayinde}", q"{Azubuike}", q"{Banji}", q"{Bankole}", q"{Buchi}", q"{Bukola}"
		, q"{Chinedu}", q"{Chisom}", q"{Chukwu}", q"{Damilare}", q"{Damilola}", q"{Danjuma}", q"{Ebiowei}"
		, q"{Emeka}", q"{Emmanuel}", q"{Esse}", q"{Funmilade}", q"{Funmilayo}", q"{Gbeminiyi}", q"{Gbemisola}"
		, q"{Habiba}", q"{Ifeanyichukwu}", q"{Ikenna}", q"{Ikhidie}", q"{Ireti}", q"{Jadesola}", q"{Johnson}"
		, q"{Kayode}", q"{Kemi}", q"{Kubra}", q"{Kubura}", q"{Lolade}", q"{Makinwa}", q"{Mohammed}", q"{Musa}"
		, q"{Muyiwa}", q"{Nnamdi}", q"{Olaide}", q"{Olufunmi}", q"{Olumide}", q"{Oluwunmi}", q"{Onoriode}"
		, q"{Remilekun}", q"{Rotimi}", q"{Shade}", q"{Shalewa}", q"{Sname}", q"{Tari}", q"{Temitope}", q"{Titilope}"
		, q"{Tobiloba}", q"{Toke}", q"{Tomiloba}", q"{Tope}", q"{Uzodimma}", q"{Wale}", q"{Yakubu}", q"{Yusuf}" ];

		return choice(strs, this.rnd);
	}

	override string personName() {
		const int rndInt = uniform(0, 2, this.rnd);

		if(rndInt >= 0 && rndInt < 1) {
			return personFirstName() ~ " " ~ personLastName();
		}
		if(rndInt >= 1 && rndInt < 2) {
			return personLastName() ~ " " ~ personFirstName();
		}

		return "";
	}

	override string phoneNumberFormats() {
		const string[] strs =
		[ q"{0803 ### ####}", q"{0703 ### ####}", q"{234809 ### ####}", q"{+234 802 ### ####}", q"{0805### ####}" ];

		return numberBuild(choice(strs, this.rnd));
	}

}

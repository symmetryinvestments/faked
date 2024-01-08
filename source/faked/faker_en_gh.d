module faker.faker_en_gh;

import std.random;
import std.array;
import std.format;
import std.conv : to;
import std.string : toUpper;
import std.range : iota, take, repeat;
import std.algorithm : map, joiner;

import faker.customtypes;
import faker.base;

class Faker_en_gh : Faker {
@safe:
	this(int seed) {
		super(seed);
	}

	override string companyNamePattern() {
		final switch(uniform(0, 2, this.rnd)) {
			case 0: return personLastName() ~ " " ~ companySuffix();
			case 1: return personLastName() ~ " and " ~ personLastName();
		}
		return "";
	}

	override string companySuffix() {
		const string[] strs =
		[ q"{Venture}", q"{Ltd}" ];

		return choice(strs, this.rnd);
	}

	override string internetDomainSuffix() {
		const string[] strs =
		[ q"{com.gh}", q"{edu.gh}", q"{gov.gh}", q"{org.gh}", q"{com}", q"{net}", q"{org}", q"{biz}", q"{co}" ];

		return choice(strs, this.rnd);
	}

	override string locationBuildingNumber() {
		const string[] strs =
		[ q"{###}", q"{##}", q"{#}" ];

		return numberBuild(choice(str, this.rnd));
	}

	override string locationCityName() {
		const string[] strs =
		[ q"{Goaso}", q"{Hwidiem}", q"{Kenyasi}", q"{Kukuom}", q"{Abrepo Junction}", q"{Abuakwa}", q"{Adum}"
		, q"{Afrancho}", q"{Agogo}", q"{Agona}", q"{Ahodwo}", q"{Airport}", q"{Akumadan}", q"{Amakom}"
		, q"{Aputuogya}", q"{Asafo}", q"{Ash-Town}", q"{Asokore Mampong}", q"{Asokwa}", q"{Asuofia}"
		, q"{Atonsu}", q"{Ayeduasi}", q"{Ayigya}", q"{Bantama}", q"{Barekese}", q"{Bekwai}", q"{Boadi}"
		, q"{Bomso}", q"{Breman}", q"{Brewery}", q"{Buoho}", q"{Buokrom Estate}", q"{Daban}", q"{Dakwadwom}"
		, q"{Deduako}", q"{Denyame}", q"{Effiduase}", q"{Ejisu}", q"{Ejura}", q"{Emina}", q"{Esreso}", q"{Fawode}"
		, q"{Gyinyasi}", q"{Jachie Pramso}", q"{Kaasi}", q"{KNUST}", q"{Kodie}", q"{Komfo Anokye}", q"{Konongo}"
		, q"{Kotei}", q"{Krofrom}", q"{Kumasi}", q"{Maakro}", q"{Mampong}", q"{Mankranso}", q"{Manso Nkwanta}"
		, q"{Nkawie}", q"{North Suntreso}", q"{Nyinahin}", q"{Obuasi}", q"{Oforikrom}", q"{Pankrono}"
		, q"{Santasi}", q"{Sokoban}", q"{South Suntreso}", q"{Suame}", q"{Tafo}", q"{Takwa-Maakro}"
		, q"{Tanoso}", q"{Tepa}", q"{TUC}", q"{Banda Ahenkro}", q"{Brekum}", q"{Dormaa Ahenkro}", q"{New Drobo}"
		, q"{Nsawkaw}", q"{Sampa}", q"{Sunyani}", q"{Atebubu}", q"{Buipe}", q"{Jema}", q"{Kintampo}", q"{Kwame Danso}"
		, q"{Nkoranza}", q"{Prang}", q"{Techiman}", q"{Wenchi}", q"{Yeji}", q"{Agona Swedru}", q"{Amanfrom}"
		, q"{Anomabu}", q"{Apam}", q"{Bawjiase}", q"{Breman Asikuma}", q"{Budumburam}", q"{Cape Coast}"
		, q"{Domeabra}", q"{Elmina}", q"{Foso}", q"{Kasoa Ofaakor}", q"{Kasoa Zongo}", q"{Liberia Camp}"
		, q"{Mankessim}", q"{Millennium City}", q"{Mumford}", q"{Nyakrom}", q"{Nyananor}", q"{Nyanyano}"
		, q"{Oduponkpehe}", q"{Opeikuma}", q"{Pentecost Seminary}", q"{Saltpond}", q"{Winneba}", q"{Abetifi}"
		, q"{Abompe}", q"{Aburi}", q"{Adeiso}", q"{Adjeiikrom}", q"{Adukrom}", q"{Ahwerease}", q"{Akim Oda}"
		, q"{Akim Swedru}", q"{Akosombo}", q"{Akropong}", q"{Akwatia}", q"{Akyem Hemang}", q"{Amanokrom}"
		, q"{Apirede}", q"{Asamankese}", q"{Asesewa}", q"{Atimpoku}", q"{Ayiensu}", q"{Begoro}", q"{Bepoase}"
		, q"{Bisibom}", q"{Bososo}", q"{Brekusu}", q"{Coaltar}", q"{Dawu}", q"{Dedesoworako}", q"{Donkorkrom}"
		, q"{Dwenase}", q"{Gyankama}", q"{Juaso}", q"{Kade}", q"{Kibi}", q"{Kitase}", q"{Koforidua}", q"{Kwabeng}"
		, q"{Mamfe}", q"{Mpraeso}", q"{New Abirem}", q"{Nkawkaw}", q"{Nsawam}", q"{Nsutam}", q"{Obooho}"
		, q"{Obosomase}", q"{Odumase Krobo}", q"{Ofoase}", q"{Osino}", q"{Peduase}", q"{Saaman}", q"{Somanya}"
		, q"{Summer}", q"{Suhum}", q"{Tease}", q"{Tutu}", q"{Abelemkpe}", q"{Ablekuma}", q"{Abokobi}", q"{Abossey Okai}"
		, q"{Accra Newtown}", q"{Achimota}", q"{Adabraka}", q"{Adenta}", q"{Afienya}", q"{Agbogba}"
		, q"{Amasaman}", q"{Ashiaman}", q"{Ashongman}", q"{Aslyum Down}", q"{Baatsona - Spintex}"
		, q"{Bortianor}", q"{Cantonment}", q"{Dansoman}", q"{Darkuman}", q"{Dawhenya}", q"{Dodowa}"
		, q"{Dome}", q"{Dzorwulu}", q"{East Legon}", q"{Gbawe}", q"{Haatso}", q"{James Town}", q"{Kanda}"
		, q"{Kaneshie}", q"{Kasoa}", q"{Kissieman}", q"{Kokrobite}", q"{Korle Bu}", q"{Kpone}", q"{Kwabenya}"
		, q"{Kwashieman}", q"{Labadi}", q"{Labone}", q"{Lapaz}", q"{Lartebiokorshie}", q"{Lashibi}"
		, q"{Legon}", q"{Madina}", q"{Makola}", q"{Mallam}", q"{McCarthy Hill}", q"{Michel Camp}", q"{Nima}"
		, q"{Nungua}", q"{Oblogo Mallam}", q"{Odoponkpehe}", q"{Odorkor}", q"{Osu}", q"{Oyarifa}", q"{Patang}"
		, q"{Prampram}", q"{Ridge}", q"{Roman Ridge}", q"{Sakumono}", q"{Santa Maria}", q"{Sowutuom}"
		, q"{Taifa}", q"{Tema}", q"{Tema New Town}", q"{Tesano}", q"{Teshie}", q"{Tetegu}", q"{Tieman}"
		, q"{Tudu}", q"{Weija}", q"{Westhills}", q"{Chinderi}", q"{Jasikan}", q"{Kadjebi}", q"{Kete Krachi}"
		, q"{Kpassa}", q"{Nkonya}", q"{Bole}", q"{Damango}", q"{Salaga}", q"{Sawla}", q"{Tolon}", q"{Bawku}"
		, q"{Bolgatanga}", q"{Bongo}", q"{Navrongo}", q"{Paga}", q"{Tongo}", q"{Funsi}", q"{Gwollu}", q"{Issa}"
		, q"{Jirapa}", q"{Kaleo}", q"{Lambussie}", q"{Lawra}", q"{Nadowli}", q"{Nandom}", q"{Tumu}", q"{Wa}"
		, q"{Wechiau}", q"{Adaklu Waya}", q"{Adidome}", q"{Aflao}", q"{Akatsi}", q"{Ave Dakpa}", q"{Ho.}"
		, q"{Hohoe}", q"{Keta}", q"{Kpando}", q"{Kpetoe}", q"{Kpeve}", q"{Sogakope}", q"{Abase}", q"{Aboso}"
		, q"{Adiawoso}", q"{Adiembra}", q"{Adwowa}", q"{Agona Nkwanta}", q"{Agufo}", q"{Ahonozo}", q"{Akatachi}"
		, q"{Alabokazo}", q"{Anaji}", q"{Apowa}", q"{Apremodo}", q"{Asankragua}", q"{Awukyere}", q"{Axim}"
		, q"{Beahu}", q"{Bogoso}", q"{Busua}", q"{Daboase}", q"{Dadwen}", q"{Diabene}", q"{Dixcove}", q"{East Tanokrom}"
		, q"{Effiakuma}", q"{Eikwe}", q"{Elubo}", q"{Essiama}", q"{Essikado}", q"{Essipong}", q"{Ewusiejo}"
		, q"{Fijai}", q"{Funko}", q"{Half Assini}", q"{Hotopo}", q"{Inchaban}", q"{kansaworado}", q"{Kejabil}"
		, q"{Kojokrom}", q"{Kwawkrom}", q"{Kweikuma}", q"{kwesimintsim}", q"{Manso}", q"{Miemia}", q"{Mpintsin}"
		, q"{New Akwidaa}", q"{New Amanfu}", q"{New Takoradi}", q"{Ngyiresia}", q"{Nkroful}", q"{Nsein}"
		, q"{Ntankoful}", q"{Nzulezo}", q"{Old Akwidaa}", q"{Prestea}", q"{Princess Town}", q"{Samreboi}"
		, q"{Sekondi}", q"{Shama}", q"{Takoradi}", q"{Tarkwa}", q"{Tikobo No.1}", q"{Tikobo No.2}", q"{West Tanokrom}"
		, q"{Windy Ridge}", q"{Akontombra}", q"{Bibiani}", q"{Dadieso}", q"{Enchi}", q"{Juaboso}", q"{Sewhi Anhwiaso}" ];

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
		[ q"{Ghana}" ];

		return choice(strs, this.rnd);
	}

	override string locationPostcode() {
		const string[] strs =
		[ q"{??-###-####}", q"{??-####-####}" ];

		return numberBuild(choice(str, this.rnd));
	}

	override string locationState() {
		const string[] strs =
		[ q"{Ashanti}", q"{Brong Ahafo}", q"{Bono East}", q"{Ahafo}", q"{Central}", q"{Eastern}", q"{Greater Accra}"
		, q"{Northern}", q"{Savannah}", q"{North East}", q"{Upper East}", q"{Upper West}", q"{Volta}"
		, q"{Oti}", q"{Western}", q"{Western North}" ];

		return choice(strs, this.rnd);
	}

	override string locationStreetAddress() {
		const LocationStreetAddressEnum[] enums = [ LocationStreetAddressEnum.normal, LocationStreetAddressEnum.full ];
		return locationStreetAddress(choice(enums, this.rnd));
	}

	override string locationStreetAddress(LocationStreetAddressEnum which) {
		final switch(which) {
			case LocationStreetAddressEnum.normal: return locationBuildingNumber() ~ " " ~ locationStreet();
			case LocationStreetAddressEnum.full: return locationBuildingNumber() ~ " " ~ locationStreet() ~ " " ~ locationSecondaryAddress();
		}
		return "";
	}

	override string locationStreetPattern() {
		final switch(uniform(0, 2, this.rnd)) {
			case 0: return personLastName() ~ " " ~ locationStreetSuffix();
			case 1: return locationStreetPrefix() ~ " " ~ locationStreetSuffix();
		}
		return "";
	}

	override string locationStreetSuffix() {
		const string[] strs =
		[ q"{Link}", q"{Lane}", q"{Road}", q"{Street}", q"{Lk}", q"{Ln}", q"{Rd}", q"{St}" ];

		return choice(strs, this.rnd);
	}

	override string personFemaleFirstName() {
		const string[] strs =
		[ q"{Aba}", q"{Abena}", q"{Abigail}", q"{Adwoa}", q"{Afia}", q"{Afua}", q"{Akos}", q"{Akofa}", q"{Akorfa}"
		, q"{Akosua}", q"{Akua}", q"{Akumaa}", q"{Alice}", q"{Ama}", q"{Amanda}", q"{Amber}", q"{Amelia}"
		, q"{Angela}", q"{Ann}", q"{Annette}", q"{Awesi}", q"{Baaba}", q"{Barbara}", q"{Beatrice}", q"{COmfort}"
		, q"{Caroline}", q"{Catherine}", q"{Charlotte}", q"{Christina}", q"{Comfort}", q"{Constance}"
		, q"{Danielle}", q"{Deborah}", q"{Debra}", q"{Denise}", q"{Dora}", q"{Dorcas}", q"{Dorothy}", q"{Eliabeth}"
		, q"{Elizabeth}", q"{Emily}", q"{Emma}", q"{Ernestina}", q"{Esi}", q"{Eunice}", q"{Eyram}", q"{Felicia}"
		, q"{Francesca}", q"{Gemma}", q"{Georgia}", q"{Georgina}", q"{Gifty}", q"{Grace}", q"{Hannabel}"
		, q"{Hannah}", q"{Harriet}", q"{Helen}", q"{Irene}", q"{Janet}", q"{Janice}", q"{Jasmine}", q"{Jennifer}"
		, q"{Jessica}", q"{Jill}", q"{Joanna}", q"{Josephine}", q"{Joyce}", q"{Judith}", q"{Julia}", q"{Juliana}"
		, q"{Julie}", q"{Karen}", q"{Kate}", q"{Katherine}", q"{Katy}", q"{Lawrencia}", q"{Linda}", q"{Lisa}"
		, q"{Lorraine}", q"{Lucy}", q"{Lydia}", q"{Mandy}", q"{Margaret}", q"{Maria}", q"{Marian}", q"{Marilyn}"
		, q"{Mary}", q"{Maureen}", q"{Mawuena}", q"{Mawusi}", q"{Michelle}", q"{Millicent}", q"{Nana Ama}"
		, q"{Naomi}", q"{Natalie}", q"{Natasha}", q"{Nicola}", q"{Nimakoah}", q"{Olivia}", q"{Pamela}"
		, q"{Patricia}", q"{Paula}", q"{Priscilla}", q"{Rachael}", q"{Rachel}", q"{Rebecca}", q"{Regina}"
		, q"{Rita}", q"{Roselyn}", q"{Rosemary}", q"{Ruth}", q"{Salomey}", q"{Samantha}", q"{Sandra}", q"{Sarah}"
		, q"{Sena}", q"{Sharon}", q"{Sheila}", q"{Shirley}", q"{Stephanie}", q"{Susan}", q"{Sylvia}", q"{Teresa}"
		, q"{Tina}", q"{Tracy}", q"{Vanessa}", q"{Veronica}", q"{Victoria}", q"{Vida}", q"{Wendy}", q"{Yaa}"
		, q"{Yvonne}" ];

		return choice(strs, this.rnd);
	}

	override string personFirstName() {
		const string[] strs =
		[ q"{Aaron}", q"{Aba}", q"{Abeiku}", q"{Abena}", q"{Abigail}", q"{Adam}", q"{Adrian}", q"{Adwoa}", q"{Afia}"
		, q"{Afua}", q"{Akofa}", q"{Akorfa}", q"{Akos}", q"{Akosua}", q"{Akua}", q"{Akumaa}", q"{Akwasi}"
		, q"{Akwesi}", q"{Albert}", q"{Alex}", q"{Alexander}", q"{Alice}", q"{Ama}", q"{Amanda}", q"{Amber}"
		, q"{Amelia}", q"{Andrew}", q"{Angela}", q"{Ann}", q"{Annette}", q"{Anthony}", q"{Antony}", q"{Arthur}"
		, q"{Awesi}", q"{Baaba}", q"{Barbara}", q"{Beatrice}", q"{Ben}", q"{Benjamin}", q"{Bernard}", q"{Bless}"
		, q"{Blessing}", q"{Bruce}", q"{COmfort}", q"{Carl}", q"{Caroline}", q"{Catherine}", q"{Charles}"
		, q"{Charlotte}", q"{Christian}", q"{Christina}", q"{Clifford}", q"{Colins}", q"{Comfort}", q"{Constance}"
		, q"{Daniel}", q"{Danielle}", q"{Danny}", q"{David}", q"{Deborah}", q"{Debra}", q"{Denis}", q"{Denise}"
		, q"{Dennis}", q"{Derrick}", q"{Dominic}", q"{Donald}", q"{Dora}", q"{Dorcas}", q"{Dorothy}", q"{Douglas}"
		, q"{Duncan}", q"{Edward}", q"{Ekow}", q"{Eliabeth}", q"{Elizabeth}", q"{Elliot}", q"{Elliott}"
		, q"{Emily}", q"{Emma}", q"{Eric}", q"{Ernestina}", q"{Esi}", q"{Eunice}", q"{Eyram}", q"{Felicia}"
		, q"{Fiifi}", q"{Francesca}", q"{Francis}", q"{Frank}", q"{Frederick}", q"{Gemma}", q"{George}"
		, q"{Georgia}", q"{Georgina}", q"{Gerald}", q"{Gifty}", q"{Gordon}", q"{Grace}", q"{Graham}", q"{Gregory}"
		, q"{Hannabel}", q"{Hannah}", q"{Harriet}", q"{Harry}", q"{Helen}", q"{Henry}", q"{Howard}", q"{Irene}"
		, q"{Isaac}", q"{Jack}", q"{Jacob}", q"{Jake}", q"{James}", q"{Janet}", q"{Janice}", q"{Jasmine}"
		, q"{Jason}", q"{Jeffrey}", q"{Jennifer}", q"{Jeremy}", q"{Jessica}", q"{Jill}", q"{Joanna}", q"{Joe}"
		, q"{Joel}", q"{John}", q"{Jonathan}", q"{Joojo}", q"{Joseph}", q"{Josephine}", q"{Josh}", q"{Joshua}"
		, q"{Josiah}", q"{Joyce}", q"{Judith}", q"{Julia}", q"{Julian}", q"{Juliana}", q"{Julie}", q"{Justin}"
		, q"{Karen}", q"{Karl}", q"{Kate}", q"{Katherine}", q"{Katy}", q"{Kenneth}", q"{Kevin}", q"{Kofi}"
		, q"{Kojo}", q"{Kujoe}", q"{Kwabena}", q"{Kwadwo}", q"{Kwaku}", q"{Kwame}", q"{Kwamena}", q"{Kwasi}"
		, q"{Kweku}", q"{Kwesi}", q"{Kyle}", q"{Lawrence}", q"{Lawrencia}", q"{Leslie}", q"{Linda}", q"{Lisa}"
		, q"{Lorraine}", q"{Louis}", q"{Lucy}", q"{Luke}", q"{Lydia}", q"{Malcolm}", q"{Mandy}", q"{Marcus}"
		, q"{Margaret}", q"{Maria}", q"{Marian}", q"{Marilyn}", q"{Mark}", q"{Martin}", q"{Mary}", q"{Mathew}"
		, q"{Matthew}", q"{Maureen}", q"{Mawuena}", q"{Mawusi}", q"{Max}", q"{Michael}", q"{Michelle}"
		, q"{Millicent}", q"{Nana Ama}", q"{Naomi}", q"{Natalie}", q"{Natasha}", q"{Nathan}", q"{Nicholas}"
		, q"{Nicola}", q"{Nigel}", q"{Nimakoah}", q"{Oliver}", q"{Olivia}", q"{Pamela}", q"{Patricia}"
		, q"{Patrick}", q"{Paul}", q"{Paula}", q"{Peter}", q"{Philip}", q"{Phillip}", q"{Priscilla}", q"{Promise}"
		, q"{Rachael}", q"{Rachel}", q"{Raymond}", q"{Rebecca}", q"{Regina}", q"{Richard}", q"{Rita}", q"{Robert}"
		, q"{Roger}", q"{Ronald}", q"{Roselyn}", q"{Rosemary}", q"{Russell}", q"{Ruth}", q"{Salomey}", q"{Sam}"
		, q"{Samantha}", q"{Samuel}", q"{Sandra}", q"{Sarah}", q"{Sena}", q"{Sharon}", q"{Shaun}", q"{Sheila}"
		, q"{Shirley}", q"{Simon}", q"{Stanley}", q"{Stephanie}", q"{Stephen}", q"{Steven}", q"{Susan}"
		, q"{Sylvia}", q"{Terence}", q"{Teresa}", q"{Thank God}", q"{Thomas}", q"{Thy Will Be Done}"
		, q"{Timothy}", q"{Tina}", q"{Tom}", q"{Tony}", q"{Tracy}", q"{Vanessa}", q"{Veronica}", q"{Victor}"
		, q"{Victoria}", q"{Vida}", q"{Vincent}", q"{Wendy}", q"{William}", q"{Yaa}", q"{Yaw}", q"{Yvonne}" ];

		return choice(strs, this.rnd);
	}

	override string personLastName() {
		const string[] strs =
		[ q"{Acheampong}", q"{Adadevoh}", q"{Adomah}", q"{Adomako}", q"{Adongo}", q"{Adu}", q"{Adusei}", q"{Adutwum}"
		, q"{Afirifa}", q"{Afoakwa}", q"{Agyapong}", q"{Agyare}", q"{Agyei}", q"{Agyemang}", q"{Ahortor}"
		, q"{Akoto}", q"{Akowua}", q"{Akyeamfuɔ}", q"{Akyeampong}", q"{Akyena}", q"{Akyerεko}", q"{Amo}"
		, q"{Amoa}", q"{Amoako}", q"{Amoasi}", q"{Ampadu}", q"{Ampofo}", q"{Amponsah}", q"{Andorful}", q"{Ankra}"
		, q"{Anokye}", q"{Ansa}", q"{Antwi}", q"{Appia}", q"{Appiah}", q"{Asamoa}", q"{Asamoah}", q"{Asante}"
		, q"{Asare}", q"{Asenso}", q"{Asiama}", q"{Asiedu}", q"{Ata}", q"{Awuah}", q"{Baa}", q"{Baafi}", q"{Baah}"
		, q"{Baawia}", q"{Badu}", q"{Boadi}", q"{Boadu}", q"{Boahen}", q"{Boakye}", q"{Boaten}", q"{Boateng}"
		, q"{Bona}", q"{Bonsra}", q"{Bonsu}", q"{Daako}", q"{Danso}", q"{Darko}", q"{Darteh}", q"{Dartey}"
		, q"{Djokoto}", q"{Donkor}", q"{Duah}", q"{Dwamena}", q"{Dzokoto}", q"{Fofie}", q"{Fosu}", q"{Gyamfi}"
		, q"{Gyasi}", q"{Karikari}", q"{Koomson}", q"{Kumi}", q"{Kusi}", q"{Kwaakye}", q"{Kwarteng}", q"{Kyei}"
		, q"{Mensa}", q"{Mensah}", q"{Nkansa}", q"{Nkansah}", q"{Nkrumah}", q"{Nsia}", q"{Nti}", q"{Ntiamoa}"
		, q"{Ntim}", q"{Nyaako}", q"{Nyame}", q"{Nyantakyi}", q"{Obeng}", q"{Ofori}", q"{Ofosu}", q"{Okyere}"
		, q"{Okpattah}", q"{Omani}", q"{Opoku}", q"{Oppong}", q"{Opuku}", q"{Osei}", q"{Oti}", q"{Otiwa}"
		, q"{Otuo}", q"{Owusu}", q"{Prempeh}", q"{Quartey}", q"{Safo}", q"{Sarpong}", q"{Takyi}", q"{Tawia}"
		, q"{Tutu}", q"{Tweneboa}", q"{Twumasi}", q"{Wiafe}", q"{Yaamoa}", q"{Yawson}", q"{Yeboa}", q"{Yeboah}"
		, q"{Yirenkyi}" ];

		return choice(strs, this.rnd);
	}

	override string personLastNamePattern() {
		const int rndInt = uniform(0, 2, this.rnd);

		if(rndInt >= 0 && rndInt < 1) {
			return personLastName();
		}
		if(rndInt >= 1 && rndInt < 2) {
			return personLastName() ~ "-" ~ personLastName();
		}

		return "";
	}

	override string personMaleFirstName() {
		const string[] strs =
		[ q"{Aaron}", q"{Abeiku}", q"{Adam}", q"{Adrian}", q"{Akwesi}", q"{Albert}", q"{Alex}", q"{Alexander}"
		, q"{Andrew}", q"{Anthony}", q"{Antony}", q"{Arthur}", q"{Ben}", q"{Benjamin}", q"{Bernard}", q"{Bless}"
		, q"{Blessing}", q"{Bruce}", q"{Carl}", q"{Charles}", q"{Christian}", q"{Clifford}", q"{Colins}"
		, q"{Daniel}", q"{Danny}", q"{David}", q"{Denis}", q"{Dennis}", q"{Derrick}", q"{Dominic}", q"{Donald}"
		, q"{Douglas}", q"{Duncan}", q"{Edward}", q"{Ekow}", q"{Elliot}", q"{Elliott}", q"{Eyram}", q"{Eric}"
		, q"{Fiifi}", q"{Francis}", q"{Frank}", q"{Frederick}", q"{George}", q"{Gerald}", q"{Gordon}", q"{Graham}"
		, q"{Gregory}", q"{Harry}", q"{Henry}", q"{Howard}", q"{Isaac}", q"{Akwasi}", q"{Jack}", q"{Jacob}"
		, q"{Jake}", q"{James}", q"{Jason}", q"{Jeffrey}", q"{Jeremy}", q"{Joe}", q"{Joel}", q"{John}", q"{Jonathan}"
		, q"{Joojo}", q"{Joseph}", q"{Josh}", q"{Joshua}", q"{Josiah}", q"{Julian}", q"{Justin}", q"{Karl}"
		, q"{Kenneth}", q"{Kevin}", q"{Kofi}", q"{Kojo}", q"{Kujoe}", q"{Kwabena}", q"{Kwadwo}", q"{Kwaku}"
		, q"{Kwame}", q"{Kwamena}", q"{Kwasi}", q"{Kweku}", q"{Kwesi}", q"{Kyle}", q"{Lawrence}", q"{Leslie}"
		, q"{Louis}", q"{Luke}", q"{Malcolm}", q"{Marcus}", q"{Mark}", q"{Martin}", q"{Mathew}", q"{Matthew}"
		, q"{Max}", q"{Michael}", q"{Nathan}", q"{Nicholas}", q"{Nigel}", q"{Oliver}", q"{Patrick}", q"{Paul}"
		, q"{Peter}", q"{Philip}", q"{Phillip}", q"{Promise}", q"{Raymond}", q"{Richard}", q"{Robert}"
		, q"{Roger}", q"{Ronald}", q"{Russell}", q"{Sam}", q"{Samuel}", q"{Shaun}", q"{Simon}", q"{Stanley}"
		, q"{Stephen}", q"{Steven}", q"{Terence}", q"{Thomas}", q"{Timothy}", q"{Thank God}", q"{Thy Will Be Done}"
		, q"{Tom}", q"{Tony}", q"{Victor}", q"{Vincent}", q"{William}", q"{Yaw}" ];

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
		[ q"{020#######}", q"{023#######}", q"{024#######}", q"{026#######}", q"{027#######}", q"{028#######}"
		, q"{050#######}", q"{053#######}", q"{054#######}", q"{055#######}", q"{056#######}", q"{057#######}"
		, q"{058#######}", q"{+23320#######}", q"{+23323#######}", q"{+23324#######}", q"{+23326#######}"
		, q"{+23327#######}", q"{+23328#######}", q"{+23350#######}", q"{+23353#######}", q"{+23354#######}"
		, q"{+23355#######}", q"{+23356#######}", q"{+23357#######}", q"{+23358#######}" ];

		return numberBuild(choice(str, this.rnd));
	}

}

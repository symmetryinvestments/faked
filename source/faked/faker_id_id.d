module faker.faker_id_id;

import std.random;
import std.array;
import std.format;
import std.conv : to;
import std.string : toUpper;
import std.range : iota, take, repeat;
import std.algorithm : map, joiner;
import faker.base;

class Faker_id_id : Faker {
@safe:
	this(int seed) {
		super(seed);
	}

	override string companyNamePattern() {
		assert(false);
	}

	override string companySuffix() {
		const string[] strs =
		[ q"{(Persero) Tbk}", q"{Tbk}" ];

		return choice(strs, this.rnd);
	}

	override string dateMonthWide() {
		const string[] strs =
		[ q"{Januari}", q"{Februari}", q"{Maret}", q"{April}", q"{Mei}", q"{Juni}", q"{Juli}", q"{Agustus}"
		, q"{September}", q"{Oktober}", q"{November}", q"{Desember}" ];

		return choice(strs, this.rnd);
	}

	override string dateMonthAbbr() {
		const string[] strs =
		[ q"{Jan}", q"{Feb}", q"{Mar}", q"{Apr}", q"{Mei}", q"{Jun}", q"{Jul}", q"{Ags}", q"{Sep}", q"{Okt}", q"{Nov}"
		, q"{Des}" ];

		return choice(strs, this.rnd);
	}

	override string dateWeekdayWide() {
		const string[] strs =
		[ q"{Minggu}", q"{Senin}", q"{Selasa}", q"{Rabu}", q"{Kamis}", q"{Jumat}", q"{Sabtu}" ];

		return choice(strs, this.rnd);
	}

	override string dateWeekdayAbbr() {
		const string[] strs =
		[ q"{Min}", q"{Sen}", q"{Sel}", q"{Rab}", q"{Kam}", q"{Jum}", q"{Sab}" ];

		return choice(strs, this.rnd);
	}

	override string internetDomainSuffix() {
		const string[] strs =
		[ q"{com}", q"{net}", q"{org}", q"{asia}", q"{tv}", q"{biz}", q"{info}", q"{in}", q"{name}", q"{co}", q"{id}"
		, q"{ac.id}", q"{sch.id}", q"{go.id}", q"{mil.id}", q"{co.id}", q"{or.id}", q"{web.id}", q"{my.id}"
		, q"{net.id}", q"{biz.id}", q"{desa.id}", q"{ponpes.id}" ];

		return choice(strs, this.rnd);
	}

	override string internetFreeEmail() {
		const string[] strs =
		[ q"{gmail.com}", q"{yahoo.com}", q"{gmail.co.id}", q"{yahoo.co.id}" ];

		return choice(strs, this.rnd);
	}

	override string locationCityName() {
		const string[] strs =
		[ q"{Airmadidi}", q"{Ampana}", q"{Amurang}", q"{Andolo}", q"{Banggai}", q"{Bantaeng}", q"{Barru}"
		, q"{Bau-Bau}", q"{Benteng}", q"{Bitung}", q"{Bolaang Uki}", q"{Boroko}", q"{Bulukumba}", q"{Bungku}"
		, q"{Buol}", q"{Buranga}", q"{Donggala}", q"{Enrekang}", q"{Gorontalo}", q"{Jeneponto}", q"{Kawangkoan}"
		, q"{Kendari}", q"{Kolaka}", q"{Kotamobagu}", q"{Kota Raha}", q"{Kwandang}", q"{Lasusua}", q"{Luwuk}"
		, q"{Majene}", q"{Makale}", q"{Makassar}", q"{Malili}", q"{Mamasa}", q"{Mamuju}", q"{Manado}", q"{Marisa}"
		, q"{Maros}", q"{Masamba}", q"{Melonguane}", q"{Ondong Siau}", q"{Palopo}", q"{Palu}", q"{Pangkajene}"
		, q"{Pare-Pare}", q"{Parigi}", q"{Pasangkayu}", q"{Pinrang}", q"{Polewali}", q"{Poso}", q"{Rantepao}"
		, q"{Ratahan}", q"{Rumbia}", q"{Sengkang}", q"{Sidenreng}", q"{Sigi Biromaru}", q"{Sinjai}"
		, q"{Sunggu Minasa}", q"{Suwawa}", q"{Tahuna}", q"{Takalar}", q"{Tilamuta}", q"{Toli Toli}"
		, q"{Tomohon}", q"{Tondano}", q"{Tutuyan}", q"{Unaaha}", q"{Wangi Wangi}", q"{Wanggudu}", q"{Watampone}"
		, q"{Watan Soppeng}", q"{Ambarawa}", q"{Anyer}", q"{Bandung}", q"{Bangil}", q"{Banjar (Jawa Barat)}"
		, q"{Banjarnegara}", q"{Bangkalan}", q"{Bantul}", q"{Banyumas}", q"{Banyuwangi}", q"{Batang}"
		, q"{Batu}", q"{Bekasi}", q"{Blitar}", q"{Blora}", q"{Bogor}", q"{Bojonegoro}", q"{Bondowoso}"
		, q"{Boyolali}", q"{Bumiayu}", q"{Brebes}", q"{Caruban}", q"{Cianjur}", q"{Ciamis}", q"{Cibinong}"
		, q"{Cikampek}", q"{Cikarang}", q"{Cilacap}", q"{Cilegon}", q"{Cirebon}", q"{Demak}", q"{Depok}"
		, q"{Garut}", q"{Gresik}", q"{Indramayu}", q"{Jakarta}", q"{Jember}", q"{Jepara}", q"{Jombang}"
		, q"{Kajen}", q"{Karanganyar}", q"{Kebumen}", q"{Kediri}", q"{Kendal}", q"{Kepanjen}", q"{Klaten}"
		, q"{Pelabuhan Ratu}", q"{Kraksaan}", q"{Kudus}", q"{Kuningan}", q"{Lamongan}", q"{Lumajang}"
		, q"{Madiun}", q"{Magelang}", q"{Magetan}", q"{Majalengka}", q"{Malang}", q"{Mojokerto}", q"{Mojosari}"
		, q"{Mungkid}", q"{Ngamprah}", q"{Nganjuk}", q"{Ngawi}", q"{Pacitan}", q"{Pamekasan}", q"{Pandeglang}"
		, q"{Pare}", q"{Pati}", q"{Pasuruan}", q"{Pekalongan}", q"{Pemalang}", q"{Ponorogo}", q"{Probolinggo}"
		, q"{Purbalingga}", q"{Purwakarta}", q"{Purwodadi}", q"{Purwokerto}", q"{Purworejo}", q"{Rangkasbitung}"
		, q"{Rembang}", q"{Salatiga}", q"{Sampang}", q"{Semarang}", q"{Serang}", q"{Sidayu}", q"{Sidoarjo}"
		, q"{Singaparna}", q"{Situbondo}", q"{Slawi}", q"{Sleman}", q"{Soreang}", q"{Sragen}", q"{Subang}"
		, q"{Sukabumi}", q"{Sukoharjo}", q"{Sumber}", q"{Sumedang}", q"{Sumenep}", q"{Surabaya}", q"{Surakarta}"
		, q"{Tasikmalaya}", q"{Tangerang}", q"{Tangerang Selatan}", q"{Tegal}", q"{Temanggung}", q"{Tigaraksa}"
		, q"{Trenggalek}", q"{Tuban}", q"{Tulungagung}", q"{Ungaran}", q"{Wates}", q"{Wlingi}", q"{Wonogiri}"
		, q"{Wonosari}", q"{Wonosobo}", q"{Yogyakarta}", q"{Atambua}", q"{Baa}", q"{Badung}", q"{Bajawa}"
		, q"{Bangli}", q"{Bima}", q"{Denpasar}", q"{Dompu}", q"{Ende}", q"{Gianyar}", q"{Kalabahi}", q"{Karangasem}"
		, q"{Kefamenanu}", q"{Klungkung}", q"{Kupang}", q"{Labuhan Bajo}", q"{Larantuka}", q"{Lewoleba}"
		, q"{Maumere}", q"{Mataram}", q"{Mbay}", q"{Negara}", q"{Praya}", q"{Raba}", q"{Ruteng}", q"{Selong}"
		, q"{Singaraja}", q"{Soe}", q"{Sumbawa Besar}", q"{Tabanan}", q"{Taliwang}", q"{Tambolaka}"
		, q"{Tanjung}", q"{Waibakul}", q"{Waikabubak}", q"{Waingapu}", q"{Negara,Bali}" ];

		return choice(strs, this.rnd);
	}

	override string locationCityPattern() {
		assert(false);
	}

	override string locationDefaultCountry() {
		const string[] strs =
		[ q"{Indonesia}" ];

		return choice(strs, this.rnd);
	}

	override string locationState() {
		const string[] strs =
		[ q"{Aceh}", q"{Sumatera Utara}", q"{Sumatera Barat}", q"{Jambi}", q"{Bangka Belitung}", q"{Riau}"
		, q"{Kepulauan Riau}", q"{Bengkulu}", q"{Sumatera Selatan}", q"{Lampung}", q"{Banten}", q"{DKI Jakarta}"
		, q"{Jawa Barat}", q"{Jawa Tengah}", q"{Jawa Timur}", q"{Nusa Tenggara Timur}", q"{DI Yogyakarta}"
		, q"{Bali}", q"{Nusa Tenggara Barat}", q"{Kalimantan Barat}", q"{Kalimantan Tengah}", q"{Kalimantan Selatan}"
		, q"{Kalimantan Timur}", q"{Kalimantan Utara}", q"{Sulawesi Selatan}", q"{Sulawesi Utara}"
		, q"{Gorontalo}", q"{Sulawesi Tengah}", q"{Sulawesi Barat}", q"{Sulawesi Tenggara}", q"{Maluku}"
		, q"{Maluku Utara}", q"{Papua Barat}", q"{Papua}", q"{Papua Tengah}", q"{Papua Pegunungan}"
		, q"{Papua Selatan}" ];

		return choice(strs, this.rnd);
	}

	override string locationStreetPattern() {
		assert(false);
	}

	override string personFemaleFirstName() {
		const string[] strs =
		[ q"{Ade}", q"{Agnes}", q"{Ajeng}", q"{Amalia}", q"{Anita}", q"{Ayu}", q"{Aisyah}", q"{Ana}", q"{Ami}"
		, q"{Ani}", q"{Azalea}", q"{Aurora}", q"{Alika}", q"{Anastasia}", q"{Amelia}", q"{Almira}", q"{Agustina}"
		, q"{Aulia}", q"{Anggun}", q"{Bella}", q"{Betania}", q"{Belinda}", q"{Citra}", q"{Cindy}", q"{Chelsea}"
		, q"{Clara}", q"{Cornelia}", q"{Cinta}", q"{Cinthia}", q"{Ciaobella}", q"{Cici}", q"{Carla}", q"{Calista}"
		, q"{Devi}", q"{Dewi}", q"{Dian}", q"{Diah}", q"{Diana}", q"{Dina}", q"{Dinda}", q"{Dalima}", q"{Dwi}"
		, q"{Dyah}", q"{Ditya}", q"{Eka}", q"{Eva}", q"{Endah}", q"{Elisa}", q"{Eli}", q"{Ella}", q"{Ellis}"
		, q"{Elma}", q"{Elvina}", q"{Fitria}", q"{Fitriani}", q"{Febi}", q"{Faizah}", q"{Farah}", q"{Farhunnisa}"
		, q"{Fathonah}", q"{Febrina}", q"{Febriana}", q"{Fitri}", q"{Fara}", q"{Gabriella}", q"{Gasti}"
		, q"{Gawati}", q"{Genta}", q"{Ghaliyati}", q"{Gina}", q"{Gilda}", q"{Ganesha}", q"{Gadis}", q"{Halima}"
		, q"{Hesti}", q"{Hilda}", q"{Hafshah}", q"{Hamima}", q"{Hana}", q"{Hani}", q"{Hasna}", q"{Humaira}"
		, q"{Ika}", q"{Indah}", q"{Intan}", q"{Irma}", q"{Icha}", q"{Ida}", q"{Ifa}", q"{Ilsa}", q"{Ina}", q"{Ira}"
		, q"{Iriana}", q"{Irawati}", q"{Indira}", q"{Jamalia}", q"{Janet}", q"{Jane}", q"{Julia}", q"{Juli}"
		, q"{Jessica}", q"{Jasmin}", q"{Jelita}", q"{Kamaria}", q"{Kamila}", q"{Kani}", q"{Karen}", q"{Karimah}"
		, q"{Kartika}", q"{Kasiyah}", q"{Keisha}", q"{Kezia}", q"{Kiandra}", q"{Kayla}", q"{Kania}", q"{Kirana}"
		, q"{Lala}", q"{Lalita}", q"{Latika}", q"{Laila}", q"{Laras}", q"{Lidya}", q"{Lili}", q"{Lintang}"
		, q"{Lestari}", q"{Linda}", q"{Laksita}", q"{Maria}", q"{Mala}", q"{Maya}", q"{Maida}", q"{Maimunah}"
		, q"{Melinda}", q"{Mila}", q"{Mutia}", q"{Michelle}", q"{Malika}", q"{Melani}", q"{Nadia}", q"{Nadine}"
		, q"{Nabila}", q"{Natalia}", q"{Novi}", q"{Nova}", q"{Nurul}", q"{Nilam}", q"{Najwa}", q"{Nada}", q"{Naura}"
		, q"{Nur}", q"{Novita}", q"{Nimas}", q"{Noviana}", q"{Olivia}", q"{Ophelia}", q"{Oni}", q"{Oliva}"
		, q"{Padma}", q"{Putri}", q"{Paramita}", q"{Paris}", q"{Patricia}", q"{Paulin}", q"{Puput}", q"{Puji}"
		, q"{Pia}", q"{Puspa}", q"{Puti}", q"{Padmi}", q"{Puspita}", q"{Pratiwi}", q"{Prita}", q"{Qori}", q"{Queen}"
		, q"{Ratih}", q"{Ratna}", q"{Restu}", q"{Rini}", q"{Rika}", q"{Rina}", q"{Rahayu}", q"{Rahmi}", q"{Rachel}"
		, q"{Raisa}", q"{Raina}", q"{Rahmawati}", q"{Retno}", q"{Ria}", q"{Rosalina}", q"{Rita}", q"{Rosa}"
		, q"{Sarah}", q"{Sari}", q"{Siti}", q"{Siska}", q"{Suci}", q"{Syahrini}", q"{Septi}", q"{Sadina}"
		, q"{Safina}", q"{Sakura}", q"{Salimah}", q"{Salwa}", q"{Salsabila}", q"{Samiah}", q"{Shania}"
		, q"{Sabrina}", q"{Silvia}", q"{Shakila}", q"{Sintia}", q"{Sartika}", q"{Safira}", q"{Sasha}", q"{Sherly}"
		, q"{Talia}", q"{Tami}", q"{Tira}", q"{Tiara}", q"{Titin}", q"{Tania}", q"{Tina}", q"{Tantri}", q"{Tari}"
		, q"{Titi}", q"{Tri}", q"{Tsabita}", q"{Uchita}", q"{Unjani}", q"{Ulya}", q"{Uli}", q"{Ulva}", q"{Umi}"
		, q"{Usyi}", q"{Vanya}", q"{Vanesa}", q"{Vivi}", q"{Vera}", q"{Vicky}", q"{Victoria}", q"{Violet}"
		, q"{Vania}", q"{Winda}", q"{Widya}", q"{Wulan}", q"{Wirda}", q"{Wani}", q"{Wulandari}", q"{Yani}"
		, q"{Yessi}", q"{Yulia}", q"{Yuliana}", q"{Yuni}", q"{Yunita}", q"{Yance}", q"{Zahra}", q"{Zalindra}"
		, q"{Zaenab}", q"{Zulfa}", q"{Zizi}", q"{Zulaikha}", q"{Zamira}", q"{Zelda}", q"{Zelaya}" ];

		return choice(strs, this.rnd);
	}

	override string personFirstName() {
		const string[] strs =
		[ q"{Abyasa}", q"{Ade}", q"{Adhiarja}", q"{Adiarja}", q"{Adika}", q"{Adikara}", q"{Adinata}", q"{Aditya}"
		, q"{Agnes}", q"{Agus}", q"{Agustina}", q"{Aisyah}", q"{Ajeng}", q"{Ajiman}", q"{Ajimat}", q"{Ajimin}"
		, q"{Ajiono}", q"{Akarsana}", q"{Alambana}", q"{Alika}", q"{Almira}", q"{Amalia}", q"{Amelia}"
		, q"{Ami}", q"{Among}", q"{Ana}", q"{Anastasia}", q"{Anggabaya}", q"{Anggun}", q"{Ani}", q"{Anita}"
		, q"{Anom}", q"{Argono}", q"{Aris}", q"{Arsipatra}", q"{Arta}", q"{Artanto}", q"{Artawan}", q"{Asirwada}"
		, q"{Asirwanda}", q"{Aslijan}", q"{Asmadi}", q"{Asman}", q"{Asmianto}", q"{Asmuni}", q"{Aswani}"
		, q"{Atma}", q"{Atmaja}", q"{Aulia}", q"{Aurora}", q"{Ayu}", q"{Azalea}", q"{Bagas}", q"{Bagiya}"
		, q"{Bagus}", q"{Bagya}", q"{Bahuraksa}", q"{Bahuwarna}", q"{Bahuwirya}", q"{Bajragin}", q"{Bakda}"
		, q"{Bakiadi}", q"{Bakianto}", q"{Bakidin}", q"{Bakijan}", q"{Bakiman}", q"{Bakiono}", q"{Bakti}"
		, q"{Baktiadi}", q"{Baktianto}", q"{Baktiono}", q"{Bala}", q"{Balamantri}", q"{Balangga}", q"{Balapati}"
		, q"{Balidin}", q"{Balijan}", q"{Bambang}", q"{Banara}", q"{Banawa}", q"{Banawi}", q"{Bancar}"
		, q"{Belinda}", q"{Bella}", q"{Betania}", q"{Budi}", q"{Cagak}", q"{Cager}", q"{Cahya}", q"{Cahyadi}"
		, q"{Cahyanto}", q"{Cahyo}", q"{Cahyono}", q"{Caket}", q"{Cakrabirawa}", q"{Cakrabuana}", q"{Cakrajiya}"
		, q"{Cakrawala}", q"{Cakrawangsa}", q"{Calista}", q"{Candra}", q"{Candrakanta}", q"{Capa}", q"{Caraka}"
		, q"{Carla}", q"{Carub}", q"{Catur}", q"{Caturangga}", q"{Cawisadi}", q"{Cawisono}", q"{Cawuk}"
		, q"{Cayadi}", q"{Cecep}", q"{Cemani}", q"{Cemeti}", q"{Cemplunk}", q"{Cengkal}", q"{Cengkir}"
		, q"{Chandra}", q"{Chelsea}", q"{Ciaobella}", q"{Cici}", q"{Cindy}", q"{Cinta}", q"{Cinthia}", q"{Citra}"
		, q"{Clara}", q"{Cornelia}", q"{Dacin}", q"{Dadap}", q"{Dadi}", q"{Dagel}", q"{Dalima}", q"{Daliman}"
		, q"{Dalimin}", q"{Daliono}", q"{Damar}", q"{Damu}", q"{Danang}", q"{Daniswara}", q"{Danu}", q"{Danuja}"
		, q"{Dariati}", q"{Darijan}", q"{Darimin}", q"{Darmaji}", q"{Darman}", q"{Darmana}", q"{Darmanto}"
		, q"{Darsirah}", q"{Dartono}", q"{Daru}", q"{Daruna}", q"{Daryani}", q"{Dasa}", q"{Devi}", q"{Dewi}"
		, q"{Diah}", q"{Dian}", q"{Diana}", q"{Digdaya}", q"{Dimas}", q"{Dimaz}", q"{Dina}", q"{Dinda}", q"{Dipa}"
		, q"{Dirja}", q"{Ditya}", q"{Dodo}", q"{Dono}", q"{Drajat}", q"{Dwi}", q"{Dyah}", q"{Edi}", q"{Edison}"
		, q"{Edward}", q"{Ega}", q"{Eja}", q"{Eka}", q"{Eko}", q"{Eli}", q"{Elisa}", q"{Ella}", q"{Ellis}", q"{Elma}"
		, q"{Elon}", q"{Eluh}", q"{Elvin}", q"{Elvina}", q"{Eman}", q"{Emas}", q"{Embuh}", q"{Emil}", q"{Emin}"
		, q"{Emong}", q"{Empluk}", q"{Endah}", q"{Endra}", q"{Enteng}", q"{Erik}", q"{Estiawan}", q"{Estiono}"
		, q"{Eva}", q"{Faizah}", q"{Fara}", q"{Farah}", q"{Farhunnisa}", q"{Fathonah}", q"{Febi}", q"{Febriana}"
		, q"{Febrina}", q"{Fitri}", q"{Fitria}", q"{Fitriani}", q"{Gabriella}", q"{Gada}", q"{Gadang}"
		, q"{Gading}", q"{Gadis}", q"{Gaduh}", q"{Gaiman}", q"{Galak}", q"{Galang}", q"{Galar}", q"{Galih}"
		, q"{Galiono}", q"{Galuh}", q"{Galur}", q"{Gaman}", q"{Gamani}", q"{Gamanto}", q"{Gambira}", q"{Gamblang}"
		, q"{Ganda}", q"{Gandewa}", q"{Gandi}", q"{Ganep}", q"{Ganesha}", q"{Gangsa}", q"{Gangsar}", q"{Ganjaran}"
		, q"{Gantar}", q"{Gara}", q"{Garan}", q"{Garang}", q"{Garda}", q"{Gasti}", q"{Gatot}", q"{Gatra}"
		, q"{Gawati}", q"{Genta}", q"{Ghaliyati}", q"{Ghani}", q"{Gibran}", q"{Gilang}", q"{Gilda}", q"{Gina}"
		, q"{Hadi}", q"{Hafshah}", q"{Hairyanto}", q"{Halim}", q"{Halima}", q"{Hamima}", q"{Hamzah}", q"{Hana}"
		, q"{Hani}", q"{Hardana}", q"{Hardi}", q"{Hari}", q"{Harimurti}", q"{Harja}", q"{Harjasa}", q"{Harjaya}"
		, q"{Harjo}", q"{Harsana}", q"{Harsanto}", q"{Harsaya}", q"{Hartaka}", q"{Hartana}", q"{Harto}"
		, q"{Hasan}", q"{Hasim}", q"{Hasna}", q"{Hasta}", q"{Hendra}", q"{Hendri}", q"{Heru}", q"{Heryanto}"
		, q"{Hesti}", q"{Hilda}", q"{Himawan}", q"{Humaira}", q"{Ian}", q"{Ibrahim}", q"{Ibrani}", q"{Ibun}"
		, q"{Icha}", q"{Ida}", q"{Ifa}", q"{Ihsan}", q"{Ika}", q"{Ikhsan}", q"{Ikin}", q"{Ilsa}", q"{Ilyas}"
		, q"{Imam}", q"{Ina}", q"{Indah}", q"{Indira}", q"{Indra}", q"{Intan}", q"{Ira}", q"{Irawati}", q"{Irfan}"
		, q"{Iriana}", q"{Irma}", q"{Irnanto}", q"{Irsad}", q"{Irwan}", q"{Ismail}", q"{Ivan}", q"{Jabal}"
		, q"{Jaeman}", q"{Jaga}", q"{Jagapati}", q"{Jagaraga}", q"{Jail}", q"{Jaiman}", q"{Jais}", q"{Jaka}"
		, q"{Jamal}", q"{Jamalia}", q"{Jamil}", q"{Jane}", q"{Janet}", q"{Jarwa}", q"{Jarwadi}", q"{Jarwi}"
		, q"{Jasmani}", q"{Jasmin}", q"{Jaswadi}", q"{Jati}", q"{Jatmiko}", q"{Jaya}", q"{Jayadi}", q"{Jayeng}"
		, q"{Jefri}", q"{Jelita}", q"{Jessica}", q"{Jinawi}", q"{Jindra}", q"{Johan}", q"{Joko}", q"{Jono}"
		, q"{Juli}", q"{Julia}", q"{Jumadi}", q"{Jumari}", q"{Kacung}", q"{Kadir}", q"{Kairav}", q"{Kajen}"
		, q"{Kala}", q"{Kalim}", q"{Kamal}", q"{Kamaria}", q"{Kambali}", q"{Kamidin}", q"{Kamila}", q"{Kanda}"
		, q"{Kani}", q"{Kania}", q"{Kardi}", q"{Karen}", q"{Karimah}", q"{Kariman}", q"{Karja}", q"{Karma}"
		, q"{Karman}", q"{Karna}", q"{Karsa}", q"{Karsana}", q"{Karta}", q"{Kartika}", q"{Karya}", q"{Kasim}"
		, q"{Kasiran}", q"{Kasiyah}", q"{Kasusra}", q"{Kawaca}", q"{Kawaya}", q"{Kayla}", q"{Kayun}", q"{Keisha}"
		, q"{Kemal}", q"{Kemba}", q"{Kenari}", q"{Kenes}", q"{Kenzie}", q"{Kezia}", q"{Kiandra}", q"{Kirana}"
		, q"{Koko}", q"{Kuncara}", q"{Kunthara}", q"{Kurnia}", q"{Kusuma}", q"{Labuh}", q"{Laila}", q"{Laksana}"
		, q"{Laksita}", q"{Lala}", q"{Lalita}", q"{Lamar}", q"{Lanang}", q"{Langgeng}", q"{Lanjar}", q"{Lantar}"
		, q"{Laras}", q"{Lasmanto}", q"{Lasmono}", q"{Laswi}", q"{Latif}", q"{Latika}", q"{Lega}", q"{Legawa}"
		, q"{Lembah}", q"{Leo}", q"{Lestari}", q"{Lidya}", q"{Lili}", q"{Liman}", q"{Limar}", q"{Linda}", q"{Lintang}"
		, q"{Luhung}", q"{Luis}", q"{Lukita}", q"{Lukman}", q"{Luluh}", q"{Lulut}", q"{Lurhur}", q"{Lutfan}"
		, q"{Luthfi}", q"{Luwar}", q"{Luwes}", q"{Mahdi}", q"{Mahesa}", q"{Mahfud}", q"{Mahmud}", q"{Maida}"
		, q"{Maimunah}", q"{Makara}", q"{Makuta}", q"{Mala}", q"{Malik}", q"{Malika}", q"{Maman}", q"{Manah}"
		, q"{Maras}", q"{Margana}", q"{Maria}", q"{Mariadi}", q"{Marsito}", q"{Marsudi}", q"{Martaka}"
		, q"{Martana}", q"{Martani}", q"{Marwata}", q"{Maryadi}", q"{Maryanto}", q"{Maya}", q"{Melani}"
		, q"{Melinda}", q"{Michelle}", q"{Mila}", q"{Mitra}", q"{Muhammad}", q"{Mujur}", q"{Mulya}", q"{Mulyanto}"
		, q"{Mulyono}", q"{Mumpuni}", q"{Muni}", q"{Mursinin}", q"{Mursita}", q"{Murti}", q"{Mustika}"
		, q"{Mustofa}", q"{Mutia}", q"{Nabila}", q"{Nada}", q"{Nadia}", q"{Nadine}", q"{Najam}", q"{Najib}"
		, q"{Najwa}", q"{Nalar}", q"{Naradi}", q"{Nardi}", q"{Narji}", q"{Nasab}", q"{Nasim}", q"{Nasrullah}"
		, q"{Natalia}", q"{Naura}", q"{Nilam}", q"{Nimas}", q"{Niyaga}", q"{Nova}", q"{Novi}", q"{Noviana}"
		, q"{Novita}", q"{Nrima}", q"{Nugraha}", q"{Nur}", q"{Nurul}", q"{Nyana}", q"{Nyoman}", q"{Okta}"
		, q"{Okto}", q"{Olga}", q"{Oliva}", q"{Olivia}", q"{Oman}", q"{Omar}", q"{Oni}", q"{Opan}", q"{Ophelia}"
		, q"{Opung}", q"{Oskar}", q"{Ozy}", q"{Padma}", q"{Padmi}", q"{Paiman}", q"{Panca}", q"{Pandu}", q"{Pangeran}"
		, q"{Pangestu}", q"{Panji}", q"{Paramita}", q"{Pardi}", q"{Paris}", q"{Parman}", q"{Patricia}"
		, q"{Paulin}", q"{Perkasa}", q"{Pia}", q"{Praba}", q"{Prabawa}", q"{Prabowo}", q"{Prabu}", q"{Prakosa}"
		, q"{Pranata}", q"{Pranawa}", q"{Prasetya}", q"{Prasetyo}", q"{Pratiwi}", q"{Prayitna}", q"{Prayoga}"
		, q"{Prayogo}", q"{Prima}", q"{Prita}", q"{Puji}", q"{Puput}", q"{Purwa}", q"{Purwadi}", q"{Purwanto}"
		, q"{Puspa}", q"{Puspita}", q"{Puti}", q"{Putri}", q"{Putu}", q"{Qori}", q"{Queen}", q"{Rachel}", q"{Raden}"
		, q"{Radika}", q"{Radit}", q"{Raditya}", q"{Rafi}", q"{Rafid}", q"{Raharja}", q"{Rahayu}", q"{Rahman}"
		, q"{Rahmat}", q"{Rahmawati}", q"{Rahmi}", q"{Raihan}", q"{Raina}", q"{Raisa}", q"{Rama}", q"{Rangga}"
		, q"{Ratih}", q"{Ratna}", q"{Reksa}", q"{Rendy}", q"{Respati}", q"{Restu}", q"{Retno}", q"{Reza}"
		, q"{Ria}", q"{Ridwan}", q"{Rika}", q"{Rina}", q"{Rini}", q"{Rita}", q"{Rizki}", q"{Rosa}", q"{Rosalina}"
		, q"{Rosman}", q"{Rudi}", q"{Rusman}", q"{Saadat}", q"{Sabar}", q"{Sabri}", q"{Sabrina}", q"{Sadina}"
		, q"{Safina}", q"{Safira}", q"{Saiful}", q"{Saka}", q"{Sakti}", q"{Sakura}", q"{Salimah}", q"{Salman}"
		, q"{Salsabila}", q"{Salwa}", q"{Samiah}", q"{Samsul}", q"{Sarah}", q"{Sari}", q"{Sartika}", q"{Sasha}"
		, q"{Satya}", q"{Septi}", q"{Setya}", q"{Shakila}", q"{Shania}", q"{Sherly}", q"{Sidiq}", q"{Silvia}"
		, q"{Simon}", q"{Sintia}", q"{Siska}", q"{Siti}", q"{Slamet}", q"{Soleh}", q"{Suci}", q"{Surya}", q"{Syahrini}"
		, q"{Talia}", q"{Tami}", q"{Tania}", q"{Tantri}", q"{Tari}", q"{Tasdik}", q"{Tasnim}", q"{Taswir}"
		, q"{Taufan}", q"{Taufik}", q"{Teddy}", q"{Tedi}", q"{Teguh}", q"{Tiara}", q"{Timbul}", q"{Tina}"
		, q"{Tira}", q"{Tirta}", q"{Tirtayasa}", q"{Titi}", q"{Titin}", q"{Tomi}", q"{Tri}", q"{Tsabita}"
		, q"{Tugiman}", q"{Uchita}", q"{Uda}", q"{Uli}", q"{Ulva}", q"{Ulya}", q"{Umar}", q"{Umay}", q"{Umaya}"
		, q"{Umi}", q"{Unggul}", q"{Unjani}", q"{Upik}", q"{Usman}", q"{Usyi}", q"{Utama}", q"{Vanesa}", q"{Vania}"
		, q"{Vanya}", q"{Vega}", q"{Vera}", q"{Vero}", q"{Vicky}", q"{Victoria}", q"{Viktor}", q"{Viman}"
		, q"{Vino}", q"{Vinsen}", q"{Violet}", q"{Virman}", q"{Vivi}", q"{Wadi}", q"{Wage}", q"{Wahyu}", q"{Wakiman}"
		, q"{Waluyo}", q"{Wani}", q"{Wardaya}", q"{Wardi}", q"{Warji}", q"{Warsa}", q"{Warsita}", q"{Warta}"
		, q"{Wasis}", q"{Wawan}", q"{Widya}", q"{Winda}", q"{Wira}", q"{Wirda}", q"{Wisnu}", q"{Wulan}", q"{Wulandari}"
		, q"{Xanana}", q"{Yahya}", q"{Yance}", q"{Yani}", q"{Yessi}", q"{Yoga}", q"{Yono}", q"{Yosef}", q"{Yulia}"
		, q"{Yuliana}", q"{Yuni}", q"{Yunita}", q"{Yusuf}", q"{Zaenab}", q"{Zahra}", q"{Zaki}", q"{Zakir}"
		, q"{Zalindra}", q"{Zamira}", q"{Zelaya}", q"{Zelda}", q"{Zizi}", q"{Zulaikha}", q"{Zulfa}", q"{Zulfikar}" ];

		return choice(strs, this.rnd);
	}

	override string personMaleFirstName() {
		const string[] strs =
		[ q"{Abyasa}", q"{Ade}", q"{Adhiarja}", q"{Adiarja}", q"{Adika}", q"{Adikara}", q"{Adinata}", q"{Aditya}"
		, q"{Agus}", q"{Ajiman}", q"{Ajimat}", q"{Ajimin}", q"{Ajiono}", q"{Akarsana}", q"{Alambana}", q"{Among}"
		, q"{Anggabaya}", q"{Anom}", q"{Argono}", q"{Aris}", q"{Arta}", q"{Artanto}", q"{Artawan}", q"{Arsipatra}"
		, q"{Asirwada}", q"{Asirwanda}", q"{Aslijan}", q"{Asmadi}", q"{Asman}", q"{Asmianto}", q"{Asmuni}"
		, q"{Aswani}", q"{Atma}", q"{Atmaja}", q"{Bagas}", q"{Bagiya}", q"{Bagus}", q"{Bagya}", q"{Bahuraksa}"
		, q"{Bahuwarna}", q"{Bahuwirya}", q"{Bajragin}", q"{Bakda}", q"{Bakiadi}", q"{Bakianto}", q"{Bakidin}"
		, q"{Bakijan}", q"{Bakiman}", q"{Bakiono}", q"{Bakti}", q"{Baktiadi}", q"{Baktianto}", q"{Baktiono}"
		, q"{Bala}", q"{Balamantri}", q"{Balangga}", q"{Balapati}", q"{Balidin}", q"{Balijan}", q"{Bambang}"
		, q"{Banara}", q"{Banawa}", q"{Banawi}", q"{Bancar}", q"{Budi}", q"{Cagak}", q"{Cager}", q"{Cahyadi}"
		, q"{Cahyanto}", q"{Cahya}", q"{Cahyo}", q"{Cahyono}", q"{Caket}", q"{Cakrabirawa}", q"{Cakrabuana}"
		, q"{Cakrajiya}", q"{Cakrawala}", q"{Cakrawangsa}", q"{Candra}", q"{Chandra}", q"{Candrakanta}"
		, q"{Capa}", q"{Caraka}", q"{Carub}", q"{Catur}", q"{Caturangga}", q"{Cawisadi}", q"{Cawisono}"
		, q"{Cawuk}", q"{Cayadi}", q"{Cecep}", q"{Cemani}", q"{Cemeti}", q"{Cemplunk}", q"{Cengkal}", q"{Cengkir}"
		, q"{Dacin}", q"{Dadap}", q"{Dadi}", q"{Dagel}", q"{Daliman}", q"{Dalimin}", q"{Daliono}", q"{Damar}"
		, q"{Damu}", q"{Danang}", q"{Daniswara}", q"{Danu}", q"{Danuja}", q"{Dariati}", q"{Darijan}", q"{Darimin}"
		, q"{Darmaji}", q"{Darman}", q"{Darmana}", q"{Darmanto}", q"{Darsirah}", q"{Dartono}", q"{Daru}"
		, q"{Daruna}", q"{Daryani}", q"{Dasa}", q"{Digdaya}", q"{Dimas}", q"{Dimaz}", q"{Dipa}", q"{Dirja}"
		, q"{Drajat}", q"{Dwi}", q"{Dono}", q"{Dodo}", q"{Edi}", q"{Eka}", q"{Elon}", q"{Eluh}", q"{Eman}", q"{Emas}"
		, q"{Embuh}", q"{Emong}", q"{Empluk}", q"{Endra}", q"{Enteng}", q"{Estiawan}", q"{Estiono}", q"{Eko}"
		, q"{Edison}", q"{Edward}", q"{Elvin}", q"{Erik}", q"{Emil}", q"{Ega}", q"{Emin}", q"{Eja}", q"{Gada}"
		, q"{Gadang}", q"{Gading}", q"{Gaduh}", q"{Gaiman}", q"{Galak}", q"{Galang}", q"{Galar}", q"{Galih}"
		, q"{Galiono}", q"{Galuh}", q"{Galur}", q"{Gaman}", q"{Gamani}", q"{Gamanto}", q"{Gambira}", q"{Gamblang}"
		, q"{Ganda}", q"{Gandewa}", q"{Gandi}", q"{Ganep}", q"{Gangsa}", q"{Gangsar}", q"{Ganjaran}", q"{Gantar}"
		, q"{Gara}", q"{Garan}", q"{Garang}", q"{Garda}", q"{Gatot}", q"{Gatra}", q"{Ghani}", q"{Gibran}"
		, q"{Gilang}", q"{Hairyanto}", q"{Hardana}", q"{Hardi}", q"{Harimurti}", q"{Harja}", q"{Harjasa}"
		, q"{Harjaya}", q"{Harjo}", q"{Harsana}", q"{Harsanto}", q"{Harsaya}", q"{Hartaka}", q"{Hartana}"
		, q"{Harto}", q"{Hasta}", q"{Heru}", q"{Himawan}", q"{Hadi}", q"{Halim}", q"{Hasim}", q"{Hasan}", q"{Hendra}"
		, q"{Hendri}", q"{Heryanto}", q"{Hamzah}", q"{Hari}", q"{Imam}", q"{Indra}", q"{Irwan}", q"{Irsad}"
		, q"{Ikhsan}", q"{Irfan}", q"{Ian}", q"{Ibrahim}", q"{Ibrani}", q"{Ismail}", q"{Irnanto}", q"{Ilyas}"
		, q"{Ibun}", q"{Ivan}", q"{Ikin}", q"{Ihsan}", q"{Jabal}", q"{Jaeman}", q"{Jaga}", q"{Jagapati}", q"{Jagaraga}"
		, q"{Jail}", q"{Jaiman}", q"{Jaka}", q"{Jarwa}", q"{Jarwadi}", q"{Jarwi}", q"{Jasmani}", q"{Jaswadi}"
		, q"{Jati}", q"{Jatmiko}", q"{Jaya}", q"{Jayadi}", q"{Jayeng}", q"{Jinawi}", q"{Jindra}", q"{Joko}"
		, q"{Jumadi}", q"{Jumari}", q"{Jamal}", q"{Jamil}", q"{Jais}", q"{Jefri}", q"{Johan}", q"{Jono}", q"{Kacung}"
		, q"{Kajen}", q"{Kambali}", q"{Kamidin}", q"{Kariman}", q"{Karja}", q"{Karma}", q"{Karman}", q"{Karna}"
		, q"{Karsa}", q"{Karsana}", q"{Karta}", q"{Kasiran}", q"{Kasusra}", q"{Kawaca}", q"{Kawaya}", q"{Kayun}"
		, q"{Kemba}", q"{Kenari}", q"{Kenes}", q"{Kuncara}", q"{Kunthara}", q"{Kusuma}", q"{Kadir}", q"{Kala}"
		, q"{Kalim}", q"{Kurnia}", q"{Kanda}", q"{Kardi}", q"{Karya}", q"{Kasim}", q"{Kairav}", q"{Kenzie}"
		, q"{Kemal}", q"{Kamal}", q"{Koko}", q"{Labuh}", q"{Laksana}", q"{Lamar}", q"{Lanang}", q"{Langgeng}"
		, q"{Lanjar}", q"{Lantar}", q"{Lega}", q"{Legawa}", q"{Lembah}", q"{Liman}", q"{Limar}", q"{Luhung}"
		, q"{Lukita}", q"{Luluh}", q"{Lulut}", q"{Lurhur}", q"{Luwar}", q"{Luwes}", q"{Latif}", q"{Lasmanto}"
		, q"{Lukman}", q"{Luthfi}", q"{Leo}", q"{Luis}", q"{Lutfan}", q"{Lasmono}", q"{Laswi}", q"{Mahesa}"
		, q"{Makara}", q"{Makuta}", q"{Manah}", q"{Maras}", q"{Margana}", q"{Mariadi}", q"{Marsudi}", q"{Martaka}"
		, q"{Martana}", q"{Martani}", q"{Marwata}", q"{Maryadi}", q"{Maryanto}", q"{Mitra}", q"{Mujur}"
		, q"{Mulya}", q"{Mulyanto}", q"{Mulyono}", q"{Mumpuni}", q"{Muni}", q"{Mursita}", q"{Murti}", q"{Mustika}"
		, q"{Maman}", q"{Mahmud}", q"{Mahdi}", q"{Mahfud}", q"{Malik}", q"{Muhammad}", q"{Mustofa}", q"{Marsito}"
		, q"{Mursinin}", q"{Nalar}", q"{Naradi}", q"{Nardi}", q"{Niyaga}", q"{Nrima}", q"{Nugraha}", q"{Nyana}"
		, q"{Narji}", q"{Nasab}", q"{Nasrullah}", q"{Nasim}", q"{Najib}", q"{Najam}", q"{Nyoman}", q"{Olga}"
		, q"{Ozy}", q"{Omar}", q"{Opan}", q"{Oskar}", q"{Oman}", q"{Okto}", q"{Okta}", q"{Opung}", q"{Paiman}"
		, q"{Panca}", q"{Pangeran}", q"{Pangestu}", q"{Pardi}", q"{Parman}", q"{Perkasa}", q"{Praba}", q"{Prabu}"
		, q"{Prabawa}", q"{Prabowo}", q"{Prakosa}", q"{Pranata}", q"{Pranawa}", q"{Prasetya}", q"{Prasetyo}"
		, q"{Prayitna}", q"{Prayoga}", q"{Prayogo}", q"{Purwadi}", q"{Purwa}", q"{Purwanto}", q"{Panji}"
		, q"{Pandu}", q"{Prima}", q"{Putu}", q"{Raden}", q"{Raditya}", q"{Raharja}", q"{Rama}", q"{Rangga}"
		, q"{Reksa}", q"{Respati}", q"{Rusman}", q"{Rosman}", q"{Rahmat}", q"{Rahman}", q"{Rendy}", q"{Reza}"
		, q"{Rizki}", q"{Ridwan}", q"{Rudi}", q"{Radit}", q"{Radika}", q"{Rafi}", q"{Rafid}", q"{Raihan}"
		, q"{Salman}", q"{Saadat}", q"{Saiful}", q"{Surya}", q"{Slamet}", q"{Samsul}", q"{Soleh}", q"{Simon}"
		, q"{Sabar}", q"{Sabri}", q"{Sidiq}", q"{Satya}", q"{Setya}", q"{Saka}", q"{Sakti}", q"{Taswir}", q"{Tedi}"
		, q"{Teddy}", q"{Taufan}", q"{Taufik}", q"{Tomi}", q"{Tasnim}", q"{Teguh}", q"{Tasdik}", q"{Timbul}"
		, q"{Tirta}", q"{Tirtayasa}", q"{Tri}", q"{Tugiman}", q"{Umar}", q"{Usman}", q"{Uda}", q"{Umay}", q"{Unggul}"
		, q"{Utama}", q"{Umaya}", q"{Upik}", q"{Viktor}", q"{Vino}", q"{Vinsen}", q"{Vero}", q"{Vega}", q"{Viman}"
		, q"{Virman}", q"{Wahyu}", q"{Wira}", q"{Wisnu}", q"{Wadi}", q"{Wardi}", q"{Warji}", q"{Waluyo}", q"{Wakiman}"
		, q"{Wage}", q"{Wardaya}", q"{Warsa}", q"{Warsita}", q"{Warta}", q"{Wasis}", q"{Wawan}", q"{Xanana}"
		, q"{Yahya}", q"{Yusuf}", q"{Yosef}", q"{Yono}", q"{Yoga}", q"{Zaki}", q"{Zakir}", q"{Zulfikar}" ];

		return choice(strs, this.rnd);
	}

	override string personSuffix() {
		const string[] strs =
		[ q"{S.Ked}", q"{S.Gz}", q"{S.Pt}", q"{S.IP}", q"{S.E.I}", q"{S.E.}", q"{S.Kom}", q"{S.H.}", q"{S.T.}"
		, q"{S.Pd}", q"{S.Psi}", q"{S.I.Kom}", q"{S.Sos}", q"{S.Farm}", q"{M.M.}", q"{M.Kom.}", q"{M.TI.}"
		, q"{M.Pd}", q"{M.Farm}", q"{M.Ak}" ];

		return choice(strs, this.rnd);
	}

}

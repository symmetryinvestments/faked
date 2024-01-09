module faked.faker_tr;

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

class Faker_tr : Faker_en {
@safe:
	this(int seed) {
		super(seed);
	}

	override string cellPhoneFormats() {
		const string[] strs =
		[ q"{+90-53#-###-##-##}", q"{+90-54#-###-##-##}", q"{+90-55#-###-##-##}", q"{+90-50#-###-##-##}" ];

		return numberBuild(choice(strs, this.rnd));
	}

	override string commerceProductDescription() {
		const string[] strs =
		[ q"{Gün boyu konfor ve destek için yapıştırılmış siyah deri ve PVC dolgulu koltuk ve sırt ile kaplanmış ergonomik yönetici koltuğu}"
		, q"{Otomobil düzeni, motorun arkasına monte edilmiş transaks tipi şanzımanlar ve dört tekerlekten çekiş ile bir ön motor tasarımından oluşur}", q"{Yeni ABC 13 9370, 13.3, 5. Nesil CoreA5-8250U, 8GB RAM, 256GB SSD, power UHD Graphics, OS 10 Home, OS Office A & J 2016}"
		, q"{Dev Byte'ın ince ve basit Maple Oyun Klavyesi, şık bir gövde ve akıllı işlevsellik için 7 Renkli RGB LED Arka Aydınlatma ile birlikte gelir}", q"{Apollotech B340, güvenilir bağlantıya, 12 aylık pil ömrüne ve modern tasarıma sahip uygun fiyatlı bir kablosuz faredir}"
		, q"{Nagasaki Lander, 1984 ABC800J ile başlayan birkaç Nagasaki spor bisiklet serisinin ticari markasıdır}", q"{Futbol Antrenman Ve Rekreasyon Amaçlı İyidir}"
		, q"{Karbonit ağ kaleci eldivenleri ergonomik olarak kolay oturacak şekilde tasarlanmıştır}", q"{Boston'un en gelişmiş kompresyon aşınması teknolojisi, kas oksijenlenmesini artırır, aktif kasları stabilize eder}"
		, q"{Yeni forma gömlek çeşitleri sizi göz önünde bulundurarak tasarlandı. Sizi farklı kılacak kesimler ve stiller ile}", q"{Doğal bileşenlerin heyecan verici bir karışımına sahip güzel Apple Naturalé serisi. %100 Doğal İçeriğin İyiliği ile}"
		, q"{Andy ayakkabılar, trendlerin yanı sıra dayanıklılığı da göz önünde bulundurarak tasarlandı, en şık ayakkabı ve sandalet yelpazesi}" ];

		return choice(strs, this.rnd);
	}

	override string commerceProductNameAdjective() {
		const string[] strs =
		[ q"{Küçük}", q"{Ergonomik}", q"{Kırsal}", q"{Zeki}", q"{Muhteşem}", q"{İnanılmaz}", q"{Harika}"
		, q"{Pratik}", q"{Şık}", q"{Mükemmel}", q"{Genel}", q"{El Üretimi}", q"{El Yapımı}", q"{Lisanslı}"
		, q"{Rafine}", q"{Markalanmamış}", q"{Lezzetli}" ];

		return choice(strs, this.rnd);
	}

	override string commerceProductNameMaterial() {
		const string[] strs =
		[ q"{Çelik}", q"{Ahşap}", q"{Beton}", q"{Plastik}", q"{Pamuk}", q"{Granit}", q"{Kauçuk}", q"{Metal}"
		, q"{Yumuşak}", q"{Taze}", q"{Dondurulmuş}" ];

		return choice(strs, this.rnd);
	}

	override string commerceProductNameProduct() {
		const string[] strs =
		[ q"{Sandalye}", q"{Araba}", q"{Bilgisayar}", q"{Tuş Takımı}", q"{Fare}", q"{Bisiklet}", q"{Top}"
		, q"{Eldiven}", q"{Pantolon}", q"{Gömlek}", q"{Tablo}", q"{Ayakkabı}", q"{Şapka}", q"{Havlu}"
		, q"{Sabun}", q"{Tuna}", q"{Tavuk}", q"{Balık}", q"{Peynir}", q"{Kayseri Pastırması}", q"{Pizza}"
		, q"{Salata}", q"{Sosis}", q"{Cips}" ];

		return choice(strs, this.rnd);
	}

	override string commerceDepartment() {
		const string[] strs =
		[ q"{Kitaplar}", q"{Filmler}", q"{Müzikler}", q"{Oyunlar}", q"{Elektronik}", q"{Bilgisayarlar}"
		, q"{Ev}", q"{Bahçe}", q"{Aletler}", q"{Bakkal}", q"{Sağlık}", q"{Güzellik}", q"{Oyuncaklar}"
		, q"{Çocuklar}", q"{Bebek}", q"{Giyim}", q"{Ayakkabı}", q"{Mücevher}", q"{Spor Dalları}"
		, q"{Açık Hava}", q"{Otomotiv}", q"{Sanayi}" ];

		return choice(strs, this.rnd);
	}

	override string internetDomainSuffix() {
		const string[] strs =
		[ q"{com.tr}", q"{com}", q"{biz}", q"{info}", q"{name}", q"{gov.tr}" ];

		return choice(strs, this.rnd);
	}

	override string locationBuildingNumber() {
		const string[] strs =
		[ q"{###}", q"{##}", q"{#}", q"{##a}", q"{##b}", q"{##c}" ];

		return numberBuild(choice(strs, this.rnd));
	}

	override string locationCityName() {
		const string[] strs =
		[ q"{Adana}", q"{Adıyaman}", q"{Afyon}", q"{Ağrı}", q"{Amasya}", q"{Ankara}", q"{Antalya}", q"{Artvin}"
		, q"{Aydın}", q"{Balıkesir}", q"{Bilecik}", q"{Bingöl}", q"{Bitlis}", q"{Bolu}", q"{Burdur}"
		, q"{Bursa}", q"{Çanakkale}", q"{Çankırı}", q"{Çorum}", q"{Denizli}", q"{Diyarbakır}"
		, q"{Edirne}", q"{Elazığ}", q"{Erzincan}", q"{Erzurum}", q"{Eskişehir}", q"{Gaziantep}", q"{Giresun}"
		, q"{Gümüşhane}", q"{Hakkari}", q"{Hatay}", q"{Isparta}", q"{İçel (Mersin)}", q"{İstanbul}"
		, q"{İzmir}", q"{Kars}", q"{Kastamonu}", q"{Kayseri}", q"{Kırklareli}", q"{Kırşehir}", q"{Kocaeli}"
		, q"{Konya}", q"{Kütahya}", q"{Malatya}", q"{Manisa}", q"{K.maraş}", q"{Mardin}", q"{Muğla}"
		, q"{Muş}", q"{Nevşehir}", q"{Niğde}", q"{Ordu}", q"{Rize}", q"{Sakarya}", q"{Samsun}", q"{Siirt}"
		, q"{Sinop}", q"{Sivas}", q"{Tekirdağ}", q"{Tokat}", q"{Trabzon}", q"{Tunceli}", q"{Şanlıurfa}"
		, q"{Uşak}", q"{Van}", q"{Yozgat}", q"{Zonguldak}", q"{Aksaray}", q"{Bayburt}", q"{Karaman}", q"{Kırıkkale}"
		, q"{Batman}", q"{Şırnak}", q"{Bartın}", q"{Ardahan}", q"{Iğdır}", q"{Yalova}", q"{Karabük}"
		, q"{Kilis}", q"{Osmaniye}", q"{Düzce}" ];

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
		[ q"{Afganistan}", q"{Almanya}", q"{Amerika Birleşik Devletleri}", q"{Amerikan Samoa}"
		, q"{Andorra}", q"{Angola}", q"{Anguilla, İngiltere}", q"{Antigua ve Barbuda}", q"{Arjantin}"
		, q"{Arnavutluk}", q"{Aruba, Hollanda}", q"{Avustralya}", q"{Avusturya}", q"{Azerbaycan}"
		, q"{Bahama Adaları}", q"{Bahreyn}", q"{Bangladeş}", q"{Barbados}", q"{Belçika}", q"{Belize}"
		, q"{Benin}", q"{Bermuda, İngiltere}", q"{Beyaz Rusya}", q"{Bhutan}", q"{Birleşik Arap Emirlikleri}"
		, q"{Birmanya (Myanmar)}", q"{Bolivya}", q"{Bosna Hersek}", q"{Botswana}", q"{Brezilya}"
		, q"{Brunei}", q"{Bulgaristan}", q"{Burkina Faso}", q"{Burundi}", q"{Cape Verde}", q"{Cayman Adaları, İngiltere}"
		, q"{Cebelitarık, İngiltere}", q"{Cezayir}", q"{Christmas Adası , Avusturalya}"
		, q"{Cibuti}", q"{Çad}", q"{Çek Cumhuriyeti}", q"{Çin}", q"{Danimarka}", q"{Doğu Timor}"
		, q"{Dominik Cumhuriyeti}", q"{Dominika}", q"{Ekvator}", q"{Ekvator Ginesi}", q"{El Salvador}"
		, q"{Endonezya}", q"{Eritre}", q"{Ermenistan}", q"{Estonya}", q"{Etiyopya}", q"{Fas}", q"{Fiji}"
		, q"{Fildişi Sahili}", q"{Filipinler}", q"{Filistin}", q"{Finlandiya}", q"{Folkland Adaları, İngiltere}"
		, q"{Fransa}", q"{Fransız Guyanası}", q"{Fransız Güney Eyaletleri (Kerguelen Adaları)}"
		, q"{Fransız Polinezyası}", q"{Gabon}", q"{Galler}", q"{Gambiya}", q"{Gana}", q"{Gine}", q"{Gine-Bissau}"
		, q"{Grenada}", q"{Grönland}", q"{Guadalup, Fransa}", q"{Guam, Amerika}", q"{Guatemala}"
		, q"{Guyana}", q"{Güney Afrika}", q"{Güney Georgia ve Güney Sandviç Adaları, İngiltere}"
		, q"{Güney Kıbrıs Rum Yönetimi}", q"{Güney Kore}", q"{Gürcistan H}", q"{Haiti}"
		, q"{Hırvatistan}", q"{Hindistan}", q"{Hollanda}", q"{Hollanda Antilleri}", q"{Honduras}"
		, q"{Irak}", q"{İngiltere}", q"{İran}", q"{İrlanda}", q"{İspanya}", q"{İsrail}", q"{İsveç}"
		, q"{İsviçre}", q"{İtalya}", q"{İzlanda}", q"{Jamaika}", q"{Japonya}", q"{Johnston Atoll, Amerika}"
		, q"{K.K.T.C.}", q"{Kamboçya}", q"{Kamerun}", q"{Kanada}", q"{Kanarya Adaları}", q"{Karadağ}"
		, q"{Katar}", q"{Kazakistan}", q"{Kenya}", q"{Kırgızistan}", q"{Kiribati}", q"{Kolombiya}"
		, q"{Komorlar}", q"{Kongo}", q"{Kongo Demokratik Cumhuriyeti}", q"{Kosova}", q"{Kosta Rika}"
		, q"{Kuveyt}", q"{Kuzey İrlanda}", q"{Kuzey Kore}", q"{Kuzey Maryana Adaları}", q"{Küba}"
		, q"{Laos}", q"{Lesotho}", q"{Letonya}", q"{Liberya}", q"{Libya}", q"{Liechtenstein}", q"{Litvanya}"
		, q"{Lübnan}", q"{Lüksemburg}", q"{Macaristan}", q"{Madagaskar}", q"{Makau (Makao)}", q"{Makedonya}"
		, q"{Malavi}", q"{Maldiv Adaları}", q"{Malezya}", q"{Mali}", q"{Malta}", q"{Marşal Adaları}"
		, q"{Martinik, Fransa}", q"{Mauritius}", q"{Mayotte, Fransa}", q"{Meksika}", q"{Mısır}"
		, q"{Midway Adaları, Amerika}", q"{Mikronezya}", q"{Moğolistan}", q"{Moldavya}", q"{Monako}"
		, q"{Montserrat}", q"{Moritanya}", q"{Mozambik}", q"{Namibia}", q"{Nauru}", q"{Nepal}", q"{Nijer}"
		, q"{Nijerya}", q"{Nikaragua}", q"{Niue, Yeni Zelanda}", q"{Norveç}", q"{Orta Afrika Cumhuriyeti}"
		, q"{Özbekistan}", q"{Pakistan}", q"{Palau Adaları}", q"{Palmyra Atoll, Amerika}", q"{Panama}"
		, q"{Papua Yeni Gine}", q"{Paraguay}", q"{Peru}", q"{Polonya}", q"{Portekiz}", q"{Porto Riko, Amerika}"
		, q"{Reunion, Fransa}", q"{Romanya}", q"{Ruanda}", q"{Rusya Federasyonu}", q"{Saint Helena, İngiltere}"
		, q"{Saint Martin, Fransa}", q"{Saint Pierre ve Miquelon, Fransa}", q"{Samoa}", q"{San Marino}"
		, q"{Santa Kitts ve Nevis}", q"{Santa Lucia}", q"{Santa Vincent ve Grenadinler}", q"{Sao Tome ve Principe}"
		, q"{Senegal}", q"{Seyşeller}", q"{Sırbistan}", q"{Sierra Leone}", q"{Singapur}", q"{Slovakya}"
		, q"{Slovenya}", q"{Solomon Adaları}", q"{Somali}", q"{Sri Lanka}", q"{Sudan}", q"{Surinam}"
		, q"{Suriye}", q"{Suudi Arabistan}", q"{Svalbard, Norveç}", q"{Svaziland}", q"{Şili}", q"{Tacikistan}"
		, q"{Tanzanya}", q"{Tayland}", q"{Tayvan}", q"{Togo}", q"{Tonga}", q"{Trinidad ve Tobago}", q"{Tunus}"
		, q"{Turks ve Caicos Adaları, İngiltere}", q"{Tuvalu}", q"{Türkiye}", q"{Türkmenistan}"
		, q"{Uganda}", q"{Ukrayna}", q"{Umman}", q"{Uruguay}", q"{Ürdün}", q"{Vallis ve Futuna, Fransa}"
		, q"{Vanuatu}", q"{Venezuela}", q"{Vietnam}", q"{Virgin Adaları, Amerika}", q"{Virgin Adaları, İngiltere}"
		, q"{Wake Adaları, Amerika}", q"{Yemen}", q"{Yeni Kaledonya, Fransa}", q"{Yeni Zelanda}"
		, q"{Yunanistan}", q"{Zambiya}", q"{Zimbabve}" ];

		return choice(strs, this.rnd);
	}

	override string locationDefaultCountry() {
		const string[] strs =
		[ q"{Türkiye}" ];

		return choice(strs, this.rnd);
	}

	override string locationPostcode() {
		const string[] strs =
		[ q"{#####}" ];

		return numberBuild(choice(strs, this.rnd));
	}

	override string locationState() {
		const string[] strs =
		[ q"{Adana}", q"{Adıyaman}", q"{Afyonkarahisar}", q"{Ağrı}", q"{Aksaray}", q"{Amasya}", q"{Ankara}"
		, q"{Antalya}", q"{Ardahan}", q"{Artvin}", q"{Aydın}", q"{Balıkesir}", q"{Bartın}", q"{Batman}"
		, q"{Bayburt}", q"{Bilecik}", q"{Bingöl}", q"{Bitlis}", q"{Bolu}", q"{Burdur}", q"{Bursa}", q"{Çanakkale}"
		, q"{Çankırı}", q"{Çorum}", q"{Denizli}", q"{Diyarbakır}", q"{Düzce}", q"{Edirne}", q"{Elazığ}"
		, q"{Erzincan}", q"{Erzurum}", q"{Eskişehir}", q"{Gaziantep}", q"{Giresun}", q"{Gümüşhane}"
		, q"{Hakkâri}", q"{Hatay}", q"{Iğdır}", q"{Isparta}", q"{İstanbul}", q"{İzmir}", q"{Kahramanmaraş}"
		, q"{Karabük}", q"{Karaman}", q"{Kars}", q"{Kastamonu}", q"{Kayseri}", q"{Kırıkkale}", q"{Kırklareli}"
		, q"{Kırşehir}", q"{Kilis}", q"{Kocaeli}", q"{Konya}", q"{Kütahya}", q"{Malatya}", q"{Manisa}"
		, q"{Mardin}", q"{Mersin}", q"{Muğla}", q"{Muş}", q"{Nevşehir}", q"{Niğde}", q"{Ordu}", q"{Osmaniye}"
		, q"{Rize}", q"{Sakarya}", q"{Samsun}", q"{Siirt}", q"{Sinop}", q"{Sivas}", q"{Şanlıurfa}", q"{Şırnak}"
		, q"{Tekirdağ}", q"{Tokat}", q"{Trabzon}", q"{Tunceli}", q"{Uşak}", q"{Van}", q"{Yalova}", q"{Yozgat}"
		, q"{Zonguldak}" ];

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
		[ q"{Atatürk Bulvarı}", q"{Alparslan Türkeş Bulvarı}", q"{Ali Çetinkaya Caddesi}"
		, q"{Tevfik Fikret Caddesi}", q"{Kocatepe Caddesi}", q"{İsmet Paşa Caddesi}", q"{30 Ağustos Caddesi}"
		, q"{İsmet Attila Caddesi}", q"{Namık Kemal Caddesi}", q"{Lütfi Karadirek Caddesi}"
		, q"{Sarıkaya Caddesi}", q"{Yunus Emre Sokak}", q"{Dar Sokak}", q"{Fatih Sokak }", q"{Harman Yolu Sokak }"
		, q"{Ergenekon Sokak  }", q"{Ülkü Sokak}", q"{Sağlık Sokak}", q"{Okul Sokak}", q"{Harman Altı Sokak}"
		, q"{Kaldırım Sokak}", q"{Mevlana Sokak}", q"{Gül Sokak}", q"{Sıran Söğüt Sokak}"
		, q"{Güven Yaka Sokak}", q"{Saygılı Sokak}", q"{Menekşe Sokak}", q"{Dağınık Evler Sokak}"
		, q"{Sevgi Sokak}", q"{Afyon Kaya Sokak}", q"{Oğuzhan Sokak}", q"{İbn-i Sina Sokak}"
		, q"{Bahçe Sokak}", q"{Köypınar Sokak}", q"{Kekeçoğlu Sokak}", q"{Barış Sokak}"
		, q"{Bayır Sokak}", q"{Kerimoğlu Sokak}", q"{Nalbant Sokak}", q"{Bandak Sokak}" ];

		return choice(strs, this.rnd);
	}

	override string locationStreetPattern() {
		switch(uniform(0, 1, this.rnd)) {
			case 0: return locationStreetName();
		}
		return "";
	}

	override string loremWords() {
		const string[] strs =
		[ q"{alias}", q"{consequatur}", q"{aut}", q"{perferendis}", q"{sit}", q"{voluptatem}", q"{accusantium}"
		, q"{doloremque}", q"{aperiam}", q"{eaque}", q"{ipsa}", q"{quae}", q"{ab}", q"{illo}", q"{inventore}"
		, q"{veritatis}", q"{et}", q"{quasi}", q"{architecto}", q"{beatae}", q"{vitae}", q"{dicta}", q"{sunt}"
		, q"{explicabo}", q"{aspernatur}", q"{odit}", q"{fugit}", q"{sed}", q"{quia}", q"{consequuntur}"
		, q"{magni}", q"{dolores}", q"{eos}", q"{qui}", q"{ratione}", q"{sequi}", q"{nesciunt}", q"{neque}"
		, q"{dolorem}", q"{ipsum}", q"{dolor}", q"{amet}", q"{consectetur}", q"{adipisci}", q"{velit}"
		, q"{non}", q"{numquam}", q"{eius}", q"{modi}", q"{tempora}", q"{incidunt}", q"{ut}", q"{labore}"
		, q"{dolore}", q"{magnam}", q"{aliquam}", q"{quaerat}", q"{enim}", q"{ad}", q"{minima}", q"{veniam}"
		, q"{quis}", q"{nostrum}", q"{exercitationem}", q"{ullam}", q"{corporis}", q"{nemo}", q"{ipsam}"
		, q"{voluptas}", q"{suscipit}", q"{laboriosam}", q"{nisi}", q"{aliquid}", q"{ex}", q"{ea}", q"{commodi}"
		, q"{autem}", q"{vel}", q"{eum}", q"{iure}", q"{reprehenderit}", q"{in}", q"{voluptate}", q"{esse}"
		, q"{quam}", q"{nihil}", q"{molestiae}", q"{iusto}", q"{odio}", q"{dignissimos}", q"{ducimus}"
		, q"{blanditiis}", q"{praesentium}", q"{laudantium}", q"{totam}", q"{rem}", q"{voluptatum}"
		, q"{deleniti}", q"{atque}", q"{corrupti}", q"{quos}", q"{quas}", q"{molestias}", q"{excepturi}"
		, q"{sint}", q"{occaecati}", q"{cupiditate}", q"{provident}", q"{perspiciatis}", q"{unde}", q"{omnis}"
		, q"{iste}", q"{natus}", q"{error}", q"{similique}", q"{culpa}", q"{officia}", q"{deserunt}", q"{mollitia}"
		, q"{animi}", q"{id}", q"{est}", q"{laborum}", q"{dolorum}", q"{fuga}", q"{harum}", q"{quidem}", q"{rerum}"
		, q"{facilis}", q"{expedita}", q"{distinctio}", q"{nam}", q"{libero}", q"{tempore}", q"{cum}", q"{soluta}"
		, q"{nobis}", q"{eligendi}", q"{optio}", q"{cumque}", q"{impedit}", q"{quo}", q"{porro}", q"{quisquam}"
		, q"{minus}", q"{quod}", q"{maxime}", q"{placeat}", q"{facere}", q"{possimus}", q"{assumenda}"
		, q"{repellendus}", q"{temporibus}", q"{quibusdam}", q"{illum}", q"{fugiat}", q"{nulla}", q"{pariatur}"
		, q"{at}", q"{vero}", q"{accusamus}", q"{officiis}", q"{debitis}", q"{necessitatibus}", q"{saepe}"
		, q"{eveniet}", q"{voluptates}", q"{repudiandae}", q"{recusandae}", q"{itaque}", q"{earum}"
		, q"{hic}", q"{tenetur}", q"{a}", q"{sapiente}", q"{delectus}", q"{reiciendis}", q"{voluptatibus}"
		, q"{maiores}", q"{doloribus}", q"{asperiores}", q"{repellat}" ];

		return choice(strs, this.rnd);
	}

	override string personFemaleFirstName() {
		const string[] strs =
		[ q"{Abendam}", q"{Açela}", q"{Açelya}", q"{Açılay}", q"{Adel}", q"{Adelya}", q"{Adile}", q"{Afitap}"
		, q"{Afra}", q"{Ağça}", q"{Ahenk}", q"{Ahlem}", q"{Alisa}", q"{Almila}", q"{Alvina}", q"{Amelya}"
		, q"{Amara}", q"{Andaç}", q"{Anar}", q"{Anise}", q"{Anita}", q"{Anka}", q"{Alpike}", q"{Altın}"
		, q"{Arın}", q"{Arya}", q"{Asuela}", q"{Aslım}", q"{Ayren}", q"{Aykal}", q"{Aysar}", q"{Ayşıl}"
		, q"{Bade}", q"{Bağdagül}", q"{Balın}", q"{Bediz}", q"{Bedran}", q"{Behrem}", q"{Belçim}", q"{Belma}"
		, q"{Beltun}", q"{Belemir}", q"{Benice}", q"{Benli}", q"{Berceste}", q"{Berçin}", q"{Berinay}"
		, q"{Berran}", q"{Berre}", q"{Berva}", q"{Besra}", q"{Çağıl}", q"{Cangül}", q"{Cannur}", q"{Cansel}"
		, q"{Cansın}", q"{Canel}", q"{Ceren}", q"{Ceyda}", q"{Cilvenaz}", q"{Ceylinaz}", q"{Ceylin}", q"{Ceyla}"
		, q"{Ceylan}", q"{Çağla}", q"{Çeşminaz}", q"{Çıgıl}", q"{Çiçek}", q"{Çilay}", q"{Çiler}"
		, q"{Çimen}", q"{Çise}", q"{Çişem}", q"{Çisil}", q"{Damla}", q"{Defne}", q"{Demet}", q"{Deniz}"
		, q"{Derya}", q"{Destan}", q"{Deste}", q"{Didem}", q"{Dilan}", q"{Dilara}", q"{Dilay}", q"{Diler}"
		, q"{Dilhan}", q"{Dilek}", q"{Dilruba}", q"{Döndü}", q"{Duygu}", q"{Dünya}", q"{Dürdane}", q"{Dürriye}"
		, q"{Dicle}", q"{Dolunay}", q"{Derin}", q"{Diclehan}", q"{Dilberay}", q"{Ebru}", q"{Ece}", q"{Eda}"
		, q"{Ekin}", q"{Ela}", q"{Elçin}", q"{Elif}", q"{Elmas}", q"{Elvan}", q"{Emel}", q"{Emine}", q"{Enise}"
		, q"{Esen}", q"{Eser}", q"{Esin}", q"{Esmeray}", q"{Eylül}", q"{Evşen}", q"{Eftalya}", q"{Ecem}"
		, q"{Eyşan}", q"{Fadime}", q"{Fahriye}", q"{Fahrünissa}", q"{Fatma}", q"{Fatoş}", q"{Fazilet}"
		, q"{Fehime}", q"{Ferah}", q"{Feray}", q"{Ferda}", q"{Feride}", q"{Feriha}", q"{Feyza}", q"{Fidan}"
		, q"{Figen}", q"{Fikriye}", q"{Filiz}", q"{Firdevs}", q"{Fulya}", q"{Fuldem}", q"{Fulden}", q"{Funda}"
		, q"{Füruzan}", q"{Füsun}", q"{Füreyya}", q"{Gamze}", q"{Gaye}", q"{Gizem}", q"{Gonca}", q"{Gökben}"
		, q"{Gökçe}", q"{Gökşin}", q"{Gönül}", q"{Gözde}", q"{Güher}", q"{Gül}", q"{Gülbahar}"
		, q"{Gülben}", q"{Gülçin}", q"{Güldem}", q"{Gülden}", q"{Güldeste}", q"{Gülen}", q"{Gülşen}"
		, q"{Gülgün}", q"{Gülnaz}", q"{Gülpembe}", q"{Gülriz}", q"{Gülsen}", q"{Günay}", q"{Güneş}"
		, q"{Güner}", q"{Güngör}", q"{Güniz}", q"{Günsel}", q"{Günseli}", q"{Gürcan}", q"{Güven}"
		, q"{Göknur}", q"{Günnur}", q"{Hale}", q"{Handan}", q"{Hande}", q"{Hayal}", q"{Hayat}", q"{Hazan}"
		, q"{Hilal}", q"{Hülya}", q"{Hümeyra}", q"{Hüner}", q"{Ilgın}", q"{Işık}", q"{Işıl}", q"{Işılay}"
		, q"{Işın}", q"{Itır}", q"{İclal}", q"{İdil}", q"{İffet}", q"{İkbal}", q"{İlayda}", q"{İlkben}"
		, q"{İlke}", q"{İlknur}", q"{İlksen}", q"{İlkyaz}", q"{İmge}", q"{İmran}", q"{İnci}", q"{İpek}"
		, q"{İrem}", q"{İzel}", q"{Yaprak}", q"{Yasemin}", q"{Yağmur}", q"{Yelda}", q"{Yeliz}", q"{Yeşim}"
		, q"{Yıldız}", q"{Yonca}", q"{Yosun}", q"{Jale}", q"{Julide}", q"{Kader}", q"{Kadriye}", q"{Kamelya}"
		, q"{Kamile}", q"{Kamuran}", q"{Kevser}", q"{Kumru}", q"{Kısmet}", q"{Kıymet}", q"{Kiraz}", q"{Lale}"
		, q"{Lamia}", q"{Latife}", q"{Leman}", q"{Lemide}", q"{Lerzan}", q"{Leyla}", q"{Lida}", q"{Mehtap}"
		, q"{Melda}", q"{Melek}", q"{Melike}", q"{Melis}", q"{Melisa}", q"{Melodi}", q"{Meltem}", q"{Meral}"
		, q"{Meriç}", q"{Merih}", q"{Merve}", q"{Meryem}", q"{Mihriban}", q"{Mine}", q"{Miray}", q"{Müesser}"
		, q"{Münevver}", q"{Müge}", q"{Müjde}", q"{Müjgan}", q"{Mukaddes}", q"{Mısra}", q"{Nalan}"
		, q"{Naz}", q"{Nazan}", q"{Nazlı}", q"{Necla}", q"{Nehir}", q"{Nergis}", q"{Neslişah}", q"{Nesrin}"
		, q"{Nevin}", q"{Nevra}", q"{Nida}", q"{Nigar}", q"{Nihal}", q"{Nihan}", q"{Nil}", q"{Nilgün}", q"{Nisa}"
		, q"{Nisan}", q"{Nükhet}", q"{Nur}", q"{Nural}", q"{Nuran}", q"{Nurgül}", q"{Nursel}", q"{Nurseli}"
		, q"{Okşan}", q"{Olcay}", q"{Oya}", q"{Öykü}", q"{Özden}", q"{Özge}", q"{Özlem}", q"{Özlen}"
		, q"{Öznur}", q"{Parla}", q"{Pakize}", q"{Pelin}", q"{Pelinsu}", q"{Pembe}", q"{Peri}", q"{Perihan}"
		, q"{Perran}", q"{Pervin}", q"{Petek}", q"{Pınar}", q"{Piraye}", q"{Rabia}", q"{Rahime}", q"{Rahşan}"
		, q"{Rana}", q"{Rengin}", q"{Reyhan}", q"{Rezzan}", q"{Rüya}", q"{Ruhsar}", q"{Sanem}", q"{Seçil}"
		, q"{Seda}", q"{Sedef}", q"{Seden}", q"{Seher}", q"{Selda}", q"{Selen}", q"{Selin}", q"{Selma}", q"{Selvi}"
		, q"{Sema}", q"{Semra}", q"{Senay}", q"{Serap}", q"{Sertap}", q"{Seren}", q"{Serin}", q"{Serpil}"
		, q"{Sevda}", q"{Sevgi}", q"{Sevil}", q"{Sevim}", q"{Sevinç}", q"{Sevtap}", q"{Seval}", q"{Sıla}"
		, q"{Sibel}", q"{Simge}", q"{Sinem}", q"{Songül}", q"{Su}", q"{Sunay}", q"{Suzan}", q"{Şebnem}"
		, q"{Şehrazat}", q"{Şelale}", q"{Şenay}", q"{Şengül}", q"{Şennur}", q"{Şermin}", q"{Şeyda}"
		, q"{Şeyma}", q"{Şevval}", q"{Şiir}", q"{Şule}", q"{Tanyeli}", q"{Tezer}", q"{Tuğba}", q"{Turna}"
		, q"{Tutku}", q"{Tülay}", q"{Tülin}", q"{Türkan}", q"{Tunay}", q"{Utku}", q"{Ulus}", q"{Uhra}"
		, q"{Uygu}", q"{Ulviye}", q"{Ülfet}", q"{Ülker}", q"{Ülkü}", q"{Ümmiye}", q"{Ümran}", q"{Ünsel}"
		, q"{Ünseli}", q"{Vahide}", q"{Verda}", q"{Vesile}", q"{Vicdan}", q"{Vildan}", q"{Vuslat}", q"{Zahide}"
		, q"{Zehra}", q"{Zekiye}", q"{Zerrin}", q"{Zeynep}", q"{Zübeyde}", q"{Zühal}", q"{Zülal}", q"{Züleyha}"
		, q"{Zeliha}", q"{Zümrüt}" ];

		return choice(strs, this.rnd);
	}

	override string personFemalePrefix() {
		const string[] strs =
		[ q"{Bayan}", q"{Dr.}", q"{Prof. Dr.}" ];

		return choice(strs, this.rnd);
	}

	override string personFirstName() {
		const string[] strs =
		[ q"{Aba}", q"{Abak}", q"{Abaka}", q"{Abakan}", q"{Abakay}", q"{Abar}", q"{Abay}", q"{Abı}", q"{Abılay}"
		, q"{Abluç}", q"{Abşar}", q"{Açığ}", q"{Açık}", q"{Açuk}", q"{Adalan}", q"{Adaldı}", q"{Adalmış}"
		, q"{Adar}", q"{Adaş}", q"{Adberilgen}", q"{Adıgüzel}", q"{Adık}", q"{Adıkutlu}", q"{Adıkutlutaş}"
		, q"{Adlı}", q"{Adlıbeğ}", q"{Adraman}", q"{Adsız}", q"{Afşar}", q"{Afşın}", q"{Ağabay}"
		, q"{Ağakağan}", q"{Ağalak}", q"{Ağlamış}", q"{Ak}", q"{Akaş}", q"{Akata}", q"{Akbaş}"
		, q"{Akbay}", q"{Akboğa}", q"{Akbörü}", q"{Akbudak}", q"{Akbuğra}", q"{Akbulak}", q"{Akça}"
		, q"{Akçakoca}", q"{Akçora}", q"{Akdemir}", q"{Akdoğan}", q"{Akı}", q"{Akıbudak}", q"{Akım}"
		, q"{Akın}", q"{Akınçı}", q"{Akkun}", q"{Akkunlu}", q"{Akkurt}", q"{Akkuş}", q"{Akpıra}"
		, q"{Aksungur}", q"{Aktan}", q"{Al}", q"{Ala}", q"{Alaban}", q"{Alabörü}", q"{Aladağ}", q"{Aladoğan}"
		, q"{Alakurt}", q"{Alayunt}", q"{Alayuntlu}", q"{Aldemir}", q"{Aldıgerey}", q"{Aldoğan}", q"{Algu}"
		, q"{Alımga}", q"{Alka}", q"{Alkabölük}", q"{Alkaevli}", q"{Alkan}", q"{Alkaşı}", q"{Alkış}"
		, q"{Alp}", q"{Alpagut}", q"{Alpamış}", q"{Alparsbeğ}", q"{Alparslan}", q"{Alpata}", q"{Alpay}"
		, q"{Alpaya}", q"{Alpaykağan}", q"{Alpbamsı}", q"{Alpbilge}", q"{Alpdirek}", q"{Alpdoğan}"
		, q"{Alper}", q"{Alperen}", q"{Alpertunga}", q"{Alpgerey}", q"{Alpış}", q"{Alpilig}", q"{Alpkara}"
		, q"{Alpkutlu}", q"{Alpkülük}", q"{Alpşalçı}", q"{Alptegin}", q"{Alptuğrul}", q"{Alptunga}"
		, q"{Alpturan}", q"{Alptutuk}", q"{Alpuluğ}", q"{Alpurungu}", q"{Alpurungututuk}", q"{Alpyörük}"
		, q"{Altan}", q"{Altankağan}", q"{Altankan}", q"{Altay}", q"{Altın}", q"{Altınkağan}", q"{Altınkan}"
		, q"{Altınoba}", q"{Altıntamgan}", q"{Altıntamgantarkan}", q"{Altıntarkan}", q"{Altıntay}"
		, q"{Altmışkara}", q"{Altuga}", q"{Amaç}", q"{Amrak}", q"{Amul}", q"{Ançuk}", q"{Andarıman}"
		, q"{Anıl}", q"{Ant}", q"{Apa}", q"{Apak}", q"{Apatarkan}", q"{Aprançur}", q"{Araboğa}", q"{Arademir}"
		, q"{Aral}", q"{Arbay}", q"{Arbuz}", q"{Arçuk}", q"{Ardıç}", q"{Argıl}", q"{Argu}", q"{Argun}"
		, q"{Arı}", q"{Arıboğa}", q"{Arık}", q"{Arıkağan}", q"{Arıkdoruk}", q"{Arınç}", q"{Arkın}"
		, q"{Arkış}", q"{Armağan}", q"{Arnaç}", q"{Arpat}", q"{Arsal}", q"{Arsıl}", q"{Arslan}", q"{Arslanargun}"
		, q"{Arslanbörü}", q"{Arslansungur}", q"{Arslantegin}", q"{Arslanyabgu}", q"{Arşun}", q"{Artıınal}"
		, q"{Artuk}", q"{Artukaç}", q"{Artut}", q"{Aruk}", q"{Asartegin}", q"{Asığ}", q"{Asrı}", q"{Asuğ}"
		, q"{Aşan}", q"{Aşanboğa}", q"{Aşantuğrul}", q"{Aşantudun}", q"{Aşıkbulmuş}", q"{Aşkın}"
		, q"{Aştaloğul}", q"{Aşuk}", q"{Ataç}", q"{Atakağan}", q"{Atakan}", q"{Atalan}", q"{Ataldı}"
		, q"{Atalmış}", q"{Ataman}", q"{Atasagun}", q"{Atasu}", q"{Atberilgen}", q"{Atıgay}", q"{Atıkutlu}"
		, q"{Atıkutlutaş}", q"{Atıla}", q"{Atılgan}", q"{Atım}", q"{Atımer}", q"{Atış}", q"{Atlı}"
		, q"{Atlıbeğ}", q"{Atlıkağan}", q"{Atmaca}", q"{Atsız}", q"{Atunçu}", q"{Avar}", q"{Avluç}"
		, q"{Avşar}", q"{Ay}", q"{Ayaçı}", q"{Ayas}", q"{Ayaş}", q"{Ayaz}", q"{Aybalta}", q"{Ayban}", q"{Aybars}"
		, q"{Aybeğ}", q"{Aydarkağan}", q"{Aydemir}", q"{Aydın}", q"{Aydınalp}", q"{Aydoğan}", q"{Aydoğdu}"
		, q"{Aydoğmuş}", q"{Aygırak}", q"{Ayıtmış}", q"{Ayız}", q"{Ayızdağ}", q"{Aykağan}"
		, q"{Aykan}", q"{Aykurt}", q"{Ayluç}", q"{Ayluçtarkan}", q"{Ayma}", q"{Ayruk}", q"{Aysılığ}"
		, q"{Aytak}", q"{Ayyıldız}", q"{Azak}", q"{Azban}", q"{Azgan}", q"{Azganaz}", q"{Azıl}", q"{Babır}"
		, q"{Babur}", q"{Baçara}", q"{Baççayman}", q"{Baçman}", q"{Badabul}", q"{Badruk}", q"{Badur}"
		, q"{Bağa}", q"{Bağaalp}", q"{Bağaışbara}", q"{Bağan}", q"{Bağaşatulu}", q"{Bağatarkan}"
		, q"{Bağatengrikağan}", q"{Bağatur}", q"{Bağaturçigşi}", q"{Bağaturgerey}", q"{Bağaturipi}"
		, q"{Bağatursepi}", q"{Bağış}", q"{Bağtaş}", q"{Bakağul}", q"{Bakır}", q"{Bakırsokum}"
		, q"{Baksı}", q"{Bakşı}", q"{Balaban}", q"{Balaka}", q"{Balakatay}", q"{Balamır}", q"{Balçar}"
		, q"{Baldu}", q"{Balkık}", q"{Balta}", q"{Baltacı}", q"{Baltar}", q"{Baltır}", q"{Baltur}", q"{Bamsı}"
		, q"{Bangu}", q"{Barak}", q"{Baraktöre}", q"{Baran}", q"{Barbeğ}", q"{Barboğa}", q"{Barbol}"
		, q"{Barbulsun}", q"{Barça}", q"{Barçadoğdu}", q"{Barçadoğmuş}", q"{Barçadurdu}", q"{Barçadurmuş}"
		, q"{Barçan}", q"{Barçatoyun}", q"{Bardıbay}", q"{Bargan}", q"{Barımtay}", q"{Barın}", q"{Barkan}"
		, q"{Barkdoğdu}", q"{Barkdoğmuş}", q"{Barkdurdu}", q"{Barkdurmuş}", q"{Barkın}", q"{Barlas}"
		, q"{Barlıbay}", q"{Barmaklak}", q"{Barmaklı}", q"{Barman}", q"{Bars}", q"{Barsbeğ}", q"{Barsboğa}"
		, q"{Barsgan}", q"{Barskan}", q"{Barsurungu}", q"{Bartu}", q"{Basademir}", q"{Basan}", q"{Basanyalavaç}"
		, q"{Basar}", q"{Basat}", q"{Baskın}", q"{Basmıl}", q"{Bastı}", q"{Bastuğrul}", q"{Basu}", q"{Basut}"
		, q"{Başak}", q"{Başbuğ}", q"{Başçı}", q"{Başgan}", q"{Başkırt}", q"{Başkurt}", q"{Baştar}"
		, q"{Batrak}", q"{Batu}", q"{Batuk}", q"{Batur}", q"{Baturalp}", q"{Bay}", q"{Bayançar}", q"{Bayankağan}"
		, q"{Bayat}", q"{Bayazıt}", q"{Baybars}", q"{Baybayık}", q"{Baybiçen}", q"{Bayboğa}", q"{Baybora}"
		, q"{Baybüre}", q"{Baydar}", q"{Baydemir}", q"{Baydur}", q"{Bayık}", q"{Bayınçur}", q"{Bayındır}"
		, q"{Baykal}", q"{Baykara}", q"{Baykoca}", q"{Baykuzu}", q"{Baymünke}", q"{Bayna}", q"{Baynal}"
		, q"{Baypüre}", q"{Bayrı}", q"{Bayraç}", q"{Bayrak}", q"{Bayram}", q"{Bayrın}", q"{Bayruk}"
		, q"{Baysungur}", q"{Baytara}", q"{Baytaş}", q"{Bayunçur}", q"{Bayur}", q"{Bayurku}", q"{Bayutmuş}"
		, q"{Bayuttu}", q"{Bazır}", q"{Beçeapa}", q"{Beçkem}", q"{Beğ}", q"{Beğarslan}", q"{Beğbars}"
		, q"{Beğbilgeçikşin}", q"{Beğboğa}", q"{Beğçur}", q"{Beğdemir}", q"{Beğdilli}", q"{Beğdurmuş}"
		, q"{Beğkulu}", q"{Beğtaş}", q"{Beğtegin}", q"{Beğtüzün}", q"{Begi}", q"{Begil}", q"{Begine}"
		, q"{Begitutuk}", q"{Beglen}", q"{Begni}", q"{Bek}", q"{Bekazıl}", q"{Bekbekeç}", q"{Bekeç}"
		, q"{Bekeçarslan}", q"{Bekeçarslantegin}", q"{Bekeçtegin}", q"{Beker}", q"{Beklemiş}"
		, q"{Bektür}", q"{Belçir}", q"{Belek}", q"{Belgi}", q"{Belgüc}", q"{Beltir}", q"{Bengi}", q"{Bengü}"
		, q"{Benlidemir}", q"{Berdibeğ}", q"{Berendey}", q"{Bergü}", q"{Berginsenge}", q"{Berk}", q"{Berke}"
		, q"{Berkiş}", q"{Berkyaruk}", q"{Bermek}", q"{Besentegin}", q"{Betemir}", q"{Beyizçi}", q"{Beyrek}"
		, q"{Beyrem}", q"{Bıçkı}", q"{Bıçkıcı}", q"{Bıdın}", q"{Bıtaybıkı}", q"{Bıtrı}"
		, q"{Biçek}", q"{Bilge}", q"{Bilgebayunçur}", q"{Bilgebeğ}", q"{Bilgeçikşin}", q"{Bilgeışbara}"
		, q"{Bilgeışbaratamgan}", q"{Bilgekağan}", q"{Bilgekan}", q"{Bilgekutluk}", q"{Bilgekülüçur}"
		, q"{Bilgetaçam}", q"{Bilgetamgacı}", q"{Bilgetardu}", q"{Bilgetegin}", q"{Bilgetonyukuk}"
		, q"{Bilgez}", q"{Bilgiç}", q"{Bilgin}", q"{Bilig}", q"{Biligköngülsengün}", q"{Bilik}"
		, q"{Binbeği}", q"{Bindir}", q"{Boğa}", q"{Boğaç}", q"{Boğaçuk}", q"{Boldaz}", q"{Bolmuş}"
		, q"{Bolsun}", q"{Bolun}", q"{Boncuk}", q"{Bongul}", q"{Bongulboğa}", q"{Bora}", q"{Boran}", q"{Borçul}"
		, q"{Borlukçu}", q"{Bornak}", q"{Boyan}", q"{Boyankulu}", q"{Boylabağa}", q"{Boylabağatarkan}"
		, q"{Boylakutlutarkan}", q"{Bozan}", q"{Bozbörü}", q"{Bozdoğan}", q"{Bozkurt}", q"{Bozkuş}"
		, q"{Bozok}", q"{Bögde}", q"{Böge}", q"{Bögü}", q"{Bökde}", q"{Böke}", q"{Bölen}", q"{Bölükbaşı}"
		, q"{Bönek}", q"{Bönge}", q"{Börü}", q"{Börübars}", q"{Börüsengün}", q"{Börteçine}"
		, q"{Buçan}", q"{Buçur}", q"{Budağ}", q"{Budak}", q"{Budunlu}", q"{Buğday}", q"{Buğra}", q"{Buğrakarakağan}"
		, q"{Bukak}", q"{Bukaktutuk}", q"{Bulaçapan}", q"{Bulak}", q"{Bulan}", q"{Buldur}", q"{Bulgak}"
		, q"{Bulmaz}", q"{Bulmuş}", q"{Buluç}", q"{Buluğ}", q"{Buluk}", q"{Buluş}", q"{Bulut}", q"{Bumın}"
		, q"{Bunsuz}", q"{Burçak}", q"{Burguçan}", q"{Burkay}", q"{Burslan}", q"{Burulday}", q"{Burulgu}"
		, q"{Burunduk}", q"{Buşulgan}", q"{Butak}", q"{Butuk}", q"{Buyan}", q"{Buyançuk}", q"{Buyandemir}"
		, q"{Buyankara}", q"{Buyat}", q"{Buyraç}", q"{Buyruç}", q"{Buyruk}", q"{Buzaç}", q"{Buzaçtutuk}"
		, q"{Büdüs}", q"{Büdüstudun}", q"{Bügü}", q"{Bügdüz}", q"{Bügdüzemen}", q"{Büge}"
		, q"{Büğübilge}", q"{Bükdüz}", q"{Büke}", q"{Bükebuyraç}", q"{Bükebuyruç}", q"{Bükey}"
		, q"{Büktegin}", q"{Büküşboğa}", q"{Bümen}", q"{Bünül}", q"{Büre}", q"{Bürgüt}", q"{Bürkek}"
		, q"{Bürküt}", q"{Bürlük}", q"{Cebe}", q"{Ceyhun}", q"{Cılasun}", q"{Çaba}", q"{Çabdar}"
		, q"{Çablı}", q"{Çabuş}", q"{Çağan}", q"{Çağatay}", q"{Çağlar}", q"{Çağlayan}", q"{Çağrı}"
		, q"{Çağrıbeğ}", q"{Çağrıtegin}", q"{Çağru}", q"{Çalapkulu}", q"{Çankız}", q"{Çemen}"
		, q"{Çemgen}", q"{Çeykün}", q"{Çıngır}", q"{Çiçek}", q"{Çiçem}", q"{Çiğdem}", q"{Çilenti}"
		, q"{Çimen}", q"{Çobulmak}", q"{Çocukbörü}", q"{Çokramayul}", q"{Çolman}", q"{Çolpan}"
		, q"{Çölü}", q"{Damla}", q"{Deniz}", q"{Dilek}", q"{Diri}", q"{Dizik}", q"{Duru}", q"{Dururbunsuz}"
		, q"{Duygu}", q"{Ebin}", q"{Ebkızı}", q"{Ebren}", q"{Edil}", q"{Ediz}", q"{Egemen}", q"{Eğrim}"
		, q"{Ekeç}", q"{Ekim}", q"{Ekin}", q"{Elkin}", q"{Elti}", q"{Engin}", q"{Erdem}", q"{Erdeni}", q"{Erdeniözük}"
		, q"{Erdenikatun}", q"{Erentüz}", q"{Ergene}", q"{Ergenekatun}", q"{Erinç}", q"{Erke}", q"{Ermen}"
		, q"{Erten}", q"{Ertenözük}", q"{Esen}", q"{Esenbike}", q"{Eser}", q"{Esin}", q"{Etil}", q"{Evin}"
		, q"{Eyiz}", q"{Gelin}", q"{Gelincik}", q"{Gökbörü}", q"{Gökçe}", q"{Gökçegöl}", q"{Gökçen}"
		, q"{Gökçiçek}", q"{Gökşin}", q"{Gönül}", q"{Görün}", q"{Gözde}", q"{Gülegen}", q"{Gülemen}"
		, q"{Güler}", q"{Gülümser}", q"{Gümüş}", q"{Gün}", q"{Günay}", q"{Günçiçek}", q"{Gündoğdu}"
		, q"{Gündoğmuş}", q"{Güneş}", q"{Günyaruk}", q"{Gürbüz}", q"{Güvercin}", q"{Güzey}"
		, q"{Işığ}", q"{Işık}", q"{Işıl}", q"{Işılay}", q"{Ila}", q"{Ilaçın}", q"{Ilgın}", q"{Inanç}"
		, q"{Irmak}", q"{Isığ}", q"{Isık}", q"{Iyık}", q"{Iyıktağ}", q"{İdil}", q"{İkeme}", q"{İkiçitoyun}"
		, q"{İlbilge}", q"{İldike}", q"{İlgegü}", q"{İmrem}", q"{İnci}", q"{İnç}", q"{İrinç}"
		, q"{İrinçköl}", q"{İrtiş}", q"{İtil}", q"{Kancı}", q"{Kançı}", q"{Kapgar}", q"{Karaca}"
		, q"{Karaça}", q"{Karak}", q"{Kargılaç}", q"{Karlıgaç}", q"{Katun}", q"{Katunkız}", q"{Kayacık}"
		, q"{Kayaçık}", q"{Kayça}", q"{Kaynak}", q"{Kazanç}", q"{Kazkatun}", q"{Kekik}", q"{Keklik}"
		, q"{Kepez}", q"{Kesme}", q"{Keyken}", q"{Kezlik}", q"{Kımız}", q"{Kımızın}", q"{Kımızalma}"
		, q"{Kımızalmıla}", q"{Kırçiçek}", q"{Kırgavul}", q"{Kırlangıç}", q"{Kıvanç}"
		, q"{Kıvılcım}", q"{Kızdurmuş}", q"{Kızılalma}" ];

		return choice(strs, this.rnd);
	}

	override string personLastName() {
		const string[] strs =
		[ q"{Abacı}", q"{Abadan}", q"{Aclan}", q"{Adal}", q"{Adan}", q"{Adıvar}", q"{Akal}", q"{Akan}", q"{Akar }"
		, q"{Akay}", q"{Akaydın}", q"{Akbulut}", q"{Akgül}", q"{Akışık}", q"{Akman}", q"{Akyürek}"
		, q"{Akyüz}", q"{Akşit}", q"{Alnıaçık}", q"{Alpuğan}", q"{Alyanak}", q"{Arıcan}", q"{Arslanoğlu}"
		, q"{Atakol}", q"{Atan}", q"{Avan}", q"{Ayaydın}", q"{Aybar}", q"{Aydan}", q"{Aykaç}", q"{Ayverdi}"
		, q"{Ağaoğlu}", q"{Aşıkoğlu}", q"{Babacan}", q"{Babaoğlu}", q"{Bademci}", q"{Bakırcıoğlu}"
		, q"{Balaban}", q"{Balcı}", q"{Barbarosoğlu}", q"{Baturalp}", q"{Baykam}", q"{Başoğlu}"
		, q"{Berberoğlu}", q"{Beşerler}", q"{Beşok}", q"{Biçer}", q"{Bolatlı}", q"{Dalkıran}"
		, q"{Dağdaş}", q"{Dağlaroğlu}", q"{Demirbaş}", q"{Demirel}", q"{Denkel}", q"{Dizdar }"
		, q"{Doğan }", q"{Durak }", q"{Durmaz}", q"{Duygulu}", q"{Düşenkalkar}", q"{Egeli}", q"{Ekici}"
		, q"{Ekşioğlu}", q"{Eliçin}", q"{Elmastaşoğlu}", q"{Elçiboğa}", q"{Erbay}", q"{Erberk}"
		, q"{Erbulak}", q"{Erdoğan}", q"{Erez}", q"{Erginsoy}", q"{Erkekli}", q"{Eronat}", q"{Ertepınar}"
		, q"{Ertürk}", q"{Erçetin}", q"{Evliyaoğlu}", q"{Gönültaş}", q"{Gümüşpala}", q"{Günday}"
		, q"{Gürmen}", q"{Hakyemez}", q"{Hamzaoğlu}", q"{Ilıcalı}", q"{Kahveci}", q"{Kaplangı}"
		, q"{Karabulut}", q"{Karaböcek}", q"{Karadaş}", q"{Karaduman}", q"{Karaer}", q"{Kasapoğlu}"
		, q"{Kavaklıoğlu}", q"{Kaya }", q"{Keseroğlu}", q"{Keçeci}", q"{Kılıççı}", q"{Kıraç }"
		, q"{Kocabıyık}", q"{Korol}", q"{Koyuncu}", q"{Koç}", q"{Koçoğlu}", q"{Koçyiğit}", q"{Kuday}"
		, q"{Kulaksızoğlu}", q"{Kumcuoğlu}", q"{Kunt}", q"{Kunter}", q"{Kurutluoğlu}", q"{Kutlay}"
		, q"{Kuzucu}", q"{Körmükçü}", q"{Köybaşı}", q"{Köylüoğlu}", q"{Küçükler}", q"{Limoncuoğlu}"
		, q"{Mayhoş}", q"{Menemencioğlu}", q"{Mertoğlu}", q"{Nalbantoğlu}", q"{Nebioğlu}", q"{Numanoğlu}"
		, q"{Okumuş}", q"{Okur}", q"{Oraloğlu}", q"{Orbay}", q"{Ozansoy}", q"{Paksüt}", q"{Pekkan}"
		, q"{Pektemek}", q"{Polat}", q"{Poyrazoğlu}", q"{Poçan}", q"{Sadıklar}", q"{Samancı}", q"{Sandalcı}"
		, q"{Sarıoğlu}", q"{Saygıner}", q"{Sepetçi}", q"{Sezek}", q"{Sinanoğlu}", q"{Solmaz}", q"{Sözeri}"
		, q"{Süleymanoğlu}", q"{Tahincioğlu}", q"{Tanrıkulu}", q"{Tazegül}", q"{Taşlı}", q"{Taşçı}"
		, q"{Tekand}", q"{Tekelioğlu}", q"{Tokatlıoğlu}", q"{Tokgöz}", q"{Topaloğlu}", q"{Topçuoğlu}"
		, q"{Toraman}", q"{Tunaboylu}", q"{Tunçeri}", q"{Tuğlu}", q"{Tuğluk}", q"{Türkdoğan}", q"{Türkyılmaz}"
		, q"{Tütüncü}", q"{Tüzün}", q"{Uca}", q"{Uluhan}", q"{Velioğlu}", q"{Yalçın}", q"{Yazıcı}"
		, q"{Yetkiner}", q"{Yeşilkaya}", q"{Yıldırım }", q"{Yıldızoğlu}", q"{Yılmazer}", q"{Yorulmaz}"
		, q"{Çamdalı}", q"{Çapanoğlu}", q"{Çatalbaş}", q"{Çağıran}", q"{Çetin}", q"{Çetiner}"
		, q"{Çevik}", q"{Çörekçi}", q"{Önür}", q"{Örge}", q"{Öymen}", q"{Özberk}", q"{Özbey}"
		, q"{Özbir}", q"{Özdenak}", q"{Özdoğan}", q"{Özgörkey}", q"{Özkara}", q"{Özkök }", q"{Öztonga}"
		, q"{Öztuna}" ];

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
		[ q"{Abay}", q"{Abidin}", q"{Acar}", q"{Acun}", q"{Adem}", q"{Adil}", q"{Adnân}", q"{Afşin}", q"{Affan}"
		, q"{Afi}", q"{Agâh}", q"{Ahmet}", q"{Ahsen}", q"{Akalp}", q"{Akbatur}", q"{Akın}", q"{Akın Alp}"
		, q"{Akıner}", q"{Aktekin}", q"{Aktimur}", q"{Ali}", q"{Alican}", q"{Alişan}", q"{Alişir}", q"{Alp}"
		, q"{Alparslan}", q"{Alpay}", q"{Alper}", q"{Alperen}", q"{Alphan}", q"{Altan}", q"{Altemur}", q"{Âmir}"
		, q"{Ammâr}", q"{Ata}", q"{Atalay}", q"{Atâullah}", q"{Avşar}", q"{Aykan}", q"{Ayvaz}", q"{Anıl}"
		, q"{Ant}", q"{Arda}", q"{Arif}", q"{Arslan}", q"{Asım}", q"{Asil}", q"{Aşkın}", q"{Atakan}", q"{Atıf}"
		, q"{Atilla}", q"{Avni}", q"{Aydemir}", q"{Aydın}", q"{Ayhan}", q"{Aykut}", q"{Aytaç}", q"{Aytekin}"
		, q"{Aytuğ}", q"{Azer}", q"{Aziz}", q"{Azizhan}", q"{Azmi}", q"{Babacan}", q"{Barın}", q"{Battal}"
		, q"{Behram}", q"{Behzat}", q"{Bekir}", q"{Bektaş}", q"{Bera}", q"{Berkan}", q"{Berkin}", q"{Beşer}"
		, q"{Baha}", q"{Bahadır}", q"{Bahri}", q"{Bahtiyar}", q"{Bâki}", q"{Barış}", q"{Barkın}", q"{Barlas}"
		, q"{Bartu}", q"{Batu}", q"{Batuhan}", q"{Batur}", q"{Baturalp}", q"{Baykal}", q"{Bayram}", q"{Bedir}"
		, q"{Bedirhan}", q"{Bedreddin}", q"{Bedri}", q"{Behçet}", q"{Behiç}", q"{Behlül}", q"{Berat}"
		, q"{Berk}", q"{Berkay}", q"{Besim}", q"{Beşir}", q"{Bilâl}", q"{Birol}", q"{Bora}", q"{Buğra}"
		, q"{Bulut}", q"{Burak}", q"{Burhan}", q"{Bülent}", q"{Bünyamin}", q"{Cafer}", q"{Cahid}", q"{Can}"
		, q"{Canalp}", q"{Cândar}", q"{Caner}", q"{Cankan}", q"{Cavid}", q"{Celal}", q"{Celâleddin}"
		, q"{Celasun}", q"{Celil}", q"{Cem}", q"{Cemal}", q"{Cemali}", q"{Cemil}", q"{Cenk}", q"{Cevat}", q"{Cevahir}"
		, q"{Ceyhun}", q"{Cezmi}", q"{Cihan}", q"{Coşkun}", q"{Coşkuner}", q"{Cumhur}", q"{Cübeyr}"
		, q"{Cüneyt}", q"{Cihad}", q"{Cihangir}", q"{Civan}", q"{Cihanşah}", q"{Çağan}", q"{Çağatay}"
		, q"{Çağdaş}", q"{Çağlar}", q"{Çağrı}", q"{Çağrıhan}", q"{Çelen}", q"{Çelik}", q"{Çetin}"
		, q"{Çetinel}", q"{Çetiner}", q"{Dağhan}", q"{Dâver}", q"{Davud}", q"{Demiralp}", q"{Demirhan}"
		, q"{Denizalp}", q"{Devran}", q"{Dikmen}", q"{Dilaver}", q"{Dildâr}", q"{Dilhan}", q"{Dinç}"
		, q"{Derviş}", q"{Dinçer}", q"{Direnç}", q"{Doğan}", q"{Doğanay}", q"{Doğaner}", q"{Doğu}"
		, q"{Dora}", q"{Durmuş}", q"{Dündar}", q"{Ebuzer}", q"{Ecevit}", q"{Ecmel}", q"{Ediz}", q"{Efe}"
		, q"{Efsun}", q"{Egemen}", q"{Ekrem}", q"{Elgin}", q"{Emin}", q"{Emir}", q"{Emrah}", q"{Emre}", q"{Emrullah}"
		, q"{Ender}", q"{Enderun}", q"{Enes}", q"{Engin}", q"{Enis}", q"{Ensar}", q"{Enver}", q"{Eralp}", q"{Eray}"
		, q"{Erberk}", q"{Ercan}", q"{Ercüment}", q"{Erçin}", q"{Erda}", q"{Erdal}", q"{Erdem}", q"{Erdinç}"
		, q"{Erel}", q"{Eren}", q"{Ergin}", q"{Ergün}", q"{Ergüner}", q"{Erhan}", q"{Erkâm}", q"{Erkân}"
		, q"{Erman}", q"{Erol}", q"{Ersin}", q"{Erşan}", q"{Ertan}", q"{Ertuğrul}", q"{Esat}", q"{Eşref}"
		, q"{Ethem}", q"{Evren}", q"{Ecehan}", q"{Ecvet}", q"{Ede}", q"{Edhem}", q"{Efken}", q"{Eflah}", q"{Ekmel}"
		, q"{Elvan}", q"{Emced}", q"{Evran}", q"{Eymen}", q"{Eyüp}", q"{Ezrak}", q"{Fadıl}", q"{Fahrettin}"
		, q"{Fahri}", q"{Faik}", q"{Faris}", q"{Faruk}", q"{Fatih}", q"{Faysal}", q"{Fazıl}", q"{Fehmi}"
		, q"{Ferda}", q"{Ferdi}", q"{Ferhat}", q"{Ferhan}", q"{Ferit}", q"{Feridun}", q"{Ferruh}", q"{Fevzi}"
		, q"{Feyyaz}", q"{Feyzullah}", q"{Fikret}", q"{Fikri}", q"{Fuat}", q"{Furkân}", q"{Fazlı}", q"{Fâlih}"
		, q"{Fasih}", q"{Fatin}", q"{Fazullah}", q"{Feda}", q"{Fedai}", q"{Feramuz}", q"{Feramuş}", q"{Ferman}"
		, q"{Fuzuli}", q"{Gaffar}", q"{Gazanfer}", q"{Gencer}", q"{Gökalp}", q"{Gökben}", q"{Gökmen}"
		, q"{Gönenç}", q"{Görkem}", q"{Gülhan}", q"{Gültekin}", q"{Günay}", q"{Güner}", q"{Göngör}"
		, q"{Gürdal}", q"{Gürhan}", q"{Gürkan}", q"{Gürol}", q"{Gürsel}", q"{Güven}", q"{Güvenalp}"
		, q"{Gazi}", q"{Gevheri}", q"{Gıyas}", q"{Giray}", q"{Gürbüz}", q"{Habib}", q"{Hâdi}", q"{Hafız}"
		, q"{Hakan}", q"{Hakkı}", q"{Haldun}", q"{Halit}", q"{Halil}", q"{Halim}", q"{Hâlis}", q"{Haluk}"
		, q"{Hamdi}", q"{Hami}", q"{Hamit}", q"{Hamza}", q"{Harun}", q"{Hasan}", q"{Haşim}", q"{Haşmet}"
		, q"{Hayati}", q"{Haydar}", q"{Hazar}", q"{Hıfzı}", q"{Hikmet}", q"{Hilmi}", q"{Himmet}", q"{Hulki}"
		, q"{Hulusi}", q"{Hurşit}", q"{Hüma}", q"{Hürkan}", q"{Hüsamettin}", q"{Hüseyin}", q"{Hüsnü}"
		, q"{Hüsrev}", q"{Habbab}", q"{Habil}", q"{Hacib}", q"{Hafi}", q"{Hafid}", q"{Hakem}", q"{Haki}"
		, q"{Hamdullah}", q"{Hammâd}", q"{Hanefi}", q"{Hani}", q"{Haseki}", q"{Hasibi}", q"{Hasin}", q"{Hâtem}"
		, q"{Hattâb}", q"{Hatip}", q"{Hayali}", q"{Hazım}", q"{Hızır}", q"{Hicabi}", q"{Hişam}", q"{Hud}"
		, q"{Huzeyfe}", q"{Hüccet}", q"{Hüdâvendigâr}", q"{Hüdayi}", q"{Hümayun}", q"{Hüsameddin}"
		, q"{Ilgın}", q"{Işıner}", q"{Itri}", q"{İbrahim}", q"{İdris}", q"{İhsan}", q"{İkbal}", q"{İlbey}"
		, q"{İlhami}", q"{İlhan}", q"{İlkay}", q"{İlker}", q"{İlyas}", q"{İrfan}", q"{İsmail}", q"{İsmet}"
		, q"{İzzettin}", q"{İzzet}", q"{İhvan}", q"{İkrime}", q"{Kadir}", q"{Kadrican}", q"{Kağan}"
		, q"{Kamber}", q"{Kâmil}", q"{Karahan}", q"{Kayaalp}", q"{Kâzım}", q"{Kemâl}", q"{Kemalettin}"
		, q"{Kenan}", q"{Kerami}", q"{Kerem}", q"{Kerim}", q"{Koray}", q"{Korkut}", q"{Köksal}", q"{Kubat}"
		, q"{Kubilay}", q"{Kutbettin}", q"{Kürşad}", q"{Kabil}", q"{Kadem}", q"{Kadı}", q"{Kalender}"
		, q"{Kamran}", q"{Kasım}", q"{Keleş}", q"{Keramet}", q"{Keremşah}", q"{Keşşaf}", q"{Kuddusi}"
		, q"{Lamih}", q"{Latif}", q"{Levent}", q"{Lütfullah}", q"{Lütfi}", q"{Maad}", q"{Mahir}", q"{Mahmut}"
		, q"{Mahzun}", q"{Maksud}", q"{Mansur}", q"{Mazhar}", q"{Mehmet}", q"{Melih}", q"{Melikşah}", q"{Memduh}"
		, q"{Mert}", q"{Mesut}", q"{Mete}", q"{Metin}", q"{Mevlüt}", q"{Mithat}", q"{Muammer}", q"{Muaviye}"
		, q"{Muhammed}", q"{Muharrem}", q"{Muhsin}", q"{Muhyiddin}", q"{Mukadder}", q"{Murat}", q"{Musa}"
		, q"{Mustafa}", q"{Muzaffer}", q"{Müfid}", q"{Müjdat}", q"{Mümtaz}", q"{Münir}", q"{Mestan}"
		, q"{Mir}", q"{Miraç}", q"{Mirkelam}", q"{Mirza}", q"{Misbah}", q"{Muaz}", q"{Muhtar}", q"{Muhterem}"
		, q"{Muhteşem}", q"{Muktedi}", q"{Muktedir}", q"{Muktefi}", q"{Muslih}", q"{Mutahhar}", q"{Mutasım}"
		, q"{Muteber}", q"{Mutemed}", q"{Muttalib}", q"{Mükerrem}", q"{Müren}", q"{Müşir}", q"{Müzdad}"
		, q"{Nabi}", q"{Naci}", q"{Nadi}", q"{Nadir}", q"{Nafiz}", q"{Nahid}", q"{Nahil}", q"{Nail}", q"{Naim}"
		, q"{Namık}", q"{Nasrullah}", q"{Nazım}", q"{Nazif}", q"{Nazmi}", q"{Necat}", q"{Necati}", q"{Necdet}"
		, q"{Necib}", q"{Necmettin}", q"{Nedim}", q"{Nejat}", q"{Nesim}", q"{Neşet}", q"{Nevzat}", q"{Nihat}"
		, q"{Niyazi}", q"{Nizamettin}", q"{Numan}", q"{Nurettin}", q"{Nurullah}", q"{Nusret}", q"{Oğuz}"
		, q"{Oğuzhan}", q"{Okan}", q"{Oktay}", q"{Onur}", q"{Orhan}", q"{Osman}", q"{Ozan}", q"{Ömer}", q"{Önder}"
		, q"{Özcan}", q"{Özden}", q"{Özer}", q"{Özgür}", q"{Özhan}", q"{Özkan}", q"{Payidar}", q"{Pertev}"
		, q"{Perver}", q"{Peyami}", q"{Raci}", q"{Rafet}", q"{Rahim}", q"{Rahmi}", q"{Raif}", q"{Rakıp}"
		, q"{Ramazan}", q"{Ramiz}", q"{Rasim}", q"{Raşit}", q"{Rauf}", q"{Recai}", q"{Recep}", q"{Refik}"
		, q"{Reha}", q"{Remzi}", q"{Resûl}", q"{Reşat}", q"{Rıdvan}", q"{Rıfat}", q"{Rıfkı}", q"{Rıza}"
		, q"{Rüçhan}", q"{Rükneddin}", q"{Rüştü}", q"{Refah}", q"{Refet}", q"{Reis}", q"{Resül}"
		, q"{Rifat}", q"{Sabri}", q"{Sacid}", q"{Sadberk}", q"{Sadettin}", q"{Sadık}", q"{Sadi}", q"{Sadri}"
		, q"{Sadullah}", q"{Safa}", q"{Saffet}", q"{Said}", q"{Saim}", q"{Sâkıp}", q"{Salih}", q"{Salim}"
		, q"{Samed}", q"{Sami}", q"{Samih}", q"{Samim}", q"{Savaş}", q"{Seçkin}", q"{Sedat}", q"{Sefer}"
		, q"{Selahattin}", q"{Selami}", q"{Selçuk}", q"{Selim}", q"{Semih}", q"{Serbülent}", q"{Sergen}"
		, q"{Serhat}", q"{Sermet}", q"{Sertaç}", q"{Server}", q"{Settar}", q"{Seyfettin}", q"{Seyfi}"
		, q"{Seyfullah}", q"{Seyyit}", q"{Sıdkı}", q"{Sırrı}", q"{Sinan}", q"{Suat}", q"{Subhi}", q"{Sudi}"
		, q"{Sururi}", q"{Süheyl}", q"{Süleyman}", q"{Şaban}", q"{Şadan}", q"{Şahap}", q"{Şahin}"
		, q"{Şahsuvar}", q"{Şakir}", q"{Şamil}", q"{Şayan}", q"{Şefik}", q"{Şemsi}", q"{Şener}"
		, q"{Şenol}", q"{Şerafettin}", q"{Şeref}", q"{Şerif}", q"{Şevket}", q"{Şevki}", q"{Şinasi}"
		, q"{Şükrü}", q"{Şahinalp}", q"{Şahsüvar}", q"{Şâfi}", q"{Şarani}", q"{Şecaeddin}"
		, q"{Şehlevent}", q"{Şeyban}", q"{Şihab}", q"{Şihabeddin}", q"{Şir}", q"{Taceddin}", q"{Tahir}"
		, q"{Tahsin}", q"{Taib}", q"{Talat}", q"{Talay}", q"{Talha}", q"{Talip}", q"{Tamer}", q"{Taner}", q"{Tanju}"
		, q"{Tarık}", q"{Tarkan}", q"{Taşkın}", q"{Tayfun}", q"{Tayyar}", q"{Tekin}", q"{Tekinalp}"
		, q"{Temel}", q"{Teoman}", q"{Tevfik}", q"{Tevhid}", q"{Tezcan}", q"{Tezel}", q"{Tınas}", q"{Timur}"
		, q"{Tolga}", q"{Tolunay}", q"{Tufan}", q"{Tugay}", q"{Tuğrul}", q"{Tuğtekin}", q"{Tuhfe}", q"{Tunahan}"
		, q"{Tunç}", q"{Tunçer}", q"{Turan}", q"{Turgay}", q"{Turgut}", q"{Tümer}", q"{Türkay}", q"{Türkeş}"
		, q"{Türker}", q"{Ufuk}", q"{Uğur}", q"{Ukbe}", q"{Ulvi}", q"{Umur}", q"{Umuralp}", q"{Umut}", q"{Usame}"
		, q"{Utku}", q"{Ülgen}", q"{Ülker}", q"{Ümit}", q"{Ünal}", q"{Üzeyir}", q"{Vahâ}", q"{Vahdet}"
		, q"{Vahid}", q"{Valid}", q"{Vecdi}", q"{Vedat}", q"{Vefa}", q"{Vefik}", q"{Vehbi}", q"{Veli}", q"{Veysel}"
		, q"{Veysi}", q"{Volkan}", q"{Yağız}", q"{Yahya}", q"{Yalçın}", q"{Yalgın}", q"{Yaman}", q"{Yasin}"
		, q"{Yaşar}", q"{Yavuz}", q"{Yekta}", q"{Yener}", q"{Yetkin}", q"{Yıldırım}", q"{Yılmaz}"
		, q"{Yiğit}", q"{Yunus}", q"{Yusuf}", q"{Yüce}", q"{Yücel}", q"{Yüksel}", q"{Yümni}", q"{Zafer}"
		, q"{Zâhit}", q"{Zekeriyyâ}", q"{Zeyd}", q"{Zihnî}", q"{Ziyâd}", q"{Zülfikâr}", q"{Zâfir}"
		, q"{Zamir}", q"{Zekai}", q"{Zeynel}", q"{Ziver}", q"{Ziya}", q"{Ziyad}", q"{Zübeyr}" ];

		return choice(strs, this.rnd);
	}

	override string personMalePrefix() {
		const string[] strs =
		[ q"{Bay}", q"{Dr.}", q"{Prof. Dr.}" ];

		return choice(strs, this.rnd);
	}

	override string personName() {
		const int rndInt = uniform(0, 9, this.rnd);

		if(rndInt >= 0 && rndInt < 1) {
			return personPrefix() ~ " " ~ personFirstName() ~ " " ~ personLastName();
		}
		if(rndInt >= 1 && rndInt < 9) {
			return personFirstName() ~ " " ~ personLastName();
		}

		return "";
	}

	override string personPrefix() {
		const string[] strs =
		[ q"{Bay}", q"{Bayan}", q"{Dr.}", q"{Prof. Dr.}" ];

		return choice(strs, this.rnd);
	}

	override string phoneNumberFormats() {
		const string[] strs =
		[ q"{+90-###-###-##-##}", q"{+90-###-###-#-###}" ];

		return numberBuild(choice(strs, this.rnd));
	}

}

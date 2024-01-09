module faked.faker_pl;

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

class Faker_pl : Faker_en {
@safe:
	this(int seed) {
		super(seed);
	}

	override string animalHorse() {
		const string[] strs =
		[ q"{Aegidienberger}", q"{Albino}", q"{Altér real}", q"{American Paint Horse}", q"{American Saddlebred}"
		, q"{amerykański kuc szetlandzki}", q"{angloarab sardyński}", q"{Angloarab Shagya}"
		, q"{Angloarab}", q"{Appaloosa}", q"{Australian Stock Horse}", q"{Austriacki koń gorącokrwisty}"
		, q"{Bali}", q"{bawarski koń gorącokrwisty}", q"{belgijski koń gorącokrwisty}"
		, q"{Brumby}", q"{brytyjski koń gorącokrwisty}", q"{Caballo Chilen}", q"{Camargue}"
		, q"{Campolina}", q"{Canadian cutting horse}", q"{Cavallino della Giara}", q"{ciężki saksoński koń gorącokrwisty}"
		, q"{Cimarron}", q"{Cleveland Bay}", q"{Clydesdale}", q"{Cob}", q"{Colorado Ranger}", q"{Comtois}"
		, q"{Criollo}", q"{Crioulo}", q"{czechosłowacki koń gorącokrwisty}", q"{czechosłowacki koń zimnokrwisty}"
		, q"{Döle Gudbrandsdal}", q"{Einsiedle}", q"{Falabella}", q"{Freiberger}", q"{Furioso}"
		, q"{Gelderländer}", q"{Gidran}", q"{górski konik bośniacki}", q"{Groningery}", q"{Hack}"
		, q"{Hackney}", q"{Haflinger}", q"{Highland}", q"{hispano}", q"{holenderski koń gorącokrwisty}"
		, q"{holenderski koń zimnokrwisty}", q"{Hunter}", q"{indyjski koń wojskowy}", q"{Irish Draught}"
		, q"{Jaf}", q"{jugosłowiański koń zimnokrwisty}", q"{Jutland}", q"{karacabey}", q"{Kasztanowy koń szwarcwaldzki}"
		, q"{kathiawari}", q"{kleppery estońskie}", q"{kleppery łotewskie i litewskie}", q"{Knabstrub}"
		, q"{koń abisyński}", q"{koń achał-tekiński}", q"{koń afgański i pakistański}"
		, q"{koń andaluzyjski}", q"{koń ardeński}", q"{koń aztecki}", q"{koń badeńsko-wirtemberski}"
		, q"{koń belgijski}", q"{koń berberyjski}", q"{koń bretoński}", q"{koń budionnowski}"
		, q"{Koń buloński}", q"{koń burgundzki}", q"{koń czystej krwi arabskiej}", q"{koń Dongolavi}"
		, q"{koń doński}", q"{koń dunajski}", q"{koń fiński}", q"{koń fiordzki}", q"{koń fryderyksborski}"
		, q"{koń fryzyjski}", q"{koń hanowerski}", q"{koń heski}", q"{koń holsztyński}", q"{koń huculski}"
		, q"{koń islandzki}", q"{koń jomudzki}", q"{koń Jonaguni}", q"{koń kabardyński}"
		, q"{koń kalabryjski}", q"{koń karabachski}", q"{koń kazachski}", q"{koń kiński}"
		, q"{koń kiwlendzki}", q"{koń kladrubski}", q"{koń kuzniecki}", q"{koń lipicańsk}"
		, q"{koń lokajski}", q"{koń małopolski}", q"{koń meklemburski}", q"{koń meseński}"
		, q"{koń norycki (Pinzgauer)}", q"{koń nowokirgiski}", q"{koń oldenburski}", q"{koń peczorski}"
		, q"{koń pełnej krwi angielskiej}", q"{koń pleweński}", q"{koń poleski}", q"{koń poznański}"
		, q"{koń północnoszwedzki}", q"{koń Przewalskiego}", q"{koń sokólski}", q"{koń szlachetny półkrwi}"
		, q"{koń szwajcarski}", q"{koń śląski}", q"{koń terski}", q"{koń toryjski}", q"{koń trakeński}"
		, q"{koń turkmeński}", q"{koń ukraiński}", q"{koń westfalski}", q"{koń wielkopolski}"
		, q"{koń włodzimierski}", q"{koń woroneski}", q"{koń wschodniobułgarski}", q"{koń wschodniofryzyjski}"
		, q"{konie kaimanawa}", q"{konik dulmeński}", q"{konik polski}", q"{konik żmudzki}"
		, q"{kuc amerykański-Americas}", q"{kuc australijski}", q"{kuc Bardigiano}", q"{kuc Belearów}"
		, q"{kuc Connemara}", q"{kuc Dales}", q"{kuc Dartmoor}", q"{Kuc Exmoor}", q"{kuc feliński}"
		, q"{kuc Fell}", q"{kuc Fulani}", q"{kuc Galiceno}", q"{kuc galla}", q"{kuc Garrano}", q"{kuc Gharbaui}"
		, q"{kuc gotlandzki}", q"{kuc Hackney}", q"{kuc indyjski}", q"{kuc jakucki}", q"{kuc jawajski}"
		, q"{kuc kaspijski}", q"{kuc kenijski}", q"{kuc korsykański}", q"{kuc Landais}", q"{kuc Lewitzer}"
		, q"{kuc Merens}", q"{kuc mongolski}", q"{kuc New Forest}", q"{kuc nigeryjski}", q"{kuc Pindos}"
		, q"{kuc Pottok}", q"{kuc Rocky Mountain}", q"{kuc Sable Island}", q"{kuc sardyński (Achetta)}"
		, q"{kuc Skyrian}", q"{kuc Skyros}", q"{kuc somalijski}", q"{kuc Sorraia}", q"{kuc sycylijski}"
		, q"{kuc szetlandzki}", q"{kuc Togo}", q"{kuc tybetański}", q"{kuc Zaniskari}", q"{kuc żemajtuka}"
		, q"{kurdyjski}", q"{kłusak (i inochodziec) gorącokrwisty – Standardbred}", q"{Kłusak amerykański}"
		, q"{kłusak orłowsk}", q"{kłusak rosyjsk}", q"{litewski koń zimnokrwisty}", q"{Llareno}"
		, q"{Lusitano}", q"{Łotewski koń gorącokrwisty}", q"{Mangalarga Marchador}", q"{Mangalarga}"
		, q"{Maremmano}", q"{Missouri Fox Trotter}", q"{Morgan}", q"{Murakozi}", q"{murgese}", q"{Mustang}"
		, q"{niemiecki kuc wierzchowy}", q"{Nonius}", q"{Noriker}", q"{normandzki cob}", q"{Paso Fino}"
		, q"{Paso Peruano}", q"{perski koń arabski}", q"{Perszeron}", q"{Pinto}", q"{Poitevin}"
		, q"{polski koń zimnokrwisty}", q"{Quarter Horse}", q"{radziecki ciężki koń pociągowy}"
		, q"{reński koń gorącokrwisty}", q"{reński koń zimnokrwisty}", q"{Rosyjski koń zimnokrwisty}"
		, q"{Salernitano}", q"{Sanfratellano}", q"{Schweike}", q"{Selle français}", q"{Shiraz (Darashoori)}"
		, q"{Shire}", q"{Siciliano}", q"{Suffolk Punch}", q"{syryjski koń arabski}", q"{szlezwicki koń zimnokrwisty}"
		, q"{Szwedzki koń gorącokrwisty}", q"{Tarpan}", q"{Tchenerani}", q"{Tennessee Walker}"
		, q"{Tinker – Gypsy Vanner}", q"{Waler}", q"{Walijski kuc górski}", q"{walijski kuc górski}"
		, q"{węgierski koń sportowy}", q"{Welsh Cob}", q"{westfalski koń zimnokrwisty}"
		, q"{Wiatka}", q"{włoski koń zimnokrwisty}", q"{Zweibrücker}" ];

		return choice(strs, this.rnd);
	}

	override string cellPhoneFormats() {
		const string[] strs =
		[ q"{50#-###-###}", q"{51#-###-###}", q"{53#-###-###}", q"{57#-###-###}", q"{60#-###-###}"
		, q"{66#-###-###}", q"{69#-###-###}", q"{72#-###-###}", q"{73#-###-###}", q"{78#-###-###}"
		, q"{79#-###-###}", q"{88#-###-###}" ];

		return numberBuild(choice(strs, this.rnd));
	}

	override string companyNamePattern() {
		switch(uniform(0, 3, this.rnd)) {
			case 0: return personLastName() ~ " " ~ companySuffix();
			case 1: return personLastName() ~ "-" ~ personLastName();
			case 2: return personLastName() ~ ", " ~ personLastName() ~ " and " ~ personLastName();
			default: return "";
		}
	}

	override string companySuffix() {
		const string[] strs =
		[ q"{S.A.}", q"{z o.o}", q"{Sp. j.}", q"{Sp. p.}", q"{Sp. k.}", q"{SKA}", q"{s.c.}" ];

		return choice(strs, this.rnd);
	}

	override string internetDomainSuffix() {
		const string[] strs =
		[ q"{agro.pl}", q"{auto.pl}", q"{biz.pl}", q"{com.pl}", q"{edu.pl}", q"{gmina.pl}", q"{gov.pl}", q"{info.pl}"
		, q"{miasta.pl}", q"{net.pl}", q"{nieruchomosci.pl}", q"{org.pl}", q"{pl}", q"{powiat.pl}", q"{priv.pl}"
		, q"{sklep.pl}", q"{szkola.pl}", q"{targi.pl}", q"{turystyka.pl}" ];

		return choice(strs, this.rnd);
	}

	override string internetFreeEmail() {
		const string[] strs =
		[ q"{gmail.com}", q"{yahoo.com}", q"{hotmail.com}" ];

		return choice(strs, this.rnd);
	}

	override string locationBuildingNumber() {
		const string[] strs =
		[ q"{###}", q"{##}", q"{##a}", q"{##b}", q"{##c}", q"{#/#}" ];

		return numberBuild(choice(strs, this.rnd));
	}

	override string locationCityName() {
		const string[] strs =
		[ q"{Aleksandrów Kujawski}", q"{Aleksandrów Łódzki}", q"{Alwernia}", q"{Andrychów}"
		, q"{Annopol}", q"{Augustów}", q"{Babimost}", q"{Baborów}", q"{Baranów Sandomierski}"
		, q"{Barcin}", q"{Barczewo}", q"{Bardo}", q"{Barlinek}", q"{Bartoszyce}", q"{Barwice}", q"{Bełchatów}"
		, q"{Bełżyce}", q"{Będzin}", q"{Biała}", q"{Biała Piska}", q"{Biała Podlaska}", q"{Biała Rawska}"
		, q"{Białobrzegi}", q"{Białogard}", q"{Biały Bór}", q"{Białystok}", q"{Biecz}", q"{Bielawa}"
		, q"{Bielsk Podlaski}", q"{Bielsko-Biała}", q"{Bieruń}", q"{Bierutów}", q"{Bieżuń}"
		, q"{Biłgoraj}", q"{Biskupiec}", q"{Bisztynek}", q"{Blachownia}", q"{Błaszki}", q"{Błażowa}"
		, q"{Błonie}", q"{Bobolice}", q"{Bobowa}", q"{Bochnia}", q"{Bodzentyn}", q"{Bogatynia}", q"{Boguchwała}"
		, q"{Boguszów-Gorce}", q"{Bojanowo}", q"{Bolesławiec}", q"{Bolków}", q"{Borek Wielkopolski}"
		, q"{Borne Sulinowo}", q"{Braniewo}", q"{Brańsk}", q"{Brodnica}", q"{Brok}", q"{Brusy}", q"{Brwinów}"
		, q"{Brzeg}", q"{Brzeg Dolny}", q"{Brzesko}", q"{Brzeszcze}", q"{Brześć Kujawski}", q"{Brzeziny}"
		, q"{Brzostek}", q"{Brzozów}", q"{Buk}", q"{Bukowno}", q"{Busko-Zdrój}", q"{Bychawa}", q"{Byczyna}"
		, q"{Bydgoszcz}", q"{Bystrzyca Kłodzka}", q"{Bytom}", q"{Bytom Odrzański}", q"{Bytów}"
		, q"{Cedynia}", q"{Chełm}", q"{Chełmek}", q"{Chełmno}", q"{Chełmża}", q"{Chęciny}", q"{Chmielnik}"
		, q"{Chocianów}", q"{Chociwel}", q"{Chodecz}", q"{Chodzież}", q"{Chojna}", q"{Chojnice}", q"{Chojnów}"
		, q"{Choroszcz}", q"{Chorzele}", q"{Chorzów}", q"{Choszczno}", q"{Chrzanów}", q"{Ciechanowiec}"
		, q"{Ciechanów}", q"{Ciechocinek}", q"{Cieszanów}", q"{Cieszyn}", q"{Ciężkowice}", q"{Cybinka}"
		, q"{Czaplinek}", q"{Czarna Białostocka}", q"{Czarna Woda}", q"{Czarne}", q"{Czarnków}"
		, q"{Czchów}", q"{Czechowice-Dziedzice}", q"{Czeladź}", q"{Czempiń}", q"{Czerniejewo}"
		, q"{Czersk}", q"{Czerwieńsk}", q"{Czerwionka-Leszczyny}", q"{Częstochowa}", q"{Człopa}"
		, q"{Człuchów}", q"{Czyżew}", q"{Ćmielów}", q"{Daleszyce}", q"{Darłowo}", q"{Dąbie}"
		, q"{Dąbrowa Białostocka}", q"{Dąbrowa Górnicza}", q"{Dąbrowa Tarnowska}", q"{Debrzno}"
		, q"{Dębica}", q"{Dęblin}", q"{Dębno}", q"{Dobczyce}", q"{Dobiegniew}", q"{Dobra}", q"{Dobre Miasto}"
		, q"{Dobrodzień}", q"{Dobrzany}", q"{Dobrzyń nad Wisłą}", q"{Dolsk}", q"{Drawno}", q"{Drawsko Pomorskie}"
		, q"{Drezdenko}", q"{Drobin}", q"{Drohiczyn}", q"{Drzewica}", q"{Dukla}", q"{Duszniki-Zdrój}"
		, q"{Dynów}", q"{Działdowo}", q"{Działoszyce}", q"{Działoszyn}", q"{Dzierzgoń}", q"{Dzierżoniów}"
		, q"{Dziwnów}", q"{Elbląg}", q"{Ełk}", q"{Frampol}", q"{Frombork}", q"{Garwolin}", q"{Gąbin}"
		, q"{Gdańsk}", q"{Gdynia}", q"{Giżycko}", q"{Glinojeck}", q"{Gliwice}", q"{Głogów}", q"{Głogów Małopolski}"
		, q"{Głogówek}", q"{Głowno}", q"{Głubczyce}", q"{Głuchołazy}", q"{Głuszyca}", q"{Gniew}"
		, q"{Gniewkowo}", q"{Gniezno}", q"{Gogolin}", q"{Golczewo}", q"{Goleniów}", q"{Golina}", q"{Golub-Dobrzyń}"
		, q"{Gołańcz}", q"{Gołdap}", q"{Goniądz}", q"{Gorlice}", q"{Gorzów Śląski}", q"{Gorzów Wielkopolski}"
		, q"{Gostynin}", q"{Gostyń}", q"{Gościno}", q"{Gozdnica}", q"{Góra}", q"{Góra Kalwaria}"
		, q"{Górowo Iławeckie}", q"{Górzno}", q"{Grabów nad Prosną}", q"{Grajewo}", q"{Grodków}"
		, q"{Grodzisk Mazowiecki}", q"{Grodzisk Wielkopolski}", q"{Grójec}", q"{Grudziądz}"
		, q"{Grybów}", q"{Gryfice}", q"{Gryfino}", q"{Gryfów Śląski}", q"{Gubin}", q"{Hajnówka}"
		, q"{Halinów}", q"{Hel}", q"{Hrubieszów}", q"{Iława}", q"{Iłowa}", q"{Iłża}", q"{Imielin}"
		, q"{Inowrocław}", q"{Ińsko}", q"{Iwonicz-Zdrój}", q"{Izbica Kujawska}", q"{Jabłonowo Pomorskie}"
		, q"{Janikowo}", q"{Janowiec Wielkopolski}", q"{Janów Lubelski}", q"{Jarocin}", q"{Jarosław}"
		, q"{Jasień}", q"{Jasło}", q"{Jastarnia}", q"{Jastrowie}", q"{Jastrzębie-Zdrój}", q"{Jawor}"
		, q"{Jaworzno}", q"{Jaworzyna Śląska}", q"{Jedlicze}", q"{Jedlina-Zdrój}", q"{Jedwabne}"
		, q"{Jelcz-Laskowice}", q"{Jelenia Góra}", q"{Jeziorany}", q"{Jędrzejów}", q"{Jordanów}"
		, q"{Józefów}", q"{Jutrosin}", q"{Kalety}", q"{Kalisz}", q"{Kalisz Pomorski}", q"{Kalwaria Zebrzydowska}"
		, q"{Kałuszyn}", q"{Kamienna Góra}", q"{Kamień Krajeński}", q"{Kamień Pomorski}"
		, q"{Kamieńsk}", q"{Kańczuga}", q"{Karczew}", q"{Kargowa}", q"{Karlino}", q"{Karpacz}", q"{Kartuzy}"
		, q"{Katowice}", q"{Kazimierz Dolny}", q"{Kazimierza Wielka}", q"{Kąty Wrocławskie}"
		, q"{Kcynia}", q"{Kędzierzyn-Koźle}", q"{Kępice}", q"{Kępno}", q"{Kętrzyn}", q"{Kęty}"
		, q"{Kielce}", q"{Kietrz}", q"{Kisielice}", q"{Kleczew}", q"{Kleszczele}", q"{Kluczbork}", q"{Kłecko}"
		, q"{Kłobuck}", q"{Kłodawa}", q"{Kłodzko}", q"{Knurów}", q"{Knyszyn}", q"{Kobylin}", q"{Kobyłka}"
		, q"{Kock}", q"{Kolbuszowa}", q"{Kolno}", q"{Kolonowskie}", q"{Koluszki}", q"{Kołaczyce}", q"{Koło}"
		, q"{Kołobrzeg}", q"{Koniecpol}", q"{Konin}", q"{Konstancin-Jeziorna}", q"{Konstantynów Łódzki}"
		, q"{Końskie}", q"{Koprzywnica}", q"{Korfantów}", q"{Koronowo}", q"{Korsze}", q"{Kosów Lacki}"
		, q"{Kostrzyn}", q"{Kostrzyn nad Odrą}", q"{Koszalin}", q"{Kościan}", q"{Kościerzyna}"
		, q"{Kowal}", q"{Kowalewo Pomorskie}", q"{Kowary}", q"{Koziegłowy}", q"{Kozienice}", q"{Koźmin Wielkopolski}"
		, q"{Kożuchów}", q"{Kórnik}", q"{Krajenka}", q"{Kraków}", q"{Krapkowice}", q"{Krasnobród}"
		, q"{Krasnystaw}", q"{Kraśnik}", q"{Krobia}", q"{Krosno}", q"{Krosno Odrzańskie}", q"{Krośniewice}"
		, q"{Krotoszyn}", q"{Kruszwica}", q"{Krynica Morska}", q"{Krynica-Zdrój}", q"{Krynki}", q"{Krzanowice}"
		, q"{Krzepice}", q"{Krzeszowice}", q"{Krzywiń}", q"{Krzyż Wielkopolski}", q"{Książ Wielkopolski}"
		, q"{Kudowa-Zdrój}", q"{Kunów}", q"{Kutno}", q"{Kuźnia Raciborska}", q"{Kwidzyn}", q"{Lądek-Zdrój}"
		, q"{Legionowo}", q"{Legnica}", q"{Lesko}", q"{Leszno}", q"{Leśna}", q"{Leśnica}", q"{Lewin Brzeski}"
		, q"{Leżajsk}", q"{Lębork}", q"{Lędziny}", q"{Libiąż}", q"{Lidzbark}", q"{Lidzbark Warmiński}"
		, q"{Limanowa}", q"{Lipiany}", q"{Lipno}", q"{Lipsk}", q"{Lipsko}", q"{Lubaczów}", q"{Lubań}"
		, q"{Lubartów}", q"{Lubawa}", q"{Lubawka}", q"{Lubień Kujawski}", q"{Lubin}", q"{Lublin}"
		, q"{Lubliniec}", q"{Lubniewice}", q"{Lubomierz}", q"{Luboń}", q"{Lubraniec}", q"{Lubsko}"
		, q"{Lwówek}", q"{Lwówek Śląski}", q"{Łabiszyn}", q"{Łańcut}", q"{Łapy}", q"{Łasin}"
		, q"{Łask}", q"{Łaskarzew}", q"{Łaszczów}", q"{Łaziska Górne}", q"{Łazy}", q"{Łeba}"
		, q"{Łęczna}", q"{Łęczyca}", q"{Łęknica}", q"{Łobez}", q"{Łobżenica}", q"{Łochów}"
		, q"{Łomianki}", q"{Łomża}", q"{Łosice}", q"{Łowicz}", q"{Łódź}", q"{Łuków}", q"{Maków Mazowiecki}"
		, q"{Maków Podhalański}", q"{Malbork}", q"{Małogoszcz}", q"{Małomice}", q"{Margonin}"
		, q"{Marki}", q"{Maszewo}", q"{Miasteczko Śląskie}", q"{Miastko}", q"{Michałowo}", q"{Miechów}"
		, q"{Miejska Górka}", q"{Mielec}", q"{Mieroszów}", q"{Mieszkowice}", q"{Międzybórz}"
		, q"{Międzychód}", q"{Międzylesie}", q"{Międzyrzec Podlaski}", q"{Międzyrzecz}", q"{Międzyzdroje}"
		, q"{Mikołajki}", q"{Mikołów}", q"{Mikstat}", q"{Milanówek}", q"{Milicz}", q"{Miłakowo}"
		, q"{Miłomłyn}", q"{Miłosław}", q"{Mińsk Mazowiecki}", q"{Mirosławiec}", q"{Mirsk}"
		, q"{Mława}", q"{Młynary}", q"{Mogielnica}", q"{Mogilno}", q"{Mońki}", q"{Morąg}", q"{Mordy}"
		, q"{Moryń}", q"{Mosina}", q"{Mrągowo}", q"{Mrocza}", q"{Mszana Dolna}", q"{Mszczonów}", q"{Murowana Goślina}"
		, q"{Muszyna}", q"{Mysłowice}", q"{Myszków}", q"{Myszyniec}", q"{Myślenice}", q"{Myślibórz}"
		, q"{Nakło nad Notecią}", q"{Nałęczów}", q"{Namysłów}", q"{Narol}", q"{Nasielsk}"
		, q"{Nekla}", q"{Nidzica}", q"{Niemcza}", q"{Niemodlin}", q"{Niepołomice}", q"{Nieszawa}", q"{Nisko}"
		, q"{Nowa Dęba}", q"{Nowa Ruda}", q"{Nowa Sarzyna}", q"{Nowa Sól}", q"{Nowe}", q"{Nowe Brzesko}"
		, q"{Nowe Miasteczko}", q"{Nowe Miasto Lubawskie}", q"{Nowe Miasto nad Pilicą}", q"{Nowe Skalmierzyce}"
		, q"{Nowe Warpno}", q"{Nowogard}", q"{Nowogrodziec}", q"{Nowogród}", q"{Nowogród Bobrzański}"
		, q"{Nowy Dwór Gdański}", q"{Nowy Dwór Mazowiecki}", q"{Nowy Sącz}", q"{Nowy Staw}"
		, q"{Nowy Targ}", q"{Nowy Tomyśl}", q"{Nowy Wiśnicz}", q"{Nysa}", q"{Oborniki}", q"{Oborniki Śląskie}"
		, q"{Obrzycko}", q"{Odolanów}", q"{Ogrodzieniec}", q"{Okonek}", q"{Olecko}", q"{Olesno}", q"{Oleszyce}"
		, q"{Oleśnica}", q"{Olkusz}", q"{Olsztyn}", q"{Olsztynek}", q"{Olszyna}", q"{Oława}", q"{Opalenica}"
		, q"{Opatów}", q"{Opoczno}", q"{Opole}", q"{Opole Lubelskie}", q"{Orneta}", q"{Orzesze}", q"{Orzysz}"
		, q"{Osieczna}", q"{Osiek}", q"{Ostrołęka}", q"{Ostroróg}", q"{Ostrowiec Świętokrzyski}"
		, q"{Ostróda}", q"{Ostrów Lubelski}", q"{Ostrów Mazowiecka}", q"{Ostrów Wielkopolski}"
		, q"{Ostrzeszów}", q"{Ośno Lubuskie}", q"{Oświęcim}", q"{Otmuchów}", q"{Otwock}", q"{Ozimek}"
		, q"{Ozorków}", q"{Ożarów}", q"{Ożarów Mazowiecki}", q"{Pabianice}", q"{Paczków}", q"{Pajęczno}"
		, q"{Pakość}", q"{Parczew}", q"{Pasłęk}", q"{Pasym}", q"{Pelplin}", q"{Pełczyce}", q"{Piaseczno}"
		, q"{Piaski}", q"{Piastów}", q"{Piechowice}", q"{Piekary Śląskie}", q"{Pieniężno}", q"{Pieńsk}"
		, q"{Pieszyce}", q"{Pilawa}", q"{Pilica}", q"{Pilzno}", q"{Piła}", q"{Piława Górna}", q"{Pińczów}"
		, q"{Pionki}", q"{Piotrków Kujawski}", q"{Piotrków Trybunalski}", q"{Pisz}", q"{Piwniczna-Zdrój}"
		, q"{Pleszew}", q"{Płock}", q"{Płońsk}", q"{Płoty}", q"{Pniewy}", q"{Pobiedziska}", q"{Poddębice}"
		, q"{Podkowa Leśna}", q"{Pogorzela}", q"{Polanica-Zdrój}", q"{Polanów}", q"{Police}", q"{Polkowice}"
		, q"{Połaniec}", q"{Połczyn-Zdrój}", q"{Poniatowa}", q"{Poniec}", q"{Poręba}", q"{Poznań}"
		, q"{Prabuty}", q"{Praszka}", q"{Prochowice}", q"{Proszowice}", q"{Prószków}", q"{Pruchnik}"
		, q"{Prudnik}", q"{Prusice}", q"{Pruszcz Gdański}", q"{Pruszków}", q"{Przasnysz}", q"{Przecław}"
		, q"{Przedbórz}", q"{Przedecz}", q"{Przemków}", q"{Przemyśl}", q"{Przeworsk}", q"{Przysucha}"
		, q"{Pszczyna}", q"{Pszów}", q"{Puck}", q"{Puławy}", q"{Pułtusk}", q"{Puszczykowo}", q"{Pyrzyce}"
		, q"{Pyskowice}", q"{Pyzdry}", q"{Rabka-Zdrój}", q"{Raciąż}", q"{Racibórz}", q"{Radków}"
		, q"{Radlin}", q"{Radłów}", q"{Radom}", q"{Radomsko}", q"{Radomyśl Wielki}", q"{Radymno}"
		, q"{Radziejów}", q"{Radzionków}", q"{Radzymin}", q"{Radzyń Chełmiński}", q"{Radzyń Podlaski}"
		, q"{Rajgród}", q"{Rakoniewice}", q"{Raszków}", q"{Rawa Mazowiecka}", q"{Rawicz}", q"{Recz}"
		, q"{Reda}", q"{Rejowiec Fabryczny}", q"{Resko}", q"{Reszel}", q"{Rogoźno}", q"{Ropczyce}"
		, q"{Różan}", q"{Ruciane-Nida}", q"{Ruda Śląska}", q"{Rudnik nad Sanem}", q"{Rumia}"
		, q"{Rybnik}", q"{Rychwał}", q"{Rydułtowy}", q"{Rydzyna}", q"{Ryglice}", q"{Ryki}", q"{Rymanów}"
		, q"{Ryn}", q"{Rypin}", q"{Rzepin}", q"{Rzeszów}", q"{Rzgów}", q"{Sandomierz}", q"{Sanok}", q"{Sejny}"
		, q"{Serock}", q"{Sędziszów}", q"{Sędziszów Małopolski}", q"{Sępopol}", q"{Sępólno Krajeńskie}"
		, q"{Sianów}", q"{Siechnice}", q"{Siedlce}", q"{Siemianowice Śląskie}", q"{Siemiatycze}"
		, q"{Sieniawa}", q"{Sieradz}", q"{Sieraków}", q"{Sierpc}", q"{Siewierz}", q"{Skalbmierz}", q"{Skała}"
		, q"{Skarszewy}", q"{Skaryszew}", q"{Skarżysko-Kamienna}", q"{Skawina}", q"{Skępe}", q"{Skierniewice}"
		, q"{Skoczów}", q"{Skoki}", q"{Skórcz}", q"{Skwierzyna}", q"{Sława}", q"{Sławków}", q"{Sławno}"
		, q"{Słomniki}", q"{Słubice}", q"{Słupca}", q"{Słupsk}", q"{Sobótka}", q"{Sochaczew}", q"{Sokołów Małopolski}"
		, q"{Sokołów Podlaski}", q"{Sokółka}", q"{Solec Kujawski}", q"{Sompolno}", q"{Sopot}"
		, q"{Sosnowiec}", q"{Sośnicowice}", q"{Stalowa Wola}", q"{Starachowice}", q"{Stargard Szczeciński}"
		, q"{Starogard Gdański}", q"{Stary Sącz}", q"{Staszów}", q"{Stawiski}", q"{Stawiszyn}"
		, q"{Stąporków}", q"{Stęszew}", q"{Stoczek Łukowski}", q"{Stronie Śląskie}", q"{Strumień}"
		, q"{Stryków}", q"{Strzegom}", q"{Strzelce Krajeńskie}", q"{Strzelce Opolskie}", q"{Strzelin}"
		, q"{Strzelno}", q"{Strzyżów}", q"{Sucha Beskidzka}", q"{Suchań}", q"{Suchedniów}", q"{Suchowola}"
		, q"{Sulechów}", q"{Sulejów}", q"{Sulejówek}", q"{Sulęcin}", q"{Sulmierzyce}", q"{Sułkowice}"
		, q"{Supraśl}", q"{Suraż}", q"{Susz}", q"{Suwałki}", q"{Swarzędz}", q"{Syców}", q"{Szadek}"
		, q"{Szamocin}", q"{Szamotuły}", q"{Szczawnica}", q"{Szczawno-Zdrój}", q"{Szczebrzeszyn}"
		, q"{Szczecin}", q"{Szczecinek}", q"{Szczekociny}", q"{Szczucin}", q"{Szczuczyn}", q"{Szczyrk}"
		, q"{Szczytna}", q"{Szczytno}", q"{Szepietowo}", q"{Szklarska Poręba}", q"{Szlichtyngowa}"
		, q"{Szprotawa}", q"{Sztum}", q"{Szubin}", q"{Szydłowiec}", q"{Ścinawa}", q"{Ślesin}", q"{Śmigiel}"
		, q"{Śrem}", q"{Środa Śląska}", q"{Środa Wielkopolska}", q"{Świątniki Górne}"
		, q"{Świdnica}", q"{Świdnik}", q"{Świdwin}", q"{Świebodzice}", q"{Świebodzin}", q"{Świecie}"
		, q"{Świeradów-Zdrój}", q"{Świerzawa}", q"{Świętochłowice}", q"{Świnoujście}"
		, q"{Tarczyn}", q"{Tarnobrzeg}", q"{Tarnogród}", q"{Tarnowskie Góry}", q"{Tarnów}", q"{Tczew}"
		, q"{Terespol}", q"{Tłuszcz}", q"{Tolkmicko}", q"{Tomaszów Lubelski}", q"{Tomaszów Mazowiecki}"
		, q"{Toruń}", q"{Torzym}", q"{Toszek}", q"{Trzcianka}", q"{Trzciel}", q"{Trzcińsko-Zdrój}"
		, q"{Trzebiatów}", q"{Trzebinia}", q"{Trzebnica}", q"{Trzemeszno}", q"{Tuchola}", q"{Tuchów}"
		, q"{Tuczno}", q"{Tuliszków}", q"{Turek}", q"{Tuszyn}", q"{Twardogóra}", q"{Tychowo}", q"{Tychy}"
		, q"{Tyczyn}", q"{Tykocin}", q"{Tyszowce}", q"{Ujazd}", q"{Ujście}", q"{Ulanów}", q"{Uniejów}"
		, q"{Ustka}", q"{Ustroń}", q"{Ustrzyki Dolne}", q"{Wadowice}", q"{Wałbrzych}", q"{Wałcz}"
		, q"{Warka}", q"{Warszawa}", q"{Warta}", q"{Wasilków}", q"{Wąbrzeźno}", q"{Wąchock}", q"{Wągrowiec}"
		, q"{Wąsosz}", q"{Wejherowo}", q"{Węgliniec}", q"{Węgorzewo}", q"{Węgorzyno}", q"{Węgrów}"
		, q"{Wiązów}", q"{Wieleń}", q"{Wielichowo}", q"{Wieliczka}", q"{Wieluń}", q"{Wieruszów}"
		, q"{Więcbork}", q"{Wilamowice}", q"{Wisła}", q"{Witkowo}", q"{Witnica}", q"{Wleń}", q"{Władysławowo}"
		, q"{Włocławek}", q"{Włodawa}", q"{Włoszczowa}", q"{Wodzisław Śląski}", q"{Wojcieszów}"
		, q"{Wojkowice}", q"{Wojnicz}", q"{Wolbórz}", q"{Wolbrom}", q"{Wolin}", q"{Wolsztyn}", q"{Wołczyn}"
		, q"{Wołomin}", q"{Wołów}", q"{Woźniki}", q"{Wrocław}", q"{Wronki}", q"{Września}", q"{Wschowa}"
		, q"{Wyrzysk}", q"{Wysoka}", q"{Wysokie Mazowieckie}", q"{Wyszków}", q"{Wyszogród}", q"{Wyśmierzyce}"
		, q"{Zabłudów}", q"{Zabrze}", q"{Zagórów}", q"{Zagórz}", q"{Zakliczyn}", q"{Zakopane}"
		, q"{Zakroczym}", q"{Zalewo}", q"{Zambrów}", q"{Zamość}", q"{Zator}", q"{Zawadzkie}", q"{Zawichost}"
		, q"{Zawidów}", q"{Zawiercie}", q"{Ząbki}", q"{Ząbkowice Śląskie}", q"{Zbąszynek}"
		, q"{Zbąszyń}", q"{Zduny}", q"{Zduńska Wola}", q"{Zdzieszowice}", q"{Zelów}", q"{Zgierz}"
		, q"{Zgorzelec}", q"{Zielona Góra}", q"{Zielonka}", q"{Ziębice}", q"{Złocieniec}", q"{Złoczew}"
		, q"{Złotoryja}", q"{Złotów}", q"{Złoty Stok}", q"{Zwierzyniec}", q"{Zwoleń}", q"{Żabno}"
		, q"{Żagań}", q"{Żarki}", q"{Żarów}", q"{Żary}", q"{Żelechów}", q"{Żerków}", q"{Żmigród}"
		, q"{Żnin}", q"{Żory}", q"{Żukowo}", q"{Żuromin}", q"{Żychlin}", q"{Żyrardów}", q"{Żywiec}" ];

		return choice(strs, this.rnd);
	}

	override string locationCityPattern() {
		switch(uniform(0, 1, this.rnd)) {
			case 0: return locationCityName();
			default: return "";
		}
	}

	override string locationCountry() {
		const string[] strs =
		[ q"{Afganistan}", q"{Albania}", q"{Algieria}", q"{Andora}", q"{Angola}", q"{Antigua i Barbuda}"
		, q"{Arabia Saudyjska}", q"{Argentyna}", q"{Armenia}", q"{Australia}", q"{Austria}", q"{Azerbejdżan}"
		, q"{Bahamy}", q"{Bahrajn}", q"{Bangladesz}", q"{Barbados}", q"{Belgia}", q"{Belize}", q"{Benin}"
		, q"{Bhutan}", q"{Białoruś}", q"{Birma}", q"{Boliwia}", q"{Bośnia i Hercegowina}", q"{Botswana}"
		, q"{Brazylia}", q"{Brunei}", q"{Bułgaria}", q"{Burkina Faso}", q"{Burundi}", q"{Chile}", q"{Chiny}"
		, q"{Chorwacja}", q"{Cypr}", q"{Czad}", q"{Czarnogóra}", q"{Czechy}", q"{Dania}", q"{Demokratyczna Republika Konga}"
		, q"{Dominika}", q"{Dominikana}", q"{Dżibuti}", q"{Egipt}", q"{Ekwador}", q"{Erytrea}", q"{Estonia}"
		, q"{Eswatini}", q"{Etiopia}", q"{Fidżi}", q"{Filipiny}", q"{Finlandia}", q"{Francja}", q"{Gabon}"
		, q"{Gambia}", q"{Ghana}", q"{Grecja}", q"{Grenada}", q"{Gruzja}", q"{Gujana}", q"{Gwatemala}"
		, q"{Gwinea}", q"{Gwinea Bissau}", q"{Gwinea Równikowa}", q"{Haiti}", q"{Hiszpania}", q"{Holandia}"
		, q"{Honduras}", q"{Indie}", q"{Indonezja}", q"{Irak}", q"{Iran}", q"{Irlandia}", q"{Islandia}"
		, q"{Izrael}", q"{Jamajka}", q"{Japonia}", q"{Jemen}", q"{Jordania}", q"{Kambodża}", q"{Kamerun}"
		, q"{Kanada}", q"{Katar}", q"{Kazachstan}", q"{Kenia}", q"{Kirgistan}", q"{Kiribati}", q"{Kolumbia}"
		, q"{Komory}", q"{Kongo}", q"{Korea Południowa}", q"{Korea Północna}", q"{Kostaryka}"
		, q"{Kuba}", q"{Kuwejt}", q"{Laos}", q"{Lesotho}", q"{Liban}", q"{Liberia}", q"{Libia}", q"{Liechtenstein}"
		, q"{Litwa}", q"{Luksemburg}", q"{Łotwa}", q"{Macedonia Północna}", q"{Madagaskar}", q"{Malawi}"
		, q"{Malediwy}", q"{Malezja}", q"{Mali}", q"{Malta}", q"{Maroko}", q"{Mauretania}", q"{Mauritius}"
		, q"{Meksyk}", q"{Mikronezja}", q"{Mołdawia}", q"{Monako}", q"{Mongolia}", q"{Mozambik}", q"{Namibia}"
		, q"{Nauru}", q"{Nepal}", q"{Niemcy}", q"{Niger}", q"{Nigeria}", q"{Nikaragua}", q"{Norwegia}"
		, q"{Nowa Zelandia}", q"{Oman}", q"{Pakistan}", q"{Palau}", q"{Panama}", q"{Papua-Nowa Gwinea}"
		, q"{Paragwaj}", q"{Peru}", q"{Polska}", q"{Portugalia}", q"{Republika Południowej Afryki}"
		, q"{Republika Środkowoafrykańska}", q"{Republika Zielonego Przylądka}", q"{Rosja}"
		, q"{Rumunia}", q"{Rwanda}", q"{Saint Kitts i Nevis}", q"{Saint Lucia}", q"{Saint Vincent i Grenadyny}"
		, q"{Salwador}", q"{Samoa}", q"{San Marino}", q"{Senegal}", q"{Serbia}", q"{Seszele}", q"{Sierra Leone}"
		, q"{Singapur}", q"{Słowacja}", q"{Słowenia}", q"{Somalia}", q"{Sri Lanka}", q"{Stany Zjednoczone}"
		, q"{Sudan}", q"{Sudan Południowy}", q"{Surinam}", q"{Syria}", q"{Szwajcaria}", q"{Szwecja}"
		, q"{Tadżykistan}", q"{Tajlandia}", q"{Tanzania}", q"{Timor Wschodni}", q"{Togo}", q"{Tonga}"
		, q"{Trynidad i Tobago}", q"{Tunezja}", q"{Turcja}", q"{Turkmenistan}", q"{Tuvalu}", q"{Uganda}"
		, q"{Ukraina}", q"{Urugwaj}", q"{Uzbekistan}", q"{Vanuatu}", q"{Watykan}", q"{Wenezuela}", q"{Węgry}"
		, q"{Wielka Brytania}", q"{Wietnam}", q"{Włochy}", q"{Wybrzeże Kości Słoniowej}", q"{Wyspy Marshalla}"
		, q"{Wyspy Salomona}", q"{Wyspy Świętego Tomasza i Książęca}", q"{Zambia}", q"{Zimbabwe}"
		, q"{Zjednoczone Emiraty Arabskie}" ];

		return choice(strs, this.rnd);
	}

	override string locationDefaultCountry() {
		const string[] strs =
		[ q"{Polska}" ];

		return choice(strs, this.rnd);
	}

	override string locationDirection() {
		const string[] strs =
		[ q"{północ}", q"{wschód}", q"{południe}", q"{zachód}", q"{północny wschód}", q"{południowy wschód}"
		, q"{południowy zachód}", q"{północny zachód}" ];

		return choice(strs, this.rnd);
	}

	override string locationDirectionAbbr() {
		const string[] strs =
		[ q"{pn.}", q"{wsch.}", q"{pd.}", q"{zach.}", q"{pn. wsch.}", q"{pd. wsch.}", q"{pd. zach.}", q"{pn. zach.}" ];

		return choice(strs, this.rnd);
	}

	override string locationPostcode() {
		const string[] strs =
		[ q"{##-###}" ];

		return numberBuild(choice(strs, this.rnd));
	}

	override string locationSecondaryAddress() {
		const string[] strs =
		[ q"{m. ###}" ];

		return numberBuild(choice(strs, this.rnd));
	}

	override string locationState() {
		const string[] strs =
		[ q"{dolnośląskie}", q"{kujawsko-pomorskie}", q"{lubelskie}", q"{lubuskie}", q"{łódzkie}"
		, q"{małopolskie}", q"{mazowieckie}", q"{opolskie}", q"{podkarpackie}", q"{podlaskie}", q"{pomorskie}"
		, q"{śląskie}", q"{świętokrzyskie}", q"{warmińsko-mazurskie}", q"{wielkopolskie}"
		, q"{zachodniopomorskie}" ];

		return choice(strs, this.rnd);
	}

	override string locationStateAbbr() {
		const string[] strs =
		[ q"{DS}", q"{KP}", q"{LU}", q"{LB}", q"{LD}", q"{MA}", q"{MZ}", q"{OP}", q"{PK}", q"{PD}", q"{PM}", q"{SL}", q"{SK}"
		, q"{WN}", q"{WP}", q"{ZP}" ];

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

	override string locationStreetPattern() {
		switch(uniform(0, 1, this.rnd)) {
			case 0: return locationStreetPrefix() ~ " " ~ personLastName();
			default: return "";
		}
	}

	string locationStreetPrefix() {
		const string[] strs =
		[ q"{al.}", q"{bulw.}", q"{droga}", q"{ogród}", q"{os.}", q"{park}", q"{pl.}", q"{rondo}", q"{rynek}"
		, q"{skwer}", q"{szosa}", q"{ul.}", q"{wyb.}", q"{wyspa}" ];

		return choice(strs, this.rnd);
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

	override string musicGenre() {
		const string[] strs =
		[ q"{Alternatywna}", q"{Blues}", q"{Country}", q"{Disco polo}", q"{Elektroniczna}", q"{Funk}"
		, q"{Hip Hop}", q"{Indie Pop}", q"{Jazz}", q"{Klasyczna}", q"{Latynoska}", q"{Ludowa}", q"{Metal}"
		, q"{Pop}", q"{Rap}", q"{Reggae}", q"{Rock}", q"{Soul}" ];

		return choice(strs, this.rnd);
	}

	override string musicSongName() {
		const string[] strs =
		[ q"{12 Groszy}", q"{24.11.94}", q"{51}", q"{A To Co Mam}", q"{Adriatyk, Ocean Gorący}", q"{Ale Jestem}"
		, q"{Aleja Gwiazd}", q"{Arahja}", q"{Autobiografia}", q"{Autystyczny}", q"{Babę Zesłał Bóg}"
		, q"{Ballada 07}", q"{Baranek}", q"{Beksa}", q"{Bema Pamięci Żałobny - Rapsod}", q"{Berlin Zachodni}"
		, q"{Biała Armia}", q"{Biała Flaga}", q"{Biały Krzyż}", q"{Biegnij Dalej Sam}", q"{Bieszczadzkie Anioły}"
		, q"{Bo Jesteś Ty}", q"{Bo Jo Cie Kochom}", q"{Bombonierka}", q"{Boskie Buenos}", q"{Bracka}"
		, q"{Buka}", q"{Butelki Z Benzyną I Kamienie}", q"{Byłam Różą}", q"{Byłaś Serca Biciem}"
		, q"{Bóg}", q"{C'Est La Vie - Paryż Z Pocztówki}", q"{Celina}", q"{Chcemy Być Sobą}"
		, q"{Chciałbym Umrzeć Z Miłości}", q"{Chciałem Być}", q"{Chodź, Pomaluj Mój Świat}"
		, q"{Chłopcy}", q"{Ciche Dni}", q"{Cichosza}", q"{Ciepły Wiatr}", q"{Cień Wielkiej Góry}"
		, q"{Ciągnik}", q"{Co Mi Panie Dasz}", q"{Cud Niepamięci}", q"{Cykady Na Cykladach}"
		, q"{Czarne Słońca}", q"{Czarny Blues O Czwartej Nad Ranem}", q"{Czas Nas Uczy Pogody}"
		, q"{Czas Ołowiu}", q"{Czerwony Jak Cegła}", q"{Cztery Pokoje}", q"{Człowiek Z Liściem}"
		, q"{Deszcz}", q"{Deszcz Na Betonie}", q"{Deszcz W Cisnej}", q"{Dla Ciebie}", q"{Dmuchawce, Latawce, Wiatr}"
		, q"{Dni, Których Nie Znamy}", q"{Do Ani}", q"{Do Kołyski}", q"{Do Prostego Człowieka}"
		, q"{Dom}", q"{Dorosłe Dzieci}", q"{Dwa Ognie}", q"{Dwa Serca, Dwa Smutki}", q"{Dzieci}"
		, q"{Dziewczyna Bez Zęba Na Przedzie}", q"{Dzień Dobry, Kocham Cię}", q"{Dziwny Jest Ten Świat}"
		, q"{Dziś Późno Pójdę Spać}", q"{Długość Dźwięku Samotności}", q"{Elektryczny}"
		, q"{Eli Lama Sabachtani}", q"{Ezoteryczny Poznań}", q"{Filandia}", q"{Film}", q"{Flota Zjednoczonych Sił}"
		, q"{Fotograf Brok}", q"{Gdy Nie Ma Dzieci W Domu}", q"{Gdybym}", q"{Gołębi Puch}", q"{Granda}"
		, q"{Grande Valse Brillante}", q"{Grażka}", q"{Groszki I Róże}", q"{Harry}", q"{Hej Wy}"
		, q"{Hej, Czy Nie Wiecie}", q"{Hi-Fi}", q"{Horses}", q"{Hydropiekłowstąpienie}", q"{I Ciebie Też, Bardzo}"
		, q"{I Nikomu Nie Wolno Się Z Tego Śmiać}", q"{I Tak Warto Żyć}", q"{I Wszystko Się Może Zdarzyć}"
		, q"{IV Liceum}", q"{Ja Sowa}", q"{Ja Wysiadam}", q"{Jaka Róża, Taki Cierń}", q"{Jaskółka Uwięziona}"
		, q"{Jednego Serca}", q"{Jedwab}", q"{Jedyne Co Mam}", q"{Jej Portret}", q"{Jenny}", q"{Jest Taki Samotny Dom}"
		, q"{Jestem Bogiem}", q"{Jestem W Niebie}", q"{Jesteś Lekiem Na Całe Zło}", q"{Jesteśmy Na Wczasach}"
		, q"{Jeszcze Będzie Przepięknie}", q"{Jeszcze Się Tam Żagiel Bieli}", q"{Jeszcze W Zielone Gramy}"
		, q"{Jezu Jak Się Cieszę}", q"{Jeśli Wiesz Co Chcę Powiedzieć}", q"{Jolka, Jolka, Pamiętasz}"
		, q"{Jutro Możemy Być Szczęśliwi}", q"{Kapitan Polska}", q"{Karuzela Z Madonnami}"
		, q"{Karwoski}", q"{Kawałek Podłogi}", q"{Kiedy Byłem Małym Chłopcem}", q"{Kiedy Powiem Sobie Dość}"
		, q"{King}", q"{King Bruce Lee Karate Mistrz}", q"{Klub Wesołego Szampana}", q"{Kobiety Jak Te Kwiaty}"
		, q"{Kocham Być Z Tobą}", q"{Kocham Cię}", q"{Kocham Cię Jak Irlandię}", q"{Kocham Cię Kochanie Moje}"
		, q"{Kocham Wolność}", q"{Kochana}", q"{Kochać Inaczej}", q"{Koncert Jesienny Na Dwa Świerszcze I Wiatr W Kominie}"
		, q"{Konstytucje}", q"{Korowód}", q"{Kosmiczne Energie}", q"{Kołysanka Dla Nieznajomej}"
		, q"{Krakowski Spleen}", q"{Kraków}", q"{Krew Boga}", q"{Kryzysowa Narzeczona}", q"{Kwiaty We Włosach}"
		, q"{Lamparty}", q"{Leszek Żukowski}", q"{Lewe Lewe Loff}", q"{Lipstick On The Glass}"
		, q"{List}", q"{List Do M.}", q"{Los, Cebula I Krokodyle Łzy}", q"{Lubię Mówić Z Tobą}"
		, q"{Lubię Wracać Tam Gdzie Byłem}", q"{Lucciola}", q"{Lucy Phere}", q"{Malcziki}"
		, q"{Marchewkowe Pole}", q"{Maszynka Do Świerkania}", q"{Małe Tęsknoty}", q"{Małomiasteczkowy}"
		, q"{Meluzyna}", q"{Mimo Wszystko}", q"{Mississippi W Ogniu}", q"{Między Ciszą A Ciszą}"
		, q"{Miłość, Miłość}", q"{Mniej Niż Zero}", q"{Modlitwa}", q"{Modlitwa III - Pozwól Mi}"
		, q"{Modlitwa O Wschodzie Słońca}", q"{Mogło Być Nic}", q"{Moja I Twoja Nadzieja}"
		, q"{Moja Krew}", q"{Moje Bieszczady}", q"{Mury}", q"{Mój Dom}", q"{Mówię Ci Że}", q"{Na Falochronie}"
		, q"{Na Szczycie}", q"{Na Zakręcie}", q"{Nadzieja}", q"{Naprawdę Nie Dzieje Się Nic}"
		, q"{Następna Stacja}", q"{Nasza Klasa}", q"{Nic Nie Może Wiecznie Trwać}", q"{Nie Ma, Nie Ma Ciebie}"
		, q"{Nie Mam Dla Ciebie Miłości}", q"{Nie Przenoście Nam Stolicy Do Krakowa}"
		, q"{Nie Pytaj O Polskę}", q"{Nie Płacz Ewka}", q"{Nie Raj}", q"{Nie Wierz Nigdy Kobiecie}"
		, q"{Niebo Było Różowe}", q"{Niech Żyje Bal}", q"{Niemiłość}", q"{Niepokonani}"
		, q"{Niewiele Ci Mogę Dać}", q"{Nieznajomy}", q"{Niezwyciężony}", q"{Nikt Tak Pięknie Nie Mówił, Że Się Boi Miłości}"
		, q"{Nim Stanie Się Tak, Jak Gdyby Nigdy Nic}", q"{Nim Wstanie Dzień}", q"{Noc Komety}"
		, q"{Nóż}", q"{O! Ela}", q"{Objazdowe Nieme Kino}", q"{Obudź Się}", q"{Obława}", q"{Ocalić Od Zapomnienia}"
		, q"{Och Życie, Kocham Cię Nad Życie}", q"{Oczy Tej Małej}", q"{Odchodząc}", q"{Odkryjemy Miłość Nieznaną}"
		, q"{Ok, Boomer!}", q"{Oni Zaraz Przyjdą Tu}", q"{Orkiestra}", q"{Ostatni}", q"{Pamiętajcie O Ogrodach}"
		, q"{Papierowy Księżyc}", q"{Partyzant}", q"{Paryż - Moskwa 17.15}", q"{Paw}", q"{Peggy Brown}"
		, q"{Piosenka Jest Dobra Na Wszystko}", q"{Piosenka Księżycowa}", q"{Piosenka Młodych Wioślarzy}"
		, q"{Piła Tango}", q"{Piłem W Spale, Spałem W Pile}", q"{Plamy Na Słońcu}", q"{Plus I Minus}"
		, q"{Po Co Wolność}", q"{Po Prostu Bądź}", q"{Początek}", q"{Pod Niebem}", q"{Pod Papugami}"
		, q"{Pod Prąd}", q"{Podaruj Mi Trochę Słońca}", q"{Pola}", q"{Polska}", q"{Polski}", q"{Polsko}"
		, q"{Przebudzenie}", q"{Przeżyj To Sam}", q"{Prócz Ciebie Nic}", q"{Psalm Stojących W Kolejce}"
		, q"{Płoną Góry, Płoną Lasy}", q"{Raz Na Milion Lat}", q"{Rosemary'S Baby}", q"{Rower}"
		, q"{Rzuć To Wszystko Co Złe}", q"{Róbmy Swoje}", q"{Samba Przed Rozstaniem}", q"{Scenariusz Dla Moich Sąsiadów}"
		, q"{Sen}", q"{Sen O Dolinie}", q"{Sen O Victorii}", q"{Sen O Warszawie}", q"{Serce To Jest Muzyk}"
		, q"{Sie Ściemnia}", q"{Skazany Na Bluesa}", q"{Skóra}", q"{Skłamałam}", q"{Sobie I Wam}"
		, q"{Son Of The Blue Sky}", q"{Sorry Polsko}", q"{Spadam}", q"{Spalam Się}", q"{Spytaj Milicjanta}"
		, q"{Stare Drzewa}", q"{Statki Na Niebie}", q"{Strzeż Się Tych Miejsc}", q"{Syreny}"
		, q"{Szaroróżowe}", q"{Szał Niebieskich Ciał}", q"{Szklana Pogoda}", q"{Sztuka Latania}"
		, q"{Słodkiego Miłego Życia}", q"{Ta Noc Do Innych Jest Niepodobna}", q"{Tak Mi Się Nie Chce}"
		, q"{Tak, Tak... To Ja}", q"{Tam, Gdzie Nie Sięga Wzrok}", q"{Taniec Eleny}", q"{Te Smaki I Zapachy}"
		, q"{Teksański}", q"{Telefony}", q"{Temat Serialu "Polskie Drogi"}", q"{The Depth Of Self-Delusion}"
		, q"{To Co Czujesz, To Co Wiesz}", q"{To Ostatnia Niedziela}", q"{To Tylko Tango}"
		, q"{To Wychowanie}", q"{Tolerancja / Na Miły Bóg}", q"{Transmission Into Your Heart}"
		, q"{Trudne Życzenia}", q"{Trudno Nie Wierzyć W Nic}", q"{Trudno Tak (Razem Być Nam Ze Sobą...)}"
		, q"{Trzy Zapałki}", q"{Trójkąty I Kwadraty}", q"{Tuż Przed Północą}", q"{Twoja Lorelei}"
		, q"{Twój Ból Jest Lepszy Niż Mój}", q"{Tyle Słońca W Całym Mieście}", q"{Ucieczka Z Tropiku}"
		, q"{Uciekaj Moje Serce}", q"{Varsovie}", q"{W Deszczu Maleńkich Żółtych Kwiatów}"
		, q"{W Dobrą Stronę}", q"{W Domach Z Betonu Nie Ma Wolnej Miłości}", q"{W Moim Magicznym Domu}"
		, q"{W Moim Ogrodzie}", q"{W Wielkim Mieście}", q"{W Żółtych Płomieniach Liści}"
		, q"{Warszawa}", q"{Wataha}", q"{Wciąż Bardziej Obcy}", q"{Wehikuł Czasu}", q"{Whisky}"
		, q"{Wieża Radości, Wieża Samotności}", q"{Windą Do Nieba}", q"{Wiosna, Ach To Ty}"
		, q"{Wiśnia}", q"{Wodymidaj}", q"{Wojenka}", q"{Wspomnienie}", q"{Wszystko Czego Dziś Chcę}"
		, q"{Wyjątkowo Zimny Maj}", q"{Wymyśliłem Ciebie}", q"{Wyspa, Drzewo, Zamek}", q"{Władza}"
		, q"{Z Imbirem}", q"{Z Nim Będziesz Szczęśliwsza}", q"{Z Tobą / Do Domu}", q"{Z Tobą Chcę Oglądać Świat}"
		, q"{Za Ostatni Grosz}", q"{Zacznij Od Bacha}", q"{Zanim Pójdę}", q"{Zanim Zrozumiesz}"
		, q"{Zaopiekuj Się Mną}", q"{Zaprzepaszczone Siły Wielkiej Armii Świętych Znaków}"
		, q"{Zapytaj Mnie Czy Cię Kocham}", q"{Zawsze Tam Gdzie Ty}", q"{Zazdrość}", q"{Załoga G}"
		, q"{Zegarmistrz Światła}", q"{Znów Wędrujemy}", q"{Zostań}", q"{[Sic!]}", q"{Łza Dla Cieniów Minionych}"
		, q"{Ślady}", q"{Śmierć W Bikini}", q"{Śpiewać Każdy Może}", q"{Śpij Kochanie, Śpij}"
		, q"{Świecie Nasz}", q"{Żyję W Kraju}" ];

		return choice(strs, this.rnd);
	}

	override string personFemaleFirstName() {
		const string[] strs =
		[ q"{Ada}", q"{Adelajda}", q"{Agata}", q"{Agnieszka}", q"{Agrypina}", q"{Aida}", q"{Aleksandra}"
		, q"{Alicja}", q"{Alina}", q"{Amanda}", q"{Anastazja}", q"{Angela}", q"{Andżelika}", q"{Angelina}"
		, q"{Anna}", q"{Hanna}", q"{Antonina}", q"{Ariadna}", q"{Aurora}", q"{Barbara}", q"{Beatrycze}"
		, q"{Berta}", q"{Brygida}", q"{Kamila}", q"{Karolina}", q"{Kornelia}", q"{Katarzyna}", q"{Cecylia}"
		, q"{Chloe}", q"{Krystyna}", q"{Klara}", q"{Klaudia}", q"{Klementyna}", q"{Konstancja}", q"{Koralia}"
		, q"{Daria}", q"{Diana}", q"{Dina}", q"{Dorota}", q"{Edyta}", q"{Eleonora}", q"{Eliza}", q"{Elżbieta}"
		, q"{Izabela}", q"{Elwira}", q"{Emilia}", q"{Estera}", q"{Eudoksja}", q"{Eudokia}", q"{Eugenia}"
		, q"{Ewa}", q"{Ewelina}", q"{Ferdynanda}", q"{Florencja}", q"{Franciszka}", q"{Gabriela}", q"{Gertruda}"
		, q"{Gloria}", q"{Gracja}", q"{Jadwiga}", q"{Helena}", q"{Henryka}", q"{Nadzieja}", q"{Ida}", q"{Ilona}"
		, q"{Irena}", q"{Irma}", q"{Izolda}", q"{Jakubina}", q"{Joanna}", q"{Janina}", q"{Żaneta}", q"{Ginewra}"
		, q"{Józefina}", q"{Judyta}", q"{Julia}", q"{Julita}", q"{Justyna}", q"{Kira}", q"{Cyra}", q"{Kleopatra}"
		, q"{Larysa}", q"{Laura}", q"{Laurencja}", q"{Laurentyna}", q"{Lea}", q"{Leila}", q"{Liliana}"
		, q"{Lilianna}", q"{Lilia}", q"{Lilla}", q"{Liza}", q"{Ludwika}", q"{Luiza}", q"{Łucja}", q"{Lucja}"
		, q"{Lidia}", q"{Amabela}", q"{Magdalena}", q"{Malwina}", q"{Małgorzata}", q"{Greta}", q"{Marianna}"
		, q"{Maryna}", q"{Marta}", q"{Martyna}", q"{Maria}", q"{Matylda}", q"{Maja}", q"{Melania}", q"{Michalina}"
		, q"{Monika}", q"{Noemi}", q"{Natalia}", q"{Nikola}", q"{Nina}", q"{Olga}", q"{Olimpia}", q"{Oliwia}"
		, q"{Ofelia}", q"{Patrycja}", q"{Paula}", q"{Pelagia}", q"{Penelopa}", q"{Filipa}", q"{Paulina}"
		, q"{Rachela}", q"{Rebeka}", q"{Regina}", q"{Renata}", q"{Rozalia}", q"{Róża}", q"{Roksana}"
		, q"{Rufina}", q"{Ruta}", q"{Sabina}", q"{Sara}", q"{Serafina}", q"{Sybilla}", q"{Sylwia}", q"{Zofia}"
		, q"{Stella}", q"{Stefania}", q"{Zuzanna}", q"{Tamara}", q"{Tacjana}", q"{Tekla}", q"{Teodora}"
		, q"{Teresa}", q"{Walentyna}", q"{Waleria}", q"{Wanesa}", q"{Wiara}", q"{Weronika}", q"{Wiktoria}"
		, q"{Wirginia}", q"{Bibiana}", q"{Bibianna}", q"{Wanda}", q"{Wilhelmina}", q"{Ksawera}", q"{Ksenia}"
		, q"{Zoe}" ];

		return choice(strs, this.rnd);
	}

	override string personFemalePrefix() {
		const string[] strs =
		[ q"{Pani}" ];

		return choice(strs, this.rnd);
	}

	override string personFirstName() {
		const string[] strs =
		[ q"{Aaron}", q"{Abraham}", q"{Ada}", q"{Adam}", q"{Adelajda}", q"{Adrian}", q"{Agata}", q"{Agaton}"
		, q"{Agnieszka}", q"{Agrypina}", q"{Aida}", q"{Alan}", q"{Albert}", q"{Aleksander}", q"{Aleksandra}"
		, q"{Aleksy}", q"{Alfred}", q"{Alicja}", q"{Alina}", q"{Alwar}", q"{Amabela}", q"{Amanda}", q"{Ambroży}"
		, q"{Anastazja}", q"{Anatol}", q"{Andrzej}", q"{Andżelika}", q"{Angela}", q"{Angelina}", q"{Anna}"
		, q"{Ansgary}", q"{Antoni}", q"{Antonina}", q"{Apollinary}", q"{Apollo}", q"{Archibald}", q"{Ariadna}"
		, q"{Arkadiusz}", q"{Arkady}", q"{Arnold}", q"{Arseniusz}", q"{Artur}", q"{Arystarch}", q"{Atanazy}"
		, q"{August}", q"{Aurora}", q"{Baldwin}", q"{Barbara}", q"{Bazyli}", q"{Beatrycze}", q"{Benedykt}"
		, q"{Beniamin}", q"{Bernard}", q"{Berta}", q"{Bertram}", q"{Bertrand}", q"{Bibiana}", q"{Bibianna}"
		, q"{Borys}", q"{Brajan}", q"{Bruno}", q"{Brygida}", q"{Błażej}", q"{Cecylia}", q"{Cecyliusz}"
		, q"{Cezary}", q"{Chloe}", q"{Cyra}", q"{Cyrus}", q"{Cyryl}", q"{Damian}", q"{Daniel}", q"{Daria}"
		, q"{Dariusz}", q"{Dawid}", q"{Demetriusz}", q"{Diana}", q"{Dina}", q"{Dionizy}", q"{Dominik}"
		, q"{Donald}", q"{Dorian}", q"{Dorota}", q"{Edgar}", q"{Edmund}", q"{Edward}", q"{Edwin}", q"{Edyta}"
		, q"{Efraim}", q"{Efrem}", q"{Eleazar}", q"{Eleonora}", q"{Eliasz}", q"{Eliza}", q"{Elwira}", q"{Elżbieta}"
		, q"{Emanuel}", q"{Emil}", q"{Emilia}", q"{Erast}", q"{Ernest}", q"{Erwin}", q"{Estera}", q"{Eudokia}"
		, q"{Eudoksja}", q"{Eugenia}", q"{Eugeniusz}", q"{Eustracjusz}", q"{Ewa}", q"{Ewelina}", q"{Fabian}"
		, q"{Feliks}", q"{Ferdynanda}", q"{Filemon}", q"{Filip}", q"{Filipa}", q"{Florencja}", q"{Florian}"
		, q"{Franciszek}", q"{Franciszka}", q"{Fryderyk}", q"{Gabriel}", q"{Gabriela}", q"{Galfryd}"
		, q"{Gedeon}", q"{Gerald}", q"{Gerazym}", q"{Gertruda}", q"{Gilbert}", q"{Ginewra}", q"{Gloria}"
		, q"{Gonsalwy}", q"{Gracja}", q"{Greta}", q"{Grzegorz}", q"{Gwido}", q"{Hanna}", q"{Harald}", q"{Helena}"
		, q"{Henryk}", q"{Henryka}", q"{Herbert}", q"{Herman}", q"{Hieronim}", q"{Hilarion}", q"{Hilary}"
		, q"{Hipolit}", q"{Horacy}", q"{Hubert}", q"{Hugo}", q"{Ida}", q"{Ignacy}", q"{Igor}", q"{Ilona}"
		, q"{Innocenty}", q"{Irena}", q"{Ireneusz}", q"{Irma}", q"{Izaak}", q"{Izabela}", q"{Izajasz}"
		, q"{Izolda}", q"{Izydor}", q"{Jadwiga}", q"{Jakub}", q"{Jakubina}", q"{Jan}", q"{Janina}", q"{Janusz}"
		, q"{Jeremi}", q"{Jeremiasz}", q"{Jerzy}", q"{Joachim}", q"{Joanna}", q"{Jonatan}", q"{Jozue}"
		, q"{Judyta}", q"{Julia}", q"{Julian}", q"{Julita}", q"{Juliusz}", q"{Justyn}", q"{Justyna}", q"{Józef}"
		, q"{Józefina}", q"{Kalistrat}", q"{Kamila}", q"{Karol}", q"{Karolina}", q"{Katarzyna}", q"{Kazimierz}"
		, q"{Kira}", q"{Klara}", q"{Klarencjusz}", q"{Klaudia}", q"{Klaudiusz}", q"{Klemens}", q"{Klementyna}"
		, q"{Kleopatra}", q"{Konrad}", q"{Konstancja}", q"{Konstanty}", q"{Konstantyn}", q"{Koralia}"
		, q"{Kornel}", q"{Korneli}", q"{Kornelia}", q"{Korneliusz}", q"{Krystian}", q"{Krystyna}", q"{Krzysztof}"
		, q"{Ksawera}", q"{Ksawery}", q"{Ksenia}", q"{Ksenofont}", q"{Kwintyn}", q"{Larysa}", q"{Laura}"
		, q"{Laurencja}", q"{Laurencjusz}", q"{Laurenty}", q"{Laurentyna}", q"{Lea}", q"{Leila}", q"{Leon}"
		, q"{Leonard}", q"{Leonid}", q"{Lidia}", q"{Lilia}", q"{Liliana}", q"{Lilianna}", q"{Lilla}", q"{Liza}"
		, q"{Lucja}", q"{Lucjan}", q"{Ludwik}", q"{Ludwika}", q"{Luiza}", q"{Magdalena}", q"{Magnus}", q"{Maja}"
		, q"{Makary}", q"{Maksym}", q"{Maksymilian}", q"{Malwina}", q"{Marceli}", q"{Marcin}", q"{Marek}"
		, q"{Maria}", q"{Marianna}", q"{Marta}", q"{Martyna}", q"{Maryna}", q"{Mateusz}", q"{Matylda}"
		, q"{Maurycy}", q"{Małgorzata}", q"{Melania}", q"{Michalina}", q"{Michał}", q"{Mikołaj}"
		, q"{Miron}", q"{Modest}", q"{Mojżesz}", q"{Monika}", q"{Nadzieja}", q"{Natalia}", q"{Natan}"
		, q"{Natanael}", q"{Nazariusz}", q"{Nazary}", q"{Nestor}", q"{Nikodem}", q"{Nikola}", q"{Nina}"
		, q"{Noemi}", q"{Ofelia}", q"{Olaf}", q"{Oleg}", q"{Olga}", q"{Olimpia}", q"{Oliwia}", q"{Oliwier}"
		, q"{Onufry}", q"{Orestes}", q"{Oskar}", q"{Osmund}", q"{Pankracy}", q"{Pantaleon}", q"{Patrycja}"
		, q"{Patrycjusz}", q"{Patrycy}", q"{Patryk}", q"{Paula}", q"{Paulina}", q"{Paweł}", q"{Pelagia}"
		, q"{Penelopa}", q"{Piotr}", q"{Platon}", q"{Polikarp}", q"{Porfiriusz}", q"{Porfiry}", q"{Prokles}"
		, q"{Prokop}", q"{Prokul}", q"{Rachela}", q"{Rafał}", q"{Rajmund}", q"{Rajnold}", q"{Randolf}"
		, q"{Rebeka}", q"{Regina}", q"{Reginald}", q"{Renata}", q"{Robert}", q"{Roderyk}", q"{Roger}", q"{Roksana}"
		, q"{Roland}", q"{Roman}", q"{Romeo}", q"{Rozalia}", q"{Rudolf}", q"{Rufina}", q"{Ruta}", q"{Ryszard}"
		, q"{Róża}", q"{Sabina}", q"{Salomon}", q"{Salwator}", q"{Samson}", q"{Samuel}", q"{Sara}", q"{Sebastian}"
		, q"{Serafin}", q"{Serafina}", q"{Sergiusz}", q"{Seweryn}", q"{Spirydion}", q"{Stanisław}"
		, q"{Stefan}", q"{Stefania}", q"{Stella}", q"{Sybilla}", q"{Sylwester}", q"{Sylwia}", q"{Szczepan}"
		, q"{Szymon}", q"{Tacjana}", q"{Tamara}", q"{Tekla}", q"{Teodor}", q"{Teodora}", q"{Terencjusz}"
		, q"{Teresa}", q"{Tobiasz}", q"{Tomasz}", q"{Tymoteusz}", q"{Wacław}", q"{Walenty}", q"{Walentyn}"
		, q"{Walentyna}", q"{Waleria}", q"{Walerian}", q"{Walery}", q"{Walgierz}", q"{Walter}", q"{Wanda}"
		, q"{Wanesa}", q"{Wawrzyniec}", q"{Weronika}", q"{Wiara}", q"{Wiktor}", q"{Wiktoria}", q"{Wilfryd}"
		, q"{Wilhelm}", q"{Wilhelmina}", q"{Wincenty}", q"{Wirginia}", q"{Witalis}", q"{Władysław}"
		, q"{Włodzimierz}", q"{Zachariasz}", q"{Zachary}", q"{Zoe}", q"{Zofia}", q"{Zuzanna}", q"{Zygmunt}"
		, q"{Łazarz}", q"{Łucja}", q"{Łukasz}", q"{Żaneta}" ];

		return choice(strs, this.rnd);
	}

	override string personGender() {
		const string[] strs =
		[ q"{Genderqueer}", q"{Hermafrodyta}", q"{Inna}", q"{Kobieta cis}", q"{Kobieta cispłciowa}"
		, q"{Kobieta interpłciowa}", q"{Kobieta trans}", q"{Kobieta}", q"{Meżczyzna trans}"
		, q"{Mężczyzna cis}", q"{Mężczyzna cispłciowy}", q"{Mężczyzna interpłciowy}"
		, q"{Mężczyzna}", q"{Osoba agender}", q"{Osoba bigender}", q"{Osoba gender fluid}", q"{Osoba interpłciowa}"
		, q"{Osoba niebinarna}", q"{Osoba pangender}", q"{Osoba polygender}", q"{Osoba trans}"
		, q"{Transkobieta}", q"{Transsekualista}", q"{Transmężczyzna}" ];

		return choice(strs, this.rnd);
	}

	override string personLastName() {
		const string[] strs =
		[ q"{Adamczak}", q"{Adamczyk}", q"{Adamek}", q"{Adamiak}", q"{Adamiec}", q"{Adamowicz}", q"{Adamski}"
		, q"{Adamus}", q"{Aleksandrowicz}", q"{Andrzejczak}", q"{Andrzejewski}", q"{Antczak}", q"{Augustyn}"
		, q"{Augustyniak}", q"{Bagiński}", q"{Balcerzak}", q"{Banach}", q"{Banasiak}", q"{Banasik}"
		, q"{Banaś}", q"{Baran}", q"{Baranowski}", q"{Barański}", q"{Bartczak}", q"{Bartkowiak}", q"{Bartnik}"
		, q"{Bartosik}", q"{Bednarczyk}", q"{Bednarek}", q"{Bednarski}", q"{Bednarz}", q"{Białas}"
		, q"{Białek}", q"{Białkowski}", q"{Biedrzyński}", q"{Bielak}", q"{Bielawski}", q"{Bielecki}"
		, q"{Bielski}", q"{Bieniek}", q"{Biernacki}", q"{Biernat}", q"{Bieńkowski}", q"{Bilski}", q"{Bober}"
		, q"{Bochenek}", q"{Bogucki}", q"{Bogusz}", q"{Borek}", q"{Borkowski}", q"{Borowiec}", q"{Borowski}"
		, q"{Bożek}", q"{Broda}", q"{Brzeziński}", q"{Brzozowski}", q"{Buczek}", q"{Buczkowski}", q"{Buczyński}"
		, q"{Budziński}", q"{Budzyński}", q"{Bujak}", q"{Bukowski}", q"{Burzyński}", q"{Bąk}", q"{Bąkowski}"
		, q"{Błaszczak}", q"{Błaszczyk}", q"{Cebula}", q"{Chmiel}", q"{Chmielewski}", q"{Chmura}"
		, q"{Chojnacki}", q"{Chojnowski}", q"{Cholewa}", q"{Chrzanowski}", q"{Chudzik}", q"{Cichocki}"
		, q"{Cichoń}", q"{Cichy}", q"{Ciesielski}", q"{Cieśla}", q"{Cieślak}", q"{Cieślik}", q"{Ciszewski}"
		, q"{Cybulski}", q"{Cygan}", q"{Czaja}", q"{Czajka}", q"{Czajkowski}", q"{Czapla}", q"{Czarnecki}"
		, q"{Czech}", q"{Czechowski}", q"{Czekaj}", q"{Czerniak}", q"{Czerwiński}", q"{Czyż}", q"{Czyżewski}"
		, q"{Dec}", q"{Dobosz}", q"{Dobrowolski}", q"{Dobrzyński}", q"{Domagała}", q"{Domański}"
		, q"{Dominiak}", q"{Drabik}", q"{Drozd}", q"{Drozdowski}", q"{Drzewiecki}", q"{Dróżdż}", q"{Dubiel}"
		, q"{Duda}", q"{Dudek}", q"{Dudziak}", q"{Dudzik}", q"{Dudziński}", q"{Duszyński}", q"{Dziedzic}"
		, q"{Dziuba}", q"{Dąbek}", q"{Dąbkowski}", q"{Dąbrowski}", q"{Dębowski}", q"{Dębski}", q"{Długosz}"
		, q"{Falkowski}", q"{Fijałkowski}", q"{Filipek}", q"{Filipiak}", q"{Filipowicz}", q"{Flak}"
		, q"{Flis}", q"{Florczak}", q"{Florek}", q"{Frankowski}", q"{Frąckowiak}", q"{Frączek}", q"{Frątczak}"
		, q"{Furman}", q"{Gadomski}", q"{Gajda}", q"{Gajewski}", q"{Gaweł}", q"{Gawlik}", q"{Gawron}"
		, q"{Gawroński}", q"{Gałka}", q"{Gałązka}", q"{Gil}", q"{Godlewski}", q"{Golec}", q"{Gołąb}"
		, q"{Gołębiewski}", q"{Gołębiowski}", q"{Grabowski}", q"{Graczyk}", q"{Grochowski}", q"{Grudzień}"
		, q"{Gruszczyński}", q"{Gruszka}", q"{Grzegorczyk}", q"{Grzelak}", q"{Grzesiak}", q"{Grzesik}"
		, q"{Grześkowiak}", q"{Grzyb}", q"{Grzybowski}", q"{Grzywacz}", q"{Gutowski}", q"{Guzik}", q"{Gwoździk}"
		, q"{Gwóźdź}", q"{Góra}", q"{Góral}", q"{Górecki}", q"{Górka}", q"{Górniak}", q"{Górny}"
		, q"{Górski}", q"{Gąsior}", q"{Gąsiorowski}", q"{Głogowski}", q"{Głowacki}", q"{Głąb}"
		, q"{Hajduk}", q"{Herman}", q"{Iwanowski}", q"{Iwański}", q"{Izdebski}", q"{Jabłoński}", q"{Jackowski}"
		, q"{Jagielski}", q"{Jagiełło}", q"{Jagodziński}", q"{Jakubiak}", q"{Jakubowski}", q"{Janas}"
		, q"{Janiak}", q"{Janicki}", q"{Janik}", q"{Janiszewski}", q"{Jankowiak}", q"{Jankowski}", q"{Janowski}"
		, q"{Janus}", q"{Janusz}", q"{Januszewski}", q"{Jaros}", q"{Jarosz}", q"{Jarząbek}", q"{Jasiński}"
		, q"{Jastrzębski}", q"{Jaworski}", q"{Jaśkiewicz}", q"{Jezierski}", q"{Jurek}", q"{Jurkiewicz}"
		, q"{Jurkowski}", q"{Juszczak}", q"{Jóźwiak}", q"{Jóźwik}", q"{Jędrzejczak}", q"{Jędrzejczyk}"
		, q"{Jędrzejewski}", q"{Kacprzak}", q"{Kaczmarczyk}", q"{Kaczmarek}", q"{Kaczmarski}", q"{Kaczor}"
		, q"{Kaczorowski}", q"{Kaczyński}", q"{Kaleta}", q"{Kalinowski}", q"{Kalisz}", q"{Kamiński}"
		, q"{Kania}", q"{Kaniewski}", q"{Kapusta}", q"{Karaś}", q"{Karczewski}", q"{Karpiński}", q"{Karwowski}"
		, q"{Kasperek}", q"{Kasprzak}", q"{Kasprzyk}", q"{Kaszuba}", q"{Kawa}", q"{Kawecki}", q"{Kałuża}"
		, q"{Kaźmierczak}", q"{Kiełbasa}", q"{Kisiel}", q"{Kita}", q"{Klimczak}", q"{Klimek}", q"{Kmiecik}"
		, q"{Kmieć}", q"{Knapik}", q"{Kobus}", q"{Kogut}", q"{Kolasa}", q"{Komorowski}", q"{Konieczna}"
		, q"{Konieczny}", q"{Konopka}", q"{Kopczyński}", q"{Koper}", q"{Kopeć}", q"{Korzeniowski}"
		, q"{Kos}", q"{Kosiński}", q"{Kosowski}", q"{Kostecki}", q"{Kostrzewa}", q"{Kot}", q"{Kotowski}"
		, q"{Kowal}", q"{Kowalczuk}", q"{Kowalczyk}", q"{Kowalewski}", q"{Kowalik}", q"{Kowalski}", q"{Koza}"
		, q"{Kozak}", q"{Kozieł}", q"{Kozioł}", q"{Kozłowski}", q"{Kołakowski}", q"{Kołodziej}"
		, q"{Kołodziejczyk}", q"{Kołodziejski}", q"{Krajewski}", q"{Krakowiak}", q"{Krawczyk}"
		, q"{Krawiec}", q"{Kruk}", q"{Krukowski}", q"{Krupa}", q"{Krupiński}", q"{Kruszewski}", q"{Krysiak}"
		, q"{Krzemiński}", q"{Krzyżanowski}", q"{Król}", q"{Królikowski}", q"{Książek}", q"{Kubacki}"
		, q"{Kubiak}", q"{Kubica}", q"{Kubicki}", q"{Kubik}", q"{Kuc}", q"{Kucharczyk}", q"{Kucharski}"
		, q"{Kuchta}", q"{Kuciński}", q"{Kuczyński}", q"{Kujawa}", q"{Kujawski}", q"{Kula}", q"{Kulesza}"
		, q"{Kulig}", q"{Kulik}", q"{Kuliński}", q"{Kurek}", q"{Kurowski}", q"{Kuś}", q"{Kwaśniewski}"
		, q"{Kwiatkowski}", q"{Kwiecień}", q"{Kwieciński}", q"{Kędzierski}", q"{Kędziora}", q"{Kępa}"
		, q"{Kłos}", q"{Kłosowski}", q"{Lach}", q"{Laskowski}", q"{Lasota}", q"{Lech}", q"{Lenart}", q"{Lesiak}"
		, q"{Leszczyński}", q"{Lewandowski}", q"{Lewicki}", q"{Leśniak}", q"{Leśniewski}", q"{Lipiński}"
		, q"{Lipka}", q"{Lipski}", q"{Lis}", q"{Lisiecki}", q"{Lisowski}", q"{Maciejewski}", q"{Maciąg}"
		, q"{Mackiewicz}", q"{Madej}", q"{Maj}", q"{Majcher}", q"{Majchrzak}", q"{Majewski}", q"{Majka}"
		, q"{Makowski}", q"{Malec}", q"{Malicki}", q"{Malinowski}", q"{Maliszewski}", q"{Marchewka}"
		, q"{Marciniak}", q"{Marcinkowski}", q"{Marczak}", q"{Marek}", q"{Markiewicz}", q"{Markowski}"
		, q"{Marszałek}", q"{Marzec}", q"{Masłowski}", q"{Matusiak}", q"{Matuszak}", q"{Matuszewski}"
		, q"{Matysiak}", q"{Mazur}", q"{Mazurek}", q"{Mazurkiewicz}", q"{Maćkowiak}", q"{Małecki}"
		, q"{Małek}", q"{Maślanka}", q"{Michalak}", q"{Michalczyk}", q"{Michalik}", q"{Michalski}"
		, q"{Michałek}", q"{Michałowski}", q"{Mielczarek}", q"{Mierzejewski}", q"{Mika}", q"{Miklaś}"
		, q"{Mikołajczak}", q"{Mikołajczyk}", q"{Mikulski}", q"{Milczarek}", q"{Milewski}", q"{Miller}"
		, q"{Misiak}", q"{Misztal}", q"{Miśkiewicz}", q"{Modzelewski}", q"{Molenda}", q"{Morawski}"
		, q"{Motyka}", q"{Mroczek}", q"{Mroczkowski}", q"{Mrozek}", q"{Mróz}", q"{Mucha}", q"{Murawski}"
		, q"{Musiał}", q"{Muszyński}", q"{Młynarczyk}", q"{Napierała}", q"{Nawrocki}", q"{Nawrot}"
		, q"{Niedziela}", q"{Niedzielski}", q"{Niedźwiecki}", q"{Niemczyk}", q"{Niemiec}", q"{Niewiadomski}"
		, q"{Noga}", q"{Nowacki}", q"{Nowaczyk}", q"{Nowak}", q"{Nowakowski}", q"{Nowicki}", q"{Nowiński}"
		, q"{Olczak}", q"{Olejniczak}", q"{Olejnik}", q"{Olszewski}", q"{Orzechowski}", q"{Orłowski}"
		, q"{Osiński}", q"{Ossowski}", q"{Ostrowski}", q"{Owczarek}", q"{Paczkowski}", q"{Pająk}"
		, q"{Pakuła}", q"{Palacz}", q"{Paluch}", q"{Panek}", q"{Partyka}", q"{Pasternak}", q"{Paszkowski}"
		, q"{Pawelec}", q"{Pawlak}", q"{Pawlicki}", q"{Pawlik}", q"{Pawlikowski}", q"{Pawłowski}", q"{Pałka}"
		, q"{Piasecki}", q"{Piechota}", q"{Pieczek}", q"{Piekarski}", q"{Pietras}", q"{Pietruszka}"
		, q"{Pietrzak}", q"{Pietrzyk}", q"{Pilarski}", q"{Pilch}", q"{Piotrowicz}", q"{Piotrowski}"
		, q"{Piwowarczyk}", q"{Piórkowski}", q"{Piątek}", q"{Piątkowski}", q"{Piłat}", q"{Pluta}"
		, q"{Podgórski}", q"{Polak}", q"{Popławski}", q"{Porębski}", q"{Prokop}", q"{Prus}", q"{Przybylski}"
		, q"{Przybysz}", q"{Przybył}", q"{Przybyła}", q"{Ptak}", q"{Puchalski}", q"{Pytel}", q"{Płonka}"
		, q"{Raczyński}", q"{Radecki}", q"{Radomski}", q"{Rak}", q"{Rakowski}", q"{Ratajczak}", q"{Robak}"
		, q"{Rogala}", q"{Rogalski}", q"{Rogowski}", q"{Rojek}", q"{Romanowski}", q"{Rosa}", q"{Rosiak}"
		, q"{Rosiński}", q"{Ruciński}", q"{Rudnicki}", q"{Rudziński}", q"{Rudzki}", q"{Rusin}", q"{Rutkowski}"
		, q"{Rybak}", q"{Rybarczyk}", q"{Rybicki}", q"{Rzepka}", q"{Różański}", q"{Różycki}", q"{Sadowski}"
		, q"{Sawicki}", q"{Serafin}", q"{Siedlecki}", q"{Sienkiewicz}", q"{Sieradzki}", q"{Sikora}"
		, q"{Sikorski}", q"{Sitek}", q"{Siwek}", q"{Skalski}", q"{Skiba}", q"{Skibiński}", q"{Skoczylas}"
		, q"{Skowron}", q"{Skowronek}", q"{Skowroński}", q"{Skrzypczak}", q"{Skrzypek}", q"{Skóra}"
		, q"{Smoliński}", q"{Sobczak}", q"{Sobczyk}", q"{Sobieraj}", q"{Sobolewski}", q"{Socha}", q"{Sochacki}"
		, q"{Sokołowski}", q"{Sokół}", q"{Sosnowski}", q"{Sowa}", q"{Sowiński}", q"{Sołtys}", q"{Sołtysiak}"
		, q"{Sroka}", q"{Stachowiak}", q"{Stachowicz}", q"{Stachura}", q"{Stachurski}", q"{Stanek}"
		, q"{Staniszewski}", q"{Stanisławski}", q"{Stankiewicz}", q"{Stasiak}", q"{Staszewski}"
		, q"{Stawicki}", q"{Stec}", q"{Stefaniak}", q"{Stefański}", q"{Stelmach}", q"{Stolarczyk}"
		, q"{Stolarski}", q"{Strzelczyk}", q"{Strzelecki}", q"{Stępień}", q"{Stępniak}", q"{Surma}"
		, q"{Suski}", q"{Szafrański}", q"{Szatkowski}", q"{Szczepaniak}", q"{Szczepanik}", q"{Szczepański}"
		, q"{Szczerba}", q"{Szcześniak}", q"{Szczygieł}", q"{Szczęsna}", q"{Szczęsny}", q"{Szeląg}"
		, q"{Szewczyk}", q"{Szostak}", q"{Szulc}", q"{Szwarc}", q"{Szwed}", q"{Szydłowski}", q"{Szymański}"
		, q"{Szymczak}", q"{Szymczyk}", q"{Szymkowiak}", q"{Szyszka}", q"{Sławiński}", q"{Słowik}"
		, q"{Słowiński}", q"{Tarnowski}", q"{Tkaczyk}", q"{Tokarski}", q"{Tomala}", q"{Tomaszewski}"
		, q"{Tomczak}", q"{Tomczyk}", q"{Tomys}", q"{Tracz}", q"{Trojanowski}", q"{Trzciński}", q"{Trzeciak}"
		, q"{Turek}", q"{Twardowski}", q"{Urban}", q"{Urbanek}", q"{Urbaniak}", q"{Urbanowicz}", q"{Urbańczyk}"
		, q"{Urbański}", q"{Walczak}", q"{Walkowiak}", q"{Warchoł}", q"{Wasiak}", q"{Wasilewski}"
		, q"{Wawrzyniak}", q"{Wesołowski}", q"{Wieczorek}", q"{Wierzbicki}", q"{Wilczek}", q"{Wilczyński}"
		, q"{Wilk}", q"{Winiarski}", q"{Witczak}", q"{Witek}", q"{Witkowski}", q"{Wiącek}", q"{Więcek}"
		, q"{Więckowski}", q"{Wiśniewski}", q"{Wnuk}", q"{Wojciechowski}", q"{Wojtas}", q"{Wojtasik}"
		, q"{Wojtczak}", q"{Wojtkowiak}", q"{Wolak}", q"{Woliński}", q"{Wolny}", q"{Wolski}", q"{Woś}"
		, q"{Woźniak}", q"{Wrona}", q"{Wroński}", q"{Wróbel}", q"{Wróblewski}", q"{Wypych}", q"{Wysocki}"
		, q"{Wyszyński}", q"{Wójcicki}", q"{Wójcik}", q"{Wójtowicz}", q"{Wąsik}", q"{Wąsowski}"
		, q"{Węgrzyn}", q"{Włodarczyk}", q"{Włodarski}", q"{Zaborowski}", q"{Zabłocki}", q"{Zagórski}"
		, q"{Zając}", q"{Zajączkowski}", q"{Zakrzewski}", q"{Zalewski}", q"{Zaremba}", q"{Zarzycki}"
		, q"{Zaręba}", q"{Zawada}", q"{Zawadzki}", q"{Zdunek}", q"{Zieliński}", q"{Zielonka}", q"{Ziółkowski}"
		, q"{Zięba}", q"{Ziętek}", q"{Zwoliński}", q"{Zych}", q"{Zygmunt}", q"{Łapiński}", q"{Łuczak}"
		, q"{Łukasiewicz}", q"{Łukasik}", q"{Łukaszewski}", q"{Śliwa}", q"{Śliwiński}", q"{Ślusarczyk}"
		, q"{Świderski}", q"{Świerczyński}", q"{Świątek}", q"{Żak}", q"{Żebrowski}", q"{Żmuda}"
		, q"{Żuk}", q"{Żukowski}", q"{Żurawski}", q"{Żurek}", q"{Żyła}" ];

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
		[ q"{Aaron}", q"{Abraham}", q"{Adam}", q"{Adrian}", q"{Atanazy}", q"{Agaton}", q"{Alan}", q"{Albert}"
		, q"{Aleksander}", q"{Aleksy}", q"{Alfred}", q"{Alwar}", q"{Ambroży}", q"{Anatol}", q"{Andrzej}"
		, q"{Antoni}", q"{Apollinary}", q"{Apollo}", q"{Arkady}", q"{Arkadiusz}", q"{Archibald}", q"{Arystarch}"
		, q"{Arnold}", q"{Arseniusz}", q"{Artur}", q"{August}", q"{Baldwin}", q"{Bazyli}", q"{Benedykt}"
		, q"{Beniamin}", q"{Bernard}", q"{Bertrand}", q"{Bertram}", q"{Borys}", q"{Brajan}", q"{Bruno}"
		, q"{Cezary}", q"{Cecyliusz}", q"{Karol}", q"{Krystian}", q"{Krzysztof}", q"{Klarencjusz}", q"{Klaudiusz}"
		, q"{Klemens}", q"{Konrad}", q"{Konstanty}", q"{Konstantyn}", q"{Kornel}", q"{Korneliusz}", q"{Korneli}"
		, q"{Cyryl}", q"{Cyrus}", q"{Damian}", q"{Daniel}", q"{Dariusz}", q"{Dawid}", q"{Dionizy}", q"{Demetriusz}"
		, q"{Dominik}", q"{Donald}", q"{Dorian}", q"{Edgar}", q"{Edmund}", q"{Edward}", q"{Edwin}", q"{Efrem}"
		, q"{Efraim}", q"{Eliasz}", q"{Eleazar}", q"{Emil}", q"{Emanuel}", q"{Erast}", q"{Ernest}", q"{Eugeniusz}"
		, q"{Eustracjusz}", q"{Fabian}", q"{Feliks}", q"{Florian}", q"{Franciszek}", q"{Fryderyk}", q"{Gabriel}"
		, q"{Gedeon}", q"{Galfryd}", q"{Jerzy}", q"{Gerald}", q"{Gerazym}", q"{Gilbert}", q"{Gonsalwy}"
		, q"{Grzegorz}", q"{Gwido}", q"{Harald}", q"{Henryk}", q"{Herbert}", q"{Herman}", q"{Hilary}", q"{Horacy}"
		, q"{Hubert}", q"{Hugo}", q"{Ignacy}", q"{Igor}", q"{Hilarion}", q"{Innocenty}", q"{Hipolit}", q"{Ireneusz}"
		, q"{Erwin}", q"{Izaak}", q"{Izajasz}", q"{Izydor}", q"{Jakub}", q"{Jeremi}", q"{Jeremiasz}", q"{Hieronim}"
		, q"{Joachim}", q"{Jan}", q"{Janusz}", q"{Jonatan}", q"{Józef}", q"{Jozue}", q"{Julian}", q"{Juliusz}"
		, q"{Justyn}", q"{Kalistrat}", q"{Kazimierz}", q"{Wawrzyniec}", q"{Laurenty}", q"{Laurencjusz}"
		, q"{Łazarz}", q"{Leon}", q"{Leonard}", q"{Leonid}", q"{Ludwik}", q"{Łukasz}", q"{Lucjan}", q"{Magnus}"
		, q"{Makary}", q"{Marceli}", q"{Marek}", q"{Marcin}", q"{Mateusz}", q"{Maurycy}", q"{Maksym}", q"{Maksymilian}"
		, q"{Michał}", q"{Miron}", q"{Modest}", q"{Mojżesz}", q"{Natan}", q"{Natanael}", q"{Nazariusz}"
		, q"{Nazary}", q"{Nestor}", q"{Mikołaj}", q"{Nikodem}", q"{Olaf}", q"{Oleg}", q"{Oliwier}", q"{Onufry}"
		, q"{Orestes}", q"{Oskar}", q"{Ansgary}", q"{Osmund}", q"{Pankracy}", q"{Pantaleon}", q"{Patryk}"
		, q"{Patrycjusz}", q"{Patrycy}", q"{Paweł}", q"{Piotr}", q"{Filemon}", q"{Filip}", q"{Platon}"
		, q"{Polikarp}", q"{Porfiry}", q"{Porfiriusz}", q"{Prokles}", q"{Prokul}", q"{Prokop}", q"{Kwintyn}"
		, q"{Randolf}", q"{Rafał}", q"{Rajmund}", q"{Reginald}", q"{Rajnold}", q"{Ryszard}", q"{Robert}"
		, q"{Roderyk}", q"{Roger}", q"{Roland}", q"{Roman}", q"{Romeo}", q"{Rudolf}", q"{Samson}", q"{Samuel}"
		, q"{Salwator}", q"{Sebastian}", q"{Serafin}", q"{Sergiusz}", q"{Seweryn}", q"{Zygmunt}", q"{Sylwester}"
		, q"{Szymon}", q"{Salomon}", q"{Spirydion}", q"{Stanisław}", q"{Szczepan}", q"{Stefan}", q"{Terencjusz}"
		, q"{Teodor}", q"{Tomasz}", q"{Tymoteusz}", q"{Tobiasz}", q"{Walenty}", q"{Walentyn}", q"{Walerian}"
		, q"{Walery}", q"{Wiktor}", q"{Wincenty}", q"{Witalis}", q"{Włodzimierz}", q"{Władysław}"
		, q"{Błażej}", q"{Walter}", q"{Walgierz}", q"{Wacław}", q"{Wilfryd}", q"{Wilhelm}", q"{Ksawery}"
		, q"{Ksenofont}", q"{Zachariasz}", q"{Zachary}" ];

		return choice(strs, this.rnd);
	}

	override string personMalePrefix() {
		const string[] strs =
		[ q"{Pan}" ];

		return choice(strs, this.rnd);
	}

	override string personName() {
		const int rndInt = uniform(0, 10, this.rnd);

		if(rndInt >= 0 && rndInt < 1) {
			return personPrefix() ~ " " ~ personFirstName() ~ " " ~ personLastName();
		}
		if(rndInt >= 1 && rndInt < 10) {
			return personFirstName() ~ " " ~ personLastName();
		}

		return "";
	}

	override string personPrefix() {
		const string[] strs =
		[ q"{Pan}", q"{Pani}" ];

		return choice(strs, this.rnd);
	}

	override string personSex() {
		const string[] strs =
		[ q"{kobieta}", q"{mężczyzna}" ];

		return choice(strs, this.rnd);
	}

	override string phoneNumberFormats() {
		const string[] strs =
		[ q"{12-###-##-##}", q"{13-###-##-##}", q"{14-###-##-##}", q"{15-###-##-##}", q"{16-###-##-##}"
		, q"{17-###-##-##}", q"{18-###-##-##}", q"{22-###-##-##}", q"{23-###-##-##}", q"{24-###-##-##}"
		, q"{25-###-##-##}", q"{29-###-##-##}", q"{32-###-##-##}", q"{33-###-##-##}", q"{34-###-##-##}"
		, q"{41-###-##-##}", q"{42-###-##-##}", q"{43-###-##-##}", q"{44-###-##-##}", q"{46-###-##-##}"
		, q"{48-###-##-##}", q"{52-###-##-##}", q"{54-###-##-##}", q"{55-###-##-##}", q"{56-###-##-##}"
		, q"{58-###-##-##}", q"{59-###-##-##}", q"{61-###-##-##}", q"{62-###-##-##}", q"{63-###-##-##}"
		, q"{65-###-##-##}", q"{67-###-##-##}", q"{68-###-##-##}", q"{71-###-##-##}", q"{74-###-##-##}"
		, q"{75-###-##-##}", q"{76-###-##-##}", q"{77-###-##-##}", q"{81-###-##-##}", q"{82-###-##-##}"
		, q"{83-###-##-##}", q"{84-###-##-##}", q"{85-###-##-##}", q"{86-###-##-##}", q"{87-###-##-##}"
		, q"{89-###-##-##}", q"{91-###-##-##}", q"{94-###-##-##}", q"{95-###-##-##}" ];

		return numberBuild(choice(strs, this.rnd));
	}

	override ChemicalElement scienceChemicalElement() {
		switch(uniform(0, 118, this.rnd)) {
			case 0: return ChemicalElement(q"{H}", q"{Wodór}", 1);
			case 1: return ChemicalElement(q"{He}", q"{Hel}", 2);
			case 2: return ChemicalElement(q"{Li}", q"{Lit}", 3);
			case 3: return ChemicalElement(q"{Be}", q"{Beryl}", 4);
			case 4: return ChemicalElement(q"{B}", q"{Bor}", 5);
			case 5: return ChemicalElement(q"{C}", q"{Węgiel}", 6);
			case 6: return ChemicalElement(q"{N}", q"{Azot}", 7);
			case 7: return ChemicalElement(q"{O}", q"{Tlen}", 8);
			case 8: return ChemicalElement(q"{F}", q"{Fluor}", 9);
			case 9: return ChemicalElement(q"{Ne}", q"{Neon}", 10);
			case 10: return ChemicalElement(q"{Na}", q"{Sód}", 11);
			case 11: return ChemicalElement(q"{Mg}", q"{Magnez}", 12);
			case 12: return ChemicalElement(q"{Al}", q"{Glin}", 13);
			case 13: return ChemicalElement(q"{Si}", q"{Krzem}", 14);
			case 14: return ChemicalElement(q"{P}", q"{Fosfor}", 15);
			case 15: return ChemicalElement(q"{S}", q"{Siarka}", 16);
			case 16: return ChemicalElement(q"{Cl}", q"{Chlor}", 17);
			case 17: return ChemicalElement(q"{Ar}", q"{Argon}", 18);
			case 18: return ChemicalElement(q"{K}", q"{Potas}", 19);
			case 19: return ChemicalElement(q"{Ca}", q"{Wapń}", 20);
			case 20: return ChemicalElement(q"{Sc}", q"{Skand}", 21);
			case 21: return ChemicalElement(q"{Ti}", q"{Tytan}", 22);
			case 22: return ChemicalElement(q"{V}", q"{Wanad}", 23);
			case 23: return ChemicalElement(q"{Cr}", q"{Chrom}", 24);
			case 24: return ChemicalElement(q"{Mn}", q"{Mangan}", 25);
			case 25: return ChemicalElement(q"{Fe}", q"{Żelazo}", 26);
			case 26: return ChemicalElement(q"{Co}", q"{Kobalt}", 27);
			case 27: return ChemicalElement(q"{Ni}", q"{Nikiel}", 28);
			case 28: return ChemicalElement(q"{Cu}", q"{Miedź}", 29);
			case 29: return ChemicalElement(q"{Zn}", q"{Cynk}", 30);
			case 30: return ChemicalElement(q"{Ga}", q"{Gal}", 31);
			case 31: return ChemicalElement(q"{Ge}", q"{German}", 32);
			case 32: return ChemicalElement(q"{As}", q"{Arsen}", 33);
			case 33: return ChemicalElement(q"{Se}", q"{Selen}", 34);
			case 34: return ChemicalElement(q"{Br}", q"{Brom}", 35);
			case 35: return ChemicalElement(q"{Kr}", q"{Krypton}", 36);
			case 36: return ChemicalElement(q"{Rb}", q"{Rubid}", 37);
			case 37: return ChemicalElement(q"{Sr}", q"{Stront}", 38);
			case 38: return ChemicalElement(q"{Y}", q"{Itr}", 39);
			case 39: return ChemicalElement(q"{Zr}", q"{Cyrkon}", 40);
			case 40: return ChemicalElement(q"{Nb}", q"{Niob}", 41);
			case 41: return ChemicalElement(q"{Mo}", q"{Molibden}", 42);
			case 42: return ChemicalElement(q"{Tc}", q"{Technet}", 43);
			case 43: return ChemicalElement(q"{Ru}", q"{Ruten}", 44);
			case 44: return ChemicalElement(q"{Rh}", q"{Rod}", 45);
			case 45: return ChemicalElement(q"{Pd}", q"{Pallad}", 46);
			case 46: return ChemicalElement(q"{Ag}", q"{Srebro}", 47);
			case 47: return ChemicalElement(q"{Cd}", q"{Kadm}", 48);
			case 48: return ChemicalElement(q"{In}", q"{Ind}", 49);
			case 49: return ChemicalElement(q"{Sn}", q"{Cyna}", 50);
			case 50: return ChemicalElement(q"{Sb}", q"{Antymon}", 51);
			case 51: return ChemicalElement(q"{Te}", q"{Tellur}", 52);
			case 52: return ChemicalElement(q"{I}", q"{Jod}", 53);
			case 53: return ChemicalElement(q"{Xe}", q"{Ksenon}", 54);
			case 54: return ChemicalElement(q"{Cs}", q"{Cez}", 55);
			case 55: return ChemicalElement(q"{Ba}", q"{Bar}", 56);
			case 56: return ChemicalElement(q"{La}", q"{Lantan}", 57);
			case 57: return ChemicalElement(q"{Ce}", q"{Cer}", 58);
			case 58: return ChemicalElement(q"{Pr}", q"{Prazeodym}", 59);
			case 59: return ChemicalElement(q"{Nd}", q"{Neodym}", 60);
			case 60: return ChemicalElement(q"{Pm}", q"{Promet}", 61);
			case 61: return ChemicalElement(q"{Sm}", q"{Samar}", 62);
			case 62: return ChemicalElement(q"{Eu}", q"{Europ}", 63);
			case 63: return ChemicalElement(q"{Gd}", q"{Gadolin}", 64);
			case 64: return ChemicalElement(q"{Tb}", q"{Terb}", 65);
			case 65: return ChemicalElement(q"{Dy}", q"{Dysproz}", 66);
			case 66: return ChemicalElement(q"{Ho}", q"{Holm}", 67);
			case 67: return ChemicalElement(q"{Er}", q"{Erb}", 68);
			case 68: return ChemicalElement(q"{Tm}", q"{Tul}", 69);
			case 69: return ChemicalElement(q"{Yb}", q"{Iterb}", 70);
			case 70: return ChemicalElement(q"{Lu}", q"{Lutet}", 71);
			case 71: return ChemicalElement(q"{Hf}", q"{Hafn}", 72);
			case 72: return ChemicalElement(q"{Ta}", q"{Tantal}", 73);
			case 73: return ChemicalElement(q"{W}", q"{Wolfram}", 74);
			case 74: return ChemicalElement(q"{Re}", q"{Ren}", 75);
			case 75: return ChemicalElement(q"{Os}", q"{Osm}", 76);
			case 76: return ChemicalElement(q"{Ir}", q"{Iryd}", 77);
			case 77: return ChemicalElement(q"{Pt}", q"{Platyna}", 78);
			case 78: return ChemicalElement(q"{Au}", q"{Złoto}", 79);
			case 79: return ChemicalElement(q"{Hg}", q"{Rtęć}", 80);
			case 80: return ChemicalElement(q"{Tl}", q"{Tal}", 81);
			case 81: return ChemicalElement(q"{Pb}", q"{Ołów}", 82);
			case 82: return ChemicalElement(q"{Bi}", q"{Bizmut}", 83);
			case 83: return ChemicalElement(q"{Po}", q"{Polon}", 84);
			case 84: return ChemicalElement(q"{At}", q"{Astat}", 85);
			case 85: return ChemicalElement(q"{Rn}", q"{Radon}", 86);
			case 86: return ChemicalElement(q"{Fr}", q"{Frans}", 87);
			case 87: return ChemicalElement(q"{Ra}", q"{Rad}", 88);
			case 88: return ChemicalElement(q"{Ac}", q"{Aktyn}", 89);
			case 89: return ChemicalElement(q"{Th}", q"{Tor}", 90);
			case 90: return ChemicalElement(q"{Pa}", q"{Protaktyn}", 91);
			case 91: return ChemicalElement(q"{U}", q"{Uran}", 92);
			case 92: return ChemicalElement(q"{Np}", q"{Neptun}", 93);
			case 93: return ChemicalElement(q"{Pu}", q"{Pluton}", 94);
			case 94: return ChemicalElement(q"{Am}", q"{Ameryk}", 95);
			case 95: return ChemicalElement(q"{Cm}", q"{Kiur}", 96);
			case 96: return ChemicalElement(q"{Bk}", q"{Berkel}", 97);
			case 97: return ChemicalElement(q"{Cf}", q"{Kaliforn}", 98);
			case 98: return ChemicalElement(q"{Es}", q"{Einstein}", 99);
			case 99: return ChemicalElement(q"{Fm}", q"{Ferm}", 100);
			case 100: return ChemicalElement(q"{Md}", q"{Mendelew}", 101);
			case 101: return ChemicalElement(q"{No}", q"{Nobel}", 102);
			case 102: return ChemicalElement(q"{Lr}", q"{Lorens}", 103);
			case 103: return ChemicalElement(q"{Rf}", q"{Rutherford}", 104);
			case 104: return ChemicalElement(q"{Db}", q"{Dubn}", 105);
			case 105: return ChemicalElement(q"{Sg}", q"{Seaborg}", 106);
			case 106: return ChemicalElement(q"{Bh}", q"{Bohr}", 107);
			case 107: return ChemicalElement(q"{Hs}", q"{Has}", 108);
			case 108: return ChemicalElement(q"{Mt}", q"{Meitner}", 109);
			case 109: return ChemicalElement(q"{Ds}", q"{Darmsztadt}", 110);
			case 110: return ChemicalElement(q"{Rg}", q"{Roentgen}", 111);
			case 111: return ChemicalElement(q"{Cn}", q"{Kopernik}", 112);
			case 112: return ChemicalElement(q"{Nh}", q"{Nihon}", 113);
			case 113: return ChemicalElement(q"{Fl}", q"{Flerow}", 114);
			case 114: return ChemicalElement(q"{Mc}", q"{Moskow}", 115);
			case 115: return ChemicalElement(q"{Lv}", q"{Liwermor}", 116);
			case 116: return ChemicalElement(q"{Ts}", q"{Tenes}", 117);
			case 117: return ChemicalElement(q"{Og}", q"{Oganeson}", 118);
			default: return ChemicalElement("","");
		}
	}

	override ChemicalUnit scienceUnit() {
		switch(uniform(0, 22, this.rnd)) {
			case 0: return ChemicalUnit(q"{metr}", q"{m}");
			case 1: return ChemicalUnit(q"{sekunda}", q"{s}");
			case 2: return ChemicalUnit(q"{mol}", q"{mol}");
			case 3: return ChemicalUnit(q"{amper}", q"{A}");
			case 4: return ChemicalUnit(q"{kelwin}", q"{K}");
			case 5: return ChemicalUnit(q"{kandela}", q"{cd}");
			case 6: return ChemicalUnit(q"{kilogram}", q"{kg}");
			case 7: return ChemicalUnit(q"{radian}", q"{rad}");
			case 8: return ChemicalUnit(q"{herc}", q"{Hz}");
			case 9: return ChemicalUnit(q"{niuton}", q"{N}");
			case 10: return ChemicalUnit(q"{paskal}", q"{Pa}");
			case 11: return ChemicalUnit(q"{dżul}", q"{J}");
			case 12: return ChemicalUnit(q"{wat}", q"{W}");
			case 13: return ChemicalUnit(q"{kulomb}", q"{C}");
			case 14: return ChemicalUnit(q"{wolt}", q"{V}");
			case 15: return ChemicalUnit(q"{om}", q"{Ω}");
			case 16: return ChemicalUnit(q"{tesla}", q"{T}");
			case 17: return ChemicalUnit(q"{stopień Celsjusza}", q"{°C}");
			case 18: return ChemicalUnit(q"{lumen}", q"{lm}");
			case 19: return ChemicalUnit(q"{bekerel}", q"{Bq}");
			case 20: return ChemicalUnit(q"{grej}", q"{Gy}");
			case 21: return ChemicalUnit(q"{siwert}", q"{Sv}");
			default: return ChemicalUnit("","");
		}
	}

	string teamPrefix() {
		const string[] strs =
		[ q"{GKS}", q"{Górnik}", q"{KS}", q"{LZS}", q"{Piast}", q"{Pogoń}", q"{Polonia}", q"{Ruch}", q"{Stal}"
		, q"{Unia}", q"{Zjednoczenie}" ];

		return choice(strs, this.rnd);
	}

	override string teamName() {
		switch(uniform(0, 1, this.rnd)) {
			case 0: return teamPrefix() ~ " " ~ locationCity();
			default: return "";
		}
	}

}

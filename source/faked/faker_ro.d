module faked.faker_ro;

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

class Faker_ro : Faker_en {
@safe:
	this(int seed) {
		super(seed);
	}

	override string cellPhoneFormats() {
		const string[] strs =
		[ q"{0726######}", q"{0723######}", q"{0722######}", q"{0721######}", q"{0720######}", q"{0728######}"
		, q"{0729######}", q"{0730######}", q"{0739######}", q"{0738######}", q"{0737######}", q"{0736######}"
		, q"{0735######}", q"{0734######}", q"{0733######}", q"{0732######}", q"{0731######}", q"{0780######}"
		, q"{0788######}", q"{0753######}", q"{0754######}", q"{0755######}", q"{0756######}", q"{0757######}"
		, q"{0758######}", q"{0759######}", q"{0748######}", q"{0747######}", q"{0746######}", q"{0740######}"
		, q"{0741######}", q"{0742######}", q"{0743######}", q"{0744######}", q"{0745######}", q"{0711######}"
		, q"{0727######}", q"{0725######}", q"{0724######}", q"{0786######}", q"{0760######}", q"{0761######}"
		, q"{0762######}", q"{0763######}", q"{0764######}", q"{0765######}", q"{0766######}", q"{0767######}"
		, q"{0785######}", q"{0768######}", q"{0769######}", q"{0784######}", q"{0770######}", q"{0772######}"
		, q"{0771######}", q"{0749######}", q"{0750######}", q"{0751######}", q"{0752######}" ];

		return numberBuild(choice(strs, this.rnd));
	}

	override string dateMonthWide() {
		const string[] strs =
		[ q"{Ianuarie}", q"{Februarie}", q"{Martie}", q"{Aprilie}", q"{Mai}", q"{Iunie}", q"{Iulie}", q"{August}"
		, q"{Septembrie}", q"{Octombrie}", q"{Noiembrie}", q"{Decembrie}" ];

		return choice(strs, this.rnd);
	}

	override string dateMonthAbbr() {
		const string[] strs =
		[ q"{Ian}", q"{Feb}", q"{Mar}", q"{Apr}", q"{Mai}", q"{Iun}", q"{Iul}", q"{Aug}", q"{Sep}", q"{Oct}", q"{Noi}"
		, q"{Dec}" ];

		return choice(strs, this.rnd);
	}

	override string dateWeekdayWide() {
		const string[] strs =
		[ q"{Luni}", q"{Marți}", q"{Miercuri}", q"{Joi}", q"{Vineri}", q"{Sâmbătă}", q"{Duminică}" ];

		return choice(strs, this.rnd);
	}

	override string dateWeekdayAbbr() {
		const string[] strs =
		[ q"{Luni}", q"{Marți}", q"{Miercuri}", q"{Joi}", q"{Vineri}", q"{Sâmbătă}", q"{Duminică}" ];

		return choice(strs, this.rnd);
	}

	override string internetDomainSuffix() {
		const string[] strs =
		[ q"{com}", q"{biz}", q"{info}", q"{name}", q"{net}", q"{org}", q"{ro}", q"{com.ro}", q"{org.ro}", q"{tm.ro}"
		, q"{store.ro}", q"{info.ro}", q"{nom.ro}", q"{nt.ro}", q"{firm.ro}", q"{www.ro}", q"{arts.ro}"
		, q"{rec.ro}" ];

		return choice(strs, this.rnd);
	}

	override string internetFreeEmail() {
		const string[] strs =
		[ q"{gmail.com}", q"{yahoo.com}", q"{hotmail.com}" ];

		return choice(strs, this.rnd);
	}

	override string locationBuildingNumber() {
		const string[] strs =
		[ q"{Bloc ##}" ];

		return numberBuild(choice(strs, this.rnd));
	}

	override string locationCityName() {
		const string[] strs =
		[ q"{București}", q"{Cluj-Napoca}", q"{Timișoara}", q"{Iași}", q"{Constanța}", q"{Craiova}"
		, q"{Brașov}", q"{Galați}", q"{Ploiești}", q"{Oradea}", q"{Brăila}", q"{Arad}", q"{Pitești}"
		, q"{Sibiu}", q"{Bacău}", q"{Târgu Mureș}", q"{Baia Mare}", q"{Buzău}", q"{Botoșani}", q"{Satu Mare}"
		, q"{Râmnicu Vâlcea}", q"{Drobeta-Turnu Severin}", q"{Suceava}", q"{Piatra Neamț}"
		, q"{Târgu Jiu}", q"{Târgoviște}", q"{Focșani}", q"{Bistrița}", q"{Reșița}", q"{Tulcea}"
		, q"{Călărași}", q"{Alba Iulia}", q"{Giurgiu}", q"{Deva}", q"{Hunedoara}", q"{Zalău}", q"{Sfântu Gheorghe}"
		, q"{Bârlad}", q"{Vaslui}", q"{1387}", q"{Slobozia}", q"{Turda}", q"{Mediaș}", q"{Voluntari}"
		, q"{Lugoj}", q"{Medgidia}", q"{Onești}", q"{Miercurea Ciuc}", q"{Sighetu Marmației}", q"{Petroșani}"
		, q"{Mangalia}", q"{Tecuci}", q"{Râmnicu Sărat}", q"{Pașcani}", q"{Dej}", q"{Reghin}", q"{Năvodari}"
		, q"{Odorheiu Secuiesc}", q"{Câmpina}", q"{Mioveni}", q"{Câmpulung}", q"{Caracal}", q"{Săcele}"
		, q"{Făgăraș}", q"{Fetești}", q"{Sighișoara}", q"{Borșa}", q"{Roșiorii de Vede}", q"{Curtea de Argeș}"
		, q"{Sebeș}", q"{Huși}", q"{Fălticeni}", q"{Pantelimon}", q"{Oltenița}", q"{Turnu Măgurele}"
		, q"{Caransebeș}", q"{Dorohoi}", q"{Rădăuți}", q"{Zărnești}", q"{Lupeni}", q"{Aiud}", q"{Petrila}"
		, q"{Buftea}", q"{Moinești}", q"{Târnăveni}", q"{Câmpia Turzii}", q"{Popești-Leordeni}"
		, q"{Gherla}", q"{Carei}", q"{Cugir}", q"{Blaj}", q"{Codlea}", q"{Comănești}", q"{Târgu Neamț}"
		, q"{Motru}", q"{Târgu Secuiesc}", q"{Moreni}", q"{Gheorgheni}", q"{Băicoi}", q"{Orăștie}"
		, q"{Salonta}", q"{Balș}", q"{Drăgășani}", q"{Băilești}", q"{Calafat}", q"{Filiași}"
		, q"{Cernavodă}", q"{Câmpulung Moldovenesc}", q"{Breaza}", q"{Marghita}", q"{Baia Sprie}"
		, q"{Luduș}", q"{Corabia}", q"{Adjud}", q"{Vișeu de Sus}", q"{Bragadiru}", q"{Bocșa}", q"{Râșnov}"
		, q"{Urziceni}", q"{Pucioasa}", q"{Vatra Dornei}", q"{Cisnădie}", q"{Mizil}", q"{Toplița}"
		, q"{Chitila}", q"{Șimleu Silvaniei}", q"{Buhuși}", q"{Vicovu de Sus}", q"{Zimnicea}", q"{Găești}"
		, q"{Gura Humorului}", q"{Otopeni}", q"{Ocna Mureș}", q"{Avrig}", q"{Simeria}", q"{Pecica}"
		, q"{Dăbuleni}", q"{Bolintin-Vale}", q"{Rovinari}", q"{Comarnic}", q"{Vălenii de Munte}"
		, q"{Sânnicolau Mare}", q"{Dărmănești}", q"{Moldova Nouă}", q"{Târgu Lăpuș}", q"{Săcueni}"
		, q"{Videle}", q"{Scornicești}", q"{Boldești-Scăeni}", q"{Sântana}", q"{Târgu Ocna}"
		, q"{Măgurele}", q"{Călan}", q"{Beclean}", q"{Țăndărei}", q"{Sovata}", q"{Oravița}", q"{Jibou}"
		, q"{Urlați}", q"{Hârlău}", q"{Beiuș}", q"{Ianca}", q"{Jimbolia}", q"{Topoloveni}", q"{Drăgănești-Olt}"
		, q"{Sinaia}", q"{Nehoiu}", q"{Covasna}", q"{Negrești-Oaș}", q"{Strehaia}", q"{Dolhasca}"
		, q"{Orșova}", q"{Valea lui Mihai}", q"{Murfatlar}", q"{Aleșd}", q"{Darabani}", q"{Cristuru Secuiesc}"
		, q"{Flămânzi}", q"{Mărășești}", q"{Sângeorz-Băi}", q"{Liteni}", q"{Târgu Frumos}"
		, q"{Titu}", q"{Hațeg}", q"{Oțelu Roșu}", q"{Ineu}", q"{Năsăud}", q"{Huedin}", q"{Odobești}"
		, q"{Hârșova}", q"{Bumbești-Jiu}", q"{Seini}", q"{Salcea}", q"{Podu Iloaiei}", q"{Eforie}"
		, q"{Uricani}", q"{Baraolt}", q"{Bușteni}", q"{Tășnad}", q"{Iernut}", q"{Agnita}", q"{Babadag}"
		, q"{Băbeni}", q"{Târgu Cărbunești}", q"{Negrești}", q"{Recaș}", q"{Siret}", q"{Măcin}"
		, q"{Chișineu-Criș}", q"{Plopeni}", q"{Mihăilești}", q"{Șomcuta Mare}", q"{Fieni}", q"{Întorsura Buzăului}"
		, q"{Călimănești}", q"{Panciu}", q"{Nădlac}", q"{Zlatna}", q"{Pătârlagele}", q"{Cehu Silvaniei}"
		, q"{Amara}", q"{Budești}", q"{Anina}", q"{Dumbrăveni}", q"{Câmpeni}", q"{Pogoanele}", q"{Tăuții-Măgherăuș}"
		, q"{Tismana}", q"{Curtici}", q"{Techirghiol}", q"{Sărmașu}", q"{Vlăhița}", q"{Cajvana}"
		, q"{Săveni}", q"{Segarcea}", q"{Pâncota}", q"{Răcari}", q"{Făget}", q"{Tălmaciu}", q"{Buziaș}"
		, q"{Fundulea}", q"{Murgeni}", q"{Teiuș}", q"{Însurăței}", q"{Bicaz}", q"{Târgu Bujor}"
		, q"{Ștei}", q"{Lehliu Gară}", q"{Horezu}", q"{Deta}", q"{Slănic}", q"{Piatra-Olt}", q"{Ardud}"
		, q"{Bălan}", q"{Sebiș}", q"{Brezoi}", q"{Potcoava}", q"{Gătaia}", q"{Novaci}", q"{Miercurea Nirajului}"
		, q"{Baia de Aramă}", q"{Copșa Mică}", q"{Vânju Mare}", q"{Sângeorgiu de Pădure}"
		, q"{Geoagiu}", q"{Săliște}", q"{Ciacova}", q"{Rupea}", q"{Milișăuți}", q"{Isaccea}", q"{Abrud}"
		, q"{Fierbinți-Târg}", q"{Cavnic}", q"{Săliștea de Sus}", q"{Băile Herculane}", q"{Bălcești}"
		, q"{Berbești}", q"{Ghimbav}", q"{Predeal}", q"{Țicleni}", q"{Azuga}", q"{Aninoasa}", q"{Bucecea}"
		, q"{Băile Olănești}", q"{Slănic Moldova}", q"{Miercurea Sibiului}", q"{Sulina}", q"{Baia de Arieș}"
		, q"{Făurei}", q"{Ocna Sibiului}", q"{Bechet}", q"{Căzănești}", q"{Ocnele Mari}", q"{Berești}"
		, q"{Borsec}", q"{Băile Govora}", q"{Vașcău}", q"{Nucet}", q"{Solca}", q"{Băile Tușnad}" ];

		return choice(strs, this.rnd);
	}

	override string locationCityPattern() {
		final switch(uniform(0, 1, this.rnd)) {
			case 0: return locationCityName();
		}
		return "";
	}

	override string locationCounty() {
		const string[] strs =
		[ q"{Alba}", q"{Arad}", q"{Arges}", q"{Bacau}", q"{Bihor}", q"{Bistrita-Nasaud}", q"{Botosani}", q"{Braila}"
		, q"{Brasov}", q"{Bucuresti}", q"{Buzau}", q"{Calarasi}", q"{Caras-Severin}", q"{Cluj}", q"{Constanta}"
		, q"{Covasna}", q"{Dambovita}", q"{Dolj}", q"{Galati}", q"{Giurgiu}", q"{Gorj}", q"{Harghita}"
		, q"{Hunedoara}", q"{Ialomita}", q"{Iasi}", q"{Ilfov}", q"{Maramures}", q"{Mehedinti}", q"{Mures}"
		, q"{Neamt}", q"{Olt}", q"{Prahova}", q"{Salaj}", q"{Satu-Mare}", q"{Sibiu}", q"{Suceava}", q"{Teleorman}"
		, q"{Timis}", q"{Tulcea}", q"{Valcea}", q"{Vaslui}", q"{Vrancea}" ];

		return choice(strs, this.rnd);
	}

	override string locationDefaultCountry() {
		const string[] strs =
		[ q"{România}" ];

		return choice(strs, this.rnd);
	}

	override string locationPostcode() {
		const string[] strs =
		[ q"{######}" ];

		return numberBuild(choice(strs, this.rnd));
	}

	override string locationSecondaryAddress() {
		const string[] strs =
		[ q"{Ap. ##}", q"{Ap. ###}" ];

		return numberBuild(choice(strs, this.rnd));
	}

	override string locationState() {
		const string[] strs =
		[ q"{Alba}", q"{Arad}", q"{Arges}", q"{Bacau}", q"{Bihor}", q"{Bistrita-Nasaud}", q"{Botosani}", q"{Braila}"
		, q"{Brasov}", q"{Bucuresti}", q"{Buzau}", q"{Calarasi}", q"{Caras-Severin}", q"{Cluj}", q"{Constanta}"
		, q"{Covasna}", q"{Dambovita}", q"{Dolj}", q"{Galati}", q"{Giurgiu}", q"{Gorj}", q"{Harghita}"
		, q"{Hunedoara}", q"{Ialomita}", q"{Iasi}", q"{Ilfov}", q"{Maramures}", q"{Mehedinti}", q"{Mures}"
		, q"{Neamt}", q"{Olt}", q"{Prahova}", q"{Salaj}", q"{Satu-Mare}", q"{Sibiu}", q"{Suceava}", q"{Teleorman}"
		, q"{Timis}", q"{Tulcea}", q"{Valcea}", q"{Vaslui}", q"{Vrancea}" ];

		return choice(strs, this.rnd);
	}

	override string locationStateAbbr() {
		const string[] strs =
		[ q"{AB}", q"{AR}", q"{AG}", q"{BC}", q"{BH}", q"{BN}", q"{BT}", q"{BR}", q"{BV}", q"{B}", q"{BZ}", q"{CL}", q"{CS}"
		, q"{CJ}", q"{CT}", q"{CV}", q"{DB}", q"{DJ}", q"{GL}", q"{GR}", q"{GJ}", q"{HR}", q"{HD}", q"{IL}", q"{IS}", q"{IF}"
		, q"{MM}", q"{MH}", q"{MS}", q"{NT}", q"{OT}", q"{PH}", q"{SJ}", q"{SM}", q"{SB}", q"{SV}", q"{TR}", q"{TM}", q"{TL}"
		, q"{VL}", q"{VS}", q"{VN}" ];

		return choice(strs, this.rnd);
	}

	override string locationStreetAddress() {
		const LocationStreetAddressEnum[] enums = [ LocationStreetAddressEnum.normal, LocationStreetAddressEnum.full ];
		return locationStreetAddress(choice(enums, this.rnd));
	}

	override string locationStreetAddress(LocationStreetAddressEnum which) {
		final switch(which) {
			case LocationStreetAddressEnum.normal: return locationStreet() ~ ", " ~ locationBuildingNumber();
			case LocationStreetAddressEnum.full: return locationStreet() ~ ", " ~ locationBuildingNumber() ~ ", " ~ locationSecondaryAddress();
		}
		return "";
	}

	override string locationStreetName() {
		const string[] strs =
		[ q"{Capalna}", q"{Gheorghe Duca}", q"{Acvila}", q"{Lisabona}", q"{Campulung}", q"{Ilie Gurita}"
		, q"{Succesului}", q"{Siret}", q"{Mihai Viteazul}", q"{Complexului}", q"{Chihlimbarului}"
		, q"{Prahova}", q"{George Cosbuc}", q"{Bobalna}", q"{Eroina De La Jiu}", q"{Cucuzel Ion}"
		, q"{Sergent Turturica}", q"{Timisul De Sus}", q"{Tuberozelor}", q"{Rulmentului}", q"{Soldat Polosca Tanase}"
		, q"{Nabucului}", q"{Flautului}", q"{Poiana Codrului}", q"{Daia}", q"{Soldat Dima Dumitru}"
		, q"{Bulandra Tony}", q"{Pastravilor}", q"{Eternitatii}", q"{Tufanilor}", q"{Discului}", q"{Garnitei}"
		, q"{Costaforu}", q"{Aerogarii}", q"{Preluca}", q"{Delureni}", q"{Soldat Velicu Stefan}"
		, q"{Ocalei}", q"{Calboranu George}", q"{Cercelus}", q"{Timocului}", q"{Alexandru Locusteanu}"
		, q"{Pumnul Aron}", q"{Migdalului}", q"{Valului}", q"{Inginer Radu Elie}", q"{Cricovului}"
		, q"{Mavrogheni}", q"{Bauxitei}", q"{Movilitei}", q"{Pictor Hentia Sava}", q"{Abus}", q"{Fieni}"
		, q"{Zambetului}", q"{Izvorul Muresului}", q"{Rolei}", q"{Utiesului}", q"{Gheorghe Popescu}"
		, q"{Radulescu Drumea}", q"{Sacele}", q"{Soimarestilor}", q"{Romeo}", q"{Voicesti}", q"{Carada Eugeniu}"
		, q"{Barometrului}", q"{Tudorache Gheorghe}", q"{Morii}", q"{Jules Michelet}", q"{Nicolae G. Caranfil}"
		, q"{Sergent Anghel Gheorghe}", q"{Reconstructiei}", q"{Vespasian}", q"{Tincani}", q"{Stirbei Voda}"
		, q"{Ariesu Mare}", q"{Penelului}", q"{Piscul Vechi}", q"{Natiunile Unite}", q"{Doctor Tanasescu Ion}"
		, q"{Stefan Greceanu}", q"{Banul Scarlat}", q"{Crinului}", q"{Domnita Florica}", q"{Plutonier Nita Ion}"
		, q"{Soldat Ionita Stere}", q"{Rovine}", q"{Tropicelor}", q"{Matei Millo}", q"{Veronica Micle}"
		, q"{Pictor Iser Iosif}", q"{Mitropolit Nifon}", q"{Locotenent Victor Manu}", q"{Studioului}"
		, q"{Piatra Morii}", q"{Valea Lupului}", q"{Episcop Chesarie}", q"{Sergent Major Drag Marin}"
		, q"{Bega}", q"{Dobrun}", q"{Fulgeresti}" ];

		return choice(strs, this.rnd);
	}

	override string locationStreetPattern() {
		final switch(uniform(0, 1, this.rnd)) {
			case 0: return locationStreetSuffix() ~ " " ~ locationStreetName();
		}
		return "";
	}

	override string locationStreetSuffix() {
		const string[] strs =
		[ q"{Aleea}", q"{Bulevardul}", q"{Intrarea}" ];

		return choice(strs, this.rnd);
	}

	override string personFemaleFirstName() {
		const string[] strs =
		[ q"{Ada}", q"{Adela}", q"{Adelaida}", q"{Adelina}", q"{Adina}", q"{Adriana}", q"{Agata}", q"{Aglaia}"
		, q"{Agripina}", q"{Aida}", q"{Alberta}", q"{Albertina}", q"{Alexandra}", q"{Alexandrina}", q"{Alida}"
		, q"{Alina}", q"{Alice}", q"{Alis}", q"{Alma}", q"{Amalia}", q"{Amelia}", q"{Amanda}", q"{Ana}", q"{Anabela}"
		, q"{Anaida}", q"{Anamaria}", q"{Anastasia}", q"{Anca}", q"{Ancuța}", q"{Anda}", q"{Andra}", q"{Andrada}"
		, q"{Andreea}", q"{Anemona}", q"{Aneta}", q"{Angela}", q"{Anghelina}", q"{Anica}", q"{Anișoara}"
		, q"{Antoaneta}", q"{Antonia}", q"{Antonela}", q"{Anuța}", q"{Ariadna}", q"{Ariana}", q"{Arina}"
		, q"{Aristița}", q"{Artemisa}", q"{Astrid}", q"{Atena}", q"{Augustina}", q"{Aura}", q"{Aurelia}"
		, q"{Aureliana}", q"{Aurica}", q"{Aurora}", q"{Beatrice}", q"{Betina}", q"{Bianca}", q"{Blanduzia}"
		, q"{Bogdana}", q"{Brândușa}", q"{Camelia}", q"{Carina}", q"{Carla}", q"{Carmen}", q"{Carmina}"
		, q"{Carolina}", q"{Casandra}", q"{Casiana}", q"{Caterina}", q"{Catinca}", q"{Catrina}", q"{Catrinel}"
		, q"{Cătălina}", q"{Cecilia}", q"{Celia}", q"{Cerasela}", q"{Cezara}", q"{Cipriana}", q"{Clara}"
		, q"{Clarisa}", q"{Claudia}", q"{Clementina}", q"{Cleopatra}", q"{Codrina}", q"{Codruța}", q"{Constantina}"
		, q"{Constanța}", q"{Consuela}", q"{Coralia}", q"{Corina}", q"{Cornelia}", q"{Cosmina}", q"{Crenguța}"
		, q"{Crina}", q"{Cristina}", q"{Daciana}", q"{Dafina}", q"{Daiana}", q"{Dalia}", q"{Dana}", q"{Daniela}"
		, q"{Daria}", q"{Dariana}", q"{Delia}", q"{Demetra}", q"{Denisa}", q"{Despina}", q"{Diana}", q"{Dida}"
		, q"{Didina}", q"{Dimitrina}", q"{Dina}", q"{Dochia}", q"{Doina}", q"{Domnica}", q"{Dora}", q"{Doriana}"
		, q"{Dorina}", q"{Dorli}", q"{Draga}", q"{Dumitra}", q"{Dumitrana}", q"{Ecaterina}", q"{Eftimia}"
		, q"{Elena}", q"{Eleonora}", q"{Eliana}", q"{Elisabeta}", q"{Elisaveta}", q"{Eliza}", q"{Elodia}"
		, q"{Elvira}", q"{Emilia}", q"{Emanuela}", q"{Erica}", q"{Estera}", q"{Eufrosina}", q"{Eugenia}"
		, q"{Eusebia}", q"{Eva}", q"{Evanghelina}", q"{Evelina}", q"{Fabia}", q"{Fabiana}", q"{Felicia}"
		, q"{Filofteia}", q"{Fiona}", q"{Flavia}", q"{Floare}", q"{Floarea}", q"{Flora}", q"{Floriana}"
		, q"{Florica}", q"{Florina}", q"{Florentina}", q"{Florența}", q"{Francesca}", q"{Frusina}"
		, q"{Gabriela}", q"{Geanina}", q"{Gențiana}", q"{Georgeta}", q"{Georgia}", q"{Georgiana}", q"{Geta}"
		, q"{Gherghina}", q"{Gianina}", q"{Gina}", q"{Giorgiana}", q"{Grațiana}", q"{Grațiela}", q"{Hortensia}"
		, q"{Henrieta}", q"{Heracleea}", q"{Iasmina}", q"{Ica}", q"{Ileana}", q"{Ilinca}", q"{Ilona}", q"{Ina}"
		, q"{Ioana}", q"{Ioanina}", q"{Iolanda}", q"{Ionela}", q"{Ionelia}", q"{Iosefina}", q"{Irina}"
		, q"{Iridenta}", q"{Iris}", q"{Isabela}", q"{Iulia}", q"{Iuliana}", q"{Iustina}", q"{Ivona}", q"{Izabela}"
		, q"{Jana}", q"{Janeta}", q"{Janina}", q"{Jasmina}", q"{Jeana}", q"{Julia}", q"{Julieta}", q"{Larisa}"
		, q"{Laura}", q"{Laurenția}", q"{Lavinia}", q"{Lăcrămioara}", q"{Leana}", q"{Lelia}", q"{Leontina}"
		, q"{Leopoldina}", q"{Letiția}", q"{Lia}", q"{Liana}", q"{Lidia}", q"{Ligia}", q"{Lili}", q"{Liliana}"
		, q"{Lioara}", q"{Livia}", q"{Loredana}", q"{Lorelei}", q"{Lorena}", q"{Luana}", q"{Lucia}", q"{Luciana}"
		, q"{Lucreția}", q"{Ludovica}", q"{Ludmila}", q"{Luiza}", q"{Luminița}", q"{Magdalena}", q"{Maia}"
		, q"{Manuela}", q"{Mara}", q"{Marcela}", q"{Marga}", q"{Margareta}", q"{Marcheta}", q"{Maria}"
		, q"{Mariana}", q"{Maricica}", q"{Marilena}", q"{Marina}", q"{Marinela}", q"{Marioara}", q"{Marta}"
		, q"{Matilda}", q"{Malvina}", q"{Mădălina}", q"{Mălina}", q"{Mărioara}", q"{Măriuca}", q"{Melania}"
		, q"{Melina}", q"{Mihaela}", q"{Milena}", q"{Mina}", q"{Minodora}", q"{Mioara}", q"{Mirabela}"
		, q"{Mirela}", q"{Mirona}", q"{Miruna}", q"{Mona}", q"{Monalisa}", q"{Monica}", q"{Nadia}", q"{Narcisa}"
		, q"{Natalia}", q"{Natașa}", q"{Noemi}", q"{Nicoleta}", q"{Niculina}", q"{Nidia}", q"{Nora}", q"{Norica}"
		, q"{Oana}", q"{Octavia}", q"{Octaviana}", q"{Ofelia}", q"{Olga}", q"{Olimpia}", q"{Olivia}", q"{Ortansa}"
		, q"{Otilia}", q"{Ozana}", q"{Pamela}", q"{Paraschiva}", q"{Paula}", q"{Paulica}", q"{Paulina}"
		, q"{Patricia}", q"{Petronela}", q"{Petruța}", q"{Pompilia}", q"{Profira}", q"{Rada}", q"{Rafila}"
		, q"{Raluca}", q"{Ramona}", q"{Rebeca}", q"{Renata}", q"{Rica}", q"{Roberta}", q"{Robertina}", q"{Rodica}"
		, q"{Romanița}", q"{Romina}", q"{Roza}", q"{Rozalia}", q"{Roxana}", q"{Roxelana}", q"{Ruxanda}"
		, q"{Ruxandra}", q"{Sabina}", q"{Sabrina}", q"{Safta}", q"{Salomea}", q"{Sanda}", q"{Saveta}", q"{Savina}"
		, q"{Sânziana}", q"{Semenica}", q"{Severina}", q"{Sidonia}", q"{Silvia}", q"{Silvana}", q"{Silviana}"
		, q"{Simina}", q"{Simona}", q"{Smaranda}", q"{Sofia}", q"{Sonia}", q"{Sorana}", q"{Sorina}", q"{Speranța}"
		, q"{Stana}", q"{Stanca}", q"{Stela}", q"{Steliana}", q"{Steluța}", q"{Suzana}", q"{Svetlana}"
		, q"{Ștefana}", q"{Ștefania}", q"{Tamara}", q"{Tania}", q"{Tatiana}", q"{Teea}", q"{Teodora}"
		, q"{Teodosia}", q"{Teona}", q"{Tiberia}", q"{Timea}", q"{Tinca}", q"{Tincuța}", q"{Tudora}", q"{Tudorița}"
		, q"{Tudosia}", q"{Valentina}", q"{Valeria}", q"{Vanesa}", q"{Varvara}", q"{Vasilica}", q"{Venera}"
		, q"{Vera}", q"{Veronica}", q"{Veta}", q"{Vicenția}", q"{Victoria}", q"{Violeta}", q"{Viorela}"
		, q"{Viorica}", q"{Virginia}", q"{Viviana}", q"{Voichița}", q"{Xenia}", q"{Zaharia}", q"{Zamfira}"
		, q"{Zaraza}", q"{Zenobia}", q"{Zenovia}", q"{Zina}", q"{Zoe}" ];

		return choice(strs, this.rnd);
	}

	override string personFemalePrefix() {
		const string[] strs =
		[ q"{Dna}", q"{Dra}" ];

		return choice(strs, this.rnd);
	}

	override string personFirstName() {
		const string[] strs =
		[ q"{Achim}", q"{Ada}", q"{Adam}", q"{Adela}", q"{Adelaida}", q"{Adelin}", q"{Adelina}", q"{Adi}", q"{Adina}"
		, q"{Adonis}", q"{Adrian}", q"{Adriana}", q"{Agata}", q"{Aglaia}", q"{Agnos}", q"{Agripina}", q"{Aida}"
		, q"{Albert}", q"{Alberta}", q"{Albertina}", q"{Aleodor}", q"{Alex}", q"{Alexandra}", q"{Alexandrina}"
		, q"{Alexandru}", q"{Alexe}", q"{Alice}", q"{Alida}", q"{Alin}", q"{Alina}", q"{Alis}", q"{Alistar}"
		, q"{Alma}", q"{Amalia}", q"{Amanda}", q"{Amedeu}", q"{Amelia}", q"{Amza}", q"{Ana}", q"{Anabela}"
		, q"{Anaida}", q"{Anamaria}", q"{Anastasia}", q"{Anatolie}", q"{Anca}", q"{Ancuța}", q"{Anda}"
		, q"{Andra}", q"{Andrada}", q"{Andreea}", q"{Andrei}", q"{Anemona}", q"{Aneta}", q"{Angel}", q"{Angela}"
		, q"{Anghel}", q"{Anghelina}", q"{Anica}", q"{Anișoara}", q"{Antim}", q"{Antoaneta}", q"{Anton}"
		, q"{Antonela}", q"{Antonia}", q"{Antonie}", q"{Antoniu}", q"{Anuța}", q"{Ariadna}", q"{Arian}"
		, q"{Ariana}", q"{Arina}", q"{Aristide}", q"{Aristița}", q"{Arsenie}", q"{Artemisa}", q"{Astrid}"
		, q"{Atena}", q"{Augustin}", q"{Augustina}", q"{Aura}", q"{Aurel}", q"{Aurelia}", q"{Aurelian}"
		, q"{Aureliana}", q"{Aurica}", q"{Aurică}", q"{Aurora}", q"{Avram}", q"{Axinte}", q"{Barbu}", q"{Bartolomeu}"
		, q"{Basarab}", q"{Beatrice}", q"{Bebe}", q"{Beniamin}", q"{Benone}", q"{Bernard}", q"{Betina}"
		, q"{Bianca}", q"{Blanduzia}", q"{Bogdan}", q"{Bogdana}", q"{Brândușa}", q"{Brăduț}", q"{Bucur}"
		, q"{Bănel}", q"{Caius}", q"{Camelia}", q"{Camil}", q"{Cantemir}", q"{Carina}", q"{Carla}", q"{Carmen}"
		, q"{Carmina}", q"{Carol}", q"{Carolina}", q"{Casandra}", q"{Casian}", q"{Casiana}", q"{Caterina}"
		, q"{Catinca}", q"{Catrina}", q"{Catrinel}", q"{Cazimir}", q"{Cecilia}", q"{Cedrin}", q"{Celia}"
		, q"{Cerasela}", q"{Cezar}", q"{Cezara}", q"{Ciprian}", q"{Cipriana}", q"{Clara}", q"{Clarisa}"
		, q"{Claudia}", q"{Claudiu}", q"{Clementina}", q"{Cleopatra}", q"{Codin}", q"{Codrin}", q"{Codrina}"
		, q"{Codruț}", q"{Codruța}", q"{Constantin}", q"{Constantina}", q"{Constanța}", q"{Consuela}"
		, q"{Coralia}", q"{Corina}", q"{Cornel}", q"{Cornelia}", q"{Corneliu}", q"{Corvin}", q"{Cosmin}"
		, q"{Cosmina}", q"{Costache}", q"{Costel}", q"{Costin}", q"{Crenguța}", q"{Crin}", q"{Crina}"
		, q"{Cristea}", q"{Cristian}", q"{Cristina}", q"{Cristobal}", q"{Cristofor}", q"{Călin}", q"{Cătălin}"
		, q"{Cătălina}", q"{Dacian}", q"{Daciana}", q"{Dafina}", q"{Daiana}", q"{Dalia}", q"{Damian}"
		, q"{Dan}", q"{Dana}", q"{Daniel}", q"{Daniela}", q"{Daria}", q"{Dariana}", q"{Darius}", q"{David}"
		, q"{Decebal}", q"{Delia}", q"{Demetra}", q"{Denis}", q"{Denisa}", q"{Despina}", q"{Diana}", q"{Dida}"
		, q"{Didina}", q"{Dimitrina}", q"{Dina}", q"{Dinu}", q"{Dochia}", q"{Doina}", q"{Dominic}", q"{Domnica}"
		, q"{Dora}", q"{Dorel}", q"{Dorian}", q"{Doriana}", q"{Dorin}", q"{Dorina}", q"{Dorinel}", q"{Dorli}"
		, q"{Doru}", q"{Draga}", q"{Dragoș}", q"{Ducu}", q"{Dumitra}", q"{Dumitrana}", q"{Dumitru}", q"{Ecaterina}"
		, q"{Edgar}", q"{Edmond}", q"{Eduard}", q"{Eftimia}", q"{Eftimie}", q"{Elena}", q"{Eleonora}", q"{Eliana}"
		, q"{Elisabeta}", q"{Elisaveta}", q"{Eliza}", q"{Elodia}", q"{Elvira}", q"{Emanoil}", q"{Emanuel}"
		, q"{Emanuela}", q"{Emanuil}", q"{Emil}", q"{Emilia}", q"{Emilian}", q"{Eremia}", q"{Eric}", q"{Erica}"
		, q"{Ernest}", q"{Estera}", q"{Eufrosina}", q"{Eugen}", q"{Eugenia}", q"{Eusebia}", q"{Eusebiu}"
		, q"{Eustațiu}", q"{Eva}", q"{Evanghelina}", q"{Evelina}", q"{Fabia}", q"{Fabian}", q"{Fabiana}"
		, q"{Felicia}", q"{Felix}", q"{Filip}", q"{Filofteia}", q"{Fiodor}", q"{Fiona}", q"{Flavia}", q"{Flaviu}"
		, q"{Floare}", q"{Floarea}", q"{Flora}", q"{Florea}", q"{Florentin}", q"{Florentina}", q"{Florența}"
		, q"{Florian}", q"{Floriana}", q"{Florica}", q"{Florin}", q"{Florina}", q"{Francesca}", q"{Francisc}"
		, q"{Frederic}", q"{Frusina}", q"{Gabi}", q"{Gabriel}", q"{Gabriela}", q"{Geanina}", q"{Gelu}"
		, q"{Gențiana}", q"{George}", q"{Georgel}", q"{Georgeta}", q"{Georgia}", q"{Georgian}", q"{Georgiana}"
		, q"{Geta}", q"{Ghenadie}", q"{Gheorghe}", q"{Gheorghiță}", q"{Gherghina}", q"{Ghiță}", q"{Gianina}"
		, q"{Gicu}", q"{Gică}", q"{Gina}", q"{Giorgian}", q"{Giorgiana}", q"{Grațian}", q"{Grațiana}"
		, q"{Grațiela}", q"{Gregorian}", q"{Grigore}", q"{Haralamb}", q"{Haralambie}", q"{Henrieta}"
		, q"{Heracleea}", q"{Horațiu}", q"{Horea}", q"{Horia}", q"{Hortensia}", q"{Iacob}", q"{Iancu}"
		, q"{Ianis}", q"{Iasmina}", q"{Ica}", q"{Ieremia}", q"{Ilarie}", q"{Ilarion}", q"{Ileana}", q"{Ilie}"
		, q"{Ilinca}", q"{Ilona}", q"{Ina}", q"{Inocențiu}", q"{Ioan}", q"{Ioana}", q"{Ioanina}", q"{Iolanda}"
		, q"{Ion}", q"{Ionel}", q"{Ionela}", q"{Ionelia}", q"{Ionică}", q"{Ionuț}", q"{Iosefina}", q"{Iosif}"
		, q"{Iridenta}", q"{Irina}", q"{Irinel}", q"{Iris}", q"{Isabela}", q"{Iulia}", q"{Iulian}", q"{Iuliana}"
		, q"{Iuliu}", q"{Iurie}", q"{Iustin}", q"{Iustina}", q"{Iustinian}", q"{Ivan}", q"{Ivona}", q"{Izabela}"
		, q"{Jan}", q"{Jana}", q"{Janeta}", q"{Janina}", q"{Jasmina}", q"{Jean}", q"{Jeana}", q"{Jenel}", q"{Julia}"
		, q"{Julieta}", q"{Ladislau}", q"{Larisa}", q"{Lascăr}", q"{Laura}", q"{Laurenția}", q"{Laurențiu}"
		, q"{Laurian}", q"{Lavinia}", q"{Lazăr}", q"{Leana}", q"{Lelia}", q"{Leonard}", q"{Leontin}", q"{Leontina}"
		, q"{Leopoldina}", q"{Letiția}", q"{Lia}", q"{Liana}", q"{Lică}", q"{Lidia}", q"{Ligia}", q"{Lili}"
		, q"{Liliana}", q"{Lioara}", q"{Livia}", q"{Liviu}", q"{Loredana}", q"{Lorelei}", q"{Lorena}", q"{Lorin}"
		, q"{Luana}", q"{Luca}", q"{Lucențiu}", q"{Lucia}", q"{Lucian}", q"{Luciana}", q"{Lucreția}"
		, q"{Lucrețiu}", q"{Ludmila}", q"{Ludovic}", q"{Ludovica}", q"{Luiza}", q"{Luminița}", q"{Lăcrămioara}"
		, q"{Magdalena}", q"{Maia}", q"{Malvina}", q"{Manole}", q"{Manuela}", q"{Mara}", q"{Marcel}", q"{Marcela}"
		, q"{Marcheta}", q"{Marcu}", q"{Marga}", q"{Margareta}", q"{Maria}", q"{Marian}", q"{Mariana}"
		, q"{Maricica}", q"{Marilena}", q"{Marin}", q"{Marina}", q"{Marinela}", q"{Marioara}", q"{Marius}"
		, q"{Marta}", q"{Martin}", q"{Matei}", q"{Matilda}", q"{Maxim}", q"{Maximilian}", q"{Melania}"
		, q"{Melina}", q"{Mihaela}", q"{Mihai}", q"{Mihail}", q"{Mihnea}", q"{Milena}", q"{Mina}", q"{Minodora}"
		, q"{Mioara}", q"{Mirabela}", q"{Mircea}", q"{Mirela}", q"{Miron}", q"{Mirona}", q"{Miruna}", q"{Mitică}"
		, q"{Mitruț}", q"{Mona}", q"{Monalisa}", q"{Monica}", q"{Mugur}", q"{Mugurel}", q"{Mădălin}"
		, q"{Mădălina}", q"{Mălina}", q"{Mărioara}", q"{Măriuca}", q"{Nadia}", q"{Nae}", q"{Narcis}"
		, q"{Narcisa}", q"{Natalia}", q"{Natașa}", q"{Nechifor}", q"{Nelu}", q"{Nichifor}", q"{Nicoară}"
		, q"{Nicodim}", q"{Nicolae}", q"{Nicolaie}", q"{Nicoleta}", q"{Nicu}", q"{Niculina}", q"{Niculiță}"
		, q"{Nicușor}", q"{Nicuță}", q"{Nidia}", q"{Noemi}", q"{Nora}", q"{Norbert}", q"{Norica}", q"{Norman}"
		, q"{Oana}", q"{Octav}", q"{Octavia}", q"{Octavian}", q"{Octaviana}", q"{Octaviu}", q"{Ofelia}"
		, q"{Olga}", q"{Olimpia}", q"{Olimpian}", q"{Olimpiu}", q"{Olivia}", q"{Oliviu}", q"{Ortansa}"
		, q"{Otilia}", q"{Ovidiu}", q"{Ozana}", q"{Pamela}", q"{Pamfil}", q"{Panagachie}", q"{Panait}"
		, q"{Paraschiva}", q"{Patricia}", q"{Paul}", q"{Paula}", q"{Paulica}", q"{Paulina}", q"{Pavel}"
		, q"{Petre}", q"{Petrică}", q"{Petrișor}", q"{Petronela}", q"{Petru}", q"{Petruț}", q"{Petruța}"
		, q"{Pompilia}", q"{Pompiliu}", q"{Profira}", q"{Pătru}", q"{Rada}", q"{Radu}", q"{Rafael}", q"{Rafila}"
		, q"{Raluca}", q"{Ramona}", q"{Rareș}", q"{Raul}", q"{Rebeca}", q"{Relu}", q"{Remus}", q"{Renata}"
		, q"{Rica}", q"{Robert}", q"{Roberta}", q"{Robertina}", q"{Rodica}", q"{Romanița}", q"{Romeo}"
		, q"{Romina}", q"{Romulus}", q"{Roxana}", q"{Roxelana}", q"{Roza}", q"{Rozalia}", q"{Ruxanda}"
		, q"{Ruxandra}", q"{Răducu}", q"{Răzvan}", q"{Sabin}", q"{Sabina}", q"{Sabrina}", q"{Safta}"
		, q"{Salomea}", q"{Sanda}", q"{Sandu}", q"{Sava}", q"{Saveta}", q"{Savina}", q"{Sebastian}", q"{Semenica}"
		, q"{Sergiu}", q"{Sever}", q"{Severin}", q"{Severina}", q"{Sidonia}", q"{Silvana}", q"{Silvia}"
		, q"{Silvian}", q"{Silviana}", q"{Silviu}", q"{Simi}", q"{Simina}", q"{Simion}", q"{Simona}", q"{Sinică}"
		, q"{Smaranda}", q"{Sofia}", q"{Sonia}", q"{Sorana}", q"{Sorin}", q"{Sorina}", q"{Speranța}", q"{Stan}"
		, q"{Stana}", q"{Stanca}", q"{Stancu}", q"{Stela}", q"{Stelian}", q"{Steliana}", q"{Steluța}"
		, q"{Suzana}", q"{Svetlana}", q"{Sânziana}", q"{Tamara}", q"{Tania}", q"{Tatiana}", q"{Teea}"
		, q"{Teodor}", q"{Teodora}", q"{Teodosia}", q"{Teofil}", q"{Teohari}", q"{Teona}", q"{Theodor}"
		, q"{Tiberia}", q"{Tiberiu}", q"{Timea}", q"{Timotei}", q"{Tinca}", q"{Tincuța}", q"{Titus}", q"{Todor}"
		, q"{Toma}", q"{Traian}", q"{Tudor}", q"{Tudora}", q"{Tudorița}", q"{Tudosia}", q"{Valentin}"
		, q"{Valentina}", q"{Valeria}", q"{Valeriu}", q"{Valter}", q"{Vanesa}", q"{Varvara}", q"{Vasile}"
		, q"{Vasilica}", q"{Vasilică}", q"{Venera}", q"{Veniamin}", q"{Vera}", q"{Veronica}", q"{Veta}"
		, q"{Vicenția}", q"{Vicențiu}", q"{Victor}", q"{Victoria}", q"{Vincențiu}", q"{Violeta}"
		, q"{Viorel}", q"{Viorela}", q"{Viorica}", q"{Virginia}", q"{Visarion}", q"{Viviana}", q"{Vlad}"
		, q"{Vladimir}", q"{Vlaicu}", q"{Voichița}", q"{Voicu}", q"{Xenia}", q"{Zaharia}", q"{Zamfir}"
		, q"{Zamfira}", q"{Zaraza}", q"{Zeno}", q"{Zenobia}", q"{Zenovia}", q"{Zina}", q"{Zoe}", q"{Șerban}"
		, q"{Ștefan}", q"{Ștefana}", q"{Ștefania}" ];

		return choice(strs, this.rnd);
	}

	override string personLastName() {
		const string[] strs =
		[ q"{Achim}", q"{Adam}", q"{Albu}", q"{Aldea}", q"{Alexa}", q"{Alexandrescu}", q"{Alexandru}", q"{Alexe}"
		, q"{Andrei}", q"{Anghel}", q"{Antal}", q"{Anton}", q"{Apostol}", q"{Ardelean}", q"{Ardeleanu}"
		, q"{Avram}", q"{Baciu}", q"{Badea}", q"{Balan}", q"{Balint}", q"{Banica}", q"{Banu}", q"{Barbu}"
		, q"{Barbulescu}", q"{Bejan}", q"{Biro}", q"{Blaga}", q"{Boboc}", q"{Bodea}", q"{Bogdan}", q"{Bota}"
		, q"{Botezatu}", q"{Bratu}", q"{Bucur}", q"{Buda}", q"{Bunea}", q"{Burlacu}", q"{Calin}", q"{Catana}"
		, q"{Cazacu}", q"{Chiriac}", q"{Chirila}", q"{Chirita}", q"{Chis}", q"{Chivu}", q"{Ciobanu}", q"{Ciocan}"
		, q"{Cojocaru}", q"{Coman}", q"{Constantin}", q"{Constantinescu}", q"{Cornea}", q"{Cosma}", q"{Costache}"
		, q"{Costea}", q"{Costin}", q"{Covaci}", q"{Cozma}", q"{Craciun}", q"{Cretu}", q"{Crisan}", q"{Cristea}"
		, q"{Cristescu}", q"{Croitoru}", q"{Cucu}", q"{Damian}", q"{Dan}", q"{Danciu}", q"{Danila}", q"{Dascalu}"
		, q"{David}", q"{Diaconescu}", q"{Diaconu}", q"{Dima}", q"{Dinca}", q"{Dinu}", q"{Dobre}", q"{Dobrescu}"
		, q"{Dogaru}", q"{Dragan}", q"{Draghici}", q"{Dragoi}", q"{Dragomir}", q"{Dumitrache}", q"{Dumitrascu}"
		, q"{Dumitrescu}", q"{Dumitriu}", q"{Dumitru}", q"{Duta}", q"{Enache}", q"{Ene}", q"{Farcas}", q"{Filimon}"
		, q"{Filip}", q"{Florea}", q"{Florescu}", q"{Fodor}", q"{Fratila}", q"{Gabor}", q"{Gal}", q"{Ganea}"
		, q"{Gavrila}", q"{Georgescu}", q"{Gheorghe}", q"{Gheorghita}", q"{Gheorghiu}", q"{Gherman}"
		, q"{Ghita}", q"{Giurgiu}", q"{Grecu}", q"{Grigoras}", q"{Grigore}", q"{Grigorescu}", q"{Grosu}"
		, q"{Groza}", q"{Horvath}", q"{Iacob}", q"{Iancu}", q"{Ichim}", q"{Ignat}", q"{Ilie}", q"{Iliescu}"
		, q"{Ion}", q"{Ionescu}", q"{Ionita}", q"{Iordache}", q"{Iorga}", q"{Iosif}", q"{Irimia}", q"{Ispas}"
		, q"{Istrate}", q"{Ivan}", q"{Ivascu}", q"{Kiss}", q"{Kovacs}", q"{Lazar}", q"{Luca}", q"{Lungu}"
		, q"{Lupu}", q"{Macovei}", q"{Maftei}", q"{Man}", q"{Manea}", q"{Manolache}", q"{Manole}", q"{Marcu}"
		, q"{Marginean}", q"{Marian}", q"{Marin}", q"{Marinescu}", q"{Martin}", q"{Mateescu}", q"{Matei}"
		, q"{Maxim}", q"{Mazilu}", q"{Micu}", q"{Mihai}", q"{Mihaila}", q"{Mihailescu}", q"{Mihalache}"
		, q"{Mihalcea}", q"{Milea}", q"{Militaru}", q"{Mircea}", q"{Mirea}", q"{Miron}", q"{Miu}", q"{Mocanu}"
		, q"{Moga}", q"{Moise}", q"{Moldovan}", q"{Moldoveanu}", q"{Molnar}", q"{Morar}", q"{Moraru}", q"{Muntean}"
		, q"{Munteanu}", q"{Muresan}", q"{Musat}", q"{Nagy}", q"{Nastase}", q"{Neacsu}", q"{Neagoe}", q"{Neagu}"
		, q"{Neamtu}", q"{Nechita}", q"{Necula}", q"{Nedelcu}", q"{Negoita}", q"{Negrea}", q"{Negru}", q"{Nemes}"
		, q"{Nica}", q"{Nicoara}", q"{Nicolae}", q"{Nicolescu}", q"{Niculae}", q"{Niculescu}", q"{Nistor}"
		, q"{Nita}", q"{Nitu}", q"{Oancea}", q"{Olariu}", q"{Olaru}", q"{Oltean}", q"{Olteanu}", q"{Oprea}"
		, q"{Opris}", q"{Paduraru}", q"{Pana}", q"{Panait}", q"{Paraschiv}", q"{Parvu}", q"{Pasca}", q"{Pascu}"
		, q"{Patrascu}", q"{Paun}", q"{Pavel}", q"{Petcu}", q"{Peter}", q"{Petre}", q"{Petrea}", q"{Petrescu}"
		, q"{Pintea}", q"{Pintilie}", q"{Pirvu}", q"{Pop}", q"{Popa}", q"{Popescu}", q"{Popovici}", q"{Preda}"
		, q"{Prodan}", q"{Puiu}", q"{Radoi}", q"{Radu}", q"{Radulescu}", q"{Roman}", q"{Rosca}", q"{Rosu}"
		, q"{Rotaru}", q"{Rus}", q"{Rusu}", q"{Sabau}", q"{Sandor}", q"{Sandu}", q"{Sarbu}", q"{Sava}", q"{Savu}"
		, q"{Serban}", q"{Sima}", q"{Simion}", q"{Simionescu}", q"{Simon}", q"{Sirbu}", q"{Soare}", q"{Solomon}"
		, q"{Staicu}", q"{Stan}", q"{Stanciu}", q"{Stancu}", q"{Stanescu}", q"{Stefan}", q"{Stefanescu}"
		, q"{Stoian}", q"{Stoica}", q"{Stroe}", q"{Suciu}", q"{Szabo}", q"{Szasz}", q"{Szekely}", q"{Tamas}"
		, q"{Tanase}", q"{Tataru}", q"{Teodorescu}", q"{Toader}", q"{Toma}", q"{Tomescu}", q"{Toth}", q"{Trandafir}"
		, q"{Trif}", q"{Trifan}", q"{Tudor}", q"{Tudorache}", q"{Tudose}", q"{Turcu}", q"{Ungureanu}", q"{Ursu}"
		, q"{Vaduva}", q"{Varga}", q"{Vasile}", q"{Vasilescu}", q"{Vasiliu}", q"{Veres}", q"{Vintila}"
		, q"{Visan}", q"{Vlad}", q"{Voicu}", q"{Voinea}", q"{Zaharia}", q"{Zamfir}" ];

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
		[ q"{Achim}", q"{Adam}", q"{Adelin}", q"{Adonis}", q"{Adrian}", q"{Adi}", q"{Agnos}", q"{Albert}", q"{Alex}"
		, q"{Alexandru}", q"{Alexe}", q"{Aleodor}", q"{Alin}", q"{Alistar}", q"{Amedeu}", q"{Amza}", q"{Anatolie}"
		, q"{Andrei}", q"{Angel}", q"{Anghel}", q"{Antim}", q"{Anton}", q"{Antonie}", q"{Antoniu}", q"{Arian}"
		, q"{Aristide}", q"{Arsenie}", q"{Augustin}", q"{Aurel}", q"{Aurelian}", q"{Aurică}", q"{Avram}"
		, q"{Axinte}", q"{Barbu}", q"{Bartolomeu}", q"{Basarab}", q"{Bănel}", q"{Bebe}", q"{Beniamin}"
		, q"{Benone}", q"{Bernard}", q"{Bogdan}", q"{Brăduț}", q"{Bucur}", q"{Caius}", q"{Camil}", q"{Cantemir}"
		, q"{Carol}", q"{Casian}", q"{Cazimir}", q"{Călin}", q"{Cătălin}", q"{Cedrin}", q"{Cezar}", q"{Ciprian}"
		, q"{Claudiu}", q"{Codin}", q"{Codrin}", q"{Codruț}", q"{Cornel}", q"{Corneliu}", q"{Corvin}"
		, q"{Constantin}", q"{Cosmin}", q"{Costache}", q"{Costel}", q"{Costin}", q"{Crin}", q"{Cristea}"
		, q"{Cristian}", q"{Cristobal}", q"{Cristofor}", q"{Dacian}", q"{Damian}", q"{Dan}", q"{Daniel}"
		, q"{Darius}", q"{David}", q"{Decebal}", q"{Denis}", q"{Dinu}", q"{Dominic}", q"{Dorel}", q"{Dorian}"
		, q"{Dorin}", q"{Dorinel}", q"{Doru}", q"{Dragoș}", q"{Ducu}", q"{Dumitru}", q"{Edgar}", q"{Edmond}"
		, q"{Eduard}", q"{Eftimie}", q"{Emil}", q"{Emilian}", q"{Emanoil}", q"{Emanuel}", q"{Emanuil}"
		, q"{Eremia}", q"{Eric}", q"{Ernest}", q"{Eugen}", q"{Eusebiu}", q"{Eustațiu}", q"{Fabian}", q"{Felix}"
		, q"{Filip}", q"{Fiodor}", q"{Flaviu}", q"{Florea}", q"{Florentin}", q"{Florian}", q"{Florin}"
		, q"{Francisc}", q"{Frederic}", q"{Gabi}", q"{Gabriel}", q"{Gelu}", q"{George}", q"{Georgel}", q"{Georgian}"
		, q"{Ghenadie}", q"{Gheorghe}", q"{Gheorghiță}", q"{Ghiță}", q"{Gică}", q"{Gicu}", q"{Giorgian}"
		, q"{Grațian}", q"{Gregorian}", q"{Grigore}", q"{Haralamb}", q"{Haralambie}", q"{Horațiu}"
		, q"{Horea}", q"{Horia}", q"{Iacob}", q"{Iancu}", q"{Ianis}", q"{Ieremia}", q"{Ilarie}", q"{Ilarion}"
		, q"{Ilie}", q"{Inocențiu}", q"{Ioan}", q"{Ion}", q"{Ionel}", q"{Ionică}", q"{Ionuț}", q"{Iosif}"
		, q"{Irinel}", q"{Iulian}", q"{Iuliu}", q"{Iurie}", q"{Iustin}", q"{Iustinian}", q"{Ivan}", q"{Jan}"
		, q"{Jean}", q"{Jenel}", q"{Ladislau}", q"{Lascăr}", q"{Laurențiu}", q"{Laurian}", q"{Lazăr}"
		, q"{Leonard}", q"{Leontin}", q"{Lică}", q"{Liviu}", q"{Lorin}", q"{Luca}", q"{Lucențiu}", q"{Lucian}"
		, q"{Lucrețiu}", q"{Ludovic}", q"{Manole}", q"{Marcel}", q"{Marcu}", q"{Marian}", q"{Marin}", q"{Marius}"
		, q"{Martin}", q"{Matei}", q"{Maxim}", q"{Maximilian}", q"{Mădălin}", q"{Mihai}", q"{Mihail}"
		, q"{Mihnea}", q"{Mircea}", q"{Miron}", q"{Mitică}", q"{Mitruț}", q"{Mugur}", q"{Mugurel}", q"{Nae}"
		, q"{Narcis}", q"{Nechifor}", q"{Nelu}", q"{Nichifor}", q"{Nicoară}", q"{Nicodim}", q"{Nicolae}"
		, q"{Nicolaie}", q"{Nicu}", q"{Nicuță}", q"{Niculiță}", q"{Nicușor}", q"{Norbert}", q"{Norman}"
		, q"{Octav}", q"{Octavian}", q"{Octaviu}", q"{Olimpian}", q"{Olimpiu}", q"{Oliviu}", q"{Ovidiu}"
		, q"{Pamfil}", q"{Panait}", q"{Panagachie}", q"{Paul}", q"{Pavel}", q"{Pătru}", q"{Petre}", q"{Petrică}"
		, q"{Petrișor}", q"{Petru}", q"{Petruț}", q"{Pompiliu}", q"{Radu}", q"{Rafael}", q"{Rareș}"
		, q"{Raul}", q"{Răducu}", q"{Răzvan}", q"{Relu}", q"{Remus}", q"{Robert}", q"{Romeo}", q"{Romulus}"
		, q"{Sabin}", q"{Sandu}", q"{Sava}", q"{Sebastian}", q"{Sergiu}", q"{Sever}", q"{Severin}", q"{Silvian}"
		, q"{Silviu}", q"{Simi}", q"{Simion}", q"{Sinică}", q"{Sorin}", q"{Stan}", q"{Stancu}", q"{Stelian}"
		, q"{Șerban}", q"{Ștefan}", q"{Teodor}", q"{Teofil}", q"{Teohari}", q"{Theodor}", q"{Tiberiu}"
		, q"{Timotei}", q"{Titus}", q"{Todor}", q"{Toma}", q"{Traian}", q"{Tudor}", q"{Valentin}", q"{Valeriu}"
		, q"{Valter}", q"{Vasile}", q"{Vasilică}", q"{Veniamin}", q"{Vicențiu}", q"{Victor}", q"{Vincențiu}"
		, q"{Viorel}", q"{Visarion}", q"{Vlad}", q"{Vladimir}", q"{Vlaicu}", q"{Voicu}", q"{Zamfir}", q"{Zeno}" ];

		return choice(strs, this.rnd);
	}

	override string personMalePrefix() {
		const string[] strs =
		[ q"{Dl}", q"{Dra}" ];

		return choice(strs, this.rnd);
	}

	override string personName() {
		const int rndInt = uniform(0, 10, this.rnd);

		if(rndInt >= 0 && rndInt < 8) {
			return personFirstName() ~ " " ~ personLastName();
		}
		if(rndInt >= 8 && rndInt < 9) {
			return personLastName() ~ " " ~ personFirstName();
		}
		if(rndInt >= 9 && rndInt < 10) {
			return personPrefix() ~ " " ~ personFirstName() ~ " " ~ personLastName();
		}

		return "";
	}

	override string personPrefix() {
		const string[] strs =
		[ q"{Dl}", q"{Dna}", q"{Dra}" ];

		return choice(strs, this.rnd);
	}

	override string personSuffix() {
		const string[] strs =
		[ q"{Jr.}", q"{Sr.}" ];

		return choice(strs, this.rnd);
	}

	override string phoneNumberFormats() {
		const string[] strs =
		[ q"{021######}", q"{031######}", q"{0258######}", q"{0358######}", q"{0257######}", q"{0357######}"
		, q"{0248######}", q"{0348######}", q"{0234######}", q"{0334######}", q"{0259######}", q"{0359######}"
		, q"{0263######}", q"{0363######}", q"{0231######}", q"{0331######}", q"{0239######}", q"{0339######}"
		, q"{0268######}", q"{0368######}", q"{0238######}", q"{0338######}", q"{0242######}", q"{0342######}"
		, q"{0255######}", q"{0355######}", q"{0264######}", q"{0364######}", q"{0241######}", q"{0341######}"
		, q"{0267######}", q"{0367######}", q"{0245######}", q"{0345######}", q"{0251######}", q"{0351######}"
		, q"{0236######}", q"{0336######}", q"{0246######}", q"{0346######}", q"{0253######}", q"{0353######}"
		, q"{0266######}", q"{0366######}", q"{0254######}", q"{0354######}", q"{0243######}", q"{0343######}"
		, q"{0232######}", q"{0332######}", q"{0262######}", q"{0362######}", q"{0252######}", q"{0352######}"
		, q"{0265######}", q"{0365######}", q"{0233######}", q"{0333######}", q"{0249######}", q"{0349######}"
		, q"{0244######}", q"{0344######}", q"{0260######}", q"{0360######}", q"{0261######}", q"{0361######}"
		, q"{0269######}", q"{0369######}", q"{0230######}", q"{0330######}", q"{0247######}", q"{0347######}"
		, q"{0256######}", q"{0356######}", q"{0240######}", q"{0340######}", q"{0250######}", q"{0350######}"
		, q"{0235######}", q"{0335######}", q"{0237######}", q"{0337######}" ];

		return numberBuild(choice(strs, this.rnd));
	}

}

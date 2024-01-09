module faked.faker_ro_md;

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

import faked.faker_ro;

class Faker_ro_md : Faker_ro {
@safe:
	this(int seed) {
		super(seed);
	}

	override string cellPhoneFormats() {
		const string[] strs =
		[ q"{0600#####}", q"{0601#####}", q"{0602#####}", q"{0603#####}", q"{0604#####}", q"{0605#####}"
		, q"{0606#####}", q"{0607#####}", q"{0608#####}", q"{0609#####}", q"{0610#####}", q"{0611#####}"
		, q"{0612#####}", q"{0613#####}", q"{0614#####}", q"{0615#####}", q"{0616#####}", q"{0617#####}"
		, q"{0618#####}", q"{0619#####}", q"{0620#####}", q"{0621#####}", q"{0622#####}", q"{0623#####}"
		, q"{0624#####}", q"{0625#####}", q"{0626#####}", q"{0627#####}", q"{0628#####}", q"{0629#####}"
		, q"{0660#####}", q"{0661#####}", q"{0662#####}", q"{0663#####}", q"{0664#####}", q"{0665#####}"
		, q"{0666#####}", q"{0667#####}", q"{0668#####}", q"{0669#####}", q"{0670#####}", q"{0671#####}"
		, q"{0672#####}", q"{0673#####}", q"{0674#####}", q"{0675#####}", q"{0676#####}", q"{0677#####}"
		, q"{0678#####}", q"{0679#####}", q"{0680#####}", q"{0681#####}", q"{0682#####}", q"{0683#####}"
		, q"{0684#####}", q"{0685#####}", q"{0686#####}", q"{0687#####}", q"{0688#####}", q"{0689#####}"
		, q"{0690#####}", q"{0691#####}", q"{0692#####}", q"{0693#####}", q"{0694#####}", q"{0695#####}"
		, q"{0696#####}", q"{0697#####}", q"{0698#####}", q"{0699#####}", q"{0790#####}", q"{0791#####}"
		, q"{0792#####}", q"{0793#####}", q"{0794#####}", q"{0795#####}", q"{0796#####}", q"{0797#####}"
		, q"{0798#####}", q"{0799#####}", q"{0780#####}", q"{0781#####}", q"{0782#####}", q"{0783#####}"
		, q"{0784#####}", q"{0785#####}", q"{0786#####}", q"{0787#####}", q"{0788#####}", q"{0789#####}" ];

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
		[ q"{Lu}", q"{Ma}", q"{Mi}", q"{Jo}", q"{Vi}", q"{Sâ}", q"{Du}" ];

		return choice(strs, this.rnd);
	}

	override string internetDomainSuffix() {
		const string[] strs =
		[ q"{com}", q"{ru}", q"{net}", q"{org}", q"{md}" ];

		return choice(strs, this.rnd);
	}

	override string internetFreeEmail() {
		const string[] strs =
		[ q"{mail.ru}", q"{rambler.ru}", q"{yandex.ru}", q"{gmail.com}", q"{gmail.ru}", q"{yahoo.com}"
		, q"{hotmail.com}" ];

		return choice(strs, this.rnd);
	}

	override string locationBuildingNumber() {
		const string[] strs =
		[ q"{Bloc ##}", q"{Bloc ##/##}" ];

		return numberBuild(choice(strs, this.rnd));
	}

	override string locationCityName() {
		const string[] strs =
		[ q"{Anenii Noi}", q"{Basarabeasca}", q"{Bender}", q"{Briceni}", q"{Bălți}", q"{Cahul}", q"{Ceadîr-Lunga}"
		, q"{Chișinău}", q"{Cimișlia}", q"{Cocieri}", q"{Codru}", q"{Comrat}", q"{Criuleni}", q"{Călărași}"
		, q"{Căușeni}", q"{Dnestrovsc}", q"{Dondușeni}", q"{Drochia}", q"{Dubăsari}", q"{Dumbrava}"
		, q"{Edineț}", q"{Florești}", q"{Fălești}", q"{Glodeni}", q"{Grigoriopol}", q"{Hîncești}"
		, q"{Ialoveni}", q"{Iargara}", q"{Leova}", q"{Nisporeni}", q"{Ocnița}", q"{Orhei}", q"{Otaci}"
		, q"{Rezina}", q"{Rîbnița}", q"{Sadaclia}", q"{Sadaclia Mică}", q"{Sadaclia Nouă}", q"{Saharna}"
		, q"{Saharna Nouă}", q"{Saharna Veche}", q"{Salcia}", q"{Seliște}", q"{Sipoteni}", q"{Sipoteni Noui}"
		, q"{Slobozia Mare}", q"{Soroca}", q"{Strășeni}", q"{Stăuceni}", q"{Susleni}", q"{Suvorovca}"
		, q"{Sîngerei}", q"{Talmaza}", q"{Taraclia}", q"{Taraclia de Salcie}", q"{Telenesti}", q"{Tigheci}"
		, q"{Tiraspol}", q"{Tocuz}", q"{Tocuzeni}", q"{Tomai}", q"{Trebisăuți}", q"{Tvardița}", q"{Tătărășeni}"
		, q"{Ungheni}", q"{Vadul lui Isac}", q"{Vadul lui Voda}", q"{Vaduleni}", q"{Valea Coloniței}"
		, q"{Valea Perjei}", q"{Varnița}", q"{Varvareuca}", q"{Vatra}", q"{Verdești}", q"{Veverița}"
		, q"{Volintiri}", q"{Vulcănești}", q"{Zagarancea}", q"{Zaicana}", q"{Zaim}", q"{Zamciogi}"
		, q"{Zgurița}", q"{Zgărdești}", q"{Zirnesti}", q"{Zolonceni}", q"{Zârnești}", q"{Zîrnești}"
		, q"{Zăbriceni}", q"{Zăicani}", q"{Zăluceni}", q"{Zăticeni}", q"{Șofrîncani}", q"{Ștefan Vodă}" ];

		return choice(strs, this.rnd);
	}

	override string locationCityPattern() {
		switch(uniform(0, 2, this.rnd)) {
			case 0: return locationCityPrefix() ~ " " ~ personFirstName();
			case 1: return locationCityName();
		}
		return "";
	}

	override string locationCityPrefix() {
		const string[] strs =
		[ q"{Raionul}", q"{Municipiu}" ];

		return choice(strs, this.rnd);
	}

	override string locationCounty() {
		const string[] strs =
		[ q"{Anenii Noi}", q"{Basarabeasca}", q"{Bender}", q"{Briceni}", q"{Cahul}", q"{Calarasi}", q"{Cantemir}"
		, q"{Causeni}", q"{Chisinau}", q"{Cimislia}", q"{Criuleni}", q"{Donduseni}", q"{Drochia}", q"{Dubasari}"
		, q"{Edinet}", q"{Falesti}", q"{Floresti}", q"{Glodeni}", q"{Hincesti}", q"{Ialoveni}", q"{Leova}"
		, q"{Nisporeni}", q"{Ocnita}", q"{Orhei}", q"{Rezina}", q"{Riscani}", q"{Singerei}", q"{Soldanesti}"
		, q"{Soroca}", q"{Stefan-Voda}", q"{Straseni}", q"{Taraclia}", q"{Telenesti}", q"{Ungheni}" ];

		return choice(strs, this.rnd);
	}

	override string locationDefaultCountry() {
		const string[] strs =
		[ q"{Republica Moldova}" ];

		return choice(strs, this.rnd);
	}

	override string locationPostcode() {
		const string[] strs =
		[ q"{MD-####}" ];

		return numberBuild(choice(strs, this.rnd));
	}

	override string locationSecondaryAddress() {
		const string[] strs =
		[ q"{Ap. ##}", q"{Ap. ###}" ];

		return numberBuild(choice(strs, this.rnd));
	}

	override string locationStreetAddress() {
		const LocationStreetAddressEnum[] enums = [ LocationStreetAddressEnum.normal, LocationStreetAddressEnum.full ];
		return locationStreetAddress(choice(enums, this.rnd));
	}

	override string locationStreetAddress(LocationStreetAddressEnum which) {
		switch(which) {
			case LocationStreetAddressEnum.normal: return locationStreet() ~ ", " ~ locationBuildingNumber();
			case LocationStreetAddressEnum.full: return locationStreet() ~ ", " ~ locationBuildingNumber() ~ ", " ~ locationSecondaryAddress();
		}
		return "";
	}

	override string locationStreetPattern() {
		switch(uniform(0, 1, this.rnd)) {
			case 0: return locationStreetPrefix() ~ " " ~ locationStreetNamePart();
		}
		return "";
	}

	string locationStreetPrefix() {
		const string[] strs =
		[ q"{Aleea}", q"{Bulevardul}", q"{Str-la}", q"{Str}" ];

		return choice(strs, this.rnd);
	}

	string locationStreetNamePart() {
		const string[] strs =
		[ q"{1 Mai}", q"{27 August}", q"{28 Iunie}", q"{31 August}", q"{8 Martie}", q"{9 Mai}", q"{Adam}"
		, q"{Alba Iulia}", q"{Aldea-Teodorovici Doina Si Ion}", q"{Alecsandri}", q"{Alecu Russo}"
		, q"{Alexandru Cel Bun}", q"{Alexandru Donici}", q"{Alexandru Lapusneanu}", q"{Alexandru Plamadeala}"
		, q"{Alexei Mateevici}", q"{Arborilor}", q"{Arghezi}", q"{Aron Pumnul}", q"{Asachi}", q"{Aurel David}"
		, q"{Balcescu}", q"{Banulescu-Bodoni}", q"{Barbu Lautaru}", q"{Basarabia}", q"{Basarabiei}"
		, q"{Bernardazzi}", q"{Bisericii}", q"{Bogdan Voda}", q"{Boris Glavan}", q"{Brincus}", q"{Bucovinei}"
		, q"{Bucuriei}", q"{Bulgara}", q"{Burebista}", q"{Cahul}", q"{Cantemir}", q"{Cantemir Dimitrie}"
		, q"{Capriana}", q"{Caraciobanu}", q"{Caragiale}", q"{Ceaikovski Piotr}", q"{Ceapaev}", q"{Cehov}"
		, q"{Cetatea Alba}", q"{Chirov}", q"{Chisinau}", q"{Chisinaului}", q"{Cibotari Maria}", q"{Cimpului}"
		, q"{Ciobanu}", q"{Ciocirlia}", q"{Ciorba}", q"{Ciprian Porumbescu}", q"{Ciresilor}", q"{Cismelelor}"
		, q"{Codrilor}", q"{Colinei}", q"{Columna}", q"{Comarov}", q"{Comarova}", q"{Constantin Negruzzi}"
		, q"{Constantin Stamati}", q"{Constantin Stere}", q"{Constructorilor}", q"{Corlatenilor}"
		, q"{Cosbuc}", q"{Cosbuc George}", q"{Cosmescu}", q"{Cosmonautilor}", q"{Costin}", q"{Crasescu}"
		, q"{Creanga}", q"{Crihan}", q"{Crizantemelor}", q"{Cupcea}", q"{Cutuzov}", q"{Cuza Voda}", q"{Dacia}"
		, q"{Dacilor}", q"{Damian}", q"{Decebal}", q"{Delete}", q"{Dimo}", q"{Doga}", q"{Doina}", q"{Donici}"
		, q"{Dosoftei}", q"{Dragan}", q"{Dragomirna}", q"{Dragos Voda}", q"{Dumbrava}", q"{Eminescu}"
		, q"{Feroviarilor}", q"{Fintinilor}", q"{Floreni}", q"{Florilor}", q"{Franco}", q"{Frunze}"
		, q"{Gagarin}", q"{Garii}", q"{Gheorghe Asachi}", q"{Ghica-Voda}", q"{Ghioceilor}", q"{Glavan}"
		, q"{Gogol}", q"{Gradinarilor}", q"{Gradinilor}", q"{Gratiesti}", q"{Gribov}", q"{Grigore Ureche}"
		, q"{Haiducilor}", q"{Halippa}", q"{Halippa Pantelimon}", q"{Hasdeu}", q"{Hasdeu Bogdan Petriceicu}"
		, q"{Hijdeu}", q"{Hincesti}", q"{Horelor}", q"{Hotin}", q"{Hotinului}", q"{Iachir}", q"{Ialoveni}"
		, q"{Iasului}", q"{Iazului}", q"{Igor Vieru}", q"{Independentei}", q"{Industriala}", q"{Ioan Voda}"
		, q"{Ion Creanga}", q"{Ion Neculce}", q"{Ion Soltis}", q"{Iorga}", q"{Ismail}", q"{Isnovat}"
		, q"{Izvoarelor}", q"{Kiev}", q"{Kogalniceanu}", q"{Lacului}", q"{Lapusneanu}", q"{Lautarilor}"
		, q"{Lazo}", q"{Lenin}", q"{Lermontov}", q"{Libertatii}", q"{Livezilor}", q"{Liviu Deleanu}"
		, q"{Lomonosov}", q"{Luceafarul}", q"{Luceafarului}", q"{Lupu}", q"{Macarenco}", q"{Maiacovschi Vladimir}"
		, q"{Maria Cibotaru}", q"{Maria Dragan}", q"{Marinescu}", q"{Martisor}", q"{Mateevici}", q"{Matei Basarab}"
		, q"{Matrosov}", q"{Mendeleev}", q"{Meniuc}", q"{Mesterul Manole}", q"{Miciurin}", q"{Micle}"
		, q"{Mihai Eminescu}", q"{Mihai Sadoveanu}", q"{Mihail Kogalniceanu}", q"{Mihail Sadoveanu}"
		, q"{Milescu Spataru Nicolae}", q"{Miorita}", q"{Mioritei}", q"{Mira}", q"{Mircea Cel Batrin}"
		, q"{Miron Costin}", q"{Mitropolit Petru Movila}", q"{Mitropolitul Varlaam}", q"{Moldova}"
		, q"{Moldovita}", q"{Molodiojnaia}", q"{Moruzi}", q"{Movila}", q"{Muncii}", q"{Muresanu}", q"{Musicescu Gavriil}"
		, q"{Neaga}", q"{Necrasov}", q"{Neculce}", q"{Negruzzi}", q"{Nicolae Iorga}", q"{Novaia}", q"{Nucarilor}"
		, q"{Nuferilor}", q"{Orhei}", q"{Ostrovschi}", q"{Ovidiu}", q"{Pacii}", q"{Padurilor}", q"{Parcului}"
		, q"{Pavlov}", q"{Pescarilor}", q"{Petru Movila}", q"{Petru Rares}", q"{Petru Zadnipru}"
		, q"{Pirogov}", q"{Plaiului}", q"{Plamadeala}", q"{Plopilor}", q"{Plugarilor}", q"{Pobedi}"
		, q"{Podgorenilor}", q"{Polevaia}", q"{Popov}", q"{Porumbescu}", q"{Prieteniei}", q"{Primaverii}"
		, q"{Pruncul}", q"{Puskin}", q"{Rares}", q"{Razesilor}", q"{Rediu Mare}", q"{Renasterii}", q"{Romana}"
		, q"{Russo}", q"{Russo Alecu}", q"{Sadovaia}", q"{Sadoveanu}", q"{Saharov}", q"{Salcimilor}"
		, q"{Satul}", q"{Sciusev}", q"{Scolii}", q"{Serghei Lazo}", q"{Sevcenco}", q"{Sfatul Tarii}"
		, q"{Sfinta Maria}", q"{Sfinta Treime}", q"{Sfintul Andrei}", q"{Sfintul Gheorghe}", q"{Sirbu}"
		, q"{Smochina}", q"{Solidaritatii}", q"{Solnecinaia}", q"{Solohov}", q"{Soltis}", q"{Soltis Ion}"
		, q"{Sperantei}", q"{Sportiva}", q"{Stamati}", q"{Stefan Cel Mare}", q"{Stefan Neaga}", q"{Stefan Voda}"
		, q"{Stejarilor}", q"{Stere}", q"{Studentilor}", q"{Suceava}", q"{Suveranitatii}", q"{Suvorov}"
		, q"{Tamara Ciobanu}", q"{Tatarbunar}", q"{Tcacenco}", q"{Teilor}", q"{Teodorovici}", q"{Testemiteanu}"
		, q"{Tighina}", q"{Tighinei}", q"{Timisoara}", q"{Tineretului}", q"{Tolstoi}", q"{Toma Ciorba}"
		, q"{Traian}", q"{Trandafirilor}", q"{Tricolorului}", q"{Tudor Vladimirescu}", q"{Turghenev}"
		, q"{Ungureanu}", q"{Unirii}", q"{Ureche}", q"{Uzinelor}", q"{Valeriu Cupcea}", q"{Varlaam}"
		, q"{Vasile Alecsandri}", q"{Vasile Lupu}", q"{Veronica Micle}", q"{Victoriei}", q"{Vieru}"
		, q"{Viilor}", q"{Visinilor}", q"{Viteazul Mihai}", q"{Vlad Tepes}", q"{Vladimirescu}", q"{Voda}"
		, q"{Voluntarilor}", q"{Vorosilov}", q"{Zadnipru}", q"{Zamfir Arbore}", q"{Zmeurei}", q"{Zorilor}" ];

		return choice(strs, this.rnd);
	}

	override string personFemaleFirstName() {
		const string[] strs =
		[ q"{Aculina}", q"{Ada}", q"{Adela}", q"{Adelaida}", q"{Adelina}", q"{Adriana}", q"{Afanasi}", q"{Agafia}"
		, q"{Agnesa}", q"{Ala}", q"{Albina}", q"{Alea}", q"{Alena}", q"{Alesea}", q"{Alevtina}", q"{Alexandra}"
		, q"{Alexandrina}", q"{Alina}", q"{Aliona}", q"{Alisa}", q"{Alla}", q"{Ana}", q"{Ana-Maria}", q"{Anastasia}"
		, q"{Andriana}", q"{Angela}", q"{Angelica}", q"{Anghelina}", q"{Anjela}", q"{Anjelica}", q"{Anna}"
		, q"{Antonina}", q"{Argentina}", q"{Ariadna}", q"{Arina}", q"{Aurelia}", q"{Aurica}", q"{Axenia}"
		, q"{Calina}", q"{Carina}", q"{Carolina}", q"{Catalina}", q"{Cezara}", q"{Chira}", q"{Claudia}"
		, q"{Clavdia}", q"{Constanta}", q"{Constantia}", q"{Corina}", q"{Cornelia}", q"{Crina}", q"{Cristiana}"
		, q"{Cristina}", q"{Dana}", q"{Daniela}", q"{Daria}", q"{Diana}", q"{Didina}", q"{Dina}", q"{Doina}"
		, q"{Doinita}", q"{Domnica}", q"{Dora}", q"{Doriana}", q"{Dorina}", q"{Dumitrita}", q"{Ecaterina}"
		, q"{Efimia}", q"{Efrosinia}", q"{Elena}", q"{Eleonora}", q"{Elina}", q"{Elisaveta}", q"{Elizaveta}"
		, q"{Ella}", q"{Elmira}", q"{Elvira}", q"{Ema}", q"{Emilia}", q"{Erica}", q"{Eudochia}", q"{Eugenia}"
		, q"{Eva}", q"{Evdochia}", q"{Evelina}", q"{Evghenia}", q"{Fedora}", q"{Felicia}", q"{Feodora}"
		, q"{Feodosia}", q"{Fevronia}", q"{Gabriela}", q"{Galina}", q"{Georgeta}", q"{Gheorghina}", q"{Greta}"
		, q"{Iana}", q"{Ianina}", q"{Ianna}", q"{Iaroslava}", q"{Ileana}", q"{Ilia}", q"{Ilinca}", q"{Ilona}"
		, q"{Ina}", q"{Inesa}", q"{Inessa}", q"{Inga}", q"{Inna}", q"{Ioana}", q"{Ionela}", q"{Ira}", q"{Iraida}"
		, q"{Irena}", q"{Irina}", q"{Iryna}", q"{Iulia}", q"{Iuliana}", q"{Ivana}", q"{Ivanna}", q"{Jana}"
		, q"{Janeta}", q"{Janna}", q"{Lada}", q"{Larisa}", q"{Laura}", q"{Laurentia}", q"{Leonora}", q"{Lia}"
		, q"{Lidia}", q"{Lilia}", q"{Liliana}", q"{Lina}", q"{Liuba}", q"{Liubov}", q"{Liubovi}", q"{Liudmila}"
		, q"{Liusea}", q"{Livia}", q"{Lora}", q"{Lucia}", q"{Lucica}", q"{Lucretia}", q"{Ludmila}", q"{Luiza}"
		, q"{Luminita}", q"{Magdalena}", q"{Maia}", q"{Malvina}", q"{Marcela}", q"{Margareta}", q"{Margarita}"
		, q"{Maria}", q"{Mariana}", q"{Marianna}", q"{Maricica}", q"{Marina}", q"{Marta}", q"{Melania}"
		, q"{Melnic}", q"{Mihaela}", q"{Minodora}", q"{Mirela}", q"{Miroslava}", q"{Nadejda}", q"{Natalia}"
		, q"{Natasa}", q"{Nelea}", q"{Neli}", q"{Nellea}", q"{Nelli}", q"{Neonila}", q"{Nicolai}", q"{Nicoleta}"
		, q"{Niculina}", q"{Nina}", q"{Nineli}", q"{Nona}", q"{Nonna}", q"{Olena}", q"{Olesea}", q"{Olga}"
		, q"{Oliga}", q"{Olimpiada}", q"{Otilia}", q"{Oxana}", q"{Pantelei}", q"{Parascovia}", q"{Paulina}"
		, q"{Pavlina}", q"{Pelaghia}", q"{Polina}", q"{Prascovia}", q"{Rada}", q"{Raisa}", q"{Reghina}"
		, q"{Renata}", q"{Rima}", q"{Rimma}", q"{Rita}", q"{Rodica}", q"{Romina}", q"{Rosina}", q"{Rotaru}"
		, q"{Ruslana}", q"{Ruxanda}", q"{Sabina}", q"{Sanda}", q"{Serafima}", q"{Silvia}", q"{Snejana}"
		, q"{Sofia}", q"{Sorina}", q"{Stela}", q"{Steliana}", q"{Stella}", q"{Steluta}", q"{Stepanida}"
		, q"{Svetlana}", q"{Svitlana}", q"{Taisia}", q"{Tamara}", q"{Tatiana}", q"{Teodora}", q"{Tetiana}"
		, q"{Uliana}", q"{Valentina}", q"{Valeria}", q"{Valeriu}", q"{Varvara}", q"{Vasilina}", q"{Vasilisa}"
		, q"{Veaceslav}", q"{Vera}", q"{Verginia}", q"{Veronica}", q"{Vica}", q"{Victoria}", q"{Violeta}"
		, q"{Violetta}", q"{Violina}", q"{Viorelia}", q"{Viorica}", q"{Virginia}", q"{Vitalia}", q"{Vitalina}"
		, q"{Vlada}", q"{Vladilena}", q"{Vladislava}", q"{Vladlena}", q"{Xenia}", q"{Zina}", q"{Zinaida}"
		, q"{Zinovia}", q"{Zoia}", q"{Zorina}" ];

		return choice(strs, this.rnd);
	}

	override string personFemalePrefix() {
		const string[] strs =
		[ q"{Dna}", q"{Dra}" ];

		return choice(strs, this.rnd);
	}

	override string personFirstName() {
		const string[] strs =
		[ q"{Aculina}", q"{Ada}", q"{Adela}", q"{Adelaida}", q"{Adelina}", q"{Adrian}", q"{Adriana}", q"{Afanasi}"
		, q"{Afanasie}", q"{Agafia}", q"{Agnesa}", q"{Ahmad}", q"{Ala}", q"{Albert}", q"{Albina}", q"{Alea}"
		, q"{Alena}", q"{Alesea}", q"{Alevtina}", q"{Alexander}", q"{Alexandr}", q"{Alexandra}", q"{Alexandrina}"
		, q"{Alexandru}", q"{Alexei}", q"{Ali}", q"{Alic}", q"{Alina}", q"{Aliona}", q"{Alisa}", q"{Alla}"
		, q"{Amir}", q"{Ana}", q"{Ana-Maria}", q"{Anastasia}", q"{Anatol}", q"{Anatoli}", q"{Anatolie}"
		, q"{Anatolii}", q"{Andrei}", q"{Andrian}", q"{Andriana}", q"{Angela}", q"{Angelica}", q"{Anghelina}"
		, q"{Anjela}", q"{Anjelica}", q"{Anna}", q"{Anton}", q"{Antonina}", q"{Arcadi}", q"{Arcadie}", q"{Arcadii}"
		, q"{Argentina}", q"{Ariadna}", q"{Arina}", q"{Artiom}", q"{Artur}", q"{Augustin}", q"{Aurel}"
		, q"{Aurelia}", q"{Aurelian}", q"{Aureliu}", q"{Aurica}", q"{Axenia}", q"{Boris}", q"{Calin}", q"{Calina}"
		, q"{Carina}", q"{Carolina}", q"{Catalin}", q"{Catalina}", q"{Cezar}", q"{Cezara}", q"{Chira}"
		, q"{Chiril}", q"{Chirill}", q"{Ciprian}", q"{Claudia}", q"{Clavdia}", q"{Constanta}", q"{Constantia}"
		, q"{Constantin}", q"{Constatin}", q"{Corina}", q"{Cornel}", q"{Cornelia}", q"{Corneliu}", q"{Crina}"
		, q"{Cristian}", q"{Cristiana}", q"{Cristin}", q"{Cristina}", q"{Cristofor}", q"{Dana}", q"{Daniel}"
		, q"{Daniela}", q"{Daniil}", q"{Danil}", q"{Danu}", q"{Daria}", q"{David}", q"{Denis}", q"{Diana}"
		, q"{Didina}", q"{Dimitri}", q"{Dimitrii}", q"{Dina}", q"{Dinu}", q"{Dmitri}", q"{Dmitrii}", q"{Doina}"
		, q"{Doinita}", q"{Domnica}", q"{Dora}", q"{Dorel}", q"{Dorian}", q"{Doriana}", q"{Dorin}", q"{Dorina}"
		, q"{Dragomir}", q"{Dragos}", q"{Dumitrita}", q"{Dumitru}", q"{Ecaterina}", q"{Edgar}", q"{Eduard}"
		, q"{Efim}", q"{Efimia}", q"{Efrosinia}", q"{Egor}", q"{Elena}", q"{Eleonora}", q"{Elina}", q"{Elisaveta}"
		, q"{Elizaveta}", q"{Ella}", q"{Elmira}", q"{Elvira}", q"{Ema}", q"{Emil}", q"{Emilia}", q"{Emilian}"
		, q"{Eric}", q"{Erica}", q"{Eudochia}", q"{Eugen}", q"{Eugenia}", q"{Eugeniu}", q"{Eva}", q"{Evdochia}"
		, q"{Evelina}", q"{Evgheni}", q"{Evghenia}", q"{Evghenii}", q"{Fedora}", q"{Felicia}", q"{Feodor}"
		, q"{Feodora}", q"{Feodosia}", q"{Fevronia}", q"{Filip}", q"{Filipp}", q"{Fiodor}", q"{Florin}"
		, q"{Gabriel}", q"{Gabriela}", q"{Galina}", q"{Gavril}", q"{George}", q"{Georgeta}", q"{Ghenadi}"
		, q"{Ghenadie}", q"{Ghennadi}", q"{Gheorghe}", q"{Gheorghi}", q"{Gheorghii}", q"{Gheorghina}"
		, q"{Gherman}", q"{Gleb}", q"{Greta}", q"{Grigore}", q"{Grigori}", q"{Husein}", q"{Iacob}", q"{Iacov}"
		, q"{Iana}", q"{Ianina}", q"{Ianna}", q"{Ianos}", q"{Iaroslav}", q"{Iaroslava}", q"{Ibrahim}", q"{Igor}"
		, q"{Igori}", q"{Ileana}", q"{Ilia}", q"{Ilie}", q"{Ilinca}", q"{Ilona}", q"{Ina}", q"{Inesa}", q"{Inessa}"
		, q"{Inga}", q"{Inna}", q"{Ioan}", q"{Ioana}", q"{Ion}", q"{Ionel}", q"{Ionela}", q"{Iosif}", q"{Ira}"
		, q"{Iraida}", q"{Irena}", q"{Irina}", q"{Iryna}", q"{Iulia}", q"{Iulian}", q"{Iuliana}", q"{Iuri}"
		, q"{Iurie}", q"{Iurii}", q"{Ivan}", q"{Ivana}", q"{Ivanna}", q"{Jan}", q"{Jana}", q"{Janeta}", q"{Janna}"
		, q"{Lada}", q"{Larisa}", q"{Laura}", q"{Laurentia}", q"{Laurentiu}", q"{Leon}", q"{Leonid}", q"{Leonora}"
		, q"{Lev}", q"{Lia}", q"{Lidia}", q"{Lilia}", q"{Liliana}", q"{Lina}", q"{Liuba}", q"{Liubov}", q"{Liubovi}"
		, q"{Liudmila}", q"{Liusea}", q"{Livia}", q"{Liviu}", q"{Lora}", q"{Luca}", q"{Lucia}", q"{Lucian}"
		, q"{Lucica}", q"{Lucretia}", q"{Ludmila}", q"{Luiza}", q"{Luminita}", q"{Lungu}", q"{Magdalena}"
		, q"{Mahmoud}", q"{Maia}", q"{Malvina}", q"{Marat}", q"{Marc}", q"{Marcel}", q"{Marcela}", q"{Margareta}"
		, q"{Margarita}", q"{Maria}", q"{Marian}", q"{Mariana}", q"{Marianna}", q"{Maricica}", q"{Marin}"
		, q"{Marina}", q"{Marius}", q"{Marta}", q"{Maxim}", q"{Melania}", q"{Melnic}", q"{Mihaela}", q"{Mihai}"
		, q"{Mihail}", q"{Minodora}", q"{Mircea}", q"{Mirela}", q"{Miroslav}", q"{Miroslava}", q"{Mohamad}"
		, q"{Mohamed}", q"{Muhammad}", q"{Mustafa}", q"{Nadejda}", q"{Natalia}", q"{Natasa}", q"{Nelea}"
		, q"{Neli}", q"{Nellea}", q"{Nelli}", q"{Neonila}", q"{Nicanor}", q"{Nicolae}", q"{Nicolai}", q"{Nicolaie}"
		, q"{Nicoleta}", q"{Nicon}", q"{Nicu}", q"{Niculina}", q"{Nina}", q"{Nineli}", q"{Nona}", q"{Nonna}"
		, q"{Octavian}", q"{Oleg}", q"{Oleksandr}", q"{Olena}", q"{Olesea}", q"{Olga}", q"{Oliga}", q"{Olimpiada}"
		, q"{Otilia}", q"{Oxana}", q"{Pantelei}", q"{Parascovia}", q"{Paulina}", q"{Pavel}", q"{Pavlina}"
		, q"{Pelaghia}", q"{Petru}", q"{Piotr}", q"{Polina}", q"{Prascovia}", q"{Rada}", q"{Radion}", q"{Radislav}"
		, q"{Radu}", q"{Raisa}", q"{Reghina}", q"{Renat}", q"{Renata}", q"{Rima}", q"{Rimma}", q"{Rita}", q"{Robert}"
		, q"{Rodica}", q"{Rodion}", q"{Roman}", q"{Romeo}", q"{Romina}", q"{Rosina}", q"{Rostislav}", q"{Rotaru}"
		, q"{Ruslan}", q"{Ruslana}", q"{Rustam}", q"{Ruxanda}", q"{Sabina}", q"{Said}", q"{Sanda}", q"{Sandu}"
		, q"{Sava}", q"{Savva}", q"{Seghei}", q"{Semion}", q"{Serafim}", q"{Serafima}", q"{Sergei}", q"{Sergey}"
		, q"{Serghei}", q"{Sergiu}", q"{Silvia}", q"{Silviu}", q"{Simion}", q"{Snejana}", q"{Sofia}", q"{Sorina}"
		, q"{Spiridon}", q"{Stanislav}", q"{Stefan}", q"{Stela}", q"{Stelian}", q"{Steliana}", q"{Stella}"
		, q"{Steluta}", q"{Stepan}", q"{Stepanida}", q"{Sveatoslav}", q"{Svetlana}", q"{Svetoslav}"
		, q"{Svitlana}", q"{Taisia}", q"{Tamara}", q"{Taras}", q"{Tatiana}", q"{Teodor}", q"{Teodora}"
		, q"{Tetiana}", q"{Timofei}", q"{Toma}", q"{Traian}", q"{Trofim}", q"{Tudor}", q"{Uliana}", q"{Vadim}"
		, q"{Valentin}", q"{Valentina}", q"{Valeri}", q"{Valeria}", q"{Valerii}", q"{Valeriu}", q"{Varvara}"
		, q"{Vasile}", q"{Vasili}", q"{Vasilie}", q"{Vasilina}", q"{Vasilisa}", q"{Veaceslav}", q"{Veceaslav}"
		, q"{Veceslav}", q"{Veniamin}", q"{Vera}", q"{Vergiliu}", q"{Verginia}", q"{Veronica}", q"{Vica}"
		, q"{Victor}", q"{Victoria}", q"{Violeta}", q"{Violetta}", q"{Violina}", q"{Viorel}", q"{Viorelia}"
		, q"{Viorica}", q"{Virgiliu}", q"{Virginia}", q"{Vitali}", q"{Vitalia}", q"{Vitalie}", q"{Vitalii}"
		, q"{Vitalina}", q"{Vlad}", q"{Vlada}", q"{Vladilena}", q"{Vladimer}", q"{Vladimir}", q"{Vladislav}"
		, q"{Vladislava}", q"{Vladlen}", q"{Vladlena}", q"{Vsevolod}", q"{Xenia}", q"{Zahar}", q"{Zaharia}"
		, q"{Zina}", q"{Zinaida}", q"{Zinovia}", q"{Zoia}", q"{Zorina}" ];

		return choice(strs, this.rnd);
	}

	override string personLastName() {
		const string[] strs =
		[ q"{Ababii}", q"{Abu}", q"{Adam}", q"{Albu}", q"{Alexandru}", q"{Andrei}", q"{Andries}", q"{Andronic}"
		, q"{Anghel}", q"{Antoci}", q"{Apostol}", q"{Arnaut}", q"{Babin}", q"{Baciu}", q"{Balaban}", q"{Balan}"
		, q"{Baltag}", q"{Bargan}", q"{Bejan}", q"{Bejenari}", q"{Bejenaru}", q"{Birca}", q"{Bitca}", q"{Bivol}"
		, q"{Boboc}", q"{Bodrug}", q"{Bogdan}", q"{Boico}", q"{Bondarenco}", q"{Bordian}", q"{Bors}", q"{Borta}"
		, q"{Bostan}", q"{Botan}", q"{Botezatu}", q"{Botnari}", q"{Botnaru}", q"{Braga}", q"{Brinza}", q"{Buga}"
		, q"{Bujor}", q"{Bulat}", q"{Bunescu}", q"{Burduja}", q"{Burlacu}", q"{Buruiana}", q"{Busuioc}"
		, q"{Butnaru}", q"{Capatina}", q"{Cara}", q"{Caraman}", q"{Caraus}", q"{Carp}", q"{Casian}", q"{Catana}"
		, q"{Cazac}", q"{Cazacu}", q"{Ceban}", q"{Cebanu}", q"{Cebotari}", q"{Cecan}", q"{Cernei}", q"{Chicu}"
		, q"{Chihai}", q"{Chiriac}", q"{Chirilov}", q"{Chirita}", q"{Cibotari}", q"{Cioban}", q"{Ciobanu}"
		, q"{Ciorba}", q"{Ciornii}", q"{Ciubotaru}", q"{Ciumac}", q"{Codreanu}", q"{Cojocari}", q"{Cojocaru}"
		, q"{Cojuhari}", q"{Colesnic}", q"{Condrea}", q"{Constantinov}", q"{Costin}", q"{Cotorobai}"
		, q"{Cotruta}", q"{Covalciuc}", q"{Covalenco}", q"{Covali}", q"{Craciun}", q"{Creciun}", q"{Cretu}"
		, q"{Cristea}", q"{Croitor}", q"{Croitoru}", q"{Crudu}", q"{Cucos}", q"{Cucu}", q"{Cujba}", q"{Cusnir}"
		, q"{Dabija}", q"{Damian}", q"{Darii}", q"{David}", q"{Diaconu}", q"{Dodon}", q"{Donica}", q"{Dragan}"
		, q"{Duca}", q"{Enachi}", q"{Eni}", q"{Erhan}", q"{Esanu}", q"{Filip}", q"{Florea}", q"{Focsa}", q"{Frunza}"
		, q"{Frunze}", q"{Furtuna}", q"{Gaina}", q"{Gangan}", q"{Gavrilita}", q"{Gavriliuc}", q"{Gheorghita}"
		, q"{Gherman}", q"{Gilca}", q"{Girbu}", q"{Gisca}", q"{Golban}", q"{Goncear}", q"{Gonta}", q"{Gorea}"
		, q"{Graur}", q"{Grecu}", q"{Grigoras}", q"{Grosu}", q"{Groza}", q"{Gusan}", q"{Gutu}", q"{Guzun}"
		, q"{Hincu}", q"{Iatco}", q"{Ignat}", q"{Iovu}", q"{Isac}", q"{Istrati}", q"{Ivanov}", q"{Ivanova}"
		, q"{Jardan}", q"{Josan}", q"{Lazari}", q"{Leahu}", q"{Lisnic}", q"{Luca}", q"{Luchian}", q"{Lungu}"
		, q"{Lupasco}", q"{Lupascu}", q"{Lupu}", q"{Macari}", q"{Macovei}", q"{Madan}", q"{Malai}", q"{Mamaliga}"
		, q"{Manole}", q"{Marcu}", q"{Mardari}", q"{Marian}", q"{Marin}", q"{Matei}", q"{Mazur}", q"{Melnic}"
		, q"{Mereuta}", q"{Mihailov}", q"{Mihalachi}", q"{Mindru}", q"{Miron}", q"{Mirza}", q"{Mitu}", q"{Mocan}"
		, q"{Mocanu}", q"{Moisei}", q"{Moldovan}", q"{Moldovanu}", q"{Morari}", q"{Moraru}", q"{Moroz}"
		, q"{Muntean}", q"{Munteanu}", q"{Musteata}", q"{Nastas}", q"{Neagu}", q"{Negara}", q"{Negru}"
		, q"{Negruta}", q"{Nicolaev}", q"{Nistor}", q"{Novac}", q"{Olari}", q"{Olaru}", q"{Oleinic}", q"{Oprea}"
		, q"{Paladi}", q"{Palii}", q"{Pasat}", q"{Pascal}", q"{Pascari}", q"{Pascaru}", q"{Pavlov}", q"{Petrov}"
		, q"{Pintea}", q"{Pinzari}", q"{Pinzaru}", q"{Placinta}", q"{Plamadeala}", q"{Platon}", q"{Plesca}"
		, q"{Popa}", q"{Popescu}", q"{Popov}", q"{Popova}", q"{Popovici}", q"{Popusoi}", q"{Postica}", q"{Postolachi}"
		, q"{Prepelita}", q"{Prisacari}", q"{Prisacaru}", q"{Prodan}", q"{Pruteanu}", q"{Puscas}", q"{Racu}"
		, q"{Radu}", q"{Railean}", q"{Raileanu}", q"{Rata}", q"{Revenco}", q"{Robu}", q"{Roman}", q"{Romanciuc}"
		, q"{Rosca}", q"{Rotari}", q"{Rotaru}", q"{Rusnac}", q"{Russu}", q"{Rusu}", q"{Sandu}", q"{Sava}"
		, q"{Savciuc}", q"{Savin}", q"{Schiopu}", q"{Scripnic}", q"{Scurtu}", q"{Scutaru}", q"{Secrieru}"
		, q"{Seremet}", q"{Serghei}", q"{Sevcenco}", q"{Sirbu}", q"{Sirghi}", q"{Sochirca}", q"{Socolov}"
		, q"{Soltan}", q"{Spataru}", q"{Spinu}", q"{Stavila}", q"{Stirbu}", q"{Stoian}", q"{Stratan}", q"{Stratulat}"
		, q"{Svet}", q"{Talpa}", q"{Taran}", q"{Tataru}", q"{Tatiana}", q"{Tcacenco}", q"{Tcaci}", q"{Terzi}"
		, q"{Tofan}", q"{Toma}", q"{Topal}", q"{Triboi}", q"{Trifan}", q"{Turcan}", q"{Turcanu}", q"{Ungureanu}"
		, q"{Untila}", q"{Ursachi}", q"{Ursu}", q"{Uzun}", q"{Vacarciuc}", q"{Vartic}", q"{Verdes}", q"{Vicol}"
		, q"{Vieru}", q"{Virlan}", q"{Vizitiu}", q"{Vlas}", q"{Vrabie}", q"{Zaharia}", q"{Zaporojan}" ];

		return choice(strs, this.rnd);
	}

	override string personMaleFirstName() {
		const string[] strs =
		[ q"{Adrian}", q"{Afanasi}", q"{Afanasie}", q"{Ahmad}", q"{Albert}", q"{Alexander}", q"{Alexandr}"
		, q"{Alexandru}", q"{Alexei}", q"{Ali}", q"{Alic}", q"{Amir}", q"{Anatol}", q"{Anatoli}", q"{Anatolie}"
		, q"{Anatolii}", q"{Andrei}", q"{Andrian}", q"{Anjela}", q"{Anton}", q"{Arcadi}", q"{Arcadie}"
		, q"{Arcadii}", q"{Artiom}", q"{Artur}", q"{Augustin}", q"{Aurel}", q"{Aurelian}", q"{Aureliu}"
		, q"{Boris}", q"{Calin}", q"{Catalin}", q"{Cezar}", q"{Chiril}", q"{Chirill}", q"{Ciprian}", q"{Constantin}"
		, q"{Constatin}", q"{Cornel}", q"{Corneliu}", q"{Cristian}", q"{Cristin}", q"{Cristofor}", q"{Daniel}"
		, q"{Daniil}", q"{Danil}", q"{Danu}", q"{David}", q"{Denis}", q"{Dimitri}", q"{Dimitrii}", q"{Dinu}"
		, q"{Dmitri}", q"{Dmitrii}", q"{Dorel}", q"{Dorian}", q"{Dorin}", q"{Dragomir}", q"{Dragos}", q"{Dumitru}"
		, q"{Edgar}", q"{Eduard}", q"{Efim}", q"{Egor}", q"{Emil}", q"{Emilian}", q"{Eric}", q"{Eugen}", q"{Eugeniu}"
		, q"{Evgheni}", q"{Evghenii}", q"{Feodor}", q"{Filip}", q"{Filipp}", q"{Fiodor}", q"{Florin}", q"{Gabriel}"
		, q"{Gavril}", q"{George}", q"{Ghenadi}", q"{Ghenadie}", q"{Ghennadi}", q"{Gheorghe}", q"{Gheorghi}"
		, q"{Gheorghii}", q"{Gherman}", q"{Gleb}", q"{Grigore}", q"{Grigori}", q"{Husein}", q"{Iacob}"
		, q"{Iacov}", q"{Ianos}", q"{Iaroslav}", q"{Ibrahim}", q"{Igor}", q"{Igori}", q"{Ilia}", q"{Ilie}"
		, q"{Ioan}", q"{Ion}", q"{Ionel}", q"{Iosif}", q"{Iulian}", q"{Iuri}", q"{Iurie}", q"{Iurii}", q"{Ivan}"
		, q"{Jan}", q"{Laurentiu}", q"{Leon}", q"{Leonid}", q"{Lev}", q"{Liubovi}", q"{Liviu}", q"{Luca}"
		, q"{Lucian}", q"{Lungu}", q"{Mahmoud}", q"{Marat}", q"{Marc}", q"{Marcel}", q"{Marian}", q"{Marin}"
		, q"{Marius}", q"{Maxim}", q"{Mihai}", q"{Mihail}", q"{Mircea}", q"{Miroslav}", q"{Mohamad}", q"{Mohamed}"
		, q"{Muhammad}", q"{Mustafa}", q"{Nicanor}", q"{Nicolae}", q"{Nicolai}", q"{Nicolaie}", q"{Nicon}"
		, q"{Nicu}", q"{Octavian}", q"{Oleg}", q"{Oleksandr}", q"{Pantelei}", q"{Pavel}", q"{Petru}", q"{Piotr}"
		, q"{Radion}", q"{Radislav}", q"{Radu}", q"{Renat}", q"{Robert}", q"{Rodion}", q"{Roman}", q"{Romeo}"
		, q"{Rostislav}", q"{Ruslan}", q"{Rustam}", q"{Said}", q"{Sandu}", q"{Sava}", q"{Savva}", q"{Seghei}"
		, q"{Semion}", q"{Serafim}", q"{Sergei}", q"{Sergey}", q"{Serghei}", q"{Sergiu}", q"{Silvia}", q"{Silviu}"
		, q"{Simion}", q"{Spiridon}", q"{Stanislav}", q"{Stefan}", q"{Stela}", q"{Stelian}", q"{Stepan}"
		, q"{Sveatoslav}", q"{Svetlana}", q"{Svetoslav}", q"{Taras}", q"{Teodor}", q"{Timofei}", q"{Toma}"
		, q"{Traian}", q"{Trofim}", q"{Tudor}", q"{Vadim}", q"{Valentin}", q"{Valeri}", q"{Valerii}", q"{Valeriu}"
		, q"{Vasile}", q"{Vasili}", q"{Vasilie}", q"{Veaceslav}", q"{Veceaslav}", q"{Veceslav}", q"{Veniamin}"
		, q"{Vergiliu}", q"{Victor}", q"{Viorel}", q"{Virgiliu}", q"{Vitali}", q"{Vitalie}", q"{Vitalii}"
		, q"{Vlad}", q"{Vladimer}", q"{Vladimir}", q"{Vladislav}", q"{Vladlen}", q"{Vsevolod}", q"{Zahar}"
		, q"{Zaharia}" ];

		return choice(strs, this.rnd);
	}

	override string personMalePrefix() {
		const string[] strs =
		[ q"{Dl}", q"{Dra}" ];

		return choice(strs, this.rnd);
	}

	override string personName() {
		const int rndInt = uniform(0, 2, this.rnd);

		if(rndInt >= 0 && rndInt < 1) {
			return personFirstName() ~ " " ~ personLastName();
		}
		if(rndInt >= 1 && rndInt < 2) {
			return personPrefix() ~ " " ~ personFirstName() ~ " " ~ personLastName();
		}

		return "";
	}

	override string personPrefix() {
		const string[] strs =
		[ q"{Dl}", q"{Dna}", q"{Dra}" ];

		return choice(strs, this.rnd);
	}

	override string phoneNumberFormats() {
		const string[] strs =
		[ q"{0220#####}", q"{0221#####}", q"{0222#####}", q"{0223#####}", q"{0224#####}", q"{0225#####}"
		, q"{0226#####}", q"{0227#####}", q"{0228#####}", q"{0229#####}" ];

		return numberBuild(choice(strs, this.rnd));
	}

}

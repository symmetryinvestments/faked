module faker.faker_nb_no;

import std.random;
import std.array;
import std.format;
import std.conv : to;
import std.string : toUpper;
import std.range : iota, take, repeat;
import std.algorithm : map, joiner;
import faker.base;

class Faker_nb_no : Faker {
@safe:
	this(int seed) {
		super(seed);
	}

	override string companyNamePattern() {
		assert(false);
	}

	override string companySuffix() {
		const string[] strs =
		[ q"{Gruppen}", q"{AS}", q"{ASA}", q"{BA}", q"{RFH}", q"{og Sønner}" ];

		return choice(strs, this.rnd);
	}

	override string internetDomainSuffix() {
		const string[] strs =
		[ q"{no}", q"{com}", q"{net}", q"{org}" ];

		return choice(strs, this.rnd);
	}

	override string locationCityName() {
		const string[] strs =
		[ q"{Fet}", q"{Gjes}", q"{Høy}", q"{Inn}", q"{Fager}", q"{Lille}", q"{Lo}", q"{Mal}", q"{Nord}", q"{Nær}"
		, q"{Sand}", q"{Sme}", q"{Stav}", q"{Stor}", q"{Tand}", q"{Ut}", q"{Vest}" ];

		return choice(strs, this.rnd);
	}

	override string locationCityPattern() {
		assert(false);
	}

	override string locationCitySuffix() {
		const string[] strs =
		[ q"{berg}", q"{borg}", q"{by}", q"{bø}", q"{dal}", q"{eid}", q"{fjell}", q"{fjord}", q"{foss}", q"{grunn}"
		, q"{hamn}", q"{havn}", q"{helle}", q"{mark}", q"{nes}", q"{odden}", q"{sand}", q"{sjøen}", q"{stad}"
		, q"{strand}", q"{strøm}", q"{sund}", q"{vik}", q"{vær}", q"{våg}", q"{ø}", q"{øy}", q"{ås}" ];

		return choice(strs, this.rnd);
	}

	override string locationDefaultCountry() {
		const string[] strs =
		[ q"{Norge}" ];

		return choice(strs, this.rnd);
	}

	override string locationState() {
		const string[] strs =
		[ q"{}" ];

		return choice(strs, this.rnd);
	}

	override string locationStreetName() {
		const string[] strs =
		[ q"{Eike}", q"{Bjørke}", q"{Gran}", q"{Vass}", q"{Furu}", q"{Litj}", q"{Lille}", q"{Høy}", q"{Fosse}"
		, q"{Elve}", q"{Ku}", q"{Konvall}", q"{Soldugg}", q"{Hestemyr}", q"{Granitt}", q"{Hegge}", q"{Rogne}"
		, q"{Fiol}", q"{Sol}", q"{Ting}", q"{Malm}", q"{Klokker}", q"{Preste}", q"{Dam}", q"{Geiterygg}", q"{Bekke}"
		, q"{Berg}", q"{Kirke}", q"{Kors}", q"{Bru}", q"{Blåveis}", q"{Torg}", q"{Sjø}" ];

		return choice(strs, this.rnd);
	}

	override string locationStreetPattern() {
		assert(false);
	}

	override string locationStreetSuffix() {
		const string[] strs =
		[ q"{alléen}", q"{bakken}", q"{berget}", q"{bråten}", q"{eggen}", q"{engen}", q"{ekra}", q"{faret}"
		, q"{flata}", q"{gata}", q"{gjerdet}", q"{grenda}", q"{gropa}", q"{hagen}", q"{haugen}", q"{havna}"
		, q"{holtet}", q"{høgda}", q"{jordet}", q"{kollen}", q"{kroken}", q"{lia}", q"{lunden}", q"{lyngen}"
		, q"{løkka}", q"{marka}", q"{moen}", q"{myra}", q"{plassen}", q"{ringen}", q"{roa}", q"{røa}", q"{skogen}"
		, q"{skrenten}", q"{spranget}", q"{stien}", q"{stranda}", q"{stubben}", q"{stykket}", q"{svingen}"
		, q"{tjernet}", q"{toppen}", q"{tunet}", q"{vollen}", q"{vika}", q"{åsen}" ];

		return choice(strs, this.rnd);
	}

	override string personFemaleFirstName() {
		const string[] strs =
		[ q"{Emma}", q"{Sara}", q"{Thea}", q"{Ida}", q"{Julie}", q"{Nora}", q"{Emilie}", q"{Ingrid}", q"{Hanna}"
		, q"{Maria}", q"{Sofie}", q"{Anna}", q"{Malin}", q"{Amalie}", q"{Vilde}", q"{Frida}", q"{Andrea}"
		, q"{Tuva}", q"{Victoria}", q"{Mia}", q"{Karoline}", q"{Mathilde}", q"{Martine}", q"{Linnea}", q"{Marte}"
		, q"{Hedda}", q"{Marie}", q"{Helene}", q"{Silje}", q"{Leah}", q"{Maja}", q"{Elise}", q"{Oda}", q"{Kristine}"
		, q"{Aurora}", q"{Kaja}", q"{Camilla}", q"{Mari}", q"{Maren}", q"{Mina}", q"{Selma}", q"{Jenny}", q"{Celine}"
		, q"{Eline}", q"{Sunniva}", q"{Natalie}", q"{Tiril}", q"{Synne}", q"{Sandra}", q"{Madeleine}" ];

		return choice(strs, this.rnd);
	}

	override string personFemalePrefix() {
		const string[] strs =
		[ q"{Dr.}", q"{Prof.}" ];

		return choice(strs, this.rnd);
	}

	override string personFirstName() {
		const string[] strs =
		[ q"{Emma}", q"{Sara}", q"{Thea}", q"{Ida}", q"{Julie}", q"{Nora}", q"{Emilie}", q"{Ingrid}", q"{Hanna}"
		, q"{Maria}", q"{Sofie}", q"{Anna}", q"{Malin}", q"{Amalie}", q"{Vilde}", q"{Frida}", q"{Andrea}"
		, q"{Tuva}", q"{Victoria}", q"{Mia}", q"{Karoline}", q"{Mathilde}", q"{Martine}", q"{Linnea}", q"{Marte}"
		, q"{Hedda}", q"{Marie}", q"{Helene}", q"{Silje}", q"{Leah}", q"{Maja}", q"{Elise}", q"{Oda}", q"{Kristine}"
		, q"{Aurora}", q"{Kaja}", q"{Camilla}", q"{Mari}", q"{Maren}", q"{Mina}", q"{Selma}", q"{Jenny}", q"{Celine}"
		, q"{Eline}", q"{Sunniva}", q"{Natalie}", q"{Tiril}", q"{Synne}", q"{Sandra}", q"{Madeleine}", q"{Markus}"
		, q"{Mathias}", q"{Kristian}", q"{Jonas}", q"{Andreas}", q"{Alexander}", q"{Martin}", q"{Sander}"
		, q"{Daniel}", q"{Magnus}", q"{Henrik}", q"{Tobias}", q"{Kristoffer}", q"{Emil}", q"{Adrian}", q"{Sebastian}"
		, q"{Marius}", q"{Elias}", q"{Fredrik}", q"{Thomas}", q"{Sondre}", q"{Benjamin}", q"{Jakob}", q"{Oliver}"
		, q"{Lucas}", q"{Oskar}", q"{Nikolai}", q"{Filip}", q"{Mats}", q"{William}", q"{Erik}", q"{Simen}"
		, q"{Ole}", q"{Eirik}", q"{Isak}", q"{Kasper}", q"{Noah}", q"{Lars}", q"{Joakim}", q"{Johannes}", q"{Håkon}"
		, q"{Sindre}", q"{Jørgen}", q"{Herman}", q"{Anders}", q"{Jonathan}", q"{Even}", q"{Theodor}", q"{Mikkel}"
		, q"{Aksel}" ];

		return choice(strs, this.rnd);
	}

	override string personLastName() {
		const string[] strs =
		[ q"{Johansen}", q"{Hansen}", q"{Andersen}", q"{Kristiansen}", q"{Larsen}", q"{Olsen}", q"{Solberg}"
		, q"{Andresen}", q"{Pedersen}", q"{Nilsen}", q"{Berg}", q"{Halvorsen}", q"{Karlsen}", q"{Svendsen}"
		, q"{Jensen}", q"{Haugen}", q"{Martinsen}", q"{Eriksen}", q"{Sørensen}", q"{Johnsen}", q"{Myhrer}"
		, q"{Johannessen}", q"{Nielsen}", q"{Hagen}", q"{Pettersen}", q"{Bakke}", q"{Skuterud}", q"{Løken}"
		, q"{Gundersen}", q"{Strand}", q"{Jørgensen}", q"{Kvarme}", q"{Røed}", q"{Sæther}", q"{Stensrud}"
		, q"{Moe}", q"{Kristoffersen}", q"{Jakobsen}", q"{Holm}", q"{Aas}", q"{Lie}", q"{Moen}", q"{Andreassen}"
		, q"{Vedvik}", q"{Nguyen}", q"{Jacobsen}", q"{Torgersen}", q"{Ruud}", q"{Krogh}", q"{Christiansen}"
		, q"{Bjerke}", q"{Aalerud}", q"{Borge}", q"{Sørlie}", q"{Berge}", q"{Østli}", q"{Ødegård}"
		, q"{Torp}", q"{Henriksen}", q"{Haukelidsæter}", q"{Fjeld}", q"{Danielsen}", q"{Aasen}", q"{Fredriksen}"
		, q"{Dahl}", q"{Berntsen}", q"{Arnesen}", q"{Wold}", q"{Thoresen}", q"{Solheim}", q"{Skoglund}"
		, q"{Bakken}", q"{Amundsen}", q"{Solli}", q"{Smogeli}", q"{Kristensen}", q"{Glosli}", q"{Fossum}"
		, q"{Evensen}", q"{Eide}", q"{Carlsen}", q"{Østby}", q"{Vegge}", q"{Tangen}", q"{Smedsrud}", q"{Olstad}"
		, q"{Lunde}", q"{Kleven}", q"{Huseby}", q"{Bjørnstad}", q"{Ryan}", q"{Rasmussen}", q"{Nygård}"
		, q"{Nordskaug}", q"{Nordby}", q"{Mathisen}", q"{Hopland}", q"{Gran}", q"{Finstad}", q"{Edvardsen}" ];

		return choice(strs, this.rnd);
	}

	override string personMaleFirstName() {
		const string[] strs =
		[ q"{Markus}", q"{Mathias}", q"{Kristian}", q"{Jonas}", q"{Andreas}", q"{Alexander}", q"{Martin}"
		, q"{Sander}", q"{Daniel}", q"{Magnus}", q"{Henrik}", q"{Tobias}", q"{Kristoffer}", q"{Emil}", q"{Adrian}"
		, q"{Sebastian}", q"{Marius}", q"{Elias}", q"{Fredrik}", q"{Thomas}", q"{Sondre}", q"{Benjamin}"
		, q"{Jakob}", q"{Oliver}", q"{Lucas}", q"{Oskar}", q"{Nikolai}", q"{Filip}", q"{Mats}", q"{William}"
		, q"{Erik}", q"{Simen}", q"{Ole}", q"{Eirik}", q"{Isak}", q"{Kasper}", q"{Noah}", q"{Lars}", q"{Joakim}"
		, q"{Johannes}", q"{Håkon}", q"{Sindre}", q"{Jørgen}", q"{Herman}", q"{Anders}", q"{Jonathan}"
		, q"{Even}", q"{Theodor}", q"{Mikkel}", q"{Aksel}" ];

		return choice(strs, this.rnd);
	}

	override string personMalePrefix() {
		const string[] strs =
		[ q"{Dr.}", q"{Prof.}" ];

		return choice(strs, this.rnd);
	}

	override string personPrefix() {
		const string[] strs =
		[ q"{Dr.}", q"{Prof.}" ];

		return choice(strs, this.rnd);
	}

	override string personSuffix() {
		const string[] strs =
		[ q"{Jr.}", q"{Sr.}", q"{I}", q"{II}", q"{III}", q"{IV}", q"{V}" ];

		return choice(strs, this.rnd);
	}

	override string wordAdjective() {
		const string[] strs =
		[ q"{aktuell}", q"{alvorlig}", q"{ansvarlig}", q"{berømt}", q"{betydelig}", q"{bevisst}", q"{bred}"
		, q"{dum}", q"{dyp}", q"{ekkel}", q"{eksisterende}", q"{ekte}", q"{enkel}", q"{ensom}", q"{falsk}"
		, q"{fast}", q"{felles}", q"{fersk}", q"{fjern}", q"{flau}", q"{følsom}", q"{forsiktig}", q"{fremmed}"
		, q"{fryktelig}", q"{glatt}", q"{gravid}", q"{grunnleggende}", q"{heldig}", q"{hemmelig}", q"{hjelpsom}"
		, q"{hyppig}", q"{imponerende}", q"{kjedelig}", q"{kul}", q"{langsom}", q"{lat}", q"{lav}", q"{lignende}"
		, q"{løs}", q"{lovlig}", q"{lykkelig}", q"{lys}", q"{menneskelig}", q"{merkelig}", q"{midlertidig}"
		, q"{mistenkelig}", q"{modig}", q"{mørk}", q"{morsom}", q"{motsatt}", q"{mulig}", q"{naturlig}"
		, q"{nåværende}", q"{nødvendig}", q"{nøyaktig}", q"{nysgjerrig}", q"{nyttig}", q"{offentlig}"
		, q"{opprinnelig}", q"{ordentlig}", q"{plutselig}", q"{rå}", q"{rask}", q"{regelmessig}", q"{ren}"
		, q"{rettferdig}", q"{rimelig}", q"{rund}", q"{ryddig}", q"{sannsynlig}", q"{selvsikker}", q"{sint}"
		, q"{skarp}", q"{skikkelig}", q"{skyldig}", q"{smal}", q"{søt}", q"{spennende}", q"{stille}", q"{stolt}"
		, q"{stram}", q"{streng}", q"{stygg}", q"{sulten}", q"{sunn}", q"{synlig}", q"{tilgjengelig}", q"{tilstrekkelig}"
		, q"{tung}", q"{tynn}", q"{uavhengig}", q"{ujevn}", q"{ulovlig}", q"{ulykkelig}", q"{umiddelbar}"
		, q"{urettferdig}", q"{vellykket}", q"{vennlig}", q"{verdifull}", q"{vill}", q"{villig}", q"{voksen}"
		, q"{ærlig}", q"{åpen}", q"{åpenbar}" ];

		return choice(strs, this.rnd);
	}

	override string wordConjunction() {
		const string[] strs =
		[ q"{eller}", q"{for}", q"{men}", q"{og}", q"{så}" ];

		return choice(strs, this.rnd);
	}

	override string wordInterjection() {
		const string[] strs =
		[ q"{aha}", q"{au}", q"{bravo}", q"{bø}", q"{fy}", q"{fysj}", q"{huff}", q"{hurra}", q"{hæ}", q"{jippi}"
		, q"{nam}", q"{oi}", q"{ops}", q"{pytt}", q"{pøh}", q"{å}", q"{æsj}" ];

		return choice(strs, this.rnd);
	}

}

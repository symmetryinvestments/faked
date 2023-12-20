// generated by fakerjsgenerator
///
module faked.faker_en_us;

import faked.base;


///
class Faker_en_us : Faker {
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
	string phoneNumberExchangeCode() {
		auto data = [
		"201",
		"202",
		"203",
		"205",
		"206",
		"207",
		"208",
		"209",
		"210",
		"212",
		"213",
		"214",
		"215",
		"216",
		"217",
		"218",
		"219",
		"224",
		"225",
		"227",
		"228",
		"229",
		"231",
		"234",
		"239",
		"240",
		"248",
		"251",
		"252",
		"253",
		"254",
		"256",
		"260",
		"262",
		"267",
		"269",
		"270",
		"276",
		"281",
		"283",
		"301",
		"302",
		"303",
		"304",
		"305",
		"307",
		"308",
		"309",
		"310",
		"312",
		"313",
		"314",
		"315",
		"316",
		"317",
		"318",
		"319",
		"320",
		"321",
		"323",
		"330",
		"331",
		"334",
		"336",
		"337",
		"339",
		"347",
		"351",
		"352",
		"360",
		"361",
		"386",
		"401",
		"402",
		"404",
		"405",
		"406",
		"407",
		"408",
		"409",
		"410",
		"412",
		"413",
		"414",
		"415",
		"417",
		"419",
		"423",
		"424",
		"425",
		"434",
		"435",
		"440",
		"443",
		"445",
		"464",
		"469",
		"470",
		"475",
		"478",
		"479",
		"480",
		"484",
		"501",
		"502",
		"503",
		"504",
		"505",
		"507",
		"508",
		"509",
		"510",
		"512",
		"513",
		"515",
		"516",
		"517",
		"518",
		"520",
		"530",
		"540",
		"541",
		"551",
		"557",
		"559",
		"561",
		"562",
		"563",
		"564",
		"567",
		"570",
		"571",
		"573",
		"574",
		"580",
		"585",
		"586",
		"601",
		"602",
		"603",
		"605",
		"606",
		"607",
		"608",
		"609",
		"610",
		"612",
		"614",
		"615",
		"616",
		"617",
		"618",
		"619",
		"620",
		"623",
		"626",
		"630",
		"631",
		"636",
		"641",
		"646",
		"650",
		"651",
		"660",
		"661",
		"662",
		"667",
		"678",
		"682",
		"701",
		"702",
		"703",
		"704",
		"706",
		"707",
		"708",
		"712",
		"713",
		"714",
		"715",
		"716",
		"717",
		"718",
		"719",
		"720",
		"724",
		"727",
		"731",
		"732",
		"734",
		"737",
		"740",
		"754",
		"757",
		"760",
		"763",
		"765",
		"770",
		"772",
		"773",
		"774",
		"775",
		"781",
		"785",
		"786",
		"801",
		"802",
		"803",
		"804",
		"805",
		"806",
		"808",
		"810",
		"812",
		"813",
		"814",
		"815",
		"816",
		"817",
		"818",
		"828",
		"830",
		"831",
		"832",
		"835",
		"843",
		"845",
		"847",
		"848",
		"850",
		"856",
		"857",
		"858",
		"859",
		"860",
		"862",
		"863",
		"864",
		"865",
		"870",
		"872",
		"878",
		"901",
		"903",
		"904",
		"906",
		"907",
		"908",
		"909",
		"910",
		"912",
		"913",
		"914",
		"915",
		"916",
		"917",
		"918",
		"919",
		"920",
		"925",
		"928",
		"931",
		"936",
		"937",
		"940",
		"941",
		"947",
		"949",
		"952",
		"954",
		"956",
		"959",
		"970",
		"971",
		"972",
		"973",
		"975",
		"978",
		"979",
		"980",
		"984",
		"985",
		"989"
		];
		return choice(data, this.rnd);
	}

	///
	string phoneNumberAreaCode() {
		auto data = [
		"201",
		"202",
		"203",
		"205",
		"206",
		"207",
		"208",
		"209",
		"210",
		"212",
		"213",
		"214",
		"215",
		"216",
		"217",
		"218",
		"219",
		"224",
		"225",
		"227",
		"228",
		"229",
		"231",
		"234",
		"239",
		"240",
		"248",
		"251",
		"252",
		"253",
		"254",
		"256",
		"260",
		"262",
		"267",
		"269",
		"270",
		"276",
		"281",
		"283",
		"301",
		"302",
		"303",
		"304",
		"305",
		"307",
		"308",
		"309",
		"310",
		"312",
		"313",
		"314",
		"315",
		"316",
		"317",
		"318",
		"319",
		"320",
		"321",
		"323",
		"330",
		"331",
		"334",
		"336",
		"337",
		"339",
		"347",
		"351",
		"352",
		"360",
		"361",
		"386",
		"401",
		"402",
		"404",
		"405",
		"406",
		"407",
		"408",
		"409",
		"410",
		"412",
		"413",
		"414",
		"415",
		"417",
		"419",
		"423",
		"424",
		"425",
		"434",
		"435",
		"440",
		"443",
		"445",
		"464",
		"469",
		"470",
		"475",
		"478",
		"479",
		"480",
		"484",
		"501",
		"502",
		"503",
		"504",
		"505",
		"507",
		"508",
		"509",
		"510",
		"512",
		"513",
		"515",
		"516",
		"517",
		"518",
		"520",
		"530",
		"540",
		"541",
		"551",
		"557",
		"559",
		"561",
		"562",
		"563",
		"564",
		"567",
		"570",
		"571",
		"573",
		"574",
		"580",
		"585",
		"586",
		"601",
		"602",
		"603",
		"605",
		"606",
		"607",
		"608",
		"609",
		"610",
		"612",
		"614",
		"615",
		"616",
		"617",
		"618",
		"619",
		"620",
		"623",
		"626",
		"630",
		"631",
		"636",
		"641",
		"646",
		"650",
		"651",
		"660",
		"661",
		"662",
		"667",
		"678",
		"682",
		"701",
		"702",
		"703",
		"704",
		"706",
		"707",
		"708",
		"712",
		"713",
		"714",
		"715",
		"716",
		"717",
		"718",
		"719",
		"720",
		"724",
		"727",
		"731",
		"732",
		"734",
		"737",
		"740",
		"754",
		"757",
		"760",
		"763",
		"765",
		"770",
		"772",
		"773",
		"774",
		"775",
		"781",
		"785",
		"786",
		"801",
		"802",
		"803",
		"804",
		"805",
		"806",
		"808",
		"810",
		"812",
		"813",
		"814",
		"815",
		"816",
		"817",
		"818",
		"828",
		"830",
		"831",
		"832",
		"835",
		"843",
		"845",
		"847",
		"848",
		"850",
		"856",
		"857",
		"858",
		"859",
		"860",
		"862",
		"863",
		"864",
		"865",
		"870",
		"872",
		"878",
		"901",
		"903",
		"904",
		"906",
		"907",
		"908",
		"909",
		"910",
		"912",
		"913",
		"914",
		"915",
		"916",
		"917",
		"918",
		"919",
		"920",
		"925",
		"928",
		"931",
		"936",
		"937",
		"940",
		"941",
		"947",
		"949",
		"952",
		"954",
		"956",
		"959",
		"970",
		"971",
		"972",
		"973",
		"975",
		"978",
		"979",
		"980",
		"984",
		"985",
		"989"
		];
		return choice(data, this.rnd);
	}


	override string locationCityPattern() {
		final switch(uniform(0, 4, this.rnd)) {
			case 0: return locationCityPrefix() ~ " " ~ personFirstName() ~ locationCitySuffix();
			case 1: return locationCityPrefix() ~ " " ~ personFirstName();
			case 2: return personFirstName() ~ locationCitySuffix();
			case 3: return personLastName() ~ locationCitySuffix();
		}
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
		"United States",
		"United States of America",
		"USA'"
		];
		return choice(data, this.rnd);
	}


	override string locationPostcodeByState() {
		final switch(uniform(0, 52, this.rnd)) {
			case 0: return "AK: '" ~ uniform(99501, 99501).to!string();
			case 1: return "AL: '" ~ uniform(35004, 35004).to!string();
			case 2: return "AR: '" ~ uniform(71601, 71601).to!string();
			case 3: return "AZ: '" ~ uniform(85001, 85001).to!string();
			case 4: return "CA: '" ~ uniform(90001, 90001).to!string();
			case 5: return "CO: '" ~ uniform(80001, 80001).to!string();
			case 6: return "CT: '0" ~ uniform(6001, 6001).to!string();
			case 7: return "DC: '" ~ uniform(20001, 20001).to!string();
			case 8: return "DE: '" ~ uniform(19701, 19701).to!string();
			case 9: return "FL: '" ~ uniform(32004, 32004).to!string();
			case 10: return "GA: '" ~ uniform(30001, 30001).to!string();
			case 11: return "HI: '" ~ uniform(96701, 96701).to!string();
			case 12: return "IA: '" ~ uniform(50001, 50001).to!string();
			case 13: return "ID: '" ~ uniform(83201, 83201).to!string();
			case 14: return "IL: '" ~ uniform(60001, 60001).to!string();
			case 15: return "IN: '" ~ uniform(46001, 46001).to!string();
			case 16: return "KS: '" ~ uniform(66002, 66002).to!string();
			case 17: return "KY: '" ~ uniform(40003, 40003).to!string();
			case 18: return "LA: '" ~ uniform(70001, 70001).to!string();
			case 19: return "MA: '0" ~ uniform(1001, 1001).to!string();
			case 20: return "MD: '" ~ uniform(20899, 20899).to!string();
			case 21: return "ME: '0" ~ uniform(3901, 3901).to!string();
			case 22: return "MI: '" ~ uniform(48001, 48001).to!string();
			case 23: return "MN: '" ~ uniform(55001, 55001).to!string();
			case 24: return "MO: '" ~ uniform(63001, 63001).to!string();
			case 25: return "MS: '" ~ uniform(38601, 38601).to!string();
			case 26: return "MT: '" ~ uniform(59001, 59001).to!string();
			case 27: return "NC: '" ~ uniform(27006, 27006).to!string();
			case 28: return "ND: '" ~ uniform(58001, 58001).to!string();
			case 29: return "NE: '" ~ uniform(68001, 68001).to!string();
			case 30: return "NH: '0" ~ uniform(3031, 3031).to!string();
			case 31: return "NJ: '0" ~ uniform(7001, 7001).to!string();
			case 32: return "NM: '" ~ uniform(87001, 87001).to!string();
			case 33: return "NV: '" ~ uniform(88901, 88901).to!string();
			case 34: return "NY: '0" ~ uniform(6390, 6390).to!string();
			case 35: return "OH: '" ~ uniform(43001, 43001).to!string();
			case 36: return "OK: '" ~ uniform(73001, 73001).to!string();
			case 37: return "OR: '" ~ uniform(97001, 97001).to!string();
			case 38: return "PA: '" ~ uniform(15001, 15001).to!string();
			case 39: return "PR: '00" ~ uniform(601, 601).to!string();
			case 40: return "RI: '0" ~ uniform(2801, 2801).to!string();
			case 41: return "SC: '" ~ uniform(29001, 29001).to!string();
			case 42: return "SD: '" ~ uniform(57001, 57001).to!string();
			case 43: return "TN: '" ~ uniform(37010, 37010).to!string();
			case 44: return "TX: '" ~ uniform(75503, 75503).to!string();
			case 45: return "UT: '" ~ uniform(84001, 84001).to!string();
			case 46: return "VA: '" ~ uniform(20040, 20040).to!string();
			case 47: return "VT: '0" ~ uniform(5001, 5001).to!string();
			case 48: return "WA: '" ~ uniform(98001, 98001).to!string();
			case 49: return "WI: '" ~ uniform(53001, 53001).to!string();
			case 50: return "WV: '" ~ uniform(24701, 24701).to!string();
			case 51: return "WY: '" ~ uniform(82001, 82001).to!string();
		}
	}

	///
	override string locationCounty() {
		auto data = [
		"Adams County",
		"Calhoun County",
		"Carroll County",
		"Clark County",
		"Clay County",
		"Crawford County",
		"Douglas County",
		"Fayette County",
		"Franklin County",
		"Grant County",
		"Greene County",
		"Hamilton County",
		"Hancock County",
		"Henry County",
		"Jackson County",
		"Jefferson County",
		"Johnson County",
		"Lake County",
		"Lawrence County",
		"Lee County",
		"Lincoln County",
		"Logan County",
		"Madison County",
		"Marion County",
		"Marshall County",
		"Monroe County",
		"Montgomery County",
		"Morgan County",
		"Perry County",
		"Pike County",
		"Polk County",
		"Scott County",
		"Union County",
		"Warren County",
		"Washington County",
		"Wayne County"
		];
		return choice(data, this.rnd);
	}

	///
	override string internetDomainSuffix() {
		auto data = [
		"com",
		"us",
		"biz",
		"info",
		"name",
		"net",
		"org'"
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

}

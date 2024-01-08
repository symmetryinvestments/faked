module faked.faker_en_ca;

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

class Faker_en_ca : Faker_en {
@safe:
	this(int seed) {
		super(seed);
	}

	override string internetDomainSuffix() {
		const string[] strs =
		[ q"{ca}", q"{com}", q"{biz}", q"{info}", q"{name}", q"{net}", q"{org}" ];

		return choice(strs, this.rnd);
	}

	override string internetFreeEmail() {
		const string[] strs =
		[ q"{gmail.com}", q"{yahoo.ca}", q"{hotmail.com}" ];

		return choice(strs, this.rnd);
	}

	override string locationCityName() {
		const string[] strs =
		[ q"{Argentia}", q"{Asbestos}", q"{Baddeck}", q"{Baie-Comeau}", q"{Bancroft}", q"{Banff}", q"{Barkerville}"
		, q"{Barrie}", q"{Bathurst}", q"{Batoche}", q"{Belleville}", q"{Beloeil}", q"{Bonavista}", q"{Borden}"
		, q"{Brampton}", q"{Brandon}", q"{Brantford}", q"{Brockville}", q"{Brooks}", q"{Burlington}"
		, q"{Burnaby}", q"{Calgary}", q"{Cambridge}", q"{Campbell River}", q"{Cap-de-la-Madeleine}"
		, q"{Caraquet}", q"{Cavendish}", q"{Chambly}", q"{Channel-Port aux Basques}", q"{Charlesbourg}"
		, q"{Charlottetown}", q"{Châteauguay}", q"{Chatham}", q"{Chatham-Kent}", q"{Chibougamau}"
		, q"{Chilliwack}", q"{Churchill}", q"{Corner Brook}", q"{Cornwall}", q"{Côte-Saint-Luc}"
		, q"{Courtenay}", q"{Cranbrook}", q"{Cumberland House}", q"{Dalhousie}", q"{Dauphin}", q"{Dawson}"
		, q"{Dawson Creek}", q"{Delta}", q"{Digby}", q"{Dorval}", q"{Edmonton}", q"{Elliot Lake}", q"{Esquimalt}"
		, q"{Estevan}", q"{Etobicoke}", q"{Ferryland}", q"{Flin Flon}", q"{Fort Erie}", q"{Fort Frances}"
		, q"{Fort McMurray}", q"{Fort Saint James}", q"{Fort Saint John}", q"{Fort Smith}", q"{Fredericton}"
		, q"{Gananoque}", q"{Gander}", q"{Gaspé}", q"{Gatineau}", q"{Glace Bay}", q"{Granby}", q"{Grand Falls–Windsor}"
		, q"{Grande Prairie}", q"{Guelph}", q"{Halifax}", q"{Hamilton}", q"{Happy Valley–Goose Bay}"
		, q"{Harbour Grace}", q"{Havre-Saint-Pierre}", q"{Hay River}", q"{Hope}", q"{Hull}", q"{Inuvik}"
		, q"{Iqaluit}", q"{Iroquois Falls}", q"{Jasper}", q"{Jonquière}", q"{Kamloops}", q"{Kapuskasing}"
		, q"{Kawartha Lakes}", q"{Kelowna}", q"{Kenora}", q"{Kildonan}", q"{Kimberley}", q"{Kingston}"
		, q"{Kirkland Lake}", q"{Kitchener}", q"{Kitimat}", q"{Kuujjuaq}", q"{La Salle}", q"{La Tuque}"
		, q"{Labrador City}", q"{Lachine}", q"{Lake Louise}", q"{Langley}", q"{Laurentian Hills}"
		, q"{Laval}", q"{Lethbridge}", q"{Lévis}", q"{Liverpool}", q"{London}", q"{Longueuil}", q"{Louisbourg}"
		, q"{Lunenburg}", q"{Magog}", q"{Matane}", q"{Medicine Hat}", q"{Midland}", q"{Miramichi}", q"{Mississauga}"
		, q"{Moncton}", q"{Montreal}", q"{Montréal-Nord}", q"{Moose Factory}", q"{Moose Jaw}", q"{Moosonee}"
		, q"{Nanaimo}", q"{Nelson}", q"{New Westminster}", q"{Niagara Falls}", q"{Niagara-on-the-Lake}"
		, q"{North Bay}", q"{North Vancouver}", q"{North York}", q"{Oak Bay}", q"{Oakville}", q"{Orillia}"
		, q"{Oshawa}", q"{Ottawa}", q"{Parry Sound}", q"{Penticton}", q"{Percé}", q"{Perth}", q"{Peterborough}"
		, q"{Picton}", q"{Pictou}", q"{Placentia}", q"{Port Colborne}", q"{Port Hawkesbury}", q"{Port-Cartier}"
		, q"{Powell River}", q"{Prince Albert}", q"{Prince George}", q"{Prince Rupert}", q"{Quebec}"
		, q"{Quesnel}", q"{Red Deer}", q"{Regina}", q"{Revelstoke}", q"{Rimouski}", q"{Rossland}", q"{Rouyn-Noranda}"
		, q"{Saguenay}", q"{Saint Albert}", q"{Saint Anthony}", q"{Saint Boniface}", q"{Saint Catharines}"
		, q"{Saint John}", q"{Saint Thomas}", q"{Saint-Eustache}", q"{Saint-Hubert}", q"{Sainte-Anne-de-Beaupré}"
		, q"{Sainte-Foy}", q"{Sainte-Thérèse}", q"{Sarnia-Clearwater}", q"{Saskatoon}", q"{Sault Sainte Marie}"
		, q"{Scarborough}", q"{Sept-Îles}", q"{Sherbrooke}", q"{Simcoe}", q"{Sorel-Tracy}", q"{Souris}"
		, q"{Springhill}", q"{St. John’s}", q"{Stratford}", q"{Sudbury}", q"{Summerside}", q"{Swan River}"
		, q"{Sydney}", q"{Temiskaming Shores}", q"{Thompson}", q"{Thorold}", q"{Thunder Bay}", q"{Timmins}"
		, q"{Toronto}", q"{Trail}", q"{Trenton}", q"{Trois-Rivières}", q"{Tuktoyaktuk}", q"{Uranium City}"
		, q"{Val-d’Or}", q"{Vancouver}", q"{Vernon}", q"{Victoria}", q"{Wabana}", q"{Waskaganish}"
		, q"{Waterloo}", q"{Watson Lake}", q"{Welland}", q"{West Nipissing}", q"{West Vancouver}"
		, q"{White Rock}", q"{Whitehorse}", q"{Windsor}", q"{Winnipeg}", q"{Woodstock}", q"{Yarmouth}"
		, q"{Yellowknife}", q"{York}", q"{York Factory}" ];

		return choice(strs, this.rnd);
	}

	override string locationCityPattern() {
		final switch(uniform(0, 5, this.rnd)) {
			case 0: return locationCityPrefix() ~ " " ~ personFirstName() ~ locationCitySuffix();
			case 1: return locationCityPrefix() ~ " " ~ personFirstName();
			case 2: return personFirstName() ~ locationCitySuffix();
			case 3: return personLastName() ~ locationCitySuffix();
			case 4: return locationCityName();
		}
		return "";
	}

	override string locationDefaultCountry() {
		const string[] strs =
		[ q"{Canada}" ];

		return choice(strs, this.rnd);
	}

	override string locationPostcode() {
		const string[] strs =
		[ q"{A#? #?#}", q"{B#? #?#}", q"{C#? #?#}", q"{E#? #?#}", q"{G#? #?#}", q"{H#? #?#}", q"{J#? #?#}"
		, q"{K#? #?#}", q"{L#? #?#}", q"{M#? #?#}", q"{N#? #?#}", q"{P#? #?#}", q"{R#? #?#}", q"{S#? #?#}"
		, q"{T#? #?#}", q"{V#? #?#}", q"{X#? #?#}", q"{Y#? #?#}" ];

		return numberBuild(choice(strs, this.rnd));
	}

	override string locationState() {
		const string[] strs =
		[ q"{Alberta}", q"{British Columbia}", q"{Manitoba}", q"{New Brunswick}", q"{Newfoundland and Labrador}"
		, q"{Nova Scotia}", q"{Northwest Territories}", q"{Nunavut}", q"{Ontario}", q"{Prince Edward Island}"
		, q"{Quebec}", q"{Saskatchewan}", q"{Yukon}" ];

		return choice(strs, this.rnd);
	}

	override string locationStateAbbr() {
		const string[] strs =
		[ q"{AB}", q"{BC}", q"{MB}", q"{NB}", q"{NL}", q"{NS}", q"{NU}", q"{NT}", q"{ON}", q"{PE}", q"{QC}", q"{SK}", q"{YT}" ];

		return choice(strs, this.rnd);
	}

	override string locationStreetPattern() {
		final switch(uniform(0, 2, this.rnd)) {
			case 0: return personFirstName() ~ " " ~ locationStreetSuffix();
			case 1: return personLastName() ~ " " ~ locationStreetSuffix();
		}
		return "";
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

	override string phoneNumberFormats() {
		const string[] strs =
		[ q"{!##-!##-####}", q"{(!##)!##-####}", q"{!##.!##.####}", q"{1-!##-###-####}", q"{!##-!##-#### x###}"
		, q"{(!##)!##-#### x###}", q"{1-!##-!##-#### x###}", q"{!##.!##.#### x###}", q"{!##-!##-#### x####}"
		, q"{(!##)!##-#### x####}", q"{1-!##-!##-#### x####}", q"{!##.!##.#### x####}", q"{!##-!##-#### x#####}"
		, q"{(!##)!##-#### x#####}", q"{1-!##-!##-#### x#####}", q"{!##.!##.#### x#####}" ];

		return numberBuild(choice(strs, this.rnd));
	}

}

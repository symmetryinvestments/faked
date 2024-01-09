module faked.faker_en_hk;

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

class Faker_en_hk : Faker_en {
@safe:
	this(int seed) {
		super(seed);
	}

	override string companySuffix() {
		const string[] strs =
		[ q"{Ltd.}", q"{Co. Ltd.}" ];

		return choice(strs, this.rnd);
	}

	override string internetDomainSuffix() {
		const string[] strs =
		[ q"{com}", q"{hk}", q"{com.hk}", q"{org.hk}" ];

		return choice(strs, this.rnd);
	}

	override string locationBuildingNumber() {
		const string[] strs =
		[ q"{###}", q"{##}", q"{#}" ];

		return numberBuild(choice(strs, this.rnd));
	}

	override string locationCityName() {
		const string[] strs =
		[ q"{Aberdeen}", q"{Ap Lei Chau}", q"{Causeway Bay}", q"{Chai Wan}", q"{Cheung Chau}", q"{Cheung Fat}"
		, q"{Cheung Sha Wan}", q"{Choi Hung Chuen}", q"{Choi Ming}", q"{Chuk Yuen}", q"{Cyberport}"
		, q"{Discovery Bay}", q"{Fairview Park}", q"{Fanling}", q"{Fo Tan}", q"{Fu Shan}", q"{Fu Shin}"
		, q"{Fu Tai}", q"{Happy Valley}", q"{Heng Fa Chuen}", q"{Heng On}", q"{Hin Keng}", q"{Ho Man Tin}"
		, q"{Hung Hom Bay}", q"{Kam Tai}", q"{Kam Tin}", q"{Kennedy Town}", q"{Kowloon}", q"{Kowloon Bay}"
		, q"{Kowloon Central}", q"{Kowloon City}", q"{Kowloon East}", q"{Kwai Chung}", q"{Kwai Fong}"
		, q"{Kwai Shing}", q"{Kwong Yuen}", q"{Kwun Tong}", q"{Lai King}", q"{Lai Kok}", q"{Lam Tin}"
		, q"{Lamma}", q"{Lee On}", q"{Lei Muk Shue}", q"{Lei Tung}", q"{Leung King}", q"{Lok Fu}", q"{Ma On Shan}"
		, q"{Mei Foo Sun Chuen}", q"{Mei Lam}", q"{Mong Kok}", q"{Mui Wo}", q"{Ngau Chi Wan}", q"{Ngau Tau Kok}"
		, q"{Oi Man}", q"{Peak}", q"{Peng Chau}", q"{Po Lam}", q"{Pok Fu Lam}", q"{Repulse Bay}", q"{Sai Kung}"
		, q"{Sai Ying Pun}", q"{San Tin}", q"{Sau Mau Ping}", q"{Sha Kok}", q"{Sha Tau Kok}", q"{Sha Tin}"
		, q"{Sham Shui Po}", q"{Shau Kei Wan}", q"{Shek Kip Mei}", q"{Shek Lei}", q"{Shek Wai Kok}"
		, q"{Shek Wu Hui}", q"{Sheung Tak}", q"{Sheung Wan}", q"{Shun Lee}", q"{Siu Sai Wan}", q"{So Uk}"
		, q"{Stanley}", q"{Sun Chui}", q"{Tai Hing}", q"{Tai Kok Tsui}", q"{Tai Koo Shing}", q"{Tai O}"
		, q"{Tai Po}", q"{Tin Yiu}", q"{Tin Yuet}", q"{To Kwa Wan}", q"{Tsat Tsz Mui}", q"{Tseung Kwan O}"
		, q"{Tsim Sha Tsui}", q"{Tsing Yi}", q"{Tsuen Wan}", q"{Tsz Wan Shan}", q"{Tuen Mun}", q"{Tung Chung}"
		, q"{Wah Fu}", q"{Wah Ming}", q"{Wan Chai}", q"{Wan Tau Tong}", q"{Wo Che}", q"{Wong Tai Sin}"
		, q"{Yau Tong}", q"{Yau Yat Tsuen}", q"{Yuen Long}" ];

		return choice(strs, this.rnd);
	}

	override string locationCityPattern() {
		switch(uniform(0, 1, this.rnd)) {
			case 0: return locationCityName();
			default: return "";
		}
	}

	override string locationDefaultCountry() {
		const string[] strs =
		[ q"{Hong Kong}" ];

		return choice(strs, this.rnd);
	}

	override string locationState() {
		const string[] strs =
		[ q"{Hong Kong Island}", q"{Kowloon}", q"{New Territories}" ];

		return choice(strs, this.rnd);
	}

	override string locationStateAbbr() {
		const string[] strs =
		[ q"{HK}", q"{KLN}", q"{NT}" ];

		return choice(strs, this.rnd);
	}

	override string locationStreetPattern() {
		switch(uniform(0, 2, this.rnd)) {
			case 0: return locationStreetEnglishPart() ~ " " ~ locationStreetSuffix();
			case 1: return locationStreetCantonesePart() ~ " " ~ locationStreetCantonesePart() ~ " " ~ locationStreetSuffix();
			default: return "";
		}
	}

	override string locationStreetSuffix() {
		const string[] strs =
		[ q"{Street}", q"{Road}", q"{Lane}", q"{Path}", q"{Terrace}", q"{Avenue}", q"{Drive}", q"{Crescent}"
		, q"{Court}" ];

		return choice(strs, this.rnd);
	}

	string locationStreetCantonesePart() {
		const string[] strs =
		[ q"{Wan}", q"{On}", q"{Tai}", q"{Man}", q"{Fung}", q"{Cheung}", q"{Tung}", q"{Hing}", q"{Po}", q"{Wah}", q"{Tak}"
		, q"{Shing}", q"{Lung}", q"{Yuen}", q"{Wing}", q"{Hong}", q"{Yip}", q"{King}", q"{Kwong}", q"{Hoi}", q"{Ming}"
		, q"{Wa}", q"{Lok}", q"{Yan}", q"{Wai}", q"{Chi}", q"{Fuk}", q"{Lai}", q"{Lee}", q"{Fu}", q"{Tin}", q"{Kai}"
		, q"{Sai}", q"{Shun}", q"{Ping}", q"{Yee}", q"{Wo}", q"{Chung}", q"{Hang}", q"{Ning}", q"{Wong}", q"{Yue}"
		, q"{Choi}", q"{Wang}", q"{Ching}", q"{Sau}", q"{Shan}", q"{Tsui}", q"{Tau}", q"{Sheung}", q"{Lam}", q"{Fat}"
		, q"{Hung}", q"{Chuk}", q"{Shek}", q"{Kok}", q"{Cheong}", q"{Fong}", q"{Nam}", q"{Lei}", q"{Yu}", q"{Mei}"
		, q"{Pak}", q"{Fai}", q"{Kwai}", q"{Sing}", q"{Kung}", q"{Chau}", q"{Tong}", q"{San}", q"{Chiu}", q"{Chun}"
		, q"{Yin}", q"{Yuk}", q"{Ting}", q"{Kam}", q"{Lun}", q"{Oi}" ];

		return choice(strs, this.rnd);
	}

	string locationStreetEnglishPart() {
		const string[] strs =
		[ q"{Aldrich}", q"{Arran}", q"{Austin}", q"{Baker}", q"{Battery}", q"{Bel-Air}", q"{Bonham}", q"{Boundary}"
		, q"{Bowen}", q"{Breezy}", q"{Caine}", q"{Cameron}", q"{Canal}", q"{Cape}", q"{Chatham}", q"{Church}"
		, q"{College}", q"{Comet}", q"{Connaught}", q"{Cornwall}", q"{Cox's}", q"{Cross}", q"{Douglas}"
		, q"{Dragon}", q"{Eastern}", q"{Electric}", q"{Expo}", q"{Findlay}", q"{First}", q"{Garden}", q"{Gillies}"
		, q"{Greig}", q"{Hospital}", q"{Jardine's}", q"{Jordan}", q"{Kennedy}", q"{Kimberley}", q"{Leighton}"
		, q"{Maidstone}", q"{Maple}", q"{Marsh}", q"{Monmouth}", q"{Oaklands}", q"{Peel}", q"{Poplar}"
		, q"{Rose}", q"{Second}", q"{Seymour}", q"{Stewart}", q"{Third}", q"{Village}", q"{Water}", q"{Waterloo}"
		, q"{Wylie}" ];

		return choice(strs, this.rnd);
	}

	override string personLastName() {
		const string[] strs =
		[ q"{Au}", q"{Chan}", q"{Chang}", q"{Chen}", q"{Cheng}", q"{Cheuk}", q"{Cheung}", q"{Chiu}", q"{Cho}", q"{Choi}"
		, q"{Chong}", q"{Chow}", q"{Choy}", q"{Chu}", q"{Chui}", q"{Chung}", q"{Fan}", q"{Fok}", q"{Fu}", q"{Fung}"
		, q"{He}", q"{Ho}", q"{Hong}", q"{Hu}", q"{Huang}", q"{Hui}", q"{Ip}", q"{Kan}", q"{Keung}", q"{Ko}", q"{Kong}"
		, q"{Kwan}", q"{Kwok}", q"{Kwong}", q"{Lai}", q"{Lam}", q"{Lau}", q"{Law}", q"{Lee}", q"{Leung}", q"{Li}"
		, q"{Liang}", q"{Lin}", q"{Ling}", q"{Liu}", q"{Lu}", q"{Lui}", q"{Luk}", q"{Lung}", q"{Ma}", q"{Mak}", q"{Man}"
		, q"{Mok}", q"{Ng}", q"{Ngai}", q"{Pang}", q"{Poon}", q"{Pun}", q"{Shiu}", q"{Shum}", q"{Sin}", q"{Siu}"
		, q"{So}", q"{Suen}", q"{Sun}", q"{Sze}", q"{Szeto}", q"{Tai}", q"{Tam}", q"{Tan}", q"{Tang}", q"{Tong}"
		, q"{Tsang}", q"{Tse}", q"{Tsoi}", q"{Tsui}", q"{Wan}", q"{Wang}", q"{Wong}", q"{Wu}", q"{Xu}", q"{Yan}"
		, q"{Yang}", q"{Yeung}", q"{Yim}", q"{Yin}", q"{Yip}", q"{Yiu}", q"{Yu}", q"{Yue}", q"{Yuen}", q"{Yung}"
		, q"{Zhang}", q"{Zhao}", q"{Zheng}", q"{Zhou}", q"{Zhu}" ];

		return choice(strs, this.rnd);
	}

	override string personLastNamePattern() {
		const int rndInt = uniform(0, 1, this.rnd);

		if(rndInt >= 0 && rndInt < 1) {
			return personLastName();
		}

		return "";
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
		[ q"{2### ####}", q"{3### ####}", q"{4### ####}", q"{5### ####}", q"{6### ####}", q"{7### ####}"
		, q"{9### ####}" ];

		return numberBuild(choice(strs, this.rnd));
	}

}

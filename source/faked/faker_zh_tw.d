module faked.faker_zh_tw;

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

class Faker_zh_tw : Faker_en {
@safe:
	this(int seed) {
		super(seed);
	}

	override string dateMonthWide() {
		const string[] strs =
		[ q"{1月}", q"{2月}", q"{3月}", q"{4月}", q"{5月}", q"{6月}", q"{7月}", q"{8月}", q"{9月}", q"{10月}"
		, q"{11月}", q"{12月}" ];

		return choice(strs, this.rnd);
	}

	override string dateMonthAbbr() {
		const string[] strs =
		[ q"{1月}", q"{2月}", q"{3月}", q"{4月}", q"{5月}", q"{6月}", q"{7月}", q"{8月}", q"{9月}", q"{10月}"
		, q"{11月}", q"{12月}" ];

		return choice(strs, this.rnd);
	}

	override string dateWeekdayWide() {
		const string[] strs =
		[ q"{星期天}", q"{星期一}", q"{星期二}", q"{星期三}", q"{星期四}", q"{星期五}"
		, q"{星期六}" ];

		return choice(strs, this.rnd);
	}

	override string dateWeekdayAbbr() {
		const string[] strs =
		[ q"{週日}", q"{週一}", q"{週二}", q"{週三}", q"{週四}", q"{週五}", q"{週六}" ];

		return choice(strs, this.rnd);
	}

	override string locationBuildingNumber() {
		const string[] strs =
		[ q"{####}", q"{###}", q"{##}", q"{#}" ];

		return numberBuild(choice(strs, this.rnd));
	}

	override string locationCityPattern() {
		switch(uniform(0, 1, this.rnd)) {
			case 0: return locationCityPrefix() ~ locationCitySuffix();
		}
		return "";
	}

	override string locationCityPrefix() {
		const string[] strs =
		[ q"{臺北}", q"{新北}", q"{桃園}", q"{臺中}", q"{臺南}", q"{高雄}", q"{基隆}", q"{新竹}"
		, q"{嘉義}", q"{苗栗}", q"{彰化}", q"{南投}", q"{雲林}", q"{屏東}", q"{宜蘭}", q"{花蓮}"
		, q"{臺東}", q"{澎湖}", q"{金門}", q"{連江}" ];

		return choice(strs, this.rnd);
	}

	override string locationCitySuffix() {
		const string[] strs =
		[ q"{縣}", q"{市}" ];

		return choice(strs, this.rnd);
	}

	override string locationDefaultCountry() {
		const string[] strs =
		[ q"{Taiwan (R.O.C.)}" ];

		return choice(strs, this.rnd);
	}

	override string locationPostcode() {
		const string[] strs =
		[ q"{######}" ];

		return numberBuild(choice(strs, this.rnd));
	}

	override string locationState() {
		const string[] strs =
		[ q"{福建省}", q"{台灣省}" ];

		return choice(strs, this.rnd);
	}

	override string locationStateAbbr() {
		const string[] strs =
		[ q"{北}", q"{新北}", q"{桃}", q"{中}", q"{南}", q"{高}", q"{基}", q"{竹市}", q"{嘉市}", q"{竹縣}"
		, q"{苗}", q"{彰}", q"{投}", q"{雲}", q"{嘉縣}", q"{宜}", q"{花}", q"{東}", q"{澎}", q"{金}"
		, q"{馬}" ];

		return choice(strs, this.rnd);
	}

	override string locationStreetAddress() {
		const LocationStreetAddressEnum[] enums = [ LocationStreetAddressEnum.normal, LocationStreetAddressEnum.full ];
		return locationStreetAddress(choice(enums, this.rnd));
	}

	override string locationStreetAddress(LocationStreetAddressEnum which) {
		switch(which) {
			case LocationStreetAddressEnum.normal: return locationStreet() ~ locationBuildingNumber() ~ "號";
			case LocationStreetAddressEnum.full: return locationStreet() ~ locationBuildingNumber() ~ "號 " ~ locationSecondaryAddress();
		}
		return "";
	}

	override string locationStreetPattern() {
		switch(uniform(0, 1, this.rnd)) {
			case 0: return personLastName() ~ locationStreetSuffix();
		}
		return "";
	}

	override string locationStreetSuffix() {
		const string[] strs =
		[ q"{街}", q"{路}", q"{北路}", q"{南路}", q"{東路}", q"{西路}" ];

		return choice(strs, this.rnd);
	}

	override string personFemaleFirstName() {
		const string[] strs =
		[ q"{俊馳}", q"{凱瑞}", q"{博濤}", q"{嘉懿}", q"{子涵}", q"{子騫}", q"{子默}", q"{思淼}"
		, q"{懿軒}", q"{擎蒼}", q"{旭堯}", q"{昊焱}", q"{晟睿}", q"{智宸}", q"{智淵}", q"{曉博}"
		, q"{曉嘯}", q"{楷瑞}", q"{樂駒}", q"{瀟然}", q"{炫明}", q"{煜城}", q"{煜祺}", q"{熠彤}"
		, q"{燁磊}", q"{燁華}", q"{燁霖}", q"{瑾瑜}", q"{睿淵}", q"{立軒}", q"{笑愚}", q"{聰健}"
		, q"{苑博}", q"{越彬}", q"{鈺軒}", q"{錦程}", q"{靖琪}", q"{風華}", q"{鶴軒}", q"{鷺洋}"
		, q"{黎昕}" ];

		return choice(strs, this.rnd);
	}

	override string personFirstName() {
		const string[] strs =
		[ q"{俊馳}", q"{修傑}", q"{修潔}", q"{偉宸}", q"{偉澤}", q"{偉祺}", q"{偉誠}", q"{健柏}"
		, q"{健雄}", q"{凱瑞}", q"{博文}", q"{博濤}", q"{博超}", q"{君浩}", q"{哲瀚}", q"{嘉懿}"
		, q"{嘉熙}", q"{天宇}", q"{天磊}", q"{天翊}", q"{子涵}", q"{子軒}", q"{子騫}", q"{子默}"
		, q"{展鵬}", q"{峻熙}", q"{建輝}", q"{弘文}", q"{志強}", q"{志澤}", q"{思淼}", q"{思源}"
		, q"{思聰}", q"{思遠}", q"{懿軒}", q"{振家}", q"{擎宇}", q"{擎蒼}", q"{文博}", q"{文昊}"
		, q"{文軒}", q"{旭堯}", q"{昊天}", q"{昊強}", q"{昊焱}", q"{昊然}", q"{明哲}", q"{明杰}"
		, q"{明軒}", q"{明輝}", q"{晉鵬}", q"{晟睿}", q"{智宸}", q"{智淵}", q"{智輝}", q"{曉博}"
		, q"{曉嘯}", q"{梓晨}", q"{楷瑞}", q"{榮軒}", q"{樂駒}", q"{正豪}", q"{浩宇}", q"{浩然}"
		, q"{浩軒}", q"{澤洋}", q"{瀟然}", q"{炎彬}", q"{炫明}", q"{煜城}", q"{煜祺}", q"{熠彤}"
		, q"{燁偉}", q"{燁磊}", q"{燁華}", q"{燁霖}", q"{瑞霖}", q"{瑾瑜}", q"{皓軒}", q"{睿淵}"
		, q"{立果}", q"{立誠}", q"{立軒}", q"{立輝}", q"{笑愚}", q"{紹輝}", q"{紹齊}", q"{耀傑}"
		, q"{聰健}", q"{胤祥}", q"{致遠}", q"{苑博}", q"{語堂}", q"{越彬}", q"{越澤}", q"{遠航}"
		, q"{金鑫}", q"{鈺軒}", q"{錦程}", q"{鑫磊}", q"{鑫鵬}", q"{雨澤}", q"{雪松}", q"{靖琪}"
		, q"{風華}", q"{鴻濤}", q"{鴻煊}", q"{鵬濤}", q"{鵬煊}", q"{鵬飛}", q"{鶴軒}", q"{鷺洋}"
		, q"{黎昕}" ];

		return choice(strs, this.rnd);
	}

	override string personLastName() {
		const string[] strs =
		[ q"{王}", q"{李}", q"{張}", q"{劉}", q"{陳}", q"{楊}", q"{黃}", q"{吳}", q"{趙}", q"{週}", q"{徐}"
		, q"{孫}", q"{馬}", q"{朱}", q"{胡}", q"{林}", q"{郭}", q"{何}", q"{高}", q"{羅}", q"{鄭}", q"{梁}"
		, q"{謝}", q"{宋}", q"{唐}", q"{許}", q"{鄧}", q"{馮}", q"{韓}", q"{曹}", q"{曾}", q"{彭}", q"{蕭}"
		, q"{蔡}", q"{潘}", q"{田}", q"{董}", q"{袁}", q"{於}", q"{餘}", q"{葉}", q"{蔣}", q"{杜}", q"{蘇}"
		, q"{魏}", q"{程}", q"{呂}", q"{丁}", q"{沈}", q"{任}", q"{姚}", q"{盧}", q"{傅}", q"{鐘}", q"{姜}"
		, q"{崔}", q"{譚}", q"{廖}", q"{範}", q"{汪}", q"{陸}", q"{金}", q"{石}", q"{戴}", q"{賈}", q"{韋}"
		, q"{夏}", q"{邱}", q"{方}", q"{侯}", q"{鄒}", q"{熊}", q"{孟}", q"{秦}", q"{白}", q"{江}", q"{閻}"
		, q"{薛}", q"{尹}", q"{段}", q"{雷}", q"{黎}", q"{史}", q"{龍}", q"{陶}", q"{賀}", q"{顧}", q"{毛}"
		, q"{郝}", q"{龔}", q"{邵}", q"{萬}", q"{錢}", q"{嚴}", q"{賴}", q"{覃}", q"{洪}", q"{武}", q"{莫}"
		, q"{孔}" ];

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
		[ q"{修傑}", q"{修潔}", q"{偉宸}", q"{偉澤}", q"{偉祺}", q"{偉誠}", q"{健柏}", q"{健雄}"
		, q"{博文}", q"{博超}", q"{君浩}", q"{哲瀚}", q"{嘉熙}", q"{天宇}", q"{天磊}", q"{天翊}"
		, q"{子軒}", q"{展鵬}", q"{峻熙}", q"{建輝}", q"{弘文}", q"{志強}", q"{志澤}", q"{思源}"
		, q"{思聰}", q"{思遠}", q"{振家}", q"{擎宇}", q"{文博}", q"{文昊}", q"{文軒}", q"{昊天}"
		, q"{昊強}", q"{昊然}", q"{明哲}", q"{明杰}", q"{明軒}", q"{明輝}", q"{晉鵬}", q"{智輝}"
		, q"{梓晨}", q"{榮軒}", q"{正豪}", q"{浩宇}", q"{浩然}", q"{浩軒}", q"{澤洋}", q"{炎彬}"
		, q"{燁偉}", q"{瑞霖}", q"{皓軒}", q"{立果}", q"{立誠}", q"{立輝}", q"{紹輝}", q"{紹齊}"
		, q"{耀傑}", q"{胤祥}", q"{致遠}", q"{語堂}", q"{越澤}", q"{遠航}", q"{金鑫}", q"{鑫磊}"
		, q"{鑫鵬}", q"{雨澤}", q"{雪松}", q"{鴻濤}", q"{鴻煊}", q"{鵬濤}", q"{鵬煊}", q"{鵬飛}" ];

		return choice(strs, this.rnd);
	}

	override string personName() {
		const int rndInt = uniform(0, 1, this.rnd);

		if(rndInt >= 0 && rndInt < 1) {
			return personLastName() ~ personFirstName();
		}

		return "";
	}

	override string phoneNumberFormats() {
		const string[] strs =
		[ q"{0#-#######}", q"{02-########}", q"{09##-######}" ];

		return numberBuild(choice(strs, this.rnd));
	}

}

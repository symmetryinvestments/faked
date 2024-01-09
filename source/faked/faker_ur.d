module faked.faker_ur;

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

class Faker_ur : Faker_en {
@safe:
	this(int seed) {
		super(seed);
	}

	override string animalBear() {
		const string[] strs =
		[ q"{پانڈا}", q"{بھالو}", q"{امریکی کالا بھالو}", q"{ایشیایٰ کالا بھالو}"
		, q"{بھورا بھالو}" ];

		return choice(strs, this.rnd);
	}

	override string animalCow() {
		const string[] strs =
		[ q"{گائے}", q"{نیلی گاٗیے}", q"{امریکی گاٗیے}" ];

		return choice(strs, this.rnd);
	}

	override string animalCrocodilia() {
		const string[] strs =
		[ q"{امریکی گڑیال}", q"{آسٹریلیائ تازہ پانی کا گڑیال}"
		, q"{نیل گڑیال}", q"{مشرقی افریقی گڑیال}", q"{نمکین پانی کا گڑیال}"
		, q"{گڑیال}" ];

		return choice(strs, this.rnd);
	}

	override string animalInsect() {
		const string[] strs =
		[ q"{شہد کی مکھی}", q"{مکھی}", q"{چیونٹی}" ];

		return choice(strs, this.rnd);
	}

	override string animalLion() {
		const string[] strs =
		[ q"{ایشیایْ شیر}", q"{مشرقی افریقی شیر}", q"{شمالی مغربی کانگو کا شیر}" ];

		return choice(strs, this.rnd);
	}

	override string appAuthor() {
		switch(uniform(0, 2, this.rnd)) {
			case 0: return personName();
			case 1: return companyName();
		}
		return "";
	}

	override string appName() {
		const string[] strs =
		[ q"{اوقات نماز}", q"{قسط حساب}", q"{نقشہ نگار}", q"{دبیٗ وقت}"
		, q"{ڈالر رپیہ}", q"{دراز}", q"{پاک وھیلز}", q"{واٹس ایپ}" ];

		return choice(strs, this.rnd);
	}

	override string appVersion() {
		const string[] strs =
		[ q"{0.#.#}", q"{0.##}", q"{#.##}", q"{#.#}", q"{#.#.#}" ];

		return numberBuild(choice(strs, this.rnd));
	}

	override string cellPhoneFormats() {
		const string[] strs =
		[ q"{+92 ###-###-####}", q"{03## ### ####}", q"{03#########}" ];

		return numberBuild(choice(strs, this.rnd));
	}

	override string commerceProductNameAdjective() {
		const string[] strs =
		[ q"{چھوٹا}", q"{آرامدہ}", q"{ہوشیار}", q"{خوبصورت}", q"{بیترین}" ];

		return choice(strs, this.rnd);
	}

	override string commerceProductNameMaterial() {
		const string[] strs =
		[ q"{لوہا}", q"{لکڑہ}", q"{کنکریٹ}", q"{پلاسٹک}", q"{رویٰ}", q"{گرانایٹ}"
		, q"{ربڑ}", q"{دھات}", q"{نرم}", q"{تازہ}", q"{جم شدہ}" ];

		return choice(strs, this.rnd);
	}

	override string commerceProductNameProduct() {
		const string[] strs =
		[ q"{کرسہ}", q"{گاڑی}", q"{کمپیوٹر}", q"{کی بورڈ}", q"{ماوٰس}", q"{بایٰک}"
		, q"{بال}", q"{دستانے}", q"{پتلون}", q"{قمیص}", q"{میز}", q"{جوتے}"
		, q"{ٹوپی}", q"{تولیہ}", q"{صابن}", q"{مچھلی}", q"{مرغ}", q"{پنیر}"
		, q"{سلاد}", q"{سیخ کباب}", q"{پاپڑ}" ];

		return choice(strs, this.rnd);
	}

	override string commerceDepartment() {
		const string[] strs =
		[ q"{کتابیہ}", q"{فلم}", q"{گانی}", q"{کھیل}", q"{بجلی}", q"{کمپیوٹر}"
		, q"{گھر}", q"{باغ}", q"{اوزار}", q"{اشیاء}", q"{صحر}", q"{خوبصورتی}"
		, q"{کھلونہ}", q"{بچے}", q"{کپڑے}", q"{جوتے}", q"{گاڑیاں}", q"{کارغانے}" ];

		return choice(strs, this.rnd);
	}

	override string dateMonthWide() {
		const string[] strs =
		[ q"{جنوری}", q"{فروری}", q"{مارچ}", q"{اپریل}", q"{مئ}", q"{جون}", q"{جولائ}"
		, q"{اگست}", q"{ستمبر}", q"{اکتوبر}", q"{نومبر}", q"{دسمبر}" ];

		return choice(strs, this.rnd);
	}

	override string dateWeekdayWide() {
		const string[] strs =
		[ q"{اتور}", q"{پیر}", q"{منگل}", q"{بدھ}", q"{جمعرات}", q"{جمعہ}", q"{ہفتہ}" ];

		return choice(strs, this.rnd);
	}

	override string financeAccountType() {
		const string[] strs =
		[ q"{Savings}", q"{Current}" ];

		return choice(strs, this.rnd);
	}

	override string financeTransactionType() {
		const string[] strs =
		[ q"{deposit}", q"{withdrawal}", q"{payment}", q"{invoice}" ];

		return choice(strs, this.rnd);
	}

	override string locationBuildingNumber() {
		const string[] strs =
		[ q"{#####}", q"{####}", q"{###}" ];

		return numberBuild(choice(strs, this.rnd));
	}

	override string locationCityName() {
		const string[] strs =
		[ q"{اسلام آباد}", q"{پشاور}", q"{لاہور}", q"{کراچی}", q"{ملتان}"
		, q"{نوشہرہ}", q"{مردان}", q"{چارسدہ}", q"{گوجرنوالہ}", q"{گجرات}"
		, q"{منگورہ}", q"{ملاکنڈ}", q"{درگیٗ}", q"{حیدرآباد}", q"{ایبٹ آباد}"
		, q"{ناران}", q"{فیصل آباد}", q"{راولپنڈی}", q"{کوئٹہ}", q"{بہاولپور}"
		, q"{سیالکوٹ}", q"{لاڑکانہ}", q"{رحیم یار خان}", q"{قصُور}"
		, q"{نواب شاہ}", q"{چنیوٹ}", q"{حافظ آباد}", q"{کوھاٹ}", q"{جہلم}"
		, q"{وارسک}", q"{خانپور}", q"{حب}", q"{دسکہ}", q"{خزدار}", q"{مری}"
		, q"{گوجرہ}", q"{دادو}", q"{چشتیاں}", q"{ٹیکسلا}", q"{کبل}", q"{گوٹکی}"
		, q"{نارو وال}", q"{گوادر}" ];

		return choice(strs, this.rnd);
	}

	override string locationCityPattern() {
		switch(uniform(0, 5, this.rnd)) {
			case 0: return locationCityPrefix() ~ " " ~ personFirstName() ~ locationCitySuffix();
			case 1: return locationCityPrefix() ~ " " ~ personFirstName();
			case 2: return personFirstName() ~ locationCitySuffix();
			case 3: return personLastName() ~ locationCitySuffix();
			case 4: return locationCityName();
		}
		return "";
	}

	override string locationCityPrefix() {
		const string[] strs =
		[ q"{مشرق}", q"{مغرب}", q"{شمال}", q"{جنوب}", q"{نیا}", q"{جھیل}", q"{بندرگاہ}" ];

		return choice(strs, this.rnd);
	}

	override string locationCitySuffix() {
		const string[] strs =
		[ q"{ٹاوْن}" ];

		return choice(strs, this.rnd);
	}

	override string locationCountry() {
		const string[] strs =
		[ q"{افغانستان}", q"{البانیا}", q"{الجزایر}", q"{امریکی سموا}"
		, q"{اندورہ}", q"{انگولا}", q"{انگویلیا}", q"{انتارتیکا}"
		, q"{انتیگا اور باربئدا}", q"{ارجنٹاینا}", q"{ارمینیا}"
		, q"{اروبا}", q"{آسٹریلیلا}", q"{آسٹریا}", q"{آزربایجان}"
		, q"{بہامس}", q"{بہرین}", q"{بنگلہ دیش}", q"{باربادوس}", q"{بیلاروس}"
		, q"{بیلجیم}", q"{بیلیز}", q"{بینن}", q"{برمودہ}", q"{بھوٹان}"
		, q"{بولویا}", q"{بوسنیا و ہرزگووینیا}", q"{بوسٹوانا}"
		, q"{برازیل}", q"{برونوئ داراسلام}", q"{بلغاریہ}", q"{برونڈی}"
		, q"{کمبوڈیا}", q"{کمروین}", q"{کینیڈا}", q"{سینٹرل افریقی ریاست}"
		, q"{چاڈ}", q"{چلے}", q"{چائنا}", q"{کولمبیا}", q"{کومورس}", q"{کانگو}"
		, q"{کوسٹا ریکا}", q"{کروایشیا}", q"{کوبا}", q"{چک ریاست}"
		, q"{ڈینمارک}", q"{جبوتی}", q"{ڈومینک ریاست}", q"{اکواڈور}"
		, q"{مصر}", q"{ال سلوادور}", q"{ایرٹریا}", q"{استونیا}", q"{اتھوپیا}"
		, q"{فی جی}", q"{فن لینڈ}", q"{فرانس}", q"{گابون}", q"{گامبیہ}"
		, q"{جیورجیہ}", q"{جرمنی}", q"{گانا}", q"{جبرالٹر}", q"{یونان}"
		, q"{گام}", q"{واتیکن}", q"{ہونڈورس}", q"{ہانگ کانگ}", q"{ہنگری}"
		, q"{بھارت}", q"{انڈونیشیا}", q"{ایران}", q"{عراق}", q"{آئر لینڈ}"
		, q"{اٹلی}", q"{جمائکہ}", q"{جاپان}", q"{اْردن}", q"{کازخستان}"
		, q"{کینیا}", q"{کریباتی}", q"{شمالی ریاست کوریا}", q"{جنوبی ریاست کوریا}"
		, q"{کویت}", q"{لبنان}", q"{مسیڈون}", q"{مدگاسکر}", q"{ملاوی}"
		, q"{ملائشیا}", q"{مالدیپ}", q"{مالی}", q"{مالٹا}", q"{میکسیکو}"
		, q"{منگولیہ}", q"{مراکژ}", q"{میانمار}", q"{نیپال}", q"{نیدرلینڈ}"
		, q"{نیوزیلینڈ}", q"{نیکاراگوا}", q"{نائجر}", q"{نییجیریا}"
		, q"{ناروے}", q"{اومان}", q"{اسلامی جمہوریہ پاکستان}"
		, q"{پلاوؑ}", q"{فلسطین}", q"{پاناما}", q"{پرو}", q"{فلپائن}", q"{پولینڈ}"
		, q"{پرتگال}", q"{پورتو ریکو}", q"{قطر}", q"{رومانیہ}", q"{روس}"
		, q"{روانڈا}", q"{سموہ}", q"{سان مرینو}", q"{سعودیہ عربیہ}"
		, q"{سنیگال}", q"{سربیا}", q"{سے شیل}", q"{سنگاپور}", q"{سومالیہ}"
		, q"{جنوبی افرقہ}", q"{ہسپانیہ}", q"{سری لنکا}", q"{سوڈان}"
		, q"{سری نامپ}", q"{سوازی لینڈ}", q"{سویڈن}", q"{سوٹزرلینڈ}"
		, q"{شام}", q"{تائوان}", q"{تاجکستان}", q"{تنزانیہ}", q"{تھائ لینڈ}"
		, q"{ٹوگو}", q"{ٹونگا}", q"{ٹونیسیا}", q"{ترکی}", q"{ترکمانستان}"
		, q"{یوگانڈا}", q"{یوکرین}", q"{متحدہ عرب امارات}", q"{متحدہ سلطنت}"
		, q"{متحدہ ریاست امریکا}", q"{یوراگوائے}", q"{اْزبکستان}"
		, q"{ونیزویلا}", q"{وتنام}", q"{یمن}", q"{زمبیا}", q"{زمبابوے}" ];

		return choice(strs, this.rnd);
	}

	override string locationDefaultCountry() {
		const string[] strs =
		[ q"{اسلامی جمہوریہ پاکستان}" ];

		return choice(strs, this.rnd);
	}

	override string locationDirection() {
		const string[] strs =
		[ q"{شمال}", q"{مشرق}", q"{جنوب}", q"{مغرب}", q"{شمال مشرق}", q"{سمال مغرب}"
		, q"{جنوب مشرق}", q"{جنوب مغرب}" ];

		return choice(strs, this.rnd);
	}

	override string locationPostcode() {
		const string[] strs =
		[ q"{#####}" ];

		return numberBuild(choice(strs, this.rnd));
	}

	override string locationSecondaryAddress() {
		const string[] strs =
		[ q"{گھر. ###}", q"{گلی ###}" ];

		return numberBuild(choice(strs, this.rnd));
	}

	override string locationState() {
		const string[] strs =
		[ q"{خیبر پختونخواہ}", q"{اسلام آباد}", q"{پنجاب}", q"{سندھ}"
		, q"{آزاد کشمیر}", q"{بلوچستان}", q"{گلگت بلتستان}" ];

		return choice(strs, this.rnd);
	}

	override string locationStateAbbr() {
		const string[] strs =
		[ q"{KP}", q"{ICT}", q"{J&K}", q"{GB}", q"{PB}", q"{SD}", q"{BA}" ];

		return choice(strs, this.rnd);
	}

	override string locationStreetAddress() {
		const LocationStreetAddressEnum[] enums = [ LocationStreetAddressEnum.normal, LocationStreetAddressEnum.full ];
		return locationStreetAddress(choice(enums, this.rnd));
	}

	override string locationStreetAddress(LocationStreetAddressEnum which) {
		switch(which) {
			case LocationStreetAddressEnum.normal: return locationBuildingNumber() ~ " " ~ locationStreet();
			case LocationStreetAddressEnum.full: return locationBuildingNumber() ~ " " ~ locationStreet() ~ " " ~ locationSecondaryAddress();
		}
		return "";
	}

	override string locationStreetPattern() {
		switch(uniform(0, 2, this.rnd)) {
			case 0: return personFirstName() ~ " " ~ locationStreetSuffix();
			case 1: return personLastName() ~ " " ~ locationStreetSuffix();
		}
		return "";
	}

	override string locationStreetSuffix() {
		const string[] strs =
		[ q"{گاوْں}", q"{گلی}", q"{آباد}", q"{کالونی}", q"{گھڑی}" ];

		return choice(strs, this.rnd);
	}

	override string loremWords() {
		const string[] strs =
		[ q"{سگ}", q"{دگاس}", q"{ساد}", q"{دسھا}", q"{باس}", q"{نان}", q"{انب}", q"{ابس}"
		, q"{ادسگ}", q"{ابنسد}", q"{سفد}", q"{دف}", q"{بس}", q"{باسدب}", q"{باسدبا}"
		, q"{رعابھ}", q"{ابسد}", q"{سب}", q"{ط}", q"{اسدبگ}", q"{اسدگ}", q"{اھگسد}"
		, q"{سدگ}", q"{اسگ}", q"{شبچ}", q"{عو}", q"{سدبگا}", q"{اسبد}", q"{ساب}"
		, q"{سدب}", q"{سبا}", q"{باسد}", q"{دسب}", q"{طسد}", q"{چسد}", q"{اسداسدھدسبابگ}"
		, q"{سبادفھناسدھ}", q"{باسدباسدفنباسد}", q"{ابسانفسدد}"
		, q"{سندافاھگسدبا}", q"{ساسدبھ اسدفگبطاسدفد}", q"{سدطاسدگاسدگ}"
		, q"{چاسدسد}" ];

		return choice(strs, this.rnd);
	}

	override string musicGenre() {
		const string[] strs =
		[ q"{پاپ}", q"{فلک}", q"{دنیایٰ}", q"{جاز}", q"{فنک}", q"{کلاسکی}", q"{لاطینی}"
		, q"{پرانی}", q"{ریپ}" ];

		return choice(strs, this.rnd);
	}

	override string personFemaleFirstName() {
		const string[] strs =
		[ q"{منایل}", q"{عایشہ}", q"{آمنہ}", q"{عمائم}", q"{خدیجہ}", q"{حفصہ}"
		, q"{رابعہ}", q"{اقدس}", q"{حسنہ}", q"{مریم}", q"{حمیرہ}", q"{وردہ}"
		, q"{شہناز}", q"{نوشین}", q"{مشال}", q"{روبینہ}", q"{روزینہ}", q"{حدید}" ];

		return choice(strs, this.rnd);
	}

	override string personFemalePrefix() {
		const string[] strs =
		[ q"{محترمہ.}", q"{ڈاکٹر}" ];

		return choice(strs, this.rnd);
	}

	override string personFirstName() {
		const string[] strs =
		[ q"{منایل}", q"{عایشہ}", q"{آمنہ}", q"{عمائم}", q"{خدیجہ}", q"{حفصہ}"
		, q"{رابعہ}", q"{اقدس}", q"{حسنہ}", q"{مریم}", q"{حمیرہ}", q"{وردہ}"
		, q"{شہناز}", q"{نوشین}", q"{مشال}", q"{روبینہ}", q"{روزینہ}", q"{حدید}"
		, q"{عمیر}", q"{ابراہیم}", q"{احسن}", q"{عبداللہ}", q"{عثمان}"
		, q"{حمزہ}", q"{سیف}", q"{ولید}", q"{وسیم}", q"{محسن}", q"{یاسین}", q"{کمال}"
		, q"{عادل}", q"{اویس}", q"{مسود}", q"{شفیع}", q"{فرہان}", q"{ممتاز}" ];

		return choice(strs, this.rnd);
	}

	override string personLastName() {
		const string[] strs =
		[ q"{اعوان}", q"{ملک}", q"{جبران}", q"{احمد}", q"{علی}", q"{خان}", q"{جان}"
		, q"{آفریدی}", q"{باجوڑی}", q"{میمن}", q"{راجپوت}", q"{عبدالی}"
		, q"{نیازی}", q"{شریف}", q"{چوہدری}", q"{ملوک}", q"{اللَہ}", q"{شنواری}"
		, q"{حسین}", q"{الحق}" ];

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
		[ q"{عمیر}", q"{ابراہیم}", q"{احسن}", q"{عبداللہ}", q"{عثمان}", q"{حمزہ}"
		, q"{سیف}", q"{ولید}", q"{وسیم}", q"{محسن}", q"{یاسین}", q"{کمال}", q"{عادل}"
		, q"{اویس}", q"{مسود}", q"{شفیع}", q"{فرہان}", q"{ممتاز}" ];

		return choice(strs, this.rnd);
	}

	override string personMalePrefix() {
		const string[] strs =
		[ q"{محترم.}", q"{ڈاکٹر}" ];

		return choice(strs, this.rnd);
	}

	override string personName() {
		const int rndInt = uniform(0, 10, this.rnd);

		if(rndInt >= 0 && rndInt < 1) {
			return personPrefix() ~ " " ~ personFirstName() ~ " " ~ personLastName();
		}
		if(rndInt >= 1 && rndInt < 2) {
			return personFirstName() ~ " " ~ personLastName() ~ " " ~ personSuffix();
		}
		if(rndInt >= 2 && rndInt < 10) {
			return personFirstName() ~ " " ~ personLastName();
		}

		return "";
	}

	override string personPrefix() {
		const string[] strs =
		[ q"{محترم.}", q"{محترمہ.}", q"{ڈاکٹر}" ];

		return choice(strs, this.rnd);
	}

	override string personSex() {
		const string[] strs =
		[ q"{عورت}", q"{مرد}" ];

		return choice(strs, this.rnd);
	}

	override string personSuffix() {
		const string[] strs =
		[ q"{چھوٹے}", q"{بڑے}", q"{پہل}", q"{دوم}", q"{سوم}", q"{چہارم}", q"{پنجم}"
		, q"{ششم}", q"{هفتم}", q"{نوئم}", q"{دسم}" ];

		return choice(strs, this.rnd);
	}

	override string personTitleDescriptor() {
		const string[] strs =
		[ q"{سربراہ}", q"{اعلیٰ}", q"{مستقبل}", q"{شہری}", q"{ڈسٹرکٹ}", q"{درمیانہ}"
		, q"{گلوبل}", q"{گاہک}", q"{بین ال اقوامی}", q"{آگے}", q"{اندرونی}"
		, q"{انسانی}", q"{چیف}", q"{پرنسپل}" ];

		return choice(strs, this.rnd);
	}

	override string personTitleLevel() {
		const string[] strs =
		[ q"{حل}", q"{پروگرام}", q"{برانڈ}", q"{سکیورٹی}", q"{ریسرچ}", q"{آگاہی}"
		, q"{حربہ}", q"{شناخت}", q"{بازار}", q"{گروہ}", q"{تقسیم}", q"{استعمال}"
		, q"{بات چیت}", q"{جال}" ];

		return choice(strs, this.rnd);
	}

	override string teamCreature() {
		const string[] strs =
		[ q"{چیونٹیاں}", q"{چمگادڑ}", q"{بھالو}", q"{مکیاں}", q"{پرندے}"
		, q"{بیل}", q"{بلیاں}", q"{مرغیاں}", q"{مویشی}", q"{کتے}", q"{مچھلیاں}"
		, q"{بطخیں}", q"{ہاتھی}", q"{لومڑیاں}", q"{مینڈک}", q"{بکریاں}"
		, q"{گھوڑے}", q"{شیر}", q"{بندر}", q"{الو}", q"{لوگ}", q"{سور}", q"{خرگوش}"
		, q"{بھیڑ}", q"{بھیڑیں}", q"{زیبرا}", q"{کویں}", q"{کالی بلیاں}"
		, q"{بھوت}", q"{جادوگر}", q"{بیٹیں}", q"{دشمن}", q"{پیغمبر}", q"{روح}"
		, q"{عبادت گزار}" ];

		return choice(strs, this.rnd);
	}

	override string teamName() {
		switch(uniform(0, 1, this.rnd)) {
			case 0: return locationState() ~ " " ~ teamCreature();
		}
		return "";
	}

	override string vehicleBicycleType() {
		const string[] strs =
		[ q"{سہراب سائکل}", q"{چائنہ سائکل}" ];

		return choice(strs, this.rnd);
	}

	override string vehicleFuel() {
		const string[] strs =
		[ q"{ڈیزل}", q"{بجلی}", q"{پیٹرول}", q"{شمسی}" ];

		return choice(strs, this.rnd);
	}

	override string vehicleManufacturer() {
		const string[] strs =
		[ q"{آستن مارٹن}", q"{بینٹلے}", q"{بی ایم ڈبلیو}", q"{فراری}"
		, q"{ہنڈا}", q"{جیپ}", q"{مزدا}", q"{مرسیڈیز}" ];

		return choice(strs, this.rnd);
	}

	override string vehicleModel() {
		const string[] strs =
		[ q"{کرولا}", q"{اکورڈ}", q"{سوک}" ];

		return choice(strs, this.rnd);
	}

	override string vehicleType() {
		const string[] strs =
		[ q"{ہیچ بیک}", q"{سواری}" ];

		return choice(strs, this.rnd);
	}

}

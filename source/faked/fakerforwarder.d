module faked.fakerforwarder;

import std.random;

import faked.customtypes;
import faked.fakerenums;
import faked.faker_en;
import faked.faker_af_za;
import faked.faker_ar;
import faked.faker_az;
import faked.faker_cs_cz;
import faked.faker_da;
import faked.faker_de;
import faked.faker_de_at;
import faked.faker_de_ch;
import faked.faker_dv;
import faked.faker_el;
import faked.faker_en_au;
import faked.faker_en_au_ocker;
import faked.faker_en_bork;
import faked.faker_en_ca;
import faked.faker_en_gb;
import faked.faker_en_gh;
import faked.faker_en_hk;
import faked.faker_en_ie;
import faked.faker_en_in;
import faked.faker_en_ng;
import faked.faker_en_us;
import faked.faker_en_za;
import faked.faker_eo;
import faked.faker_es;
import faked.faker_es_mx;
import faked.faker_fa;
import faked.faker_fi;
import faked.faker_fr;
import faked.faker_fr_be;
import faked.faker_fr_ca;
import faked.faker_fr_ch;
import faked.faker_fr_lu;
import faked.faker_fr_sn;
import faked.faker_he;
import faked.faker_hr;
import faked.faker_hu;
import faked.faker_hy;
import faked.faker_id_id;
import faked.faker_it;
import faked.faker_ja;
import faked.faker_ka_ge;
import faked.faker_ko;
import faked.faker_lv;
import faked.faker_mk;
import faked.faker_nb_no;
import faked.faker_ne;
import faked.faker_nl;
import faked.faker_nl_be;
import faked.faker_pl;
import faked.faker_pt_br;
import faked.faker_pt_pt;
import faked.faker_ro;
import faked.faker_ro_md;
import faked.faker_ru;
import faked.faker_sk;
import faked.faker_sr_rs_latin;
import faked.faker_sv;
import faked.faker_th;
import faked.faker_tr;
import faked.faker_uk;
import faked.faker_ur;
import faked.faker_vi;
import faked.faker_yo_ng;
import faked.faker_zh_cn;
import faked.faker_zh_tw;
import faked.faker_zu_za;

class FakerForwarder {
@safe:
	Random rnd;
	Faker_en[] toPassThrough = [ new Faker_af_za(1337), new Faker_ar(1337), new Faker_az(1337), new Faker_cs_cz(1337), new Faker_da(1337), new Faker_de(1337), new Faker_de_at(1337), new Faker_de_ch(1337), new Faker_dv(1337), new Faker_el(1337), new Faker_en_au(1337), new Faker_en_au_ocker(1337), new Faker_en_bork(1337), new Faker_en_ca(1337), new Faker_en_gb(1337), new Faker_en_gh(1337), new Faker_en_hk(1337), new Faker_en_ie(1337), new Faker_en_in(1337), new Faker_en_ng(1337), new Faker_en_us(1337), new Faker_en_za(1337), new Faker_eo(1337), new Faker_es(1337), new Faker_es_mx(1337), new Faker_fa(1337), new Faker_fi(1337), new Faker_fr(1337), new Faker_fr_be(1337), new Faker_fr_ca(1337), new Faker_fr_ch(1337), new Faker_fr_lu(1337), new Faker_fr_sn(1337), new Faker_he(1337), new Faker_hr(1337), new Faker_hu(1337), new Faker_hy(1337), new Faker_id_id(1337), new Faker_it(1337), new Faker_ja(1337), new Faker_ka_ge(1337), new Faker_ko(1337), new Faker_lv(1337), new Faker_mk(1337), new Faker_nb_no(1337), new Faker_ne(1337), new Faker_nl(1337), new Faker_nl_be(1337), new Faker_pl(1337), new Faker_pt_br(1337), new Faker_pt_pt(1337), new Faker_ro(1337), new Faker_ro_md(1337), new Faker_ru(1337), new Faker_sk(1337), new Faker_sr_rs_latin(1337), new Faker_sv(1337), new Faker_th(1337), new Faker_tr(1337), new Faker_uk(1337), new Faker_ur(1337), new Faker_vi(1337), new Faker_yo_ng(1337), new Faker_zh_cn(1337), new Faker_zh_tw(1337), new Faker_zu_za(1337) ];

	this(int seed = 1338) {
		this.rnd = Random(seed);
	}

	string companyName() {
		return choice(this.toPassThrough, this.rnd).companyName();
	}
	final string internetEmoji() {
		return choice(this.toPassThrough, this.rnd).internetEmoji();
	}

	final string locationCity() {
		return choice(this.toPassThrough, this.rnd).locationCity();
	}

	final string personJobDescriptor() {
		return choice(this.toPassThrough, this.rnd).personJobDescriptor();
	}

	final string personJobType() {
		return choice(this.toPassThrough, this.rnd).personJobType();
	}

	final string personJobArea() {
		return choice(this.toPassThrough, this.rnd).personJobArea();
	}

    final string companyCatchPhrase() {
		return choice(this.toPassThrough, this.rnd).companyCatchPhrase();
	}

    final string phoneNumber() {
		return choice(this.toPassThrough, this.rnd).phoneNumber();
	}

    final string loremText(size_t length = size_t.max) {
		return choice(this.toPassThrough, this.rnd).loremText(length);
	}

    final string loremParagraphs(size_t length = size_t.max) {
		return choice(this.toPassThrough, this.rnd).loremParagraphs(length);
	}

    final string loremParagraph(size_t length = size_t.max) {
		return choice(this.toPassThrough, this.rnd).loremParagraph(length);
	}

    final string loremSentance(size_t length = size_t.max) {
		return choice(this.toPassThrough, this.rnd).loremSentance(length);
	}

    final string loremSentances(size_t length = size_t.max) {
		return choice(this.toPassThrough, this.rnd).loremSentances(length);
	}

	final string databaseCollation() {
		return choice(this.toPassThrough, this.rnd).databaseCollation();
	}

	final string databaseEngine() {
		return choice(this.toPassThrough, this.rnd).databaseEngine();
	}

	final string databaseType() {
		return choice(this.toPassThrough, this.rnd).databaseType();
	}

	final string hackerAbbreviation() {
		return choice(this.toPassThrough, this.rnd).hackerAbbreviation();
	}

	final string internetEmojiSmiley() {
		return choice(this.toPassThrough, this.rnd).internetEmojiSmiley();
	}

	final string internetEmojiBody() {
		return choice(this.toPassThrough, this.rnd).internetEmojiBody();
	}

	final string internetEmojiPerson() {
		return choice(this.toPassThrough, this.rnd).internetEmojiPerson();
	}

	final string internetEmojiNature() {
		return choice(this.toPassThrough, this.rnd).internetEmojiNature();
	}

	final string internetEmojiFood() {
		return choice(this.toPassThrough, this.rnd).internetEmojiFood();
	}

	final string internetEmojiTravel() {
		return choice(this.toPassThrough, this.rnd).internetEmojiTravel();
	}

	final string internetEmojiActivity() {
		return choice(this.toPassThrough, this.rnd).internetEmojiActivity();
	}

	final string internetEmojiObject() {
		return choice(this.toPassThrough, this.rnd).internetEmojiObject();
	}

	final string internetEmojiSymbol() {
		return choice(this.toPassThrough, this.rnd).internetEmojiSymbol();
	}

	final string internetEmojiFlag() {
		return choice(this.toPassThrough, this.rnd).internetEmojiFlag();
	}

	final string locationTimeZone() {
		return choice(this.toPassThrough, this.rnd).locationTimeZone();
	}

	final string systemDirectoryPaths() {
		return choice(this.toPassThrough, this.rnd).systemDirectoryPaths();
	}

	final Airline airlineAirline() {
		return choice(this.toPassThrough, this.rnd).airlineAirline();
	}

	final Airplane airlineAirplane() {
		return choice(this.toPassThrough, this.rnd).airlineAirplane();
	}

	final Airport airlineAirport() {
		return choice(this.toPassThrough, this.rnd).airlineAirport();
	}

	final string animalBear() {
		return choice(this.toPassThrough, this.rnd).animalBear();
	}

	final string animalBird() {
		return choice(this.toPassThrough, this.rnd).animalBird();
	}

	final string animalCat() {
		return choice(this.toPassThrough, this.rnd).animalCat();
	}

	final string animalCetacean() {
		return choice(this.toPassThrough, this.rnd).animalCetacean();
	}

	final string animalCow() {
		return choice(this.toPassThrough, this.rnd).animalCow();
	}

	final string animalCrocodilia() {
		return choice(this.toPassThrough, this.rnd).animalCrocodilia();
	}

	final string animalDog() {
		return choice(this.toPassThrough, this.rnd).animalDog();
	}

	final string animalFish() {
		return choice(this.toPassThrough, this.rnd).animalFish();
	}

	final string animalHorse() {
		return choice(this.toPassThrough, this.rnd).animalHorse();
	}

	final string animalInsect() {
		return choice(this.toPassThrough, this.rnd).animalInsect();
	}

	final string animalLion() {
		return choice(this.toPassThrough, this.rnd).animalLion();
	}

	final string animalRabbit() {
		return choice(this.toPassThrough, this.rnd).animalRabbit();
	}

	final string animalRodent() {
		return choice(this.toPassThrough, this.rnd).animalRodent();
	}

	final string animalSnake() {
		return choice(this.toPassThrough, this.rnd).animalSnake();
	}

	final string appAuthor() {
		return choice(this.toPassThrough, this.rnd).appAuthor();
	}

	final string appName() {
		return choice(this.toPassThrough, this.rnd).appName();
	}

	final string appVersion() {
		return choice(this.toPassThrough, this.rnd).appVersion();
	}

	final string cellPhoneFormats() {
		return choice(this.toPassThrough, this.rnd).cellPhoneFormats();
	}

	final string commerceProductDescription() {
		return choice(this.toPassThrough, this.rnd).commerceProductDescription();
	}

	final string commerceProductNameAdjective() {
		return choice(this.toPassThrough, this.rnd).commerceProductNameAdjective();
	}

	final string commerceProductNameMaterial() {
		return choice(this.toPassThrough, this.rnd).commerceProductNameMaterial();
	}

	final string commerceProductNameProduct() {
		return choice(this.toPassThrough, this.rnd).commerceProductNameProduct();
	}

	final string commerceDepartment() {
		return choice(this.toPassThrough, this.rnd).commerceDepartment();
	}

	final string companyAdjective() {
		return choice(this.toPassThrough, this.rnd).companyAdjective();
	}

	final string companyBuzzAdjective() {
		return choice(this.toPassThrough, this.rnd).companyBuzzAdjective();
	}

	final string companyBuzzNoun() {
		return choice(this.toPassThrough, this.rnd).companyBuzzNoun();
	}

	final string companyBuzzVerb() {
		return choice(this.toPassThrough, this.rnd).companyBuzzVerb();
	}

	final string companyDescriptor() {
		return choice(this.toPassThrough, this.rnd).companyDescriptor();
	}

	final string companyNamePattern() {
		return choice(this.toPassThrough, this.rnd).companyNamePattern();
	}

	final string companyNoun() {
		return choice(this.toPassThrough, this.rnd).companyNoun();
	}

	final string companySuffix() {
		return choice(this.toPassThrough, this.rnd).companySuffix();
	}

	final string databaseColumn() {
		return choice(this.toPassThrough, this.rnd).databaseColumn();
	}

	final string dateMonthWide() {
		return choice(this.toPassThrough, this.rnd).dateMonthWide();
	}

	final string dateMonthAbbr() {
		return choice(this.toPassThrough, this.rnd).dateMonthAbbr();
	}

	final string dateWeekdayWide() {
		return choice(this.toPassThrough, this.rnd).dateWeekdayWide();
	}

	final string dateWeekdayAbbr() {
		return choice(this.toPassThrough, this.rnd).dateWeekdayAbbr();
	}

	final string financeCreditCardAmericanExpress() {
		return choice(this.toPassThrough, this.rnd).financeCreditCardAmericanExpress();
	}

	final string financeCreditCardDinersClub() {
		return choice(this.toPassThrough, this.rnd).financeCreditCardDinersClub();
	}

	final string financeCreditCardDiscover() {
		return choice(this.toPassThrough, this.rnd).financeCreditCardDiscover();
	}

	final string financeCreditCardJcb() {
		return choice(this.toPassThrough, this.rnd).financeCreditCardJcb();
	}

	final string financeCreditCardMaestro() {
		return choice(this.toPassThrough, this.rnd).financeCreditCardMaestro();
	}

	final string financeCreditCardMastercard() {
		return choice(this.toPassThrough, this.rnd).financeCreditCardMastercard();
	}

	final string financeCreditCardVisa() {
		return choice(this.toPassThrough, this.rnd).financeCreditCardVisa();
	}

	final string financeAccountType() {
		return choice(this.toPassThrough, this.rnd).financeAccountType();
	}

	final Currency financeCurrency() {
		return choice(this.toPassThrough, this.rnd).financeCurrency();
	}

	final string financeTransactionType() {
		return choice(this.toPassThrough, this.rnd).financeTransactionType();
	}

	final string hackerAdjective() {
		return choice(this.toPassThrough, this.rnd).hackerAdjective();
	}

	final string hackerIngverb() {
		return choice(this.toPassThrough, this.rnd).hackerIngverb();
	}

	final string hackerNoun() {
		return choice(this.toPassThrough, this.rnd).hackerNoun();
	}

	final string hackerPhrase() {
		return choice(this.toPassThrough, this.rnd).hackerPhrase();
	}

	final string hackerVerb() {
		return choice(this.toPassThrough, this.rnd).hackerVerb();
	}

	final string internetDomainSuffix() {
		return choice(this.toPassThrough, this.rnd).internetDomainSuffix();
	}

	final string internetExampleEmail() {
		return choice(this.toPassThrough, this.rnd).internetExampleEmail();
	}

	final string internetFreeEmail() {
		return choice(this.toPassThrough, this.rnd).internetFreeEmail();
	}

	final string locationBuildingNumber() {
		return choice(this.toPassThrough, this.rnd).locationBuildingNumber();
	}

	final string locationCityName() {
		return choice(this.toPassThrough, this.rnd).locationCityName();
	}

	final string locationCityPattern() {
		return choice(this.toPassThrough, this.rnd).locationCityPattern();
	}

	final string locationCityPrefix() {
		return choice(this.toPassThrough, this.rnd).locationCityPrefix();
	}

	final string locationCitySuffix() {
		return choice(this.toPassThrough, this.rnd).locationCitySuffix();
	}

	final string locationCountry() {
		return choice(this.toPassThrough, this.rnd).locationCountry();
	}

	final string locationCounty() {
		return choice(this.toPassThrough, this.rnd).locationCounty();
	}

	final string locationDefaultCountry() {
		return choice(this.toPassThrough, this.rnd).locationDefaultCountry();
	}

	final string locationDirection() {
		return choice(this.toPassThrough, this.rnd).locationDirection();
	}

	final string locationDirectionAbbr() {
		return choice(this.toPassThrough, this.rnd).locationDirectionAbbr();
	}

	final string locationPostcode() {
		return choice(this.toPassThrough, this.rnd).locationPostcode();
	}

	final string locationSecondaryAddress() {
		return choice(this.toPassThrough, this.rnd).locationSecondaryAddress();
	}

	final string locationState() {
		return choice(this.toPassThrough, this.rnd).locationState();
	}

	final string locationStateAbbr() {
		return choice(this.toPassThrough, this.rnd).locationStateAbbr();
	}

	final string locationStreetAddress() {
		return choice(this.toPassThrough, this.rnd).locationStreetAddress();
	}

	final string locationStreetName() {
		return choice(this.toPassThrough, this.rnd).locationStreetName();
	}

	final string locationStreetPattern() {
		return choice(this.toPassThrough, this.rnd).locationStreetPattern();
	}

	final string locationStreetSuffix() {
		return choice(this.toPassThrough, this.rnd).locationStreetSuffix();
	}

	final string loremWords() {
		return choice(this.toPassThrough, this.rnd).loremWords();
	}

	final string musicGenre() {
		return choice(this.toPassThrough, this.rnd).musicGenre();
	}

	final string musicSongName() {
		return choice(this.toPassThrough, this.rnd).musicSongName();
	}

	final string personBioPart() {
		return choice(this.toPassThrough, this.rnd).personBioPart();
	}

	final string personBioPattern() {
		return choice(this.toPassThrough, this.rnd).personBioPattern();
	}

	final string personBioSupporter() {
		return choice(this.toPassThrough, this.rnd).personBioSupporter();
	}

	final string personFemaleFirstName() {
		return choice(this.toPassThrough, this.rnd).personFemaleFirstName();
	}

	final string personFemaleMiddleName() {
		return choice(this.toPassThrough, this.rnd).personFemaleMiddleName();
	}

	final string personFemalePrefix() {
		return choice(this.toPassThrough, this.rnd).personFemalePrefix();
	}

	final string personFirstName() {
		return choice(this.toPassThrough, this.rnd).personFirstName();
	}

	final string personGender() {
		return choice(this.toPassThrough, this.rnd).personGender();
	}

	final string personJobTitlePattern() {
		return choice(this.toPassThrough, this.rnd).personJobTitlePattern();
	}

	final string personLastName() {
		return choice(this.toPassThrough, this.rnd).personLastName();
	}

	final string personLastNamePattern() {
		return choice(this.toPassThrough, this.rnd).personLastNamePattern();
	}

	final string personMaleFirstName() {
		return choice(this.toPassThrough, this.rnd).personMaleFirstName();
	}

	final string personMaleMiddleName() {
		return choice(this.toPassThrough, this.rnd).personMaleMiddleName();
	}

	final string personMalePrefix() {
		return choice(this.toPassThrough, this.rnd).personMalePrefix();
	}

	final string personMiddleName() {
		return choice(this.toPassThrough, this.rnd).personMiddleName();
	}

	final string personName() {
		return choice(this.toPassThrough, this.rnd).personName();
	}

	final string personPrefix() {
		return choice(this.toPassThrough, this.rnd).personPrefix();
	}

	final string personSex() {
		return choice(this.toPassThrough, this.rnd).personSex();
	}

	final string personSuffix() {
		return choice(this.toPassThrough, this.rnd).personSuffix();
	}

	final string personTitleDescriptor() {
		return choice(this.toPassThrough, this.rnd).personTitleDescriptor();
	}

	final string personTitleLevel() {
		return choice(this.toPassThrough, this.rnd).personTitleLevel();
	}

	final string personTitleJob() {
		return choice(this.toPassThrough, this.rnd).personTitleJob();
	}

	final string personWesternZodiacSign() {
		return choice(this.toPassThrough, this.rnd).personWesternZodiacSign();
	}

	final string phoneNumberFormats() {
		return choice(this.toPassThrough, this.rnd).phoneNumberFormats();
	}

	final ChemicalElement scienceChemicalElement() {
		return choice(this.toPassThrough, this.rnd).scienceChemicalElement();
	}

	final ChemicalUnit scienceUnit() {
		return choice(this.toPassThrough, this.rnd).scienceUnit();
	}

	final string teamCreature() {
		return choice(this.toPassThrough, this.rnd).teamCreature();
	}

	final string teamName() {
		return choice(this.toPassThrough, this.rnd).teamName();
	}

	final string vehicleBicycleType() {
		return choice(this.toPassThrough, this.rnd).vehicleBicycleType();
	}

	final string vehicleFuel() {
		return choice(this.toPassThrough, this.rnd).vehicleFuel();
	}

	final string vehicleManufacturer() {
		return choice(this.toPassThrough, this.rnd).vehicleManufacturer();
	}

	final string vehicleModel() {
		return choice(this.toPassThrough, this.rnd).vehicleModel();
	}

	final string vehicleType() {
		return choice(this.toPassThrough, this.rnd).vehicleType();
	}

	final string wordAdjective() {
		return choice(this.toPassThrough, this.rnd).wordAdjective();
	}

	final string wordAdverb() {
		return choice(this.toPassThrough, this.rnd).wordAdverb();
	}

	final string wordConjunction() {
		return choice(this.toPassThrough, this.rnd).wordConjunction();
	}

	final string wordInterjection() {
		return choice(this.toPassThrough, this.rnd).wordInterjection();
	}

	final string wordNoun() {
		return choice(this.toPassThrough, this.rnd).wordNoun();
	}

	final string wordPreposition() {
		return choice(this.toPassThrough, this.rnd).wordPreposition();
	}

	final string wordVerb() {
		return choice(this.toPassThrough, this.rnd).wordVerb();
	}

}

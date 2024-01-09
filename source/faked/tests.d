module faked.tests;

import faked.customtypes;
import faked.fakerenums;
import faked.fakerforwarder;
import faked.faker_base;
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


unittest {
	auto f = new Faker_af_za(13);

	foreach(i; 0 .. 4) {
		f.airlineAirline();
	}
	foreach(i; 0 .. 4) {
		f.airlineAirplane();
	}
	foreach(i; 0 .. 4) {
		f.airlineAirport();
	}
	foreach(i; 0 .. 4) {
		f.animalBear();
	}
	foreach(i; 0 .. 4) {
		f.animalBird();
	}
	foreach(i; 0 .. 4) {
		f.animalCat();
	}
	foreach(i; 0 .. 4) {
		f.animalCetacean();
	}
	foreach(i; 0 .. 4) {
		f.animalCow();
	}
	foreach(i; 0 .. 4) {
		f.animalCrocodilia();
	}
	foreach(i; 0 .. 4) {
		f.animalDog();
	}
	foreach(i; 0 .. 4) {
		f.animalFish();
	}
	foreach(i; 0 .. 4) {
		f.animalHorse();
	}
	foreach(i; 0 .. 4) {
		f.animalInsect();
	}
	foreach(i; 0 .. 4) {
		f.animalLion();
	}
	foreach(i; 0 .. 4) {
		f.animalRabbit();
	}
	foreach(i; 0 .. 4) {
		f.animalRodent();
	}
	foreach(i; 0 .. 4) {
		f.animalSnake();
	}
	foreach(i; 0 .. 4) {
		f.appAuthor();
	}
	foreach(i; 0 .. 4) {
		f.appName();
	}
	foreach(i; 0 .. 4) {
		f.appVersion();
	}
	foreach(i; 0 .. 4) {
		f.cellPhoneFormats();
	}
	foreach(i; 0 .. 4) {
		f.commerceDepartment();
	}
	foreach(i; 0 .. 4) {
		f.commerceProductDescription();
	}
	foreach(i; 0 .. 4) {
		f.commerceProductNameAdjective();
	}
	foreach(i; 0 .. 4) {
		f.commerceProductNameMaterial();
	}
	foreach(i; 0 .. 4) {
		f.commerceProductNameProduct();
	}
	foreach(i; 0 .. 4) {
		f.companyAdjective();
	}
	foreach(i; 0 .. 4) {
		f.companyBuzzAdjective();
	}
	foreach(i; 0 .. 4) {
		f.companyBuzzNoun();
	}
	foreach(i; 0 .. 4) {
		f.companyBuzzVerb();
	}
	foreach(i; 0 .. 4) {
		f.companyCatchPhrase();
	}
	foreach(i; 0 .. 4) {
		f.companyDescriptor();
	}
	foreach(i; 0 .. 4) {
		f.companyName();
	}
	foreach(i; 0 .. 4) {
		f.companyNamePattern();
	}
	foreach(i; 0 .. 4) {
		f.companyNoun();
	}
	foreach(i; 0 .. 4) {
		f.companySuffix();
	}
	foreach(i; 0 .. 4) {
		f.databaseCollation();
	}
	foreach(i; 0 .. 4) {
		f.databaseColumn();
	}
	foreach(i; 0 .. 4) {
		f.databaseEngine();
	}
	foreach(i; 0 .. 4) {
		f.databaseType();
	}
	foreach(i; 0 .. 4) {
		f.dateMonthAbbr();
	}
	foreach(i; 0 .. 4) {
		f.dateMonthWide();
	}
	foreach(i; 0 .. 4) {
		f.dateWeekdayAbbr();
	}
	foreach(i; 0 .. 4) {
		f.dateWeekdayWide();
	}
	foreach(i; 0 .. 4) {
		f.financeAccountType();
	}
	foreach(i; 0 .. 4) {
		f.financeCreditCardAmericanExpress();
	}
	foreach(i; 0 .. 4) {
		f.financeCreditCardDinersClub();
	}
	foreach(i; 0 .. 4) {
		f.financeCreditCardDiscover();
	}
	foreach(i; 0 .. 4) {
		f.financeCreditCardJcb();
	}
	foreach(i; 0 .. 4) {
		f.financeCreditCardMaestro();
	}
	foreach(i; 0 .. 4) {
		f.financeCreditCardMastercard();
	}
	foreach(i; 0 .. 4) {
		f.financeCreditCardVisa();
	}
	foreach(i; 0 .. 4) {
		f.financeCurrency();
	}
	foreach(i; 0 .. 4) {
		f.financeTransactionType();
	}
	foreach(i; 0 .. 4) {
		f.hackerAbbreviation();
	}
	foreach(i; 0 .. 4) {
		f.hackerAdjective();
	}
	foreach(i; 0 .. 4) {
		f.hackerIngverb();
	}
	foreach(i; 0 .. 4) {
		f.hackerNoun();
	}
	foreach(i; 0 .. 4) {
		f.hackerPhrase();
	}
	foreach(i; 0 .. 4) {
		f.hackerVerb();
	}
	foreach(i; 0 .. 4) {
		f.internetDomainSuffix();
	}
	foreach(i; 0 .. 4) {
		f.internetEmoji();
	}
	foreach(i; 0 .. 4) {
		f.internetEmojiActivity();
	}
	foreach(i; 0 .. 4) {
		f.internetEmojiBody();
	}
	foreach(i; 0 .. 4) {
		f.internetEmojiFlag();
	}
	foreach(i; 0 .. 4) {
		f.internetEmojiFood();
	}
	foreach(i; 0 .. 4) {
		f.internetEmojiNature();
	}
	foreach(i; 0 .. 4) {
		f.internetEmojiObject();
	}
	foreach(i; 0 .. 4) {
		f.internetEmojiPerson();
	}
	foreach(i; 0 .. 4) {
		f.internetEmojiSmiley();
	}
	foreach(i; 0 .. 4) {
		f.internetEmojiSymbol();
	}
	foreach(i; 0 .. 4) {
		f.internetEmojiTravel();
	}
	foreach(i; 0 .. 4) {
		f.internetExampleEmail();
	}
	foreach(i; 0 .. 4) {
		f.internetFreeEmail();
	}
	foreach(i; 0 .. 4) {
		f.locationBuildingNumber();
	}
	foreach(i; 0 .. 4) {
		f.locationCity();
	}
	foreach(i; 0 .. 4) {
		f.locationCityName();
	}
	foreach(i; 0 .. 4) {
		f.locationCityPattern();
	}
	foreach(i; 0 .. 4) {
		f.locationCityPrefix();
	}
	foreach(i; 0 .. 4) {
		f.locationCitySuffix();
	}
	foreach(i; 0 .. 4) {
		f.locationCountry();
	}
	foreach(i; 0 .. 4) {
		f.locationCounty();
	}
	foreach(i; 0 .. 4) {
		f.locationDefaultCountry();
	}
	foreach(i; 0 .. 4) {
		f.locationDirection();
	}
	foreach(i; 0 .. 4) {
		f.locationDirectionAbbr();
	}
	foreach(i; 0 .. 4) {
		f.locationPostcode();
	}
	foreach(i; 0 .. 4) {
		f.locationSecondaryAddress();
	}
	foreach(i; 0 .. 4) {
		f.locationState();
	}
	foreach(i; 0 .. 4) {
		f.locationStateAbbr();
	}
	foreach(i; 0 .. 4) {
		f.locationStreetAddress();
	}
	foreach(i; 0 .. 4) {
		f.locationStreetName();
	}
	foreach(i; 0 .. 4) {
		f.locationStreetPattern();
	}
	foreach(i; 0 .. 4) {
		f.locationStreetSuffix();
	}
	foreach(i; 0 .. 4) {
		f.locationTimeZone();
	}
	foreach(i; 0 .. 4) {
		f.loremParagraph();
	}
	foreach(i; 0 .. 4) {
		f.loremParagraphs();
	}
	foreach(i; 0 .. 4) {
		f.loremSentance();
	}
	foreach(i; 0 .. 4) {
		f.loremSentances();
	}
	foreach(i; 0 .. 4) {
		f.loremText();
	}
	foreach(i; 0 .. 4) {
		f.loremWords();
	}
	foreach(i; 0 .. 4) {
		f.musicGenre();
	}
	foreach(i; 0 .. 4) {
		f.musicSongName();
	}
	foreach(i; 0 .. 4) {
		f.personBioPart();
	}
	foreach(i; 0 .. 4) {
		f.personBioPattern();
	}
	foreach(i; 0 .. 4) {
		f.personBioSupporter();
	}
	foreach(i; 0 .. 4) {
		f.personFemaleFirstName();
	}
	foreach(i; 0 .. 4) {
		f.personFemaleMiddleName();
	}
	foreach(i; 0 .. 4) {
		f.personFemalePrefix();
	}
	foreach(i; 0 .. 4) {
		f.personFirstName();
	}
	foreach(i; 0 .. 4) {
		f.personGender();
	}
	foreach(i; 0 .. 4) {
		f.personJobArea();
	}
	foreach(i; 0 .. 4) {
		f.personJobDescriptor();
	}
	foreach(i; 0 .. 4) {
		f.personJobTitlePattern();
	}
	foreach(i; 0 .. 4) {
		f.personJobType();
	}
	foreach(i; 0 .. 4) {
		f.personLastName();
	}
	foreach(i; 0 .. 4) {
		f.personLastNamePattern();
	}
	foreach(i; 0 .. 4) {
		f.personMaleFirstName();
	}
	foreach(i; 0 .. 4) {
		f.personMaleMiddleName();
	}
	foreach(i; 0 .. 4) {
		f.personMalePrefix();
	}
	foreach(i; 0 .. 4) {
		f.personMiddleName();
	}
	foreach(i; 0 .. 4) {
		f.personName();
	}
	foreach(i; 0 .. 4) {
		f.personPrefix();
	}
	foreach(i; 0 .. 4) {
		f.personSex();
	}
	foreach(i; 0 .. 4) {
		f.personSuffix();
	}
	foreach(i; 0 .. 4) {
		f.personTitleDescriptor();
	}
	foreach(i; 0 .. 4) {
		f.personTitleJob();
	}
	foreach(i; 0 .. 4) {
		f.personTitleLevel();
	}
	foreach(i; 0 .. 4) {
		f.personWesternZodiacSign();
	}
	foreach(i; 0 .. 4) {
		f.phoneNumber();
	}
	foreach(i; 0 .. 4) {
		f.phoneNumberFormats();
	}
	foreach(i; 0 .. 4) {
		f.scienceChemicalElement();
	}
	foreach(i; 0 .. 4) {
		f.scienceUnit();
	}
	foreach(i; 0 .. 4) {
		f.systemDirectoryPaths();
	}
	foreach(i; 0 .. 4) {
		f.teamCreature();
	}
	foreach(i; 0 .. 4) {
		f.teamName();
	}
	foreach(i; 0 .. 4) {
		f.vehicleBicycleType();
	}
	foreach(i; 0 .. 4) {
		f.vehicleFuel();
	}
	foreach(i; 0 .. 4) {
		f.vehicleManufacturer();
	}
	foreach(i; 0 .. 4) {
		f.vehicleModel();
	}
	foreach(i; 0 .. 4) {
		f.vehicleType();
	}
	foreach(i; 0 .. 4) {
		f.wordAdjective();
	}
	foreach(i; 0 .. 4) {
		f.wordAdverb();
	}
	foreach(i; 0 .. 4) {
		f.wordConjunction();
	}
	foreach(i; 0 .. 4) {
		f.wordInterjection();
	}
	foreach(i; 0 .. 4) {
		f.wordNoun();
	}
	foreach(i; 0 .. 4) {
		f.wordPreposition();
	}
	foreach(i; 0 .. 4) {
		f.wordVerb();
	}
}

unittest {
	auto f = new Faker_ar(13);

	foreach(i; 0 .. 4) {
		f.airlineAirline();
	}
	foreach(i; 0 .. 4) {
		f.airlineAirplane();
	}
	foreach(i; 0 .. 4) {
		f.airlineAirport();
	}
	foreach(i; 0 .. 4) {
		f.animalBear();
	}
	foreach(i; 0 .. 4) {
		f.animalBird();
	}
	foreach(i; 0 .. 4) {
		f.animalCat();
	}
	foreach(i; 0 .. 4) {
		f.animalCetacean();
	}
	foreach(i; 0 .. 4) {
		f.animalCow();
	}
	foreach(i; 0 .. 4) {
		f.animalCrocodilia();
	}
	foreach(i; 0 .. 4) {
		f.animalDog();
	}
	foreach(i; 0 .. 4) {
		f.animalFish();
	}
	foreach(i; 0 .. 4) {
		f.animalHorse();
	}
	foreach(i; 0 .. 4) {
		f.animalInsect();
	}
	foreach(i; 0 .. 4) {
		f.animalLion();
	}
	foreach(i; 0 .. 4) {
		f.animalRabbit();
	}
	foreach(i; 0 .. 4) {
		f.animalRodent();
	}
	foreach(i; 0 .. 4) {
		f.animalSnake();
	}
	foreach(i; 0 .. 4) {
		f.appAuthor();
	}
	foreach(i; 0 .. 4) {
		f.appName();
	}
	foreach(i; 0 .. 4) {
		f.appVersion();
	}
	foreach(i; 0 .. 4) {
		f.cellPhoneFormats();
	}
	foreach(i; 0 .. 4) {
		f.commerceDepartment();
	}
	foreach(i; 0 .. 4) {
		f.commerceProductDescription();
	}
	foreach(i; 0 .. 4) {
		f.commerceProductNameAdjective();
	}
	foreach(i; 0 .. 4) {
		f.commerceProductNameMaterial();
	}
	foreach(i; 0 .. 4) {
		f.commerceProductNameProduct();
	}
	foreach(i; 0 .. 4) {
		f.companyAdjective();
	}
	foreach(i; 0 .. 4) {
		f.companyBuzzAdjective();
	}
	foreach(i; 0 .. 4) {
		f.companyBuzzNoun();
	}
	foreach(i; 0 .. 4) {
		f.companyBuzzVerb();
	}
	foreach(i; 0 .. 4) {
		f.companyCatchPhrase();
	}
	foreach(i; 0 .. 4) {
		f.companyDescriptor();
	}
	foreach(i; 0 .. 4) {
		f.companyName();
	}
	foreach(i; 0 .. 4) {
		f.companyNamePattern();
	}
	foreach(i; 0 .. 4) {
		f.companyNoun();
	}
	foreach(i; 0 .. 4) {
		f.companySuffix();
	}
	foreach(i; 0 .. 4) {
		f.databaseCollation();
	}
	foreach(i; 0 .. 4) {
		f.databaseColumn();
	}
	foreach(i; 0 .. 4) {
		f.databaseEngine();
	}
	foreach(i; 0 .. 4) {
		f.databaseType();
	}
	foreach(i; 0 .. 4) {
		f.dateMonthAbbr();
	}
	foreach(i; 0 .. 4) {
		f.dateMonthWide();
	}
	foreach(i; 0 .. 4) {
		f.dateWeekdayAbbr();
	}
	foreach(i; 0 .. 4) {
		f.dateWeekdayWide();
	}
	foreach(i; 0 .. 4) {
		f.financeAccountType();
	}
	foreach(i; 0 .. 4) {
		f.financeCreditCardAmericanExpress();
	}
	foreach(i; 0 .. 4) {
		f.financeCreditCardDinersClub();
	}
	foreach(i; 0 .. 4) {
		f.financeCreditCardDiscover();
	}
	foreach(i; 0 .. 4) {
		f.financeCreditCardJcb();
	}
	foreach(i; 0 .. 4) {
		f.financeCreditCardMaestro();
	}
	foreach(i; 0 .. 4) {
		f.financeCreditCardMastercard();
	}
	foreach(i; 0 .. 4) {
		f.financeCreditCardVisa();
	}
	foreach(i; 0 .. 4) {
		f.financeCurrency();
	}
	foreach(i; 0 .. 4) {
		f.financeTransactionType();
	}
	foreach(i; 0 .. 4) {
		f.hackerAbbreviation();
	}
	foreach(i; 0 .. 4) {
		f.hackerAdjective();
	}
	foreach(i; 0 .. 4) {
		f.hackerIngverb();
	}
	foreach(i; 0 .. 4) {
		f.hackerNoun();
	}
	foreach(i; 0 .. 4) {
		f.hackerPhrase();
	}
	foreach(i; 0 .. 4) {
		f.hackerVerb();
	}
	foreach(i; 0 .. 4) {
		f.internetDomainSuffix();
	}
	foreach(i; 0 .. 4) {
		f.internetEmoji();
	}
	foreach(i; 0 .. 4) {
		f.internetEmojiActivity();
	}
	foreach(i; 0 .. 4) {
		f.internetEmojiBody();
	}
	foreach(i; 0 .. 4) {
		f.internetEmojiFlag();
	}
	foreach(i; 0 .. 4) {
		f.internetEmojiFood();
	}
	foreach(i; 0 .. 4) {
		f.internetEmojiNature();
	}
	foreach(i; 0 .. 4) {
		f.internetEmojiObject();
	}
	foreach(i; 0 .. 4) {
		f.internetEmojiPerson();
	}
	foreach(i; 0 .. 4) {
		f.internetEmojiSmiley();
	}
	foreach(i; 0 .. 4) {
		f.internetEmojiSymbol();
	}
	foreach(i; 0 .. 4) {
		f.internetEmojiTravel();
	}
	foreach(i; 0 .. 4) {
		f.internetExampleEmail();
	}
	foreach(i; 0 .. 4) {
		f.internetFreeEmail();
	}
	foreach(i; 0 .. 4) {
		f.locationBuildingNumber();
	}
	foreach(i; 0 .. 4) {
		f.locationCity();
	}
	foreach(i; 0 .. 4) {
		f.locationCityName();
	}
	foreach(i; 0 .. 4) {
		f.locationCityPattern();
	}
	foreach(i; 0 .. 4) {
		f.locationCityPrefix();
	}
	foreach(i; 0 .. 4) {
		f.locationCitySuffix();
	}
	foreach(i; 0 .. 4) {
		f.locationCountry();
	}
	foreach(i; 0 .. 4) {
		f.locationCounty();
	}
	foreach(i; 0 .. 4) {
		f.locationDefaultCountry();
	}
	foreach(i; 0 .. 4) {
		f.locationDirection();
	}
	foreach(i; 0 .. 4) {
		f.locationDirectionAbbr();
	}
	foreach(i; 0 .. 4) {
		f.locationPostcode();
	}
	foreach(i; 0 .. 4) {
		f.locationSecondaryAddress();
	}
	foreach(i; 0 .. 4) {
		f.locationState();
	}
	foreach(i; 0 .. 4) {
		f.locationStateAbbr();
	}
	foreach(i; 0 .. 4) {
		f.locationStreetAddress();
	}
	foreach(i; 0 .. 4) {
		f.locationStreetName();
	}
	foreach(i; 0 .. 4) {
		f.locationStreetPattern();
	}
	foreach(i; 0 .. 4) {
		f.locationStreetSuffix();
	}
	foreach(i; 0 .. 4) {
		f.locationTimeZone();
	}
	foreach(i; 0 .. 4) {
		f.loremParagraph();
	}
	foreach(i; 0 .. 4) {
		f.loremParagraphs();
	}
	foreach(i; 0 .. 4) {
		f.loremSentance();
	}
	foreach(i; 0 .. 4) {
		f.loremSentances();
	}
	foreach(i; 0 .. 4) {
		f.loremText();
	}
	foreach(i; 0 .. 4) {
		f.loremWords();
	}
	foreach(i; 0 .. 4) {
		f.musicGenre();
	}
	foreach(i; 0 .. 4) {
		f.musicSongName();
	}
	foreach(i; 0 .. 4) {
		f.personBioPart();
	}
	foreach(i; 0 .. 4) {
		f.personBioPattern();
	}
	foreach(i; 0 .. 4) {
		f.personBioSupporter();
	}
	foreach(i; 0 .. 4) {
		f.personFemaleFirstName();
	}
	foreach(i; 0 .. 4) {
		f.personFemaleMiddleName();
	}
	foreach(i; 0 .. 4) {
		f.personFemalePrefix();
	}
	foreach(i; 0 .. 4) {
		f.personFirstName();
	}
	foreach(i; 0 .. 4) {
		f.personGender();
	}
	foreach(i; 0 .. 4) {
		f.personJobArea();
	}
	foreach(i; 0 .. 4) {
		f.personJobDescriptor();
	}
	foreach(i; 0 .. 4) {
		f.personJobTitlePattern();
	}
	foreach(i; 0 .. 4) {
		f.personJobType();
	}
	foreach(i; 0 .. 4) {
		f.personLastName();
	}
	foreach(i; 0 .. 4) {
		f.personLastNamePattern();
	}
	foreach(i; 0 .. 4) {
		f.personMaleFirstName();
	}
	foreach(i; 0 .. 4) {
		f.personMaleMiddleName();
	}
	foreach(i; 0 .. 4) {
		f.personMalePrefix();
	}
	foreach(i; 0 .. 4) {
		f.personMiddleName();
	}
	foreach(i; 0 .. 4) {
		f.personName();
	}
	foreach(i; 0 .. 4) {
		f.personPrefix();
	}
	foreach(i; 0 .. 4) {
		f.personSex();
	}
	foreach(i; 0 .. 4) {
		f.personSuffix();
	}
	foreach(i; 0 .. 4) {
		f.personTitleDescriptor();
	}
	foreach(i; 0 .. 4) {
		f.personTitleJob();
	}
	foreach(i; 0 .. 4) {
		f.personTitleLevel();
	}
	foreach(i; 0 .. 4) {
		f.personWesternZodiacSign();
	}
	foreach(i; 0 .. 4) {
		f.phoneNumber();
	}
	foreach(i; 0 .. 4) {
		f.phoneNumberFormats();
	}
	foreach(i; 0 .. 4) {
		f.scienceChemicalElement();
	}
	foreach(i; 0 .. 4) {
		f.scienceUnit();
	}
	foreach(i; 0 .. 4) {
		f.systemDirectoryPaths();
	}
	foreach(i; 0 .. 4) {
		f.teamCreature();
	}
	foreach(i; 0 .. 4) {
		f.teamName();
	}
	foreach(i; 0 .. 4) {
		f.vehicleBicycleType();
	}
	foreach(i; 0 .. 4) {
		f.vehicleFuel();
	}
	foreach(i; 0 .. 4) {
		f.vehicleManufacturer();
	}
	foreach(i; 0 .. 4) {
		f.vehicleModel();
	}
	foreach(i; 0 .. 4) {
		f.vehicleType();
	}
	foreach(i; 0 .. 4) {
		f.wordAdjective();
	}
	foreach(i; 0 .. 4) {
		f.wordAdverb();
	}
	foreach(i; 0 .. 4) {
		f.wordConjunction();
	}
	foreach(i; 0 .. 4) {
		f.wordInterjection();
	}
	foreach(i; 0 .. 4) {
		f.wordNoun();
	}
	foreach(i; 0 .. 4) {
		f.wordPreposition();
	}
	foreach(i; 0 .. 4) {
		f.wordVerb();
	}
}

unittest {
	auto f = new Faker_az(13);

	foreach(i; 0 .. 4) {
		f.airlineAirline();
	}
	foreach(i; 0 .. 4) {
		f.airlineAirplane();
	}
	foreach(i; 0 .. 4) {
		f.airlineAirport();
	}
	foreach(i; 0 .. 4) {
		f.animalBear();
	}
	foreach(i; 0 .. 4) {
		f.animalBird();
	}
	foreach(i; 0 .. 4) {
		f.animalCat();
	}
	foreach(i; 0 .. 4) {
		f.animalCetacean();
	}
	foreach(i; 0 .. 4) {
		f.animalCow();
	}
	foreach(i; 0 .. 4) {
		f.animalCrocodilia();
	}
	foreach(i; 0 .. 4) {
		f.animalDog();
	}
	foreach(i; 0 .. 4) {
		f.animalFish();
	}
	foreach(i; 0 .. 4) {
		f.animalHorse();
	}
	foreach(i; 0 .. 4) {
		f.animalInsect();
	}
	foreach(i; 0 .. 4) {
		f.animalLion();
	}
	foreach(i; 0 .. 4) {
		f.animalRabbit();
	}
	foreach(i; 0 .. 4) {
		f.animalRodent();
	}
	foreach(i; 0 .. 4) {
		f.animalSnake();
	}
	foreach(i; 0 .. 4) {
		f.appAuthor();
	}
	foreach(i; 0 .. 4) {
		f.appName();
	}
	foreach(i; 0 .. 4) {
		f.appVersion();
	}
	foreach(i; 0 .. 4) {
		f.cellPhoneFormats();
	}
	foreach(i; 0 .. 4) {
		f.commerceDepartment();
	}
	foreach(i; 0 .. 4) {
		f.commerceProductDescription();
	}
	foreach(i; 0 .. 4) {
		f.commerceProductNameAdjective();
	}
	foreach(i; 0 .. 4) {
		f.commerceProductNameMaterial();
	}
	foreach(i; 0 .. 4) {
		f.commerceProductNameProduct();
	}
	foreach(i; 0 .. 4) {
		f.companyAdjective();
	}
	foreach(i; 0 .. 4) {
		f.companyBuzzAdjective();
	}
	foreach(i; 0 .. 4) {
		f.companyBuzzNoun();
	}
	foreach(i; 0 .. 4) {
		f.companyBuzzVerb();
	}
	foreach(i; 0 .. 4) {
		f.companyCatchPhrase();
	}
	foreach(i; 0 .. 4) {
		f.companyDescriptor();
	}
	foreach(i; 0 .. 4) {
		f.companyName();
	}
	foreach(i; 0 .. 4) {
		f.companyNamePattern();
	}
	foreach(i; 0 .. 4) {
		f.companyNoun();
	}
	foreach(i; 0 .. 4) {
		f.companySuffix();
	}
	foreach(i; 0 .. 4) {
		f.databaseCollation();
	}
	foreach(i; 0 .. 4) {
		f.databaseColumn();
	}
	foreach(i; 0 .. 4) {
		f.databaseEngine();
	}
	foreach(i; 0 .. 4) {
		f.databaseType();
	}
	foreach(i; 0 .. 4) {
		f.dateMonthAbbr();
	}
	foreach(i; 0 .. 4) {
		f.dateMonthWide();
	}
	foreach(i; 0 .. 4) {
		f.dateWeekdayAbbr();
	}
	foreach(i; 0 .. 4) {
		f.dateWeekdayWide();
	}
	foreach(i; 0 .. 4) {
		f.financeAccountType();
	}
	foreach(i; 0 .. 4) {
		f.financeCreditCardAmericanExpress();
	}
	foreach(i; 0 .. 4) {
		f.financeCreditCardDinersClub();
	}
	foreach(i; 0 .. 4) {
		f.financeCreditCardDiscover();
	}
	foreach(i; 0 .. 4) {
		f.financeCreditCardJcb();
	}
	foreach(i; 0 .. 4) {
		f.financeCreditCardMaestro();
	}
	foreach(i; 0 .. 4) {
		f.financeCreditCardMastercard();
	}
	foreach(i; 0 .. 4) {
		f.financeCreditCardVisa();
	}
	foreach(i; 0 .. 4) {
		f.financeCurrency();
	}
	foreach(i; 0 .. 4) {
		f.financeTransactionType();
	}
	foreach(i; 0 .. 4) {
		f.hackerAbbreviation();
	}
	foreach(i; 0 .. 4) {
		f.hackerAdjective();
	}
	foreach(i; 0 .. 4) {
		f.hackerIngverb();
	}
	foreach(i; 0 .. 4) {
		f.hackerNoun();
	}
	foreach(i; 0 .. 4) {
		f.hackerPhrase();
	}
	foreach(i; 0 .. 4) {
		f.hackerVerb();
	}
	foreach(i; 0 .. 4) {
		f.internetDomainSuffix();
	}
	foreach(i; 0 .. 4) {
		f.internetEmoji();
	}
	foreach(i; 0 .. 4) {
		f.internetEmojiActivity();
	}
	foreach(i; 0 .. 4) {
		f.internetEmojiBody();
	}
	foreach(i; 0 .. 4) {
		f.internetEmojiFlag();
	}
	foreach(i; 0 .. 4) {
		f.internetEmojiFood();
	}
	foreach(i; 0 .. 4) {
		f.internetEmojiNature();
	}
	foreach(i; 0 .. 4) {
		f.internetEmojiObject();
	}
	foreach(i; 0 .. 4) {
		f.internetEmojiPerson();
	}
	foreach(i; 0 .. 4) {
		f.internetEmojiSmiley();
	}
	foreach(i; 0 .. 4) {
		f.internetEmojiSymbol();
	}
	foreach(i; 0 .. 4) {
		f.internetEmojiTravel();
	}
	foreach(i; 0 .. 4) {
		f.internetExampleEmail();
	}
	foreach(i; 0 .. 4) {
		f.internetFreeEmail();
	}
	foreach(i; 0 .. 4) {
		f.locationBuildingNumber();
	}
	foreach(i; 0 .. 4) {
		f.locationCity();
	}
	foreach(i; 0 .. 4) {
		f.locationCityName();
	}
	foreach(i; 0 .. 4) {
		f.locationCityPattern();
	}
	foreach(i; 0 .. 4) {
		f.locationCityPrefix();
	}
	foreach(i; 0 .. 4) {
		f.locationCitySuffix();
	}
	foreach(i; 0 .. 4) {
		f.locationCountry();
	}
	foreach(i; 0 .. 4) {
		f.locationCounty();
	}
	foreach(i; 0 .. 4) {
		f.locationDefaultCountry();
	}
	foreach(i; 0 .. 4) {
		f.locationDirection();
	}
	foreach(i; 0 .. 4) {
		f.locationDirectionAbbr();
	}
	foreach(i; 0 .. 4) {
		f.locationPostcode();
	}
	foreach(i; 0 .. 4) {
		f.locationSecondaryAddress();
	}
	foreach(i; 0 .. 4) {
		f.locationState();
	}
	foreach(i; 0 .. 4) {
		f.locationStateAbbr();
	}
	foreach(i; 0 .. 4) {
		f.locationStreetAddress();
	}
	foreach(i; 0 .. 4) {
		f.locationStreetName();
	}
	foreach(i; 0 .. 4) {
		f.locationStreetPattern();
	}
	foreach(i; 0 .. 4) {
		f.locationStreetSuffix();
	}
	foreach(i; 0 .. 4) {
		f.locationTimeZone();
	}
	foreach(i; 0 .. 4) {
		f.loremParagraph();
	}
	foreach(i; 0 .. 4) {
		f.loremParagraphs();
	}
	foreach(i; 0 .. 4) {
		f.loremSentance();
	}
	foreach(i; 0 .. 4) {
		f.loremSentances();
	}
	foreach(i; 0 .. 4) {
		f.loremText();
	}
	foreach(i; 0 .. 4) {
		f.loremWords();
	}
	foreach(i; 0 .. 4) {
		f.musicGenre();
	}
	foreach(i; 0 .. 4) {
		f.musicSongName();
	}
	foreach(i; 0 .. 4) {
		f.personBioPart();
	}
	foreach(i; 0 .. 4) {
		f.personBioPattern();
	}
	foreach(i; 0 .. 4) {
		f.personBioSupporter();
	}
	foreach(i; 0 .. 4) {
		f.personFemaleFirstName();
	}
	foreach(i; 0 .. 4) {
		f.personFemaleMiddleName();
	}
	foreach(i; 0 .. 4) {
		f.personFemalePrefix();
	}
	foreach(i; 0 .. 4) {
		f.personFirstName();
	}
	foreach(i; 0 .. 4) {
		f.personGender();
	}
	foreach(i; 0 .. 4) {
		f.personJobArea();
	}
	foreach(i; 0 .. 4) {
		f.personJobDescriptor();
	}
	foreach(i; 0 .. 4) {
		f.personJobTitlePattern();
	}
	foreach(i; 0 .. 4) {
		f.personJobType();
	}
	foreach(i; 0 .. 4) {
		f.personLastName();
	}
	foreach(i; 0 .. 4) {
		f.personLastNamePattern();
	}
	foreach(i; 0 .. 4) {
		f.personMaleFirstName();
	}
	foreach(i; 0 .. 4) {
		f.personMaleMiddleName();
	}
	foreach(i; 0 .. 4) {
		f.personMalePrefix();
	}
	foreach(i; 0 .. 4) {
		f.personMiddleName();
	}
	foreach(i; 0 .. 4) {
		f.personName();
	}
	foreach(i; 0 .. 4) {
		f.personPrefix();
	}
	foreach(i; 0 .. 4) {
		f.personSex();
	}
	foreach(i; 0 .. 4) {
		f.personSuffix();
	}
	foreach(i; 0 .. 4) {
		f.personTitleDescriptor();
	}
	foreach(i; 0 .. 4) {
		f.personTitleJob();
	}
	foreach(i; 0 .. 4) {
		f.personTitleLevel();
	}
	foreach(i; 0 .. 4) {
		f.personWesternZodiacSign();
	}
	foreach(i; 0 .. 4) {
		f.phoneNumber();
	}
	foreach(i; 0 .. 4) {
		f.phoneNumberFormats();
	}
	foreach(i; 0 .. 4) {
		f.scienceChemicalElement();
	}
	foreach(i; 0 .. 4) {
		f.scienceUnit();
	}
	foreach(i; 0 .. 4) {
		f.systemDirectoryPaths();
	}
	foreach(i; 0 .. 4) {
		f.teamCreature();
	}
	foreach(i; 0 .. 4) {
		f.teamName();
	}
	foreach(i; 0 .. 4) {
		f.vehicleBicycleType();
	}
	foreach(i; 0 .. 4) {
		f.vehicleFuel();
	}
	foreach(i; 0 .. 4) {
		f.vehicleManufacturer();
	}
	foreach(i; 0 .. 4) {
		f.vehicleModel();
	}
	foreach(i; 0 .. 4) {
		f.vehicleType();
	}
	foreach(i; 0 .. 4) {
		f.wordAdjective();
	}
	foreach(i; 0 .. 4) {
		f.wordAdverb();
	}
	foreach(i; 0 .. 4) {
		f.wordConjunction();
	}
	foreach(i; 0 .. 4) {
		f.wordInterjection();
	}
	foreach(i; 0 .. 4) {
		f.wordNoun();
	}
	foreach(i; 0 .. 4) {
		f.wordPreposition();
	}
	foreach(i; 0 .. 4) {
		f.wordVerb();
	}
}

unittest {
	auto f = new Faker_cs_cz(13);

	foreach(i; 0 .. 4) {
		f.airlineAirline();
	}
	foreach(i; 0 .. 4) {
		f.airlineAirplane();
	}
	foreach(i; 0 .. 4) {
		f.airlineAirport();
	}
	foreach(i; 0 .. 4) {
		f.animalBear();
	}
	foreach(i; 0 .. 4) {
		f.animalBird();
	}
	foreach(i; 0 .. 4) {
		f.animalCat();
	}
	foreach(i; 0 .. 4) {
		f.animalCetacean();
	}
	foreach(i; 0 .. 4) {
		f.animalCow();
	}
	foreach(i; 0 .. 4) {
		f.animalCrocodilia();
	}
	foreach(i; 0 .. 4) {
		f.animalDog();
	}
	foreach(i; 0 .. 4) {
		f.animalFish();
	}
	foreach(i; 0 .. 4) {
		f.animalHorse();
	}
	foreach(i; 0 .. 4) {
		f.animalInsect();
	}
	foreach(i; 0 .. 4) {
		f.animalLion();
	}
	foreach(i; 0 .. 4) {
		f.animalRabbit();
	}
	foreach(i; 0 .. 4) {
		f.animalRodent();
	}
	foreach(i; 0 .. 4) {
		f.animalSnake();
	}
	foreach(i; 0 .. 4) {
		f.appAuthor();
	}
	foreach(i; 0 .. 4) {
		f.appName();
	}
	foreach(i; 0 .. 4) {
		f.appVersion();
	}
	foreach(i; 0 .. 4) {
		f.cellPhoneFormats();
	}
	foreach(i; 0 .. 4) {
		f.commerceDepartment();
	}
	foreach(i; 0 .. 4) {
		f.commerceProductDescription();
	}
	foreach(i; 0 .. 4) {
		f.commerceProductNameAdjective();
	}
	foreach(i; 0 .. 4) {
		f.commerceProductNameMaterial();
	}
	foreach(i; 0 .. 4) {
		f.commerceProductNameProduct();
	}
	foreach(i; 0 .. 4) {
		f.companyAdjective();
	}
	foreach(i; 0 .. 4) {
		f.companyBuzzAdjective();
	}
	foreach(i; 0 .. 4) {
		f.companyBuzzNoun();
	}
	foreach(i; 0 .. 4) {
		f.companyBuzzVerb();
	}
	foreach(i; 0 .. 4) {
		f.companyCatchPhrase();
	}
	foreach(i; 0 .. 4) {
		f.companyDescriptor();
	}
	foreach(i; 0 .. 4) {
		f.companyName();
	}
	foreach(i; 0 .. 4) {
		f.companyNamePattern();
	}
	foreach(i; 0 .. 4) {
		f.companyNoun();
	}
	foreach(i; 0 .. 4) {
		f.companySuffix();
	}
	foreach(i; 0 .. 4) {
		f.databaseCollation();
	}
	foreach(i; 0 .. 4) {
		f.databaseColumn();
	}
	foreach(i; 0 .. 4) {
		f.databaseEngine();
	}
	foreach(i; 0 .. 4) {
		f.databaseType();
	}
	foreach(i; 0 .. 4) {
		f.dateMonthAbbr();
	}
	foreach(i; 0 .. 4) {
		f.dateMonthWide();
	}
	foreach(i; 0 .. 4) {
		f.dateWeekdayAbbr();
	}
	foreach(i; 0 .. 4) {
		f.dateWeekdayWide();
	}
	foreach(i; 0 .. 4) {
		f.financeAccountType();
	}
	foreach(i; 0 .. 4) {
		f.financeCreditCardAmericanExpress();
	}
	foreach(i; 0 .. 4) {
		f.financeCreditCardDinersClub();
	}
	foreach(i; 0 .. 4) {
		f.financeCreditCardDiscover();
	}
	foreach(i; 0 .. 4) {
		f.financeCreditCardJcb();
	}
	foreach(i; 0 .. 4) {
		f.financeCreditCardMaestro();
	}
	foreach(i; 0 .. 4) {
		f.financeCreditCardMastercard();
	}
	foreach(i; 0 .. 4) {
		f.financeCreditCardVisa();
	}
	foreach(i; 0 .. 4) {
		f.financeCurrency();
	}
	foreach(i; 0 .. 4) {
		f.financeTransactionType();
	}
	foreach(i; 0 .. 4) {
		f.hackerAbbreviation();
	}
	foreach(i; 0 .. 4) {
		f.hackerAdjective();
	}
	foreach(i; 0 .. 4) {
		f.hackerIngverb();
	}
	foreach(i; 0 .. 4) {
		f.hackerNoun();
	}
	foreach(i; 0 .. 4) {
		f.hackerPhrase();
	}
	foreach(i; 0 .. 4) {
		f.hackerVerb();
	}
	foreach(i; 0 .. 4) {
		f.internetDomainSuffix();
	}
	foreach(i; 0 .. 4) {
		f.internetEmoji();
	}
	foreach(i; 0 .. 4) {
		f.internetEmojiActivity();
	}
	foreach(i; 0 .. 4) {
		f.internetEmojiBody();
	}
	foreach(i; 0 .. 4) {
		f.internetEmojiFlag();
	}
	foreach(i; 0 .. 4) {
		f.internetEmojiFood();
	}
	foreach(i; 0 .. 4) {
		f.internetEmojiNature();
	}
	foreach(i; 0 .. 4) {
		f.internetEmojiObject();
	}
	foreach(i; 0 .. 4) {
		f.internetEmojiPerson();
	}
	foreach(i; 0 .. 4) {
		f.internetEmojiSmiley();
	}
	foreach(i; 0 .. 4) {
		f.internetEmojiSymbol();
	}
	foreach(i; 0 .. 4) {
		f.internetEmojiTravel();
	}
	foreach(i; 0 .. 4) {
		f.internetExampleEmail();
	}
	foreach(i; 0 .. 4) {
		f.internetFreeEmail();
	}
	foreach(i; 0 .. 4) {
		f.locationBuildingNumber();
	}
	foreach(i; 0 .. 4) {
		f.locationCity();
	}
	foreach(i; 0 .. 4) {
		f.locationCityName();
	}
	foreach(i; 0 .. 4) {
		f.locationCityPattern();
	}
	foreach(i; 0 .. 4) {
		f.locationCityPrefix();
	}
	foreach(i; 0 .. 4) {
		f.locationCitySuffix();
	}
	foreach(i; 0 .. 4) {
		f.locationCountry();
	}
	foreach(i; 0 .. 4) {
		f.locationCounty();
	}
	foreach(i; 0 .. 4) {
		f.locationDefaultCountry();
	}
	foreach(i; 0 .. 4) {
		f.locationDirection();
	}
	foreach(i; 0 .. 4) {
		f.locationDirectionAbbr();
	}
	foreach(i; 0 .. 4) {
		f.locationPostcode();
	}
	foreach(i; 0 .. 4) {
		f.locationSecondaryAddress();
	}
	foreach(i; 0 .. 4) {
		f.locationState();
	}
	foreach(i; 0 .. 4) {
		f.locationStateAbbr();
	}
	foreach(i; 0 .. 4) {
		f.locationStreetAddress();
	}
	foreach(i; 0 .. 4) {
		f.locationStreetName();
	}
	foreach(i; 0 .. 4) {
		f.locationStreetPattern();
	}
	foreach(i; 0 .. 4) {
		f.locationStreetSuffix();
	}
	foreach(i; 0 .. 4) {
		f.locationTimeZone();
	}
	foreach(i; 0 .. 4) {
		f.loremParagraph();
	}
	foreach(i; 0 .. 4) {
		f.loremParagraphs();
	}
	foreach(i; 0 .. 4) {
		f.loremSentance();
	}
	foreach(i; 0 .. 4) {
		f.loremSentances();
	}
	foreach(i; 0 .. 4) {
		f.loremText();
	}
	foreach(i; 0 .. 4) {
		f.loremWords();
	}
	foreach(i; 0 .. 4) {
		f.musicGenre();
	}
	foreach(i; 0 .. 4) {
		f.musicSongName();
	}
	foreach(i; 0 .. 4) {
		f.personBioPart();
	}
	foreach(i; 0 .. 4) {
		f.personBioPattern();
	}
	foreach(i; 0 .. 4) {
		f.personBioSupporter();
	}
	foreach(i; 0 .. 4) {
		f.personFemaleFirstName();
	}
	foreach(i; 0 .. 4) {
		f.personFemaleMiddleName();
	}
	foreach(i; 0 .. 4) {
		f.personFemalePrefix();
	}
	foreach(i; 0 .. 4) {
		f.personFirstName();
	}
	foreach(i; 0 .. 4) {
		f.personGender();
	}
	foreach(i; 0 .. 4) {
		f.personJobArea();
	}
	foreach(i; 0 .. 4) {
		f.personJobDescriptor();
	}
	foreach(i; 0 .. 4) {
		f.personJobTitlePattern();
	}
	foreach(i; 0 .. 4) {
		f.personJobType();
	}
	foreach(i; 0 .. 4) {
		f.personLastName();
	}
	foreach(i; 0 .. 4) {
		f.personLastNamePattern();
	}
	foreach(i; 0 .. 4) {
		f.personMaleFirstName();
	}
	foreach(i; 0 .. 4) {
		f.personMaleMiddleName();
	}
	foreach(i; 0 .. 4) {
		f.personMalePrefix();
	}
	foreach(i; 0 .. 4) {
		f.personMiddleName();
	}
	foreach(i; 0 .. 4) {
		f.personName();
	}
	foreach(i; 0 .. 4) {
		f.personPrefix();
	}
	foreach(i; 0 .. 4) {
		f.personSex();
	}
	foreach(i; 0 .. 4) {
		f.personSuffix();
	}
	foreach(i; 0 .. 4) {
		f.personTitleDescriptor();
	}
	foreach(i; 0 .. 4) {
		f.personTitleJob();
	}
	foreach(i; 0 .. 4) {
		f.personTitleLevel();
	}
	foreach(i; 0 .. 4) {
		f.personWesternZodiacSign();
	}
	foreach(i; 0 .. 4) {
		f.phoneNumber();
	}
	foreach(i; 0 .. 4) {
		f.phoneNumberFormats();
	}
	foreach(i; 0 .. 4) {
		f.scienceChemicalElement();
	}
	foreach(i; 0 .. 4) {
		f.scienceUnit();
	}
	foreach(i; 0 .. 4) {
		f.systemDirectoryPaths();
	}
	foreach(i; 0 .. 4) {
		f.teamCreature();
	}
	foreach(i; 0 .. 4) {
		f.teamName();
	}
	foreach(i; 0 .. 4) {
		f.vehicleBicycleType();
	}
	foreach(i; 0 .. 4) {
		f.vehicleFuel();
	}
	foreach(i; 0 .. 4) {
		f.vehicleManufacturer();
	}
	foreach(i; 0 .. 4) {
		f.vehicleModel();
	}
	foreach(i; 0 .. 4) {
		f.vehicleType();
	}
	foreach(i; 0 .. 4) {
		f.wordAdjective();
	}
	foreach(i; 0 .. 4) {
		f.wordAdverb();
	}
	foreach(i; 0 .. 4) {
		f.wordConjunction();
	}
	foreach(i; 0 .. 4) {
		f.wordInterjection();
	}
	foreach(i; 0 .. 4) {
		f.wordNoun();
	}
	foreach(i; 0 .. 4) {
		f.wordPreposition();
	}
	foreach(i; 0 .. 4) {
		f.wordVerb();
	}
}

unittest {
	auto f = new Faker_da(13);

	foreach(i; 0 .. 4) {
		f.airlineAirline();
	}
	foreach(i; 0 .. 4) {
		f.airlineAirplane();
	}
	foreach(i; 0 .. 4) {
		f.airlineAirport();
	}
	foreach(i; 0 .. 4) {
		f.animalBear();
	}
	foreach(i; 0 .. 4) {
		f.animalBird();
	}
	foreach(i; 0 .. 4) {
		f.animalCat();
	}
	foreach(i; 0 .. 4) {
		f.animalCetacean();
	}
	foreach(i; 0 .. 4) {
		f.animalCow();
	}
	foreach(i; 0 .. 4) {
		f.animalCrocodilia();
	}
	foreach(i; 0 .. 4) {
		f.animalDog();
	}
	foreach(i; 0 .. 4) {
		f.animalFish();
	}
	foreach(i; 0 .. 4) {
		f.animalHorse();
	}
	foreach(i; 0 .. 4) {
		f.animalInsect();
	}
	foreach(i; 0 .. 4) {
		f.animalLion();
	}
	foreach(i; 0 .. 4) {
		f.animalRabbit();
	}
	foreach(i; 0 .. 4) {
		f.animalRodent();
	}
	foreach(i; 0 .. 4) {
		f.animalSnake();
	}
	foreach(i; 0 .. 4) {
		f.appAuthor();
	}
	foreach(i; 0 .. 4) {
		f.appName();
	}
	foreach(i; 0 .. 4) {
		f.appVersion();
	}
	foreach(i; 0 .. 4) {
		f.cellPhoneFormats();
	}
	foreach(i; 0 .. 4) {
		f.commerceDepartment();
	}
	foreach(i; 0 .. 4) {
		f.commerceProductDescription();
	}
	foreach(i; 0 .. 4) {
		f.commerceProductNameAdjective();
	}
	foreach(i; 0 .. 4) {
		f.commerceProductNameMaterial();
	}
	foreach(i; 0 .. 4) {
		f.commerceProductNameProduct();
	}
	foreach(i; 0 .. 4) {
		f.companyAdjective();
	}
	foreach(i; 0 .. 4) {
		f.companyBuzzAdjective();
	}
	foreach(i; 0 .. 4) {
		f.companyBuzzNoun();
	}
	foreach(i; 0 .. 4) {
		f.companyBuzzVerb();
	}
	foreach(i; 0 .. 4) {
		f.companyCatchPhrase();
	}
	foreach(i; 0 .. 4) {
		f.companyDescriptor();
	}
	foreach(i; 0 .. 4) {
		f.companyName();
	}
	foreach(i; 0 .. 4) {
		f.companyNamePattern();
	}
	foreach(i; 0 .. 4) {
		f.companyNoun();
	}
	foreach(i; 0 .. 4) {
		f.companySuffix();
	}
	foreach(i; 0 .. 4) {
		f.databaseCollation();
	}
	foreach(i; 0 .. 4) {
		f.databaseColumn();
	}
	foreach(i; 0 .. 4) {
		f.databaseEngine();
	}
	foreach(i; 0 .. 4) {
		f.databaseType();
	}
	foreach(i; 0 .. 4) {
		f.dateMonthAbbr();
	}
	foreach(i; 0 .. 4) {
		f.dateMonthWide();
	}
	foreach(i; 0 .. 4) {
		f.dateWeekdayAbbr();
	}
	foreach(i; 0 .. 4) {
		f.dateWeekdayWide();
	}
	foreach(i; 0 .. 4) {
		f.financeAccountType();
	}
	foreach(i; 0 .. 4) {
		f.financeCreditCardAmericanExpress();
	}
	foreach(i; 0 .. 4) {
		f.financeCreditCardDinersClub();
	}
	foreach(i; 0 .. 4) {
		f.financeCreditCardDiscover();
	}
	foreach(i; 0 .. 4) {
		f.financeCreditCardJcb();
	}
	foreach(i; 0 .. 4) {
		f.financeCreditCardMaestro();
	}
	foreach(i; 0 .. 4) {
		f.financeCreditCardMastercard();
	}
	foreach(i; 0 .. 4) {
		f.financeCreditCardVisa();
	}
	foreach(i; 0 .. 4) {
		f.financeCurrency();
	}
	foreach(i; 0 .. 4) {
		f.financeTransactionType();
	}
	foreach(i; 0 .. 4) {
		f.hackerAbbreviation();
	}
	foreach(i; 0 .. 4) {
		f.hackerAdjective();
	}
	foreach(i; 0 .. 4) {
		f.hackerIngverb();
	}
	foreach(i; 0 .. 4) {
		f.hackerNoun();
	}
	foreach(i; 0 .. 4) {
		f.hackerPhrase();
	}
	foreach(i; 0 .. 4) {
		f.hackerVerb();
	}
	foreach(i; 0 .. 4) {
		f.internetDomainSuffix();
	}
	foreach(i; 0 .. 4) {
		f.internetEmoji();
	}
	foreach(i; 0 .. 4) {
		f.internetEmojiActivity();
	}
	foreach(i; 0 .. 4) {
		f.internetEmojiBody();
	}
	foreach(i; 0 .. 4) {
		f.internetEmojiFlag();
	}
	foreach(i; 0 .. 4) {
		f.internetEmojiFood();
	}
	foreach(i; 0 .. 4) {
		f.internetEmojiNature();
	}
	foreach(i; 0 .. 4) {
		f.internetEmojiObject();
	}
	foreach(i; 0 .. 4) {
		f.internetEmojiPerson();
	}
	foreach(i; 0 .. 4) {
		f.internetEmojiSmiley();
	}
	foreach(i; 0 .. 4) {
		f.internetEmojiSymbol();
	}
	foreach(i; 0 .. 4) {
		f.internetEmojiTravel();
	}
	foreach(i; 0 .. 4) {
		f.internetExampleEmail();
	}
	foreach(i; 0 .. 4) {
		f.internetFreeEmail();
	}
	foreach(i; 0 .. 4) {
		f.locationBuildingNumber();
	}
	foreach(i; 0 .. 4) {
		f.locationCity();
	}
	foreach(i; 0 .. 4) {
		f.locationCityName();
	}
	foreach(i; 0 .. 4) {
		f.locationCityPattern();
	}
	foreach(i; 0 .. 4) {
		f.locationCityPrefix();
	}
	foreach(i; 0 .. 4) {
		f.locationCitySuffix();
	}
	foreach(i; 0 .. 4) {
		f.locationCountry();
	}
	foreach(i; 0 .. 4) {
		f.locationCounty();
	}
	foreach(i; 0 .. 4) {
		f.locationDefaultCountry();
	}
	foreach(i; 0 .. 4) {
		f.locationDirection();
	}
	foreach(i; 0 .. 4) {
		f.locationDirectionAbbr();
	}
	foreach(i; 0 .. 4) {
		f.locationPostcode();
	}
	foreach(i; 0 .. 4) {
		f.locationSecondaryAddress();
	}
	foreach(i; 0 .. 4) {
		f.locationState();
	}
	foreach(i; 0 .. 4) {
		f.locationStateAbbr();
	}
	foreach(i; 0 .. 4) {
		f.locationStreetAddress();
	}
	foreach(i; 0 .. 4) {
		f.locationStreetName();
	}
	foreach(i; 0 .. 4) {
		f.locationStreetPattern();
	}
	foreach(i; 0 .. 4) {
		f.locationStreetSuffix();
	}
	foreach(i; 0 .. 4) {
		f.locationTimeZone();
	}
	foreach(i; 0 .. 4) {
		f.loremParagraph();
	}
	foreach(i; 0 .. 4) {
		f.loremParagraphs();
	}
	foreach(i; 0 .. 4) {
		f.loremSentance();
	}
	foreach(i; 0 .. 4) {
		f.loremSentances();
	}
	foreach(i; 0 .. 4) {
		f.loremText();
	}
	foreach(i; 0 .. 4) {
		f.loremWords();
	}
	foreach(i; 0 .. 4) {
		f.musicGenre();
	}
	foreach(i; 0 .. 4) {
		f.musicSongName();
	}
	foreach(i; 0 .. 4) {
		f.personBioPart();
	}
	foreach(i; 0 .. 4) {
		f.personBioPattern();
	}
	foreach(i; 0 .. 4) {
		f.personBioSupporter();
	}
	foreach(i; 0 .. 4) {
		f.personFemaleFirstName();
	}
	foreach(i; 0 .. 4) {
		f.personFemaleMiddleName();
	}
	foreach(i; 0 .. 4) {
		f.personFemalePrefix();
	}
	foreach(i; 0 .. 4) {
		f.personFirstName();
	}
	foreach(i; 0 .. 4) {
		f.personGender();
	}
	foreach(i; 0 .. 4) {
		f.personJobArea();
	}
	foreach(i; 0 .. 4) {
		f.personJobDescriptor();
	}
	foreach(i; 0 .. 4) {
		f.personJobTitlePattern();
	}
	foreach(i; 0 .. 4) {
		f.personJobType();
	}
	foreach(i; 0 .. 4) {
		f.personLastName();
	}
	foreach(i; 0 .. 4) {
		f.personLastNamePattern();
	}
	foreach(i; 0 .. 4) {
		f.personMaleFirstName();
	}
	foreach(i; 0 .. 4) {
		f.personMaleMiddleName();
	}
	foreach(i; 0 .. 4) {
		f.personMalePrefix();
	}
	foreach(i; 0 .. 4) {
		f.personMiddleName();
	}
	foreach(i; 0 .. 4) {
		f.personName();
	}
	foreach(i; 0 .. 4) {
		f.personPrefix();
	}
	foreach(i; 0 .. 4) {
		f.personSex();
	}
	foreach(i; 0 .. 4) {
		f.personSuffix();
	}
	foreach(i; 0 .. 4) {
		f.personTitleDescriptor();
	}
	foreach(i; 0 .. 4) {
		f.personTitleJob();
	}
	foreach(i; 0 .. 4) {
		f.personTitleLevel();
	}
	foreach(i; 0 .. 4) {
		f.personWesternZodiacSign();
	}
	foreach(i; 0 .. 4) {
		f.phoneNumber();
	}
	foreach(i; 0 .. 4) {
		f.phoneNumberFormats();
	}
	foreach(i; 0 .. 4) {
		f.scienceChemicalElement();
	}
	foreach(i; 0 .. 4) {
		f.scienceUnit();
	}
	foreach(i; 0 .. 4) {
		f.systemDirectoryPaths();
	}
	foreach(i; 0 .. 4) {
		f.teamCreature();
	}
	foreach(i; 0 .. 4) {
		f.teamName();
	}
	foreach(i; 0 .. 4) {
		f.vehicleBicycleType();
	}
	foreach(i; 0 .. 4) {
		f.vehicleFuel();
	}
	foreach(i; 0 .. 4) {
		f.vehicleManufacturer();
	}
	foreach(i; 0 .. 4) {
		f.vehicleModel();
	}
	foreach(i; 0 .. 4) {
		f.vehicleType();
	}
	foreach(i; 0 .. 4) {
		f.wordAdjective();
	}
	foreach(i; 0 .. 4) {
		f.wordAdverb();
	}
	foreach(i; 0 .. 4) {
		f.wordConjunction();
	}
	foreach(i; 0 .. 4) {
		f.wordInterjection();
	}
	foreach(i; 0 .. 4) {
		f.wordNoun();
	}
	foreach(i; 0 .. 4) {
		f.wordPreposition();
	}
	foreach(i; 0 .. 4) {
		f.wordVerb();
	}
}

unittest {
	auto f = new Faker_de(13);

	foreach(i; 0 .. 4) {
		f.airlineAirline();
	}
	foreach(i; 0 .. 4) {
		f.airlineAirplane();
	}
	foreach(i; 0 .. 4) {
		f.airlineAirport();
	}
	foreach(i; 0 .. 4) {
		f.animalBear();
	}
	foreach(i; 0 .. 4) {
		f.animalBird();
	}
	foreach(i; 0 .. 4) {
		f.animalCat();
	}
	foreach(i; 0 .. 4) {
		f.animalCetacean();
	}
	foreach(i; 0 .. 4) {
		f.animalCow();
	}
	foreach(i; 0 .. 4) {
		f.animalCrocodilia();
	}
	foreach(i; 0 .. 4) {
		f.animalDog();
	}
	foreach(i; 0 .. 4) {
		f.animalFish();
	}
	foreach(i; 0 .. 4) {
		f.animalHorse();
	}
	foreach(i; 0 .. 4) {
		f.animalInsect();
	}
	foreach(i; 0 .. 4) {
		f.animalLion();
	}
	foreach(i; 0 .. 4) {
		f.animalRabbit();
	}
	foreach(i; 0 .. 4) {
		f.animalRodent();
	}
	foreach(i; 0 .. 4) {
		f.animalSnake();
	}
	foreach(i; 0 .. 4) {
		f.appAuthor();
	}
	foreach(i; 0 .. 4) {
		f.appName();
	}
	foreach(i; 0 .. 4) {
		f.appVersion();
	}
	foreach(i; 0 .. 4) {
		f.cellPhoneFormats();
	}
	foreach(i; 0 .. 4) {
		f.commerceDepartment();
	}
	foreach(i; 0 .. 4) {
		f.commerceProductDescription();
	}
	foreach(i; 0 .. 4) {
		f.commerceProductNameAdjective();
	}
	foreach(i; 0 .. 4) {
		f.commerceProductNameMaterial();
	}
	foreach(i; 0 .. 4) {
		f.commerceProductNameProduct();
	}
	foreach(i; 0 .. 4) {
		f.companyAdjective();
	}
	foreach(i; 0 .. 4) {
		f.companyBuzzAdjective();
	}
	foreach(i; 0 .. 4) {
		f.companyBuzzNoun();
	}
	foreach(i; 0 .. 4) {
		f.companyBuzzVerb();
	}
	foreach(i; 0 .. 4) {
		f.companyCatchPhrase();
	}
	foreach(i; 0 .. 4) {
		f.companyDescriptor();
	}
	foreach(i; 0 .. 4) {
		f.companyName();
	}
	foreach(i; 0 .. 4) {
		f.companyNamePattern();
	}
	foreach(i; 0 .. 4) {
		f.companyNoun();
	}
	foreach(i; 0 .. 4) {
		f.companySuffix();
	}
	foreach(i; 0 .. 4) {
		f.databaseCollation();
	}
	foreach(i; 0 .. 4) {
		f.databaseColumn();
	}
	foreach(i; 0 .. 4) {
		f.databaseEngine();
	}
	foreach(i; 0 .. 4) {
		f.databaseType();
	}
	foreach(i; 0 .. 4) {
		f.dateMonthAbbr();
	}
	foreach(i; 0 .. 4) {
		f.dateMonthWide();
	}
	foreach(i; 0 .. 4) {
		f.dateWeekdayAbbr();
	}
	foreach(i; 0 .. 4) {
		f.dateWeekdayWide();
	}
	foreach(i; 0 .. 4) {
		f.financeAccountType();
	}
	foreach(i; 0 .. 4) {
		f.financeCreditCardAmericanExpress();
	}
	foreach(i; 0 .. 4) {
		f.financeCreditCardDinersClub();
	}
	foreach(i; 0 .. 4) {
		f.financeCreditCardDiscover();
	}
	foreach(i; 0 .. 4) {
		f.financeCreditCardJcb();
	}
	foreach(i; 0 .. 4) {
		f.financeCreditCardMaestro();
	}
	foreach(i; 0 .. 4) {
		f.financeCreditCardMastercard();
	}
	foreach(i; 0 .. 4) {
		f.financeCreditCardVisa();
	}
	foreach(i; 0 .. 4) {
		f.financeCurrency();
	}
	foreach(i; 0 .. 4) {
		f.financeTransactionType();
	}
	foreach(i; 0 .. 4) {
		f.hackerAbbreviation();
	}
	foreach(i; 0 .. 4) {
		f.hackerAdjective();
	}
	foreach(i; 0 .. 4) {
		f.hackerIngverb();
	}
	foreach(i; 0 .. 4) {
		f.hackerNoun();
	}
	foreach(i; 0 .. 4) {
		f.hackerPhrase();
	}
	foreach(i; 0 .. 4) {
		f.hackerVerb();
	}
	foreach(i; 0 .. 4) {
		f.internetDomainSuffix();
	}
	foreach(i; 0 .. 4) {
		f.internetEmoji();
	}
	foreach(i; 0 .. 4) {
		f.internetEmojiActivity();
	}
	foreach(i; 0 .. 4) {
		f.internetEmojiBody();
	}
	foreach(i; 0 .. 4) {
		f.internetEmojiFlag();
	}
	foreach(i; 0 .. 4) {
		f.internetEmojiFood();
	}
	foreach(i; 0 .. 4) {
		f.internetEmojiNature();
	}
	foreach(i; 0 .. 4) {
		f.internetEmojiObject();
	}
	foreach(i; 0 .. 4) {
		f.internetEmojiPerson();
	}
	foreach(i; 0 .. 4) {
		f.internetEmojiSmiley();
	}
	foreach(i; 0 .. 4) {
		f.internetEmojiSymbol();
	}
	foreach(i; 0 .. 4) {
		f.internetEmojiTravel();
	}
	foreach(i; 0 .. 4) {
		f.internetExampleEmail();
	}
	foreach(i; 0 .. 4) {
		f.internetFreeEmail();
	}
	foreach(i; 0 .. 4) {
		f.locationBuildingNumber();
	}
	foreach(i; 0 .. 4) {
		f.locationCity();
	}
	foreach(i; 0 .. 4) {
		f.locationCityName();
	}
	foreach(i; 0 .. 4) {
		f.locationCityPattern();
	}
	foreach(i; 0 .. 4) {
		f.locationCityPrefix();
	}
	foreach(i; 0 .. 4) {
		f.locationCitySuffix();
	}
	foreach(i; 0 .. 4) {
		f.locationCountry();
	}
	foreach(i; 0 .. 4) {
		f.locationCounty();
	}
	foreach(i; 0 .. 4) {
		f.locationDefaultCountry();
	}
	foreach(i; 0 .. 4) {
		f.locationDirection();
	}
	foreach(i; 0 .. 4) {
		f.locationDirectionAbbr();
	}
	foreach(i; 0 .. 4) {
		f.locationPostcode();
	}
	foreach(i; 0 .. 4) {
		f.locationSecondaryAddress();
	}
	foreach(i; 0 .. 4) {
		f.locationState();
	}
	foreach(i; 0 .. 4) {
		f.locationStateAbbr();
	}
	foreach(i; 0 .. 4) {
		f.locationStreetAddress();
	}
	foreach(i; 0 .. 4) {
		f.locationStreetName();
	}
	foreach(i; 0 .. 4) {
		f.locationStreetPattern();
	}
	foreach(i; 0 .. 4) {
		f.locationStreetSuffix();
	}
	foreach(i; 0 .. 4) {
		f.locationTimeZone();
	}
	foreach(i; 0 .. 4) {
		f.loremParagraph();
	}
	foreach(i; 0 .. 4) {
		f.loremParagraphs();
	}
	foreach(i; 0 .. 4) {
		f.loremSentance();
	}
	foreach(i; 0 .. 4) {
		f.loremSentances();
	}
	foreach(i; 0 .. 4) {
		f.loremText();
	}
	foreach(i; 0 .. 4) {
		f.loremWords();
	}
	foreach(i; 0 .. 4) {
		f.musicGenre();
	}
	foreach(i; 0 .. 4) {
		f.musicSongName();
	}
	foreach(i; 0 .. 4) {
		f.personBioPart();
	}
	foreach(i; 0 .. 4) {
		f.personBioPattern();
	}
	foreach(i; 0 .. 4) {
		f.personBioSupporter();
	}
	foreach(i; 0 .. 4) {
		f.personFemaleFirstName();
	}
	foreach(i; 0 .. 4) {
		f.personFemaleMiddleName();
	}
	foreach(i; 0 .. 4) {
		f.personFemalePrefix();
	}
	foreach(i; 0 .. 4) {
		f.personFirstName();
	}
	foreach(i; 0 .. 4) {
		f.personGender();
	}
	foreach(i; 0 .. 4) {
		f.personJobArea();
	}
	foreach(i; 0 .. 4) {
		f.personJobDescriptor();
	}
	foreach(i; 0 .. 4) {
		f.personJobTitlePattern();
	}
	foreach(i; 0 .. 4) {
		f.personJobType();
	}
	foreach(i; 0 .. 4) {
		f.personLastName();
	}
	foreach(i; 0 .. 4) {
		f.personLastNamePattern();
	}
	foreach(i; 0 .. 4) {
		f.personMaleFirstName();
	}
	foreach(i; 0 .. 4) {
		f.personMaleMiddleName();
	}
	foreach(i; 0 .. 4) {
		f.personMalePrefix();
	}
	foreach(i; 0 .. 4) {
		f.personMiddleName();
	}
	foreach(i; 0 .. 4) {
		f.personName();
	}
	foreach(i; 0 .. 4) {
		f.personPrefix();
	}
	foreach(i; 0 .. 4) {
		f.personSex();
	}
	foreach(i; 0 .. 4) {
		f.personSuffix();
	}
	foreach(i; 0 .. 4) {
		f.personTitleDescriptor();
	}
	foreach(i; 0 .. 4) {
		f.personTitleJob();
	}
	foreach(i; 0 .. 4) {
		f.personTitleLevel();
	}
	foreach(i; 0 .. 4) {
		f.personWesternZodiacSign();
	}
	foreach(i; 0 .. 4) {
		f.phoneNumber();
	}
	foreach(i; 0 .. 4) {
		f.phoneNumberFormats();
	}
	foreach(i; 0 .. 4) {
		f.scienceChemicalElement();
	}
	foreach(i; 0 .. 4) {
		f.scienceUnit();
	}
	foreach(i; 0 .. 4) {
		f.systemDirectoryPaths();
	}
	foreach(i; 0 .. 4) {
		f.teamCreature();
	}
	foreach(i; 0 .. 4) {
		f.teamName();
	}
	foreach(i; 0 .. 4) {
		f.vehicleBicycleType();
	}
	foreach(i; 0 .. 4) {
		f.vehicleFuel();
	}
	foreach(i; 0 .. 4) {
		f.vehicleManufacturer();
	}
	foreach(i; 0 .. 4) {
		f.vehicleModel();
	}
	foreach(i; 0 .. 4) {
		f.vehicleType();
	}
	foreach(i; 0 .. 4) {
		f.wordAdjective();
	}
	foreach(i; 0 .. 4) {
		f.wordAdverb();
	}
	foreach(i; 0 .. 4) {
		f.wordConjunction();
	}
	foreach(i; 0 .. 4) {
		f.wordInterjection();
	}
	foreach(i; 0 .. 4) {
		f.wordNoun();
	}
	foreach(i; 0 .. 4) {
		f.wordPreposition();
	}
	foreach(i; 0 .. 4) {
		f.wordVerb();
	}
}

unittest {
	auto f = new Faker_de_at(13);

	foreach(i; 0 .. 4) {
		f.airlineAirline();
	}
	foreach(i; 0 .. 4) {
		f.airlineAirplane();
	}
	foreach(i; 0 .. 4) {
		f.airlineAirport();
	}
	foreach(i; 0 .. 4) {
		f.animalBear();
	}
	foreach(i; 0 .. 4) {
		f.animalBird();
	}
	foreach(i; 0 .. 4) {
		f.animalCat();
	}
	foreach(i; 0 .. 4) {
		f.animalCetacean();
	}
	foreach(i; 0 .. 4) {
		f.animalCow();
	}
	foreach(i; 0 .. 4) {
		f.animalCrocodilia();
	}
	foreach(i; 0 .. 4) {
		f.animalDog();
	}
	foreach(i; 0 .. 4) {
		f.animalFish();
	}
	foreach(i; 0 .. 4) {
		f.animalHorse();
	}
	foreach(i; 0 .. 4) {
		f.animalInsect();
	}
	foreach(i; 0 .. 4) {
		f.animalLion();
	}
	foreach(i; 0 .. 4) {
		f.animalRabbit();
	}
	foreach(i; 0 .. 4) {
		f.animalRodent();
	}
	foreach(i; 0 .. 4) {
		f.animalSnake();
	}
	foreach(i; 0 .. 4) {
		f.appAuthor();
	}
	foreach(i; 0 .. 4) {
		f.appName();
	}
	foreach(i; 0 .. 4) {
		f.appVersion();
	}
	foreach(i; 0 .. 4) {
		f.cellPhoneFormats();
	}
	foreach(i; 0 .. 4) {
		f.commerceDepartment();
	}
	foreach(i; 0 .. 4) {
		f.commerceProductDescription();
	}
	foreach(i; 0 .. 4) {
		f.commerceProductNameAdjective();
	}
	foreach(i; 0 .. 4) {
		f.commerceProductNameMaterial();
	}
	foreach(i; 0 .. 4) {
		f.commerceProductNameProduct();
	}
	foreach(i; 0 .. 4) {
		f.companyAdjective();
	}
	foreach(i; 0 .. 4) {
		f.companyBuzzAdjective();
	}
	foreach(i; 0 .. 4) {
		f.companyBuzzNoun();
	}
	foreach(i; 0 .. 4) {
		f.companyBuzzVerb();
	}
	foreach(i; 0 .. 4) {
		f.companyCatchPhrase();
	}
	foreach(i; 0 .. 4) {
		f.companyDescriptor();
	}
	foreach(i; 0 .. 4) {
		f.companyName();
	}
	foreach(i; 0 .. 4) {
		f.companyNamePattern();
	}
	foreach(i; 0 .. 4) {
		f.companyNoun();
	}
	foreach(i; 0 .. 4) {
		f.companySuffix();
	}
	foreach(i; 0 .. 4) {
		f.databaseCollation();
	}
	foreach(i; 0 .. 4) {
		f.databaseColumn();
	}
	foreach(i; 0 .. 4) {
		f.databaseEngine();
	}
	foreach(i; 0 .. 4) {
		f.databaseType();
	}
	foreach(i; 0 .. 4) {
		f.dateMonthAbbr();
	}
	foreach(i; 0 .. 4) {
		f.dateMonthWide();
	}
	foreach(i; 0 .. 4) {
		f.dateWeekdayAbbr();
	}
	foreach(i; 0 .. 4) {
		f.dateWeekdayWide();
	}
	foreach(i; 0 .. 4) {
		f.financeAccountType();
	}
	foreach(i; 0 .. 4) {
		f.financeCreditCardAmericanExpress();
	}
	foreach(i; 0 .. 4) {
		f.financeCreditCardDinersClub();
	}
	foreach(i; 0 .. 4) {
		f.financeCreditCardDiscover();
	}
	foreach(i; 0 .. 4) {
		f.financeCreditCardJcb();
	}
	foreach(i; 0 .. 4) {
		f.financeCreditCardMaestro();
	}
	foreach(i; 0 .. 4) {
		f.financeCreditCardMastercard();
	}
	foreach(i; 0 .. 4) {
		f.financeCreditCardVisa();
	}
	foreach(i; 0 .. 4) {
		f.financeCurrency();
	}
	foreach(i; 0 .. 4) {
		f.financeTransactionType();
	}
	foreach(i; 0 .. 4) {
		f.hackerAbbreviation();
	}
	foreach(i; 0 .. 4) {
		f.hackerAdjective();
	}
	foreach(i; 0 .. 4) {
		f.hackerIngverb();
	}
	foreach(i; 0 .. 4) {
		f.hackerNoun();
	}
	foreach(i; 0 .. 4) {
		f.hackerPhrase();
	}
	foreach(i; 0 .. 4) {
		f.hackerVerb();
	}
	foreach(i; 0 .. 4) {
		f.internetDomainSuffix();
	}
	foreach(i; 0 .. 4) {
		f.internetEmoji();
	}
	foreach(i; 0 .. 4) {
		f.internetEmojiActivity();
	}
	foreach(i; 0 .. 4) {
		f.internetEmojiBody();
	}
	foreach(i; 0 .. 4) {
		f.internetEmojiFlag();
	}
	foreach(i; 0 .. 4) {
		f.internetEmojiFood();
	}
	foreach(i; 0 .. 4) {
		f.internetEmojiNature();
	}
	foreach(i; 0 .. 4) {
		f.internetEmojiObject();
	}
	foreach(i; 0 .. 4) {
		f.internetEmojiPerson();
	}
	foreach(i; 0 .. 4) {
		f.internetEmojiSmiley();
	}
	foreach(i; 0 .. 4) {
		f.internetEmojiSymbol();
	}
	foreach(i; 0 .. 4) {
		f.internetEmojiTravel();
	}
	foreach(i; 0 .. 4) {
		f.internetExampleEmail();
	}
	foreach(i; 0 .. 4) {
		f.internetFreeEmail();
	}
	foreach(i; 0 .. 4) {
		f.locationBuildingNumber();
	}
	foreach(i; 0 .. 4) {
		f.locationCity();
	}
	foreach(i; 0 .. 4) {
		f.locationCityName();
	}
	foreach(i; 0 .. 4) {
		f.locationCityPattern();
	}
	foreach(i; 0 .. 4) {
		f.locationCityPrefix();
	}
	foreach(i; 0 .. 4) {
		f.locationCitySuffix();
	}
	foreach(i; 0 .. 4) {
		f.locationCountry();
	}
	foreach(i; 0 .. 4) {
		f.locationCounty();
	}
	foreach(i; 0 .. 4) {
		f.locationDefaultCountry();
	}
	foreach(i; 0 .. 4) {
		f.locationDirection();
	}
	foreach(i; 0 .. 4) {
		f.locationDirectionAbbr();
	}
	foreach(i; 0 .. 4) {
		f.locationPostcode();
	}
	foreach(i; 0 .. 4) {
		f.locationSecondaryAddress();
	}
	foreach(i; 0 .. 4) {
		f.locationState();
	}
	foreach(i; 0 .. 4) {
		f.locationStateAbbr();
	}
	foreach(i; 0 .. 4) {
		f.locationStreetAddress();
	}
	foreach(i; 0 .. 4) {
		f.locationStreetName();
	}
	foreach(i; 0 .. 4) {
		f.locationStreetPattern();
	}
	foreach(i; 0 .. 4) {
		f.locationStreetSuffix();
	}
	foreach(i; 0 .. 4) {
		f.locationTimeZone();
	}
	foreach(i; 0 .. 4) {
		f.loremParagraph();
	}
	foreach(i; 0 .. 4) {
		f.loremParagraphs();
	}
	foreach(i; 0 .. 4) {
		f.loremSentance();
	}
	foreach(i; 0 .. 4) {
		f.loremSentances();
	}
	foreach(i; 0 .. 4) {
		f.loremText();
	}
	foreach(i; 0 .. 4) {
		f.loremWords();
	}
	foreach(i; 0 .. 4) {
		f.musicGenre();
	}
	foreach(i; 0 .. 4) {
		f.musicSongName();
	}
	foreach(i; 0 .. 4) {
		f.personBioPart();
	}
	foreach(i; 0 .. 4) {
		f.personBioPattern();
	}
	foreach(i; 0 .. 4) {
		f.personBioSupporter();
	}
	foreach(i; 0 .. 4) {
		f.personFemaleFirstName();
	}
	foreach(i; 0 .. 4) {
		f.personFemaleMiddleName();
	}
	foreach(i; 0 .. 4) {
		f.personFemalePrefix();
	}
	foreach(i; 0 .. 4) {
		f.personFirstName();
	}
	foreach(i; 0 .. 4) {
		f.personGender();
	}
	foreach(i; 0 .. 4) {
		f.personJobArea();
	}
	foreach(i; 0 .. 4) {
		f.personJobDescriptor();
	}
	foreach(i; 0 .. 4) {
		f.personJobTitlePattern();
	}
	foreach(i; 0 .. 4) {
		f.personJobType();
	}
	foreach(i; 0 .. 4) {
		f.personLastName();
	}
	foreach(i; 0 .. 4) {
		f.personLastNamePattern();
	}
	foreach(i; 0 .. 4) {
		f.personMaleFirstName();
	}
	foreach(i; 0 .. 4) {
		f.personMaleMiddleName();
	}
	foreach(i; 0 .. 4) {
		f.personMalePrefix();
	}
	foreach(i; 0 .. 4) {
		f.personMiddleName();
	}
	foreach(i; 0 .. 4) {
		f.personName();
	}
	foreach(i; 0 .. 4) {
		f.personPrefix();
	}
	foreach(i; 0 .. 4) {
		f.personSex();
	}
	foreach(i; 0 .. 4) {
		f.personSuffix();
	}
	foreach(i; 0 .. 4) {
		f.personTitleDescriptor();
	}
	foreach(i; 0 .. 4) {
		f.personTitleJob();
	}
	foreach(i; 0 .. 4) {
		f.personTitleLevel();
	}
	foreach(i; 0 .. 4) {
		f.personWesternZodiacSign();
	}
	foreach(i; 0 .. 4) {
		f.phoneNumber();
	}
	foreach(i; 0 .. 4) {
		f.phoneNumberFormats();
	}
	foreach(i; 0 .. 4) {
		f.scienceChemicalElement();
	}
	foreach(i; 0 .. 4) {
		f.scienceUnit();
	}
	foreach(i; 0 .. 4) {
		f.systemDirectoryPaths();
	}
	foreach(i; 0 .. 4) {
		f.teamCreature();
	}
	foreach(i; 0 .. 4) {
		f.teamName();
	}
	foreach(i; 0 .. 4) {
		f.vehicleBicycleType();
	}
	foreach(i; 0 .. 4) {
		f.vehicleFuel();
	}
	foreach(i; 0 .. 4) {
		f.vehicleManufacturer();
	}
	foreach(i; 0 .. 4) {
		f.vehicleModel();
	}
	foreach(i; 0 .. 4) {
		f.vehicleType();
	}
	foreach(i; 0 .. 4) {
		f.wordAdjective();
	}
	foreach(i; 0 .. 4) {
		f.wordAdverb();
	}
	foreach(i; 0 .. 4) {
		f.wordConjunction();
	}
	foreach(i; 0 .. 4) {
		f.wordInterjection();
	}
	foreach(i; 0 .. 4) {
		f.wordNoun();
	}
	foreach(i; 0 .. 4) {
		f.wordPreposition();
	}
	foreach(i; 0 .. 4) {
		f.wordVerb();
	}
}

unittest {
	auto f = new Faker_de_ch(13);

	foreach(i; 0 .. 4) {
		f.airlineAirline();
	}
	foreach(i; 0 .. 4) {
		f.airlineAirplane();
	}
	foreach(i; 0 .. 4) {
		f.airlineAirport();
	}
	foreach(i; 0 .. 4) {
		f.animalBear();
	}
	foreach(i; 0 .. 4) {
		f.animalBird();
	}
	foreach(i; 0 .. 4) {
		f.animalCat();
	}
	foreach(i; 0 .. 4) {
		f.animalCetacean();
	}
	foreach(i; 0 .. 4) {
		f.animalCow();
	}
	foreach(i; 0 .. 4) {
		f.animalCrocodilia();
	}
	foreach(i; 0 .. 4) {
		f.animalDog();
	}
	foreach(i; 0 .. 4) {
		f.animalFish();
	}
	foreach(i; 0 .. 4) {
		f.animalHorse();
	}
	foreach(i; 0 .. 4) {
		f.animalInsect();
	}
	foreach(i; 0 .. 4) {
		f.animalLion();
	}
	foreach(i; 0 .. 4) {
		f.animalRabbit();
	}
	foreach(i; 0 .. 4) {
		f.animalRodent();
	}
	foreach(i; 0 .. 4) {
		f.animalSnake();
	}
	foreach(i; 0 .. 4) {
		f.appAuthor();
	}
	foreach(i; 0 .. 4) {
		f.appName();
	}
	foreach(i; 0 .. 4) {
		f.appVersion();
	}
	foreach(i; 0 .. 4) {
		f.cellPhoneFormats();
	}
	foreach(i; 0 .. 4) {
		f.commerceDepartment();
	}
	foreach(i; 0 .. 4) {
		f.commerceProductDescription();
	}
	foreach(i; 0 .. 4) {
		f.commerceProductNameAdjective();
	}
	foreach(i; 0 .. 4) {
		f.commerceProductNameMaterial();
	}
	foreach(i; 0 .. 4) {
		f.commerceProductNameProduct();
	}
	foreach(i; 0 .. 4) {
		f.companyAdjective();
	}
	foreach(i; 0 .. 4) {
		f.companyBuzzAdjective();
	}
	foreach(i; 0 .. 4) {
		f.companyBuzzNoun();
	}
	foreach(i; 0 .. 4) {
		f.companyBuzzVerb();
	}
	foreach(i; 0 .. 4) {
		f.companyCatchPhrase();
	}
	foreach(i; 0 .. 4) {
		f.companyDescriptor();
	}
	foreach(i; 0 .. 4) {
		f.companyName();
	}
	foreach(i; 0 .. 4) {
		f.companyNamePattern();
	}
	foreach(i; 0 .. 4) {
		f.companyNoun();
	}
	foreach(i; 0 .. 4) {
		f.companySuffix();
	}
	foreach(i; 0 .. 4) {
		f.databaseCollation();
	}
	foreach(i; 0 .. 4) {
		f.databaseColumn();
	}
	foreach(i; 0 .. 4) {
		f.databaseEngine();
	}
	foreach(i; 0 .. 4) {
		f.databaseType();
	}
	foreach(i; 0 .. 4) {
		f.dateMonthAbbr();
	}
	foreach(i; 0 .. 4) {
		f.dateMonthWide();
	}
	foreach(i; 0 .. 4) {
		f.dateWeekdayAbbr();
	}
	foreach(i; 0 .. 4) {
		f.dateWeekdayWide();
	}
	foreach(i; 0 .. 4) {
		f.financeAccountType();
	}
	foreach(i; 0 .. 4) {
		f.financeCreditCardAmericanExpress();
	}
	foreach(i; 0 .. 4) {
		f.financeCreditCardDinersClub();
	}
	foreach(i; 0 .. 4) {
		f.financeCreditCardDiscover();
	}
	foreach(i; 0 .. 4) {
		f.financeCreditCardJcb();
	}
	foreach(i; 0 .. 4) {
		f.financeCreditCardMaestro();
	}
	foreach(i; 0 .. 4) {
		f.financeCreditCardMastercard();
	}
	foreach(i; 0 .. 4) {
		f.financeCreditCardVisa();
	}
	foreach(i; 0 .. 4) {
		f.financeCurrency();
	}
	foreach(i; 0 .. 4) {
		f.financeTransactionType();
	}
	foreach(i; 0 .. 4) {
		f.hackerAbbreviation();
	}
	foreach(i; 0 .. 4) {
		f.hackerAdjective();
	}
	foreach(i; 0 .. 4) {
		f.hackerIngverb();
	}
	foreach(i; 0 .. 4) {
		f.hackerNoun();
	}
	foreach(i; 0 .. 4) {
		f.hackerPhrase();
	}
	foreach(i; 0 .. 4) {
		f.hackerVerb();
	}
	foreach(i; 0 .. 4) {
		f.internetDomainSuffix();
	}
	foreach(i; 0 .. 4) {
		f.internetEmoji();
	}
	foreach(i; 0 .. 4) {
		f.internetEmojiActivity();
	}
	foreach(i; 0 .. 4) {
		f.internetEmojiBody();
	}
	foreach(i; 0 .. 4) {
		f.internetEmojiFlag();
	}
	foreach(i; 0 .. 4) {
		f.internetEmojiFood();
	}
	foreach(i; 0 .. 4) {
		f.internetEmojiNature();
	}
	foreach(i; 0 .. 4) {
		f.internetEmojiObject();
	}
	foreach(i; 0 .. 4) {
		f.internetEmojiPerson();
	}
	foreach(i; 0 .. 4) {
		f.internetEmojiSmiley();
	}
	foreach(i; 0 .. 4) {
		f.internetEmojiSymbol();
	}
	foreach(i; 0 .. 4) {
		f.internetEmojiTravel();
	}
	foreach(i; 0 .. 4) {
		f.internetExampleEmail();
	}
	foreach(i; 0 .. 4) {
		f.internetFreeEmail();
	}
	foreach(i; 0 .. 4) {
		f.locationBuildingNumber();
	}
	foreach(i; 0 .. 4) {
		f.locationCity();
	}
	foreach(i; 0 .. 4) {
		f.locationCityName();
	}
	foreach(i; 0 .. 4) {
		f.locationCityPattern();
	}
	foreach(i; 0 .. 4) {
		f.locationCityPrefix();
	}
	foreach(i; 0 .. 4) {
		f.locationCitySuffix();
	}
	foreach(i; 0 .. 4) {
		f.locationCountry();
	}
	foreach(i; 0 .. 4) {
		f.locationCounty();
	}
	foreach(i; 0 .. 4) {
		f.locationDefaultCountry();
	}
	foreach(i; 0 .. 4) {
		f.locationDirection();
	}
	foreach(i; 0 .. 4) {
		f.locationDirectionAbbr();
	}
	foreach(i; 0 .. 4) {
		f.locationPostcode();
	}
	foreach(i; 0 .. 4) {
		f.locationSecondaryAddress();
	}
	foreach(i; 0 .. 4) {
		f.locationState();
	}
	foreach(i; 0 .. 4) {
		f.locationStateAbbr();
	}
	foreach(i; 0 .. 4) {
		f.locationStreetAddress();
	}
	foreach(i; 0 .. 4) {
		f.locationStreetName();
	}
	foreach(i; 0 .. 4) {
		f.locationStreetPattern();
	}
	foreach(i; 0 .. 4) {
		f.locationStreetSuffix();
	}
	foreach(i; 0 .. 4) {
		f.locationTimeZone();
	}
	foreach(i; 0 .. 4) {
		f.loremParagraph();
	}
	foreach(i; 0 .. 4) {
		f.loremParagraphs();
	}
	foreach(i; 0 .. 4) {
		f.loremSentance();
	}
	foreach(i; 0 .. 4) {
		f.loremSentances();
	}
	foreach(i; 0 .. 4) {
		f.loremText();
	}
	foreach(i; 0 .. 4) {
		f.loremWords();
	}
	foreach(i; 0 .. 4) {
		f.musicGenre();
	}
	foreach(i; 0 .. 4) {
		f.musicSongName();
	}
	foreach(i; 0 .. 4) {
		f.personBioPart();
	}
	foreach(i; 0 .. 4) {
		f.personBioPattern();
	}
	foreach(i; 0 .. 4) {
		f.personBioSupporter();
	}
	foreach(i; 0 .. 4) {
		f.personFemaleFirstName();
	}
	foreach(i; 0 .. 4) {
		f.personFemaleMiddleName();
	}
	foreach(i; 0 .. 4) {
		f.personFemalePrefix();
	}
	foreach(i; 0 .. 4) {
		f.personFirstName();
	}
	foreach(i; 0 .. 4) {
		f.personGender();
	}
	foreach(i; 0 .. 4) {
		f.personJobArea();
	}
	foreach(i; 0 .. 4) {
		f.personJobDescriptor();
	}
	foreach(i; 0 .. 4) {
		f.personJobTitlePattern();
	}
	foreach(i; 0 .. 4) {
		f.personJobType();
	}
	foreach(i; 0 .. 4) {
		f.personLastName();
	}
	foreach(i; 0 .. 4) {
		f.personLastNamePattern();
	}
	foreach(i; 0 .. 4) {
		f.personMaleFirstName();
	}
	foreach(i; 0 .. 4) {
		f.personMaleMiddleName();
	}
	foreach(i; 0 .. 4) {
		f.personMalePrefix();
	}
	foreach(i; 0 .. 4) {
		f.personMiddleName();
	}
	foreach(i; 0 .. 4) {
		f.personName();
	}
	foreach(i; 0 .. 4) {
		f.personPrefix();
	}
	foreach(i; 0 .. 4) {
		f.personSex();
	}
	foreach(i; 0 .. 4) {
		f.personSuffix();
	}
	foreach(i; 0 .. 4) {
		f.personTitleDescriptor();
	}
	foreach(i; 0 .. 4) {
		f.personTitleJob();
	}
	foreach(i; 0 .. 4) {
		f.personTitleLevel();
	}
	foreach(i; 0 .. 4) {
		f.personWesternZodiacSign();
	}
	foreach(i; 0 .. 4) {
		f.phoneNumber();
	}
	foreach(i; 0 .. 4) {
		f.phoneNumberFormats();
	}
	foreach(i; 0 .. 4) {
		f.scienceChemicalElement();
	}
	foreach(i; 0 .. 4) {
		f.scienceUnit();
	}
	foreach(i; 0 .. 4) {
		f.systemDirectoryPaths();
	}
	foreach(i; 0 .. 4) {
		f.teamCreature();
	}
	foreach(i; 0 .. 4) {
		f.teamName();
	}
	foreach(i; 0 .. 4) {
		f.vehicleBicycleType();
	}
	foreach(i; 0 .. 4) {
		f.vehicleFuel();
	}
	foreach(i; 0 .. 4) {
		f.vehicleManufacturer();
	}
	foreach(i; 0 .. 4) {
		f.vehicleModel();
	}
	foreach(i; 0 .. 4) {
		f.vehicleType();
	}
	foreach(i; 0 .. 4) {
		f.wordAdjective();
	}
	foreach(i; 0 .. 4) {
		f.wordAdverb();
	}
	foreach(i; 0 .. 4) {
		f.wordConjunction();
	}
	foreach(i; 0 .. 4) {
		f.wordInterjection();
	}
	foreach(i; 0 .. 4) {
		f.wordNoun();
	}
	foreach(i; 0 .. 4) {
		f.wordPreposition();
	}
	foreach(i; 0 .. 4) {
		f.wordVerb();
	}
}

unittest {
	auto f = new Faker_dv(13);

	foreach(i; 0 .. 4) {
		f.airlineAirline();
	}
	foreach(i; 0 .. 4) {
		f.airlineAirplane();
	}
	foreach(i; 0 .. 4) {
		f.airlineAirport();
	}
	foreach(i; 0 .. 4) {
		f.animalBear();
	}
	foreach(i; 0 .. 4) {
		f.animalBird();
	}
	foreach(i; 0 .. 4) {
		f.animalCat();
	}
	foreach(i; 0 .. 4) {
		f.animalCetacean();
	}
	foreach(i; 0 .. 4) {
		f.animalCow();
	}
	foreach(i; 0 .. 4) {
		f.animalCrocodilia();
	}
	foreach(i; 0 .. 4) {
		f.animalDog();
	}
	foreach(i; 0 .. 4) {
		f.animalFish();
	}
	foreach(i; 0 .. 4) {
		f.animalHorse();
	}
	foreach(i; 0 .. 4) {
		f.animalInsect();
	}
	foreach(i; 0 .. 4) {
		f.animalLion();
	}
	foreach(i; 0 .. 4) {
		f.animalRabbit();
	}
	foreach(i; 0 .. 4) {
		f.animalRodent();
	}
	foreach(i; 0 .. 4) {
		f.animalSnake();
	}
	foreach(i; 0 .. 4) {
		f.appAuthor();
	}
	foreach(i; 0 .. 4) {
		f.appName();
	}
	foreach(i; 0 .. 4) {
		f.appVersion();
	}
	foreach(i; 0 .. 4) {
		f.cellPhoneFormats();
	}
	foreach(i; 0 .. 4) {
		f.commerceDepartment();
	}
	foreach(i; 0 .. 4) {
		f.commerceProductDescription();
	}
	foreach(i; 0 .. 4) {
		f.commerceProductNameAdjective();
	}
	foreach(i; 0 .. 4) {
		f.commerceProductNameMaterial();
	}
	foreach(i; 0 .. 4) {
		f.commerceProductNameProduct();
	}
	foreach(i; 0 .. 4) {
		f.companyAdjective();
	}
	foreach(i; 0 .. 4) {
		f.companyBuzzAdjective();
	}
	foreach(i; 0 .. 4) {
		f.companyBuzzNoun();
	}
	foreach(i; 0 .. 4) {
		f.companyBuzzVerb();
	}
	foreach(i; 0 .. 4) {
		f.companyCatchPhrase();
	}
	foreach(i; 0 .. 4) {
		f.companyDescriptor();
	}
	foreach(i; 0 .. 4) {
		f.companyName();
	}
	foreach(i; 0 .. 4) {
		f.companyNamePattern();
	}
	foreach(i; 0 .. 4) {
		f.companyNoun();
	}
	foreach(i; 0 .. 4) {
		f.companySuffix();
	}
	foreach(i; 0 .. 4) {
		f.databaseCollation();
	}
	foreach(i; 0 .. 4) {
		f.databaseColumn();
	}
	foreach(i; 0 .. 4) {
		f.databaseEngine();
	}
	foreach(i; 0 .. 4) {
		f.databaseType();
	}
	foreach(i; 0 .. 4) {
		f.dateMonthAbbr();
	}
	foreach(i; 0 .. 4) {
		f.dateMonthWide();
	}
	foreach(i; 0 .. 4) {
		f.dateWeekdayAbbr();
	}
	foreach(i; 0 .. 4) {
		f.dateWeekdayWide();
	}
	foreach(i; 0 .. 4) {
		f.financeAccountType();
	}
	foreach(i; 0 .. 4) {
		f.financeCreditCardAmericanExpress();
	}
	foreach(i; 0 .. 4) {
		f.financeCreditCardDinersClub();
	}
	foreach(i; 0 .. 4) {
		f.financeCreditCardDiscover();
	}
	foreach(i; 0 .. 4) {
		f.financeCreditCardJcb();
	}
	foreach(i; 0 .. 4) {
		f.financeCreditCardMaestro();
	}
	foreach(i; 0 .. 4) {
		f.financeCreditCardMastercard();
	}
	foreach(i; 0 .. 4) {
		f.financeCreditCardVisa();
	}
	foreach(i; 0 .. 4) {
		f.financeCurrency();
	}
	foreach(i; 0 .. 4) {
		f.financeTransactionType();
	}
	foreach(i; 0 .. 4) {
		f.hackerAbbreviation();
	}
	foreach(i; 0 .. 4) {
		f.hackerAdjective();
	}
	foreach(i; 0 .. 4) {
		f.hackerIngverb();
	}
	foreach(i; 0 .. 4) {
		f.hackerNoun();
	}
	foreach(i; 0 .. 4) {
		f.hackerPhrase();
	}
	foreach(i; 0 .. 4) {
		f.hackerVerb();
	}
	foreach(i; 0 .. 4) {
		f.internetDomainSuffix();
	}
	foreach(i; 0 .. 4) {
		f.internetEmoji();
	}
	foreach(i; 0 .. 4) {
		f.internetEmojiActivity();
	}
	foreach(i; 0 .. 4) {
		f.internetEmojiBody();
	}
	foreach(i; 0 .. 4) {
		f.internetEmojiFlag();
	}
	foreach(i; 0 .. 4) {
		f.internetEmojiFood();
	}
	foreach(i; 0 .. 4) {
		f.internetEmojiNature();
	}
	foreach(i; 0 .. 4) {
		f.internetEmojiObject();
	}
	foreach(i; 0 .. 4) {
		f.internetEmojiPerson();
	}
	foreach(i; 0 .. 4) {
		f.internetEmojiSmiley();
	}
	foreach(i; 0 .. 4) {
		f.internetEmojiSymbol();
	}
	foreach(i; 0 .. 4) {
		f.internetEmojiTravel();
	}
	foreach(i; 0 .. 4) {
		f.internetExampleEmail();
	}
	foreach(i; 0 .. 4) {
		f.internetFreeEmail();
	}
	foreach(i; 0 .. 4) {
		f.locationBuildingNumber();
	}
	foreach(i; 0 .. 4) {
		f.locationCity();
	}
	foreach(i; 0 .. 4) {
		f.locationCityName();
	}
	foreach(i; 0 .. 4) {
		f.locationCityPattern();
	}
	foreach(i; 0 .. 4) {
		f.locationCityPrefix();
	}
	foreach(i; 0 .. 4) {
		f.locationCitySuffix();
	}
	foreach(i; 0 .. 4) {
		f.locationCountry();
	}
	foreach(i; 0 .. 4) {
		f.locationCounty();
	}
	foreach(i; 0 .. 4) {
		f.locationDefaultCountry();
	}
	foreach(i; 0 .. 4) {
		f.locationDirection();
	}
	foreach(i; 0 .. 4) {
		f.locationDirectionAbbr();
	}
	foreach(i; 0 .. 4) {
		f.locationPostcode();
	}
	foreach(i; 0 .. 4) {
		f.locationSecondaryAddress();
	}
	foreach(i; 0 .. 4) {
		f.locationState();
	}
	foreach(i; 0 .. 4) {
		f.locationStateAbbr();
	}
	foreach(i; 0 .. 4) {
		f.locationStreetAddress();
	}
	foreach(i; 0 .. 4) {
		f.locationStreetName();
	}
	foreach(i; 0 .. 4) {
		f.locationStreetPattern();
	}
	foreach(i; 0 .. 4) {
		f.locationStreetSuffix();
	}
	foreach(i; 0 .. 4) {
		f.locationTimeZone();
	}
	foreach(i; 0 .. 4) {
		f.loremParagraph();
	}
	foreach(i; 0 .. 4) {
		f.loremParagraphs();
	}
	foreach(i; 0 .. 4) {
		f.loremSentance();
	}
	foreach(i; 0 .. 4) {
		f.loremSentances();
	}
	foreach(i; 0 .. 4) {
		f.loremText();
	}
	foreach(i; 0 .. 4) {
		f.loremWords();
	}
	foreach(i; 0 .. 4) {
		f.musicGenre();
	}
	foreach(i; 0 .. 4) {
		f.musicSongName();
	}
	foreach(i; 0 .. 4) {
		f.personBioPart();
	}
	foreach(i; 0 .. 4) {
		f.personBioPattern();
	}
	foreach(i; 0 .. 4) {
		f.personBioSupporter();
	}
	foreach(i; 0 .. 4) {
		f.personFemaleFirstName();
	}
	foreach(i; 0 .. 4) {
		f.personFemaleMiddleName();
	}
	foreach(i; 0 .. 4) {
		f.personFemalePrefix();
	}
	foreach(i; 0 .. 4) {
		f.personFirstName();
	}
	foreach(i; 0 .. 4) {
		f.personGender();
	}
	foreach(i; 0 .. 4) {
		f.personJobArea();
	}
	foreach(i; 0 .. 4) {
		f.personJobDescriptor();
	}
	foreach(i; 0 .. 4) {
		f.personJobTitlePattern();
	}
	foreach(i; 0 .. 4) {
		f.personJobType();
	}
	foreach(i; 0 .. 4) {
		f.personLastName();
	}
	foreach(i; 0 .. 4) {
		f.personLastNamePattern();
	}
	foreach(i; 0 .. 4) {
		f.personMaleFirstName();
	}
	foreach(i; 0 .. 4) {
		f.personMaleMiddleName();
	}
	foreach(i; 0 .. 4) {
		f.personMalePrefix();
	}
	foreach(i; 0 .. 4) {
		f.personMiddleName();
	}
	foreach(i; 0 .. 4) {
		f.personName();
	}
	foreach(i; 0 .. 4) {
		f.personPrefix();
	}
	foreach(i; 0 .. 4) {
		f.personSex();
	}
	foreach(i; 0 .. 4) {
		f.personSuffix();
	}
	foreach(i; 0 .. 4) {
		f.personTitleDescriptor();
	}
	foreach(i; 0 .. 4) {
		f.personTitleJob();
	}
	foreach(i; 0 .. 4) {
		f.personTitleLevel();
	}
	foreach(i; 0 .. 4) {
		f.personWesternZodiacSign();
	}
	foreach(i; 0 .. 4) {
		f.phoneNumber();
	}
	foreach(i; 0 .. 4) {
		f.phoneNumberFormats();
	}
	foreach(i; 0 .. 4) {
		f.scienceChemicalElement();
	}
	foreach(i; 0 .. 4) {
		f.scienceUnit();
	}
	foreach(i; 0 .. 4) {
		f.systemDirectoryPaths();
	}
	foreach(i; 0 .. 4) {
		f.teamCreature();
	}
	foreach(i; 0 .. 4) {
		f.teamName();
	}
	foreach(i; 0 .. 4) {
		f.vehicleBicycleType();
	}
	foreach(i; 0 .. 4) {
		f.vehicleFuel();
	}
	foreach(i; 0 .. 4) {
		f.vehicleManufacturer();
	}
	foreach(i; 0 .. 4) {
		f.vehicleModel();
	}
	foreach(i; 0 .. 4) {
		f.vehicleType();
	}
	foreach(i; 0 .. 4) {
		f.wordAdjective();
	}
	foreach(i; 0 .. 4) {
		f.wordAdverb();
	}
	foreach(i; 0 .. 4) {
		f.wordConjunction();
	}
	foreach(i; 0 .. 4) {
		f.wordInterjection();
	}
	foreach(i; 0 .. 4) {
		f.wordNoun();
	}
	foreach(i; 0 .. 4) {
		f.wordPreposition();
	}
	foreach(i; 0 .. 4) {
		f.wordVerb();
	}
}

unittest {
	auto f = new Faker_el(13);

	foreach(i; 0 .. 4) {
		f.airlineAirline();
	}
	foreach(i; 0 .. 4) {
		f.airlineAirplane();
	}
	foreach(i; 0 .. 4) {
		f.airlineAirport();
	}
	foreach(i; 0 .. 4) {
		f.animalBear();
	}
	foreach(i; 0 .. 4) {
		f.animalBird();
	}
	foreach(i; 0 .. 4) {
		f.animalCat();
	}
	foreach(i; 0 .. 4) {
		f.animalCetacean();
	}
	foreach(i; 0 .. 4) {
		f.animalCow();
	}
	foreach(i; 0 .. 4) {
		f.animalCrocodilia();
	}
	foreach(i; 0 .. 4) {
		f.animalDog();
	}
	foreach(i; 0 .. 4) {
		f.animalFish();
	}
	foreach(i; 0 .. 4) {
		f.animalHorse();
	}
	foreach(i; 0 .. 4) {
		f.animalInsect();
	}
	foreach(i; 0 .. 4) {
		f.animalLion();
	}
	foreach(i; 0 .. 4) {
		f.animalRabbit();
	}
	foreach(i; 0 .. 4) {
		f.animalRodent();
	}
	foreach(i; 0 .. 4) {
		f.animalSnake();
	}
	foreach(i; 0 .. 4) {
		f.appAuthor();
	}
	foreach(i; 0 .. 4) {
		f.appName();
	}
	foreach(i; 0 .. 4) {
		f.appVersion();
	}
	foreach(i; 0 .. 4) {
		f.cellPhoneFormats();
	}
	foreach(i; 0 .. 4) {
		f.commerceDepartment();
	}
	foreach(i; 0 .. 4) {
		f.commerceProductDescription();
	}
	foreach(i; 0 .. 4) {
		f.commerceProductNameAdjective();
	}
	foreach(i; 0 .. 4) {
		f.commerceProductNameMaterial();
	}
	foreach(i; 0 .. 4) {
		f.commerceProductNameProduct();
	}
	foreach(i; 0 .. 4) {
		f.companyAdjective();
	}
	foreach(i; 0 .. 4) {
		f.companyBuzzAdjective();
	}
	foreach(i; 0 .. 4) {
		f.companyBuzzNoun();
	}
	foreach(i; 0 .. 4) {
		f.companyBuzzVerb();
	}
	foreach(i; 0 .. 4) {
		f.companyCatchPhrase();
	}
	foreach(i; 0 .. 4) {
		f.companyDescriptor();
	}
	foreach(i; 0 .. 4) {
		f.companyName();
	}
	foreach(i; 0 .. 4) {
		f.companyNamePattern();
	}
	foreach(i; 0 .. 4) {
		f.companyNoun();
	}
	foreach(i; 0 .. 4) {
		f.companySuffix();
	}
	foreach(i; 0 .. 4) {
		f.databaseCollation();
	}
	foreach(i; 0 .. 4) {
		f.databaseColumn();
	}
	foreach(i; 0 .. 4) {
		f.databaseEngine();
	}
	foreach(i; 0 .. 4) {
		f.databaseType();
	}
	foreach(i; 0 .. 4) {
		f.dateMonthAbbr();
	}
	foreach(i; 0 .. 4) {
		f.dateMonthWide();
	}
	foreach(i; 0 .. 4) {
		f.dateWeekdayAbbr();
	}
	foreach(i; 0 .. 4) {
		f.dateWeekdayWide();
	}
	foreach(i; 0 .. 4) {
		f.financeAccountType();
	}
	foreach(i; 0 .. 4) {
		f.financeCreditCardAmericanExpress();
	}
	foreach(i; 0 .. 4) {
		f.financeCreditCardDinersClub();
	}
	foreach(i; 0 .. 4) {
		f.financeCreditCardDiscover();
	}
	foreach(i; 0 .. 4) {
		f.financeCreditCardJcb();
	}
	foreach(i; 0 .. 4) {
		f.financeCreditCardMaestro();
	}
	foreach(i; 0 .. 4) {
		f.financeCreditCardMastercard();
	}
	foreach(i; 0 .. 4) {
		f.financeCreditCardVisa();
	}
	foreach(i; 0 .. 4) {
		f.financeCurrency();
	}
	foreach(i; 0 .. 4) {
		f.financeTransactionType();
	}
	foreach(i; 0 .. 4) {
		f.hackerAbbreviation();
	}
	foreach(i; 0 .. 4) {
		f.hackerAdjective();
	}
	foreach(i; 0 .. 4) {
		f.hackerIngverb();
	}
	foreach(i; 0 .. 4) {
		f.hackerNoun();
	}
	foreach(i; 0 .. 4) {
		f.hackerPhrase();
	}
	foreach(i; 0 .. 4) {
		f.hackerVerb();
	}
	foreach(i; 0 .. 4) {
		f.internetDomainSuffix();
	}
	foreach(i; 0 .. 4) {
		f.internetEmoji();
	}
	foreach(i; 0 .. 4) {
		f.internetEmojiActivity();
	}
	foreach(i; 0 .. 4) {
		f.internetEmojiBody();
	}
	foreach(i; 0 .. 4) {
		f.internetEmojiFlag();
	}
	foreach(i; 0 .. 4) {
		f.internetEmojiFood();
	}
	foreach(i; 0 .. 4) {
		f.internetEmojiNature();
	}
	foreach(i; 0 .. 4) {
		f.internetEmojiObject();
	}
	foreach(i; 0 .. 4) {
		f.internetEmojiPerson();
	}
	foreach(i; 0 .. 4) {
		f.internetEmojiSmiley();
	}
	foreach(i; 0 .. 4) {
		f.internetEmojiSymbol();
	}
	foreach(i; 0 .. 4) {
		f.internetEmojiTravel();
	}
	foreach(i; 0 .. 4) {
		f.internetExampleEmail();
	}
	foreach(i; 0 .. 4) {
		f.internetFreeEmail();
	}
	foreach(i; 0 .. 4) {
		f.locationBuildingNumber();
	}
	foreach(i; 0 .. 4) {
		f.locationCity();
	}
	foreach(i; 0 .. 4) {
		f.locationCityName();
	}
	foreach(i; 0 .. 4) {
		f.locationCityPattern();
	}
	foreach(i; 0 .. 4) {
		f.locationCityPrefix();
	}
	foreach(i; 0 .. 4) {
		f.locationCitySuffix();
	}
	foreach(i; 0 .. 4) {
		f.locationCountry();
	}
	foreach(i; 0 .. 4) {
		f.locationCounty();
	}
	foreach(i; 0 .. 4) {
		f.locationDefaultCountry();
	}
	foreach(i; 0 .. 4) {
		f.locationDirection();
	}
	foreach(i; 0 .. 4) {
		f.locationDirectionAbbr();
	}
	foreach(i; 0 .. 4) {
		f.locationPostcode();
	}
	foreach(i; 0 .. 4) {
		f.locationSecondaryAddress();
	}
	foreach(i; 0 .. 4) {
		f.locationState();
	}
	foreach(i; 0 .. 4) {
		f.locationStateAbbr();
	}
	foreach(i; 0 .. 4) {
		f.locationStreetAddress();
	}
	foreach(i; 0 .. 4) {
		f.locationStreetName();
	}
	foreach(i; 0 .. 4) {
		f.locationStreetPattern();
	}
	foreach(i; 0 .. 4) {
		f.locationStreetSuffix();
	}
	foreach(i; 0 .. 4) {
		f.locationTimeZone();
	}
	foreach(i; 0 .. 4) {
		f.loremParagraph();
	}
	foreach(i; 0 .. 4) {
		f.loremParagraphs();
	}
	foreach(i; 0 .. 4) {
		f.loremSentance();
	}
	foreach(i; 0 .. 4) {
		f.loremSentances();
	}
	foreach(i; 0 .. 4) {
		f.loremText();
	}
	foreach(i; 0 .. 4) {
		f.loremWords();
	}
	foreach(i; 0 .. 4) {
		f.musicGenre();
	}
	foreach(i; 0 .. 4) {
		f.musicSongName();
	}
	foreach(i; 0 .. 4) {
		f.personBioPart();
	}
	foreach(i; 0 .. 4) {
		f.personBioPattern();
	}
	foreach(i; 0 .. 4) {
		f.personBioSupporter();
	}
	foreach(i; 0 .. 4) {
		f.personFemaleFirstName();
	}
	foreach(i; 0 .. 4) {
		f.personFemaleMiddleName();
	}
	foreach(i; 0 .. 4) {
		f.personFemalePrefix();
	}
	foreach(i; 0 .. 4) {
		f.personFirstName();
	}
	foreach(i; 0 .. 4) {
		f.personGender();
	}
	foreach(i; 0 .. 4) {
		f.personJobArea();
	}
	foreach(i; 0 .. 4) {
		f.personJobDescriptor();
	}
	foreach(i; 0 .. 4) {
		f.personJobTitlePattern();
	}
	foreach(i; 0 .. 4) {
		f.personJobType();
	}
	foreach(i; 0 .. 4) {
		f.personLastName();
	}
	foreach(i; 0 .. 4) {
		f.personLastNamePattern();
	}
	foreach(i; 0 .. 4) {
		f.personMaleFirstName();
	}
	foreach(i; 0 .. 4) {
		f.personMaleMiddleName();
	}
	foreach(i; 0 .. 4) {
		f.personMalePrefix();
	}
	foreach(i; 0 .. 4) {
		f.personMiddleName();
	}
	foreach(i; 0 .. 4) {
		f.personName();
	}
	foreach(i; 0 .. 4) {
		f.personPrefix();
	}
	foreach(i; 0 .. 4) {
		f.personSex();
	}
	foreach(i; 0 .. 4) {
		f.personSuffix();
	}
	foreach(i; 0 .. 4) {
		f.personTitleDescriptor();
	}
	foreach(i; 0 .. 4) {
		f.personTitleJob();
	}
	foreach(i; 0 .. 4) {
		f.personTitleLevel();
	}
	foreach(i; 0 .. 4) {
		f.personWesternZodiacSign();
	}
	foreach(i; 0 .. 4) {
		f.phoneNumber();
	}
	foreach(i; 0 .. 4) {
		f.phoneNumberFormats();
	}
	foreach(i; 0 .. 4) {
		f.scienceChemicalElement();
	}
	foreach(i; 0 .. 4) {
		f.scienceUnit();
	}
	foreach(i; 0 .. 4) {
		f.systemDirectoryPaths();
	}
	foreach(i; 0 .. 4) {
		f.teamCreature();
	}
	foreach(i; 0 .. 4) {
		f.teamName();
	}
	foreach(i; 0 .. 4) {
		f.vehicleBicycleType();
	}
	foreach(i; 0 .. 4) {
		f.vehicleFuel();
	}
	foreach(i; 0 .. 4) {
		f.vehicleManufacturer();
	}
	foreach(i; 0 .. 4) {
		f.vehicleModel();
	}
	foreach(i; 0 .. 4) {
		f.vehicleType();
	}
	foreach(i; 0 .. 4) {
		f.wordAdjective();
	}
	foreach(i; 0 .. 4) {
		f.wordAdverb();
	}
	foreach(i; 0 .. 4) {
		f.wordConjunction();
	}
	foreach(i; 0 .. 4) {
		f.wordInterjection();
	}
	foreach(i; 0 .. 4) {
		f.wordNoun();
	}
	foreach(i; 0 .. 4) {
		f.wordPreposition();
	}
	foreach(i; 0 .. 4) {
		f.wordVerb();
	}
}

unittest {
	auto f = new Faker_en_au(13);

	foreach(i; 0 .. 4) {
		f.airlineAirline();
	}
	foreach(i; 0 .. 4) {
		f.airlineAirplane();
	}
	foreach(i; 0 .. 4) {
		f.airlineAirport();
	}
	foreach(i; 0 .. 4) {
		f.animalBear();
	}
	foreach(i; 0 .. 4) {
		f.animalBird();
	}
	foreach(i; 0 .. 4) {
		f.animalCat();
	}
	foreach(i; 0 .. 4) {
		f.animalCetacean();
	}
	foreach(i; 0 .. 4) {
		f.animalCow();
	}
	foreach(i; 0 .. 4) {
		f.animalCrocodilia();
	}
	foreach(i; 0 .. 4) {
		f.animalDog();
	}
	foreach(i; 0 .. 4) {
		f.animalFish();
	}
	foreach(i; 0 .. 4) {
		f.animalHorse();
	}
	foreach(i; 0 .. 4) {
		f.animalInsect();
	}
	foreach(i; 0 .. 4) {
		f.animalLion();
	}
	foreach(i; 0 .. 4) {
		f.animalRabbit();
	}
	foreach(i; 0 .. 4) {
		f.animalRodent();
	}
	foreach(i; 0 .. 4) {
		f.animalSnake();
	}
	foreach(i; 0 .. 4) {
		f.appAuthor();
	}
	foreach(i; 0 .. 4) {
		f.appName();
	}
	foreach(i; 0 .. 4) {
		f.appVersion();
	}
	foreach(i; 0 .. 4) {
		f.cellPhoneFormats();
	}
	foreach(i; 0 .. 4) {
		f.commerceDepartment();
	}
	foreach(i; 0 .. 4) {
		f.commerceProductDescription();
	}
	foreach(i; 0 .. 4) {
		f.commerceProductNameAdjective();
	}
	foreach(i; 0 .. 4) {
		f.commerceProductNameMaterial();
	}
	foreach(i; 0 .. 4) {
		f.commerceProductNameProduct();
	}
	foreach(i; 0 .. 4) {
		f.companyAdjective();
	}
	foreach(i; 0 .. 4) {
		f.companyBuzzAdjective();
	}
	foreach(i; 0 .. 4) {
		f.companyBuzzNoun();
	}
	foreach(i; 0 .. 4) {
		f.companyBuzzVerb();
	}
	foreach(i; 0 .. 4) {
		f.companyCatchPhrase();
	}
	foreach(i; 0 .. 4) {
		f.companyDescriptor();
	}
	foreach(i; 0 .. 4) {
		f.companyName();
	}
	foreach(i; 0 .. 4) {
		f.companyNamePattern();
	}
	foreach(i; 0 .. 4) {
		f.companyNoun();
	}
	foreach(i; 0 .. 4) {
		f.companySuffix();
	}
	foreach(i; 0 .. 4) {
		f.databaseCollation();
	}
	foreach(i; 0 .. 4) {
		f.databaseColumn();
	}
	foreach(i; 0 .. 4) {
		f.databaseEngine();
	}
	foreach(i; 0 .. 4) {
		f.databaseType();
	}
	foreach(i; 0 .. 4) {
		f.dateMonthAbbr();
	}
	foreach(i; 0 .. 4) {
		f.dateMonthWide();
	}
	foreach(i; 0 .. 4) {
		f.dateWeekdayAbbr();
	}
	foreach(i; 0 .. 4) {
		f.dateWeekdayWide();
	}
	foreach(i; 0 .. 4) {
		f.financeAccountType();
	}
	foreach(i; 0 .. 4) {
		f.financeCreditCardAmericanExpress();
	}
	foreach(i; 0 .. 4) {
		f.financeCreditCardDinersClub();
	}
	foreach(i; 0 .. 4) {
		f.financeCreditCardDiscover();
	}
	foreach(i; 0 .. 4) {
		f.financeCreditCardJcb();
	}
	foreach(i; 0 .. 4) {
		f.financeCreditCardMaestro();
	}
	foreach(i; 0 .. 4) {
		f.financeCreditCardMastercard();
	}
	foreach(i; 0 .. 4) {
		f.financeCreditCardVisa();
	}
	foreach(i; 0 .. 4) {
		f.financeCurrency();
	}
	foreach(i; 0 .. 4) {
		f.financeTransactionType();
	}
	foreach(i; 0 .. 4) {
		f.hackerAbbreviation();
	}
	foreach(i; 0 .. 4) {
		f.hackerAdjective();
	}
	foreach(i; 0 .. 4) {
		f.hackerIngverb();
	}
	foreach(i; 0 .. 4) {
		f.hackerNoun();
	}
	foreach(i; 0 .. 4) {
		f.hackerPhrase();
	}
	foreach(i; 0 .. 4) {
		f.hackerVerb();
	}
	foreach(i; 0 .. 4) {
		f.internetDomainSuffix();
	}
	foreach(i; 0 .. 4) {
		f.internetEmoji();
	}
	foreach(i; 0 .. 4) {
		f.internetEmojiActivity();
	}
	foreach(i; 0 .. 4) {
		f.internetEmojiBody();
	}
	foreach(i; 0 .. 4) {
		f.internetEmojiFlag();
	}
	foreach(i; 0 .. 4) {
		f.internetEmojiFood();
	}
	foreach(i; 0 .. 4) {
		f.internetEmojiNature();
	}
	foreach(i; 0 .. 4) {
		f.internetEmojiObject();
	}
	foreach(i; 0 .. 4) {
		f.internetEmojiPerson();
	}
	foreach(i; 0 .. 4) {
		f.internetEmojiSmiley();
	}
	foreach(i; 0 .. 4) {
		f.internetEmojiSymbol();
	}
	foreach(i; 0 .. 4) {
		f.internetEmojiTravel();
	}
	foreach(i; 0 .. 4) {
		f.internetExampleEmail();
	}
	foreach(i; 0 .. 4) {
		f.internetFreeEmail();
	}
	foreach(i; 0 .. 4) {
		f.locationBuildingNumber();
	}
	foreach(i; 0 .. 4) {
		f.locationCity();
	}
	foreach(i; 0 .. 4) {
		f.locationCityName();
	}
	foreach(i; 0 .. 4) {
		f.locationCityPattern();
	}
	foreach(i; 0 .. 4) {
		f.locationCityPrefix();
	}
	foreach(i; 0 .. 4) {
		f.locationCitySuffix();
	}
	foreach(i; 0 .. 4) {
		f.locationCountry();
	}
	foreach(i; 0 .. 4) {
		f.locationCounty();
	}
	foreach(i; 0 .. 4) {
		f.locationDefaultCountry();
	}
	foreach(i; 0 .. 4) {
		f.locationDirection();
	}
	foreach(i; 0 .. 4) {
		f.locationDirectionAbbr();
	}
	foreach(i; 0 .. 4) {
		f.locationPostcode();
	}
	foreach(i; 0 .. 4) {
		f.locationSecondaryAddress();
	}
	foreach(i; 0 .. 4) {
		f.locationState();
	}
	foreach(i; 0 .. 4) {
		f.locationStateAbbr();
	}
	foreach(i; 0 .. 4) {
		f.locationStreetAddress();
	}
	foreach(i; 0 .. 4) {
		f.locationStreetName();
	}
	foreach(i; 0 .. 4) {
		f.locationStreetPattern();
	}
	foreach(i; 0 .. 4) {
		f.locationStreetSuffix();
	}
	foreach(i; 0 .. 4) {
		f.locationTimeZone();
	}
	foreach(i; 0 .. 4) {
		f.loremParagraph();
	}
	foreach(i; 0 .. 4) {
		f.loremParagraphs();
	}
	foreach(i; 0 .. 4) {
		f.loremSentance();
	}
	foreach(i; 0 .. 4) {
		f.loremSentances();
	}
	foreach(i; 0 .. 4) {
		f.loremText();
	}
	foreach(i; 0 .. 4) {
		f.loremWords();
	}
	foreach(i; 0 .. 4) {
		f.musicGenre();
	}
	foreach(i; 0 .. 4) {
		f.musicSongName();
	}
	foreach(i; 0 .. 4) {
		f.personBioPart();
	}
	foreach(i; 0 .. 4) {
		f.personBioPattern();
	}
	foreach(i; 0 .. 4) {
		f.personBioSupporter();
	}
	foreach(i; 0 .. 4) {
		f.personFemaleFirstName();
	}
	foreach(i; 0 .. 4) {
		f.personFemaleMiddleName();
	}
	foreach(i; 0 .. 4) {
		f.personFemalePrefix();
	}
	foreach(i; 0 .. 4) {
		f.personFirstName();
	}
	foreach(i; 0 .. 4) {
		f.personGender();
	}
	foreach(i; 0 .. 4) {
		f.personJobArea();
	}
	foreach(i; 0 .. 4) {
		f.personJobDescriptor();
	}
	foreach(i; 0 .. 4) {
		f.personJobTitlePattern();
	}
	foreach(i; 0 .. 4) {
		f.personJobType();
	}
	foreach(i; 0 .. 4) {
		f.personLastName();
	}
	foreach(i; 0 .. 4) {
		f.personLastNamePattern();
	}
	foreach(i; 0 .. 4) {
		f.personMaleFirstName();
	}
	foreach(i; 0 .. 4) {
		f.personMaleMiddleName();
	}
	foreach(i; 0 .. 4) {
		f.personMalePrefix();
	}
	foreach(i; 0 .. 4) {
		f.personMiddleName();
	}
	foreach(i; 0 .. 4) {
		f.personName();
	}
	foreach(i; 0 .. 4) {
		f.personPrefix();
	}
	foreach(i; 0 .. 4) {
		f.personSex();
	}
	foreach(i; 0 .. 4) {
		f.personSuffix();
	}
	foreach(i; 0 .. 4) {
		f.personTitleDescriptor();
	}
	foreach(i; 0 .. 4) {
		f.personTitleJob();
	}
	foreach(i; 0 .. 4) {
		f.personTitleLevel();
	}
	foreach(i; 0 .. 4) {
		f.personWesternZodiacSign();
	}
	foreach(i; 0 .. 4) {
		f.phoneNumber();
	}
	foreach(i; 0 .. 4) {
		f.phoneNumberFormats();
	}
	foreach(i; 0 .. 4) {
		f.scienceChemicalElement();
	}
	foreach(i; 0 .. 4) {
		f.scienceUnit();
	}
	foreach(i; 0 .. 4) {
		f.systemDirectoryPaths();
	}
	foreach(i; 0 .. 4) {
		f.teamCreature();
	}
	foreach(i; 0 .. 4) {
		f.teamName();
	}
	foreach(i; 0 .. 4) {
		f.vehicleBicycleType();
	}
	foreach(i; 0 .. 4) {
		f.vehicleFuel();
	}
	foreach(i; 0 .. 4) {
		f.vehicleManufacturer();
	}
	foreach(i; 0 .. 4) {
		f.vehicleModel();
	}
	foreach(i; 0 .. 4) {
		f.vehicleType();
	}
	foreach(i; 0 .. 4) {
		f.wordAdjective();
	}
	foreach(i; 0 .. 4) {
		f.wordAdverb();
	}
	foreach(i; 0 .. 4) {
		f.wordConjunction();
	}
	foreach(i; 0 .. 4) {
		f.wordInterjection();
	}
	foreach(i; 0 .. 4) {
		f.wordNoun();
	}
	foreach(i; 0 .. 4) {
		f.wordPreposition();
	}
	foreach(i; 0 .. 4) {
		f.wordVerb();
	}
}

unittest {
	auto f = new Faker_en_au_ocker(13);

	foreach(i; 0 .. 4) {
		f.airlineAirline();
	}
	foreach(i; 0 .. 4) {
		f.airlineAirplane();
	}
	foreach(i; 0 .. 4) {
		f.airlineAirport();
	}
	foreach(i; 0 .. 4) {
		f.animalBear();
	}
	foreach(i; 0 .. 4) {
		f.animalBird();
	}
	foreach(i; 0 .. 4) {
		f.animalCat();
	}
	foreach(i; 0 .. 4) {
		f.animalCetacean();
	}
	foreach(i; 0 .. 4) {
		f.animalCow();
	}
	foreach(i; 0 .. 4) {
		f.animalCrocodilia();
	}
	foreach(i; 0 .. 4) {
		f.animalDog();
	}
	foreach(i; 0 .. 4) {
		f.animalFish();
	}
	foreach(i; 0 .. 4) {
		f.animalHorse();
	}
	foreach(i; 0 .. 4) {
		f.animalInsect();
	}
	foreach(i; 0 .. 4) {
		f.animalLion();
	}
	foreach(i; 0 .. 4) {
		f.animalRabbit();
	}
	foreach(i; 0 .. 4) {
		f.animalRodent();
	}
	foreach(i; 0 .. 4) {
		f.animalSnake();
	}
	foreach(i; 0 .. 4) {
		f.appAuthor();
	}
	foreach(i; 0 .. 4) {
		f.appName();
	}
	foreach(i; 0 .. 4) {
		f.appVersion();
	}
	foreach(i; 0 .. 4) {
		f.cellPhoneFormats();
	}
	foreach(i; 0 .. 4) {
		f.commerceDepartment();
	}
	foreach(i; 0 .. 4) {
		f.commerceProductDescription();
	}
	foreach(i; 0 .. 4) {
		f.commerceProductNameAdjective();
	}
	foreach(i; 0 .. 4) {
		f.commerceProductNameMaterial();
	}
	foreach(i; 0 .. 4) {
		f.commerceProductNameProduct();
	}
	foreach(i; 0 .. 4) {
		f.companyAdjective();
	}
	foreach(i; 0 .. 4) {
		f.companyBuzzAdjective();
	}
	foreach(i; 0 .. 4) {
		f.companyBuzzNoun();
	}
	foreach(i; 0 .. 4) {
		f.companyBuzzVerb();
	}
	foreach(i; 0 .. 4) {
		f.companyCatchPhrase();
	}
	foreach(i; 0 .. 4) {
		f.companyDescriptor();
	}
	foreach(i; 0 .. 4) {
		f.companyName();
	}
	foreach(i; 0 .. 4) {
		f.companyNamePattern();
	}
	foreach(i; 0 .. 4) {
		f.companyNoun();
	}
	foreach(i; 0 .. 4) {
		f.companySuffix();
	}
	foreach(i; 0 .. 4) {
		f.databaseCollation();
	}
	foreach(i; 0 .. 4) {
		f.databaseColumn();
	}
	foreach(i; 0 .. 4) {
		f.databaseEngine();
	}
	foreach(i; 0 .. 4) {
		f.databaseType();
	}
	foreach(i; 0 .. 4) {
		f.dateMonthAbbr();
	}
	foreach(i; 0 .. 4) {
		f.dateMonthWide();
	}
	foreach(i; 0 .. 4) {
		f.dateWeekdayAbbr();
	}
	foreach(i; 0 .. 4) {
		f.dateWeekdayWide();
	}
	foreach(i; 0 .. 4) {
		f.financeAccountType();
	}
	foreach(i; 0 .. 4) {
		f.financeCreditCardAmericanExpress();
	}
	foreach(i; 0 .. 4) {
		f.financeCreditCardDinersClub();
	}
	foreach(i; 0 .. 4) {
		f.financeCreditCardDiscover();
	}
	foreach(i; 0 .. 4) {
		f.financeCreditCardJcb();
	}
	foreach(i; 0 .. 4) {
		f.financeCreditCardMaestro();
	}
	foreach(i; 0 .. 4) {
		f.financeCreditCardMastercard();
	}
	foreach(i; 0 .. 4) {
		f.financeCreditCardVisa();
	}
	foreach(i; 0 .. 4) {
		f.financeCurrency();
	}
	foreach(i; 0 .. 4) {
		f.financeTransactionType();
	}
	foreach(i; 0 .. 4) {
		f.hackerAbbreviation();
	}
	foreach(i; 0 .. 4) {
		f.hackerAdjective();
	}
	foreach(i; 0 .. 4) {
		f.hackerIngverb();
	}
	foreach(i; 0 .. 4) {
		f.hackerNoun();
	}
	foreach(i; 0 .. 4) {
		f.hackerPhrase();
	}
	foreach(i; 0 .. 4) {
		f.hackerVerb();
	}
	foreach(i; 0 .. 4) {
		f.internetDomainSuffix();
	}
	foreach(i; 0 .. 4) {
		f.internetEmoji();
	}
	foreach(i; 0 .. 4) {
		f.internetEmojiActivity();
	}
	foreach(i; 0 .. 4) {
		f.internetEmojiBody();
	}
	foreach(i; 0 .. 4) {
		f.internetEmojiFlag();
	}
	foreach(i; 0 .. 4) {
		f.internetEmojiFood();
	}
	foreach(i; 0 .. 4) {
		f.internetEmojiNature();
	}
	foreach(i; 0 .. 4) {
		f.internetEmojiObject();
	}
	foreach(i; 0 .. 4) {
		f.internetEmojiPerson();
	}
	foreach(i; 0 .. 4) {
		f.internetEmojiSmiley();
	}
	foreach(i; 0 .. 4) {
		f.internetEmojiSymbol();
	}
	foreach(i; 0 .. 4) {
		f.internetEmojiTravel();
	}
	foreach(i; 0 .. 4) {
		f.internetExampleEmail();
	}
	foreach(i; 0 .. 4) {
		f.internetFreeEmail();
	}
	foreach(i; 0 .. 4) {
		f.locationBuildingNumber();
	}
	foreach(i; 0 .. 4) {
		f.locationCity();
	}
	foreach(i; 0 .. 4) {
		f.locationCityName();
	}
	foreach(i; 0 .. 4) {
		f.locationCityPattern();
	}
	foreach(i; 0 .. 4) {
		f.locationCityPrefix();
	}
	foreach(i; 0 .. 4) {
		f.locationCitySuffix();
	}
	foreach(i; 0 .. 4) {
		f.locationCountry();
	}
	foreach(i; 0 .. 4) {
		f.locationCounty();
	}
	foreach(i; 0 .. 4) {
		f.locationDefaultCountry();
	}
	foreach(i; 0 .. 4) {
		f.locationDirection();
	}
	foreach(i; 0 .. 4) {
		f.locationDirectionAbbr();
	}
	foreach(i; 0 .. 4) {
		f.locationPostcode();
	}
	foreach(i; 0 .. 4) {
		f.locationSecondaryAddress();
	}
	foreach(i; 0 .. 4) {
		f.locationState();
	}
	foreach(i; 0 .. 4) {
		f.locationStateAbbr();
	}
	foreach(i; 0 .. 4) {
		f.locationStreetAddress();
	}
	foreach(i; 0 .. 4) {
		f.locationStreetName();
	}
	foreach(i; 0 .. 4) {
		f.locationStreetPattern();
	}
	foreach(i; 0 .. 4) {
		f.locationStreetSuffix();
	}
	foreach(i; 0 .. 4) {
		f.locationTimeZone();
	}
	foreach(i; 0 .. 4) {
		f.loremParagraph();
	}
	foreach(i; 0 .. 4) {
		f.loremParagraphs();
	}
	foreach(i; 0 .. 4) {
		f.loremSentance();
	}
	foreach(i; 0 .. 4) {
		f.loremSentances();
	}
	foreach(i; 0 .. 4) {
		f.loremText();
	}
	foreach(i; 0 .. 4) {
		f.loremWords();
	}
	foreach(i; 0 .. 4) {
		f.musicGenre();
	}
	foreach(i; 0 .. 4) {
		f.musicSongName();
	}
	foreach(i; 0 .. 4) {
		f.personBioPart();
	}
	foreach(i; 0 .. 4) {
		f.personBioPattern();
	}
	foreach(i; 0 .. 4) {
		f.personBioSupporter();
	}
	foreach(i; 0 .. 4) {
		f.personFemaleFirstName();
	}
	foreach(i; 0 .. 4) {
		f.personFemaleMiddleName();
	}
	foreach(i; 0 .. 4) {
		f.personFemalePrefix();
	}
	foreach(i; 0 .. 4) {
		f.personFirstName();
	}
	foreach(i; 0 .. 4) {
		f.personGender();
	}
	foreach(i; 0 .. 4) {
		f.personJobArea();
	}
	foreach(i; 0 .. 4) {
		f.personJobDescriptor();
	}
	foreach(i; 0 .. 4) {
		f.personJobTitlePattern();
	}
	foreach(i; 0 .. 4) {
		f.personJobType();
	}
	foreach(i; 0 .. 4) {
		f.personLastName();
	}
	foreach(i; 0 .. 4) {
		f.personLastNamePattern();
	}
	foreach(i; 0 .. 4) {
		f.personMaleFirstName();
	}
	foreach(i; 0 .. 4) {
		f.personMaleMiddleName();
	}
	foreach(i; 0 .. 4) {
		f.personMalePrefix();
	}
	foreach(i; 0 .. 4) {
		f.personMiddleName();
	}
	foreach(i; 0 .. 4) {
		f.personName();
	}
	foreach(i; 0 .. 4) {
		f.personPrefix();
	}
	foreach(i; 0 .. 4) {
		f.personSex();
	}
	foreach(i; 0 .. 4) {
		f.personSuffix();
	}
	foreach(i; 0 .. 4) {
		f.personTitleDescriptor();
	}
	foreach(i; 0 .. 4) {
		f.personTitleJob();
	}
	foreach(i; 0 .. 4) {
		f.personTitleLevel();
	}
	foreach(i; 0 .. 4) {
		f.personWesternZodiacSign();
	}
	foreach(i; 0 .. 4) {
		f.phoneNumber();
	}
	foreach(i; 0 .. 4) {
		f.phoneNumberFormats();
	}
	foreach(i; 0 .. 4) {
		f.scienceChemicalElement();
	}
	foreach(i; 0 .. 4) {
		f.scienceUnit();
	}
	foreach(i; 0 .. 4) {
		f.systemDirectoryPaths();
	}
	foreach(i; 0 .. 4) {
		f.teamCreature();
	}
	foreach(i; 0 .. 4) {
		f.teamName();
	}
	foreach(i; 0 .. 4) {
		f.vehicleBicycleType();
	}
	foreach(i; 0 .. 4) {
		f.vehicleFuel();
	}
	foreach(i; 0 .. 4) {
		f.vehicleManufacturer();
	}
	foreach(i; 0 .. 4) {
		f.vehicleModel();
	}
	foreach(i; 0 .. 4) {
		f.vehicleType();
	}
	foreach(i; 0 .. 4) {
		f.wordAdjective();
	}
	foreach(i; 0 .. 4) {
		f.wordAdverb();
	}
	foreach(i; 0 .. 4) {
		f.wordConjunction();
	}
	foreach(i; 0 .. 4) {
		f.wordInterjection();
	}
	foreach(i; 0 .. 4) {
		f.wordNoun();
	}
	foreach(i; 0 .. 4) {
		f.wordPreposition();
	}
	foreach(i; 0 .. 4) {
		f.wordVerb();
	}
}

unittest {
	auto f = new Faker_en_bork(13);

	foreach(i; 0 .. 4) {
		f.airlineAirline();
	}
	foreach(i; 0 .. 4) {
		f.airlineAirplane();
	}
	foreach(i; 0 .. 4) {
		f.airlineAirport();
	}
	foreach(i; 0 .. 4) {
		f.animalBear();
	}
	foreach(i; 0 .. 4) {
		f.animalBird();
	}
	foreach(i; 0 .. 4) {
		f.animalCat();
	}
	foreach(i; 0 .. 4) {
		f.animalCetacean();
	}
	foreach(i; 0 .. 4) {
		f.animalCow();
	}
	foreach(i; 0 .. 4) {
		f.animalCrocodilia();
	}
	foreach(i; 0 .. 4) {
		f.animalDog();
	}
	foreach(i; 0 .. 4) {
		f.animalFish();
	}
	foreach(i; 0 .. 4) {
		f.animalHorse();
	}
	foreach(i; 0 .. 4) {
		f.animalInsect();
	}
	foreach(i; 0 .. 4) {
		f.animalLion();
	}
	foreach(i; 0 .. 4) {
		f.animalRabbit();
	}
	foreach(i; 0 .. 4) {
		f.animalRodent();
	}
	foreach(i; 0 .. 4) {
		f.animalSnake();
	}
	foreach(i; 0 .. 4) {
		f.appAuthor();
	}
	foreach(i; 0 .. 4) {
		f.appName();
	}
	foreach(i; 0 .. 4) {
		f.appVersion();
	}
	foreach(i; 0 .. 4) {
		f.cellPhoneFormats();
	}
	foreach(i; 0 .. 4) {
		f.commerceDepartment();
	}
	foreach(i; 0 .. 4) {
		f.commerceProductDescription();
	}
	foreach(i; 0 .. 4) {
		f.commerceProductNameAdjective();
	}
	foreach(i; 0 .. 4) {
		f.commerceProductNameMaterial();
	}
	foreach(i; 0 .. 4) {
		f.commerceProductNameProduct();
	}
	foreach(i; 0 .. 4) {
		f.companyAdjective();
	}
	foreach(i; 0 .. 4) {
		f.companyBuzzAdjective();
	}
	foreach(i; 0 .. 4) {
		f.companyBuzzNoun();
	}
	foreach(i; 0 .. 4) {
		f.companyBuzzVerb();
	}
	foreach(i; 0 .. 4) {
		f.companyCatchPhrase();
	}
	foreach(i; 0 .. 4) {
		f.companyDescriptor();
	}
	foreach(i; 0 .. 4) {
		f.companyName();
	}
	foreach(i; 0 .. 4) {
		f.companyNamePattern();
	}
	foreach(i; 0 .. 4) {
		f.companyNoun();
	}
	foreach(i; 0 .. 4) {
		f.companySuffix();
	}
	foreach(i; 0 .. 4) {
		f.databaseCollation();
	}
	foreach(i; 0 .. 4) {
		f.databaseColumn();
	}
	foreach(i; 0 .. 4) {
		f.databaseEngine();
	}
	foreach(i; 0 .. 4) {
		f.databaseType();
	}
	foreach(i; 0 .. 4) {
		f.dateMonthAbbr();
	}
	foreach(i; 0 .. 4) {
		f.dateMonthWide();
	}
	foreach(i; 0 .. 4) {
		f.dateWeekdayAbbr();
	}
	foreach(i; 0 .. 4) {
		f.dateWeekdayWide();
	}
	foreach(i; 0 .. 4) {
		f.financeAccountType();
	}
	foreach(i; 0 .. 4) {
		f.financeCreditCardAmericanExpress();
	}
	foreach(i; 0 .. 4) {
		f.financeCreditCardDinersClub();
	}
	foreach(i; 0 .. 4) {
		f.financeCreditCardDiscover();
	}
	foreach(i; 0 .. 4) {
		f.financeCreditCardJcb();
	}
	foreach(i; 0 .. 4) {
		f.financeCreditCardMaestro();
	}
	foreach(i; 0 .. 4) {
		f.financeCreditCardMastercard();
	}
	foreach(i; 0 .. 4) {
		f.financeCreditCardVisa();
	}
	foreach(i; 0 .. 4) {
		f.financeCurrency();
	}
	foreach(i; 0 .. 4) {
		f.financeTransactionType();
	}
	foreach(i; 0 .. 4) {
		f.hackerAbbreviation();
	}
	foreach(i; 0 .. 4) {
		f.hackerAdjective();
	}
	foreach(i; 0 .. 4) {
		f.hackerIngverb();
	}
	foreach(i; 0 .. 4) {
		f.hackerNoun();
	}
	foreach(i; 0 .. 4) {
		f.hackerPhrase();
	}
	foreach(i; 0 .. 4) {
		f.hackerVerb();
	}
	foreach(i; 0 .. 4) {
		f.internetDomainSuffix();
	}
	foreach(i; 0 .. 4) {
		f.internetEmoji();
	}
	foreach(i; 0 .. 4) {
		f.internetEmojiActivity();
	}
	foreach(i; 0 .. 4) {
		f.internetEmojiBody();
	}
	foreach(i; 0 .. 4) {
		f.internetEmojiFlag();
	}
	foreach(i; 0 .. 4) {
		f.internetEmojiFood();
	}
	foreach(i; 0 .. 4) {
		f.internetEmojiNature();
	}
	foreach(i; 0 .. 4) {
		f.internetEmojiObject();
	}
	foreach(i; 0 .. 4) {
		f.internetEmojiPerson();
	}
	foreach(i; 0 .. 4) {
		f.internetEmojiSmiley();
	}
	foreach(i; 0 .. 4) {
		f.internetEmojiSymbol();
	}
	foreach(i; 0 .. 4) {
		f.internetEmojiTravel();
	}
	foreach(i; 0 .. 4) {
		f.internetExampleEmail();
	}
	foreach(i; 0 .. 4) {
		f.internetFreeEmail();
	}
	foreach(i; 0 .. 4) {
		f.locationBuildingNumber();
	}
	foreach(i; 0 .. 4) {
		f.locationCity();
	}
	foreach(i; 0 .. 4) {
		f.locationCityName();
	}
	foreach(i; 0 .. 4) {
		f.locationCityPattern();
	}
	foreach(i; 0 .. 4) {
		f.locationCityPrefix();
	}
	foreach(i; 0 .. 4) {
		f.locationCitySuffix();
	}
	foreach(i; 0 .. 4) {
		f.locationCountry();
	}
	foreach(i; 0 .. 4) {
		f.locationCounty();
	}
	foreach(i; 0 .. 4) {
		f.locationDefaultCountry();
	}
	foreach(i; 0 .. 4) {
		f.locationDirection();
	}
	foreach(i; 0 .. 4) {
		f.locationDirectionAbbr();
	}
	foreach(i; 0 .. 4) {
		f.locationPostcode();
	}
	foreach(i; 0 .. 4) {
		f.locationSecondaryAddress();
	}
	foreach(i; 0 .. 4) {
		f.locationState();
	}
	foreach(i; 0 .. 4) {
		f.locationStateAbbr();
	}
	foreach(i; 0 .. 4) {
		f.locationStreetAddress();
	}
	foreach(i; 0 .. 4) {
		f.locationStreetName();
	}
	foreach(i; 0 .. 4) {
		f.locationStreetPattern();
	}
	foreach(i; 0 .. 4) {
		f.locationStreetSuffix();
	}
	foreach(i; 0 .. 4) {
		f.locationTimeZone();
	}
	foreach(i; 0 .. 4) {
		f.loremParagraph();
	}
	foreach(i; 0 .. 4) {
		f.loremParagraphs();
	}
	foreach(i; 0 .. 4) {
		f.loremSentance();
	}
	foreach(i; 0 .. 4) {
		f.loremSentances();
	}
	foreach(i; 0 .. 4) {
		f.loremText();
	}
	foreach(i; 0 .. 4) {
		f.loremWords();
	}
	foreach(i; 0 .. 4) {
		f.musicGenre();
	}
	foreach(i; 0 .. 4) {
		f.musicSongName();
	}
	foreach(i; 0 .. 4) {
		f.personBioPart();
	}
	foreach(i; 0 .. 4) {
		f.personBioPattern();
	}
	foreach(i; 0 .. 4) {
		f.personBioSupporter();
	}
	foreach(i; 0 .. 4) {
		f.personFemaleFirstName();
	}
	foreach(i; 0 .. 4) {
		f.personFemaleMiddleName();
	}
	foreach(i; 0 .. 4) {
		f.personFemalePrefix();
	}
	foreach(i; 0 .. 4) {
		f.personFirstName();
	}
	foreach(i; 0 .. 4) {
		f.personGender();
	}
	foreach(i; 0 .. 4) {
		f.personJobArea();
	}
	foreach(i; 0 .. 4) {
		f.personJobDescriptor();
	}
	foreach(i; 0 .. 4) {
		f.personJobTitlePattern();
	}
	foreach(i; 0 .. 4) {
		f.personJobType();
	}
	foreach(i; 0 .. 4) {
		f.personLastName();
	}
	foreach(i; 0 .. 4) {
		f.personLastNamePattern();
	}
	foreach(i; 0 .. 4) {
		f.personMaleFirstName();
	}
	foreach(i; 0 .. 4) {
		f.personMaleMiddleName();
	}
	foreach(i; 0 .. 4) {
		f.personMalePrefix();
	}
	foreach(i; 0 .. 4) {
		f.personMiddleName();
	}
	foreach(i; 0 .. 4) {
		f.personName();
	}
	foreach(i; 0 .. 4) {
		f.personPrefix();
	}
	foreach(i; 0 .. 4) {
		f.personSex();
	}
	foreach(i; 0 .. 4) {
		f.personSuffix();
	}
	foreach(i; 0 .. 4) {
		f.personTitleDescriptor();
	}
	foreach(i; 0 .. 4) {
		f.personTitleJob();
	}
	foreach(i; 0 .. 4) {
		f.personTitleLevel();
	}
	foreach(i; 0 .. 4) {
		f.personWesternZodiacSign();
	}
	foreach(i; 0 .. 4) {
		f.phoneNumber();
	}
	foreach(i; 0 .. 4) {
		f.phoneNumberFormats();
	}
	foreach(i; 0 .. 4) {
		f.scienceChemicalElement();
	}
	foreach(i; 0 .. 4) {
		f.scienceUnit();
	}
	foreach(i; 0 .. 4) {
		f.systemDirectoryPaths();
	}
	foreach(i; 0 .. 4) {
		f.teamCreature();
	}
	foreach(i; 0 .. 4) {
		f.teamName();
	}
	foreach(i; 0 .. 4) {
		f.vehicleBicycleType();
	}
	foreach(i; 0 .. 4) {
		f.vehicleFuel();
	}
	foreach(i; 0 .. 4) {
		f.vehicleManufacturer();
	}
	foreach(i; 0 .. 4) {
		f.vehicleModel();
	}
	foreach(i; 0 .. 4) {
		f.vehicleType();
	}
	foreach(i; 0 .. 4) {
		f.wordAdjective();
	}
	foreach(i; 0 .. 4) {
		f.wordAdverb();
	}
	foreach(i; 0 .. 4) {
		f.wordConjunction();
	}
	foreach(i; 0 .. 4) {
		f.wordInterjection();
	}
	foreach(i; 0 .. 4) {
		f.wordNoun();
	}
	foreach(i; 0 .. 4) {
		f.wordPreposition();
	}
	foreach(i; 0 .. 4) {
		f.wordVerb();
	}
}

unittest {
	auto f = new Faker_en_ca(13);

	foreach(i; 0 .. 4) {
		f.airlineAirline();
	}
	foreach(i; 0 .. 4) {
		f.airlineAirplane();
	}
	foreach(i; 0 .. 4) {
		f.airlineAirport();
	}
	foreach(i; 0 .. 4) {
		f.animalBear();
	}
	foreach(i; 0 .. 4) {
		f.animalBird();
	}
	foreach(i; 0 .. 4) {
		f.animalCat();
	}
	foreach(i; 0 .. 4) {
		f.animalCetacean();
	}
	foreach(i; 0 .. 4) {
		f.animalCow();
	}
	foreach(i; 0 .. 4) {
		f.animalCrocodilia();
	}
	foreach(i; 0 .. 4) {
		f.animalDog();
	}
	foreach(i; 0 .. 4) {
		f.animalFish();
	}
	foreach(i; 0 .. 4) {
		f.animalHorse();
	}
	foreach(i; 0 .. 4) {
		f.animalInsect();
	}
	foreach(i; 0 .. 4) {
		f.animalLion();
	}
	foreach(i; 0 .. 4) {
		f.animalRabbit();
	}
	foreach(i; 0 .. 4) {
		f.animalRodent();
	}
	foreach(i; 0 .. 4) {
		f.animalSnake();
	}
	foreach(i; 0 .. 4) {
		f.appAuthor();
	}
	foreach(i; 0 .. 4) {
		f.appName();
	}
	foreach(i; 0 .. 4) {
		f.appVersion();
	}
	foreach(i; 0 .. 4) {
		f.cellPhoneFormats();
	}
	foreach(i; 0 .. 4) {
		f.commerceDepartment();
	}
	foreach(i; 0 .. 4) {
		f.commerceProductDescription();
	}
	foreach(i; 0 .. 4) {
		f.commerceProductNameAdjective();
	}
	foreach(i; 0 .. 4) {
		f.commerceProductNameMaterial();
	}
	foreach(i; 0 .. 4) {
		f.commerceProductNameProduct();
	}
	foreach(i; 0 .. 4) {
		f.companyAdjective();
	}
	foreach(i; 0 .. 4) {
		f.companyBuzzAdjective();
	}
	foreach(i; 0 .. 4) {
		f.companyBuzzNoun();
	}
	foreach(i; 0 .. 4) {
		f.companyBuzzVerb();
	}
	foreach(i; 0 .. 4) {
		f.companyCatchPhrase();
	}
	foreach(i; 0 .. 4) {
		f.companyDescriptor();
	}
	foreach(i; 0 .. 4) {
		f.companyName();
	}
	foreach(i; 0 .. 4) {
		f.companyNamePattern();
	}
	foreach(i; 0 .. 4) {
		f.companyNoun();
	}
	foreach(i; 0 .. 4) {
		f.companySuffix();
	}
	foreach(i; 0 .. 4) {
		f.databaseCollation();
	}
	foreach(i; 0 .. 4) {
		f.databaseColumn();
	}
	foreach(i; 0 .. 4) {
		f.databaseEngine();
	}
	foreach(i; 0 .. 4) {
		f.databaseType();
	}
	foreach(i; 0 .. 4) {
		f.dateMonthAbbr();
	}
	foreach(i; 0 .. 4) {
		f.dateMonthWide();
	}
	foreach(i; 0 .. 4) {
		f.dateWeekdayAbbr();
	}
	foreach(i; 0 .. 4) {
		f.dateWeekdayWide();
	}
	foreach(i; 0 .. 4) {
		f.financeAccountType();
	}
	foreach(i; 0 .. 4) {
		f.financeCreditCardAmericanExpress();
	}
	foreach(i; 0 .. 4) {
		f.financeCreditCardDinersClub();
	}
	foreach(i; 0 .. 4) {
		f.financeCreditCardDiscover();
	}
	foreach(i; 0 .. 4) {
		f.financeCreditCardJcb();
	}
	foreach(i; 0 .. 4) {
		f.financeCreditCardMaestro();
	}
	foreach(i; 0 .. 4) {
		f.financeCreditCardMastercard();
	}
	foreach(i; 0 .. 4) {
		f.financeCreditCardVisa();
	}
	foreach(i; 0 .. 4) {
		f.financeCurrency();
	}
	foreach(i; 0 .. 4) {
		f.financeTransactionType();
	}
	foreach(i; 0 .. 4) {
		f.hackerAbbreviation();
	}
	foreach(i; 0 .. 4) {
		f.hackerAdjective();
	}
	foreach(i; 0 .. 4) {
		f.hackerIngverb();
	}
	foreach(i; 0 .. 4) {
		f.hackerNoun();
	}
	foreach(i; 0 .. 4) {
		f.hackerPhrase();
	}
	foreach(i; 0 .. 4) {
		f.hackerVerb();
	}
	foreach(i; 0 .. 4) {
		f.internetDomainSuffix();
	}
	foreach(i; 0 .. 4) {
		f.internetEmoji();
	}
	foreach(i; 0 .. 4) {
		f.internetEmojiActivity();
	}
	foreach(i; 0 .. 4) {
		f.internetEmojiBody();
	}
	foreach(i; 0 .. 4) {
		f.internetEmojiFlag();
	}
	foreach(i; 0 .. 4) {
		f.internetEmojiFood();
	}
	foreach(i; 0 .. 4) {
		f.internetEmojiNature();
	}
	foreach(i; 0 .. 4) {
		f.internetEmojiObject();
	}
	foreach(i; 0 .. 4) {
		f.internetEmojiPerson();
	}
	foreach(i; 0 .. 4) {
		f.internetEmojiSmiley();
	}
	foreach(i; 0 .. 4) {
		f.internetEmojiSymbol();
	}
	foreach(i; 0 .. 4) {
		f.internetEmojiTravel();
	}
	foreach(i; 0 .. 4) {
		f.internetExampleEmail();
	}
	foreach(i; 0 .. 4) {
		f.internetFreeEmail();
	}
	foreach(i; 0 .. 4) {
		f.locationBuildingNumber();
	}
	foreach(i; 0 .. 4) {
		f.locationCity();
	}
	foreach(i; 0 .. 4) {
		f.locationCityName();
	}
	foreach(i; 0 .. 4) {
		f.locationCityPattern();
	}
	foreach(i; 0 .. 4) {
		f.locationCityPrefix();
	}
	foreach(i; 0 .. 4) {
		f.locationCitySuffix();
	}
	foreach(i; 0 .. 4) {
		f.locationCountry();
	}
	foreach(i; 0 .. 4) {
		f.locationCounty();
	}
	foreach(i; 0 .. 4) {
		f.locationDefaultCountry();
	}
	foreach(i; 0 .. 4) {
		f.locationDirection();
	}
	foreach(i; 0 .. 4) {
		f.locationDirectionAbbr();
	}
	foreach(i; 0 .. 4) {
		f.locationPostcode();
	}
	foreach(i; 0 .. 4) {
		f.locationSecondaryAddress();
	}
	foreach(i; 0 .. 4) {
		f.locationState();
	}
	foreach(i; 0 .. 4) {
		f.locationStateAbbr();
	}
	foreach(i; 0 .. 4) {
		f.locationStreetAddress();
	}
	foreach(i; 0 .. 4) {
		f.locationStreetName();
	}
	foreach(i; 0 .. 4) {
		f.locationStreetPattern();
	}
	foreach(i; 0 .. 4) {
		f.locationStreetSuffix();
	}
	foreach(i; 0 .. 4) {
		f.locationTimeZone();
	}
	foreach(i; 0 .. 4) {
		f.loremParagraph();
	}
	foreach(i; 0 .. 4) {
		f.loremParagraphs();
	}
	foreach(i; 0 .. 4) {
		f.loremSentance();
	}
	foreach(i; 0 .. 4) {
		f.loremSentances();
	}
	foreach(i; 0 .. 4) {
		f.loremText();
	}
	foreach(i; 0 .. 4) {
		f.loremWords();
	}
	foreach(i; 0 .. 4) {
		f.musicGenre();
	}
	foreach(i; 0 .. 4) {
		f.musicSongName();
	}
	foreach(i; 0 .. 4) {
		f.personBioPart();
	}
	foreach(i; 0 .. 4) {
		f.personBioPattern();
	}
	foreach(i; 0 .. 4) {
		f.personBioSupporter();
	}
	foreach(i; 0 .. 4) {
		f.personFemaleFirstName();
	}
	foreach(i; 0 .. 4) {
		f.personFemaleMiddleName();
	}
	foreach(i; 0 .. 4) {
		f.personFemalePrefix();
	}
	foreach(i; 0 .. 4) {
		f.personFirstName();
	}
	foreach(i; 0 .. 4) {
		f.personGender();
	}
	foreach(i; 0 .. 4) {
		f.personJobArea();
	}
	foreach(i; 0 .. 4) {
		f.personJobDescriptor();
	}
	foreach(i; 0 .. 4) {
		f.personJobTitlePattern();
	}
	foreach(i; 0 .. 4) {
		f.personJobType();
	}
	foreach(i; 0 .. 4) {
		f.personLastName();
	}
	foreach(i; 0 .. 4) {
		f.personLastNamePattern();
	}
	foreach(i; 0 .. 4) {
		f.personMaleFirstName();
	}
	foreach(i; 0 .. 4) {
		f.personMaleMiddleName();
	}
	foreach(i; 0 .. 4) {
		f.personMalePrefix();
	}
	foreach(i; 0 .. 4) {
		f.personMiddleName();
	}
	foreach(i; 0 .. 4) {
		f.personName();
	}
	foreach(i; 0 .. 4) {
		f.personPrefix();
	}
	foreach(i; 0 .. 4) {
		f.personSex();
	}
	foreach(i; 0 .. 4) {
		f.personSuffix();
	}
	foreach(i; 0 .. 4) {
		f.personTitleDescriptor();
	}
	foreach(i; 0 .. 4) {
		f.personTitleJob();
	}
	foreach(i; 0 .. 4) {
		f.personTitleLevel();
	}
	foreach(i; 0 .. 4) {
		f.personWesternZodiacSign();
	}
	foreach(i; 0 .. 4) {
		f.phoneNumber();
	}
	foreach(i; 0 .. 4) {
		f.phoneNumberFormats();
	}
	foreach(i; 0 .. 4) {
		f.scienceChemicalElement();
	}
	foreach(i; 0 .. 4) {
		f.scienceUnit();
	}
	foreach(i; 0 .. 4) {
		f.systemDirectoryPaths();
	}
	foreach(i; 0 .. 4) {
		f.teamCreature();
	}
	foreach(i; 0 .. 4) {
		f.teamName();
	}
	foreach(i; 0 .. 4) {
		f.vehicleBicycleType();
	}
	foreach(i; 0 .. 4) {
		f.vehicleFuel();
	}
	foreach(i; 0 .. 4) {
		f.vehicleManufacturer();
	}
	foreach(i; 0 .. 4) {
		f.vehicleModel();
	}
	foreach(i; 0 .. 4) {
		f.vehicleType();
	}
	foreach(i; 0 .. 4) {
		f.wordAdjective();
	}
	foreach(i; 0 .. 4) {
		f.wordAdverb();
	}
	foreach(i; 0 .. 4) {
		f.wordConjunction();
	}
	foreach(i; 0 .. 4) {
		f.wordInterjection();
	}
	foreach(i; 0 .. 4) {
		f.wordNoun();
	}
	foreach(i; 0 .. 4) {
		f.wordPreposition();
	}
	foreach(i; 0 .. 4) {
		f.wordVerb();
	}
}

unittest {
	auto f = new Faker_en_gb(13);

	foreach(i; 0 .. 4) {
		f.airlineAirline();
	}
	foreach(i; 0 .. 4) {
		f.airlineAirplane();
	}
	foreach(i; 0 .. 4) {
		f.airlineAirport();
	}
	foreach(i; 0 .. 4) {
		f.animalBear();
	}
	foreach(i; 0 .. 4) {
		f.animalBird();
	}
	foreach(i; 0 .. 4) {
		f.animalCat();
	}
	foreach(i; 0 .. 4) {
		f.animalCetacean();
	}
	foreach(i; 0 .. 4) {
		f.animalCow();
	}
	foreach(i; 0 .. 4) {
		f.animalCrocodilia();
	}
	foreach(i; 0 .. 4) {
		f.animalDog();
	}
	foreach(i; 0 .. 4) {
		f.animalFish();
	}
	foreach(i; 0 .. 4) {
		f.animalHorse();
	}
	foreach(i; 0 .. 4) {
		f.animalInsect();
	}
	foreach(i; 0 .. 4) {
		f.animalLion();
	}
	foreach(i; 0 .. 4) {
		f.animalRabbit();
	}
	foreach(i; 0 .. 4) {
		f.animalRodent();
	}
	foreach(i; 0 .. 4) {
		f.animalSnake();
	}
	foreach(i; 0 .. 4) {
		f.appAuthor();
	}
	foreach(i; 0 .. 4) {
		f.appName();
	}
	foreach(i; 0 .. 4) {
		f.appVersion();
	}
	foreach(i; 0 .. 4) {
		f.cellPhoneFormats();
	}
	foreach(i; 0 .. 4) {
		f.commerceDepartment();
	}
	foreach(i; 0 .. 4) {
		f.commerceProductDescription();
	}
	foreach(i; 0 .. 4) {
		f.commerceProductNameAdjective();
	}
	foreach(i; 0 .. 4) {
		f.commerceProductNameMaterial();
	}
	foreach(i; 0 .. 4) {
		f.commerceProductNameProduct();
	}
	foreach(i; 0 .. 4) {
		f.companyAdjective();
	}
	foreach(i; 0 .. 4) {
		f.companyBuzzAdjective();
	}
	foreach(i; 0 .. 4) {
		f.companyBuzzNoun();
	}
	foreach(i; 0 .. 4) {
		f.companyBuzzVerb();
	}
	foreach(i; 0 .. 4) {
		f.companyCatchPhrase();
	}
	foreach(i; 0 .. 4) {
		f.companyDescriptor();
	}
	foreach(i; 0 .. 4) {
		f.companyName();
	}
	foreach(i; 0 .. 4) {
		f.companyNamePattern();
	}
	foreach(i; 0 .. 4) {
		f.companyNoun();
	}
	foreach(i; 0 .. 4) {
		f.companySuffix();
	}
	foreach(i; 0 .. 4) {
		f.databaseCollation();
	}
	foreach(i; 0 .. 4) {
		f.databaseColumn();
	}
	foreach(i; 0 .. 4) {
		f.databaseEngine();
	}
	foreach(i; 0 .. 4) {
		f.databaseType();
	}
	foreach(i; 0 .. 4) {
		f.dateMonthAbbr();
	}
	foreach(i; 0 .. 4) {
		f.dateMonthWide();
	}
	foreach(i; 0 .. 4) {
		f.dateWeekdayAbbr();
	}
	foreach(i; 0 .. 4) {
		f.dateWeekdayWide();
	}
	foreach(i; 0 .. 4) {
		f.financeAccountType();
	}
	foreach(i; 0 .. 4) {
		f.financeCreditCardAmericanExpress();
	}
	foreach(i; 0 .. 4) {
		f.financeCreditCardDinersClub();
	}
	foreach(i; 0 .. 4) {
		f.financeCreditCardDiscover();
	}
	foreach(i; 0 .. 4) {
		f.financeCreditCardJcb();
	}
	foreach(i; 0 .. 4) {
		f.financeCreditCardMaestro();
	}
	foreach(i; 0 .. 4) {
		f.financeCreditCardMastercard();
	}
	foreach(i; 0 .. 4) {
		f.financeCreditCardVisa();
	}
	foreach(i; 0 .. 4) {
		f.financeCurrency();
	}
	foreach(i; 0 .. 4) {
		f.financeTransactionType();
	}
	foreach(i; 0 .. 4) {
		f.hackerAbbreviation();
	}
	foreach(i; 0 .. 4) {
		f.hackerAdjective();
	}
	foreach(i; 0 .. 4) {
		f.hackerIngverb();
	}
	foreach(i; 0 .. 4) {
		f.hackerNoun();
	}
	foreach(i; 0 .. 4) {
		f.hackerPhrase();
	}
	foreach(i; 0 .. 4) {
		f.hackerVerb();
	}
	foreach(i; 0 .. 4) {
		f.internetDomainSuffix();
	}
	foreach(i; 0 .. 4) {
		f.internetEmoji();
	}
	foreach(i; 0 .. 4) {
		f.internetEmojiActivity();
	}
	foreach(i; 0 .. 4) {
		f.internetEmojiBody();
	}
	foreach(i; 0 .. 4) {
		f.internetEmojiFlag();
	}
	foreach(i; 0 .. 4) {
		f.internetEmojiFood();
	}
	foreach(i; 0 .. 4) {
		f.internetEmojiNature();
	}
	foreach(i; 0 .. 4) {
		f.internetEmojiObject();
	}
	foreach(i; 0 .. 4) {
		f.internetEmojiPerson();
	}
	foreach(i; 0 .. 4) {
		f.internetEmojiSmiley();
	}
	foreach(i; 0 .. 4) {
		f.internetEmojiSymbol();
	}
	foreach(i; 0 .. 4) {
		f.internetEmojiTravel();
	}
	foreach(i; 0 .. 4) {
		f.internetExampleEmail();
	}
	foreach(i; 0 .. 4) {
		f.internetFreeEmail();
	}
	foreach(i; 0 .. 4) {
		f.locationBuildingNumber();
	}
	foreach(i; 0 .. 4) {
		f.locationCity();
	}
	foreach(i; 0 .. 4) {
		f.locationCityName();
	}
	foreach(i; 0 .. 4) {
		f.locationCityPattern();
	}
	foreach(i; 0 .. 4) {
		f.locationCityPrefix();
	}
	foreach(i; 0 .. 4) {
		f.locationCitySuffix();
	}
	foreach(i; 0 .. 4) {
		f.locationCountry();
	}
	foreach(i; 0 .. 4) {
		f.locationCounty();
	}
	foreach(i; 0 .. 4) {
		f.locationDefaultCountry();
	}
	foreach(i; 0 .. 4) {
		f.locationDirection();
	}
	foreach(i; 0 .. 4) {
		f.locationDirectionAbbr();
	}
	foreach(i; 0 .. 4) {
		f.locationPostcode();
	}
	foreach(i; 0 .. 4) {
		f.locationSecondaryAddress();
	}
	foreach(i; 0 .. 4) {
		f.locationState();
	}
	foreach(i; 0 .. 4) {
		f.locationStateAbbr();
	}
	foreach(i; 0 .. 4) {
		f.locationStreetAddress();
	}
	foreach(i; 0 .. 4) {
		f.locationStreetName();
	}
	foreach(i; 0 .. 4) {
		f.locationStreetPattern();
	}
	foreach(i; 0 .. 4) {
		f.locationStreetSuffix();
	}
	foreach(i; 0 .. 4) {
		f.locationTimeZone();
	}
	foreach(i; 0 .. 4) {
		f.loremParagraph();
	}
	foreach(i; 0 .. 4) {
		f.loremParagraphs();
	}
	foreach(i; 0 .. 4) {
		f.loremSentance();
	}
	foreach(i; 0 .. 4) {
		f.loremSentances();
	}
	foreach(i; 0 .. 4) {
		f.loremText();
	}
	foreach(i; 0 .. 4) {
		f.loremWords();
	}
	foreach(i; 0 .. 4) {
		f.musicGenre();
	}
	foreach(i; 0 .. 4) {
		f.musicSongName();
	}
	foreach(i; 0 .. 4) {
		f.personBioPart();
	}
	foreach(i; 0 .. 4) {
		f.personBioPattern();
	}
	foreach(i; 0 .. 4) {
		f.personBioSupporter();
	}
	foreach(i; 0 .. 4) {
		f.personFemaleFirstName();
	}
	foreach(i; 0 .. 4) {
		f.personFemaleMiddleName();
	}
	foreach(i; 0 .. 4) {
		f.personFemalePrefix();
	}
	foreach(i; 0 .. 4) {
		f.personFirstName();
	}
	foreach(i; 0 .. 4) {
		f.personGender();
	}
	foreach(i; 0 .. 4) {
		f.personJobArea();
	}
	foreach(i; 0 .. 4) {
		f.personJobDescriptor();
	}
	foreach(i; 0 .. 4) {
		f.personJobTitlePattern();
	}
	foreach(i; 0 .. 4) {
		f.personJobType();
	}
	foreach(i; 0 .. 4) {
		f.personLastName();
	}
	foreach(i; 0 .. 4) {
		f.personLastNamePattern();
	}
	foreach(i; 0 .. 4) {
		f.personMaleFirstName();
	}
	foreach(i; 0 .. 4) {
		f.personMaleMiddleName();
	}
	foreach(i; 0 .. 4) {
		f.personMalePrefix();
	}
	foreach(i; 0 .. 4) {
		f.personMiddleName();
	}
	foreach(i; 0 .. 4) {
		f.personName();
	}
	foreach(i; 0 .. 4) {
		f.personPrefix();
	}
	foreach(i; 0 .. 4) {
		f.personSex();
	}
	foreach(i; 0 .. 4) {
		f.personSuffix();
	}
	foreach(i; 0 .. 4) {
		f.personTitleDescriptor();
	}
	foreach(i; 0 .. 4) {
		f.personTitleJob();
	}
	foreach(i; 0 .. 4) {
		f.personTitleLevel();
	}
	foreach(i; 0 .. 4) {
		f.personWesternZodiacSign();
	}
	foreach(i; 0 .. 4) {
		f.phoneNumber();
	}
	foreach(i; 0 .. 4) {
		f.phoneNumberFormats();
	}
	foreach(i; 0 .. 4) {
		f.scienceChemicalElement();
	}
	foreach(i; 0 .. 4) {
		f.scienceUnit();
	}
	foreach(i; 0 .. 4) {
		f.systemDirectoryPaths();
	}
	foreach(i; 0 .. 4) {
		f.teamCreature();
	}
	foreach(i; 0 .. 4) {
		f.teamName();
	}
	foreach(i; 0 .. 4) {
		f.vehicleBicycleType();
	}
	foreach(i; 0 .. 4) {
		f.vehicleFuel();
	}
	foreach(i; 0 .. 4) {
		f.vehicleManufacturer();
	}
	foreach(i; 0 .. 4) {
		f.vehicleModel();
	}
	foreach(i; 0 .. 4) {
		f.vehicleType();
	}
	foreach(i; 0 .. 4) {
		f.wordAdjective();
	}
	foreach(i; 0 .. 4) {
		f.wordAdverb();
	}
	foreach(i; 0 .. 4) {
		f.wordConjunction();
	}
	foreach(i; 0 .. 4) {
		f.wordInterjection();
	}
	foreach(i; 0 .. 4) {
		f.wordNoun();
	}
	foreach(i; 0 .. 4) {
		f.wordPreposition();
	}
	foreach(i; 0 .. 4) {
		f.wordVerb();
	}
}

unittest {
	auto f = new Faker_en_gh(13);

	foreach(i; 0 .. 4) {
		f.airlineAirline();
	}
	foreach(i; 0 .. 4) {
		f.airlineAirplane();
	}
	foreach(i; 0 .. 4) {
		f.airlineAirport();
	}
	foreach(i; 0 .. 4) {
		f.animalBear();
	}
	foreach(i; 0 .. 4) {
		f.animalBird();
	}
	foreach(i; 0 .. 4) {
		f.animalCat();
	}
	foreach(i; 0 .. 4) {
		f.animalCetacean();
	}
	foreach(i; 0 .. 4) {
		f.animalCow();
	}
	foreach(i; 0 .. 4) {
		f.animalCrocodilia();
	}
	foreach(i; 0 .. 4) {
		f.animalDog();
	}
	foreach(i; 0 .. 4) {
		f.animalFish();
	}
	foreach(i; 0 .. 4) {
		f.animalHorse();
	}
	foreach(i; 0 .. 4) {
		f.animalInsect();
	}
	foreach(i; 0 .. 4) {
		f.animalLion();
	}
	foreach(i; 0 .. 4) {
		f.animalRabbit();
	}
	foreach(i; 0 .. 4) {
		f.animalRodent();
	}
	foreach(i; 0 .. 4) {
		f.animalSnake();
	}
	foreach(i; 0 .. 4) {
		f.appAuthor();
	}
	foreach(i; 0 .. 4) {
		f.appName();
	}
	foreach(i; 0 .. 4) {
		f.appVersion();
	}
	foreach(i; 0 .. 4) {
		f.cellPhoneFormats();
	}
	foreach(i; 0 .. 4) {
		f.commerceDepartment();
	}
	foreach(i; 0 .. 4) {
		f.commerceProductDescription();
	}
	foreach(i; 0 .. 4) {
		f.commerceProductNameAdjective();
	}
	foreach(i; 0 .. 4) {
		f.commerceProductNameMaterial();
	}
	foreach(i; 0 .. 4) {
		f.commerceProductNameProduct();
	}
	foreach(i; 0 .. 4) {
		f.companyAdjective();
	}
	foreach(i; 0 .. 4) {
		f.companyBuzzAdjective();
	}
	foreach(i; 0 .. 4) {
		f.companyBuzzNoun();
	}
	foreach(i; 0 .. 4) {
		f.companyBuzzVerb();
	}
	foreach(i; 0 .. 4) {
		f.companyCatchPhrase();
	}
	foreach(i; 0 .. 4) {
		f.companyDescriptor();
	}
	foreach(i; 0 .. 4) {
		f.companyName();
	}
	foreach(i; 0 .. 4) {
		f.companyNamePattern();
	}
	foreach(i; 0 .. 4) {
		f.companyNoun();
	}
	foreach(i; 0 .. 4) {
		f.companySuffix();
	}
	foreach(i; 0 .. 4) {
		f.databaseCollation();
	}
	foreach(i; 0 .. 4) {
		f.databaseColumn();
	}
	foreach(i; 0 .. 4) {
		f.databaseEngine();
	}
	foreach(i; 0 .. 4) {
		f.databaseType();
	}
	foreach(i; 0 .. 4) {
		f.dateMonthAbbr();
	}
	foreach(i; 0 .. 4) {
		f.dateMonthWide();
	}
	foreach(i; 0 .. 4) {
		f.dateWeekdayAbbr();
	}
	foreach(i; 0 .. 4) {
		f.dateWeekdayWide();
	}
	foreach(i; 0 .. 4) {
		f.financeAccountType();
	}
	foreach(i; 0 .. 4) {
		f.financeCreditCardAmericanExpress();
	}
	foreach(i; 0 .. 4) {
		f.financeCreditCardDinersClub();
	}
	foreach(i; 0 .. 4) {
		f.financeCreditCardDiscover();
	}
	foreach(i; 0 .. 4) {
		f.financeCreditCardJcb();
	}
	foreach(i; 0 .. 4) {
		f.financeCreditCardMaestro();
	}
	foreach(i; 0 .. 4) {
		f.financeCreditCardMastercard();
	}
	foreach(i; 0 .. 4) {
		f.financeCreditCardVisa();
	}
	foreach(i; 0 .. 4) {
		f.financeCurrency();
	}
	foreach(i; 0 .. 4) {
		f.financeTransactionType();
	}
	foreach(i; 0 .. 4) {
		f.hackerAbbreviation();
	}
	foreach(i; 0 .. 4) {
		f.hackerAdjective();
	}
	foreach(i; 0 .. 4) {
		f.hackerIngverb();
	}
	foreach(i; 0 .. 4) {
		f.hackerNoun();
	}
	foreach(i; 0 .. 4) {
		f.hackerPhrase();
	}
	foreach(i; 0 .. 4) {
		f.hackerVerb();
	}
	foreach(i; 0 .. 4) {
		f.internetDomainSuffix();
	}
	foreach(i; 0 .. 4) {
		f.internetEmoji();
	}
	foreach(i; 0 .. 4) {
		f.internetEmojiActivity();
	}
	foreach(i; 0 .. 4) {
		f.internetEmojiBody();
	}
	foreach(i; 0 .. 4) {
		f.internetEmojiFlag();
	}
	foreach(i; 0 .. 4) {
		f.internetEmojiFood();
	}
	foreach(i; 0 .. 4) {
		f.internetEmojiNature();
	}
	foreach(i; 0 .. 4) {
		f.internetEmojiObject();
	}
	foreach(i; 0 .. 4) {
		f.internetEmojiPerson();
	}
	foreach(i; 0 .. 4) {
		f.internetEmojiSmiley();
	}
	foreach(i; 0 .. 4) {
		f.internetEmojiSymbol();
	}
	foreach(i; 0 .. 4) {
		f.internetEmojiTravel();
	}
	foreach(i; 0 .. 4) {
		f.internetExampleEmail();
	}
	foreach(i; 0 .. 4) {
		f.internetFreeEmail();
	}
	foreach(i; 0 .. 4) {
		f.locationBuildingNumber();
	}
	foreach(i; 0 .. 4) {
		f.locationCity();
	}
	foreach(i; 0 .. 4) {
		f.locationCityName();
	}
	foreach(i; 0 .. 4) {
		f.locationCityPattern();
	}
	foreach(i; 0 .. 4) {
		f.locationCityPrefix();
	}
	foreach(i; 0 .. 4) {
		f.locationCitySuffix();
	}
	foreach(i; 0 .. 4) {
		f.locationCountry();
	}
	foreach(i; 0 .. 4) {
		f.locationCounty();
	}
	foreach(i; 0 .. 4) {
		f.locationDefaultCountry();
	}
	foreach(i; 0 .. 4) {
		f.locationDirection();
	}
	foreach(i; 0 .. 4) {
		f.locationDirectionAbbr();
	}
	foreach(i; 0 .. 4) {
		f.locationPostcode();
	}
	foreach(i; 0 .. 4) {
		f.locationSecondaryAddress();
	}
	foreach(i; 0 .. 4) {
		f.locationState();
	}
	foreach(i; 0 .. 4) {
		f.locationStateAbbr();
	}
	foreach(i; 0 .. 4) {
		f.locationStreetAddress();
	}
	foreach(i; 0 .. 4) {
		f.locationStreetName();
	}
	foreach(i; 0 .. 4) {
		f.locationStreetPattern();
	}
	foreach(i; 0 .. 4) {
		f.locationStreetSuffix();
	}
	foreach(i; 0 .. 4) {
		f.locationTimeZone();
	}
	foreach(i; 0 .. 4) {
		f.loremParagraph();
	}
	foreach(i; 0 .. 4) {
		f.loremParagraphs();
	}
	foreach(i; 0 .. 4) {
		f.loremSentance();
	}
	foreach(i; 0 .. 4) {
		f.loremSentances();
	}
	foreach(i; 0 .. 4) {
		f.loremText();
	}
	foreach(i; 0 .. 4) {
		f.loremWords();
	}
	foreach(i; 0 .. 4) {
		f.musicGenre();
	}
	foreach(i; 0 .. 4) {
		f.musicSongName();
	}
	foreach(i; 0 .. 4) {
		f.personBioPart();
	}
	foreach(i; 0 .. 4) {
		f.personBioPattern();
	}
	foreach(i; 0 .. 4) {
		f.personBioSupporter();
	}
	foreach(i; 0 .. 4) {
		f.personFemaleFirstName();
	}
	foreach(i; 0 .. 4) {
		f.personFemaleMiddleName();
	}
	foreach(i; 0 .. 4) {
		f.personFemalePrefix();
	}
	foreach(i; 0 .. 4) {
		f.personFirstName();
	}
	foreach(i; 0 .. 4) {
		f.personGender();
	}
	foreach(i; 0 .. 4) {
		f.personJobArea();
	}
	foreach(i; 0 .. 4) {
		f.personJobDescriptor();
	}
	foreach(i; 0 .. 4) {
		f.personJobTitlePattern();
	}
	foreach(i; 0 .. 4) {
		f.personJobType();
	}
	foreach(i; 0 .. 4) {
		f.personLastName();
	}
	foreach(i; 0 .. 4) {
		f.personLastNamePattern();
	}
	foreach(i; 0 .. 4) {
		f.personMaleFirstName();
	}
	foreach(i; 0 .. 4) {
		f.personMaleMiddleName();
	}
	foreach(i; 0 .. 4) {
		f.personMalePrefix();
	}
	foreach(i; 0 .. 4) {
		f.personMiddleName();
	}
	foreach(i; 0 .. 4) {
		f.personName();
	}
	foreach(i; 0 .. 4) {
		f.personPrefix();
	}
	foreach(i; 0 .. 4) {
		f.personSex();
	}
	foreach(i; 0 .. 4) {
		f.personSuffix();
	}
	foreach(i; 0 .. 4) {
		f.personTitleDescriptor();
	}
	foreach(i; 0 .. 4) {
		f.personTitleJob();
	}
	foreach(i; 0 .. 4) {
		f.personTitleLevel();
	}
	foreach(i; 0 .. 4) {
		f.personWesternZodiacSign();
	}
	foreach(i; 0 .. 4) {
		f.phoneNumber();
	}
	foreach(i; 0 .. 4) {
		f.phoneNumberFormats();
	}
	foreach(i; 0 .. 4) {
		f.scienceChemicalElement();
	}
	foreach(i; 0 .. 4) {
		f.scienceUnit();
	}
	foreach(i; 0 .. 4) {
		f.systemDirectoryPaths();
	}
	foreach(i; 0 .. 4) {
		f.teamCreature();
	}
	foreach(i; 0 .. 4) {
		f.teamName();
	}
	foreach(i; 0 .. 4) {
		f.vehicleBicycleType();
	}
	foreach(i; 0 .. 4) {
		f.vehicleFuel();
	}
	foreach(i; 0 .. 4) {
		f.vehicleManufacturer();
	}
	foreach(i; 0 .. 4) {
		f.vehicleModel();
	}
	foreach(i; 0 .. 4) {
		f.vehicleType();
	}
	foreach(i; 0 .. 4) {
		f.wordAdjective();
	}
	foreach(i; 0 .. 4) {
		f.wordAdverb();
	}
	foreach(i; 0 .. 4) {
		f.wordConjunction();
	}
	foreach(i; 0 .. 4) {
		f.wordInterjection();
	}
	foreach(i; 0 .. 4) {
		f.wordNoun();
	}
	foreach(i; 0 .. 4) {
		f.wordPreposition();
	}
	foreach(i; 0 .. 4) {
		f.wordVerb();
	}
}

unittest {
	auto f = new Faker_en_hk(13);

	foreach(i; 0 .. 4) {
		f.airlineAirline();
	}
	foreach(i; 0 .. 4) {
		f.airlineAirplane();
	}
	foreach(i; 0 .. 4) {
		f.airlineAirport();
	}
	foreach(i; 0 .. 4) {
		f.animalBear();
	}
	foreach(i; 0 .. 4) {
		f.animalBird();
	}
	foreach(i; 0 .. 4) {
		f.animalCat();
	}
	foreach(i; 0 .. 4) {
		f.animalCetacean();
	}
	foreach(i; 0 .. 4) {
		f.animalCow();
	}
	foreach(i; 0 .. 4) {
		f.animalCrocodilia();
	}
	foreach(i; 0 .. 4) {
		f.animalDog();
	}
	foreach(i; 0 .. 4) {
		f.animalFish();
	}
	foreach(i; 0 .. 4) {
		f.animalHorse();
	}
	foreach(i; 0 .. 4) {
		f.animalInsect();
	}
	foreach(i; 0 .. 4) {
		f.animalLion();
	}
	foreach(i; 0 .. 4) {
		f.animalRabbit();
	}
	foreach(i; 0 .. 4) {
		f.animalRodent();
	}
	foreach(i; 0 .. 4) {
		f.animalSnake();
	}
	foreach(i; 0 .. 4) {
		f.appAuthor();
	}
	foreach(i; 0 .. 4) {
		f.appName();
	}
	foreach(i; 0 .. 4) {
		f.appVersion();
	}
	foreach(i; 0 .. 4) {
		f.cellPhoneFormats();
	}
	foreach(i; 0 .. 4) {
		f.commerceDepartment();
	}
	foreach(i; 0 .. 4) {
		f.commerceProductDescription();
	}
	foreach(i; 0 .. 4) {
		f.commerceProductNameAdjective();
	}
	foreach(i; 0 .. 4) {
		f.commerceProductNameMaterial();
	}
	foreach(i; 0 .. 4) {
		f.commerceProductNameProduct();
	}
	foreach(i; 0 .. 4) {
		f.companyAdjective();
	}
	foreach(i; 0 .. 4) {
		f.companyBuzzAdjective();
	}
	foreach(i; 0 .. 4) {
		f.companyBuzzNoun();
	}
	foreach(i; 0 .. 4) {
		f.companyBuzzVerb();
	}
	foreach(i; 0 .. 4) {
		f.companyCatchPhrase();
	}
	foreach(i; 0 .. 4) {
		f.companyDescriptor();
	}
	foreach(i; 0 .. 4) {
		f.companyName();
	}
	foreach(i; 0 .. 4) {
		f.companyNamePattern();
	}
	foreach(i; 0 .. 4) {
		f.companyNoun();
	}
	foreach(i; 0 .. 4) {
		f.companySuffix();
	}
	foreach(i; 0 .. 4) {
		f.databaseCollation();
	}
	foreach(i; 0 .. 4) {
		f.databaseColumn();
	}
	foreach(i; 0 .. 4) {
		f.databaseEngine();
	}
	foreach(i; 0 .. 4) {
		f.databaseType();
	}
	foreach(i; 0 .. 4) {
		f.dateMonthAbbr();
	}
	foreach(i; 0 .. 4) {
		f.dateMonthWide();
	}
	foreach(i; 0 .. 4) {
		f.dateWeekdayAbbr();
	}
	foreach(i; 0 .. 4) {
		f.dateWeekdayWide();
	}
	foreach(i; 0 .. 4) {
		f.financeAccountType();
	}
	foreach(i; 0 .. 4) {
		f.financeCreditCardAmericanExpress();
	}
	foreach(i; 0 .. 4) {
		f.financeCreditCardDinersClub();
	}
	foreach(i; 0 .. 4) {
		f.financeCreditCardDiscover();
	}
	foreach(i; 0 .. 4) {
		f.financeCreditCardJcb();
	}
	foreach(i; 0 .. 4) {
		f.financeCreditCardMaestro();
	}
	foreach(i; 0 .. 4) {
		f.financeCreditCardMastercard();
	}
	foreach(i; 0 .. 4) {
		f.financeCreditCardVisa();
	}
	foreach(i; 0 .. 4) {
		f.financeCurrency();
	}
	foreach(i; 0 .. 4) {
		f.financeTransactionType();
	}
	foreach(i; 0 .. 4) {
		f.hackerAbbreviation();
	}
	foreach(i; 0 .. 4) {
		f.hackerAdjective();
	}
	foreach(i; 0 .. 4) {
		f.hackerIngverb();
	}
	foreach(i; 0 .. 4) {
		f.hackerNoun();
	}
	foreach(i; 0 .. 4) {
		f.hackerPhrase();
	}
	foreach(i; 0 .. 4) {
		f.hackerVerb();
	}
	foreach(i; 0 .. 4) {
		f.internetDomainSuffix();
	}
	foreach(i; 0 .. 4) {
		f.internetEmoji();
	}
	foreach(i; 0 .. 4) {
		f.internetEmojiActivity();
	}
	foreach(i; 0 .. 4) {
		f.internetEmojiBody();
	}
	foreach(i; 0 .. 4) {
		f.internetEmojiFlag();
	}
	foreach(i; 0 .. 4) {
		f.internetEmojiFood();
	}
	foreach(i; 0 .. 4) {
		f.internetEmojiNature();
	}
	foreach(i; 0 .. 4) {
		f.internetEmojiObject();
	}
	foreach(i; 0 .. 4) {
		f.internetEmojiPerson();
	}
	foreach(i; 0 .. 4) {
		f.internetEmojiSmiley();
	}
	foreach(i; 0 .. 4) {
		f.internetEmojiSymbol();
	}
	foreach(i; 0 .. 4) {
		f.internetEmojiTravel();
	}
	foreach(i; 0 .. 4) {
		f.internetExampleEmail();
	}
	foreach(i; 0 .. 4) {
		f.internetFreeEmail();
	}
	foreach(i; 0 .. 4) {
		f.locationBuildingNumber();
	}
	foreach(i; 0 .. 4) {
		f.locationCity();
	}
	foreach(i; 0 .. 4) {
		f.locationCityName();
	}
	foreach(i; 0 .. 4) {
		f.locationCityPattern();
	}
	foreach(i; 0 .. 4) {
		f.locationCityPrefix();
	}
	foreach(i; 0 .. 4) {
		f.locationCitySuffix();
	}
	foreach(i; 0 .. 4) {
		f.locationCountry();
	}
	foreach(i; 0 .. 4) {
		f.locationCounty();
	}
	foreach(i; 0 .. 4) {
		f.locationDefaultCountry();
	}
	foreach(i; 0 .. 4) {
		f.locationDirection();
	}
	foreach(i; 0 .. 4) {
		f.locationDirectionAbbr();
	}
	foreach(i; 0 .. 4) {
		f.locationPostcode();
	}
	foreach(i; 0 .. 4) {
		f.locationSecondaryAddress();
	}
	foreach(i; 0 .. 4) {
		f.locationState();
	}
	foreach(i; 0 .. 4) {
		f.locationStateAbbr();
	}
	foreach(i; 0 .. 4) {
		f.locationStreetAddress();
	}
	foreach(i; 0 .. 4) {
		f.locationStreetName();
	}
	foreach(i; 0 .. 4) {
		f.locationStreetPattern();
	}
	foreach(i; 0 .. 4) {
		f.locationStreetSuffix();
	}
	foreach(i; 0 .. 4) {
		f.locationTimeZone();
	}
	foreach(i; 0 .. 4) {
		f.loremParagraph();
	}
	foreach(i; 0 .. 4) {
		f.loremParagraphs();
	}
	foreach(i; 0 .. 4) {
		f.loremSentance();
	}
	foreach(i; 0 .. 4) {
		f.loremSentances();
	}
	foreach(i; 0 .. 4) {
		f.loremText();
	}
	foreach(i; 0 .. 4) {
		f.loremWords();
	}
	foreach(i; 0 .. 4) {
		f.musicGenre();
	}
	foreach(i; 0 .. 4) {
		f.musicSongName();
	}
	foreach(i; 0 .. 4) {
		f.personBioPart();
	}
	foreach(i; 0 .. 4) {
		f.personBioPattern();
	}
	foreach(i; 0 .. 4) {
		f.personBioSupporter();
	}
	foreach(i; 0 .. 4) {
		f.personFemaleFirstName();
	}
	foreach(i; 0 .. 4) {
		f.personFemaleMiddleName();
	}
	foreach(i; 0 .. 4) {
		f.personFemalePrefix();
	}
	foreach(i; 0 .. 4) {
		f.personFirstName();
	}
	foreach(i; 0 .. 4) {
		f.personGender();
	}
	foreach(i; 0 .. 4) {
		f.personJobArea();
	}
	foreach(i; 0 .. 4) {
		f.personJobDescriptor();
	}
	foreach(i; 0 .. 4) {
		f.personJobTitlePattern();
	}
	foreach(i; 0 .. 4) {
		f.personJobType();
	}
	foreach(i; 0 .. 4) {
		f.personLastName();
	}
	foreach(i; 0 .. 4) {
		f.personLastNamePattern();
	}
	foreach(i; 0 .. 4) {
		f.personMaleFirstName();
	}
	foreach(i; 0 .. 4) {
		f.personMaleMiddleName();
	}
	foreach(i; 0 .. 4) {
		f.personMalePrefix();
	}
	foreach(i; 0 .. 4) {
		f.personMiddleName();
	}
	foreach(i; 0 .. 4) {
		f.personName();
	}
	foreach(i; 0 .. 4) {
		f.personPrefix();
	}
	foreach(i; 0 .. 4) {
		f.personSex();
	}
	foreach(i; 0 .. 4) {
		f.personSuffix();
	}
	foreach(i; 0 .. 4) {
		f.personTitleDescriptor();
	}
	foreach(i; 0 .. 4) {
		f.personTitleJob();
	}
	foreach(i; 0 .. 4) {
		f.personTitleLevel();
	}
	foreach(i; 0 .. 4) {
		f.personWesternZodiacSign();
	}
	foreach(i; 0 .. 4) {
		f.phoneNumber();
	}
	foreach(i; 0 .. 4) {
		f.phoneNumberFormats();
	}
	foreach(i; 0 .. 4) {
		f.scienceChemicalElement();
	}
	foreach(i; 0 .. 4) {
		f.scienceUnit();
	}
	foreach(i; 0 .. 4) {
		f.systemDirectoryPaths();
	}
	foreach(i; 0 .. 4) {
		f.teamCreature();
	}
	foreach(i; 0 .. 4) {
		f.teamName();
	}
	foreach(i; 0 .. 4) {
		f.vehicleBicycleType();
	}
	foreach(i; 0 .. 4) {
		f.vehicleFuel();
	}
	foreach(i; 0 .. 4) {
		f.vehicleManufacturer();
	}
	foreach(i; 0 .. 4) {
		f.vehicleModel();
	}
	foreach(i; 0 .. 4) {
		f.vehicleType();
	}
	foreach(i; 0 .. 4) {
		f.wordAdjective();
	}
	foreach(i; 0 .. 4) {
		f.wordAdverb();
	}
	foreach(i; 0 .. 4) {
		f.wordConjunction();
	}
	foreach(i; 0 .. 4) {
		f.wordInterjection();
	}
	foreach(i; 0 .. 4) {
		f.wordNoun();
	}
	foreach(i; 0 .. 4) {
		f.wordPreposition();
	}
	foreach(i; 0 .. 4) {
		f.wordVerb();
	}
}

unittest {
	auto f = new Faker_en_ie(13);

	foreach(i; 0 .. 4) {
		f.airlineAirline();
	}
	foreach(i; 0 .. 4) {
		f.airlineAirplane();
	}
	foreach(i; 0 .. 4) {
		f.airlineAirport();
	}
	foreach(i; 0 .. 4) {
		f.animalBear();
	}
	foreach(i; 0 .. 4) {
		f.animalBird();
	}
	foreach(i; 0 .. 4) {
		f.animalCat();
	}
	foreach(i; 0 .. 4) {
		f.animalCetacean();
	}
	foreach(i; 0 .. 4) {
		f.animalCow();
	}
	foreach(i; 0 .. 4) {
		f.animalCrocodilia();
	}
	foreach(i; 0 .. 4) {
		f.animalDog();
	}
	foreach(i; 0 .. 4) {
		f.animalFish();
	}
	foreach(i; 0 .. 4) {
		f.animalHorse();
	}
	foreach(i; 0 .. 4) {
		f.animalInsect();
	}
	foreach(i; 0 .. 4) {
		f.animalLion();
	}
	foreach(i; 0 .. 4) {
		f.animalRabbit();
	}
	foreach(i; 0 .. 4) {
		f.animalRodent();
	}
	foreach(i; 0 .. 4) {
		f.animalSnake();
	}
	foreach(i; 0 .. 4) {
		f.appAuthor();
	}
	foreach(i; 0 .. 4) {
		f.appName();
	}
	foreach(i; 0 .. 4) {
		f.appVersion();
	}
	foreach(i; 0 .. 4) {
		f.cellPhoneFormats();
	}
	foreach(i; 0 .. 4) {
		f.commerceDepartment();
	}
	foreach(i; 0 .. 4) {
		f.commerceProductDescription();
	}
	foreach(i; 0 .. 4) {
		f.commerceProductNameAdjective();
	}
	foreach(i; 0 .. 4) {
		f.commerceProductNameMaterial();
	}
	foreach(i; 0 .. 4) {
		f.commerceProductNameProduct();
	}
	foreach(i; 0 .. 4) {
		f.companyAdjective();
	}
	foreach(i; 0 .. 4) {
		f.companyBuzzAdjective();
	}
	foreach(i; 0 .. 4) {
		f.companyBuzzNoun();
	}
	foreach(i; 0 .. 4) {
		f.companyBuzzVerb();
	}
	foreach(i; 0 .. 4) {
		f.companyCatchPhrase();
	}
	foreach(i; 0 .. 4) {
		f.companyDescriptor();
	}
	foreach(i; 0 .. 4) {
		f.companyName();
	}
	foreach(i; 0 .. 4) {
		f.companyNamePattern();
	}
	foreach(i; 0 .. 4) {
		f.companyNoun();
	}
	foreach(i; 0 .. 4) {
		f.companySuffix();
	}
	foreach(i; 0 .. 4) {
		f.databaseCollation();
	}
	foreach(i; 0 .. 4) {
		f.databaseColumn();
	}
	foreach(i; 0 .. 4) {
		f.databaseEngine();
	}
	foreach(i; 0 .. 4) {
		f.databaseType();
	}
	foreach(i; 0 .. 4) {
		f.dateMonthAbbr();
	}
	foreach(i; 0 .. 4) {
		f.dateMonthWide();
	}
	foreach(i; 0 .. 4) {
		f.dateWeekdayAbbr();
	}
	foreach(i; 0 .. 4) {
		f.dateWeekdayWide();
	}
	foreach(i; 0 .. 4) {
		f.financeAccountType();
	}
	foreach(i; 0 .. 4) {
		f.financeCreditCardAmericanExpress();
	}
	foreach(i; 0 .. 4) {
		f.financeCreditCardDinersClub();
	}
	foreach(i; 0 .. 4) {
		f.financeCreditCardDiscover();
	}
	foreach(i; 0 .. 4) {
		f.financeCreditCardJcb();
	}
	foreach(i; 0 .. 4) {
		f.financeCreditCardMaestro();
	}
	foreach(i; 0 .. 4) {
		f.financeCreditCardMastercard();
	}
	foreach(i; 0 .. 4) {
		f.financeCreditCardVisa();
	}
	foreach(i; 0 .. 4) {
		f.financeCurrency();
	}
	foreach(i; 0 .. 4) {
		f.financeTransactionType();
	}
	foreach(i; 0 .. 4) {
		f.hackerAbbreviation();
	}
	foreach(i; 0 .. 4) {
		f.hackerAdjective();
	}
	foreach(i; 0 .. 4) {
		f.hackerIngverb();
	}
	foreach(i; 0 .. 4) {
		f.hackerNoun();
	}
	foreach(i; 0 .. 4) {
		f.hackerPhrase();
	}
	foreach(i; 0 .. 4) {
		f.hackerVerb();
	}
	foreach(i; 0 .. 4) {
		f.internetDomainSuffix();
	}
	foreach(i; 0 .. 4) {
		f.internetEmoji();
	}
	foreach(i; 0 .. 4) {
		f.internetEmojiActivity();
	}
	foreach(i; 0 .. 4) {
		f.internetEmojiBody();
	}
	foreach(i; 0 .. 4) {
		f.internetEmojiFlag();
	}
	foreach(i; 0 .. 4) {
		f.internetEmojiFood();
	}
	foreach(i; 0 .. 4) {
		f.internetEmojiNature();
	}
	foreach(i; 0 .. 4) {
		f.internetEmojiObject();
	}
	foreach(i; 0 .. 4) {
		f.internetEmojiPerson();
	}
	foreach(i; 0 .. 4) {
		f.internetEmojiSmiley();
	}
	foreach(i; 0 .. 4) {
		f.internetEmojiSymbol();
	}
	foreach(i; 0 .. 4) {
		f.internetEmojiTravel();
	}
	foreach(i; 0 .. 4) {
		f.internetExampleEmail();
	}
	foreach(i; 0 .. 4) {
		f.internetFreeEmail();
	}
	foreach(i; 0 .. 4) {
		f.locationBuildingNumber();
	}
	foreach(i; 0 .. 4) {
		f.locationCity();
	}
	foreach(i; 0 .. 4) {
		f.locationCityName();
	}
	foreach(i; 0 .. 4) {
		f.locationCityPattern();
	}
	foreach(i; 0 .. 4) {
		f.locationCityPrefix();
	}
	foreach(i; 0 .. 4) {
		f.locationCitySuffix();
	}
	foreach(i; 0 .. 4) {
		f.locationCountry();
	}
	foreach(i; 0 .. 4) {
		f.locationCounty();
	}
	foreach(i; 0 .. 4) {
		f.locationDefaultCountry();
	}
	foreach(i; 0 .. 4) {
		f.locationDirection();
	}
	foreach(i; 0 .. 4) {
		f.locationDirectionAbbr();
	}
	foreach(i; 0 .. 4) {
		f.locationPostcode();
	}
	foreach(i; 0 .. 4) {
		f.locationSecondaryAddress();
	}
	foreach(i; 0 .. 4) {
		f.locationState();
	}
	foreach(i; 0 .. 4) {
		f.locationStateAbbr();
	}
	foreach(i; 0 .. 4) {
		f.locationStreetAddress();
	}
	foreach(i; 0 .. 4) {
		f.locationStreetName();
	}
	foreach(i; 0 .. 4) {
		f.locationStreetPattern();
	}
	foreach(i; 0 .. 4) {
		f.locationStreetSuffix();
	}
	foreach(i; 0 .. 4) {
		f.locationTimeZone();
	}
	foreach(i; 0 .. 4) {
		f.loremParagraph();
	}
	foreach(i; 0 .. 4) {
		f.loremParagraphs();
	}
	foreach(i; 0 .. 4) {
		f.loremSentance();
	}
	foreach(i; 0 .. 4) {
		f.loremSentances();
	}
	foreach(i; 0 .. 4) {
		f.loremText();
	}
	foreach(i; 0 .. 4) {
		f.loremWords();
	}
	foreach(i; 0 .. 4) {
		f.musicGenre();
	}
	foreach(i; 0 .. 4) {
		f.musicSongName();
	}
	foreach(i; 0 .. 4) {
		f.personBioPart();
	}
	foreach(i; 0 .. 4) {
		f.personBioPattern();
	}
	foreach(i; 0 .. 4) {
		f.personBioSupporter();
	}
	foreach(i; 0 .. 4) {
		f.personFemaleFirstName();
	}
	foreach(i; 0 .. 4) {
		f.personFemaleMiddleName();
	}
	foreach(i; 0 .. 4) {
		f.personFemalePrefix();
	}
	foreach(i; 0 .. 4) {
		f.personFirstName();
	}
	foreach(i; 0 .. 4) {
		f.personGender();
	}
	foreach(i; 0 .. 4) {
		f.personJobArea();
	}
	foreach(i; 0 .. 4) {
		f.personJobDescriptor();
	}
	foreach(i; 0 .. 4) {
		f.personJobTitlePattern();
	}
	foreach(i; 0 .. 4) {
		f.personJobType();
	}
	foreach(i; 0 .. 4) {
		f.personLastName();
	}
	foreach(i; 0 .. 4) {
		f.personLastNamePattern();
	}
	foreach(i; 0 .. 4) {
		f.personMaleFirstName();
	}
	foreach(i; 0 .. 4) {
		f.personMaleMiddleName();
	}
	foreach(i; 0 .. 4) {
		f.personMalePrefix();
	}
	foreach(i; 0 .. 4) {
		f.personMiddleName();
	}
	foreach(i; 0 .. 4) {
		f.personName();
	}
	foreach(i; 0 .. 4) {
		f.personPrefix();
	}
	foreach(i; 0 .. 4) {
		f.personSex();
	}
	foreach(i; 0 .. 4) {
		f.personSuffix();
	}
	foreach(i; 0 .. 4) {
		f.personTitleDescriptor();
	}
	foreach(i; 0 .. 4) {
		f.personTitleJob();
	}
	foreach(i; 0 .. 4) {
		f.personTitleLevel();
	}
	foreach(i; 0 .. 4) {
		f.personWesternZodiacSign();
	}
	foreach(i; 0 .. 4) {
		f.phoneNumber();
	}
	foreach(i; 0 .. 4) {
		f.phoneNumberFormats();
	}
	foreach(i; 0 .. 4) {
		f.scienceChemicalElement();
	}
	foreach(i; 0 .. 4) {
		f.scienceUnit();
	}
	foreach(i; 0 .. 4) {
		f.systemDirectoryPaths();
	}
	foreach(i; 0 .. 4) {
		f.teamCreature();
	}
	foreach(i; 0 .. 4) {
		f.teamName();
	}
	foreach(i; 0 .. 4) {
		f.vehicleBicycleType();
	}
	foreach(i; 0 .. 4) {
		f.vehicleFuel();
	}
	foreach(i; 0 .. 4) {
		f.vehicleManufacturer();
	}
	foreach(i; 0 .. 4) {
		f.vehicleModel();
	}
	foreach(i; 0 .. 4) {
		f.vehicleType();
	}
	foreach(i; 0 .. 4) {
		f.wordAdjective();
	}
	foreach(i; 0 .. 4) {
		f.wordAdverb();
	}
	foreach(i; 0 .. 4) {
		f.wordConjunction();
	}
	foreach(i; 0 .. 4) {
		f.wordInterjection();
	}
	foreach(i; 0 .. 4) {
		f.wordNoun();
	}
	foreach(i; 0 .. 4) {
		f.wordPreposition();
	}
	foreach(i; 0 .. 4) {
		f.wordVerb();
	}
}

unittest {
	auto f = new Faker_en_in(13);

	foreach(i; 0 .. 4) {
		f.airlineAirline();
	}
	foreach(i; 0 .. 4) {
		f.airlineAirplane();
	}
	foreach(i; 0 .. 4) {
		f.airlineAirport();
	}
	foreach(i; 0 .. 4) {
		f.animalBear();
	}
	foreach(i; 0 .. 4) {
		f.animalBird();
	}
	foreach(i; 0 .. 4) {
		f.animalCat();
	}
	foreach(i; 0 .. 4) {
		f.animalCetacean();
	}
	foreach(i; 0 .. 4) {
		f.animalCow();
	}
	foreach(i; 0 .. 4) {
		f.animalCrocodilia();
	}
	foreach(i; 0 .. 4) {
		f.animalDog();
	}
	foreach(i; 0 .. 4) {
		f.animalFish();
	}
	foreach(i; 0 .. 4) {
		f.animalHorse();
	}
	foreach(i; 0 .. 4) {
		f.animalInsect();
	}
	foreach(i; 0 .. 4) {
		f.animalLion();
	}
	foreach(i; 0 .. 4) {
		f.animalRabbit();
	}
	foreach(i; 0 .. 4) {
		f.animalRodent();
	}
	foreach(i; 0 .. 4) {
		f.animalSnake();
	}
	foreach(i; 0 .. 4) {
		f.appAuthor();
	}
	foreach(i; 0 .. 4) {
		f.appName();
	}
	foreach(i; 0 .. 4) {
		f.appVersion();
	}
	foreach(i; 0 .. 4) {
		f.cellPhoneFormats();
	}
	foreach(i; 0 .. 4) {
		f.commerceDepartment();
	}
	foreach(i; 0 .. 4) {
		f.commerceProductDescription();
	}
	foreach(i; 0 .. 4) {
		f.commerceProductNameAdjective();
	}
	foreach(i; 0 .. 4) {
		f.commerceProductNameMaterial();
	}
	foreach(i; 0 .. 4) {
		f.commerceProductNameProduct();
	}
	foreach(i; 0 .. 4) {
		f.companyAdjective();
	}
	foreach(i; 0 .. 4) {
		f.companyBuzzAdjective();
	}
	foreach(i; 0 .. 4) {
		f.companyBuzzNoun();
	}
	foreach(i; 0 .. 4) {
		f.companyBuzzVerb();
	}
	foreach(i; 0 .. 4) {
		f.companyCatchPhrase();
	}
	foreach(i; 0 .. 4) {
		f.companyDescriptor();
	}
	foreach(i; 0 .. 4) {
		f.companyName();
	}
	foreach(i; 0 .. 4) {
		f.companyNamePattern();
	}
	foreach(i; 0 .. 4) {
		f.companyNoun();
	}
	foreach(i; 0 .. 4) {
		f.companySuffix();
	}
	foreach(i; 0 .. 4) {
		f.databaseCollation();
	}
	foreach(i; 0 .. 4) {
		f.databaseColumn();
	}
	foreach(i; 0 .. 4) {
		f.databaseEngine();
	}
	foreach(i; 0 .. 4) {
		f.databaseType();
	}
	foreach(i; 0 .. 4) {
		f.dateMonthAbbr();
	}
	foreach(i; 0 .. 4) {
		f.dateMonthWide();
	}
	foreach(i; 0 .. 4) {
		f.dateWeekdayAbbr();
	}
	foreach(i; 0 .. 4) {
		f.dateWeekdayWide();
	}
	foreach(i; 0 .. 4) {
		f.financeAccountType();
	}
	foreach(i; 0 .. 4) {
		f.financeCreditCardAmericanExpress();
	}
	foreach(i; 0 .. 4) {
		f.financeCreditCardDinersClub();
	}
	foreach(i; 0 .. 4) {
		f.financeCreditCardDiscover();
	}
	foreach(i; 0 .. 4) {
		f.financeCreditCardJcb();
	}
	foreach(i; 0 .. 4) {
		f.financeCreditCardMaestro();
	}
	foreach(i; 0 .. 4) {
		f.financeCreditCardMastercard();
	}
	foreach(i; 0 .. 4) {
		f.financeCreditCardVisa();
	}
	foreach(i; 0 .. 4) {
		f.financeCurrency();
	}
	foreach(i; 0 .. 4) {
		f.financeTransactionType();
	}
	foreach(i; 0 .. 4) {
		f.hackerAbbreviation();
	}
	foreach(i; 0 .. 4) {
		f.hackerAdjective();
	}
	foreach(i; 0 .. 4) {
		f.hackerIngverb();
	}
	foreach(i; 0 .. 4) {
		f.hackerNoun();
	}
	foreach(i; 0 .. 4) {
		f.hackerPhrase();
	}
	foreach(i; 0 .. 4) {
		f.hackerVerb();
	}
	foreach(i; 0 .. 4) {
		f.internetDomainSuffix();
	}
	foreach(i; 0 .. 4) {
		f.internetEmoji();
	}
	foreach(i; 0 .. 4) {
		f.internetEmojiActivity();
	}
	foreach(i; 0 .. 4) {
		f.internetEmojiBody();
	}
	foreach(i; 0 .. 4) {
		f.internetEmojiFlag();
	}
	foreach(i; 0 .. 4) {
		f.internetEmojiFood();
	}
	foreach(i; 0 .. 4) {
		f.internetEmojiNature();
	}
	foreach(i; 0 .. 4) {
		f.internetEmojiObject();
	}
	foreach(i; 0 .. 4) {
		f.internetEmojiPerson();
	}
	foreach(i; 0 .. 4) {
		f.internetEmojiSmiley();
	}
	foreach(i; 0 .. 4) {
		f.internetEmojiSymbol();
	}
	foreach(i; 0 .. 4) {
		f.internetEmojiTravel();
	}
	foreach(i; 0 .. 4) {
		f.internetExampleEmail();
	}
	foreach(i; 0 .. 4) {
		f.internetFreeEmail();
	}
	foreach(i; 0 .. 4) {
		f.locationBuildingNumber();
	}
	foreach(i; 0 .. 4) {
		f.locationCity();
	}
	foreach(i; 0 .. 4) {
		f.locationCityName();
	}
	foreach(i; 0 .. 4) {
		f.locationCityPattern();
	}
	foreach(i; 0 .. 4) {
		f.locationCityPrefix();
	}
	foreach(i; 0 .. 4) {
		f.locationCitySuffix();
	}
	foreach(i; 0 .. 4) {
		f.locationCountry();
	}
	foreach(i; 0 .. 4) {
		f.locationCounty();
	}
	foreach(i; 0 .. 4) {
		f.locationDefaultCountry();
	}
	foreach(i; 0 .. 4) {
		f.locationDirection();
	}
	foreach(i; 0 .. 4) {
		f.locationDirectionAbbr();
	}
	foreach(i; 0 .. 4) {
		f.locationPostcode();
	}
	foreach(i; 0 .. 4) {
		f.locationSecondaryAddress();
	}
	foreach(i; 0 .. 4) {
		f.locationState();
	}
	foreach(i; 0 .. 4) {
		f.locationStateAbbr();
	}
	foreach(i; 0 .. 4) {
		f.locationStreetAddress();
	}
	foreach(i; 0 .. 4) {
		f.locationStreetName();
	}
	foreach(i; 0 .. 4) {
		f.locationStreetPattern();
	}
	foreach(i; 0 .. 4) {
		f.locationStreetSuffix();
	}
	foreach(i; 0 .. 4) {
		f.locationTimeZone();
	}
	foreach(i; 0 .. 4) {
		f.loremParagraph();
	}
	foreach(i; 0 .. 4) {
		f.loremParagraphs();
	}
	foreach(i; 0 .. 4) {
		f.loremSentance();
	}
	foreach(i; 0 .. 4) {
		f.loremSentances();
	}
	foreach(i; 0 .. 4) {
		f.loremText();
	}
	foreach(i; 0 .. 4) {
		f.loremWords();
	}
	foreach(i; 0 .. 4) {
		f.musicGenre();
	}
	foreach(i; 0 .. 4) {
		f.musicSongName();
	}
	foreach(i; 0 .. 4) {
		f.personBioPart();
	}
	foreach(i; 0 .. 4) {
		f.personBioPattern();
	}
	foreach(i; 0 .. 4) {
		f.personBioSupporter();
	}
	foreach(i; 0 .. 4) {
		f.personFemaleFirstName();
	}
	foreach(i; 0 .. 4) {
		f.personFemaleMiddleName();
	}
	foreach(i; 0 .. 4) {
		f.personFemalePrefix();
	}
	foreach(i; 0 .. 4) {
		f.personFirstName();
	}
	foreach(i; 0 .. 4) {
		f.personGender();
	}
	foreach(i; 0 .. 4) {
		f.personJobArea();
	}
	foreach(i; 0 .. 4) {
		f.personJobDescriptor();
	}
	foreach(i; 0 .. 4) {
		f.personJobTitlePattern();
	}
	foreach(i; 0 .. 4) {
		f.personJobType();
	}
	foreach(i; 0 .. 4) {
		f.personLastName();
	}
	foreach(i; 0 .. 4) {
		f.personLastNamePattern();
	}
	foreach(i; 0 .. 4) {
		f.personMaleFirstName();
	}
	foreach(i; 0 .. 4) {
		f.personMaleMiddleName();
	}
	foreach(i; 0 .. 4) {
		f.personMalePrefix();
	}
	foreach(i; 0 .. 4) {
		f.personMiddleName();
	}
	foreach(i; 0 .. 4) {
		f.personName();
	}
	foreach(i; 0 .. 4) {
		f.personPrefix();
	}
	foreach(i; 0 .. 4) {
		f.personSex();
	}
	foreach(i; 0 .. 4) {
		f.personSuffix();
	}
	foreach(i; 0 .. 4) {
		f.personTitleDescriptor();
	}
	foreach(i; 0 .. 4) {
		f.personTitleJob();
	}
	foreach(i; 0 .. 4) {
		f.personTitleLevel();
	}
	foreach(i; 0 .. 4) {
		f.personWesternZodiacSign();
	}
	foreach(i; 0 .. 4) {
		f.phoneNumber();
	}
	foreach(i; 0 .. 4) {
		f.phoneNumberFormats();
	}
	foreach(i; 0 .. 4) {
		f.scienceChemicalElement();
	}
	foreach(i; 0 .. 4) {
		f.scienceUnit();
	}
	foreach(i; 0 .. 4) {
		f.systemDirectoryPaths();
	}
	foreach(i; 0 .. 4) {
		f.teamCreature();
	}
	foreach(i; 0 .. 4) {
		f.teamName();
	}
	foreach(i; 0 .. 4) {
		f.vehicleBicycleType();
	}
	foreach(i; 0 .. 4) {
		f.vehicleFuel();
	}
	foreach(i; 0 .. 4) {
		f.vehicleManufacturer();
	}
	foreach(i; 0 .. 4) {
		f.vehicleModel();
	}
	foreach(i; 0 .. 4) {
		f.vehicleType();
	}
	foreach(i; 0 .. 4) {
		f.wordAdjective();
	}
	foreach(i; 0 .. 4) {
		f.wordAdverb();
	}
	foreach(i; 0 .. 4) {
		f.wordConjunction();
	}
	foreach(i; 0 .. 4) {
		f.wordInterjection();
	}
	foreach(i; 0 .. 4) {
		f.wordNoun();
	}
	foreach(i; 0 .. 4) {
		f.wordPreposition();
	}
	foreach(i; 0 .. 4) {
		f.wordVerb();
	}
}

unittest {
	auto f = new Faker_en_ng(13);

	foreach(i; 0 .. 4) {
		f.airlineAirline();
	}
	foreach(i; 0 .. 4) {
		f.airlineAirplane();
	}
	foreach(i; 0 .. 4) {
		f.airlineAirport();
	}
	foreach(i; 0 .. 4) {
		f.animalBear();
	}
	foreach(i; 0 .. 4) {
		f.animalBird();
	}
	foreach(i; 0 .. 4) {
		f.animalCat();
	}
	foreach(i; 0 .. 4) {
		f.animalCetacean();
	}
	foreach(i; 0 .. 4) {
		f.animalCow();
	}
	foreach(i; 0 .. 4) {
		f.animalCrocodilia();
	}
	foreach(i; 0 .. 4) {
		f.animalDog();
	}
	foreach(i; 0 .. 4) {
		f.animalFish();
	}
	foreach(i; 0 .. 4) {
		f.animalHorse();
	}
	foreach(i; 0 .. 4) {
		f.animalInsect();
	}
	foreach(i; 0 .. 4) {
		f.animalLion();
	}
	foreach(i; 0 .. 4) {
		f.animalRabbit();
	}
	foreach(i; 0 .. 4) {
		f.animalRodent();
	}
	foreach(i; 0 .. 4) {
		f.animalSnake();
	}
	foreach(i; 0 .. 4) {
		f.appAuthor();
	}
	foreach(i; 0 .. 4) {
		f.appName();
	}
	foreach(i; 0 .. 4) {
		f.appVersion();
	}
	foreach(i; 0 .. 4) {
		f.cellPhoneFormats();
	}
	foreach(i; 0 .. 4) {
		f.commerceDepartment();
	}
	foreach(i; 0 .. 4) {
		f.commerceProductDescription();
	}
	foreach(i; 0 .. 4) {
		f.commerceProductNameAdjective();
	}
	foreach(i; 0 .. 4) {
		f.commerceProductNameMaterial();
	}
	foreach(i; 0 .. 4) {
		f.commerceProductNameProduct();
	}
	foreach(i; 0 .. 4) {
		f.companyAdjective();
	}
	foreach(i; 0 .. 4) {
		f.companyBuzzAdjective();
	}
	foreach(i; 0 .. 4) {
		f.companyBuzzNoun();
	}
	foreach(i; 0 .. 4) {
		f.companyBuzzVerb();
	}
	foreach(i; 0 .. 4) {
		f.companyCatchPhrase();
	}
	foreach(i; 0 .. 4) {
		f.companyDescriptor();
	}
	foreach(i; 0 .. 4) {
		f.companyName();
	}
	foreach(i; 0 .. 4) {
		f.companyNamePattern();
	}
	foreach(i; 0 .. 4) {
		f.companyNoun();
	}
	foreach(i; 0 .. 4) {
		f.companySuffix();
	}
	foreach(i; 0 .. 4) {
		f.databaseCollation();
	}
	foreach(i; 0 .. 4) {
		f.databaseColumn();
	}
	foreach(i; 0 .. 4) {
		f.databaseEngine();
	}
	foreach(i; 0 .. 4) {
		f.databaseType();
	}
	foreach(i; 0 .. 4) {
		f.dateMonthAbbr();
	}
	foreach(i; 0 .. 4) {
		f.dateMonthWide();
	}
	foreach(i; 0 .. 4) {
		f.dateWeekdayAbbr();
	}
	foreach(i; 0 .. 4) {
		f.dateWeekdayWide();
	}
	foreach(i; 0 .. 4) {
		f.financeAccountType();
	}
	foreach(i; 0 .. 4) {
		f.financeCreditCardAmericanExpress();
	}
	foreach(i; 0 .. 4) {
		f.financeCreditCardDinersClub();
	}
	foreach(i; 0 .. 4) {
		f.financeCreditCardDiscover();
	}
	foreach(i; 0 .. 4) {
		f.financeCreditCardJcb();
	}
	foreach(i; 0 .. 4) {
		f.financeCreditCardMaestro();
	}
	foreach(i; 0 .. 4) {
		f.financeCreditCardMastercard();
	}
	foreach(i; 0 .. 4) {
		f.financeCreditCardVisa();
	}
	foreach(i; 0 .. 4) {
		f.financeCurrency();
	}
	foreach(i; 0 .. 4) {
		f.financeTransactionType();
	}
	foreach(i; 0 .. 4) {
		f.hackerAbbreviation();
	}
	foreach(i; 0 .. 4) {
		f.hackerAdjective();
	}
	foreach(i; 0 .. 4) {
		f.hackerIngverb();
	}
	foreach(i; 0 .. 4) {
		f.hackerNoun();
	}
	foreach(i; 0 .. 4) {
		f.hackerPhrase();
	}
	foreach(i; 0 .. 4) {
		f.hackerVerb();
	}
	foreach(i; 0 .. 4) {
		f.internetDomainSuffix();
	}
	foreach(i; 0 .. 4) {
		f.internetEmoji();
	}
	foreach(i; 0 .. 4) {
		f.internetEmojiActivity();
	}
	foreach(i; 0 .. 4) {
		f.internetEmojiBody();
	}
	foreach(i; 0 .. 4) {
		f.internetEmojiFlag();
	}
	foreach(i; 0 .. 4) {
		f.internetEmojiFood();
	}
	foreach(i; 0 .. 4) {
		f.internetEmojiNature();
	}
	foreach(i; 0 .. 4) {
		f.internetEmojiObject();
	}
	foreach(i; 0 .. 4) {
		f.internetEmojiPerson();
	}
	foreach(i; 0 .. 4) {
		f.internetEmojiSmiley();
	}
	foreach(i; 0 .. 4) {
		f.internetEmojiSymbol();
	}
	foreach(i; 0 .. 4) {
		f.internetEmojiTravel();
	}
	foreach(i; 0 .. 4) {
		f.internetExampleEmail();
	}
	foreach(i; 0 .. 4) {
		f.internetFreeEmail();
	}
	foreach(i; 0 .. 4) {
		f.locationBuildingNumber();
	}
	foreach(i; 0 .. 4) {
		f.locationCity();
	}
	foreach(i; 0 .. 4) {
		f.locationCityName();
	}
	foreach(i; 0 .. 4) {
		f.locationCityPattern();
	}
	foreach(i; 0 .. 4) {
		f.locationCityPrefix();
	}
	foreach(i; 0 .. 4) {
		f.locationCitySuffix();
	}
	foreach(i; 0 .. 4) {
		f.locationCountry();
	}
	foreach(i; 0 .. 4) {
		f.locationCounty();
	}
	foreach(i; 0 .. 4) {
		f.locationDefaultCountry();
	}
	foreach(i; 0 .. 4) {
		f.locationDirection();
	}
	foreach(i; 0 .. 4) {
		f.locationDirectionAbbr();
	}
	foreach(i; 0 .. 4) {
		f.locationPostcode();
	}
	foreach(i; 0 .. 4) {
		f.locationSecondaryAddress();
	}
	foreach(i; 0 .. 4) {
		f.locationState();
	}
	foreach(i; 0 .. 4) {
		f.locationStateAbbr();
	}
	foreach(i; 0 .. 4) {
		f.locationStreetAddress();
	}
	foreach(i; 0 .. 4) {
		f.locationStreetName();
	}
	foreach(i; 0 .. 4) {
		f.locationStreetPattern();
	}
	foreach(i; 0 .. 4) {
		f.locationStreetSuffix();
	}
	foreach(i; 0 .. 4) {
		f.locationTimeZone();
	}
	foreach(i; 0 .. 4) {
		f.loremParagraph();
	}
	foreach(i; 0 .. 4) {
		f.loremParagraphs();
	}
	foreach(i; 0 .. 4) {
		f.loremSentance();
	}
	foreach(i; 0 .. 4) {
		f.loremSentances();
	}
	foreach(i; 0 .. 4) {
		f.loremText();
	}
	foreach(i; 0 .. 4) {
		f.loremWords();
	}
	foreach(i; 0 .. 4) {
		f.musicGenre();
	}
	foreach(i; 0 .. 4) {
		f.musicSongName();
	}
	foreach(i; 0 .. 4) {
		f.personBioPart();
	}
	foreach(i; 0 .. 4) {
		f.personBioPattern();
	}
	foreach(i; 0 .. 4) {
		f.personBioSupporter();
	}
	foreach(i; 0 .. 4) {
		f.personFemaleFirstName();
	}
	foreach(i; 0 .. 4) {
		f.personFemaleMiddleName();
	}
	foreach(i; 0 .. 4) {
		f.personFemalePrefix();
	}
	foreach(i; 0 .. 4) {
		f.personFirstName();
	}
	foreach(i; 0 .. 4) {
		f.personGender();
	}
	foreach(i; 0 .. 4) {
		f.personJobArea();
	}
	foreach(i; 0 .. 4) {
		f.personJobDescriptor();
	}
	foreach(i; 0 .. 4) {
		f.personJobTitlePattern();
	}
	foreach(i; 0 .. 4) {
		f.personJobType();
	}
	foreach(i; 0 .. 4) {
		f.personLastName();
	}
	foreach(i; 0 .. 4) {
		f.personLastNamePattern();
	}
	foreach(i; 0 .. 4) {
		f.personMaleFirstName();
	}
	foreach(i; 0 .. 4) {
		f.personMaleMiddleName();
	}
	foreach(i; 0 .. 4) {
		f.personMalePrefix();
	}
	foreach(i; 0 .. 4) {
		f.personMiddleName();
	}
	foreach(i; 0 .. 4) {
		f.personName();
	}
	foreach(i; 0 .. 4) {
		f.personPrefix();
	}
	foreach(i; 0 .. 4) {
		f.personSex();
	}
	foreach(i; 0 .. 4) {
		f.personSuffix();
	}
	foreach(i; 0 .. 4) {
		f.personTitleDescriptor();
	}
	foreach(i; 0 .. 4) {
		f.personTitleJob();
	}
	foreach(i; 0 .. 4) {
		f.personTitleLevel();
	}
	foreach(i; 0 .. 4) {
		f.personWesternZodiacSign();
	}
	foreach(i; 0 .. 4) {
		f.phoneNumber();
	}
	foreach(i; 0 .. 4) {
		f.phoneNumberFormats();
	}
	foreach(i; 0 .. 4) {
		f.scienceChemicalElement();
	}
	foreach(i; 0 .. 4) {
		f.scienceUnit();
	}
	foreach(i; 0 .. 4) {
		f.systemDirectoryPaths();
	}
	foreach(i; 0 .. 4) {
		f.teamCreature();
	}
	foreach(i; 0 .. 4) {
		f.teamName();
	}
	foreach(i; 0 .. 4) {
		f.vehicleBicycleType();
	}
	foreach(i; 0 .. 4) {
		f.vehicleFuel();
	}
	foreach(i; 0 .. 4) {
		f.vehicleManufacturer();
	}
	foreach(i; 0 .. 4) {
		f.vehicleModel();
	}
	foreach(i; 0 .. 4) {
		f.vehicleType();
	}
	foreach(i; 0 .. 4) {
		f.wordAdjective();
	}
	foreach(i; 0 .. 4) {
		f.wordAdverb();
	}
	foreach(i; 0 .. 4) {
		f.wordConjunction();
	}
	foreach(i; 0 .. 4) {
		f.wordInterjection();
	}
	foreach(i; 0 .. 4) {
		f.wordNoun();
	}
	foreach(i; 0 .. 4) {
		f.wordPreposition();
	}
	foreach(i; 0 .. 4) {
		f.wordVerb();
	}
}

unittest {
	auto f = new Faker_en_us(13);

	foreach(i; 0 .. 4) {
		f.airlineAirline();
	}
	foreach(i; 0 .. 4) {
		f.airlineAirplane();
	}
	foreach(i; 0 .. 4) {
		f.airlineAirport();
	}
	foreach(i; 0 .. 4) {
		f.animalBear();
	}
	foreach(i; 0 .. 4) {
		f.animalBird();
	}
	foreach(i; 0 .. 4) {
		f.animalCat();
	}
	foreach(i; 0 .. 4) {
		f.animalCetacean();
	}
	foreach(i; 0 .. 4) {
		f.animalCow();
	}
	foreach(i; 0 .. 4) {
		f.animalCrocodilia();
	}
	foreach(i; 0 .. 4) {
		f.animalDog();
	}
	foreach(i; 0 .. 4) {
		f.animalFish();
	}
	foreach(i; 0 .. 4) {
		f.animalHorse();
	}
	foreach(i; 0 .. 4) {
		f.animalInsect();
	}
	foreach(i; 0 .. 4) {
		f.animalLion();
	}
	foreach(i; 0 .. 4) {
		f.animalRabbit();
	}
	foreach(i; 0 .. 4) {
		f.animalRodent();
	}
	foreach(i; 0 .. 4) {
		f.animalSnake();
	}
	foreach(i; 0 .. 4) {
		f.appAuthor();
	}
	foreach(i; 0 .. 4) {
		f.appName();
	}
	foreach(i; 0 .. 4) {
		f.appVersion();
	}
	foreach(i; 0 .. 4) {
		f.cellPhoneFormats();
	}
	foreach(i; 0 .. 4) {
		f.commerceDepartment();
	}
	foreach(i; 0 .. 4) {
		f.commerceProductDescription();
	}
	foreach(i; 0 .. 4) {
		f.commerceProductNameAdjective();
	}
	foreach(i; 0 .. 4) {
		f.commerceProductNameMaterial();
	}
	foreach(i; 0 .. 4) {
		f.commerceProductNameProduct();
	}
	foreach(i; 0 .. 4) {
		f.companyAdjective();
	}
	foreach(i; 0 .. 4) {
		f.companyBuzzAdjective();
	}
	foreach(i; 0 .. 4) {
		f.companyBuzzNoun();
	}
	foreach(i; 0 .. 4) {
		f.companyBuzzVerb();
	}
	foreach(i; 0 .. 4) {
		f.companyCatchPhrase();
	}
	foreach(i; 0 .. 4) {
		f.companyDescriptor();
	}
	foreach(i; 0 .. 4) {
		f.companyName();
	}
	foreach(i; 0 .. 4) {
		f.companyNamePattern();
	}
	foreach(i; 0 .. 4) {
		f.companyNoun();
	}
	foreach(i; 0 .. 4) {
		f.companySuffix();
	}
	foreach(i; 0 .. 4) {
		f.databaseCollation();
	}
	foreach(i; 0 .. 4) {
		f.databaseColumn();
	}
	foreach(i; 0 .. 4) {
		f.databaseEngine();
	}
	foreach(i; 0 .. 4) {
		f.databaseType();
	}
	foreach(i; 0 .. 4) {
		f.dateMonthAbbr();
	}
	foreach(i; 0 .. 4) {
		f.dateMonthWide();
	}
	foreach(i; 0 .. 4) {
		f.dateWeekdayAbbr();
	}
	foreach(i; 0 .. 4) {
		f.dateWeekdayWide();
	}
	foreach(i; 0 .. 4) {
		f.financeAccountType();
	}
	foreach(i; 0 .. 4) {
		f.financeCreditCardAmericanExpress();
	}
	foreach(i; 0 .. 4) {
		f.financeCreditCardDinersClub();
	}
	foreach(i; 0 .. 4) {
		f.financeCreditCardDiscover();
	}
	foreach(i; 0 .. 4) {
		f.financeCreditCardJcb();
	}
	foreach(i; 0 .. 4) {
		f.financeCreditCardMaestro();
	}
	foreach(i; 0 .. 4) {
		f.financeCreditCardMastercard();
	}
	foreach(i; 0 .. 4) {
		f.financeCreditCardVisa();
	}
	foreach(i; 0 .. 4) {
		f.financeCurrency();
	}
	foreach(i; 0 .. 4) {
		f.financeTransactionType();
	}
	foreach(i; 0 .. 4) {
		f.hackerAbbreviation();
	}
	foreach(i; 0 .. 4) {
		f.hackerAdjective();
	}
	foreach(i; 0 .. 4) {
		f.hackerIngverb();
	}
	foreach(i; 0 .. 4) {
		f.hackerNoun();
	}
	foreach(i; 0 .. 4) {
		f.hackerPhrase();
	}
	foreach(i; 0 .. 4) {
		f.hackerVerb();
	}
	foreach(i; 0 .. 4) {
		f.internetDomainSuffix();
	}
	foreach(i; 0 .. 4) {
		f.internetEmoji();
	}
	foreach(i; 0 .. 4) {
		f.internetEmojiActivity();
	}
	foreach(i; 0 .. 4) {
		f.internetEmojiBody();
	}
	foreach(i; 0 .. 4) {
		f.internetEmojiFlag();
	}
	foreach(i; 0 .. 4) {
		f.internetEmojiFood();
	}
	foreach(i; 0 .. 4) {
		f.internetEmojiNature();
	}
	foreach(i; 0 .. 4) {
		f.internetEmojiObject();
	}
	foreach(i; 0 .. 4) {
		f.internetEmojiPerson();
	}
	foreach(i; 0 .. 4) {
		f.internetEmojiSmiley();
	}
	foreach(i; 0 .. 4) {
		f.internetEmojiSymbol();
	}
	foreach(i; 0 .. 4) {
		f.internetEmojiTravel();
	}
	foreach(i; 0 .. 4) {
		f.internetExampleEmail();
	}
	foreach(i; 0 .. 4) {
		f.internetFreeEmail();
	}
	foreach(i; 0 .. 4) {
		f.locationBuildingNumber();
	}
	foreach(i; 0 .. 4) {
		f.locationCity();
	}
	foreach(i; 0 .. 4) {
		f.locationCityName();
	}
	foreach(i; 0 .. 4) {
		f.locationCityPattern();
	}
	foreach(i; 0 .. 4) {
		f.locationCityPrefix();
	}
	foreach(i; 0 .. 4) {
		f.locationCitySuffix();
	}
	foreach(i; 0 .. 4) {
		f.locationCountry();
	}
	foreach(i; 0 .. 4) {
		f.locationCounty();
	}
	foreach(i; 0 .. 4) {
		f.locationDefaultCountry();
	}
	foreach(i; 0 .. 4) {
		f.locationDirection();
	}
	foreach(i; 0 .. 4) {
		f.locationDirectionAbbr();
	}
	foreach(i; 0 .. 4) {
		f.locationPostcode();
	}
	foreach(i; 0 .. 4) {
		f.locationSecondaryAddress();
	}
	foreach(i; 0 .. 4) {
		f.locationState();
	}
	foreach(i; 0 .. 4) {
		f.locationStateAbbr();
	}
	foreach(i; 0 .. 4) {
		f.locationStreetAddress();
	}
	foreach(i; 0 .. 4) {
		f.locationStreetName();
	}
	foreach(i; 0 .. 4) {
		f.locationStreetPattern();
	}
	foreach(i; 0 .. 4) {
		f.locationStreetSuffix();
	}
	foreach(i; 0 .. 4) {
		f.locationTimeZone();
	}
	foreach(i; 0 .. 4) {
		f.loremParagraph();
	}
	foreach(i; 0 .. 4) {
		f.loremParagraphs();
	}
	foreach(i; 0 .. 4) {
		f.loremSentance();
	}
	foreach(i; 0 .. 4) {
		f.loremSentances();
	}
	foreach(i; 0 .. 4) {
		f.loremText();
	}
	foreach(i; 0 .. 4) {
		f.loremWords();
	}
	foreach(i; 0 .. 4) {
		f.musicGenre();
	}
	foreach(i; 0 .. 4) {
		f.musicSongName();
	}
	foreach(i; 0 .. 4) {
		f.personBioPart();
	}
	foreach(i; 0 .. 4) {
		f.personBioPattern();
	}
	foreach(i; 0 .. 4) {
		f.personBioSupporter();
	}
	foreach(i; 0 .. 4) {
		f.personFemaleFirstName();
	}
	foreach(i; 0 .. 4) {
		f.personFemaleMiddleName();
	}
	foreach(i; 0 .. 4) {
		f.personFemalePrefix();
	}
	foreach(i; 0 .. 4) {
		f.personFirstName();
	}
	foreach(i; 0 .. 4) {
		f.personGender();
	}
	foreach(i; 0 .. 4) {
		f.personJobArea();
	}
	foreach(i; 0 .. 4) {
		f.personJobDescriptor();
	}
	foreach(i; 0 .. 4) {
		f.personJobTitlePattern();
	}
	foreach(i; 0 .. 4) {
		f.personJobType();
	}
	foreach(i; 0 .. 4) {
		f.personLastName();
	}
	foreach(i; 0 .. 4) {
		f.personLastNamePattern();
	}
	foreach(i; 0 .. 4) {
		f.personMaleFirstName();
	}
	foreach(i; 0 .. 4) {
		f.personMaleMiddleName();
	}
	foreach(i; 0 .. 4) {
		f.personMalePrefix();
	}
	foreach(i; 0 .. 4) {
		f.personMiddleName();
	}
	foreach(i; 0 .. 4) {
		f.personName();
	}
	foreach(i; 0 .. 4) {
		f.personPrefix();
	}
	foreach(i; 0 .. 4) {
		f.personSex();
	}
	foreach(i; 0 .. 4) {
		f.personSuffix();
	}
	foreach(i; 0 .. 4) {
		f.personTitleDescriptor();
	}
	foreach(i; 0 .. 4) {
		f.personTitleJob();
	}
	foreach(i; 0 .. 4) {
		f.personTitleLevel();
	}
	foreach(i; 0 .. 4) {
		f.personWesternZodiacSign();
	}
	foreach(i; 0 .. 4) {
		f.phoneNumber();
	}
	foreach(i; 0 .. 4) {
		f.phoneNumberFormats();
	}
	foreach(i; 0 .. 4) {
		f.scienceChemicalElement();
	}
	foreach(i; 0 .. 4) {
		f.scienceUnit();
	}
	foreach(i; 0 .. 4) {
		f.systemDirectoryPaths();
	}
	foreach(i; 0 .. 4) {
		f.teamCreature();
	}
	foreach(i; 0 .. 4) {
		f.teamName();
	}
	foreach(i; 0 .. 4) {
		f.vehicleBicycleType();
	}
	foreach(i; 0 .. 4) {
		f.vehicleFuel();
	}
	foreach(i; 0 .. 4) {
		f.vehicleManufacturer();
	}
	foreach(i; 0 .. 4) {
		f.vehicleModel();
	}
	foreach(i; 0 .. 4) {
		f.vehicleType();
	}
	foreach(i; 0 .. 4) {
		f.wordAdjective();
	}
	foreach(i; 0 .. 4) {
		f.wordAdverb();
	}
	foreach(i; 0 .. 4) {
		f.wordConjunction();
	}
	foreach(i; 0 .. 4) {
		f.wordInterjection();
	}
	foreach(i; 0 .. 4) {
		f.wordNoun();
	}
	foreach(i; 0 .. 4) {
		f.wordPreposition();
	}
	foreach(i; 0 .. 4) {
		f.wordVerb();
	}
}

unittest {
	auto f = new Faker_en_za(13);

	foreach(i; 0 .. 4) {
		f.airlineAirline();
	}
	foreach(i; 0 .. 4) {
		f.airlineAirplane();
	}
	foreach(i; 0 .. 4) {
		f.airlineAirport();
	}
	foreach(i; 0 .. 4) {
		f.animalBear();
	}
	foreach(i; 0 .. 4) {
		f.animalBird();
	}
	foreach(i; 0 .. 4) {
		f.animalCat();
	}
	foreach(i; 0 .. 4) {
		f.animalCetacean();
	}
	foreach(i; 0 .. 4) {
		f.animalCow();
	}
	foreach(i; 0 .. 4) {
		f.animalCrocodilia();
	}
	foreach(i; 0 .. 4) {
		f.animalDog();
	}
	foreach(i; 0 .. 4) {
		f.animalFish();
	}
	foreach(i; 0 .. 4) {
		f.animalHorse();
	}
	foreach(i; 0 .. 4) {
		f.animalInsect();
	}
	foreach(i; 0 .. 4) {
		f.animalLion();
	}
	foreach(i; 0 .. 4) {
		f.animalRabbit();
	}
	foreach(i; 0 .. 4) {
		f.animalRodent();
	}
	foreach(i; 0 .. 4) {
		f.animalSnake();
	}
	foreach(i; 0 .. 4) {
		f.appAuthor();
	}
	foreach(i; 0 .. 4) {
		f.appName();
	}
	foreach(i; 0 .. 4) {
		f.appVersion();
	}
	foreach(i; 0 .. 4) {
		f.cellPhoneFormats();
	}
	foreach(i; 0 .. 4) {
		f.commerceDepartment();
	}
	foreach(i; 0 .. 4) {
		f.commerceProductDescription();
	}
	foreach(i; 0 .. 4) {
		f.commerceProductNameAdjective();
	}
	foreach(i; 0 .. 4) {
		f.commerceProductNameMaterial();
	}
	foreach(i; 0 .. 4) {
		f.commerceProductNameProduct();
	}
	foreach(i; 0 .. 4) {
		f.companyAdjective();
	}
	foreach(i; 0 .. 4) {
		f.companyBuzzAdjective();
	}
	foreach(i; 0 .. 4) {
		f.companyBuzzNoun();
	}
	foreach(i; 0 .. 4) {
		f.companyBuzzVerb();
	}
	foreach(i; 0 .. 4) {
		f.companyCatchPhrase();
	}
	foreach(i; 0 .. 4) {
		f.companyDescriptor();
	}
	foreach(i; 0 .. 4) {
		f.companyName();
	}
	foreach(i; 0 .. 4) {
		f.companyNamePattern();
	}
	foreach(i; 0 .. 4) {
		f.companyNoun();
	}
	foreach(i; 0 .. 4) {
		f.companySuffix();
	}
	foreach(i; 0 .. 4) {
		f.databaseCollation();
	}
	foreach(i; 0 .. 4) {
		f.databaseColumn();
	}
	foreach(i; 0 .. 4) {
		f.databaseEngine();
	}
	foreach(i; 0 .. 4) {
		f.databaseType();
	}
	foreach(i; 0 .. 4) {
		f.dateMonthAbbr();
	}
	foreach(i; 0 .. 4) {
		f.dateMonthWide();
	}
	foreach(i; 0 .. 4) {
		f.dateWeekdayAbbr();
	}
	foreach(i; 0 .. 4) {
		f.dateWeekdayWide();
	}
	foreach(i; 0 .. 4) {
		f.financeAccountType();
	}
	foreach(i; 0 .. 4) {
		f.financeCreditCardAmericanExpress();
	}
	foreach(i; 0 .. 4) {
		f.financeCreditCardDinersClub();
	}
	foreach(i; 0 .. 4) {
		f.financeCreditCardDiscover();
	}
	foreach(i; 0 .. 4) {
		f.financeCreditCardJcb();
	}
	foreach(i; 0 .. 4) {
		f.financeCreditCardMaestro();
	}
	foreach(i; 0 .. 4) {
		f.financeCreditCardMastercard();
	}
	foreach(i; 0 .. 4) {
		f.financeCreditCardVisa();
	}
	foreach(i; 0 .. 4) {
		f.financeCurrency();
	}
	foreach(i; 0 .. 4) {
		f.financeTransactionType();
	}
	foreach(i; 0 .. 4) {
		f.hackerAbbreviation();
	}
	foreach(i; 0 .. 4) {
		f.hackerAdjective();
	}
	foreach(i; 0 .. 4) {
		f.hackerIngverb();
	}
	foreach(i; 0 .. 4) {
		f.hackerNoun();
	}
	foreach(i; 0 .. 4) {
		f.hackerPhrase();
	}
	foreach(i; 0 .. 4) {
		f.hackerVerb();
	}
	foreach(i; 0 .. 4) {
		f.internetDomainSuffix();
	}
	foreach(i; 0 .. 4) {
		f.internetEmoji();
	}
	foreach(i; 0 .. 4) {
		f.internetEmojiActivity();
	}
	foreach(i; 0 .. 4) {
		f.internetEmojiBody();
	}
	foreach(i; 0 .. 4) {
		f.internetEmojiFlag();
	}
	foreach(i; 0 .. 4) {
		f.internetEmojiFood();
	}
	foreach(i; 0 .. 4) {
		f.internetEmojiNature();
	}
	foreach(i; 0 .. 4) {
		f.internetEmojiObject();
	}
	foreach(i; 0 .. 4) {
		f.internetEmojiPerson();
	}
	foreach(i; 0 .. 4) {
		f.internetEmojiSmiley();
	}
	foreach(i; 0 .. 4) {
		f.internetEmojiSymbol();
	}
	foreach(i; 0 .. 4) {
		f.internetEmojiTravel();
	}
	foreach(i; 0 .. 4) {
		f.internetExampleEmail();
	}
	foreach(i; 0 .. 4) {
		f.internetFreeEmail();
	}
	foreach(i; 0 .. 4) {
		f.locationBuildingNumber();
	}
	foreach(i; 0 .. 4) {
		f.locationCity();
	}
	foreach(i; 0 .. 4) {
		f.locationCityName();
	}
	foreach(i; 0 .. 4) {
		f.locationCityPattern();
	}
	foreach(i; 0 .. 4) {
		f.locationCityPrefix();
	}
	foreach(i; 0 .. 4) {
		f.locationCitySuffix();
	}
	foreach(i; 0 .. 4) {
		f.locationCountry();
	}
	foreach(i; 0 .. 4) {
		f.locationCounty();
	}
	foreach(i; 0 .. 4) {
		f.locationDefaultCountry();
	}
	foreach(i; 0 .. 4) {
		f.locationDirection();
	}
	foreach(i; 0 .. 4) {
		f.locationDirectionAbbr();
	}
	foreach(i; 0 .. 4) {
		f.locationPostcode();
	}
	foreach(i; 0 .. 4) {
		f.locationSecondaryAddress();
	}
	foreach(i; 0 .. 4) {
		f.locationState();
	}
	foreach(i; 0 .. 4) {
		f.locationStateAbbr();
	}
	foreach(i; 0 .. 4) {
		f.locationStreetAddress();
	}
	foreach(i; 0 .. 4) {
		f.locationStreetName();
	}
	foreach(i; 0 .. 4) {
		f.locationStreetPattern();
	}
	foreach(i; 0 .. 4) {
		f.locationStreetSuffix();
	}
	foreach(i; 0 .. 4) {
		f.locationTimeZone();
	}
	foreach(i; 0 .. 4) {
		f.loremParagraph();
	}
	foreach(i; 0 .. 4) {
		f.loremParagraphs();
	}
	foreach(i; 0 .. 4) {
		f.loremSentance();
	}
	foreach(i; 0 .. 4) {
		f.loremSentances();
	}
	foreach(i; 0 .. 4) {
		f.loremText();
	}
	foreach(i; 0 .. 4) {
		f.loremWords();
	}
	foreach(i; 0 .. 4) {
		f.musicGenre();
	}
	foreach(i; 0 .. 4) {
		f.musicSongName();
	}
	foreach(i; 0 .. 4) {
		f.personBioPart();
	}
	foreach(i; 0 .. 4) {
		f.personBioPattern();
	}
	foreach(i; 0 .. 4) {
		f.personBioSupporter();
	}
	foreach(i; 0 .. 4) {
		f.personFemaleFirstName();
	}
	foreach(i; 0 .. 4) {
		f.personFemaleMiddleName();
	}
	foreach(i; 0 .. 4) {
		f.personFemalePrefix();
	}
	foreach(i; 0 .. 4) {
		f.personFirstName();
	}
	foreach(i; 0 .. 4) {
		f.personGender();
	}
	foreach(i; 0 .. 4) {
		f.personJobArea();
	}
	foreach(i; 0 .. 4) {
		f.personJobDescriptor();
	}
	foreach(i; 0 .. 4) {
		f.personJobTitlePattern();
	}
	foreach(i; 0 .. 4) {
		f.personJobType();
	}
	foreach(i; 0 .. 4) {
		f.personLastName();
	}
	foreach(i; 0 .. 4) {
		f.personLastNamePattern();
	}
	foreach(i; 0 .. 4) {
		f.personMaleFirstName();
	}
	foreach(i; 0 .. 4) {
		f.personMaleMiddleName();
	}
	foreach(i; 0 .. 4) {
		f.personMalePrefix();
	}
	foreach(i; 0 .. 4) {
		f.personMiddleName();
	}
	foreach(i; 0 .. 4) {
		f.personName();
	}
	foreach(i; 0 .. 4) {
		f.personPrefix();
	}
	foreach(i; 0 .. 4) {
		f.personSex();
	}
	foreach(i; 0 .. 4) {
		f.personSuffix();
	}
	foreach(i; 0 .. 4) {
		f.personTitleDescriptor();
	}
	foreach(i; 0 .. 4) {
		f.personTitleJob();
	}
	foreach(i; 0 .. 4) {
		f.personTitleLevel();
	}
	foreach(i; 0 .. 4) {
		f.personWesternZodiacSign();
	}
	foreach(i; 0 .. 4) {
		f.phoneNumber();
	}
	foreach(i; 0 .. 4) {
		f.phoneNumberFormats();
	}
	foreach(i; 0 .. 4) {
		f.scienceChemicalElement();
	}
	foreach(i; 0 .. 4) {
		f.scienceUnit();
	}
	foreach(i; 0 .. 4) {
		f.systemDirectoryPaths();
	}
	foreach(i; 0 .. 4) {
		f.teamCreature();
	}
	foreach(i; 0 .. 4) {
		f.teamName();
	}
	foreach(i; 0 .. 4) {
		f.vehicleBicycleType();
	}
	foreach(i; 0 .. 4) {
		f.vehicleFuel();
	}
	foreach(i; 0 .. 4) {
		f.vehicleManufacturer();
	}
	foreach(i; 0 .. 4) {
		f.vehicleModel();
	}
	foreach(i; 0 .. 4) {
		f.vehicleType();
	}
	foreach(i; 0 .. 4) {
		f.wordAdjective();
	}
	foreach(i; 0 .. 4) {
		f.wordAdverb();
	}
	foreach(i; 0 .. 4) {
		f.wordConjunction();
	}
	foreach(i; 0 .. 4) {
		f.wordInterjection();
	}
	foreach(i; 0 .. 4) {
		f.wordNoun();
	}
	foreach(i; 0 .. 4) {
		f.wordPreposition();
	}
	foreach(i; 0 .. 4) {
		f.wordVerb();
	}
}

unittest {
	auto f = new Faker_eo(13);

	foreach(i; 0 .. 4) {
		f.airlineAirline();
	}
	foreach(i; 0 .. 4) {
		f.airlineAirplane();
	}
	foreach(i; 0 .. 4) {
		f.airlineAirport();
	}
	foreach(i; 0 .. 4) {
		f.animalBear();
	}
	foreach(i; 0 .. 4) {
		f.animalBird();
	}
	foreach(i; 0 .. 4) {
		f.animalCat();
	}
	foreach(i; 0 .. 4) {
		f.animalCetacean();
	}
	foreach(i; 0 .. 4) {
		f.animalCow();
	}
	foreach(i; 0 .. 4) {
		f.animalCrocodilia();
	}
	foreach(i; 0 .. 4) {
		f.animalDog();
	}
	foreach(i; 0 .. 4) {
		f.animalFish();
	}
	foreach(i; 0 .. 4) {
		f.animalHorse();
	}
	foreach(i; 0 .. 4) {
		f.animalInsect();
	}
	foreach(i; 0 .. 4) {
		f.animalLion();
	}
	foreach(i; 0 .. 4) {
		f.animalRabbit();
	}
	foreach(i; 0 .. 4) {
		f.animalRodent();
	}
	foreach(i; 0 .. 4) {
		f.animalSnake();
	}
	foreach(i; 0 .. 4) {
		f.appAuthor();
	}
	foreach(i; 0 .. 4) {
		f.appName();
	}
	foreach(i; 0 .. 4) {
		f.appVersion();
	}
	foreach(i; 0 .. 4) {
		f.cellPhoneFormats();
	}
	foreach(i; 0 .. 4) {
		f.commerceDepartment();
	}
	foreach(i; 0 .. 4) {
		f.commerceProductDescription();
	}
	foreach(i; 0 .. 4) {
		f.commerceProductNameAdjective();
	}
	foreach(i; 0 .. 4) {
		f.commerceProductNameMaterial();
	}
	foreach(i; 0 .. 4) {
		f.commerceProductNameProduct();
	}
	foreach(i; 0 .. 4) {
		f.companyAdjective();
	}
	foreach(i; 0 .. 4) {
		f.companyBuzzAdjective();
	}
	foreach(i; 0 .. 4) {
		f.companyBuzzNoun();
	}
	foreach(i; 0 .. 4) {
		f.companyBuzzVerb();
	}
	foreach(i; 0 .. 4) {
		f.companyCatchPhrase();
	}
	foreach(i; 0 .. 4) {
		f.companyDescriptor();
	}
	foreach(i; 0 .. 4) {
		f.companyName();
	}
	foreach(i; 0 .. 4) {
		f.companyNamePattern();
	}
	foreach(i; 0 .. 4) {
		f.companyNoun();
	}
	foreach(i; 0 .. 4) {
		f.companySuffix();
	}
	foreach(i; 0 .. 4) {
		f.databaseCollation();
	}
	foreach(i; 0 .. 4) {
		f.databaseColumn();
	}
	foreach(i; 0 .. 4) {
		f.databaseEngine();
	}
	foreach(i; 0 .. 4) {
		f.databaseType();
	}
	foreach(i; 0 .. 4) {
		f.dateMonthAbbr();
	}
	foreach(i; 0 .. 4) {
		f.dateMonthWide();
	}
	foreach(i; 0 .. 4) {
		f.dateWeekdayAbbr();
	}
	foreach(i; 0 .. 4) {
		f.dateWeekdayWide();
	}
	foreach(i; 0 .. 4) {
		f.financeAccountType();
	}
	foreach(i; 0 .. 4) {
		f.financeCreditCardAmericanExpress();
	}
	foreach(i; 0 .. 4) {
		f.financeCreditCardDinersClub();
	}
	foreach(i; 0 .. 4) {
		f.financeCreditCardDiscover();
	}
	foreach(i; 0 .. 4) {
		f.financeCreditCardJcb();
	}
	foreach(i; 0 .. 4) {
		f.financeCreditCardMaestro();
	}
	foreach(i; 0 .. 4) {
		f.financeCreditCardMastercard();
	}
	foreach(i; 0 .. 4) {
		f.financeCreditCardVisa();
	}
	foreach(i; 0 .. 4) {
		f.financeCurrency();
	}
	foreach(i; 0 .. 4) {
		f.financeTransactionType();
	}
	foreach(i; 0 .. 4) {
		f.hackerAbbreviation();
	}
	foreach(i; 0 .. 4) {
		f.hackerAdjective();
	}
	foreach(i; 0 .. 4) {
		f.hackerIngverb();
	}
	foreach(i; 0 .. 4) {
		f.hackerNoun();
	}
	foreach(i; 0 .. 4) {
		f.hackerPhrase();
	}
	foreach(i; 0 .. 4) {
		f.hackerVerb();
	}
	foreach(i; 0 .. 4) {
		f.internetDomainSuffix();
	}
	foreach(i; 0 .. 4) {
		f.internetEmoji();
	}
	foreach(i; 0 .. 4) {
		f.internetEmojiActivity();
	}
	foreach(i; 0 .. 4) {
		f.internetEmojiBody();
	}
	foreach(i; 0 .. 4) {
		f.internetEmojiFlag();
	}
	foreach(i; 0 .. 4) {
		f.internetEmojiFood();
	}
	foreach(i; 0 .. 4) {
		f.internetEmojiNature();
	}
	foreach(i; 0 .. 4) {
		f.internetEmojiObject();
	}
	foreach(i; 0 .. 4) {
		f.internetEmojiPerson();
	}
	foreach(i; 0 .. 4) {
		f.internetEmojiSmiley();
	}
	foreach(i; 0 .. 4) {
		f.internetEmojiSymbol();
	}
	foreach(i; 0 .. 4) {
		f.internetEmojiTravel();
	}
	foreach(i; 0 .. 4) {
		f.internetExampleEmail();
	}
	foreach(i; 0 .. 4) {
		f.internetFreeEmail();
	}
	foreach(i; 0 .. 4) {
		f.locationBuildingNumber();
	}
	foreach(i; 0 .. 4) {
		f.locationCity();
	}
	foreach(i; 0 .. 4) {
		f.locationCityName();
	}
	foreach(i; 0 .. 4) {
		f.locationCityPattern();
	}
	foreach(i; 0 .. 4) {
		f.locationCityPrefix();
	}
	foreach(i; 0 .. 4) {
		f.locationCitySuffix();
	}
	foreach(i; 0 .. 4) {
		f.locationCountry();
	}
	foreach(i; 0 .. 4) {
		f.locationCounty();
	}
	foreach(i; 0 .. 4) {
		f.locationDefaultCountry();
	}
	foreach(i; 0 .. 4) {
		f.locationDirection();
	}
	foreach(i; 0 .. 4) {
		f.locationDirectionAbbr();
	}
	foreach(i; 0 .. 4) {
		f.locationPostcode();
	}
	foreach(i; 0 .. 4) {
		f.locationSecondaryAddress();
	}
	foreach(i; 0 .. 4) {
		f.locationState();
	}
	foreach(i; 0 .. 4) {
		f.locationStateAbbr();
	}
	foreach(i; 0 .. 4) {
		f.locationStreetAddress();
	}
	foreach(i; 0 .. 4) {
		f.locationStreetName();
	}
	foreach(i; 0 .. 4) {
		f.locationStreetPattern();
	}
	foreach(i; 0 .. 4) {
		f.locationStreetSuffix();
	}
	foreach(i; 0 .. 4) {
		f.locationTimeZone();
	}
	foreach(i; 0 .. 4) {
		f.loremParagraph();
	}
	foreach(i; 0 .. 4) {
		f.loremParagraphs();
	}
	foreach(i; 0 .. 4) {
		f.loremSentance();
	}
	foreach(i; 0 .. 4) {
		f.loremSentances();
	}
	foreach(i; 0 .. 4) {
		f.loremText();
	}
	foreach(i; 0 .. 4) {
		f.loremWords();
	}
	foreach(i; 0 .. 4) {
		f.musicGenre();
	}
	foreach(i; 0 .. 4) {
		f.musicSongName();
	}
	foreach(i; 0 .. 4) {
		f.personBioPart();
	}
	foreach(i; 0 .. 4) {
		f.personBioPattern();
	}
	foreach(i; 0 .. 4) {
		f.personBioSupporter();
	}
	foreach(i; 0 .. 4) {
		f.personFemaleFirstName();
	}
	foreach(i; 0 .. 4) {
		f.personFemaleMiddleName();
	}
	foreach(i; 0 .. 4) {
		f.personFemalePrefix();
	}
	foreach(i; 0 .. 4) {
		f.personFirstName();
	}
	foreach(i; 0 .. 4) {
		f.personGender();
	}
	foreach(i; 0 .. 4) {
		f.personJobArea();
	}
	foreach(i; 0 .. 4) {
		f.personJobDescriptor();
	}
	foreach(i; 0 .. 4) {
		f.personJobTitlePattern();
	}
	foreach(i; 0 .. 4) {
		f.personJobType();
	}
	foreach(i; 0 .. 4) {
		f.personLastName();
	}
	foreach(i; 0 .. 4) {
		f.personLastNamePattern();
	}
	foreach(i; 0 .. 4) {
		f.personMaleFirstName();
	}
	foreach(i; 0 .. 4) {
		f.personMaleMiddleName();
	}
	foreach(i; 0 .. 4) {
		f.personMalePrefix();
	}
	foreach(i; 0 .. 4) {
		f.personMiddleName();
	}
	foreach(i; 0 .. 4) {
		f.personName();
	}
	foreach(i; 0 .. 4) {
		f.personPrefix();
	}
	foreach(i; 0 .. 4) {
		f.personSex();
	}
	foreach(i; 0 .. 4) {
		f.personSuffix();
	}
	foreach(i; 0 .. 4) {
		f.personTitleDescriptor();
	}
	foreach(i; 0 .. 4) {
		f.personTitleJob();
	}
	foreach(i; 0 .. 4) {
		f.personTitleLevel();
	}
	foreach(i; 0 .. 4) {
		f.personWesternZodiacSign();
	}
	foreach(i; 0 .. 4) {
		f.phoneNumber();
	}
	foreach(i; 0 .. 4) {
		f.phoneNumberFormats();
	}
	foreach(i; 0 .. 4) {
		f.scienceChemicalElement();
	}
	foreach(i; 0 .. 4) {
		f.scienceUnit();
	}
	foreach(i; 0 .. 4) {
		f.systemDirectoryPaths();
	}
	foreach(i; 0 .. 4) {
		f.teamCreature();
	}
	foreach(i; 0 .. 4) {
		f.teamName();
	}
	foreach(i; 0 .. 4) {
		f.vehicleBicycleType();
	}
	foreach(i; 0 .. 4) {
		f.vehicleFuel();
	}
	foreach(i; 0 .. 4) {
		f.vehicleManufacturer();
	}
	foreach(i; 0 .. 4) {
		f.vehicleModel();
	}
	foreach(i; 0 .. 4) {
		f.vehicleType();
	}
	foreach(i; 0 .. 4) {
		f.wordAdjective();
	}
	foreach(i; 0 .. 4) {
		f.wordAdverb();
	}
	foreach(i; 0 .. 4) {
		f.wordConjunction();
	}
	foreach(i; 0 .. 4) {
		f.wordInterjection();
	}
	foreach(i; 0 .. 4) {
		f.wordNoun();
	}
	foreach(i; 0 .. 4) {
		f.wordPreposition();
	}
	foreach(i; 0 .. 4) {
		f.wordVerb();
	}
}

unittest {
	auto f = new Faker_es(13);

	foreach(i; 0 .. 4) {
		f.airlineAirline();
	}
	foreach(i; 0 .. 4) {
		f.airlineAirplane();
	}
	foreach(i; 0 .. 4) {
		f.airlineAirport();
	}
	foreach(i; 0 .. 4) {
		f.animalBear();
	}
	foreach(i; 0 .. 4) {
		f.animalBird();
	}
	foreach(i; 0 .. 4) {
		f.animalCat();
	}
	foreach(i; 0 .. 4) {
		f.animalCetacean();
	}
	foreach(i; 0 .. 4) {
		f.animalCow();
	}
	foreach(i; 0 .. 4) {
		f.animalCrocodilia();
	}
	foreach(i; 0 .. 4) {
		f.animalDog();
	}
	foreach(i; 0 .. 4) {
		f.animalFish();
	}
	foreach(i; 0 .. 4) {
		f.animalHorse();
	}
	foreach(i; 0 .. 4) {
		f.animalInsect();
	}
	foreach(i; 0 .. 4) {
		f.animalLion();
	}
	foreach(i; 0 .. 4) {
		f.animalRabbit();
	}
	foreach(i; 0 .. 4) {
		f.animalRodent();
	}
	foreach(i; 0 .. 4) {
		f.animalSnake();
	}
	foreach(i; 0 .. 4) {
		f.appAuthor();
	}
	foreach(i; 0 .. 4) {
		f.appName();
	}
	foreach(i; 0 .. 4) {
		f.appVersion();
	}
	foreach(i; 0 .. 4) {
		f.cellPhoneFormats();
	}
	foreach(i; 0 .. 4) {
		f.commerceDepartment();
	}
	foreach(i; 0 .. 4) {
		f.commerceProductDescription();
	}
	foreach(i; 0 .. 4) {
		f.commerceProductNameAdjective();
	}
	foreach(i; 0 .. 4) {
		f.commerceProductNameMaterial();
	}
	foreach(i; 0 .. 4) {
		f.commerceProductNameProduct();
	}
	foreach(i; 0 .. 4) {
		f.companyAdjective();
	}
	foreach(i; 0 .. 4) {
		f.companyBuzzAdjective();
	}
	foreach(i; 0 .. 4) {
		f.companyBuzzNoun();
	}
	foreach(i; 0 .. 4) {
		f.companyBuzzVerb();
	}
	foreach(i; 0 .. 4) {
		f.companyCatchPhrase();
	}
	foreach(i; 0 .. 4) {
		f.companyDescriptor();
	}
	foreach(i; 0 .. 4) {
		f.companyName();
	}
	foreach(i; 0 .. 4) {
		f.companyNamePattern();
	}
	foreach(i; 0 .. 4) {
		f.companyNoun();
	}
	foreach(i; 0 .. 4) {
		f.companySuffix();
	}
	foreach(i; 0 .. 4) {
		f.databaseCollation();
	}
	foreach(i; 0 .. 4) {
		f.databaseColumn();
	}
	foreach(i; 0 .. 4) {
		f.databaseEngine();
	}
	foreach(i; 0 .. 4) {
		f.databaseType();
	}
	foreach(i; 0 .. 4) {
		f.dateMonthAbbr();
	}
	foreach(i; 0 .. 4) {
		f.dateMonthWide();
	}
	foreach(i; 0 .. 4) {
		f.dateWeekdayAbbr();
	}
	foreach(i; 0 .. 4) {
		f.dateWeekdayWide();
	}
	foreach(i; 0 .. 4) {
		f.financeAccountType();
	}
	foreach(i; 0 .. 4) {
		f.financeCreditCardAmericanExpress();
	}
	foreach(i; 0 .. 4) {
		f.financeCreditCardDinersClub();
	}
	foreach(i; 0 .. 4) {
		f.financeCreditCardDiscover();
	}
	foreach(i; 0 .. 4) {
		f.financeCreditCardJcb();
	}
	foreach(i; 0 .. 4) {
		f.financeCreditCardMaestro();
	}
	foreach(i; 0 .. 4) {
		f.financeCreditCardMastercard();
	}
	foreach(i; 0 .. 4) {
		f.financeCreditCardVisa();
	}
	foreach(i; 0 .. 4) {
		f.financeCurrency();
	}
	foreach(i; 0 .. 4) {
		f.financeTransactionType();
	}
	foreach(i; 0 .. 4) {
		f.hackerAbbreviation();
	}
	foreach(i; 0 .. 4) {
		f.hackerAdjective();
	}
	foreach(i; 0 .. 4) {
		f.hackerIngverb();
	}
	foreach(i; 0 .. 4) {
		f.hackerNoun();
	}
	foreach(i; 0 .. 4) {
		f.hackerPhrase();
	}
	foreach(i; 0 .. 4) {
		f.hackerVerb();
	}
	foreach(i; 0 .. 4) {
		f.internetDomainSuffix();
	}
	foreach(i; 0 .. 4) {
		f.internetEmoji();
	}
	foreach(i; 0 .. 4) {
		f.internetEmojiActivity();
	}
	foreach(i; 0 .. 4) {
		f.internetEmojiBody();
	}
	foreach(i; 0 .. 4) {
		f.internetEmojiFlag();
	}
	foreach(i; 0 .. 4) {
		f.internetEmojiFood();
	}
	foreach(i; 0 .. 4) {
		f.internetEmojiNature();
	}
	foreach(i; 0 .. 4) {
		f.internetEmojiObject();
	}
	foreach(i; 0 .. 4) {
		f.internetEmojiPerson();
	}
	foreach(i; 0 .. 4) {
		f.internetEmojiSmiley();
	}
	foreach(i; 0 .. 4) {
		f.internetEmojiSymbol();
	}
	foreach(i; 0 .. 4) {
		f.internetEmojiTravel();
	}
	foreach(i; 0 .. 4) {
		f.internetExampleEmail();
	}
	foreach(i; 0 .. 4) {
		f.internetFreeEmail();
	}
	foreach(i; 0 .. 4) {
		f.locationBuildingNumber();
	}
	foreach(i; 0 .. 4) {
		f.locationCity();
	}
	foreach(i; 0 .. 4) {
		f.locationCityName();
	}
	foreach(i; 0 .. 4) {
		f.locationCityPattern();
	}
	foreach(i; 0 .. 4) {
		f.locationCityPrefix();
	}
	foreach(i; 0 .. 4) {
		f.locationCitySuffix();
	}
	foreach(i; 0 .. 4) {
		f.locationCountry();
	}
	foreach(i; 0 .. 4) {
		f.locationCounty();
	}
	foreach(i; 0 .. 4) {
		f.locationDefaultCountry();
	}
	foreach(i; 0 .. 4) {
		f.locationDirection();
	}
	foreach(i; 0 .. 4) {
		f.locationDirectionAbbr();
	}
	foreach(i; 0 .. 4) {
		f.locationPostcode();
	}
	foreach(i; 0 .. 4) {
		f.locationSecondaryAddress();
	}
	foreach(i; 0 .. 4) {
		f.locationState();
	}
	foreach(i; 0 .. 4) {
		f.locationStateAbbr();
	}
	foreach(i; 0 .. 4) {
		f.locationStreetAddress();
	}
	foreach(i; 0 .. 4) {
		f.locationStreetName();
	}
	foreach(i; 0 .. 4) {
		f.locationStreetPattern();
	}
	foreach(i; 0 .. 4) {
		f.locationStreetSuffix();
	}
	foreach(i; 0 .. 4) {
		f.locationTimeZone();
	}
	foreach(i; 0 .. 4) {
		f.loremParagraph();
	}
	foreach(i; 0 .. 4) {
		f.loremParagraphs();
	}
	foreach(i; 0 .. 4) {
		f.loremSentance();
	}
	foreach(i; 0 .. 4) {
		f.loremSentances();
	}
	foreach(i; 0 .. 4) {
		f.loremText();
	}
	foreach(i; 0 .. 4) {
		f.loremWords();
	}
	foreach(i; 0 .. 4) {
		f.musicGenre();
	}
	foreach(i; 0 .. 4) {
		f.musicSongName();
	}
	foreach(i; 0 .. 4) {
		f.personBioPart();
	}
	foreach(i; 0 .. 4) {
		f.personBioPattern();
	}
	foreach(i; 0 .. 4) {
		f.personBioSupporter();
	}
	foreach(i; 0 .. 4) {
		f.personFemaleFirstName();
	}
	foreach(i; 0 .. 4) {
		f.personFemaleMiddleName();
	}
	foreach(i; 0 .. 4) {
		f.personFemalePrefix();
	}
	foreach(i; 0 .. 4) {
		f.personFirstName();
	}
	foreach(i; 0 .. 4) {
		f.personGender();
	}
	foreach(i; 0 .. 4) {
		f.personJobArea();
	}
	foreach(i; 0 .. 4) {
		f.personJobDescriptor();
	}
	foreach(i; 0 .. 4) {
		f.personJobTitlePattern();
	}
	foreach(i; 0 .. 4) {
		f.personJobType();
	}
	foreach(i; 0 .. 4) {
		f.personLastName();
	}
	foreach(i; 0 .. 4) {
		f.personLastNamePattern();
	}
	foreach(i; 0 .. 4) {
		f.personMaleFirstName();
	}
	foreach(i; 0 .. 4) {
		f.personMaleMiddleName();
	}
	foreach(i; 0 .. 4) {
		f.personMalePrefix();
	}
	foreach(i; 0 .. 4) {
		f.personMiddleName();
	}
	foreach(i; 0 .. 4) {
		f.personName();
	}
	foreach(i; 0 .. 4) {
		f.personPrefix();
	}
	foreach(i; 0 .. 4) {
		f.personSex();
	}
	foreach(i; 0 .. 4) {
		f.personSuffix();
	}
	foreach(i; 0 .. 4) {
		f.personTitleDescriptor();
	}
	foreach(i; 0 .. 4) {
		f.personTitleJob();
	}
	foreach(i; 0 .. 4) {
		f.personTitleLevel();
	}
	foreach(i; 0 .. 4) {
		f.personWesternZodiacSign();
	}
	foreach(i; 0 .. 4) {
		f.phoneNumber();
	}
	foreach(i; 0 .. 4) {
		f.phoneNumberFormats();
	}
	foreach(i; 0 .. 4) {
		f.scienceChemicalElement();
	}
	foreach(i; 0 .. 4) {
		f.scienceUnit();
	}
	foreach(i; 0 .. 4) {
		f.systemDirectoryPaths();
	}
	foreach(i; 0 .. 4) {
		f.teamCreature();
	}
	foreach(i; 0 .. 4) {
		f.teamName();
	}
	foreach(i; 0 .. 4) {
		f.vehicleBicycleType();
	}
	foreach(i; 0 .. 4) {
		f.vehicleFuel();
	}
	foreach(i; 0 .. 4) {
		f.vehicleManufacturer();
	}
	foreach(i; 0 .. 4) {
		f.vehicleModel();
	}
	foreach(i; 0 .. 4) {
		f.vehicleType();
	}
	foreach(i; 0 .. 4) {
		f.wordAdjective();
	}
	foreach(i; 0 .. 4) {
		f.wordAdverb();
	}
	foreach(i; 0 .. 4) {
		f.wordConjunction();
	}
	foreach(i; 0 .. 4) {
		f.wordInterjection();
	}
	foreach(i; 0 .. 4) {
		f.wordNoun();
	}
	foreach(i; 0 .. 4) {
		f.wordPreposition();
	}
	foreach(i; 0 .. 4) {
		f.wordVerb();
	}
}

unittest {
	auto f = new Faker_es_mx(13);

	foreach(i; 0 .. 4) {
		f.airlineAirline();
	}
	foreach(i; 0 .. 4) {
		f.airlineAirplane();
	}
	foreach(i; 0 .. 4) {
		f.airlineAirport();
	}
	foreach(i; 0 .. 4) {
		f.animalBear();
	}
	foreach(i; 0 .. 4) {
		f.animalBird();
	}
	foreach(i; 0 .. 4) {
		f.animalCat();
	}
	foreach(i; 0 .. 4) {
		f.animalCetacean();
	}
	foreach(i; 0 .. 4) {
		f.animalCow();
	}
	foreach(i; 0 .. 4) {
		f.animalCrocodilia();
	}
	foreach(i; 0 .. 4) {
		f.animalDog();
	}
	foreach(i; 0 .. 4) {
		f.animalFish();
	}
	foreach(i; 0 .. 4) {
		f.animalHorse();
	}
	foreach(i; 0 .. 4) {
		f.animalInsect();
	}
	foreach(i; 0 .. 4) {
		f.animalLion();
	}
	foreach(i; 0 .. 4) {
		f.animalRabbit();
	}
	foreach(i; 0 .. 4) {
		f.animalRodent();
	}
	foreach(i; 0 .. 4) {
		f.animalSnake();
	}
	foreach(i; 0 .. 4) {
		f.appAuthor();
	}
	foreach(i; 0 .. 4) {
		f.appName();
	}
	foreach(i; 0 .. 4) {
		f.appVersion();
	}
	foreach(i; 0 .. 4) {
		f.cellPhoneFormats();
	}
	foreach(i; 0 .. 4) {
		f.commerceDepartment();
	}
	foreach(i; 0 .. 4) {
		f.commerceProductDescription();
	}
	foreach(i; 0 .. 4) {
		f.commerceProductNameAdjective();
	}
	foreach(i; 0 .. 4) {
		f.commerceProductNameMaterial();
	}
	foreach(i; 0 .. 4) {
		f.commerceProductNameProduct();
	}
	foreach(i; 0 .. 4) {
		f.companyAdjective();
	}
	foreach(i; 0 .. 4) {
		f.companyBuzzAdjective();
	}
	foreach(i; 0 .. 4) {
		f.companyBuzzNoun();
	}
	foreach(i; 0 .. 4) {
		f.companyBuzzVerb();
	}
	foreach(i; 0 .. 4) {
		f.companyCatchPhrase();
	}
	foreach(i; 0 .. 4) {
		f.companyDescriptor();
	}
	foreach(i; 0 .. 4) {
		f.companyName();
	}
	foreach(i; 0 .. 4) {
		f.companyNamePattern();
	}
	foreach(i; 0 .. 4) {
		f.companyNoun();
	}
	foreach(i; 0 .. 4) {
		f.companySuffix();
	}
	foreach(i; 0 .. 4) {
		f.databaseCollation();
	}
	foreach(i; 0 .. 4) {
		f.databaseColumn();
	}
	foreach(i; 0 .. 4) {
		f.databaseEngine();
	}
	foreach(i; 0 .. 4) {
		f.databaseType();
	}
	foreach(i; 0 .. 4) {
		f.dateMonthAbbr();
	}
	foreach(i; 0 .. 4) {
		f.dateMonthWide();
	}
	foreach(i; 0 .. 4) {
		f.dateWeekdayAbbr();
	}
	foreach(i; 0 .. 4) {
		f.dateWeekdayWide();
	}
	foreach(i; 0 .. 4) {
		f.financeAccountType();
	}
	foreach(i; 0 .. 4) {
		f.financeCreditCardAmericanExpress();
	}
	foreach(i; 0 .. 4) {
		f.financeCreditCardDinersClub();
	}
	foreach(i; 0 .. 4) {
		f.financeCreditCardDiscover();
	}
	foreach(i; 0 .. 4) {
		f.financeCreditCardJcb();
	}
	foreach(i; 0 .. 4) {
		f.financeCreditCardMaestro();
	}
	foreach(i; 0 .. 4) {
		f.financeCreditCardMastercard();
	}
	foreach(i; 0 .. 4) {
		f.financeCreditCardVisa();
	}
	foreach(i; 0 .. 4) {
		f.financeCurrency();
	}
	foreach(i; 0 .. 4) {
		f.financeTransactionType();
	}
	foreach(i; 0 .. 4) {
		f.hackerAbbreviation();
	}
	foreach(i; 0 .. 4) {
		f.hackerAdjective();
	}
	foreach(i; 0 .. 4) {
		f.hackerIngverb();
	}
	foreach(i; 0 .. 4) {
		f.hackerNoun();
	}
	foreach(i; 0 .. 4) {
		f.hackerPhrase();
	}
	foreach(i; 0 .. 4) {
		f.hackerVerb();
	}
	foreach(i; 0 .. 4) {
		f.internetDomainSuffix();
	}
	foreach(i; 0 .. 4) {
		f.internetEmoji();
	}
	foreach(i; 0 .. 4) {
		f.internetEmojiActivity();
	}
	foreach(i; 0 .. 4) {
		f.internetEmojiBody();
	}
	foreach(i; 0 .. 4) {
		f.internetEmojiFlag();
	}
	foreach(i; 0 .. 4) {
		f.internetEmojiFood();
	}
	foreach(i; 0 .. 4) {
		f.internetEmojiNature();
	}
	foreach(i; 0 .. 4) {
		f.internetEmojiObject();
	}
	foreach(i; 0 .. 4) {
		f.internetEmojiPerson();
	}
	foreach(i; 0 .. 4) {
		f.internetEmojiSmiley();
	}
	foreach(i; 0 .. 4) {
		f.internetEmojiSymbol();
	}
	foreach(i; 0 .. 4) {
		f.internetEmojiTravel();
	}
	foreach(i; 0 .. 4) {
		f.internetExampleEmail();
	}
	foreach(i; 0 .. 4) {
		f.internetFreeEmail();
	}
	foreach(i; 0 .. 4) {
		f.locationBuildingNumber();
	}
	foreach(i; 0 .. 4) {
		f.locationCity();
	}
	foreach(i; 0 .. 4) {
		f.locationCityName();
	}
	foreach(i; 0 .. 4) {
		f.locationCityPattern();
	}
	foreach(i; 0 .. 4) {
		f.locationCityPrefix();
	}
	foreach(i; 0 .. 4) {
		f.locationCitySuffix();
	}
	foreach(i; 0 .. 4) {
		f.locationCountry();
	}
	foreach(i; 0 .. 4) {
		f.locationCounty();
	}
	foreach(i; 0 .. 4) {
		f.locationDefaultCountry();
	}
	foreach(i; 0 .. 4) {
		f.locationDirection();
	}
	foreach(i; 0 .. 4) {
		f.locationDirectionAbbr();
	}
	foreach(i; 0 .. 4) {
		f.locationPostcode();
	}
	foreach(i; 0 .. 4) {
		f.locationSecondaryAddress();
	}
	foreach(i; 0 .. 4) {
		f.locationState();
	}
	foreach(i; 0 .. 4) {
		f.locationStateAbbr();
	}
	foreach(i; 0 .. 4) {
		f.locationStreetAddress();
	}
	foreach(i; 0 .. 4) {
		f.locationStreetName();
	}
	foreach(i; 0 .. 4) {
		f.locationStreetPattern();
	}
	foreach(i; 0 .. 4) {
		f.locationStreetSuffix();
	}
	foreach(i; 0 .. 4) {
		f.locationTimeZone();
	}
	foreach(i; 0 .. 4) {
		f.loremParagraph();
	}
	foreach(i; 0 .. 4) {
		f.loremParagraphs();
	}
	foreach(i; 0 .. 4) {
		f.loremSentance();
	}
	foreach(i; 0 .. 4) {
		f.loremSentances();
	}
	foreach(i; 0 .. 4) {
		f.loremText();
	}
	foreach(i; 0 .. 4) {
		f.loremWords();
	}
	foreach(i; 0 .. 4) {
		f.musicGenre();
	}
	foreach(i; 0 .. 4) {
		f.musicSongName();
	}
	foreach(i; 0 .. 4) {
		f.personBioPart();
	}
	foreach(i; 0 .. 4) {
		f.personBioPattern();
	}
	foreach(i; 0 .. 4) {
		f.personBioSupporter();
	}
	foreach(i; 0 .. 4) {
		f.personFemaleFirstName();
	}
	foreach(i; 0 .. 4) {
		f.personFemaleMiddleName();
	}
	foreach(i; 0 .. 4) {
		f.personFemalePrefix();
	}
	foreach(i; 0 .. 4) {
		f.personFirstName();
	}
	foreach(i; 0 .. 4) {
		f.personGender();
	}
	foreach(i; 0 .. 4) {
		f.personJobArea();
	}
	foreach(i; 0 .. 4) {
		f.personJobDescriptor();
	}
	foreach(i; 0 .. 4) {
		f.personJobTitlePattern();
	}
	foreach(i; 0 .. 4) {
		f.personJobType();
	}
	foreach(i; 0 .. 4) {
		f.personLastName();
	}
	foreach(i; 0 .. 4) {
		f.personLastNamePattern();
	}
	foreach(i; 0 .. 4) {
		f.personMaleFirstName();
	}
	foreach(i; 0 .. 4) {
		f.personMaleMiddleName();
	}
	foreach(i; 0 .. 4) {
		f.personMalePrefix();
	}
	foreach(i; 0 .. 4) {
		f.personMiddleName();
	}
	foreach(i; 0 .. 4) {
		f.personName();
	}
	foreach(i; 0 .. 4) {
		f.personPrefix();
	}
	foreach(i; 0 .. 4) {
		f.personSex();
	}
	foreach(i; 0 .. 4) {
		f.personSuffix();
	}
	foreach(i; 0 .. 4) {
		f.personTitleDescriptor();
	}
	foreach(i; 0 .. 4) {
		f.personTitleJob();
	}
	foreach(i; 0 .. 4) {
		f.personTitleLevel();
	}
	foreach(i; 0 .. 4) {
		f.personWesternZodiacSign();
	}
	foreach(i; 0 .. 4) {
		f.phoneNumber();
	}
	foreach(i; 0 .. 4) {
		f.phoneNumberFormats();
	}
	foreach(i; 0 .. 4) {
		f.scienceChemicalElement();
	}
	foreach(i; 0 .. 4) {
		f.scienceUnit();
	}
	foreach(i; 0 .. 4) {
		f.systemDirectoryPaths();
	}
	foreach(i; 0 .. 4) {
		f.teamCreature();
	}
	foreach(i; 0 .. 4) {
		f.teamName();
	}
	foreach(i; 0 .. 4) {
		f.vehicleBicycleType();
	}
	foreach(i; 0 .. 4) {
		f.vehicleFuel();
	}
	foreach(i; 0 .. 4) {
		f.vehicleManufacturer();
	}
	foreach(i; 0 .. 4) {
		f.vehicleModel();
	}
	foreach(i; 0 .. 4) {
		f.vehicleType();
	}
	foreach(i; 0 .. 4) {
		f.wordAdjective();
	}
	foreach(i; 0 .. 4) {
		f.wordAdverb();
	}
	foreach(i; 0 .. 4) {
		f.wordConjunction();
	}
	foreach(i; 0 .. 4) {
		f.wordInterjection();
	}
	foreach(i; 0 .. 4) {
		f.wordNoun();
	}
	foreach(i; 0 .. 4) {
		f.wordPreposition();
	}
	foreach(i; 0 .. 4) {
		f.wordVerb();
	}
}

unittest {
	auto f = new Faker_fa(13);

	foreach(i; 0 .. 4) {
		f.airlineAirline();
	}
	foreach(i; 0 .. 4) {
		f.airlineAirplane();
	}
	foreach(i; 0 .. 4) {
		f.airlineAirport();
	}
	foreach(i; 0 .. 4) {
		f.animalBear();
	}
	foreach(i; 0 .. 4) {
		f.animalBird();
	}
	foreach(i; 0 .. 4) {
		f.animalCat();
	}
	foreach(i; 0 .. 4) {
		f.animalCetacean();
	}
	foreach(i; 0 .. 4) {
		f.animalCow();
	}
	foreach(i; 0 .. 4) {
		f.animalCrocodilia();
	}
	foreach(i; 0 .. 4) {
		f.animalDog();
	}
	foreach(i; 0 .. 4) {
		f.animalFish();
	}
	foreach(i; 0 .. 4) {
		f.animalHorse();
	}
	foreach(i; 0 .. 4) {
		f.animalInsect();
	}
	foreach(i; 0 .. 4) {
		f.animalLion();
	}
	foreach(i; 0 .. 4) {
		f.animalRabbit();
	}
	foreach(i; 0 .. 4) {
		f.animalRodent();
	}
	foreach(i; 0 .. 4) {
		f.animalSnake();
	}
	foreach(i; 0 .. 4) {
		f.appAuthor();
	}
	foreach(i; 0 .. 4) {
		f.appName();
	}
	foreach(i; 0 .. 4) {
		f.appVersion();
	}
	foreach(i; 0 .. 4) {
		f.cellPhoneFormats();
	}
	foreach(i; 0 .. 4) {
		f.commerceDepartment();
	}
	foreach(i; 0 .. 4) {
		f.commerceProductDescription();
	}
	foreach(i; 0 .. 4) {
		f.commerceProductNameAdjective();
	}
	foreach(i; 0 .. 4) {
		f.commerceProductNameMaterial();
	}
	foreach(i; 0 .. 4) {
		f.commerceProductNameProduct();
	}
	foreach(i; 0 .. 4) {
		f.companyAdjective();
	}
	foreach(i; 0 .. 4) {
		f.companyBuzzAdjective();
	}
	foreach(i; 0 .. 4) {
		f.companyBuzzNoun();
	}
	foreach(i; 0 .. 4) {
		f.companyBuzzVerb();
	}
	foreach(i; 0 .. 4) {
		f.companyCatchPhrase();
	}
	foreach(i; 0 .. 4) {
		f.companyDescriptor();
	}
	foreach(i; 0 .. 4) {
		f.companyName();
	}
	foreach(i; 0 .. 4) {
		f.companyNamePattern();
	}
	foreach(i; 0 .. 4) {
		f.companyNoun();
	}
	foreach(i; 0 .. 4) {
		f.companySuffix();
	}
	foreach(i; 0 .. 4) {
		f.databaseCollation();
	}
	foreach(i; 0 .. 4) {
		f.databaseColumn();
	}
	foreach(i; 0 .. 4) {
		f.databaseEngine();
	}
	foreach(i; 0 .. 4) {
		f.databaseType();
	}
	foreach(i; 0 .. 4) {
		f.dateMonthAbbr();
	}
	foreach(i; 0 .. 4) {
		f.dateMonthWide();
	}
	foreach(i; 0 .. 4) {
		f.dateWeekdayAbbr();
	}
	foreach(i; 0 .. 4) {
		f.dateWeekdayWide();
	}
	foreach(i; 0 .. 4) {
		f.financeAccountType();
	}
	foreach(i; 0 .. 4) {
		f.financeCreditCardAmericanExpress();
	}
	foreach(i; 0 .. 4) {
		f.financeCreditCardDinersClub();
	}
	foreach(i; 0 .. 4) {
		f.financeCreditCardDiscover();
	}
	foreach(i; 0 .. 4) {
		f.financeCreditCardJcb();
	}
	foreach(i; 0 .. 4) {
		f.financeCreditCardMaestro();
	}
	foreach(i; 0 .. 4) {
		f.financeCreditCardMastercard();
	}
	foreach(i; 0 .. 4) {
		f.financeCreditCardVisa();
	}
	foreach(i; 0 .. 4) {
		f.financeCurrency();
	}
	foreach(i; 0 .. 4) {
		f.financeTransactionType();
	}
	foreach(i; 0 .. 4) {
		f.hackerAbbreviation();
	}
	foreach(i; 0 .. 4) {
		f.hackerAdjective();
	}
	foreach(i; 0 .. 4) {
		f.hackerIngverb();
	}
	foreach(i; 0 .. 4) {
		f.hackerNoun();
	}
	foreach(i; 0 .. 4) {
		f.hackerPhrase();
	}
	foreach(i; 0 .. 4) {
		f.hackerVerb();
	}
	foreach(i; 0 .. 4) {
		f.internetDomainSuffix();
	}
	foreach(i; 0 .. 4) {
		f.internetEmoji();
	}
	foreach(i; 0 .. 4) {
		f.internetEmojiActivity();
	}
	foreach(i; 0 .. 4) {
		f.internetEmojiBody();
	}
	foreach(i; 0 .. 4) {
		f.internetEmojiFlag();
	}
	foreach(i; 0 .. 4) {
		f.internetEmojiFood();
	}
	foreach(i; 0 .. 4) {
		f.internetEmojiNature();
	}
	foreach(i; 0 .. 4) {
		f.internetEmojiObject();
	}
	foreach(i; 0 .. 4) {
		f.internetEmojiPerson();
	}
	foreach(i; 0 .. 4) {
		f.internetEmojiSmiley();
	}
	foreach(i; 0 .. 4) {
		f.internetEmojiSymbol();
	}
	foreach(i; 0 .. 4) {
		f.internetEmojiTravel();
	}
	foreach(i; 0 .. 4) {
		f.internetExampleEmail();
	}
	foreach(i; 0 .. 4) {
		f.internetFreeEmail();
	}
	foreach(i; 0 .. 4) {
		f.locationBuildingNumber();
	}
	foreach(i; 0 .. 4) {
		f.locationCity();
	}
	foreach(i; 0 .. 4) {
		f.locationCityName();
	}
	foreach(i; 0 .. 4) {
		f.locationCityPattern();
	}
	foreach(i; 0 .. 4) {
		f.locationCityPrefix();
	}
	foreach(i; 0 .. 4) {
		f.locationCitySuffix();
	}
	foreach(i; 0 .. 4) {
		f.locationCountry();
	}
	foreach(i; 0 .. 4) {
		f.locationCounty();
	}
	foreach(i; 0 .. 4) {
		f.locationDefaultCountry();
	}
	foreach(i; 0 .. 4) {
		f.locationDirection();
	}
	foreach(i; 0 .. 4) {
		f.locationDirectionAbbr();
	}
	foreach(i; 0 .. 4) {
		f.locationPostcode();
	}
	foreach(i; 0 .. 4) {
		f.locationSecondaryAddress();
	}
	foreach(i; 0 .. 4) {
		f.locationState();
	}
	foreach(i; 0 .. 4) {
		f.locationStateAbbr();
	}
	foreach(i; 0 .. 4) {
		f.locationStreetAddress();
	}
	foreach(i; 0 .. 4) {
		f.locationStreetName();
	}
	foreach(i; 0 .. 4) {
		f.locationStreetPattern();
	}
	foreach(i; 0 .. 4) {
		f.locationStreetSuffix();
	}
	foreach(i; 0 .. 4) {
		f.locationTimeZone();
	}
	foreach(i; 0 .. 4) {
		f.loremParagraph();
	}
	foreach(i; 0 .. 4) {
		f.loremParagraphs();
	}
	foreach(i; 0 .. 4) {
		f.loremSentance();
	}
	foreach(i; 0 .. 4) {
		f.loremSentances();
	}
	foreach(i; 0 .. 4) {
		f.loremText();
	}
	foreach(i; 0 .. 4) {
		f.loremWords();
	}
	foreach(i; 0 .. 4) {
		f.musicGenre();
	}
	foreach(i; 0 .. 4) {
		f.musicSongName();
	}
	foreach(i; 0 .. 4) {
		f.personBioPart();
	}
	foreach(i; 0 .. 4) {
		f.personBioPattern();
	}
	foreach(i; 0 .. 4) {
		f.personBioSupporter();
	}
	foreach(i; 0 .. 4) {
		f.personFemaleFirstName();
	}
	foreach(i; 0 .. 4) {
		f.personFemaleMiddleName();
	}
	foreach(i; 0 .. 4) {
		f.personFemalePrefix();
	}
	foreach(i; 0 .. 4) {
		f.personFirstName();
	}
	foreach(i; 0 .. 4) {
		f.personGender();
	}
	foreach(i; 0 .. 4) {
		f.personJobArea();
	}
	foreach(i; 0 .. 4) {
		f.personJobDescriptor();
	}
	foreach(i; 0 .. 4) {
		f.personJobTitlePattern();
	}
	foreach(i; 0 .. 4) {
		f.personJobType();
	}
	foreach(i; 0 .. 4) {
		f.personLastName();
	}
	foreach(i; 0 .. 4) {
		f.personLastNamePattern();
	}
	foreach(i; 0 .. 4) {
		f.personMaleFirstName();
	}
	foreach(i; 0 .. 4) {
		f.personMaleMiddleName();
	}
	foreach(i; 0 .. 4) {
		f.personMalePrefix();
	}
	foreach(i; 0 .. 4) {
		f.personMiddleName();
	}
	foreach(i; 0 .. 4) {
		f.personName();
	}
	foreach(i; 0 .. 4) {
		f.personPrefix();
	}
	foreach(i; 0 .. 4) {
		f.personSex();
	}
	foreach(i; 0 .. 4) {
		f.personSuffix();
	}
	foreach(i; 0 .. 4) {
		f.personTitleDescriptor();
	}
	foreach(i; 0 .. 4) {
		f.personTitleJob();
	}
	foreach(i; 0 .. 4) {
		f.personTitleLevel();
	}
	foreach(i; 0 .. 4) {
		f.personWesternZodiacSign();
	}
	foreach(i; 0 .. 4) {
		f.phoneNumber();
	}
	foreach(i; 0 .. 4) {
		f.phoneNumberFormats();
	}
	foreach(i; 0 .. 4) {
		f.scienceChemicalElement();
	}
	foreach(i; 0 .. 4) {
		f.scienceUnit();
	}
	foreach(i; 0 .. 4) {
		f.systemDirectoryPaths();
	}
	foreach(i; 0 .. 4) {
		f.teamCreature();
	}
	foreach(i; 0 .. 4) {
		f.teamName();
	}
	foreach(i; 0 .. 4) {
		f.vehicleBicycleType();
	}
	foreach(i; 0 .. 4) {
		f.vehicleFuel();
	}
	foreach(i; 0 .. 4) {
		f.vehicleManufacturer();
	}
	foreach(i; 0 .. 4) {
		f.vehicleModel();
	}
	foreach(i; 0 .. 4) {
		f.vehicleType();
	}
	foreach(i; 0 .. 4) {
		f.wordAdjective();
	}
	foreach(i; 0 .. 4) {
		f.wordAdverb();
	}
	foreach(i; 0 .. 4) {
		f.wordConjunction();
	}
	foreach(i; 0 .. 4) {
		f.wordInterjection();
	}
	foreach(i; 0 .. 4) {
		f.wordNoun();
	}
	foreach(i; 0 .. 4) {
		f.wordPreposition();
	}
	foreach(i; 0 .. 4) {
		f.wordVerb();
	}
}

unittest {
	auto f = new Faker_fi(13);

	foreach(i; 0 .. 4) {
		f.airlineAirline();
	}
	foreach(i; 0 .. 4) {
		f.airlineAirplane();
	}
	foreach(i; 0 .. 4) {
		f.airlineAirport();
	}
	foreach(i; 0 .. 4) {
		f.animalBear();
	}
	foreach(i; 0 .. 4) {
		f.animalBird();
	}
	foreach(i; 0 .. 4) {
		f.animalCat();
	}
	foreach(i; 0 .. 4) {
		f.animalCetacean();
	}
	foreach(i; 0 .. 4) {
		f.animalCow();
	}
	foreach(i; 0 .. 4) {
		f.animalCrocodilia();
	}
	foreach(i; 0 .. 4) {
		f.animalDog();
	}
	foreach(i; 0 .. 4) {
		f.animalFish();
	}
	foreach(i; 0 .. 4) {
		f.animalHorse();
	}
	foreach(i; 0 .. 4) {
		f.animalInsect();
	}
	foreach(i; 0 .. 4) {
		f.animalLion();
	}
	foreach(i; 0 .. 4) {
		f.animalRabbit();
	}
	foreach(i; 0 .. 4) {
		f.animalRodent();
	}
	foreach(i; 0 .. 4) {
		f.animalSnake();
	}
	foreach(i; 0 .. 4) {
		f.appAuthor();
	}
	foreach(i; 0 .. 4) {
		f.appName();
	}
	foreach(i; 0 .. 4) {
		f.appVersion();
	}
	foreach(i; 0 .. 4) {
		f.cellPhoneFormats();
	}
	foreach(i; 0 .. 4) {
		f.commerceDepartment();
	}
	foreach(i; 0 .. 4) {
		f.commerceProductDescription();
	}
	foreach(i; 0 .. 4) {
		f.commerceProductNameAdjective();
	}
	foreach(i; 0 .. 4) {
		f.commerceProductNameMaterial();
	}
	foreach(i; 0 .. 4) {
		f.commerceProductNameProduct();
	}
	foreach(i; 0 .. 4) {
		f.companyAdjective();
	}
	foreach(i; 0 .. 4) {
		f.companyBuzzAdjective();
	}
	foreach(i; 0 .. 4) {
		f.companyBuzzNoun();
	}
	foreach(i; 0 .. 4) {
		f.companyBuzzVerb();
	}
	foreach(i; 0 .. 4) {
		f.companyCatchPhrase();
	}
	foreach(i; 0 .. 4) {
		f.companyDescriptor();
	}
	foreach(i; 0 .. 4) {
		f.companyName();
	}
	foreach(i; 0 .. 4) {
		f.companyNamePattern();
	}
	foreach(i; 0 .. 4) {
		f.companyNoun();
	}
	foreach(i; 0 .. 4) {
		f.companySuffix();
	}
	foreach(i; 0 .. 4) {
		f.databaseCollation();
	}
	foreach(i; 0 .. 4) {
		f.databaseColumn();
	}
	foreach(i; 0 .. 4) {
		f.databaseEngine();
	}
	foreach(i; 0 .. 4) {
		f.databaseType();
	}
	foreach(i; 0 .. 4) {
		f.dateMonthAbbr();
	}
	foreach(i; 0 .. 4) {
		f.dateMonthWide();
	}
	foreach(i; 0 .. 4) {
		f.dateWeekdayAbbr();
	}
	foreach(i; 0 .. 4) {
		f.dateWeekdayWide();
	}
	foreach(i; 0 .. 4) {
		f.financeAccountType();
	}
	foreach(i; 0 .. 4) {
		f.financeCreditCardAmericanExpress();
	}
	foreach(i; 0 .. 4) {
		f.financeCreditCardDinersClub();
	}
	foreach(i; 0 .. 4) {
		f.financeCreditCardDiscover();
	}
	foreach(i; 0 .. 4) {
		f.financeCreditCardJcb();
	}
	foreach(i; 0 .. 4) {
		f.financeCreditCardMaestro();
	}
	foreach(i; 0 .. 4) {
		f.financeCreditCardMastercard();
	}
	foreach(i; 0 .. 4) {
		f.financeCreditCardVisa();
	}
	foreach(i; 0 .. 4) {
		f.financeCurrency();
	}
	foreach(i; 0 .. 4) {
		f.financeTransactionType();
	}
	foreach(i; 0 .. 4) {
		f.hackerAbbreviation();
	}
	foreach(i; 0 .. 4) {
		f.hackerAdjective();
	}
	foreach(i; 0 .. 4) {
		f.hackerIngverb();
	}
	foreach(i; 0 .. 4) {
		f.hackerNoun();
	}
	foreach(i; 0 .. 4) {
		f.hackerPhrase();
	}
	foreach(i; 0 .. 4) {
		f.hackerVerb();
	}
	foreach(i; 0 .. 4) {
		f.internetDomainSuffix();
	}
	foreach(i; 0 .. 4) {
		f.internetEmoji();
	}
	foreach(i; 0 .. 4) {
		f.internetEmojiActivity();
	}
	foreach(i; 0 .. 4) {
		f.internetEmojiBody();
	}
	foreach(i; 0 .. 4) {
		f.internetEmojiFlag();
	}
	foreach(i; 0 .. 4) {
		f.internetEmojiFood();
	}
	foreach(i; 0 .. 4) {
		f.internetEmojiNature();
	}
	foreach(i; 0 .. 4) {
		f.internetEmojiObject();
	}
	foreach(i; 0 .. 4) {
		f.internetEmojiPerson();
	}
	foreach(i; 0 .. 4) {
		f.internetEmojiSmiley();
	}
	foreach(i; 0 .. 4) {
		f.internetEmojiSymbol();
	}
	foreach(i; 0 .. 4) {
		f.internetEmojiTravel();
	}
	foreach(i; 0 .. 4) {
		f.internetExampleEmail();
	}
	foreach(i; 0 .. 4) {
		f.internetFreeEmail();
	}
	foreach(i; 0 .. 4) {
		f.locationBuildingNumber();
	}
	foreach(i; 0 .. 4) {
		f.locationCity();
	}
	foreach(i; 0 .. 4) {
		f.locationCityName();
	}
	foreach(i; 0 .. 4) {
		f.locationCityPattern();
	}
	foreach(i; 0 .. 4) {
		f.locationCityPrefix();
	}
	foreach(i; 0 .. 4) {
		f.locationCitySuffix();
	}
	foreach(i; 0 .. 4) {
		f.locationCountry();
	}
	foreach(i; 0 .. 4) {
		f.locationCounty();
	}
	foreach(i; 0 .. 4) {
		f.locationDefaultCountry();
	}
	foreach(i; 0 .. 4) {
		f.locationDirection();
	}
	foreach(i; 0 .. 4) {
		f.locationDirectionAbbr();
	}
	foreach(i; 0 .. 4) {
		f.locationPostcode();
	}
	foreach(i; 0 .. 4) {
		f.locationSecondaryAddress();
	}
	foreach(i; 0 .. 4) {
		f.locationState();
	}
	foreach(i; 0 .. 4) {
		f.locationStateAbbr();
	}
	foreach(i; 0 .. 4) {
		f.locationStreetAddress();
	}
	foreach(i; 0 .. 4) {
		f.locationStreetName();
	}
	foreach(i; 0 .. 4) {
		f.locationStreetPattern();
	}
	foreach(i; 0 .. 4) {
		f.locationStreetSuffix();
	}
	foreach(i; 0 .. 4) {
		f.locationTimeZone();
	}
	foreach(i; 0 .. 4) {
		f.loremParagraph();
	}
	foreach(i; 0 .. 4) {
		f.loremParagraphs();
	}
	foreach(i; 0 .. 4) {
		f.loremSentance();
	}
	foreach(i; 0 .. 4) {
		f.loremSentances();
	}
	foreach(i; 0 .. 4) {
		f.loremText();
	}
	foreach(i; 0 .. 4) {
		f.loremWords();
	}
	foreach(i; 0 .. 4) {
		f.musicGenre();
	}
	foreach(i; 0 .. 4) {
		f.musicSongName();
	}
	foreach(i; 0 .. 4) {
		f.personBioPart();
	}
	foreach(i; 0 .. 4) {
		f.personBioPattern();
	}
	foreach(i; 0 .. 4) {
		f.personBioSupporter();
	}
	foreach(i; 0 .. 4) {
		f.personFemaleFirstName();
	}
	foreach(i; 0 .. 4) {
		f.personFemaleMiddleName();
	}
	foreach(i; 0 .. 4) {
		f.personFemalePrefix();
	}
	foreach(i; 0 .. 4) {
		f.personFirstName();
	}
	foreach(i; 0 .. 4) {
		f.personGender();
	}
	foreach(i; 0 .. 4) {
		f.personJobArea();
	}
	foreach(i; 0 .. 4) {
		f.personJobDescriptor();
	}
	foreach(i; 0 .. 4) {
		f.personJobTitlePattern();
	}
	foreach(i; 0 .. 4) {
		f.personJobType();
	}
	foreach(i; 0 .. 4) {
		f.personLastName();
	}
	foreach(i; 0 .. 4) {
		f.personLastNamePattern();
	}
	foreach(i; 0 .. 4) {
		f.personMaleFirstName();
	}
	foreach(i; 0 .. 4) {
		f.personMaleMiddleName();
	}
	foreach(i; 0 .. 4) {
		f.personMalePrefix();
	}
	foreach(i; 0 .. 4) {
		f.personMiddleName();
	}
	foreach(i; 0 .. 4) {
		f.personName();
	}
	foreach(i; 0 .. 4) {
		f.personPrefix();
	}
	foreach(i; 0 .. 4) {
		f.personSex();
	}
	foreach(i; 0 .. 4) {
		f.personSuffix();
	}
	foreach(i; 0 .. 4) {
		f.personTitleDescriptor();
	}
	foreach(i; 0 .. 4) {
		f.personTitleJob();
	}
	foreach(i; 0 .. 4) {
		f.personTitleLevel();
	}
	foreach(i; 0 .. 4) {
		f.personWesternZodiacSign();
	}
	foreach(i; 0 .. 4) {
		f.phoneNumber();
	}
	foreach(i; 0 .. 4) {
		f.phoneNumberFormats();
	}
	foreach(i; 0 .. 4) {
		f.scienceChemicalElement();
	}
	foreach(i; 0 .. 4) {
		f.scienceUnit();
	}
	foreach(i; 0 .. 4) {
		f.systemDirectoryPaths();
	}
	foreach(i; 0 .. 4) {
		f.teamCreature();
	}
	foreach(i; 0 .. 4) {
		f.teamName();
	}
	foreach(i; 0 .. 4) {
		f.vehicleBicycleType();
	}
	foreach(i; 0 .. 4) {
		f.vehicleFuel();
	}
	foreach(i; 0 .. 4) {
		f.vehicleManufacturer();
	}
	foreach(i; 0 .. 4) {
		f.vehicleModel();
	}
	foreach(i; 0 .. 4) {
		f.vehicleType();
	}
	foreach(i; 0 .. 4) {
		f.wordAdjective();
	}
	foreach(i; 0 .. 4) {
		f.wordAdverb();
	}
	foreach(i; 0 .. 4) {
		f.wordConjunction();
	}
	foreach(i; 0 .. 4) {
		f.wordInterjection();
	}
	foreach(i; 0 .. 4) {
		f.wordNoun();
	}
	foreach(i; 0 .. 4) {
		f.wordPreposition();
	}
	foreach(i; 0 .. 4) {
		f.wordVerb();
	}
}

unittest {
	auto f = new Faker_fr(13);

	foreach(i; 0 .. 4) {
		f.airlineAirline();
	}
	foreach(i; 0 .. 4) {
		f.airlineAirplane();
	}
	foreach(i; 0 .. 4) {
		f.airlineAirport();
	}
	foreach(i; 0 .. 4) {
		f.animalBear();
	}
	foreach(i; 0 .. 4) {
		f.animalBird();
	}
	foreach(i; 0 .. 4) {
		f.animalCat();
	}
	foreach(i; 0 .. 4) {
		f.animalCetacean();
	}
	foreach(i; 0 .. 4) {
		f.animalCow();
	}
	foreach(i; 0 .. 4) {
		f.animalCrocodilia();
	}
	foreach(i; 0 .. 4) {
		f.animalDog();
	}
	foreach(i; 0 .. 4) {
		f.animalFish();
	}
	foreach(i; 0 .. 4) {
		f.animalHorse();
	}
	foreach(i; 0 .. 4) {
		f.animalInsect();
	}
	foreach(i; 0 .. 4) {
		f.animalLion();
	}
	foreach(i; 0 .. 4) {
		f.animalRabbit();
	}
	foreach(i; 0 .. 4) {
		f.animalRodent();
	}
	foreach(i; 0 .. 4) {
		f.animalSnake();
	}
	foreach(i; 0 .. 4) {
		f.appAuthor();
	}
	foreach(i; 0 .. 4) {
		f.appName();
	}
	foreach(i; 0 .. 4) {
		f.appVersion();
	}
	foreach(i; 0 .. 4) {
		f.cellPhoneFormats();
	}
	foreach(i; 0 .. 4) {
		f.commerceDepartment();
	}
	foreach(i; 0 .. 4) {
		f.commerceProductDescription();
	}
	foreach(i; 0 .. 4) {
		f.commerceProductNameAdjective();
	}
	foreach(i; 0 .. 4) {
		f.commerceProductNameMaterial();
	}
	foreach(i; 0 .. 4) {
		f.commerceProductNameProduct();
	}
	foreach(i; 0 .. 4) {
		f.companyAdjective();
	}
	foreach(i; 0 .. 4) {
		f.companyBuzzAdjective();
	}
	foreach(i; 0 .. 4) {
		f.companyBuzzNoun();
	}
	foreach(i; 0 .. 4) {
		f.companyBuzzVerb();
	}
	foreach(i; 0 .. 4) {
		f.companyCatchPhrase();
	}
	foreach(i; 0 .. 4) {
		f.companyDescriptor();
	}
	foreach(i; 0 .. 4) {
		f.companyName();
	}
	foreach(i; 0 .. 4) {
		f.companyNamePattern();
	}
	foreach(i; 0 .. 4) {
		f.companyNoun();
	}
	foreach(i; 0 .. 4) {
		f.companySuffix();
	}
	foreach(i; 0 .. 4) {
		f.databaseCollation();
	}
	foreach(i; 0 .. 4) {
		f.databaseColumn();
	}
	foreach(i; 0 .. 4) {
		f.databaseEngine();
	}
	foreach(i; 0 .. 4) {
		f.databaseType();
	}
	foreach(i; 0 .. 4) {
		f.dateMonthAbbr();
	}
	foreach(i; 0 .. 4) {
		f.dateMonthWide();
	}
	foreach(i; 0 .. 4) {
		f.dateWeekdayAbbr();
	}
	foreach(i; 0 .. 4) {
		f.dateWeekdayWide();
	}
	foreach(i; 0 .. 4) {
		f.financeAccountType();
	}
	foreach(i; 0 .. 4) {
		f.financeCreditCardAmericanExpress();
	}
	foreach(i; 0 .. 4) {
		f.financeCreditCardDinersClub();
	}
	foreach(i; 0 .. 4) {
		f.financeCreditCardDiscover();
	}
	foreach(i; 0 .. 4) {
		f.financeCreditCardJcb();
	}
	foreach(i; 0 .. 4) {
		f.financeCreditCardMaestro();
	}
	foreach(i; 0 .. 4) {
		f.financeCreditCardMastercard();
	}
	foreach(i; 0 .. 4) {
		f.financeCreditCardVisa();
	}
	foreach(i; 0 .. 4) {
		f.financeCurrency();
	}
	foreach(i; 0 .. 4) {
		f.financeTransactionType();
	}
	foreach(i; 0 .. 4) {
		f.hackerAbbreviation();
	}
	foreach(i; 0 .. 4) {
		f.hackerAdjective();
	}
	foreach(i; 0 .. 4) {
		f.hackerIngverb();
	}
	foreach(i; 0 .. 4) {
		f.hackerNoun();
	}
	foreach(i; 0 .. 4) {
		f.hackerPhrase();
	}
	foreach(i; 0 .. 4) {
		f.hackerVerb();
	}
	foreach(i; 0 .. 4) {
		f.internetDomainSuffix();
	}
	foreach(i; 0 .. 4) {
		f.internetEmoji();
	}
	foreach(i; 0 .. 4) {
		f.internetEmojiActivity();
	}
	foreach(i; 0 .. 4) {
		f.internetEmojiBody();
	}
	foreach(i; 0 .. 4) {
		f.internetEmojiFlag();
	}
	foreach(i; 0 .. 4) {
		f.internetEmojiFood();
	}
	foreach(i; 0 .. 4) {
		f.internetEmojiNature();
	}
	foreach(i; 0 .. 4) {
		f.internetEmojiObject();
	}
	foreach(i; 0 .. 4) {
		f.internetEmojiPerson();
	}
	foreach(i; 0 .. 4) {
		f.internetEmojiSmiley();
	}
	foreach(i; 0 .. 4) {
		f.internetEmojiSymbol();
	}
	foreach(i; 0 .. 4) {
		f.internetEmojiTravel();
	}
	foreach(i; 0 .. 4) {
		f.internetExampleEmail();
	}
	foreach(i; 0 .. 4) {
		f.internetFreeEmail();
	}
	foreach(i; 0 .. 4) {
		f.locationBuildingNumber();
	}
	foreach(i; 0 .. 4) {
		f.locationCity();
	}
	foreach(i; 0 .. 4) {
		f.locationCityName();
	}
	foreach(i; 0 .. 4) {
		f.locationCityPattern();
	}
	foreach(i; 0 .. 4) {
		f.locationCityPrefix();
	}
	foreach(i; 0 .. 4) {
		f.locationCitySuffix();
	}
	foreach(i; 0 .. 4) {
		f.locationCountry();
	}
	foreach(i; 0 .. 4) {
		f.locationCounty();
	}
	foreach(i; 0 .. 4) {
		f.locationDefaultCountry();
	}
	foreach(i; 0 .. 4) {
		f.locationDirection();
	}
	foreach(i; 0 .. 4) {
		f.locationDirectionAbbr();
	}
	foreach(i; 0 .. 4) {
		f.locationPostcode();
	}
	foreach(i; 0 .. 4) {
		f.locationSecondaryAddress();
	}
	foreach(i; 0 .. 4) {
		f.locationState();
	}
	foreach(i; 0 .. 4) {
		f.locationStateAbbr();
	}
	foreach(i; 0 .. 4) {
		f.locationStreetAddress();
	}
	foreach(i; 0 .. 4) {
		f.locationStreetName();
	}
	foreach(i; 0 .. 4) {
		f.locationStreetPattern();
	}
	foreach(i; 0 .. 4) {
		f.locationStreetSuffix();
	}
	foreach(i; 0 .. 4) {
		f.locationTimeZone();
	}
	foreach(i; 0 .. 4) {
		f.loremParagraph();
	}
	foreach(i; 0 .. 4) {
		f.loremParagraphs();
	}
	foreach(i; 0 .. 4) {
		f.loremSentance();
	}
	foreach(i; 0 .. 4) {
		f.loremSentances();
	}
	foreach(i; 0 .. 4) {
		f.loremText();
	}
	foreach(i; 0 .. 4) {
		f.loremWords();
	}
	foreach(i; 0 .. 4) {
		f.musicGenre();
	}
	foreach(i; 0 .. 4) {
		f.musicSongName();
	}
	foreach(i; 0 .. 4) {
		f.personBioPart();
	}
	foreach(i; 0 .. 4) {
		f.personBioPattern();
	}
	foreach(i; 0 .. 4) {
		f.personBioSupporter();
	}
	foreach(i; 0 .. 4) {
		f.personFemaleFirstName();
	}
	foreach(i; 0 .. 4) {
		f.personFemaleMiddleName();
	}
	foreach(i; 0 .. 4) {
		f.personFemalePrefix();
	}
	foreach(i; 0 .. 4) {
		f.personFirstName();
	}
	foreach(i; 0 .. 4) {
		f.personGender();
	}
	foreach(i; 0 .. 4) {
		f.personJobArea();
	}
	foreach(i; 0 .. 4) {
		f.personJobDescriptor();
	}
	foreach(i; 0 .. 4) {
		f.personJobTitlePattern();
	}
	foreach(i; 0 .. 4) {
		f.personJobType();
	}
	foreach(i; 0 .. 4) {
		f.personLastName();
	}
	foreach(i; 0 .. 4) {
		f.personLastNamePattern();
	}
	foreach(i; 0 .. 4) {
		f.personMaleFirstName();
	}
	foreach(i; 0 .. 4) {
		f.personMaleMiddleName();
	}
	foreach(i; 0 .. 4) {
		f.personMalePrefix();
	}
	foreach(i; 0 .. 4) {
		f.personMiddleName();
	}
	foreach(i; 0 .. 4) {
		f.personName();
	}
	foreach(i; 0 .. 4) {
		f.personPrefix();
	}
	foreach(i; 0 .. 4) {
		f.personSex();
	}
	foreach(i; 0 .. 4) {
		f.personSuffix();
	}
	foreach(i; 0 .. 4) {
		f.personTitleDescriptor();
	}
	foreach(i; 0 .. 4) {
		f.personTitleJob();
	}
	foreach(i; 0 .. 4) {
		f.personTitleLevel();
	}
	foreach(i; 0 .. 4) {
		f.personWesternZodiacSign();
	}
	foreach(i; 0 .. 4) {
		f.phoneNumber();
	}
	foreach(i; 0 .. 4) {
		f.phoneNumberFormats();
	}
	foreach(i; 0 .. 4) {
		f.scienceChemicalElement();
	}
	foreach(i; 0 .. 4) {
		f.scienceUnit();
	}
	foreach(i; 0 .. 4) {
		f.systemDirectoryPaths();
	}
	foreach(i; 0 .. 4) {
		f.teamCreature();
	}
	foreach(i; 0 .. 4) {
		f.teamName();
	}
	foreach(i; 0 .. 4) {
		f.vehicleBicycleType();
	}
	foreach(i; 0 .. 4) {
		f.vehicleFuel();
	}
	foreach(i; 0 .. 4) {
		f.vehicleManufacturer();
	}
	foreach(i; 0 .. 4) {
		f.vehicleModel();
	}
	foreach(i; 0 .. 4) {
		f.vehicleType();
	}
	foreach(i; 0 .. 4) {
		f.wordAdjective();
	}
	foreach(i; 0 .. 4) {
		f.wordAdverb();
	}
	foreach(i; 0 .. 4) {
		f.wordConjunction();
	}
	foreach(i; 0 .. 4) {
		f.wordInterjection();
	}
	foreach(i; 0 .. 4) {
		f.wordNoun();
	}
	foreach(i; 0 .. 4) {
		f.wordPreposition();
	}
	foreach(i; 0 .. 4) {
		f.wordVerb();
	}
}

unittest {
	auto f = new Faker_fr_be(13);

	foreach(i; 0 .. 4) {
		f.airlineAirline();
	}
	foreach(i; 0 .. 4) {
		f.airlineAirplane();
	}
	foreach(i; 0 .. 4) {
		f.airlineAirport();
	}
	foreach(i; 0 .. 4) {
		f.animalBear();
	}
	foreach(i; 0 .. 4) {
		f.animalBird();
	}
	foreach(i; 0 .. 4) {
		f.animalCat();
	}
	foreach(i; 0 .. 4) {
		f.animalCetacean();
	}
	foreach(i; 0 .. 4) {
		f.animalCow();
	}
	foreach(i; 0 .. 4) {
		f.animalCrocodilia();
	}
	foreach(i; 0 .. 4) {
		f.animalDog();
	}
	foreach(i; 0 .. 4) {
		f.animalFish();
	}
	foreach(i; 0 .. 4) {
		f.animalHorse();
	}
	foreach(i; 0 .. 4) {
		f.animalInsect();
	}
	foreach(i; 0 .. 4) {
		f.animalLion();
	}
	foreach(i; 0 .. 4) {
		f.animalRabbit();
	}
	foreach(i; 0 .. 4) {
		f.animalRodent();
	}
	foreach(i; 0 .. 4) {
		f.animalSnake();
	}
	foreach(i; 0 .. 4) {
		f.appAuthor();
	}
	foreach(i; 0 .. 4) {
		f.appName();
	}
	foreach(i; 0 .. 4) {
		f.appVersion();
	}
	foreach(i; 0 .. 4) {
		f.cellPhoneFormats();
	}
	foreach(i; 0 .. 4) {
		f.commerceDepartment();
	}
	foreach(i; 0 .. 4) {
		f.commerceProductDescription();
	}
	foreach(i; 0 .. 4) {
		f.commerceProductNameAdjective();
	}
	foreach(i; 0 .. 4) {
		f.commerceProductNameMaterial();
	}
	foreach(i; 0 .. 4) {
		f.commerceProductNameProduct();
	}
	foreach(i; 0 .. 4) {
		f.companyAdjective();
	}
	foreach(i; 0 .. 4) {
		f.companyBuzzAdjective();
	}
	foreach(i; 0 .. 4) {
		f.companyBuzzNoun();
	}
	foreach(i; 0 .. 4) {
		f.companyBuzzVerb();
	}
	foreach(i; 0 .. 4) {
		f.companyCatchPhrase();
	}
	foreach(i; 0 .. 4) {
		f.companyDescriptor();
	}
	foreach(i; 0 .. 4) {
		f.companyName();
	}
	foreach(i; 0 .. 4) {
		f.companyNamePattern();
	}
	foreach(i; 0 .. 4) {
		f.companyNoun();
	}
	foreach(i; 0 .. 4) {
		f.companySuffix();
	}
	foreach(i; 0 .. 4) {
		f.databaseCollation();
	}
	foreach(i; 0 .. 4) {
		f.databaseColumn();
	}
	foreach(i; 0 .. 4) {
		f.databaseEngine();
	}
	foreach(i; 0 .. 4) {
		f.databaseType();
	}
	foreach(i; 0 .. 4) {
		f.dateMonthAbbr();
	}
	foreach(i; 0 .. 4) {
		f.dateMonthWide();
	}
	foreach(i; 0 .. 4) {
		f.dateWeekdayAbbr();
	}
	foreach(i; 0 .. 4) {
		f.dateWeekdayWide();
	}
	foreach(i; 0 .. 4) {
		f.financeAccountType();
	}
	foreach(i; 0 .. 4) {
		f.financeCreditCardAmericanExpress();
	}
	foreach(i; 0 .. 4) {
		f.financeCreditCardDinersClub();
	}
	foreach(i; 0 .. 4) {
		f.financeCreditCardDiscover();
	}
	foreach(i; 0 .. 4) {
		f.financeCreditCardJcb();
	}
	foreach(i; 0 .. 4) {
		f.financeCreditCardMaestro();
	}
	foreach(i; 0 .. 4) {
		f.financeCreditCardMastercard();
	}
	foreach(i; 0 .. 4) {
		f.financeCreditCardVisa();
	}
	foreach(i; 0 .. 4) {
		f.financeCurrency();
	}
	foreach(i; 0 .. 4) {
		f.financeTransactionType();
	}
	foreach(i; 0 .. 4) {
		f.hackerAbbreviation();
	}
	foreach(i; 0 .. 4) {
		f.hackerAdjective();
	}
	foreach(i; 0 .. 4) {
		f.hackerIngverb();
	}
	foreach(i; 0 .. 4) {
		f.hackerNoun();
	}
	foreach(i; 0 .. 4) {
		f.hackerPhrase();
	}
	foreach(i; 0 .. 4) {
		f.hackerVerb();
	}
	foreach(i; 0 .. 4) {
		f.internetDomainSuffix();
	}
	foreach(i; 0 .. 4) {
		f.internetEmoji();
	}
	foreach(i; 0 .. 4) {
		f.internetEmojiActivity();
	}
	foreach(i; 0 .. 4) {
		f.internetEmojiBody();
	}
	foreach(i; 0 .. 4) {
		f.internetEmojiFlag();
	}
	foreach(i; 0 .. 4) {
		f.internetEmojiFood();
	}
	foreach(i; 0 .. 4) {
		f.internetEmojiNature();
	}
	foreach(i; 0 .. 4) {
		f.internetEmojiObject();
	}
	foreach(i; 0 .. 4) {
		f.internetEmojiPerson();
	}
	foreach(i; 0 .. 4) {
		f.internetEmojiSmiley();
	}
	foreach(i; 0 .. 4) {
		f.internetEmojiSymbol();
	}
	foreach(i; 0 .. 4) {
		f.internetEmojiTravel();
	}
	foreach(i; 0 .. 4) {
		f.internetExampleEmail();
	}
	foreach(i; 0 .. 4) {
		f.internetFreeEmail();
	}
	foreach(i; 0 .. 4) {
		f.locationBuildingNumber();
	}
	foreach(i; 0 .. 4) {
		f.locationCity();
	}
	foreach(i; 0 .. 4) {
		f.locationCityName();
	}
	foreach(i; 0 .. 4) {
		f.locationCityPattern();
	}
	foreach(i; 0 .. 4) {
		f.locationCityPrefix();
	}
	foreach(i; 0 .. 4) {
		f.locationCitySuffix();
	}
	foreach(i; 0 .. 4) {
		f.locationCountry();
	}
	foreach(i; 0 .. 4) {
		f.locationCounty();
	}
	foreach(i; 0 .. 4) {
		f.locationDefaultCountry();
	}
	foreach(i; 0 .. 4) {
		f.locationDirection();
	}
	foreach(i; 0 .. 4) {
		f.locationDirectionAbbr();
	}
	foreach(i; 0 .. 4) {
		f.locationPostcode();
	}
	foreach(i; 0 .. 4) {
		f.locationSecondaryAddress();
	}
	foreach(i; 0 .. 4) {
		f.locationState();
	}
	foreach(i; 0 .. 4) {
		f.locationStateAbbr();
	}
	foreach(i; 0 .. 4) {
		f.locationStreetAddress();
	}
	foreach(i; 0 .. 4) {
		f.locationStreetName();
	}
	foreach(i; 0 .. 4) {
		f.locationStreetPattern();
	}
	foreach(i; 0 .. 4) {
		f.locationStreetSuffix();
	}
	foreach(i; 0 .. 4) {
		f.locationTimeZone();
	}
	foreach(i; 0 .. 4) {
		f.loremParagraph();
	}
	foreach(i; 0 .. 4) {
		f.loremParagraphs();
	}
	foreach(i; 0 .. 4) {
		f.loremSentance();
	}
	foreach(i; 0 .. 4) {
		f.loremSentances();
	}
	foreach(i; 0 .. 4) {
		f.loremText();
	}
	foreach(i; 0 .. 4) {
		f.loremWords();
	}
	foreach(i; 0 .. 4) {
		f.musicGenre();
	}
	foreach(i; 0 .. 4) {
		f.musicSongName();
	}
	foreach(i; 0 .. 4) {
		f.personBioPart();
	}
	foreach(i; 0 .. 4) {
		f.personBioPattern();
	}
	foreach(i; 0 .. 4) {
		f.personBioSupporter();
	}
	foreach(i; 0 .. 4) {
		f.personFemaleFirstName();
	}
	foreach(i; 0 .. 4) {
		f.personFemaleMiddleName();
	}
	foreach(i; 0 .. 4) {
		f.personFemalePrefix();
	}
	foreach(i; 0 .. 4) {
		f.personFirstName();
	}
	foreach(i; 0 .. 4) {
		f.personGender();
	}
	foreach(i; 0 .. 4) {
		f.personJobArea();
	}
	foreach(i; 0 .. 4) {
		f.personJobDescriptor();
	}
	foreach(i; 0 .. 4) {
		f.personJobTitlePattern();
	}
	foreach(i; 0 .. 4) {
		f.personJobType();
	}
	foreach(i; 0 .. 4) {
		f.personLastName();
	}
	foreach(i; 0 .. 4) {
		f.personLastNamePattern();
	}
	foreach(i; 0 .. 4) {
		f.personMaleFirstName();
	}
	foreach(i; 0 .. 4) {
		f.personMaleMiddleName();
	}
	foreach(i; 0 .. 4) {
		f.personMalePrefix();
	}
	foreach(i; 0 .. 4) {
		f.personMiddleName();
	}
	foreach(i; 0 .. 4) {
		f.personName();
	}
	foreach(i; 0 .. 4) {
		f.personPrefix();
	}
	foreach(i; 0 .. 4) {
		f.personSex();
	}
	foreach(i; 0 .. 4) {
		f.personSuffix();
	}
	foreach(i; 0 .. 4) {
		f.personTitleDescriptor();
	}
	foreach(i; 0 .. 4) {
		f.personTitleJob();
	}
	foreach(i; 0 .. 4) {
		f.personTitleLevel();
	}
	foreach(i; 0 .. 4) {
		f.personWesternZodiacSign();
	}
	foreach(i; 0 .. 4) {
		f.phoneNumber();
	}
	foreach(i; 0 .. 4) {
		f.phoneNumberFormats();
	}
	foreach(i; 0 .. 4) {
		f.scienceChemicalElement();
	}
	foreach(i; 0 .. 4) {
		f.scienceUnit();
	}
	foreach(i; 0 .. 4) {
		f.systemDirectoryPaths();
	}
	foreach(i; 0 .. 4) {
		f.teamCreature();
	}
	foreach(i; 0 .. 4) {
		f.teamName();
	}
	foreach(i; 0 .. 4) {
		f.vehicleBicycleType();
	}
	foreach(i; 0 .. 4) {
		f.vehicleFuel();
	}
	foreach(i; 0 .. 4) {
		f.vehicleManufacturer();
	}
	foreach(i; 0 .. 4) {
		f.vehicleModel();
	}
	foreach(i; 0 .. 4) {
		f.vehicleType();
	}
	foreach(i; 0 .. 4) {
		f.wordAdjective();
	}
	foreach(i; 0 .. 4) {
		f.wordAdverb();
	}
	foreach(i; 0 .. 4) {
		f.wordConjunction();
	}
	foreach(i; 0 .. 4) {
		f.wordInterjection();
	}
	foreach(i; 0 .. 4) {
		f.wordNoun();
	}
	foreach(i; 0 .. 4) {
		f.wordPreposition();
	}
	foreach(i; 0 .. 4) {
		f.wordVerb();
	}
}

unittest {
	auto f = new Faker_fr_ca(13);

	foreach(i; 0 .. 4) {
		f.airlineAirline();
	}
	foreach(i; 0 .. 4) {
		f.airlineAirplane();
	}
	foreach(i; 0 .. 4) {
		f.airlineAirport();
	}
	foreach(i; 0 .. 4) {
		f.animalBear();
	}
	foreach(i; 0 .. 4) {
		f.animalBird();
	}
	foreach(i; 0 .. 4) {
		f.animalCat();
	}
	foreach(i; 0 .. 4) {
		f.animalCetacean();
	}
	foreach(i; 0 .. 4) {
		f.animalCow();
	}
	foreach(i; 0 .. 4) {
		f.animalCrocodilia();
	}
	foreach(i; 0 .. 4) {
		f.animalDog();
	}
	foreach(i; 0 .. 4) {
		f.animalFish();
	}
	foreach(i; 0 .. 4) {
		f.animalHorse();
	}
	foreach(i; 0 .. 4) {
		f.animalInsect();
	}
	foreach(i; 0 .. 4) {
		f.animalLion();
	}
	foreach(i; 0 .. 4) {
		f.animalRabbit();
	}
	foreach(i; 0 .. 4) {
		f.animalRodent();
	}
	foreach(i; 0 .. 4) {
		f.animalSnake();
	}
	foreach(i; 0 .. 4) {
		f.appAuthor();
	}
	foreach(i; 0 .. 4) {
		f.appName();
	}
	foreach(i; 0 .. 4) {
		f.appVersion();
	}
	foreach(i; 0 .. 4) {
		f.cellPhoneFormats();
	}
	foreach(i; 0 .. 4) {
		f.commerceDepartment();
	}
	foreach(i; 0 .. 4) {
		f.commerceProductDescription();
	}
	foreach(i; 0 .. 4) {
		f.commerceProductNameAdjective();
	}
	foreach(i; 0 .. 4) {
		f.commerceProductNameMaterial();
	}
	foreach(i; 0 .. 4) {
		f.commerceProductNameProduct();
	}
	foreach(i; 0 .. 4) {
		f.companyAdjective();
	}
	foreach(i; 0 .. 4) {
		f.companyBuzzAdjective();
	}
	foreach(i; 0 .. 4) {
		f.companyBuzzNoun();
	}
	foreach(i; 0 .. 4) {
		f.companyBuzzVerb();
	}
	foreach(i; 0 .. 4) {
		f.companyCatchPhrase();
	}
	foreach(i; 0 .. 4) {
		f.companyDescriptor();
	}
	foreach(i; 0 .. 4) {
		f.companyName();
	}
	foreach(i; 0 .. 4) {
		f.companyNamePattern();
	}
	foreach(i; 0 .. 4) {
		f.companyNoun();
	}
	foreach(i; 0 .. 4) {
		f.companySuffix();
	}
	foreach(i; 0 .. 4) {
		f.databaseCollation();
	}
	foreach(i; 0 .. 4) {
		f.databaseColumn();
	}
	foreach(i; 0 .. 4) {
		f.databaseEngine();
	}
	foreach(i; 0 .. 4) {
		f.databaseType();
	}
	foreach(i; 0 .. 4) {
		f.dateMonthAbbr();
	}
	foreach(i; 0 .. 4) {
		f.dateMonthWide();
	}
	foreach(i; 0 .. 4) {
		f.dateWeekdayAbbr();
	}
	foreach(i; 0 .. 4) {
		f.dateWeekdayWide();
	}
	foreach(i; 0 .. 4) {
		f.financeAccountType();
	}
	foreach(i; 0 .. 4) {
		f.financeCreditCardAmericanExpress();
	}
	foreach(i; 0 .. 4) {
		f.financeCreditCardDinersClub();
	}
	foreach(i; 0 .. 4) {
		f.financeCreditCardDiscover();
	}
	foreach(i; 0 .. 4) {
		f.financeCreditCardJcb();
	}
	foreach(i; 0 .. 4) {
		f.financeCreditCardMaestro();
	}
	foreach(i; 0 .. 4) {
		f.financeCreditCardMastercard();
	}
	foreach(i; 0 .. 4) {
		f.financeCreditCardVisa();
	}
	foreach(i; 0 .. 4) {
		f.financeCurrency();
	}
	foreach(i; 0 .. 4) {
		f.financeTransactionType();
	}
	foreach(i; 0 .. 4) {
		f.hackerAbbreviation();
	}
	foreach(i; 0 .. 4) {
		f.hackerAdjective();
	}
	foreach(i; 0 .. 4) {
		f.hackerIngverb();
	}
	foreach(i; 0 .. 4) {
		f.hackerNoun();
	}
	foreach(i; 0 .. 4) {
		f.hackerPhrase();
	}
	foreach(i; 0 .. 4) {
		f.hackerVerb();
	}
	foreach(i; 0 .. 4) {
		f.internetDomainSuffix();
	}
	foreach(i; 0 .. 4) {
		f.internetEmoji();
	}
	foreach(i; 0 .. 4) {
		f.internetEmojiActivity();
	}
	foreach(i; 0 .. 4) {
		f.internetEmojiBody();
	}
	foreach(i; 0 .. 4) {
		f.internetEmojiFlag();
	}
	foreach(i; 0 .. 4) {
		f.internetEmojiFood();
	}
	foreach(i; 0 .. 4) {
		f.internetEmojiNature();
	}
	foreach(i; 0 .. 4) {
		f.internetEmojiObject();
	}
	foreach(i; 0 .. 4) {
		f.internetEmojiPerson();
	}
	foreach(i; 0 .. 4) {
		f.internetEmojiSmiley();
	}
	foreach(i; 0 .. 4) {
		f.internetEmojiSymbol();
	}
	foreach(i; 0 .. 4) {
		f.internetEmojiTravel();
	}
	foreach(i; 0 .. 4) {
		f.internetExampleEmail();
	}
	foreach(i; 0 .. 4) {
		f.internetFreeEmail();
	}
	foreach(i; 0 .. 4) {
		f.locationBuildingNumber();
	}
	foreach(i; 0 .. 4) {
		f.locationCity();
	}
	foreach(i; 0 .. 4) {
		f.locationCityName();
	}
	foreach(i; 0 .. 4) {
		f.locationCityPattern();
	}
	foreach(i; 0 .. 4) {
		f.locationCityPrefix();
	}
	foreach(i; 0 .. 4) {
		f.locationCitySuffix();
	}
	foreach(i; 0 .. 4) {
		f.locationCountry();
	}
	foreach(i; 0 .. 4) {
		f.locationCounty();
	}
	foreach(i; 0 .. 4) {
		f.locationDefaultCountry();
	}
	foreach(i; 0 .. 4) {
		f.locationDirection();
	}
	foreach(i; 0 .. 4) {
		f.locationDirectionAbbr();
	}
	foreach(i; 0 .. 4) {
		f.locationPostcode();
	}
	foreach(i; 0 .. 4) {
		f.locationSecondaryAddress();
	}
	foreach(i; 0 .. 4) {
		f.locationState();
	}
	foreach(i; 0 .. 4) {
		f.locationStateAbbr();
	}
	foreach(i; 0 .. 4) {
		f.locationStreetAddress();
	}
	foreach(i; 0 .. 4) {
		f.locationStreetName();
	}
	foreach(i; 0 .. 4) {
		f.locationStreetPattern();
	}
	foreach(i; 0 .. 4) {
		f.locationStreetSuffix();
	}
	foreach(i; 0 .. 4) {
		f.locationTimeZone();
	}
	foreach(i; 0 .. 4) {
		f.loremParagraph();
	}
	foreach(i; 0 .. 4) {
		f.loremParagraphs();
	}
	foreach(i; 0 .. 4) {
		f.loremSentance();
	}
	foreach(i; 0 .. 4) {
		f.loremSentances();
	}
	foreach(i; 0 .. 4) {
		f.loremText();
	}
	foreach(i; 0 .. 4) {
		f.loremWords();
	}
	foreach(i; 0 .. 4) {
		f.musicGenre();
	}
	foreach(i; 0 .. 4) {
		f.musicSongName();
	}
	foreach(i; 0 .. 4) {
		f.personBioPart();
	}
	foreach(i; 0 .. 4) {
		f.personBioPattern();
	}
	foreach(i; 0 .. 4) {
		f.personBioSupporter();
	}
	foreach(i; 0 .. 4) {
		f.personFemaleFirstName();
	}
	foreach(i; 0 .. 4) {
		f.personFemaleMiddleName();
	}
	foreach(i; 0 .. 4) {
		f.personFemalePrefix();
	}
	foreach(i; 0 .. 4) {
		f.personFirstName();
	}
	foreach(i; 0 .. 4) {
		f.personGender();
	}
	foreach(i; 0 .. 4) {
		f.personJobArea();
	}
	foreach(i; 0 .. 4) {
		f.personJobDescriptor();
	}
	foreach(i; 0 .. 4) {
		f.personJobTitlePattern();
	}
	foreach(i; 0 .. 4) {
		f.personJobType();
	}
	foreach(i; 0 .. 4) {
		f.personLastName();
	}
	foreach(i; 0 .. 4) {
		f.personLastNamePattern();
	}
	foreach(i; 0 .. 4) {
		f.personMaleFirstName();
	}
	foreach(i; 0 .. 4) {
		f.personMaleMiddleName();
	}
	foreach(i; 0 .. 4) {
		f.personMalePrefix();
	}
	foreach(i; 0 .. 4) {
		f.personMiddleName();
	}
	foreach(i; 0 .. 4) {
		f.personName();
	}
	foreach(i; 0 .. 4) {
		f.personPrefix();
	}
	foreach(i; 0 .. 4) {
		f.personSex();
	}
	foreach(i; 0 .. 4) {
		f.personSuffix();
	}
	foreach(i; 0 .. 4) {
		f.personTitleDescriptor();
	}
	foreach(i; 0 .. 4) {
		f.personTitleJob();
	}
	foreach(i; 0 .. 4) {
		f.personTitleLevel();
	}
	foreach(i; 0 .. 4) {
		f.personWesternZodiacSign();
	}
	foreach(i; 0 .. 4) {
		f.phoneNumber();
	}
	foreach(i; 0 .. 4) {
		f.phoneNumberFormats();
	}
	foreach(i; 0 .. 4) {
		f.scienceChemicalElement();
	}
	foreach(i; 0 .. 4) {
		f.scienceUnit();
	}
	foreach(i; 0 .. 4) {
		f.systemDirectoryPaths();
	}
	foreach(i; 0 .. 4) {
		f.teamCreature();
	}
	foreach(i; 0 .. 4) {
		f.teamName();
	}
	foreach(i; 0 .. 4) {
		f.vehicleBicycleType();
	}
	foreach(i; 0 .. 4) {
		f.vehicleFuel();
	}
	foreach(i; 0 .. 4) {
		f.vehicleManufacturer();
	}
	foreach(i; 0 .. 4) {
		f.vehicleModel();
	}
	foreach(i; 0 .. 4) {
		f.vehicleType();
	}
	foreach(i; 0 .. 4) {
		f.wordAdjective();
	}
	foreach(i; 0 .. 4) {
		f.wordAdverb();
	}
	foreach(i; 0 .. 4) {
		f.wordConjunction();
	}
	foreach(i; 0 .. 4) {
		f.wordInterjection();
	}
	foreach(i; 0 .. 4) {
		f.wordNoun();
	}
	foreach(i; 0 .. 4) {
		f.wordPreposition();
	}
	foreach(i; 0 .. 4) {
		f.wordVerb();
	}
}

unittest {
	auto f = new Faker_fr_ch(13);

	foreach(i; 0 .. 4) {
		f.airlineAirline();
	}
	foreach(i; 0 .. 4) {
		f.airlineAirplane();
	}
	foreach(i; 0 .. 4) {
		f.airlineAirport();
	}
	foreach(i; 0 .. 4) {
		f.animalBear();
	}
	foreach(i; 0 .. 4) {
		f.animalBird();
	}
	foreach(i; 0 .. 4) {
		f.animalCat();
	}
	foreach(i; 0 .. 4) {
		f.animalCetacean();
	}
	foreach(i; 0 .. 4) {
		f.animalCow();
	}
	foreach(i; 0 .. 4) {
		f.animalCrocodilia();
	}
	foreach(i; 0 .. 4) {
		f.animalDog();
	}
	foreach(i; 0 .. 4) {
		f.animalFish();
	}
	foreach(i; 0 .. 4) {
		f.animalHorse();
	}
	foreach(i; 0 .. 4) {
		f.animalInsect();
	}
	foreach(i; 0 .. 4) {
		f.animalLion();
	}
	foreach(i; 0 .. 4) {
		f.animalRabbit();
	}
	foreach(i; 0 .. 4) {
		f.animalRodent();
	}
	foreach(i; 0 .. 4) {
		f.animalSnake();
	}
	foreach(i; 0 .. 4) {
		f.appAuthor();
	}
	foreach(i; 0 .. 4) {
		f.appName();
	}
	foreach(i; 0 .. 4) {
		f.appVersion();
	}
	foreach(i; 0 .. 4) {
		f.cellPhoneFormats();
	}
	foreach(i; 0 .. 4) {
		f.commerceDepartment();
	}
	foreach(i; 0 .. 4) {
		f.commerceProductDescription();
	}
	foreach(i; 0 .. 4) {
		f.commerceProductNameAdjective();
	}
	foreach(i; 0 .. 4) {
		f.commerceProductNameMaterial();
	}
	foreach(i; 0 .. 4) {
		f.commerceProductNameProduct();
	}
	foreach(i; 0 .. 4) {
		f.companyAdjective();
	}
	foreach(i; 0 .. 4) {
		f.companyBuzzAdjective();
	}
	foreach(i; 0 .. 4) {
		f.companyBuzzNoun();
	}
	foreach(i; 0 .. 4) {
		f.companyBuzzVerb();
	}
	foreach(i; 0 .. 4) {
		f.companyCatchPhrase();
	}
	foreach(i; 0 .. 4) {
		f.companyDescriptor();
	}
	foreach(i; 0 .. 4) {
		f.companyName();
	}
	foreach(i; 0 .. 4) {
		f.companyNamePattern();
	}
	foreach(i; 0 .. 4) {
		f.companyNoun();
	}
	foreach(i; 0 .. 4) {
		f.companySuffix();
	}
	foreach(i; 0 .. 4) {
		f.databaseCollation();
	}
	foreach(i; 0 .. 4) {
		f.databaseColumn();
	}
	foreach(i; 0 .. 4) {
		f.databaseEngine();
	}
	foreach(i; 0 .. 4) {
		f.databaseType();
	}
	foreach(i; 0 .. 4) {
		f.dateMonthAbbr();
	}
	foreach(i; 0 .. 4) {
		f.dateMonthWide();
	}
	foreach(i; 0 .. 4) {
		f.dateWeekdayAbbr();
	}
	foreach(i; 0 .. 4) {
		f.dateWeekdayWide();
	}
	foreach(i; 0 .. 4) {
		f.financeAccountType();
	}
	foreach(i; 0 .. 4) {
		f.financeCreditCardAmericanExpress();
	}
	foreach(i; 0 .. 4) {
		f.financeCreditCardDinersClub();
	}
	foreach(i; 0 .. 4) {
		f.financeCreditCardDiscover();
	}
	foreach(i; 0 .. 4) {
		f.financeCreditCardJcb();
	}
	foreach(i; 0 .. 4) {
		f.financeCreditCardMaestro();
	}
	foreach(i; 0 .. 4) {
		f.financeCreditCardMastercard();
	}
	foreach(i; 0 .. 4) {
		f.financeCreditCardVisa();
	}
	foreach(i; 0 .. 4) {
		f.financeCurrency();
	}
	foreach(i; 0 .. 4) {
		f.financeTransactionType();
	}
	foreach(i; 0 .. 4) {
		f.hackerAbbreviation();
	}
	foreach(i; 0 .. 4) {
		f.hackerAdjective();
	}
	foreach(i; 0 .. 4) {
		f.hackerIngverb();
	}
	foreach(i; 0 .. 4) {
		f.hackerNoun();
	}
	foreach(i; 0 .. 4) {
		f.hackerPhrase();
	}
	foreach(i; 0 .. 4) {
		f.hackerVerb();
	}
	foreach(i; 0 .. 4) {
		f.internetDomainSuffix();
	}
	foreach(i; 0 .. 4) {
		f.internetEmoji();
	}
	foreach(i; 0 .. 4) {
		f.internetEmojiActivity();
	}
	foreach(i; 0 .. 4) {
		f.internetEmojiBody();
	}
	foreach(i; 0 .. 4) {
		f.internetEmojiFlag();
	}
	foreach(i; 0 .. 4) {
		f.internetEmojiFood();
	}
	foreach(i; 0 .. 4) {
		f.internetEmojiNature();
	}
	foreach(i; 0 .. 4) {
		f.internetEmojiObject();
	}
	foreach(i; 0 .. 4) {
		f.internetEmojiPerson();
	}
	foreach(i; 0 .. 4) {
		f.internetEmojiSmiley();
	}
	foreach(i; 0 .. 4) {
		f.internetEmojiSymbol();
	}
	foreach(i; 0 .. 4) {
		f.internetEmojiTravel();
	}
	foreach(i; 0 .. 4) {
		f.internetExampleEmail();
	}
	foreach(i; 0 .. 4) {
		f.internetFreeEmail();
	}
	foreach(i; 0 .. 4) {
		f.locationBuildingNumber();
	}
	foreach(i; 0 .. 4) {
		f.locationCity();
	}
	foreach(i; 0 .. 4) {
		f.locationCityName();
	}
	foreach(i; 0 .. 4) {
		f.locationCityPattern();
	}
	foreach(i; 0 .. 4) {
		f.locationCityPrefix();
	}
	foreach(i; 0 .. 4) {
		f.locationCitySuffix();
	}
	foreach(i; 0 .. 4) {
		f.locationCountry();
	}
	foreach(i; 0 .. 4) {
		f.locationCounty();
	}
	foreach(i; 0 .. 4) {
		f.locationDefaultCountry();
	}
	foreach(i; 0 .. 4) {
		f.locationDirection();
	}
	foreach(i; 0 .. 4) {
		f.locationDirectionAbbr();
	}
	foreach(i; 0 .. 4) {
		f.locationPostcode();
	}
	foreach(i; 0 .. 4) {
		f.locationSecondaryAddress();
	}
	foreach(i; 0 .. 4) {
		f.locationState();
	}
	foreach(i; 0 .. 4) {
		f.locationStateAbbr();
	}
	foreach(i; 0 .. 4) {
		f.locationStreetAddress();
	}
	foreach(i; 0 .. 4) {
		f.locationStreetName();
	}
	foreach(i; 0 .. 4) {
		f.locationStreetPattern();
	}
	foreach(i; 0 .. 4) {
		f.locationStreetSuffix();
	}
	foreach(i; 0 .. 4) {
		f.locationTimeZone();
	}
	foreach(i; 0 .. 4) {
		f.loremParagraph();
	}
	foreach(i; 0 .. 4) {
		f.loremParagraphs();
	}
	foreach(i; 0 .. 4) {
		f.loremSentance();
	}
	foreach(i; 0 .. 4) {
		f.loremSentances();
	}
	foreach(i; 0 .. 4) {
		f.loremText();
	}
	foreach(i; 0 .. 4) {
		f.loremWords();
	}
	foreach(i; 0 .. 4) {
		f.musicGenre();
	}
	foreach(i; 0 .. 4) {
		f.musicSongName();
	}
	foreach(i; 0 .. 4) {
		f.personBioPart();
	}
	foreach(i; 0 .. 4) {
		f.personBioPattern();
	}
	foreach(i; 0 .. 4) {
		f.personBioSupporter();
	}
	foreach(i; 0 .. 4) {
		f.personFemaleFirstName();
	}
	foreach(i; 0 .. 4) {
		f.personFemaleMiddleName();
	}
	foreach(i; 0 .. 4) {
		f.personFemalePrefix();
	}
	foreach(i; 0 .. 4) {
		f.personFirstName();
	}
	foreach(i; 0 .. 4) {
		f.personGender();
	}
	foreach(i; 0 .. 4) {
		f.personJobArea();
	}
	foreach(i; 0 .. 4) {
		f.personJobDescriptor();
	}
	foreach(i; 0 .. 4) {
		f.personJobTitlePattern();
	}
	foreach(i; 0 .. 4) {
		f.personJobType();
	}
	foreach(i; 0 .. 4) {
		f.personLastName();
	}
	foreach(i; 0 .. 4) {
		f.personLastNamePattern();
	}
	foreach(i; 0 .. 4) {
		f.personMaleFirstName();
	}
	foreach(i; 0 .. 4) {
		f.personMaleMiddleName();
	}
	foreach(i; 0 .. 4) {
		f.personMalePrefix();
	}
	foreach(i; 0 .. 4) {
		f.personMiddleName();
	}
	foreach(i; 0 .. 4) {
		f.personName();
	}
	foreach(i; 0 .. 4) {
		f.personPrefix();
	}
	foreach(i; 0 .. 4) {
		f.personSex();
	}
	foreach(i; 0 .. 4) {
		f.personSuffix();
	}
	foreach(i; 0 .. 4) {
		f.personTitleDescriptor();
	}
	foreach(i; 0 .. 4) {
		f.personTitleJob();
	}
	foreach(i; 0 .. 4) {
		f.personTitleLevel();
	}
	foreach(i; 0 .. 4) {
		f.personWesternZodiacSign();
	}
	foreach(i; 0 .. 4) {
		f.phoneNumber();
	}
	foreach(i; 0 .. 4) {
		f.phoneNumberFormats();
	}
	foreach(i; 0 .. 4) {
		f.scienceChemicalElement();
	}
	foreach(i; 0 .. 4) {
		f.scienceUnit();
	}
	foreach(i; 0 .. 4) {
		f.systemDirectoryPaths();
	}
	foreach(i; 0 .. 4) {
		f.teamCreature();
	}
	foreach(i; 0 .. 4) {
		f.teamName();
	}
	foreach(i; 0 .. 4) {
		f.vehicleBicycleType();
	}
	foreach(i; 0 .. 4) {
		f.vehicleFuel();
	}
	foreach(i; 0 .. 4) {
		f.vehicleManufacturer();
	}
	foreach(i; 0 .. 4) {
		f.vehicleModel();
	}
	foreach(i; 0 .. 4) {
		f.vehicleType();
	}
	foreach(i; 0 .. 4) {
		f.wordAdjective();
	}
	foreach(i; 0 .. 4) {
		f.wordAdverb();
	}
	foreach(i; 0 .. 4) {
		f.wordConjunction();
	}
	foreach(i; 0 .. 4) {
		f.wordInterjection();
	}
	foreach(i; 0 .. 4) {
		f.wordNoun();
	}
	foreach(i; 0 .. 4) {
		f.wordPreposition();
	}
	foreach(i; 0 .. 4) {
		f.wordVerb();
	}
}

unittest {
	auto f = new Faker_fr_lu(13);

	foreach(i; 0 .. 4) {
		f.airlineAirline();
	}
	foreach(i; 0 .. 4) {
		f.airlineAirplane();
	}
	foreach(i; 0 .. 4) {
		f.airlineAirport();
	}
	foreach(i; 0 .. 4) {
		f.animalBear();
	}
	foreach(i; 0 .. 4) {
		f.animalBird();
	}
	foreach(i; 0 .. 4) {
		f.animalCat();
	}
	foreach(i; 0 .. 4) {
		f.animalCetacean();
	}
	foreach(i; 0 .. 4) {
		f.animalCow();
	}
	foreach(i; 0 .. 4) {
		f.animalCrocodilia();
	}
	foreach(i; 0 .. 4) {
		f.animalDog();
	}
	foreach(i; 0 .. 4) {
		f.animalFish();
	}
	foreach(i; 0 .. 4) {
		f.animalHorse();
	}
	foreach(i; 0 .. 4) {
		f.animalInsect();
	}
	foreach(i; 0 .. 4) {
		f.animalLion();
	}
	foreach(i; 0 .. 4) {
		f.animalRabbit();
	}
	foreach(i; 0 .. 4) {
		f.animalRodent();
	}
	foreach(i; 0 .. 4) {
		f.animalSnake();
	}
	foreach(i; 0 .. 4) {
		f.appAuthor();
	}
	foreach(i; 0 .. 4) {
		f.appName();
	}
	foreach(i; 0 .. 4) {
		f.appVersion();
	}
	foreach(i; 0 .. 4) {
		f.cellPhoneFormats();
	}
	foreach(i; 0 .. 4) {
		f.commerceDepartment();
	}
	foreach(i; 0 .. 4) {
		f.commerceProductDescription();
	}
	foreach(i; 0 .. 4) {
		f.commerceProductNameAdjective();
	}
	foreach(i; 0 .. 4) {
		f.commerceProductNameMaterial();
	}
	foreach(i; 0 .. 4) {
		f.commerceProductNameProduct();
	}
	foreach(i; 0 .. 4) {
		f.companyAdjective();
	}
	foreach(i; 0 .. 4) {
		f.companyBuzzAdjective();
	}
	foreach(i; 0 .. 4) {
		f.companyBuzzNoun();
	}
	foreach(i; 0 .. 4) {
		f.companyBuzzVerb();
	}
	foreach(i; 0 .. 4) {
		f.companyCatchPhrase();
	}
	foreach(i; 0 .. 4) {
		f.companyDescriptor();
	}
	foreach(i; 0 .. 4) {
		f.companyName();
	}
	foreach(i; 0 .. 4) {
		f.companyNamePattern();
	}
	foreach(i; 0 .. 4) {
		f.companyNoun();
	}
	foreach(i; 0 .. 4) {
		f.companySuffix();
	}
	foreach(i; 0 .. 4) {
		f.databaseCollation();
	}
	foreach(i; 0 .. 4) {
		f.databaseColumn();
	}
	foreach(i; 0 .. 4) {
		f.databaseEngine();
	}
	foreach(i; 0 .. 4) {
		f.databaseType();
	}
	foreach(i; 0 .. 4) {
		f.dateMonthAbbr();
	}
	foreach(i; 0 .. 4) {
		f.dateMonthWide();
	}
	foreach(i; 0 .. 4) {
		f.dateWeekdayAbbr();
	}
	foreach(i; 0 .. 4) {
		f.dateWeekdayWide();
	}
	foreach(i; 0 .. 4) {
		f.financeAccountType();
	}
	foreach(i; 0 .. 4) {
		f.financeCreditCardAmericanExpress();
	}
	foreach(i; 0 .. 4) {
		f.financeCreditCardDinersClub();
	}
	foreach(i; 0 .. 4) {
		f.financeCreditCardDiscover();
	}
	foreach(i; 0 .. 4) {
		f.financeCreditCardJcb();
	}
	foreach(i; 0 .. 4) {
		f.financeCreditCardMaestro();
	}
	foreach(i; 0 .. 4) {
		f.financeCreditCardMastercard();
	}
	foreach(i; 0 .. 4) {
		f.financeCreditCardVisa();
	}
	foreach(i; 0 .. 4) {
		f.financeCurrency();
	}
	foreach(i; 0 .. 4) {
		f.financeTransactionType();
	}
	foreach(i; 0 .. 4) {
		f.hackerAbbreviation();
	}
	foreach(i; 0 .. 4) {
		f.hackerAdjective();
	}
	foreach(i; 0 .. 4) {
		f.hackerIngverb();
	}
	foreach(i; 0 .. 4) {
		f.hackerNoun();
	}
	foreach(i; 0 .. 4) {
		f.hackerPhrase();
	}
	foreach(i; 0 .. 4) {
		f.hackerVerb();
	}
	foreach(i; 0 .. 4) {
		f.internetDomainSuffix();
	}
	foreach(i; 0 .. 4) {
		f.internetEmoji();
	}
	foreach(i; 0 .. 4) {
		f.internetEmojiActivity();
	}
	foreach(i; 0 .. 4) {
		f.internetEmojiBody();
	}
	foreach(i; 0 .. 4) {
		f.internetEmojiFlag();
	}
	foreach(i; 0 .. 4) {
		f.internetEmojiFood();
	}
	foreach(i; 0 .. 4) {
		f.internetEmojiNature();
	}
	foreach(i; 0 .. 4) {
		f.internetEmojiObject();
	}
	foreach(i; 0 .. 4) {
		f.internetEmojiPerson();
	}
	foreach(i; 0 .. 4) {
		f.internetEmojiSmiley();
	}
	foreach(i; 0 .. 4) {
		f.internetEmojiSymbol();
	}
	foreach(i; 0 .. 4) {
		f.internetEmojiTravel();
	}
	foreach(i; 0 .. 4) {
		f.internetExampleEmail();
	}
	foreach(i; 0 .. 4) {
		f.internetFreeEmail();
	}
	foreach(i; 0 .. 4) {
		f.locationBuildingNumber();
	}
	foreach(i; 0 .. 4) {
		f.locationCity();
	}
	foreach(i; 0 .. 4) {
		f.locationCityName();
	}
	foreach(i; 0 .. 4) {
		f.locationCityPattern();
	}
	foreach(i; 0 .. 4) {
		f.locationCityPrefix();
	}
	foreach(i; 0 .. 4) {
		f.locationCitySuffix();
	}
	foreach(i; 0 .. 4) {
		f.locationCountry();
	}
	foreach(i; 0 .. 4) {
		f.locationCounty();
	}
	foreach(i; 0 .. 4) {
		f.locationDefaultCountry();
	}
	foreach(i; 0 .. 4) {
		f.locationDirection();
	}
	foreach(i; 0 .. 4) {
		f.locationDirectionAbbr();
	}
	foreach(i; 0 .. 4) {
		f.locationPostcode();
	}
	foreach(i; 0 .. 4) {
		f.locationSecondaryAddress();
	}
	foreach(i; 0 .. 4) {
		f.locationState();
	}
	foreach(i; 0 .. 4) {
		f.locationStateAbbr();
	}
	foreach(i; 0 .. 4) {
		f.locationStreetAddress();
	}
	foreach(i; 0 .. 4) {
		f.locationStreetName();
	}
	foreach(i; 0 .. 4) {
		f.locationStreetPattern();
	}
	foreach(i; 0 .. 4) {
		f.locationStreetSuffix();
	}
	foreach(i; 0 .. 4) {
		f.locationTimeZone();
	}
	foreach(i; 0 .. 4) {
		f.loremParagraph();
	}
	foreach(i; 0 .. 4) {
		f.loremParagraphs();
	}
	foreach(i; 0 .. 4) {
		f.loremSentance();
	}
	foreach(i; 0 .. 4) {
		f.loremSentances();
	}
	foreach(i; 0 .. 4) {
		f.loremText();
	}
	foreach(i; 0 .. 4) {
		f.loremWords();
	}
	foreach(i; 0 .. 4) {
		f.musicGenre();
	}
	foreach(i; 0 .. 4) {
		f.musicSongName();
	}
	foreach(i; 0 .. 4) {
		f.personBioPart();
	}
	foreach(i; 0 .. 4) {
		f.personBioPattern();
	}
	foreach(i; 0 .. 4) {
		f.personBioSupporter();
	}
	foreach(i; 0 .. 4) {
		f.personFemaleFirstName();
	}
	foreach(i; 0 .. 4) {
		f.personFemaleMiddleName();
	}
	foreach(i; 0 .. 4) {
		f.personFemalePrefix();
	}
	foreach(i; 0 .. 4) {
		f.personFirstName();
	}
	foreach(i; 0 .. 4) {
		f.personGender();
	}
	foreach(i; 0 .. 4) {
		f.personJobArea();
	}
	foreach(i; 0 .. 4) {
		f.personJobDescriptor();
	}
	foreach(i; 0 .. 4) {
		f.personJobTitlePattern();
	}
	foreach(i; 0 .. 4) {
		f.personJobType();
	}
	foreach(i; 0 .. 4) {
		f.personLastName();
	}
	foreach(i; 0 .. 4) {
		f.personLastNamePattern();
	}
	foreach(i; 0 .. 4) {
		f.personMaleFirstName();
	}
	foreach(i; 0 .. 4) {
		f.personMaleMiddleName();
	}
	foreach(i; 0 .. 4) {
		f.personMalePrefix();
	}
	foreach(i; 0 .. 4) {
		f.personMiddleName();
	}
	foreach(i; 0 .. 4) {
		f.personName();
	}
	foreach(i; 0 .. 4) {
		f.personPrefix();
	}
	foreach(i; 0 .. 4) {
		f.personSex();
	}
	foreach(i; 0 .. 4) {
		f.personSuffix();
	}
	foreach(i; 0 .. 4) {
		f.personTitleDescriptor();
	}
	foreach(i; 0 .. 4) {
		f.personTitleJob();
	}
	foreach(i; 0 .. 4) {
		f.personTitleLevel();
	}
	foreach(i; 0 .. 4) {
		f.personWesternZodiacSign();
	}
	foreach(i; 0 .. 4) {
		f.phoneNumber();
	}
	foreach(i; 0 .. 4) {
		f.phoneNumberFormats();
	}
	foreach(i; 0 .. 4) {
		f.scienceChemicalElement();
	}
	foreach(i; 0 .. 4) {
		f.scienceUnit();
	}
	foreach(i; 0 .. 4) {
		f.systemDirectoryPaths();
	}
	foreach(i; 0 .. 4) {
		f.teamCreature();
	}
	foreach(i; 0 .. 4) {
		f.teamName();
	}
	foreach(i; 0 .. 4) {
		f.vehicleBicycleType();
	}
	foreach(i; 0 .. 4) {
		f.vehicleFuel();
	}
	foreach(i; 0 .. 4) {
		f.vehicleManufacturer();
	}
	foreach(i; 0 .. 4) {
		f.vehicleModel();
	}
	foreach(i; 0 .. 4) {
		f.vehicleType();
	}
	foreach(i; 0 .. 4) {
		f.wordAdjective();
	}
	foreach(i; 0 .. 4) {
		f.wordAdverb();
	}
	foreach(i; 0 .. 4) {
		f.wordConjunction();
	}
	foreach(i; 0 .. 4) {
		f.wordInterjection();
	}
	foreach(i; 0 .. 4) {
		f.wordNoun();
	}
	foreach(i; 0 .. 4) {
		f.wordPreposition();
	}
	foreach(i; 0 .. 4) {
		f.wordVerb();
	}
}

unittest {
	auto f = new Faker_fr_sn(13);

	foreach(i; 0 .. 4) {
		f.airlineAirline();
	}
	foreach(i; 0 .. 4) {
		f.airlineAirplane();
	}
	foreach(i; 0 .. 4) {
		f.airlineAirport();
	}
	foreach(i; 0 .. 4) {
		f.animalBear();
	}
	foreach(i; 0 .. 4) {
		f.animalBird();
	}
	foreach(i; 0 .. 4) {
		f.animalCat();
	}
	foreach(i; 0 .. 4) {
		f.animalCetacean();
	}
	foreach(i; 0 .. 4) {
		f.animalCow();
	}
	foreach(i; 0 .. 4) {
		f.animalCrocodilia();
	}
	foreach(i; 0 .. 4) {
		f.animalDog();
	}
	foreach(i; 0 .. 4) {
		f.animalFish();
	}
	foreach(i; 0 .. 4) {
		f.animalHorse();
	}
	foreach(i; 0 .. 4) {
		f.animalInsect();
	}
	foreach(i; 0 .. 4) {
		f.animalLion();
	}
	foreach(i; 0 .. 4) {
		f.animalRabbit();
	}
	foreach(i; 0 .. 4) {
		f.animalRodent();
	}
	foreach(i; 0 .. 4) {
		f.animalSnake();
	}
	foreach(i; 0 .. 4) {
		f.appAuthor();
	}
	foreach(i; 0 .. 4) {
		f.appName();
	}
	foreach(i; 0 .. 4) {
		f.appVersion();
	}
	foreach(i; 0 .. 4) {
		f.cellPhoneFormats();
	}
	foreach(i; 0 .. 4) {
		f.commerceDepartment();
	}
	foreach(i; 0 .. 4) {
		f.commerceProductDescription();
	}
	foreach(i; 0 .. 4) {
		f.commerceProductNameAdjective();
	}
	foreach(i; 0 .. 4) {
		f.commerceProductNameMaterial();
	}
	foreach(i; 0 .. 4) {
		f.commerceProductNameProduct();
	}
	foreach(i; 0 .. 4) {
		f.companyAdjective();
	}
	foreach(i; 0 .. 4) {
		f.companyBuzzAdjective();
	}
	foreach(i; 0 .. 4) {
		f.companyBuzzNoun();
	}
	foreach(i; 0 .. 4) {
		f.companyBuzzVerb();
	}
	foreach(i; 0 .. 4) {
		f.companyCatchPhrase();
	}
	foreach(i; 0 .. 4) {
		f.companyDescriptor();
	}
	foreach(i; 0 .. 4) {
		f.companyName();
	}
	foreach(i; 0 .. 4) {
		f.companyNamePattern();
	}
	foreach(i; 0 .. 4) {
		f.companyNoun();
	}
	foreach(i; 0 .. 4) {
		f.companySuffix();
	}
	foreach(i; 0 .. 4) {
		f.databaseCollation();
	}
	foreach(i; 0 .. 4) {
		f.databaseColumn();
	}
	foreach(i; 0 .. 4) {
		f.databaseEngine();
	}
	foreach(i; 0 .. 4) {
		f.databaseType();
	}
	foreach(i; 0 .. 4) {
		f.dateMonthAbbr();
	}
	foreach(i; 0 .. 4) {
		f.dateMonthWide();
	}
	foreach(i; 0 .. 4) {
		f.dateWeekdayAbbr();
	}
	foreach(i; 0 .. 4) {
		f.dateWeekdayWide();
	}
	foreach(i; 0 .. 4) {
		f.financeAccountType();
	}
	foreach(i; 0 .. 4) {
		f.financeCreditCardAmericanExpress();
	}
	foreach(i; 0 .. 4) {
		f.financeCreditCardDinersClub();
	}
	foreach(i; 0 .. 4) {
		f.financeCreditCardDiscover();
	}
	foreach(i; 0 .. 4) {
		f.financeCreditCardJcb();
	}
	foreach(i; 0 .. 4) {
		f.financeCreditCardMaestro();
	}
	foreach(i; 0 .. 4) {
		f.financeCreditCardMastercard();
	}
	foreach(i; 0 .. 4) {
		f.financeCreditCardVisa();
	}
	foreach(i; 0 .. 4) {
		f.financeCurrency();
	}
	foreach(i; 0 .. 4) {
		f.financeTransactionType();
	}
	foreach(i; 0 .. 4) {
		f.hackerAbbreviation();
	}
	foreach(i; 0 .. 4) {
		f.hackerAdjective();
	}
	foreach(i; 0 .. 4) {
		f.hackerIngverb();
	}
	foreach(i; 0 .. 4) {
		f.hackerNoun();
	}
	foreach(i; 0 .. 4) {
		f.hackerPhrase();
	}
	foreach(i; 0 .. 4) {
		f.hackerVerb();
	}
	foreach(i; 0 .. 4) {
		f.internetDomainSuffix();
	}
	foreach(i; 0 .. 4) {
		f.internetEmoji();
	}
	foreach(i; 0 .. 4) {
		f.internetEmojiActivity();
	}
	foreach(i; 0 .. 4) {
		f.internetEmojiBody();
	}
	foreach(i; 0 .. 4) {
		f.internetEmojiFlag();
	}
	foreach(i; 0 .. 4) {
		f.internetEmojiFood();
	}
	foreach(i; 0 .. 4) {
		f.internetEmojiNature();
	}
	foreach(i; 0 .. 4) {
		f.internetEmojiObject();
	}
	foreach(i; 0 .. 4) {
		f.internetEmojiPerson();
	}
	foreach(i; 0 .. 4) {
		f.internetEmojiSmiley();
	}
	foreach(i; 0 .. 4) {
		f.internetEmojiSymbol();
	}
	foreach(i; 0 .. 4) {
		f.internetEmojiTravel();
	}
	foreach(i; 0 .. 4) {
		f.internetExampleEmail();
	}
	foreach(i; 0 .. 4) {
		f.internetFreeEmail();
	}
	foreach(i; 0 .. 4) {
		f.locationBuildingNumber();
	}
	foreach(i; 0 .. 4) {
		f.locationCity();
	}
	foreach(i; 0 .. 4) {
		f.locationCityName();
	}
	foreach(i; 0 .. 4) {
		f.locationCityPattern();
	}
	foreach(i; 0 .. 4) {
		f.locationCityPrefix();
	}
	foreach(i; 0 .. 4) {
		f.locationCitySuffix();
	}
	foreach(i; 0 .. 4) {
		f.locationCountry();
	}
	foreach(i; 0 .. 4) {
		f.locationCounty();
	}
	foreach(i; 0 .. 4) {
		f.locationDefaultCountry();
	}
	foreach(i; 0 .. 4) {
		f.locationDirection();
	}
	foreach(i; 0 .. 4) {
		f.locationDirectionAbbr();
	}
	foreach(i; 0 .. 4) {
		f.locationPostcode();
	}
	foreach(i; 0 .. 4) {
		f.locationSecondaryAddress();
	}
	foreach(i; 0 .. 4) {
		f.locationState();
	}
	foreach(i; 0 .. 4) {
		f.locationStateAbbr();
	}
	foreach(i; 0 .. 4) {
		f.locationStreetAddress();
	}
	foreach(i; 0 .. 4) {
		f.locationStreetName();
	}
	foreach(i; 0 .. 4) {
		f.locationStreetPattern();
	}
	foreach(i; 0 .. 4) {
		f.locationStreetSuffix();
	}
	foreach(i; 0 .. 4) {
		f.locationTimeZone();
	}
	foreach(i; 0 .. 4) {
		f.loremParagraph();
	}
	foreach(i; 0 .. 4) {
		f.loremParagraphs();
	}
	foreach(i; 0 .. 4) {
		f.loremSentance();
	}
	foreach(i; 0 .. 4) {
		f.loremSentances();
	}
	foreach(i; 0 .. 4) {
		f.loremText();
	}
	foreach(i; 0 .. 4) {
		f.loremWords();
	}
	foreach(i; 0 .. 4) {
		f.musicGenre();
	}
	foreach(i; 0 .. 4) {
		f.musicSongName();
	}
	foreach(i; 0 .. 4) {
		f.personBioPart();
	}
	foreach(i; 0 .. 4) {
		f.personBioPattern();
	}
	foreach(i; 0 .. 4) {
		f.personBioSupporter();
	}
	foreach(i; 0 .. 4) {
		f.personFemaleFirstName();
	}
	foreach(i; 0 .. 4) {
		f.personFemaleMiddleName();
	}
	foreach(i; 0 .. 4) {
		f.personFemalePrefix();
	}
	foreach(i; 0 .. 4) {
		f.personFirstName();
	}
	foreach(i; 0 .. 4) {
		f.personGender();
	}
	foreach(i; 0 .. 4) {
		f.personJobArea();
	}
	foreach(i; 0 .. 4) {
		f.personJobDescriptor();
	}
	foreach(i; 0 .. 4) {
		f.personJobTitlePattern();
	}
	foreach(i; 0 .. 4) {
		f.personJobType();
	}
	foreach(i; 0 .. 4) {
		f.personLastName();
	}
	foreach(i; 0 .. 4) {
		f.personLastNamePattern();
	}
	foreach(i; 0 .. 4) {
		f.personMaleFirstName();
	}
	foreach(i; 0 .. 4) {
		f.personMaleMiddleName();
	}
	foreach(i; 0 .. 4) {
		f.personMalePrefix();
	}
	foreach(i; 0 .. 4) {
		f.personMiddleName();
	}
	foreach(i; 0 .. 4) {
		f.personName();
	}
	foreach(i; 0 .. 4) {
		f.personPrefix();
	}
	foreach(i; 0 .. 4) {
		f.personSex();
	}
	foreach(i; 0 .. 4) {
		f.personSuffix();
	}
	foreach(i; 0 .. 4) {
		f.personTitleDescriptor();
	}
	foreach(i; 0 .. 4) {
		f.personTitleJob();
	}
	foreach(i; 0 .. 4) {
		f.personTitleLevel();
	}
	foreach(i; 0 .. 4) {
		f.personWesternZodiacSign();
	}
	foreach(i; 0 .. 4) {
		f.phoneNumber();
	}
	foreach(i; 0 .. 4) {
		f.phoneNumberFormats();
	}
	foreach(i; 0 .. 4) {
		f.scienceChemicalElement();
	}
	foreach(i; 0 .. 4) {
		f.scienceUnit();
	}
	foreach(i; 0 .. 4) {
		f.systemDirectoryPaths();
	}
	foreach(i; 0 .. 4) {
		f.teamCreature();
	}
	foreach(i; 0 .. 4) {
		f.teamName();
	}
	foreach(i; 0 .. 4) {
		f.vehicleBicycleType();
	}
	foreach(i; 0 .. 4) {
		f.vehicleFuel();
	}
	foreach(i; 0 .. 4) {
		f.vehicleManufacturer();
	}
	foreach(i; 0 .. 4) {
		f.vehicleModel();
	}
	foreach(i; 0 .. 4) {
		f.vehicleType();
	}
	foreach(i; 0 .. 4) {
		f.wordAdjective();
	}
	foreach(i; 0 .. 4) {
		f.wordAdverb();
	}
	foreach(i; 0 .. 4) {
		f.wordConjunction();
	}
	foreach(i; 0 .. 4) {
		f.wordInterjection();
	}
	foreach(i; 0 .. 4) {
		f.wordNoun();
	}
	foreach(i; 0 .. 4) {
		f.wordPreposition();
	}
	foreach(i; 0 .. 4) {
		f.wordVerb();
	}
}

unittest {
	auto f = new Faker_he(13);

	foreach(i; 0 .. 4) {
		f.airlineAirline();
	}
	foreach(i; 0 .. 4) {
		f.airlineAirplane();
	}
	foreach(i; 0 .. 4) {
		f.airlineAirport();
	}
	foreach(i; 0 .. 4) {
		f.animalBear();
	}
	foreach(i; 0 .. 4) {
		f.animalBird();
	}
	foreach(i; 0 .. 4) {
		f.animalCat();
	}
	foreach(i; 0 .. 4) {
		f.animalCetacean();
	}
	foreach(i; 0 .. 4) {
		f.animalCow();
	}
	foreach(i; 0 .. 4) {
		f.animalCrocodilia();
	}
	foreach(i; 0 .. 4) {
		f.animalDog();
	}
	foreach(i; 0 .. 4) {
		f.animalFish();
	}
	foreach(i; 0 .. 4) {
		f.animalHorse();
	}
	foreach(i; 0 .. 4) {
		f.animalInsect();
	}
	foreach(i; 0 .. 4) {
		f.animalLion();
	}
	foreach(i; 0 .. 4) {
		f.animalRabbit();
	}
	foreach(i; 0 .. 4) {
		f.animalRodent();
	}
	foreach(i; 0 .. 4) {
		f.animalSnake();
	}
	foreach(i; 0 .. 4) {
		f.appAuthor();
	}
	foreach(i; 0 .. 4) {
		f.appName();
	}
	foreach(i; 0 .. 4) {
		f.appVersion();
	}
	foreach(i; 0 .. 4) {
		f.cellPhoneFormats();
	}
	foreach(i; 0 .. 4) {
		f.commerceDepartment();
	}
	foreach(i; 0 .. 4) {
		f.commerceProductDescription();
	}
	foreach(i; 0 .. 4) {
		f.commerceProductNameAdjective();
	}
	foreach(i; 0 .. 4) {
		f.commerceProductNameMaterial();
	}
	foreach(i; 0 .. 4) {
		f.commerceProductNameProduct();
	}
	foreach(i; 0 .. 4) {
		f.companyAdjective();
	}
	foreach(i; 0 .. 4) {
		f.companyBuzzAdjective();
	}
	foreach(i; 0 .. 4) {
		f.companyBuzzNoun();
	}
	foreach(i; 0 .. 4) {
		f.companyBuzzVerb();
	}
	foreach(i; 0 .. 4) {
		f.companyCatchPhrase();
	}
	foreach(i; 0 .. 4) {
		f.companyDescriptor();
	}
	foreach(i; 0 .. 4) {
		f.companyName();
	}
	foreach(i; 0 .. 4) {
		f.companyNamePattern();
	}
	foreach(i; 0 .. 4) {
		f.companyNoun();
	}
	foreach(i; 0 .. 4) {
		f.companySuffix();
	}
	foreach(i; 0 .. 4) {
		f.databaseCollation();
	}
	foreach(i; 0 .. 4) {
		f.databaseColumn();
	}
	foreach(i; 0 .. 4) {
		f.databaseEngine();
	}
	foreach(i; 0 .. 4) {
		f.databaseType();
	}
	foreach(i; 0 .. 4) {
		f.dateMonthAbbr();
	}
	foreach(i; 0 .. 4) {
		f.dateMonthWide();
	}
	foreach(i; 0 .. 4) {
		f.dateWeekdayAbbr();
	}
	foreach(i; 0 .. 4) {
		f.dateWeekdayWide();
	}
	foreach(i; 0 .. 4) {
		f.financeAccountType();
	}
	foreach(i; 0 .. 4) {
		f.financeCreditCardAmericanExpress();
	}
	foreach(i; 0 .. 4) {
		f.financeCreditCardDinersClub();
	}
	foreach(i; 0 .. 4) {
		f.financeCreditCardDiscover();
	}
	foreach(i; 0 .. 4) {
		f.financeCreditCardJcb();
	}
	foreach(i; 0 .. 4) {
		f.financeCreditCardMaestro();
	}
	foreach(i; 0 .. 4) {
		f.financeCreditCardMastercard();
	}
	foreach(i; 0 .. 4) {
		f.financeCreditCardVisa();
	}
	foreach(i; 0 .. 4) {
		f.financeCurrency();
	}
	foreach(i; 0 .. 4) {
		f.financeTransactionType();
	}
	foreach(i; 0 .. 4) {
		f.hackerAbbreviation();
	}
	foreach(i; 0 .. 4) {
		f.hackerAdjective();
	}
	foreach(i; 0 .. 4) {
		f.hackerIngverb();
	}
	foreach(i; 0 .. 4) {
		f.hackerNoun();
	}
	foreach(i; 0 .. 4) {
		f.hackerPhrase();
	}
	foreach(i; 0 .. 4) {
		f.hackerVerb();
	}
	foreach(i; 0 .. 4) {
		f.internetDomainSuffix();
	}
	foreach(i; 0 .. 4) {
		f.internetEmoji();
	}
	foreach(i; 0 .. 4) {
		f.internetEmojiActivity();
	}
	foreach(i; 0 .. 4) {
		f.internetEmojiBody();
	}
	foreach(i; 0 .. 4) {
		f.internetEmojiFlag();
	}
	foreach(i; 0 .. 4) {
		f.internetEmojiFood();
	}
	foreach(i; 0 .. 4) {
		f.internetEmojiNature();
	}
	foreach(i; 0 .. 4) {
		f.internetEmojiObject();
	}
	foreach(i; 0 .. 4) {
		f.internetEmojiPerson();
	}
	foreach(i; 0 .. 4) {
		f.internetEmojiSmiley();
	}
	foreach(i; 0 .. 4) {
		f.internetEmojiSymbol();
	}
	foreach(i; 0 .. 4) {
		f.internetEmojiTravel();
	}
	foreach(i; 0 .. 4) {
		f.internetExampleEmail();
	}
	foreach(i; 0 .. 4) {
		f.internetFreeEmail();
	}
	foreach(i; 0 .. 4) {
		f.locationBuildingNumber();
	}
	foreach(i; 0 .. 4) {
		f.locationCity();
	}
	foreach(i; 0 .. 4) {
		f.locationCityName();
	}
	foreach(i; 0 .. 4) {
		f.locationCityPattern();
	}
	foreach(i; 0 .. 4) {
		f.locationCityPrefix();
	}
	foreach(i; 0 .. 4) {
		f.locationCitySuffix();
	}
	foreach(i; 0 .. 4) {
		f.locationCountry();
	}
	foreach(i; 0 .. 4) {
		f.locationCounty();
	}
	foreach(i; 0 .. 4) {
		f.locationDefaultCountry();
	}
	foreach(i; 0 .. 4) {
		f.locationDirection();
	}
	foreach(i; 0 .. 4) {
		f.locationDirectionAbbr();
	}
	foreach(i; 0 .. 4) {
		f.locationPostcode();
	}
	foreach(i; 0 .. 4) {
		f.locationSecondaryAddress();
	}
	foreach(i; 0 .. 4) {
		f.locationState();
	}
	foreach(i; 0 .. 4) {
		f.locationStateAbbr();
	}
	foreach(i; 0 .. 4) {
		f.locationStreetAddress();
	}
	foreach(i; 0 .. 4) {
		f.locationStreetName();
	}
	foreach(i; 0 .. 4) {
		f.locationStreetPattern();
	}
	foreach(i; 0 .. 4) {
		f.locationStreetSuffix();
	}
	foreach(i; 0 .. 4) {
		f.locationTimeZone();
	}
	foreach(i; 0 .. 4) {
		f.loremParagraph();
	}
	foreach(i; 0 .. 4) {
		f.loremParagraphs();
	}
	foreach(i; 0 .. 4) {
		f.loremSentance();
	}
	foreach(i; 0 .. 4) {
		f.loremSentances();
	}
	foreach(i; 0 .. 4) {
		f.loremText();
	}
	foreach(i; 0 .. 4) {
		f.loremWords();
	}
	foreach(i; 0 .. 4) {
		f.musicGenre();
	}
	foreach(i; 0 .. 4) {
		f.musicSongName();
	}
	foreach(i; 0 .. 4) {
		f.personBioPart();
	}
	foreach(i; 0 .. 4) {
		f.personBioPattern();
	}
	foreach(i; 0 .. 4) {
		f.personBioSupporter();
	}
	foreach(i; 0 .. 4) {
		f.personFemaleFirstName();
	}
	foreach(i; 0 .. 4) {
		f.personFemaleMiddleName();
	}
	foreach(i; 0 .. 4) {
		f.personFemalePrefix();
	}
	foreach(i; 0 .. 4) {
		f.personFirstName();
	}
	foreach(i; 0 .. 4) {
		f.personGender();
	}
	foreach(i; 0 .. 4) {
		f.personJobArea();
	}
	foreach(i; 0 .. 4) {
		f.personJobDescriptor();
	}
	foreach(i; 0 .. 4) {
		f.personJobTitlePattern();
	}
	foreach(i; 0 .. 4) {
		f.personJobType();
	}
	foreach(i; 0 .. 4) {
		f.personLastName();
	}
	foreach(i; 0 .. 4) {
		f.personLastNamePattern();
	}
	foreach(i; 0 .. 4) {
		f.personMaleFirstName();
	}
	foreach(i; 0 .. 4) {
		f.personMaleMiddleName();
	}
	foreach(i; 0 .. 4) {
		f.personMalePrefix();
	}
	foreach(i; 0 .. 4) {
		f.personMiddleName();
	}
	foreach(i; 0 .. 4) {
		f.personName();
	}
	foreach(i; 0 .. 4) {
		f.personPrefix();
	}
	foreach(i; 0 .. 4) {
		f.personSex();
	}
	foreach(i; 0 .. 4) {
		f.personSuffix();
	}
	foreach(i; 0 .. 4) {
		f.personTitleDescriptor();
	}
	foreach(i; 0 .. 4) {
		f.personTitleJob();
	}
	foreach(i; 0 .. 4) {
		f.personTitleLevel();
	}
	foreach(i; 0 .. 4) {
		f.personWesternZodiacSign();
	}
	foreach(i; 0 .. 4) {
		f.phoneNumber();
	}
	foreach(i; 0 .. 4) {
		f.phoneNumberFormats();
	}
	foreach(i; 0 .. 4) {
		f.scienceChemicalElement();
	}
	foreach(i; 0 .. 4) {
		f.scienceUnit();
	}
	foreach(i; 0 .. 4) {
		f.systemDirectoryPaths();
	}
	foreach(i; 0 .. 4) {
		f.teamCreature();
	}
	foreach(i; 0 .. 4) {
		f.teamName();
	}
	foreach(i; 0 .. 4) {
		f.vehicleBicycleType();
	}
	foreach(i; 0 .. 4) {
		f.vehicleFuel();
	}
	foreach(i; 0 .. 4) {
		f.vehicleManufacturer();
	}
	foreach(i; 0 .. 4) {
		f.vehicleModel();
	}
	foreach(i; 0 .. 4) {
		f.vehicleType();
	}
	foreach(i; 0 .. 4) {
		f.wordAdjective();
	}
	foreach(i; 0 .. 4) {
		f.wordAdverb();
	}
	foreach(i; 0 .. 4) {
		f.wordConjunction();
	}
	foreach(i; 0 .. 4) {
		f.wordInterjection();
	}
	foreach(i; 0 .. 4) {
		f.wordNoun();
	}
	foreach(i; 0 .. 4) {
		f.wordPreposition();
	}
	foreach(i; 0 .. 4) {
		f.wordVerb();
	}
}

unittest {
	auto f = new Faker_hr(13);

	foreach(i; 0 .. 4) {
		f.airlineAirline();
	}
	foreach(i; 0 .. 4) {
		f.airlineAirplane();
	}
	foreach(i; 0 .. 4) {
		f.airlineAirport();
	}
	foreach(i; 0 .. 4) {
		f.animalBear();
	}
	foreach(i; 0 .. 4) {
		f.animalBird();
	}
	foreach(i; 0 .. 4) {
		f.animalCat();
	}
	foreach(i; 0 .. 4) {
		f.animalCetacean();
	}
	foreach(i; 0 .. 4) {
		f.animalCow();
	}
	foreach(i; 0 .. 4) {
		f.animalCrocodilia();
	}
	foreach(i; 0 .. 4) {
		f.animalDog();
	}
	foreach(i; 0 .. 4) {
		f.animalFish();
	}
	foreach(i; 0 .. 4) {
		f.animalHorse();
	}
	foreach(i; 0 .. 4) {
		f.animalInsect();
	}
	foreach(i; 0 .. 4) {
		f.animalLion();
	}
	foreach(i; 0 .. 4) {
		f.animalRabbit();
	}
	foreach(i; 0 .. 4) {
		f.animalRodent();
	}
	foreach(i; 0 .. 4) {
		f.animalSnake();
	}
	foreach(i; 0 .. 4) {
		f.appAuthor();
	}
	foreach(i; 0 .. 4) {
		f.appName();
	}
	foreach(i; 0 .. 4) {
		f.appVersion();
	}
	foreach(i; 0 .. 4) {
		f.cellPhoneFormats();
	}
	foreach(i; 0 .. 4) {
		f.commerceDepartment();
	}
	foreach(i; 0 .. 4) {
		f.commerceProductDescription();
	}
	foreach(i; 0 .. 4) {
		f.commerceProductNameAdjective();
	}
	foreach(i; 0 .. 4) {
		f.commerceProductNameMaterial();
	}
	foreach(i; 0 .. 4) {
		f.commerceProductNameProduct();
	}
	foreach(i; 0 .. 4) {
		f.companyAdjective();
	}
	foreach(i; 0 .. 4) {
		f.companyBuzzAdjective();
	}
	foreach(i; 0 .. 4) {
		f.companyBuzzNoun();
	}
	foreach(i; 0 .. 4) {
		f.companyBuzzVerb();
	}
	foreach(i; 0 .. 4) {
		f.companyCatchPhrase();
	}
	foreach(i; 0 .. 4) {
		f.companyDescriptor();
	}
	foreach(i; 0 .. 4) {
		f.companyName();
	}
	foreach(i; 0 .. 4) {
		f.companyNamePattern();
	}
	foreach(i; 0 .. 4) {
		f.companyNoun();
	}
	foreach(i; 0 .. 4) {
		f.companySuffix();
	}
	foreach(i; 0 .. 4) {
		f.databaseCollation();
	}
	foreach(i; 0 .. 4) {
		f.databaseColumn();
	}
	foreach(i; 0 .. 4) {
		f.databaseEngine();
	}
	foreach(i; 0 .. 4) {
		f.databaseType();
	}
	foreach(i; 0 .. 4) {
		f.dateMonthAbbr();
	}
	foreach(i; 0 .. 4) {
		f.dateMonthWide();
	}
	foreach(i; 0 .. 4) {
		f.dateWeekdayAbbr();
	}
	foreach(i; 0 .. 4) {
		f.dateWeekdayWide();
	}
	foreach(i; 0 .. 4) {
		f.financeAccountType();
	}
	foreach(i; 0 .. 4) {
		f.financeCreditCardAmericanExpress();
	}
	foreach(i; 0 .. 4) {
		f.financeCreditCardDinersClub();
	}
	foreach(i; 0 .. 4) {
		f.financeCreditCardDiscover();
	}
	foreach(i; 0 .. 4) {
		f.financeCreditCardJcb();
	}
	foreach(i; 0 .. 4) {
		f.financeCreditCardMaestro();
	}
	foreach(i; 0 .. 4) {
		f.financeCreditCardMastercard();
	}
	foreach(i; 0 .. 4) {
		f.financeCreditCardVisa();
	}
	foreach(i; 0 .. 4) {
		f.financeCurrency();
	}
	foreach(i; 0 .. 4) {
		f.financeTransactionType();
	}
	foreach(i; 0 .. 4) {
		f.hackerAbbreviation();
	}
	foreach(i; 0 .. 4) {
		f.hackerAdjective();
	}
	foreach(i; 0 .. 4) {
		f.hackerIngverb();
	}
	foreach(i; 0 .. 4) {
		f.hackerNoun();
	}
	foreach(i; 0 .. 4) {
		f.hackerPhrase();
	}
	foreach(i; 0 .. 4) {
		f.hackerVerb();
	}
	foreach(i; 0 .. 4) {
		f.internetDomainSuffix();
	}
	foreach(i; 0 .. 4) {
		f.internetEmoji();
	}
	foreach(i; 0 .. 4) {
		f.internetEmojiActivity();
	}
	foreach(i; 0 .. 4) {
		f.internetEmojiBody();
	}
	foreach(i; 0 .. 4) {
		f.internetEmojiFlag();
	}
	foreach(i; 0 .. 4) {
		f.internetEmojiFood();
	}
	foreach(i; 0 .. 4) {
		f.internetEmojiNature();
	}
	foreach(i; 0 .. 4) {
		f.internetEmojiObject();
	}
	foreach(i; 0 .. 4) {
		f.internetEmojiPerson();
	}
	foreach(i; 0 .. 4) {
		f.internetEmojiSmiley();
	}
	foreach(i; 0 .. 4) {
		f.internetEmojiSymbol();
	}
	foreach(i; 0 .. 4) {
		f.internetEmojiTravel();
	}
	foreach(i; 0 .. 4) {
		f.internetExampleEmail();
	}
	foreach(i; 0 .. 4) {
		f.internetFreeEmail();
	}
	foreach(i; 0 .. 4) {
		f.locationBuildingNumber();
	}
	foreach(i; 0 .. 4) {
		f.locationCity();
	}
	foreach(i; 0 .. 4) {
		f.locationCityName();
	}
	foreach(i; 0 .. 4) {
		f.locationCityPattern();
	}
	foreach(i; 0 .. 4) {
		f.locationCityPrefix();
	}
	foreach(i; 0 .. 4) {
		f.locationCitySuffix();
	}
	foreach(i; 0 .. 4) {
		f.locationCountry();
	}
	foreach(i; 0 .. 4) {
		f.locationCounty();
	}
	foreach(i; 0 .. 4) {
		f.locationDefaultCountry();
	}
	foreach(i; 0 .. 4) {
		f.locationDirection();
	}
	foreach(i; 0 .. 4) {
		f.locationDirectionAbbr();
	}
	foreach(i; 0 .. 4) {
		f.locationPostcode();
	}
	foreach(i; 0 .. 4) {
		f.locationSecondaryAddress();
	}
	foreach(i; 0 .. 4) {
		f.locationState();
	}
	foreach(i; 0 .. 4) {
		f.locationStateAbbr();
	}
	foreach(i; 0 .. 4) {
		f.locationStreetAddress();
	}
	foreach(i; 0 .. 4) {
		f.locationStreetName();
	}
	foreach(i; 0 .. 4) {
		f.locationStreetPattern();
	}
	foreach(i; 0 .. 4) {
		f.locationStreetSuffix();
	}
	foreach(i; 0 .. 4) {
		f.locationTimeZone();
	}
	foreach(i; 0 .. 4) {
		f.loremParagraph();
	}
	foreach(i; 0 .. 4) {
		f.loremParagraphs();
	}
	foreach(i; 0 .. 4) {
		f.loremSentance();
	}
	foreach(i; 0 .. 4) {
		f.loremSentances();
	}
	foreach(i; 0 .. 4) {
		f.loremText();
	}
	foreach(i; 0 .. 4) {
		f.loremWords();
	}
	foreach(i; 0 .. 4) {
		f.musicGenre();
	}
	foreach(i; 0 .. 4) {
		f.musicSongName();
	}
	foreach(i; 0 .. 4) {
		f.personBioPart();
	}
	foreach(i; 0 .. 4) {
		f.personBioPattern();
	}
	foreach(i; 0 .. 4) {
		f.personBioSupporter();
	}
	foreach(i; 0 .. 4) {
		f.personFemaleFirstName();
	}
	foreach(i; 0 .. 4) {
		f.personFemaleMiddleName();
	}
	foreach(i; 0 .. 4) {
		f.personFemalePrefix();
	}
	foreach(i; 0 .. 4) {
		f.personFirstName();
	}
	foreach(i; 0 .. 4) {
		f.personGender();
	}
	foreach(i; 0 .. 4) {
		f.personJobArea();
	}
	foreach(i; 0 .. 4) {
		f.personJobDescriptor();
	}
	foreach(i; 0 .. 4) {
		f.personJobTitlePattern();
	}
	foreach(i; 0 .. 4) {
		f.personJobType();
	}
	foreach(i; 0 .. 4) {
		f.personLastName();
	}
	foreach(i; 0 .. 4) {
		f.personLastNamePattern();
	}
	foreach(i; 0 .. 4) {
		f.personMaleFirstName();
	}
	foreach(i; 0 .. 4) {
		f.personMaleMiddleName();
	}
	foreach(i; 0 .. 4) {
		f.personMalePrefix();
	}
	foreach(i; 0 .. 4) {
		f.personMiddleName();
	}
	foreach(i; 0 .. 4) {
		f.personName();
	}
	foreach(i; 0 .. 4) {
		f.personPrefix();
	}
	foreach(i; 0 .. 4) {
		f.personSex();
	}
	foreach(i; 0 .. 4) {
		f.personSuffix();
	}
	foreach(i; 0 .. 4) {
		f.personTitleDescriptor();
	}
	foreach(i; 0 .. 4) {
		f.personTitleJob();
	}
	foreach(i; 0 .. 4) {
		f.personTitleLevel();
	}
	foreach(i; 0 .. 4) {
		f.personWesternZodiacSign();
	}
	foreach(i; 0 .. 4) {
		f.phoneNumber();
	}
	foreach(i; 0 .. 4) {
		f.phoneNumberFormats();
	}
	foreach(i; 0 .. 4) {
		f.scienceChemicalElement();
	}
	foreach(i; 0 .. 4) {
		f.scienceUnit();
	}
	foreach(i; 0 .. 4) {
		f.systemDirectoryPaths();
	}
	foreach(i; 0 .. 4) {
		f.teamCreature();
	}
	foreach(i; 0 .. 4) {
		f.teamName();
	}
	foreach(i; 0 .. 4) {
		f.vehicleBicycleType();
	}
	foreach(i; 0 .. 4) {
		f.vehicleFuel();
	}
	foreach(i; 0 .. 4) {
		f.vehicleManufacturer();
	}
	foreach(i; 0 .. 4) {
		f.vehicleModel();
	}
	foreach(i; 0 .. 4) {
		f.vehicleType();
	}
	foreach(i; 0 .. 4) {
		f.wordAdjective();
	}
	foreach(i; 0 .. 4) {
		f.wordAdverb();
	}
	foreach(i; 0 .. 4) {
		f.wordConjunction();
	}
	foreach(i; 0 .. 4) {
		f.wordInterjection();
	}
	foreach(i; 0 .. 4) {
		f.wordNoun();
	}
	foreach(i; 0 .. 4) {
		f.wordPreposition();
	}
	foreach(i; 0 .. 4) {
		f.wordVerb();
	}
}

unittest {
	auto f = new Faker_hu(13);

	foreach(i; 0 .. 4) {
		f.airlineAirline();
	}
	foreach(i; 0 .. 4) {
		f.airlineAirplane();
	}
	foreach(i; 0 .. 4) {
		f.airlineAirport();
	}
	foreach(i; 0 .. 4) {
		f.animalBear();
	}
	foreach(i; 0 .. 4) {
		f.animalBird();
	}
	foreach(i; 0 .. 4) {
		f.animalCat();
	}
	foreach(i; 0 .. 4) {
		f.animalCetacean();
	}
	foreach(i; 0 .. 4) {
		f.animalCow();
	}
	foreach(i; 0 .. 4) {
		f.animalCrocodilia();
	}
	foreach(i; 0 .. 4) {
		f.animalDog();
	}
	foreach(i; 0 .. 4) {
		f.animalFish();
	}
	foreach(i; 0 .. 4) {
		f.animalHorse();
	}
	foreach(i; 0 .. 4) {
		f.animalInsect();
	}
	foreach(i; 0 .. 4) {
		f.animalLion();
	}
	foreach(i; 0 .. 4) {
		f.animalRabbit();
	}
	foreach(i; 0 .. 4) {
		f.animalRodent();
	}
	foreach(i; 0 .. 4) {
		f.animalSnake();
	}
	foreach(i; 0 .. 4) {
		f.appAuthor();
	}
	foreach(i; 0 .. 4) {
		f.appName();
	}
	foreach(i; 0 .. 4) {
		f.appVersion();
	}
	foreach(i; 0 .. 4) {
		f.cellPhoneFormats();
	}
	foreach(i; 0 .. 4) {
		f.commerceDepartment();
	}
	foreach(i; 0 .. 4) {
		f.commerceProductDescription();
	}
	foreach(i; 0 .. 4) {
		f.commerceProductNameAdjective();
	}
	foreach(i; 0 .. 4) {
		f.commerceProductNameMaterial();
	}
	foreach(i; 0 .. 4) {
		f.commerceProductNameProduct();
	}
	foreach(i; 0 .. 4) {
		f.companyAdjective();
	}
	foreach(i; 0 .. 4) {
		f.companyBuzzAdjective();
	}
	foreach(i; 0 .. 4) {
		f.companyBuzzNoun();
	}
	foreach(i; 0 .. 4) {
		f.companyBuzzVerb();
	}
	foreach(i; 0 .. 4) {
		f.companyCatchPhrase();
	}
	foreach(i; 0 .. 4) {
		f.companyDescriptor();
	}
	foreach(i; 0 .. 4) {
		f.companyName();
	}
	foreach(i; 0 .. 4) {
		f.companyNamePattern();
	}
	foreach(i; 0 .. 4) {
		f.companyNoun();
	}
	foreach(i; 0 .. 4) {
		f.companySuffix();
	}
	foreach(i; 0 .. 4) {
		f.databaseCollation();
	}
	foreach(i; 0 .. 4) {
		f.databaseColumn();
	}
	foreach(i; 0 .. 4) {
		f.databaseEngine();
	}
	foreach(i; 0 .. 4) {
		f.databaseType();
	}
	foreach(i; 0 .. 4) {
		f.dateMonthAbbr();
	}
	foreach(i; 0 .. 4) {
		f.dateMonthWide();
	}
	foreach(i; 0 .. 4) {
		f.dateWeekdayAbbr();
	}
	foreach(i; 0 .. 4) {
		f.dateWeekdayWide();
	}
	foreach(i; 0 .. 4) {
		f.financeAccountType();
	}
	foreach(i; 0 .. 4) {
		f.financeCreditCardAmericanExpress();
	}
	foreach(i; 0 .. 4) {
		f.financeCreditCardDinersClub();
	}
	foreach(i; 0 .. 4) {
		f.financeCreditCardDiscover();
	}
	foreach(i; 0 .. 4) {
		f.financeCreditCardJcb();
	}
	foreach(i; 0 .. 4) {
		f.financeCreditCardMaestro();
	}
	foreach(i; 0 .. 4) {
		f.financeCreditCardMastercard();
	}
	foreach(i; 0 .. 4) {
		f.financeCreditCardVisa();
	}
	foreach(i; 0 .. 4) {
		f.financeCurrency();
	}
	foreach(i; 0 .. 4) {
		f.financeTransactionType();
	}
	foreach(i; 0 .. 4) {
		f.hackerAbbreviation();
	}
	foreach(i; 0 .. 4) {
		f.hackerAdjective();
	}
	foreach(i; 0 .. 4) {
		f.hackerIngverb();
	}
	foreach(i; 0 .. 4) {
		f.hackerNoun();
	}
	foreach(i; 0 .. 4) {
		f.hackerPhrase();
	}
	foreach(i; 0 .. 4) {
		f.hackerVerb();
	}
	foreach(i; 0 .. 4) {
		f.internetDomainSuffix();
	}
	foreach(i; 0 .. 4) {
		f.internetEmoji();
	}
	foreach(i; 0 .. 4) {
		f.internetEmojiActivity();
	}
	foreach(i; 0 .. 4) {
		f.internetEmojiBody();
	}
	foreach(i; 0 .. 4) {
		f.internetEmojiFlag();
	}
	foreach(i; 0 .. 4) {
		f.internetEmojiFood();
	}
	foreach(i; 0 .. 4) {
		f.internetEmojiNature();
	}
	foreach(i; 0 .. 4) {
		f.internetEmojiObject();
	}
	foreach(i; 0 .. 4) {
		f.internetEmojiPerson();
	}
	foreach(i; 0 .. 4) {
		f.internetEmojiSmiley();
	}
	foreach(i; 0 .. 4) {
		f.internetEmojiSymbol();
	}
	foreach(i; 0 .. 4) {
		f.internetEmojiTravel();
	}
	foreach(i; 0 .. 4) {
		f.internetExampleEmail();
	}
	foreach(i; 0 .. 4) {
		f.internetFreeEmail();
	}
	foreach(i; 0 .. 4) {
		f.locationBuildingNumber();
	}
	foreach(i; 0 .. 4) {
		f.locationCity();
	}
	foreach(i; 0 .. 4) {
		f.locationCityName();
	}
	foreach(i; 0 .. 4) {
		f.locationCityPattern();
	}
	foreach(i; 0 .. 4) {
		f.locationCityPrefix();
	}
	foreach(i; 0 .. 4) {
		f.locationCitySuffix();
	}
	foreach(i; 0 .. 4) {
		f.locationCountry();
	}
	foreach(i; 0 .. 4) {
		f.locationCounty();
	}
	foreach(i; 0 .. 4) {
		f.locationDefaultCountry();
	}
	foreach(i; 0 .. 4) {
		f.locationDirection();
	}
	foreach(i; 0 .. 4) {
		f.locationDirectionAbbr();
	}
	foreach(i; 0 .. 4) {
		f.locationPostcode();
	}
	foreach(i; 0 .. 4) {
		f.locationSecondaryAddress();
	}
	foreach(i; 0 .. 4) {
		f.locationState();
	}
	foreach(i; 0 .. 4) {
		f.locationStateAbbr();
	}
	foreach(i; 0 .. 4) {
		f.locationStreetAddress();
	}
	foreach(i; 0 .. 4) {
		f.locationStreetName();
	}
	foreach(i; 0 .. 4) {
		f.locationStreetPattern();
	}
	foreach(i; 0 .. 4) {
		f.locationStreetSuffix();
	}
	foreach(i; 0 .. 4) {
		f.locationTimeZone();
	}
	foreach(i; 0 .. 4) {
		f.loremParagraph();
	}
	foreach(i; 0 .. 4) {
		f.loremParagraphs();
	}
	foreach(i; 0 .. 4) {
		f.loremSentance();
	}
	foreach(i; 0 .. 4) {
		f.loremSentances();
	}
	foreach(i; 0 .. 4) {
		f.loremText();
	}
	foreach(i; 0 .. 4) {
		f.loremWords();
	}
	foreach(i; 0 .. 4) {
		f.musicGenre();
	}
	foreach(i; 0 .. 4) {
		f.musicSongName();
	}
	foreach(i; 0 .. 4) {
		f.personBioPart();
	}
	foreach(i; 0 .. 4) {
		f.personBioPattern();
	}
	foreach(i; 0 .. 4) {
		f.personBioSupporter();
	}
	foreach(i; 0 .. 4) {
		f.personFemaleFirstName();
	}
	foreach(i; 0 .. 4) {
		f.personFemaleMiddleName();
	}
	foreach(i; 0 .. 4) {
		f.personFemalePrefix();
	}
	foreach(i; 0 .. 4) {
		f.personFirstName();
	}
	foreach(i; 0 .. 4) {
		f.personGender();
	}
	foreach(i; 0 .. 4) {
		f.personJobArea();
	}
	foreach(i; 0 .. 4) {
		f.personJobDescriptor();
	}
	foreach(i; 0 .. 4) {
		f.personJobTitlePattern();
	}
	foreach(i; 0 .. 4) {
		f.personJobType();
	}
	foreach(i; 0 .. 4) {
		f.personLastName();
	}
	foreach(i; 0 .. 4) {
		f.personLastNamePattern();
	}
	foreach(i; 0 .. 4) {
		f.personMaleFirstName();
	}
	foreach(i; 0 .. 4) {
		f.personMaleMiddleName();
	}
	foreach(i; 0 .. 4) {
		f.personMalePrefix();
	}
	foreach(i; 0 .. 4) {
		f.personMiddleName();
	}
	foreach(i; 0 .. 4) {
		f.personName();
	}
	foreach(i; 0 .. 4) {
		f.personPrefix();
	}
	foreach(i; 0 .. 4) {
		f.personSex();
	}
	foreach(i; 0 .. 4) {
		f.personSuffix();
	}
	foreach(i; 0 .. 4) {
		f.personTitleDescriptor();
	}
	foreach(i; 0 .. 4) {
		f.personTitleJob();
	}
	foreach(i; 0 .. 4) {
		f.personTitleLevel();
	}
	foreach(i; 0 .. 4) {
		f.personWesternZodiacSign();
	}
	foreach(i; 0 .. 4) {
		f.phoneNumber();
	}
	foreach(i; 0 .. 4) {
		f.phoneNumberFormats();
	}
	foreach(i; 0 .. 4) {
		f.scienceChemicalElement();
	}
	foreach(i; 0 .. 4) {
		f.scienceUnit();
	}
	foreach(i; 0 .. 4) {
		f.systemDirectoryPaths();
	}
	foreach(i; 0 .. 4) {
		f.teamCreature();
	}
	foreach(i; 0 .. 4) {
		f.teamName();
	}
	foreach(i; 0 .. 4) {
		f.vehicleBicycleType();
	}
	foreach(i; 0 .. 4) {
		f.vehicleFuel();
	}
	foreach(i; 0 .. 4) {
		f.vehicleManufacturer();
	}
	foreach(i; 0 .. 4) {
		f.vehicleModel();
	}
	foreach(i; 0 .. 4) {
		f.vehicleType();
	}
	foreach(i; 0 .. 4) {
		f.wordAdjective();
	}
	foreach(i; 0 .. 4) {
		f.wordAdverb();
	}
	foreach(i; 0 .. 4) {
		f.wordConjunction();
	}
	foreach(i; 0 .. 4) {
		f.wordInterjection();
	}
	foreach(i; 0 .. 4) {
		f.wordNoun();
	}
	foreach(i; 0 .. 4) {
		f.wordPreposition();
	}
	foreach(i; 0 .. 4) {
		f.wordVerb();
	}
}

unittest {
	auto f = new Faker_hy(13);

	foreach(i; 0 .. 4) {
		f.airlineAirline();
	}
	foreach(i; 0 .. 4) {
		f.airlineAirplane();
	}
	foreach(i; 0 .. 4) {
		f.airlineAirport();
	}
	foreach(i; 0 .. 4) {
		f.animalBear();
	}
	foreach(i; 0 .. 4) {
		f.animalBird();
	}
	foreach(i; 0 .. 4) {
		f.animalCat();
	}
	foreach(i; 0 .. 4) {
		f.animalCetacean();
	}
	foreach(i; 0 .. 4) {
		f.animalCow();
	}
	foreach(i; 0 .. 4) {
		f.animalCrocodilia();
	}
	foreach(i; 0 .. 4) {
		f.animalDog();
	}
	foreach(i; 0 .. 4) {
		f.animalFish();
	}
	foreach(i; 0 .. 4) {
		f.animalHorse();
	}
	foreach(i; 0 .. 4) {
		f.animalInsect();
	}
	foreach(i; 0 .. 4) {
		f.animalLion();
	}
	foreach(i; 0 .. 4) {
		f.animalRabbit();
	}
	foreach(i; 0 .. 4) {
		f.animalRodent();
	}
	foreach(i; 0 .. 4) {
		f.animalSnake();
	}
	foreach(i; 0 .. 4) {
		f.appAuthor();
	}
	foreach(i; 0 .. 4) {
		f.appName();
	}
	foreach(i; 0 .. 4) {
		f.appVersion();
	}
	foreach(i; 0 .. 4) {
		f.cellPhoneFormats();
	}
	foreach(i; 0 .. 4) {
		f.commerceDepartment();
	}
	foreach(i; 0 .. 4) {
		f.commerceProductDescription();
	}
	foreach(i; 0 .. 4) {
		f.commerceProductNameAdjective();
	}
	foreach(i; 0 .. 4) {
		f.commerceProductNameMaterial();
	}
	foreach(i; 0 .. 4) {
		f.commerceProductNameProduct();
	}
	foreach(i; 0 .. 4) {
		f.companyAdjective();
	}
	foreach(i; 0 .. 4) {
		f.companyBuzzAdjective();
	}
	foreach(i; 0 .. 4) {
		f.companyBuzzNoun();
	}
	foreach(i; 0 .. 4) {
		f.companyBuzzVerb();
	}
	foreach(i; 0 .. 4) {
		f.companyCatchPhrase();
	}
	foreach(i; 0 .. 4) {
		f.companyDescriptor();
	}
	foreach(i; 0 .. 4) {
		f.companyName();
	}
	foreach(i; 0 .. 4) {
		f.companyNamePattern();
	}
	foreach(i; 0 .. 4) {
		f.companyNoun();
	}
	foreach(i; 0 .. 4) {
		f.companySuffix();
	}
	foreach(i; 0 .. 4) {
		f.databaseCollation();
	}
	foreach(i; 0 .. 4) {
		f.databaseColumn();
	}
	foreach(i; 0 .. 4) {
		f.databaseEngine();
	}
	foreach(i; 0 .. 4) {
		f.databaseType();
	}
	foreach(i; 0 .. 4) {
		f.dateMonthAbbr();
	}
	foreach(i; 0 .. 4) {
		f.dateMonthWide();
	}
	foreach(i; 0 .. 4) {
		f.dateWeekdayAbbr();
	}
	foreach(i; 0 .. 4) {
		f.dateWeekdayWide();
	}
	foreach(i; 0 .. 4) {
		f.financeAccountType();
	}
	foreach(i; 0 .. 4) {
		f.financeCreditCardAmericanExpress();
	}
	foreach(i; 0 .. 4) {
		f.financeCreditCardDinersClub();
	}
	foreach(i; 0 .. 4) {
		f.financeCreditCardDiscover();
	}
	foreach(i; 0 .. 4) {
		f.financeCreditCardJcb();
	}
	foreach(i; 0 .. 4) {
		f.financeCreditCardMaestro();
	}
	foreach(i; 0 .. 4) {
		f.financeCreditCardMastercard();
	}
	foreach(i; 0 .. 4) {
		f.financeCreditCardVisa();
	}
	foreach(i; 0 .. 4) {
		f.financeCurrency();
	}
	foreach(i; 0 .. 4) {
		f.financeTransactionType();
	}
	foreach(i; 0 .. 4) {
		f.hackerAbbreviation();
	}
	foreach(i; 0 .. 4) {
		f.hackerAdjective();
	}
	foreach(i; 0 .. 4) {
		f.hackerIngverb();
	}
	foreach(i; 0 .. 4) {
		f.hackerNoun();
	}
	foreach(i; 0 .. 4) {
		f.hackerPhrase();
	}
	foreach(i; 0 .. 4) {
		f.hackerVerb();
	}
	foreach(i; 0 .. 4) {
		f.internetDomainSuffix();
	}
	foreach(i; 0 .. 4) {
		f.internetEmoji();
	}
	foreach(i; 0 .. 4) {
		f.internetEmojiActivity();
	}
	foreach(i; 0 .. 4) {
		f.internetEmojiBody();
	}
	foreach(i; 0 .. 4) {
		f.internetEmojiFlag();
	}
	foreach(i; 0 .. 4) {
		f.internetEmojiFood();
	}
	foreach(i; 0 .. 4) {
		f.internetEmojiNature();
	}
	foreach(i; 0 .. 4) {
		f.internetEmojiObject();
	}
	foreach(i; 0 .. 4) {
		f.internetEmojiPerson();
	}
	foreach(i; 0 .. 4) {
		f.internetEmojiSmiley();
	}
	foreach(i; 0 .. 4) {
		f.internetEmojiSymbol();
	}
	foreach(i; 0 .. 4) {
		f.internetEmojiTravel();
	}
	foreach(i; 0 .. 4) {
		f.internetExampleEmail();
	}
	foreach(i; 0 .. 4) {
		f.internetFreeEmail();
	}
	foreach(i; 0 .. 4) {
		f.locationBuildingNumber();
	}
	foreach(i; 0 .. 4) {
		f.locationCity();
	}
	foreach(i; 0 .. 4) {
		f.locationCityName();
	}
	foreach(i; 0 .. 4) {
		f.locationCityPattern();
	}
	foreach(i; 0 .. 4) {
		f.locationCityPrefix();
	}
	foreach(i; 0 .. 4) {
		f.locationCitySuffix();
	}
	foreach(i; 0 .. 4) {
		f.locationCountry();
	}
	foreach(i; 0 .. 4) {
		f.locationCounty();
	}
	foreach(i; 0 .. 4) {
		f.locationDefaultCountry();
	}
	foreach(i; 0 .. 4) {
		f.locationDirection();
	}
	foreach(i; 0 .. 4) {
		f.locationDirectionAbbr();
	}
	foreach(i; 0 .. 4) {
		f.locationPostcode();
	}
	foreach(i; 0 .. 4) {
		f.locationSecondaryAddress();
	}
	foreach(i; 0 .. 4) {
		f.locationState();
	}
	foreach(i; 0 .. 4) {
		f.locationStateAbbr();
	}
	foreach(i; 0 .. 4) {
		f.locationStreetAddress();
	}
	foreach(i; 0 .. 4) {
		f.locationStreetName();
	}
	foreach(i; 0 .. 4) {
		f.locationStreetPattern();
	}
	foreach(i; 0 .. 4) {
		f.locationStreetSuffix();
	}
	foreach(i; 0 .. 4) {
		f.locationTimeZone();
	}
	foreach(i; 0 .. 4) {
		f.loremParagraph();
	}
	foreach(i; 0 .. 4) {
		f.loremParagraphs();
	}
	foreach(i; 0 .. 4) {
		f.loremSentance();
	}
	foreach(i; 0 .. 4) {
		f.loremSentances();
	}
	foreach(i; 0 .. 4) {
		f.loremText();
	}
	foreach(i; 0 .. 4) {
		f.loremWords();
	}
	foreach(i; 0 .. 4) {
		f.musicGenre();
	}
	foreach(i; 0 .. 4) {
		f.musicSongName();
	}
	foreach(i; 0 .. 4) {
		f.personBioPart();
	}
	foreach(i; 0 .. 4) {
		f.personBioPattern();
	}
	foreach(i; 0 .. 4) {
		f.personBioSupporter();
	}
	foreach(i; 0 .. 4) {
		f.personFemaleFirstName();
	}
	foreach(i; 0 .. 4) {
		f.personFemaleMiddleName();
	}
	foreach(i; 0 .. 4) {
		f.personFemalePrefix();
	}
	foreach(i; 0 .. 4) {
		f.personFirstName();
	}
	foreach(i; 0 .. 4) {
		f.personGender();
	}
	foreach(i; 0 .. 4) {
		f.personJobArea();
	}
	foreach(i; 0 .. 4) {
		f.personJobDescriptor();
	}
	foreach(i; 0 .. 4) {
		f.personJobTitlePattern();
	}
	foreach(i; 0 .. 4) {
		f.personJobType();
	}
	foreach(i; 0 .. 4) {
		f.personLastName();
	}
	foreach(i; 0 .. 4) {
		f.personLastNamePattern();
	}
	foreach(i; 0 .. 4) {
		f.personMaleFirstName();
	}
	foreach(i; 0 .. 4) {
		f.personMaleMiddleName();
	}
	foreach(i; 0 .. 4) {
		f.personMalePrefix();
	}
	foreach(i; 0 .. 4) {
		f.personMiddleName();
	}
	foreach(i; 0 .. 4) {
		f.personName();
	}
	foreach(i; 0 .. 4) {
		f.personPrefix();
	}
	foreach(i; 0 .. 4) {
		f.personSex();
	}
	foreach(i; 0 .. 4) {
		f.personSuffix();
	}
	foreach(i; 0 .. 4) {
		f.personTitleDescriptor();
	}
	foreach(i; 0 .. 4) {
		f.personTitleJob();
	}
	foreach(i; 0 .. 4) {
		f.personTitleLevel();
	}
	foreach(i; 0 .. 4) {
		f.personWesternZodiacSign();
	}
	foreach(i; 0 .. 4) {
		f.phoneNumber();
	}
	foreach(i; 0 .. 4) {
		f.phoneNumberFormats();
	}
	foreach(i; 0 .. 4) {
		f.scienceChemicalElement();
	}
	foreach(i; 0 .. 4) {
		f.scienceUnit();
	}
	foreach(i; 0 .. 4) {
		f.systemDirectoryPaths();
	}
	foreach(i; 0 .. 4) {
		f.teamCreature();
	}
	foreach(i; 0 .. 4) {
		f.teamName();
	}
	foreach(i; 0 .. 4) {
		f.vehicleBicycleType();
	}
	foreach(i; 0 .. 4) {
		f.vehicleFuel();
	}
	foreach(i; 0 .. 4) {
		f.vehicleManufacturer();
	}
	foreach(i; 0 .. 4) {
		f.vehicleModel();
	}
	foreach(i; 0 .. 4) {
		f.vehicleType();
	}
	foreach(i; 0 .. 4) {
		f.wordAdjective();
	}
	foreach(i; 0 .. 4) {
		f.wordAdverb();
	}
	foreach(i; 0 .. 4) {
		f.wordConjunction();
	}
	foreach(i; 0 .. 4) {
		f.wordInterjection();
	}
	foreach(i; 0 .. 4) {
		f.wordNoun();
	}
	foreach(i; 0 .. 4) {
		f.wordPreposition();
	}
	foreach(i; 0 .. 4) {
		f.wordVerb();
	}
}

unittest {
	auto f = new Faker_id_id(13);

	foreach(i; 0 .. 4) {
		f.airlineAirline();
	}
	foreach(i; 0 .. 4) {
		f.airlineAirplane();
	}
	foreach(i; 0 .. 4) {
		f.airlineAirport();
	}
	foreach(i; 0 .. 4) {
		f.animalBear();
	}
	foreach(i; 0 .. 4) {
		f.animalBird();
	}
	foreach(i; 0 .. 4) {
		f.animalCat();
	}
	foreach(i; 0 .. 4) {
		f.animalCetacean();
	}
	foreach(i; 0 .. 4) {
		f.animalCow();
	}
	foreach(i; 0 .. 4) {
		f.animalCrocodilia();
	}
	foreach(i; 0 .. 4) {
		f.animalDog();
	}
	foreach(i; 0 .. 4) {
		f.animalFish();
	}
	foreach(i; 0 .. 4) {
		f.animalHorse();
	}
	foreach(i; 0 .. 4) {
		f.animalInsect();
	}
	foreach(i; 0 .. 4) {
		f.animalLion();
	}
	foreach(i; 0 .. 4) {
		f.animalRabbit();
	}
	foreach(i; 0 .. 4) {
		f.animalRodent();
	}
	foreach(i; 0 .. 4) {
		f.animalSnake();
	}
	foreach(i; 0 .. 4) {
		f.appAuthor();
	}
	foreach(i; 0 .. 4) {
		f.appName();
	}
	foreach(i; 0 .. 4) {
		f.appVersion();
	}
	foreach(i; 0 .. 4) {
		f.cellPhoneFormats();
	}
	foreach(i; 0 .. 4) {
		f.commerceDepartment();
	}
	foreach(i; 0 .. 4) {
		f.commerceProductDescription();
	}
	foreach(i; 0 .. 4) {
		f.commerceProductNameAdjective();
	}
	foreach(i; 0 .. 4) {
		f.commerceProductNameMaterial();
	}
	foreach(i; 0 .. 4) {
		f.commerceProductNameProduct();
	}
	foreach(i; 0 .. 4) {
		f.companyAdjective();
	}
	foreach(i; 0 .. 4) {
		f.companyBuzzAdjective();
	}
	foreach(i; 0 .. 4) {
		f.companyBuzzNoun();
	}
	foreach(i; 0 .. 4) {
		f.companyBuzzVerb();
	}
	foreach(i; 0 .. 4) {
		f.companyCatchPhrase();
	}
	foreach(i; 0 .. 4) {
		f.companyDescriptor();
	}
	foreach(i; 0 .. 4) {
		f.companyName();
	}
	foreach(i; 0 .. 4) {
		f.companyNamePattern();
	}
	foreach(i; 0 .. 4) {
		f.companyNoun();
	}
	foreach(i; 0 .. 4) {
		f.companySuffix();
	}
	foreach(i; 0 .. 4) {
		f.databaseCollation();
	}
	foreach(i; 0 .. 4) {
		f.databaseColumn();
	}
	foreach(i; 0 .. 4) {
		f.databaseEngine();
	}
	foreach(i; 0 .. 4) {
		f.databaseType();
	}
	foreach(i; 0 .. 4) {
		f.dateMonthAbbr();
	}
	foreach(i; 0 .. 4) {
		f.dateMonthWide();
	}
	foreach(i; 0 .. 4) {
		f.dateWeekdayAbbr();
	}
	foreach(i; 0 .. 4) {
		f.dateWeekdayWide();
	}
	foreach(i; 0 .. 4) {
		f.financeAccountType();
	}
	foreach(i; 0 .. 4) {
		f.financeCreditCardAmericanExpress();
	}
	foreach(i; 0 .. 4) {
		f.financeCreditCardDinersClub();
	}
	foreach(i; 0 .. 4) {
		f.financeCreditCardDiscover();
	}
	foreach(i; 0 .. 4) {
		f.financeCreditCardJcb();
	}
	foreach(i; 0 .. 4) {
		f.financeCreditCardMaestro();
	}
	foreach(i; 0 .. 4) {
		f.financeCreditCardMastercard();
	}
	foreach(i; 0 .. 4) {
		f.financeCreditCardVisa();
	}
	foreach(i; 0 .. 4) {
		f.financeCurrency();
	}
	foreach(i; 0 .. 4) {
		f.financeTransactionType();
	}
	foreach(i; 0 .. 4) {
		f.hackerAbbreviation();
	}
	foreach(i; 0 .. 4) {
		f.hackerAdjective();
	}
	foreach(i; 0 .. 4) {
		f.hackerIngverb();
	}
	foreach(i; 0 .. 4) {
		f.hackerNoun();
	}
	foreach(i; 0 .. 4) {
		f.hackerPhrase();
	}
	foreach(i; 0 .. 4) {
		f.hackerVerb();
	}
	foreach(i; 0 .. 4) {
		f.internetDomainSuffix();
	}
	foreach(i; 0 .. 4) {
		f.internetEmoji();
	}
	foreach(i; 0 .. 4) {
		f.internetEmojiActivity();
	}
	foreach(i; 0 .. 4) {
		f.internetEmojiBody();
	}
	foreach(i; 0 .. 4) {
		f.internetEmojiFlag();
	}
	foreach(i; 0 .. 4) {
		f.internetEmojiFood();
	}
	foreach(i; 0 .. 4) {
		f.internetEmojiNature();
	}
	foreach(i; 0 .. 4) {
		f.internetEmojiObject();
	}
	foreach(i; 0 .. 4) {
		f.internetEmojiPerson();
	}
	foreach(i; 0 .. 4) {
		f.internetEmojiSmiley();
	}
	foreach(i; 0 .. 4) {
		f.internetEmojiSymbol();
	}
	foreach(i; 0 .. 4) {
		f.internetEmojiTravel();
	}
	foreach(i; 0 .. 4) {
		f.internetExampleEmail();
	}
	foreach(i; 0 .. 4) {
		f.internetFreeEmail();
	}
	foreach(i; 0 .. 4) {
		f.locationBuildingNumber();
	}
	foreach(i; 0 .. 4) {
		f.locationCity();
	}
	foreach(i; 0 .. 4) {
		f.locationCityName();
	}
	foreach(i; 0 .. 4) {
		f.locationCityPattern();
	}
	foreach(i; 0 .. 4) {
		f.locationCityPrefix();
	}
	foreach(i; 0 .. 4) {
		f.locationCitySuffix();
	}
	foreach(i; 0 .. 4) {
		f.locationCountry();
	}
	foreach(i; 0 .. 4) {
		f.locationCounty();
	}
	foreach(i; 0 .. 4) {
		f.locationDefaultCountry();
	}
	foreach(i; 0 .. 4) {
		f.locationDirection();
	}
	foreach(i; 0 .. 4) {
		f.locationDirectionAbbr();
	}
	foreach(i; 0 .. 4) {
		f.locationPostcode();
	}
	foreach(i; 0 .. 4) {
		f.locationSecondaryAddress();
	}
	foreach(i; 0 .. 4) {
		f.locationState();
	}
	foreach(i; 0 .. 4) {
		f.locationStateAbbr();
	}
	foreach(i; 0 .. 4) {
		f.locationStreetAddress();
	}
	foreach(i; 0 .. 4) {
		f.locationStreetName();
	}
	foreach(i; 0 .. 4) {
		f.locationStreetPattern();
	}
	foreach(i; 0 .. 4) {
		f.locationStreetSuffix();
	}
	foreach(i; 0 .. 4) {
		f.locationTimeZone();
	}
	foreach(i; 0 .. 4) {
		f.loremParagraph();
	}
	foreach(i; 0 .. 4) {
		f.loremParagraphs();
	}
	foreach(i; 0 .. 4) {
		f.loremSentance();
	}
	foreach(i; 0 .. 4) {
		f.loremSentances();
	}
	foreach(i; 0 .. 4) {
		f.loremText();
	}
	foreach(i; 0 .. 4) {
		f.loremWords();
	}
	foreach(i; 0 .. 4) {
		f.musicGenre();
	}
	foreach(i; 0 .. 4) {
		f.musicSongName();
	}
	foreach(i; 0 .. 4) {
		f.personBioPart();
	}
	foreach(i; 0 .. 4) {
		f.personBioPattern();
	}
	foreach(i; 0 .. 4) {
		f.personBioSupporter();
	}
	foreach(i; 0 .. 4) {
		f.personFemaleFirstName();
	}
	foreach(i; 0 .. 4) {
		f.personFemaleMiddleName();
	}
	foreach(i; 0 .. 4) {
		f.personFemalePrefix();
	}
	foreach(i; 0 .. 4) {
		f.personFirstName();
	}
	foreach(i; 0 .. 4) {
		f.personGender();
	}
	foreach(i; 0 .. 4) {
		f.personJobArea();
	}
	foreach(i; 0 .. 4) {
		f.personJobDescriptor();
	}
	foreach(i; 0 .. 4) {
		f.personJobTitlePattern();
	}
	foreach(i; 0 .. 4) {
		f.personJobType();
	}
	foreach(i; 0 .. 4) {
		f.personLastName();
	}
	foreach(i; 0 .. 4) {
		f.personLastNamePattern();
	}
	foreach(i; 0 .. 4) {
		f.personMaleFirstName();
	}
	foreach(i; 0 .. 4) {
		f.personMaleMiddleName();
	}
	foreach(i; 0 .. 4) {
		f.personMalePrefix();
	}
	foreach(i; 0 .. 4) {
		f.personMiddleName();
	}
	foreach(i; 0 .. 4) {
		f.personName();
	}
	foreach(i; 0 .. 4) {
		f.personPrefix();
	}
	foreach(i; 0 .. 4) {
		f.personSex();
	}
	foreach(i; 0 .. 4) {
		f.personSuffix();
	}
	foreach(i; 0 .. 4) {
		f.personTitleDescriptor();
	}
	foreach(i; 0 .. 4) {
		f.personTitleJob();
	}
	foreach(i; 0 .. 4) {
		f.personTitleLevel();
	}
	foreach(i; 0 .. 4) {
		f.personWesternZodiacSign();
	}
	foreach(i; 0 .. 4) {
		f.phoneNumber();
	}
	foreach(i; 0 .. 4) {
		f.phoneNumberFormats();
	}
	foreach(i; 0 .. 4) {
		f.scienceChemicalElement();
	}
	foreach(i; 0 .. 4) {
		f.scienceUnit();
	}
	foreach(i; 0 .. 4) {
		f.systemDirectoryPaths();
	}
	foreach(i; 0 .. 4) {
		f.teamCreature();
	}
	foreach(i; 0 .. 4) {
		f.teamName();
	}
	foreach(i; 0 .. 4) {
		f.vehicleBicycleType();
	}
	foreach(i; 0 .. 4) {
		f.vehicleFuel();
	}
	foreach(i; 0 .. 4) {
		f.vehicleManufacturer();
	}
	foreach(i; 0 .. 4) {
		f.vehicleModel();
	}
	foreach(i; 0 .. 4) {
		f.vehicleType();
	}
	foreach(i; 0 .. 4) {
		f.wordAdjective();
	}
	foreach(i; 0 .. 4) {
		f.wordAdverb();
	}
	foreach(i; 0 .. 4) {
		f.wordConjunction();
	}
	foreach(i; 0 .. 4) {
		f.wordInterjection();
	}
	foreach(i; 0 .. 4) {
		f.wordNoun();
	}
	foreach(i; 0 .. 4) {
		f.wordPreposition();
	}
	foreach(i; 0 .. 4) {
		f.wordVerb();
	}
}

unittest {
	auto f = new Faker_it(13);

	foreach(i; 0 .. 4) {
		f.airlineAirline();
	}
	foreach(i; 0 .. 4) {
		f.airlineAirplane();
	}
	foreach(i; 0 .. 4) {
		f.airlineAirport();
	}
	foreach(i; 0 .. 4) {
		f.animalBear();
	}
	foreach(i; 0 .. 4) {
		f.animalBird();
	}
	foreach(i; 0 .. 4) {
		f.animalCat();
	}
	foreach(i; 0 .. 4) {
		f.animalCetacean();
	}
	foreach(i; 0 .. 4) {
		f.animalCow();
	}
	foreach(i; 0 .. 4) {
		f.animalCrocodilia();
	}
	foreach(i; 0 .. 4) {
		f.animalDog();
	}
	foreach(i; 0 .. 4) {
		f.animalFish();
	}
	foreach(i; 0 .. 4) {
		f.animalHorse();
	}
	foreach(i; 0 .. 4) {
		f.animalInsect();
	}
	foreach(i; 0 .. 4) {
		f.animalLion();
	}
	foreach(i; 0 .. 4) {
		f.animalRabbit();
	}
	foreach(i; 0 .. 4) {
		f.animalRodent();
	}
	foreach(i; 0 .. 4) {
		f.animalSnake();
	}
	foreach(i; 0 .. 4) {
		f.appAuthor();
	}
	foreach(i; 0 .. 4) {
		f.appName();
	}
	foreach(i; 0 .. 4) {
		f.appVersion();
	}
	foreach(i; 0 .. 4) {
		f.cellPhoneFormats();
	}
	foreach(i; 0 .. 4) {
		f.commerceDepartment();
	}
	foreach(i; 0 .. 4) {
		f.commerceProductDescription();
	}
	foreach(i; 0 .. 4) {
		f.commerceProductNameAdjective();
	}
	foreach(i; 0 .. 4) {
		f.commerceProductNameMaterial();
	}
	foreach(i; 0 .. 4) {
		f.commerceProductNameProduct();
	}
	foreach(i; 0 .. 4) {
		f.companyAdjective();
	}
	foreach(i; 0 .. 4) {
		f.companyBuzzAdjective();
	}
	foreach(i; 0 .. 4) {
		f.companyBuzzNoun();
	}
	foreach(i; 0 .. 4) {
		f.companyBuzzVerb();
	}
	foreach(i; 0 .. 4) {
		f.companyCatchPhrase();
	}
	foreach(i; 0 .. 4) {
		f.companyDescriptor();
	}
	foreach(i; 0 .. 4) {
		f.companyName();
	}
	foreach(i; 0 .. 4) {
		f.companyNamePattern();
	}
	foreach(i; 0 .. 4) {
		f.companyNoun();
	}
	foreach(i; 0 .. 4) {
		f.companySuffix();
	}
	foreach(i; 0 .. 4) {
		f.databaseCollation();
	}
	foreach(i; 0 .. 4) {
		f.databaseColumn();
	}
	foreach(i; 0 .. 4) {
		f.databaseEngine();
	}
	foreach(i; 0 .. 4) {
		f.databaseType();
	}
	foreach(i; 0 .. 4) {
		f.dateMonthAbbr();
	}
	foreach(i; 0 .. 4) {
		f.dateMonthWide();
	}
	foreach(i; 0 .. 4) {
		f.dateWeekdayAbbr();
	}
	foreach(i; 0 .. 4) {
		f.dateWeekdayWide();
	}
	foreach(i; 0 .. 4) {
		f.financeAccountType();
	}
	foreach(i; 0 .. 4) {
		f.financeCreditCardAmericanExpress();
	}
	foreach(i; 0 .. 4) {
		f.financeCreditCardDinersClub();
	}
	foreach(i; 0 .. 4) {
		f.financeCreditCardDiscover();
	}
	foreach(i; 0 .. 4) {
		f.financeCreditCardJcb();
	}
	foreach(i; 0 .. 4) {
		f.financeCreditCardMaestro();
	}
	foreach(i; 0 .. 4) {
		f.financeCreditCardMastercard();
	}
	foreach(i; 0 .. 4) {
		f.financeCreditCardVisa();
	}
	foreach(i; 0 .. 4) {
		f.financeCurrency();
	}
	foreach(i; 0 .. 4) {
		f.financeTransactionType();
	}
	foreach(i; 0 .. 4) {
		f.hackerAbbreviation();
	}
	foreach(i; 0 .. 4) {
		f.hackerAdjective();
	}
	foreach(i; 0 .. 4) {
		f.hackerIngverb();
	}
	foreach(i; 0 .. 4) {
		f.hackerNoun();
	}
	foreach(i; 0 .. 4) {
		f.hackerPhrase();
	}
	foreach(i; 0 .. 4) {
		f.hackerVerb();
	}
	foreach(i; 0 .. 4) {
		f.internetDomainSuffix();
	}
	foreach(i; 0 .. 4) {
		f.internetEmoji();
	}
	foreach(i; 0 .. 4) {
		f.internetEmojiActivity();
	}
	foreach(i; 0 .. 4) {
		f.internetEmojiBody();
	}
	foreach(i; 0 .. 4) {
		f.internetEmojiFlag();
	}
	foreach(i; 0 .. 4) {
		f.internetEmojiFood();
	}
	foreach(i; 0 .. 4) {
		f.internetEmojiNature();
	}
	foreach(i; 0 .. 4) {
		f.internetEmojiObject();
	}
	foreach(i; 0 .. 4) {
		f.internetEmojiPerson();
	}
	foreach(i; 0 .. 4) {
		f.internetEmojiSmiley();
	}
	foreach(i; 0 .. 4) {
		f.internetEmojiSymbol();
	}
	foreach(i; 0 .. 4) {
		f.internetEmojiTravel();
	}
	foreach(i; 0 .. 4) {
		f.internetExampleEmail();
	}
	foreach(i; 0 .. 4) {
		f.internetFreeEmail();
	}
	foreach(i; 0 .. 4) {
		f.locationBuildingNumber();
	}
	foreach(i; 0 .. 4) {
		f.locationCity();
	}
	foreach(i; 0 .. 4) {
		f.locationCityName();
	}
	foreach(i; 0 .. 4) {
		f.locationCityPattern();
	}
	foreach(i; 0 .. 4) {
		f.locationCityPrefix();
	}
	foreach(i; 0 .. 4) {
		f.locationCitySuffix();
	}
	foreach(i; 0 .. 4) {
		f.locationCountry();
	}
	foreach(i; 0 .. 4) {
		f.locationCounty();
	}
	foreach(i; 0 .. 4) {
		f.locationDefaultCountry();
	}
	foreach(i; 0 .. 4) {
		f.locationDirection();
	}
	foreach(i; 0 .. 4) {
		f.locationDirectionAbbr();
	}
	foreach(i; 0 .. 4) {
		f.locationPostcode();
	}
	foreach(i; 0 .. 4) {
		f.locationSecondaryAddress();
	}
	foreach(i; 0 .. 4) {
		f.locationState();
	}
	foreach(i; 0 .. 4) {
		f.locationStateAbbr();
	}
	foreach(i; 0 .. 4) {
		f.locationStreetAddress();
	}
	foreach(i; 0 .. 4) {
		f.locationStreetName();
	}
	foreach(i; 0 .. 4) {
		f.locationStreetPattern();
	}
	foreach(i; 0 .. 4) {
		f.locationStreetSuffix();
	}
	foreach(i; 0 .. 4) {
		f.locationTimeZone();
	}
	foreach(i; 0 .. 4) {
		f.loremParagraph();
	}
	foreach(i; 0 .. 4) {
		f.loremParagraphs();
	}
	foreach(i; 0 .. 4) {
		f.loremSentance();
	}
	foreach(i; 0 .. 4) {
		f.loremSentances();
	}
	foreach(i; 0 .. 4) {
		f.loremText();
	}
	foreach(i; 0 .. 4) {
		f.loremWords();
	}
	foreach(i; 0 .. 4) {
		f.musicGenre();
	}
	foreach(i; 0 .. 4) {
		f.musicSongName();
	}
	foreach(i; 0 .. 4) {
		f.personBioPart();
	}
	foreach(i; 0 .. 4) {
		f.personBioPattern();
	}
	foreach(i; 0 .. 4) {
		f.personBioSupporter();
	}
	foreach(i; 0 .. 4) {
		f.personFemaleFirstName();
	}
	foreach(i; 0 .. 4) {
		f.personFemaleMiddleName();
	}
	foreach(i; 0 .. 4) {
		f.personFemalePrefix();
	}
	foreach(i; 0 .. 4) {
		f.personFirstName();
	}
	foreach(i; 0 .. 4) {
		f.personGender();
	}
	foreach(i; 0 .. 4) {
		f.personJobArea();
	}
	foreach(i; 0 .. 4) {
		f.personJobDescriptor();
	}
	foreach(i; 0 .. 4) {
		f.personJobTitlePattern();
	}
	foreach(i; 0 .. 4) {
		f.personJobType();
	}
	foreach(i; 0 .. 4) {
		f.personLastName();
	}
	foreach(i; 0 .. 4) {
		f.personLastNamePattern();
	}
	foreach(i; 0 .. 4) {
		f.personMaleFirstName();
	}
	foreach(i; 0 .. 4) {
		f.personMaleMiddleName();
	}
	foreach(i; 0 .. 4) {
		f.personMalePrefix();
	}
	foreach(i; 0 .. 4) {
		f.personMiddleName();
	}
	foreach(i; 0 .. 4) {
		f.personName();
	}
	foreach(i; 0 .. 4) {
		f.personPrefix();
	}
	foreach(i; 0 .. 4) {
		f.personSex();
	}
	foreach(i; 0 .. 4) {
		f.personSuffix();
	}
	foreach(i; 0 .. 4) {
		f.personTitleDescriptor();
	}
	foreach(i; 0 .. 4) {
		f.personTitleJob();
	}
	foreach(i; 0 .. 4) {
		f.personTitleLevel();
	}
	foreach(i; 0 .. 4) {
		f.personWesternZodiacSign();
	}
	foreach(i; 0 .. 4) {
		f.phoneNumber();
	}
	foreach(i; 0 .. 4) {
		f.phoneNumberFormats();
	}
	foreach(i; 0 .. 4) {
		f.scienceChemicalElement();
	}
	foreach(i; 0 .. 4) {
		f.scienceUnit();
	}
	foreach(i; 0 .. 4) {
		f.systemDirectoryPaths();
	}
	foreach(i; 0 .. 4) {
		f.teamCreature();
	}
	foreach(i; 0 .. 4) {
		f.teamName();
	}
	foreach(i; 0 .. 4) {
		f.vehicleBicycleType();
	}
	foreach(i; 0 .. 4) {
		f.vehicleFuel();
	}
	foreach(i; 0 .. 4) {
		f.vehicleManufacturer();
	}
	foreach(i; 0 .. 4) {
		f.vehicleModel();
	}
	foreach(i; 0 .. 4) {
		f.vehicleType();
	}
	foreach(i; 0 .. 4) {
		f.wordAdjective();
	}
	foreach(i; 0 .. 4) {
		f.wordAdverb();
	}
	foreach(i; 0 .. 4) {
		f.wordConjunction();
	}
	foreach(i; 0 .. 4) {
		f.wordInterjection();
	}
	foreach(i; 0 .. 4) {
		f.wordNoun();
	}
	foreach(i; 0 .. 4) {
		f.wordPreposition();
	}
	foreach(i; 0 .. 4) {
		f.wordVerb();
	}
}

unittest {
	auto f = new Faker_ja(13);

	foreach(i; 0 .. 4) {
		f.airlineAirline();
	}
	foreach(i; 0 .. 4) {
		f.airlineAirplane();
	}
	foreach(i; 0 .. 4) {
		f.airlineAirport();
	}
	foreach(i; 0 .. 4) {
		f.animalBear();
	}
	foreach(i; 0 .. 4) {
		f.animalBird();
	}
	foreach(i; 0 .. 4) {
		f.animalCat();
	}
	foreach(i; 0 .. 4) {
		f.animalCetacean();
	}
	foreach(i; 0 .. 4) {
		f.animalCow();
	}
	foreach(i; 0 .. 4) {
		f.animalCrocodilia();
	}
	foreach(i; 0 .. 4) {
		f.animalDog();
	}
	foreach(i; 0 .. 4) {
		f.animalFish();
	}
	foreach(i; 0 .. 4) {
		f.animalHorse();
	}
	foreach(i; 0 .. 4) {
		f.animalInsect();
	}
	foreach(i; 0 .. 4) {
		f.animalLion();
	}
	foreach(i; 0 .. 4) {
		f.animalRabbit();
	}
	foreach(i; 0 .. 4) {
		f.animalRodent();
	}
	foreach(i; 0 .. 4) {
		f.animalSnake();
	}
	foreach(i; 0 .. 4) {
		f.appAuthor();
	}
	foreach(i; 0 .. 4) {
		f.appName();
	}
	foreach(i; 0 .. 4) {
		f.appVersion();
	}
	foreach(i; 0 .. 4) {
		f.cellPhoneFormats();
	}
	foreach(i; 0 .. 4) {
		f.commerceDepartment();
	}
	foreach(i; 0 .. 4) {
		f.commerceProductDescription();
	}
	foreach(i; 0 .. 4) {
		f.commerceProductNameAdjective();
	}
	foreach(i; 0 .. 4) {
		f.commerceProductNameMaterial();
	}
	foreach(i; 0 .. 4) {
		f.commerceProductNameProduct();
	}
	foreach(i; 0 .. 4) {
		f.companyAdjective();
	}
	foreach(i; 0 .. 4) {
		f.companyBuzzAdjective();
	}
	foreach(i; 0 .. 4) {
		f.companyBuzzNoun();
	}
	foreach(i; 0 .. 4) {
		f.companyBuzzVerb();
	}
	foreach(i; 0 .. 4) {
		f.companyCatchPhrase();
	}
	foreach(i; 0 .. 4) {
		f.companyDescriptor();
	}
	foreach(i; 0 .. 4) {
		f.companyName();
	}
	foreach(i; 0 .. 4) {
		f.companyNamePattern();
	}
	foreach(i; 0 .. 4) {
		f.companyNoun();
	}
	foreach(i; 0 .. 4) {
		f.companySuffix();
	}
	foreach(i; 0 .. 4) {
		f.databaseCollation();
	}
	foreach(i; 0 .. 4) {
		f.databaseColumn();
	}
	foreach(i; 0 .. 4) {
		f.databaseEngine();
	}
	foreach(i; 0 .. 4) {
		f.databaseType();
	}
	foreach(i; 0 .. 4) {
		f.dateMonthAbbr();
	}
	foreach(i; 0 .. 4) {
		f.dateMonthWide();
	}
	foreach(i; 0 .. 4) {
		f.dateWeekdayAbbr();
	}
	foreach(i; 0 .. 4) {
		f.dateWeekdayWide();
	}
	foreach(i; 0 .. 4) {
		f.financeAccountType();
	}
	foreach(i; 0 .. 4) {
		f.financeCreditCardAmericanExpress();
	}
	foreach(i; 0 .. 4) {
		f.financeCreditCardDinersClub();
	}
	foreach(i; 0 .. 4) {
		f.financeCreditCardDiscover();
	}
	foreach(i; 0 .. 4) {
		f.financeCreditCardJcb();
	}
	foreach(i; 0 .. 4) {
		f.financeCreditCardMaestro();
	}
	foreach(i; 0 .. 4) {
		f.financeCreditCardMastercard();
	}
	foreach(i; 0 .. 4) {
		f.financeCreditCardVisa();
	}
	foreach(i; 0 .. 4) {
		f.financeCurrency();
	}
	foreach(i; 0 .. 4) {
		f.financeTransactionType();
	}
	foreach(i; 0 .. 4) {
		f.hackerAbbreviation();
	}
	foreach(i; 0 .. 4) {
		f.hackerAdjective();
	}
	foreach(i; 0 .. 4) {
		f.hackerIngverb();
	}
	foreach(i; 0 .. 4) {
		f.hackerNoun();
	}
	foreach(i; 0 .. 4) {
		f.hackerPhrase();
	}
	foreach(i; 0 .. 4) {
		f.hackerVerb();
	}
	foreach(i; 0 .. 4) {
		f.internetDomainSuffix();
	}
	foreach(i; 0 .. 4) {
		f.internetEmoji();
	}
	foreach(i; 0 .. 4) {
		f.internetEmojiActivity();
	}
	foreach(i; 0 .. 4) {
		f.internetEmojiBody();
	}
	foreach(i; 0 .. 4) {
		f.internetEmojiFlag();
	}
	foreach(i; 0 .. 4) {
		f.internetEmojiFood();
	}
	foreach(i; 0 .. 4) {
		f.internetEmojiNature();
	}
	foreach(i; 0 .. 4) {
		f.internetEmojiObject();
	}
	foreach(i; 0 .. 4) {
		f.internetEmojiPerson();
	}
	foreach(i; 0 .. 4) {
		f.internetEmojiSmiley();
	}
	foreach(i; 0 .. 4) {
		f.internetEmojiSymbol();
	}
	foreach(i; 0 .. 4) {
		f.internetEmojiTravel();
	}
	foreach(i; 0 .. 4) {
		f.internetExampleEmail();
	}
	foreach(i; 0 .. 4) {
		f.internetFreeEmail();
	}
	foreach(i; 0 .. 4) {
		f.locationBuildingNumber();
	}
	foreach(i; 0 .. 4) {
		f.locationCity();
	}
	foreach(i; 0 .. 4) {
		f.locationCityName();
	}
	foreach(i; 0 .. 4) {
		f.locationCityPattern();
	}
	foreach(i; 0 .. 4) {
		f.locationCityPrefix();
	}
	foreach(i; 0 .. 4) {
		f.locationCitySuffix();
	}
	foreach(i; 0 .. 4) {
		f.locationCountry();
	}
	foreach(i; 0 .. 4) {
		f.locationCounty();
	}
	foreach(i; 0 .. 4) {
		f.locationDefaultCountry();
	}
	foreach(i; 0 .. 4) {
		f.locationDirection();
	}
	foreach(i; 0 .. 4) {
		f.locationDirectionAbbr();
	}
	foreach(i; 0 .. 4) {
		f.locationPostcode();
	}
	foreach(i; 0 .. 4) {
		f.locationSecondaryAddress();
	}
	foreach(i; 0 .. 4) {
		f.locationState();
	}
	foreach(i; 0 .. 4) {
		f.locationStateAbbr();
	}
	foreach(i; 0 .. 4) {
		f.locationStreetAddress();
	}
	foreach(i; 0 .. 4) {
		f.locationStreetName();
	}
	foreach(i; 0 .. 4) {
		f.locationStreetPattern();
	}
	foreach(i; 0 .. 4) {
		f.locationStreetSuffix();
	}
	foreach(i; 0 .. 4) {
		f.locationTimeZone();
	}
	foreach(i; 0 .. 4) {
		f.loremParagraph();
	}
	foreach(i; 0 .. 4) {
		f.loremParagraphs();
	}
	foreach(i; 0 .. 4) {
		f.loremSentance();
	}
	foreach(i; 0 .. 4) {
		f.loremSentances();
	}
	foreach(i; 0 .. 4) {
		f.loremText();
	}
	foreach(i; 0 .. 4) {
		f.loremWords();
	}
	foreach(i; 0 .. 4) {
		f.musicGenre();
	}
	foreach(i; 0 .. 4) {
		f.musicSongName();
	}
	foreach(i; 0 .. 4) {
		f.personBioPart();
	}
	foreach(i; 0 .. 4) {
		f.personBioPattern();
	}
	foreach(i; 0 .. 4) {
		f.personBioSupporter();
	}
	foreach(i; 0 .. 4) {
		f.personFemaleFirstName();
	}
	foreach(i; 0 .. 4) {
		f.personFemaleMiddleName();
	}
	foreach(i; 0 .. 4) {
		f.personFemalePrefix();
	}
	foreach(i; 0 .. 4) {
		f.personFirstName();
	}
	foreach(i; 0 .. 4) {
		f.personGender();
	}
	foreach(i; 0 .. 4) {
		f.personJobArea();
	}
	foreach(i; 0 .. 4) {
		f.personJobDescriptor();
	}
	foreach(i; 0 .. 4) {
		f.personJobTitlePattern();
	}
	foreach(i; 0 .. 4) {
		f.personJobType();
	}
	foreach(i; 0 .. 4) {
		f.personLastName();
	}
	foreach(i; 0 .. 4) {
		f.personLastNamePattern();
	}
	foreach(i; 0 .. 4) {
		f.personMaleFirstName();
	}
	foreach(i; 0 .. 4) {
		f.personMaleMiddleName();
	}
	foreach(i; 0 .. 4) {
		f.personMalePrefix();
	}
	foreach(i; 0 .. 4) {
		f.personMiddleName();
	}
	foreach(i; 0 .. 4) {
		f.personName();
	}
	foreach(i; 0 .. 4) {
		f.personPrefix();
	}
	foreach(i; 0 .. 4) {
		f.personSex();
	}
	foreach(i; 0 .. 4) {
		f.personSuffix();
	}
	foreach(i; 0 .. 4) {
		f.personTitleDescriptor();
	}
	foreach(i; 0 .. 4) {
		f.personTitleJob();
	}
	foreach(i; 0 .. 4) {
		f.personTitleLevel();
	}
	foreach(i; 0 .. 4) {
		f.personWesternZodiacSign();
	}
	foreach(i; 0 .. 4) {
		f.phoneNumber();
	}
	foreach(i; 0 .. 4) {
		f.phoneNumberFormats();
	}
	foreach(i; 0 .. 4) {
		f.scienceChemicalElement();
	}
	foreach(i; 0 .. 4) {
		f.scienceUnit();
	}
	foreach(i; 0 .. 4) {
		f.systemDirectoryPaths();
	}
	foreach(i; 0 .. 4) {
		f.teamCreature();
	}
	foreach(i; 0 .. 4) {
		f.teamName();
	}
	foreach(i; 0 .. 4) {
		f.vehicleBicycleType();
	}
	foreach(i; 0 .. 4) {
		f.vehicleFuel();
	}
	foreach(i; 0 .. 4) {
		f.vehicleManufacturer();
	}
	foreach(i; 0 .. 4) {
		f.vehicleModel();
	}
	foreach(i; 0 .. 4) {
		f.vehicleType();
	}
	foreach(i; 0 .. 4) {
		f.wordAdjective();
	}
	foreach(i; 0 .. 4) {
		f.wordAdverb();
	}
	foreach(i; 0 .. 4) {
		f.wordConjunction();
	}
	foreach(i; 0 .. 4) {
		f.wordInterjection();
	}
	foreach(i; 0 .. 4) {
		f.wordNoun();
	}
	foreach(i; 0 .. 4) {
		f.wordPreposition();
	}
	foreach(i; 0 .. 4) {
		f.wordVerb();
	}
}

unittest {
	auto f = new Faker_ka_ge(13);

	foreach(i; 0 .. 4) {
		f.airlineAirline();
	}
	foreach(i; 0 .. 4) {
		f.airlineAirplane();
	}
	foreach(i; 0 .. 4) {
		f.airlineAirport();
	}
	foreach(i; 0 .. 4) {
		f.animalBear();
	}
	foreach(i; 0 .. 4) {
		f.animalBird();
	}
	foreach(i; 0 .. 4) {
		f.animalCat();
	}
	foreach(i; 0 .. 4) {
		f.animalCetacean();
	}
	foreach(i; 0 .. 4) {
		f.animalCow();
	}
	foreach(i; 0 .. 4) {
		f.animalCrocodilia();
	}
	foreach(i; 0 .. 4) {
		f.animalDog();
	}
	foreach(i; 0 .. 4) {
		f.animalFish();
	}
	foreach(i; 0 .. 4) {
		f.animalHorse();
	}
	foreach(i; 0 .. 4) {
		f.animalInsect();
	}
	foreach(i; 0 .. 4) {
		f.animalLion();
	}
	foreach(i; 0 .. 4) {
		f.animalRabbit();
	}
	foreach(i; 0 .. 4) {
		f.animalRodent();
	}
	foreach(i; 0 .. 4) {
		f.animalSnake();
	}
	foreach(i; 0 .. 4) {
		f.appAuthor();
	}
	foreach(i; 0 .. 4) {
		f.appName();
	}
	foreach(i; 0 .. 4) {
		f.appVersion();
	}
	foreach(i; 0 .. 4) {
		f.cellPhoneFormats();
	}
	foreach(i; 0 .. 4) {
		f.commerceDepartment();
	}
	foreach(i; 0 .. 4) {
		f.commerceProductDescription();
	}
	foreach(i; 0 .. 4) {
		f.commerceProductNameAdjective();
	}
	foreach(i; 0 .. 4) {
		f.commerceProductNameMaterial();
	}
	foreach(i; 0 .. 4) {
		f.commerceProductNameProduct();
	}
	foreach(i; 0 .. 4) {
		f.companyAdjective();
	}
	foreach(i; 0 .. 4) {
		f.companyBuzzAdjective();
	}
	foreach(i; 0 .. 4) {
		f.companyBuzzNoun();
	}
	foreach(i; 0 .. 4) {
		f.companyBuzzVerb();
	}
	foreach(i; 0 .. 4) {
		f.companyCatchPhrase();
	}
	foreach(i; 0 .. 4) {
		f.companyDescriptor();
	}
	foreach(i; 0 .. 4) {
		f.companyName();
	}
	foreach(i; 0 .. 4) {
		f.companyNamePattern();
	}
	foreach(i; 0 .. 4) {
		f.companyNoun();
	}
	foreach(i; 0 .. 4) {
		f.companySuffix();
	}
	foreach(i; 0 .. 4) {
		f.databaseCollation();
	}
	foreach(i; 0 .. 4) {
		f.databaseColumn();
	}
	foreach(i; 0 .. 4) {
		f.databaseEngine();
	}
	foreach(i; 0 .. 4) {
		f.databaseType();
	}
	foreach(i; 0 .. 4) {
		f.dateMonthAbbr();
	}
	foreach(i; 0 .. 4) {
		f.dateMonthWide();
	}
	foreach(i; 0 .. 4) {
		f.dateWeekdayAbbr();
	}
	foreach(i; 0 .. 4) {
		f.dateWeekdayWide();
	}
	foreach(i; 0 .. 4) {
		f.financeAccountType();
	}
	foreach(i; 0 .. 4) {
		f.financeCreditCardAmericanExpress();
	}
	foreach(i; 0 .. 4) {
		f.financeCreditCardDinersClub();
	}
	foreach(i; 0 .. 4) {
		f.financeCreditCardDiscover();
	}
	foreach(i; 0 .. 4) {
		f.financeCreditCardJcb();
	}
	foreach(i; 0 .. 4) {
		f.financeCreditCardMaestro();
	}
	foreach(i; 0 .. 4) {
		f.financeCreditCardMastercard();
	}
	foreach(i; 0 .. 4) {
		f.financeCreditCardVisa();
	}
	foreach(i; 0 .. 4) {
		f.financeCurrency();
	}
	foreach(i; 0 .. 4) {
		f.financeTransactionType();
	}
	foreach(i; 0 .. 4) {
		f.hackerAbbreviation();
	}
	foreach(i; 0 .. 4) {
		f.hackerAdjective();
	}
	foreach(i; 0 .. 4) {
		f.hackerIngverb();
	}
	foreach(i; 0 .. 4) {
		f.hackerNoun();
	}
	foreach(i; 0 .. 4) {
		f.hackerPhrase();
	}
	foreach(i; 0 .. 4) {
		f.hackerVerb();
	}
	foreach(i; 0 .. 4) {
		f.internetDomainSuffix();
	}
	foreach(i; 0 .. 4) {
		f.internetEmoji();
	}
	foreach(i; 0 .. 4) {
		f.internetEmojiActivity();
	}
	foreach(i; 0 .. 4) {
		f.internetEmojiBody();
	}
	foreach(i; 0 .. 4) {
		f.internetEmojiFlag();
	}
	foreach(i; 0 .. 4) {
		f.internetEmojiFood();
	}
	foreach(i; 0 .. 4) {
		f.internetEmojiNature();
	}
	foreach(i; 0 .. 4) {
		f.internetEmojiObject();
	}
	foreach(i; 0 .. 4) {
		f.internetEmojiPerson();
	}
	foreach(i; 0 .. 4) {
		f.internetEmojiSmiley();
	}
	foreach(i; 0 .. 4) {
		f.internetEmojiSymbol();
	}
	foreach(i; 0 .. 4) {
		f.internetEmojiTravel();
	}
	foreach(i; 0 .. 4) {
		f.internetExampleEmail();
	}
	foreach(i; 0 .. 4) {
		f.internetFreeEmail();
	}
	foreach(i; 0 .. 4) {
		f.locationBuildingNumber();
	}
	foreach(i; 0 .. 4) {
		f.locationCity();
	}
	foreach(i; 0 .. 4) {
		f.locationCityName();
	}
	foreach(i; 0 .. 4) {
		f.locationCityPattern();
	}
	foreach(i; 0 .. 4) {
		f.locationCityPrefix();
	}
	foreach(i; 0 .. 4) {
		f.locationCitySuffix();
	}
	foreach(i; 0 .. 4) {
		f.locationCountry();
	}
	foreach(i; 0 .. 4) {
		f.locationCounty();
	}
	foreach(i; 0 .. 4) {
		f.locationDefaultCountry();
	}
	foreach(i; 0 .. 4) {
		f.locationDirection();
	}
	foreach(i; 0 .. 4) {
		f.locationDirectionAbbr();
	}
	foreach(i; 0 .. 4) {
		f.locationPostcode();
	}
	foreach(i; 0 .. 4) {
		f.locationSecondaryAddress();
	}
	foreach(i; 0 .. 4) {
		f.locationState();
	}
	foreach(i; 0 .. 4) {
		f.locationStateAbbr();
	}
	foreach(i; 0 .. 4) {
		f.locationStreetAddress();
	}
	foreach(i; 0 .. 4) {
		f.locationStreetName();
	}
	foreach(i; 0 .. 4) {
		f.locationStreetPattern();
	}
	foreach(i; 0 .. 4) {
		f.locationStreetSuffix();
	}
	foreach(i; 0 .. 4) {
		f.locationTimeZone();
	}
	foreach(i; 0 .. 4) {
		f.loremParagraph();
	}
	foreach(i; 0 .. 4) {
		f.loremParagraphs();
	}
	foreach(i; 0 .. 4) {
		f.loremSentance();
	}
	foreach(i; 0 .. 4) {
		f.loremSentances();
	}
	foreach(i; 0 .. 4) {
		f.loremText();
	}
	foreach(i; 0 .. 4) {
		f.loremWords();
	}
	foreach(i; 0 .. 4) {
		f.musicGenre();
	}
	foreach(i; 0 .. 4) {
		f.musicSongName();
	}
	foreach(i; 0 .. 4) {
		f.personBioPart();
	}
	foreach(i; 0 .. 4) {
		f.personBioPattern();
	}
	foreach(i; 0 .. 4) {
		f.personBioSupporter();
	}
	foreach(i; 0 .. 4) {
		f.personFemaleFirstName();
	}
	foreach(i; 0 .. 4) {
		f.personFemaleMiddleName();
	}
	foreach(i; 0 .. 4) {
		f.personFemalePrefix();
	}
	foreach(i; 0 .. 4) {
		f.personFirstName();
	}
	foreach(i; 0 .. 4) {
		f.personGender();
	}
	foreach(i; 0 .. 4) {
		f.personJobArea();
	}
	foreach(i; 0 .. 4) {
		f.personJobDescriptor();
	}
	foreach(i; 0 .. 4) {
		f.personJobTitlePattern();
	}
	foreach(i; 0 .. 4) {
		f.personJobType();
	}
	foreach(i; 0 .. 4) {
		f.personLastName();
	}
	foreach(i; 0 .. 4) {
		f.personLastNamePattern();
	}
	foreach(i; 0 .. 4) {
		f.personMaleFirstName();
	}
	foreach(i; 0 .. 4) {
		f.personMaleMiddleName();
	}
	foreach(i; 0 .. 4) {
		f.personMalePrefix();
	}
	foreach(i; 0 .. 4) {
		f.personMiddleName();
	}
	foreach(i; 0 .. 4) {
		f.personName();
	}
	foreach(i; 0 .. 4) {
		f.personPrefix();
	}
	foreach(i; 0 .. 4) {
		f.personSex();
	}
	foreach(i; 0 .. 4) {
		f.personSuffix();
	}
	foreach(i; 0 .. 4) {
		f.personTitleDescriptor();
	}
	foreach(i; 0 .. 4) {
		f.personTitleJob();
	}
	foreach(i; 0 .. 4) {
		f.personTitleLevel();
	}
	foreach(i; 0 .. 4) {
		f.personWesternZodiacSign();
	}
	foreach(i; 0 .. 4) {
		f.phoneNumber();
	}
	foreach(i; 0 .. 4) {
		f.phoneNumberFormats();
	}
	foreach(i; 0 .. 4) {
		f.scienceChemicalElement();
	}
	foreach(i; 0 .. 4) {
		f.scienceUnit();
	}
	foreach(i; 0 .. 4) {
		f.systemDirectoryPaths();
	}
	foreach(i; 0 .. 4) {
		f.teamCreature();
	}
	foreach(i; 0 .. 4) {
		f.teamName();
	}
	foreach(i; 0 .. 4) {
		f.vehicleBicycleType();
	}
	foreach(i; 0 .. 4) {
		f.vehicleFuel();
	}
	foreach(i; 0 .. 4) {
		f.vehicleManufacturer();
	}
	foreach(i; 0 .. 4) {
		f.vehicleModel();
	}
	foreach(i; 0 .. 4) {
		f.vehicleType();
	}
	foreach(i; 0 .. 4) {
		f.wordAdjective();
	}
	foreach(i; 0 .. 4) {
		f.wordAdverb();
	}
	foreach(i; 0 .. 4) {
		f.wordConjunction();
	}
	foreach(i; 0 .. 4) {
		f.wordInterjection();
	}
	foreach(i; 0 .. 4) {
		f.wordNoun();
	}
	foreach(i; 0 .. 4) {
		f.wordPreposition();
	}
	foreach(i; 0 .. 4) {
		f.wordVerb();
	}
}

unittest {
	auto f = new Faker_ko(13);

	foreach(i; 0 .. 4) {
		f.airlineAirline();
	}
	foreach(i; 0 .. 4) {
		f.airlineAirplane();
	}
	foreach(i; 0 .. 4) {
		f.airlineAirport();
	}
	foreach(i; 0 .. 4) {
		f.animalBear();
	}
	foreach(i; 0 .. 4) {
		f.animalBird();
	}
	foreach(i; 0 .. 4) {
		f.animalCat();
	}
	foreach(i; 0 .. 4) {
		f.animalCetacean();
	}
	foreach(i; 0 .. 4) {
		f.animalCow();
	}
	foreach(i; 0 .. 4) {
		f.animalCrocodilia();
	}
	foreach(i; 0 .. 4) {
		f.animalDog();
	}
	foreach(i; 0 .. 4) {
		f.animalFish();
	}
	foreach(i; 0 .. 4) {
		f.animalHorse();
	}
	foreach(i; 0 .. 4) {
		f.animalInsect();
	}
	foreach(i; 0 .. 4) {
		f.animalLion();
	}
	foreach(i; 0 .. 4) {
		f.animalRabbit();
	}
	foreach(i; 0 .. 4) {
		f.animalRodent();
	}
	foreach(i; 0 .. 4) {
		f.animalSnake();
	}
	foreach(i; 0 .. 4) {
		f.appAuthor();
	}
	foreach(i; 0 .. 4) {
		f.appName();
	}
	foreach(i; 0 .. 4) {
		f.appVersion();
	}
	foreach(i; 0 .. 4) {
		f.cellPhoneFormats();
	}
	foreach(i; 0 .. 4) {
		f.commerceDepartment();
	}
	foreach(i; 0 .. 4) {
		f.commerceProductDescription();
	}
	foreach(i; 0 .. 4) {
		f.commerceProductNameAdjective();
	}
	foreach(i; 0 .. 4) {
		f.commerceProductNameMaterial();
	}
	foreach(i; 0 .. 4) {
		f.commerceProductNameProduct();
	}
	foreach(i; 0 .. 4) {
		f.companyAdjective();
	}
	foreach(i; 0 .. 4) {
		f.companyBuzzAdjective();
	}
	foreach(i; 0 .. 4) {
		f.companyBuzzNoun();
	}
	foreach(i; 0 .. 4) {
		f.companyBuzzVerb();
	}
	foreach(i; 0 .. 4) {
		f.companyCatchPhrase();
	}
	foreach(i; 0 .. 4) {
		f.companyDescriptor();
	}
	foreach(i; 0 .. 4) {
		f.companyName();
	}
	foreach(i; 0 .. 4) {
		f.companyNamePattern();
	}
	foreach(i; 0 .. 4) {
		f.companyNoun();
	}
	foreach(i; 0 .. 4) {
		f.companySuffix();
	}
	foreach(i; 0 .. 4) {
		f.databaseCollation();
	}
	foreach(i; 0 .. 4) {
		f.databaseColumn();
	}
	foreach(i; 0 .. 4) {
		f.databaseEngine();
	}
	foreach(i; 0 .. 4) {
		f.databaseType();
	}
	foreach(i; 0 .. 4) {
		f.dateMonthAbbr();
	}
	foreach(i; 0 .. 4) {
		f.dateMonthWide();
	}
	foreach(i; 0 .. 4) {
		f.dateWeekdayAbbr();
	}
	foreach(i; 0 .. 4) {
		f.dateWeekdayWide();
	}
	foreach(i; 0 .. 4) {
		f.financeAccountType();
	}
	foreach(i; 0 .. 4) {
		f.financeCreditCardAmericanExpress();
	}
	foreach(i; 0 .. 4) {
		f.financeCreditCardDinersClub();
	}
	foreach(i; 0 .. 4) {
		f.financeCreditCardDiscover();
	}
	foreach(i; 0 .. 4) {
		f.financeCreditCardJcb();
	}
	foreach(i; 0 .. 4) {
		f.financeCreditCardMaestro();
	}
	foreach(i; 0 .. 4) {
		f.financeCreditCardMastercard();
	}
	foreach(i; 0 .. 4) {
		f.financeCreditCardVisa();
	}
	foreach(i; 0 .. 4) {
		f.financeCurrency();
	}
	foreach(i; 0 .. 4) {
		f.financeTransactionType();
	}
	foreach(i; 0 .. 4) {
		f.hackerAbbreviation();
	}
	foreach(i; 0 .. 4) {
		f.hackerAdjective();
	}
	foreach(i; 0 .. 4) {
		f.hackerIngverb();
	}
	foreach(i; 0 .. 4) {
		f.hackerNoun();
	}
	foreach(i; 0 .. 4) {
		f.hackerPhrase();
	}
	foreach(i; 0 .. 4) {
		f.hackerVerb();
	}
	foreach(i; 0 .. 4) {
		f.internetDomainSuffix();
	}
	foreach(i; 0 .. 4) {
		f.internetEmoji();
	}
	foreach(i; 0 .. 4) {
		f.internetEmojiActivity();
	}
	foreach(i; 0 .. 4) {
		f.internetEmojiBody();
	}
	foreach(i; 0 .. 4) {
		f.internetEmojiFlag();
	}
	foreach(i; 0 .. 4) {
		f.internetEmojiFood();
	}
	foreach(i; 0 .. 4) {
		f.internetEmojiNature();
	}
	foreach(i; 0 .. 4) {
		f.internetEmojiObject();
	}
	foreach(i; 0 .. 4) {
		f.internetEmojiPerson();
	}
	foreach(i; 0 .. 4) {
		f.internetEmojiSmiley();
	}
	foreach(i; 0 .. 4) {
		f.internetEmojiSymbol();
	}
	foreach(i; 0 .. 4) {
		f.internetEmojiTravel();
	}
	foreach(i; 0 .. 4) {
		f.internetExampleEmail();
	}
	foreach(i; 0 .. 4) {
		f.internetFreeEmail();
	}
	foreach(i; 0 .. 4) {
		f.locationBuildingNumber();
	}
	foreach(i; 0 .. 4) {
		f.locationCity();
	}
	foreach(i; 0 .. 4) {
		f.locationCityName();
	}
	foreach(i; 0 .. 4) {
		f.locationCityPattern();
	}
	foreach(i; 0 .. 4) {
		f.locationCityPrefix();
	}
	foreach(i; 0 .. 4) {
		f.locationCitySuffix();
	}
	foreach(i; 0 .. 4) {
		f.locationCountry();
	}
	foreach(i; 0 .. 4) {
		f.locationCounty();
	}
	foreach(i; 0 .. 4) {
		f.locationDefaultCountry();
	}
	foreach(i; 0 .. 4) {
		f.locationDirection();
	}
	foreach(i; 0 .. 4) {
		f.locationDirectionAbbr();
	}
	foreach(i; 0 .. 4) {
		f.locationPostcode();
	}
	foreach(i; 0 .. 4) {
		f.locationSecondaryAddress();
	}
	foreach(i; 0 .. 4) {
		f.locationState();
	}
	foreach(i; 0 .. 4) {
		f.locationStateAbbr();
	}
	foreach(i; 0 .. 4) {
		f.locationStreetAddress();
	}
	foreach(i; 0 .. 4) {
		f.locationStreetName();
	}
	foreach(i; 0 .. 4) {
		f.locationStreetPattern();
	}
	foreach(i; 0 .. 4) {
		f.locationStreetSuffix();
	}
	foreach(i; 0 .. 4) {
		f.locationTimeZone();
	}
	foreach(i; 0 .. 4) {
		f.loremParagraph();
	}
	foreach(i; 0 .. 4) {
		f.loremParagraphs();
	}
	foreach(i; 0 .. 4) {
		f.loremSentance();
	}
	foreach(i; 0 .. 4) {
		f.loremSentances();
	}
	foreach(i; 0 .. 4) {
		f.loremText();
	}
	foreach(i; 0 .. 4) {
		f.loremWords();
	}
	foreach(i; 0 .. 4) {
		f.musicGenre();
	}
	foreach(i; 0 .. 4) {
		f.musicSongName();
	}
	foreach(i; 0 .. 4) {
		f.personBioPart();
	}
	foreach(i; 0 .. 4) {
		f.personBioPattern();
	}
	foreach(i; 0 .. 4) {
		f.personBioSupporter();
	}
	foreach(i; 0 .. 4) {
		f.personFemaleFirstName();
	}
	foreach(i; 0 .. 4) {
		f.personFemaleMiddleName();
	}
	foreach(i; 0 .. 4) {
		f.personFemalePrefix();
	}
	foreach(i; 0 .. 4) {
		f.personFirstName();
	}
	foreach(i; 0 .. 4) {
		f.personGender();
	}
	foreach(i; 0 .. 4) {
		f.personJobArea();
	}
	foreach(i; 0 .. 4) {
		f.personJobDescriptor();
	}
	foreach(i; 0 .. 4) {
		f.personJobTitlePattern();
	}
	foreach(i; 0 .. 4) {
		f.personJobType();
	}
	foreach(i; 0 .. 4) {
		f.personLastName();
	}
	foreach(i; 0 .. 4) {
		f.personLastNamePattern();
	}
	foreach(i; 0 .. 4) {
		f.personMaleFirstName();
	}
	foreach(i; 0 .. 4) {
		f.personMaleMiddleName();
	}
	foreach(i; 0 .. 4) {
		f.personMalePrefix();
	}
	foreach(i; 0 .. 4) {
		f.personMiddleName();
	}
	foreach(i; 0 .. 4) {
		f.personName();
	}
	foreach(i; 0 .. 4) {
		f.personPrefix();
	}
	foreach(i; 0 .. 4) {
		f.personSex();
	}
	foreach(i; 0 .. 4) {
		f.personSuffix();
	}
	foreach(i; 0 .. 4) {
		f.personTitleDescriptor();
	}
	foreach(i; 0 .. 4) {
		f.personTitleJob();
	}
	foreach(i; 0 .. 4) {
		f.personTitleLevel();
	}
	foreach(i; 0 .. 4) {
		f.personWesternZodiacSign();
	}
	foreach(i; 0 .. 4) {
		f.phoneNumber();
	}
	foreach(i; 0 .. 4) {
		f.phoneNumberFormats();
	}
	foreach(i; 0 .. 4) {
		f.scienceChemicalElement();
	}
	foreach(i; 0 .. 4) {
		f.scienceUnit();
	}
	foreach(i; 0 .. 4) {
		f.systemDirectoryPaths();
	}
	foreach(i; 0 .. 4) {
		f.teamCreature();
	}
	foreach(i; 0 .. 4) {
		f.teamName();
	}
	foreach(i; 0 .. 4) {
		f.vehicleBicycleType();
	}
	foreach(i; 0 .. 4) {
		f.vehicleFuel();
	}
	foreach(i; 0 .. 4) {
		f.vehicleManufacturer();
	}
	foreach(i; 0 .. 4) {
		f.vehicleModel();
	}
	foreach(i; 0 .. 4) {
		f.vehicleType();
	}
	foreach(i; 0 .. 4) {
		f.wordAdjective();
	}
	foreach(i; 0 .. 4) {
		f.wordAdverb();
	}
	foreach(i; 0 .. 4) {
		f.wordConjunction();
	}
	foreach(i; 0 .. 4) {
		f.wordInterjection();
	}
	foreach(i; 0 .. 4) {
		f.wordNoun();
	}
	foreach(i; 0 .. 4) {
		f.wordPreposition();
	}
	foreach(i; 0 .. 4) {
		f.wordVerb();
	}
}

unittest {
	auto f = new Faker_lv(13);

	foreach(i; 0 .. 4) {
		f.airlineAirline();
	}
	foreach(i; 0 .. 4) {
		f.airlineAirplane();
	}
	foreach(i; 0 .. 4) {
		f.airlineAirport();
	}
	foreach(i; 0 .. 4) {
		f.animalBear();
	}
	foreach(i; 0 .. 4) {
		f.animalBird();
	}
	foreach(i; 0 .. 4) {
		f.animalCat();
	}
	foreach(i; 0 .. 4) {
		f.animalCetacean();
	}
	foreach(i; 0 .. 4) {
		f.animalCow();
	}
	foreach(i; 0 .. 4) {
		f.animalCrocodilia();
	}
	foreach(i; 0 .. 4) {
		f.animalDog();
	}
	foreach(i; 0 .. 4) {
		f.animalFish();
	}
	foreach(i; 0 .. 4) {
		f.animalHorse();
	}
	foreach(i; 0 .. 4) {
		f.animalInsect();
	}
	foreach(i; 0 .. 4) {
		f.animalLion();
	}
	foreach(i; 0 .. 4) {
		f.animalRabbit();
	}
	foreach(i; 0 .. 4) {
		f.animalRodent();
	}
	foreach(i; 0 .. 4) {
		f.animalSnake();
	}
	foreach(i; 0 .. 4) {
		f.appAuthor();
	}
	foreach(i; 0 .. 4) {
		f.appName();
	}
	foreach(i; 0 .. 4) {
		f.appVersion();
	}
	foreach(i; 0 .. 4) {
		f.cellPhoneFormats();
	}
	foreach(i; 0 .. 4) {
		f.commerceDepartment();
	}
	foreach(i; 0 .. 4) {
		f.commerceProductDescription();
	}
	foreach(i; 0 .. 4) {
		f.commerceProductNameAdjective();
	}
	foreach(i; 0 .. 4) {
		f.commerceProductNameMaterial();
	}
	foreach(i; 0 .. 4) {
		f.commerceProductNameProduct();
	}
	foreach(i; 0 .. 4) {
		f.companyAdjective();
	}
	foreach(i; 0 .. 4) {
		f.companyBuzzAdjective();
	}
	foreach(i; 0 .. 4) {
		f.companyBuzzNoun();
	}
	foreach(i; 0 .. 4) {
		f.companyBuzzVerb();
	}
	foreach(i; 0 .. 4) {
		f.companyCatchPhrase();
	}
	foreach(i; 0 .. 4) {
		f.companyDescriptor();
	}
	foreach(i; 0 .. 4) {
		f.companyName();
	}
	foreach(i; 0 .. 4) {
		f.companyNamePattern();
	}
	foreach(i; 0 .. 4) {
		f.companyNoun();
	}
	foreach(i; 0 .. 4) {
		f.companySuffix();
	}
	foreach(i; 0 .. 4) {
		f.databaseCollation();
	}
	foreach(i; 0 .. 4) {
		f.databaseColumn();
	}
	foreach(i; 0 .. 4) {
		f.databaseEngine();
	}
	foreach(i; 0 .. 4) {
		f.databaseType();
	}
	foreach(i; 0 .. 4) {
		f.dateMonthAbbr();
	}
	foreach(i; 0 .. 4) {
		f.dateMonthWide();
	}
	foreach(i; 0 .. 4) {
		f.dateWeekdayAbbr();
	}
	foreach(i; 0 .. 4) {
		f.dateWeekdayWide();
	}
	foreach(i; 0 .. 4) {
		f.financeAccountType();
	}
	foreach(i; 0 .. 4) {
		f.financeCreditCardAmericanExpress();
	}
	foreach(i; 0 .. 4) {
		f.financeCreditCardDinersClub();
	}
	foreach(i; 0 .. 4) {
		f.financeCreditCardDiscover();
	}
	foreach(i; 0 .. 4) {
		f.financeCreditCardJcb();
	}
	foreach(i; 0 .. 4) {
		f.financeCreditCardMaestro();
	}
	foreach(i; 0 .. 4) {
		f.financeCreditCardMastercard();
	}
	foreach(i; 0 .. 4) {
		f.financeCreditCardVisa();
	}
	foreach(i; 0 .. 4) {
		f.financeCurrency();
	}
	foreach(i; 0 .. 4) {
		f.financeTransactionType();
	}
	foreach(i; 0 .. 4) {
		f.hackerAbbreviation();
	}
	foreach(i; 0 .. 4) {
		f.hackerAdjective();
	}
	foreach(i; 0 .. 4) {
		f.hackerIngverb();
	}
	foreach(i; 0 .. 4) {
		f.hackerNoun();
	}
	foreach(i; 0 .. 4) {
		f.hackerPhrase();
	}
	foreach(i; 0 .. 4) {
		f.hackerVerb();
	}
	foreach(i; 0 .. 4) {
		f.internetDomainSuffix();
	}
	foreach(i; 0 .. 4) {
		f.internetEmoji();
	}
	foreach(i; 0 .. 4) {
		f.internetEmojiActivity();
	}
	foreach(i; 0 .. 4) {
		f.internetEmojiBody();
	}
	foreach(i; 0 .. 4) {
		f.internetEmojiFlag();
	}
	foreach(i; 0 .. 4) {
		f.internetEmojiFood();
	}
	foreach(i; 0 .. 4) {
		f.internetEmojiNature();
	}
	foreach(i; 0 .. 4) {
		f.internetEmojiObject();
	}
	foreach(i; 0 .. 4) {
		f.internetEmojiPerson();
	}
	foreach(i; 0 .. 4) {
		f.internetEmojiSmiley();
	}
	foreach(i; 0 .. 4) {
		f.internetEmojiSymbol();
	}
	foreach(i; 0 .. 4) {
		f.internetEmojiTravel();
	}
	foreach(i; 0 .. 4) {
		f.internetExampleEmail();
	}
	foreach(i; 0 .. 4) {
		f.internetFreeEmail();
	}
	foreach(i; 0 .. 4) {
		f.locationBuildingNumber();
	}
	foreach(i; 0 .. 4) {
		f.locationCity();
	}
	foreach(i; 0 .. 4) {
		f.locationCityName();
	}
	foreach(i; 0 .. 4) {
		f.locationCityPattern();
	}
	foreach(i; 0 .. 4) {
		f.locationCityPrefix();
	}
	foreach(i; 0 .. 4) {
		f.locationCitySuffix();
	}
	foreach(i; 0 .. 4) {
		f.locationCountry();
	}
	foreach(i; 0 .. 4) {
		f.locationCounty();
	}
	foreach(i; 0 .. 4) {
		f.locationDefaultCountry();
	}
	foreach(i; 0 .. 4) {
		f.locationDirection();
	}
	foreach(i; 0 .. 4) {
		f.locationDirectionAbbr();
	}
	foreach(i; 0 .. 4) {
		f.locationPostcode();
	}
	foreach(i; 0 .. 4) {
		f.locationSecondaryAddress();
	}
	foreach(i; 0 .. 4) {
		f.locationState();
	}
	foreach(i; 0 .. 4) {
		f.locationStateAbbr();
	}
	foreach(i; 0 .. 4) {
		f.locationStreetAddress();
	}
	foreach(i; 0 .. 4) {
		f.locationStreetName();
	}
	foreach(i; 0 .. 4) {
		f.locationStreetPattern();
	}
	foreach(i; 0 .. 4) {
		f.locationStreetSuffix();
	}
	foreach(i; 0 .. 4) {
		f.locationTimeZone();
	}
	foreach(i; 0 .. 4) {
		f.loremParagraph();
	}
	foreach(i; 0 .. 4) {
		f.loremParagraphs();
	}
	foreach(i; 0 .. 4) {
		f.loremSentance();
	}
	foreach(i; 0 .. 4) {
		f.loremSentances();
	}
	foreach(i; 0 .. 4) {
		f.loremText();
	}
	foreach(i; 0 .. 4) {
		f.loremWords();
	}
	foreach(i; 0 .. 4) {
		f.musicGenre();
	}
	foreach(i; 0 .. 4) {
		f.musicSongName();
	}
	foreach(i; 0 .. 4) {
		f.personBioPart();
	}
	foreach(i; 0 .. 4) {
		f.personBioPattern();
	}
	foreach(i; 0 .. 4) {
		f.personBioSupporter();
	}
	foreach(i; 0 .. 4) {
		f.personFemaleFirstName();
	}
	foreach(i; 0 .. 4) {
		f.personFemaleMiddleName();
	}
	foreach(i; 0 .. 4) {
		f.personFemalePrefix();
	}
	foreach(i; 0 .. 4) {
		f.personFirstName();
	}
	foreach(i; 0 .. 4) {
		f.personGender();
	}
	foreach(i; 0 .. 4) {
		f.personJobArea();
	}
	foreach(i; 0 .. 4) {
		f.personJobDescriptor();
	}
	foreach(i; 0 .. 4) {
		f.personJobTitlePattern();
	}
	foreach(i; 0 .. 4) {
		f.personJobType();
	}
	foreach(i; 0 .. 4) {
		f.personLastName();
	}
	foreach(i; 0 .. 4) {
		f.personLastNamePattern();
	}
	foreach(i; 0 .. 4) {
		f.personMaleFirstName();
	}
	foreach(i; 0 .. 4) {
		f.personMaleMiddleName();
	}
	foreach(i; 0 .. 4) {
		f.personMalePrefix();
	}
	foreach(i; 0 .. 4) {
		f.personMiddleName();
	}
	foreach(i; 0 .. 4) {
		f.personName();
	}
	foreach(i; 0 .. 4) {
		f.personPrefix();
	}
	foreach(i; 0 .. 4) {
		f.personSex();
	}
	foreach(i; 0 .. 4) {
		f.personSuffix();
	}
	foreach(i; 0 .. 4) {
		f.personTitleDescriptor();
	}
	foreach(i; 0 .. 4) {
		f.personTitleJob();
	}
	foreach(i; 0 .. 4) {
		f.personTitleLevel();
	}
	foreach(i; 0 .. 4) {
		f.personWesternZodiacSign();
	}
	foreach(i; 0 .. 4) {
		f.phoneNumber();
	}
	foreach(i; 0 .. 4) {
		f.phoneNumberFormats();
	}
	foreach(i; 0 .. 4) {
		f.scienceChemicalElement();
	}
	foreach(i; 0 .. 4) {
		f.scienceUnit();
	}
	foreach(i; 0 .. 4) {
		f.systemDirectoryPaths();
	}
	foreach(i; 0 .. 4) {
		f.teamCreature();
	}
	foreach(i; 0 .. 4) {
		f.teamName();
	}
	foreach(i; 0 .. 4) {
		f.vehicleBicycleType();
	}
	foreach(i; 0 .. 4) {
		f.vehicleFuel();
	}
	foreach(i; 0 .. 4) {
		f.vehicleManufacturer();
	}
	foreach(i; 0 .. 4) {
		f.vehicleModel();
	}
	foreach(i; 0 .. 4) {
		f.vehicleType();
	}
	foreach(i; 0 .. 4) {
		f.wordAdjective();
	}
	foreach(i; 0 .. 4) {
		f.wordAdverb();
	}
	foreach(i; 0 .. 4) {
		f.wordConjunction();
	}
	foreach(i; 0 .. 4) {
		f.wordInterjection();
	}
	foreach(i; 0 .. 4) {
		f.wordNoun();
	}
	foreach(i; 0 .. 4) {
		f.wordPreposition();
	}
	foreach(i; 0 .. 4) {
		f.wordVerb();
	}
}

unittest {
	auto f = new Faker_mk(13);

	foreach(i; 0 .. 4) {
		f.airlineAirline();
	}
	foreach(i; 0 .. 4) {
		f.airlineAirplane();
	}
	foreach(i; 0 .. 4) {
		f.airlineAirport();
	}
	foreach(i; 0 .. 4) {
		f.animalBear();
	}
	foreach(i; 0 .. 4) {
		f.animalBird();
	}
	foreach(i; 0 .. 4) {
		f.animalCat();
	}
	foreach(i; 0 .. 4) {
		f.animalCetacean();
	}
	foreach(i; 0 .. 4) {
		f.animalCow();
	}
	foreach(i; 0 .. 4) {
		f.animalCrocodilia();
	}
	foreach(i; 0 .. 4) {
		f.animalDog();
	}
	foreach(i; 0 .. 4) {
		f.animalFish();
	}
	foreach(i; 0 .. 4) {
		f.animalHorse();
	}
	foreach(i; 0 .. 4) {
		f.animalInsect();
	}
	foreach(i; 0 .. 4) {
		f.animalLion();
	}
	foreach(i; 0 .. 4) {
		f.animalRabbit();
	}
	foreach(i; 0 .. 4) {
		f.animalRodent();
	}
	foreach(i; 0 .. 4) {
		f.animalSnake();
	}
	foreach(i; 0 .. 4) {
		f.appAuthor();
	}
	foreach(i; 0 .. 4) {
		f.appName();
	}
	foreach(i; 0 .. 4) {
		f.appVersion();
	}
	foreach(i; 0 .. 4) {
		f.cellPhoneFormats();
	}
	foreach(i; 0 .. 4) {
		f.commerceDepartment();
	}
	foreach(i; 0 .. 4) {
		f.commerceProductDescription();
	}
	foreach(i; 0 .. 4) {
		f.commerceProductNameAdjective();
	}
	foreach(i; 0 .. 4) {
		f.commerceProductNameMaterial();
	}
	foreach(i; 0 .. 4) {
		f.commerceProductNameProduct();
	}
	foreach(i; 0 .. 4) {
		f.companyAdjective();
	}
	foreach(i; 0 .. 4) {
		f.companyBuzzAdjective();
	}
	foreach(i; 0 .. 4) {
		f.companyBuzzNoun();
	}
	foreach(i; 0 .. 4) {
		f.companyBuzzVerb();
	}
	foreach(i; 0 .. 4) {
		f.companyCatchPhrase();
	}
	foreach(i; 0 .. 4) {
		f.companyDescriptor();
	}
	foreach(i; 0 .. 4) {
		f.companyName();
	}
	foreach(i; 0 .. 4) {
		f.companyNamePattern();
	}
	foreach(i; 0 .. 4) {
		f.companyNoun();
	}
	foreach(i; 0 .. 4) {
		f.companySuffix();
	}
	foreach(i; 0 .. 4) {
		f.databaseCollation();
	}
	foreach(i; 0 .. 4) {
		f.databaseColumn();
	}
	foreach(i; 0 .. 4) {
		f.databaseEngine();
	}
	foreach(i; 0 .. 4) {
		f.databaseType();
	}
	foreach(i; 0 .. 4) {
		f.dateMonthAbbr();
	}
	foreach(i; 0 .. 4) {
		f.dateMonthWide();
	}
	foreach(i; 0 .. 4) {
		f.dateWeekdayAbbr();
	}
	foreach(i; 0 .. 4) {
		f.dateWeekdayWide();
	}
	foreach(i; 0 .. 4) {
		f.financeAccountType();
	}
	foreach(i; 0 .. 4) {
		f.financeCreditCardAmericanExpress();
	}
	foreach(i; 0 .. 4) {
		f.financeCreditCardDinersClub();
	}
	foreach(i; 0 .. 4) {
		f.financeCreditCardDiscover();
	}
	foreach(i; 0 .. 4) {
		f.financeCreditCardJcb();
	}
	foreach(i; 0 .. 4) {
		f.financeCreditCardMaestro();
	}
	foreach(i; 0 .. 4) {
		f.financeCreditCardMastercard();
	}
	foreach(i; 0 .. 4) {
		f.financeCreditCardVisa();
	}
	foreach(i; 0 .. 4) {
		f.financeCurrency();
	}
	foreach(i; 0 .. 4) {
		f.financeTransactionType();
	}
	foreach(i; 0 .. 4) {
		f.hackerAbbreviation();
	}
	foreach(i; 0 .. 4) {
		f.hackerAdjective();
	}
	foreach(i; 0 .. 4) {
		f.hackerIngverb();
	}
	foreach(i; 0 .. 4) {
		f.hackerNoun();
	}
	foreach(i; 0 .. 4) {
		f.hackerPhrase();
	}
	foreach(i; 0 .. 4) {
		f.hackerVerb();
	}
	foreach(i; 0 .. 4) {
		f.internetDomainSuffix();
	}
	foreach(i; 0 .. 4) {
		f.internetEmoji();
	}
	foreach(i; 0 .. 4) {
		f.internetEmojiActivity();
	}
	foreach(i; 0 .. 4) {
		f.internetEmojiBody();
	}
	foreach(i; 0 .. 4) {
		f.internetEmojiFlag();
	}
	foreach(i; 0 .. 4) {
		f.internetEmojiFood();
	}
	foreach(i; 0 .. 4) {
		f.internetEmojiNature();
	}
	foreach(i; 0 .. 4) {
		f.internetEmojiObject();
	}
	foreach(i; 0 .. 4) {
		f.internetEmojiPerson();
	}
	foreach(i; 0 .. 4) {
		f.internetEmojiSmiley();
	}
	foreach(i; 0 .. 4) {
		f.internetEmojiSymbol();
	}
	foreach(i; 0 .. 4) {
		f.internetEmojiTravel();
	}
	foreach(i; 0 .. 4) {
		f.internetExampleEmail();
	}
	foreach(i; 0 .. 4) {
		f.internetFreeEmail();
	}
	foreach(i; 0 .. 4) {
		f.locationBuildingNumber();
	}
	foreach(i; 0 .. 4) {
		f.locationCity();
	}
	foreach(i; 0 .. 4) {
		f.locationCityName();
	}
	foreach(i; 0 .. 4) {
		f.locationCityPattern();
	}
	foreach(i; 0 .. 4) {
		f.locationCityPrefix();
	}
	foreach(i; 0 .. 4) {
		f.locationCitySuffix();
	}
	foreach(i; 0 .. 4) {
		f.locationCountry();
	}
	foreach(i; 0 .. 4) {
		f.locationCounty();
	}
	foreach(i; 0 .. 4) {
		f.locationDefaultCountry();
	}
	foreach(i; 0 .. 4) {
		f.locationDirection();
	}
	foreach(i; 0 .. 4) {
		f.locationDirectionAbbr();
	}
	foreach(i; 0 .. 4) {
		f.locationPostcode();
	}
	foreach(i; 0 .. 4) {
		f.locationSecondaryAddress();
	}
	foreach(i; 0 .. 4) {
		f.locationState();
	}
	foreach(i; 0 .. 4) {
		f.locationStateAbbr();
	}
	foreach(i; 0 .. 4) {
		f.locationStreetAddress();
	}
	foreach(i; 0 .. 4) {
		f.locationStreetName();
	}
	foreach(i; 0 .. 4) {
		f.locationStreetPattern();
	}
	foreach(i; 0 .. 4) {
		f.locationStreetSuffix();
	}
	foreach(i; 0 .. 4) {
		f.locationTimeZone();
	}
	foreach(i; 0 .. 4) {
		f.loremParagraph();
	}
	foreach(i; 0 .. 4) {
		f.loremParagraphs();
	}
	foreach(i; 0 .. 4) {
		f.loremSentance();
	}
	foreach(i; 0 .. 4) {
		f.loremSentances();
	}
	foreach(i; 0 .. 4) {
		f.loremText();
	}
	foreach(i; 0 .. 4) {
		f.loremWords();
	}
	foreach(i; 0 .. 4) {
		f.musicGenre();
	}
	foreach(i; 0 .. 4) {
		f.musicSongName();
	}
	foreach(i; 0 .. 4) {
		f.personBioPart();
	}
	foreach(i; 0 .. 4) {
		f.personBioPattern();
	}
	foreach(i; 0 .. 4) {
		f.personBioSupporter();
	}
	foreach(i; 0 .. 4) {
		f.personFemaleFirstName();
	}
	foreach(i; 0 .. 4) {
		f.personFemaleMiddleName();
	}
	foreach(i; 0 .. 4) {
		f.personFemalePrefix();
	}
	foreach(i; 0 .. 4) {
		f.personFirstName();
	}
	foreach(i; 0 .. 4) {
		f.personGender();
	}
	foreach(i; 0 .. 4) {
		f.personJobArea();
	}
	foreach(i; 0 .. 4) {
		f.personJobDescriptor();
	}
	foreach(i; 0 .. 4) {
		f.personJobTitlePattern();
	}
	foreach(i; 0 .. 4) {
		f.personJobType();
	}
	foreach(i; 0 .. 4) {
		f.personLastName();
	}
	foreach(i; 0 .. 4) {
		f.personLastNamePattern();
	}
	foreach(i; 0 .. 4) {
		f.personMaleFirstName();
	}
	foreach(i; 0 .. 4) {
		f.personMaleMiddleName();
	}
	foreach(i; 0 .. 4) {
		f.personMalePrefix();
	}
	foreach(i; 0 .. 4) {
		f.personMiddleName();
	}
	foreach(i; 0 .. 4) {
		f.personName();
	}
	foreach(i; 0 .. 4) {
		f.personPrefix();
	}
	foreach(i; 0 .. 4) {
		f.personSex();
	}
	foreach(i; 0 .. 4) {
		f.personSuffix();
	}
	foreach(i; 0 .. 4) {
		f.personTitleDescriptor();
	}
	foreach(i; 0 .. 4) {
		f.personTitleJob();
	}
	foreach(i; 0 .. 4) {
		f.personTitleLevel();
	}
	foreach(i; 0 .. 4) {
		f.personWesternZodiacSign();
	}
	foreach(i; 0 .. 4) {
		f.phoneNumber();
	}
	foreach(i; 0 .. 4) {
		f.phoneNumberFormats();
	}
	foreach(i; 0 .. 4) {
		f.scienceChemicalElement();
	}
	foreach(i; 0 .. 4) {
		f.scienceUnit();
	}
	foreach(i; 0 .. 4) {
		f.systemDirectoryPaths();
	}
	foreach(i; 0 .. 4) {
		f.teamCreature();
	}
	foreach(i; 0 .. 4) {
		f.teamName();
	}
	foreach(i; 0 .. 4) {
		f.vehicleBicycleType();
	}
	foreach(i; 0 .. 4) {
		f.vehicleFuel();
	}
	foreach(i; 0 .. 4) {
		f.vehicleManufacturer();
	}
	foreach(i; 0 .. 4) {
		f.vehicleModel();
	}
	foreach(i; 0 .. 4) {
		f.vehicleType();
	}
	foreach(i; 0 .. 4) {
		f.wordAdjective();
	}
	foreach(i; 0 .. 4) {
		f.wordAdverb();
	}
	foreach(i; 0 .. 4) {
		f.wordConjunction();
	}
	foreach(i; 0 .. 4) {
		f.wordInterjection();
	}
	foreach(i; 0 .. 4) {
		f.wordNoun();
	}
	foreach(i; 0 .. 4) {
		f.wordPreposition();
	}
	foreach(i; 0 .. 4) {
		f.wordVerb();
	}
}

unittest {
	auto f = new Faker_nb_no(13);

	foreach(i; 0 .. 4) {
		f.airlineAirline();
	}
	foreach(i; 0 .. 4) {
		f.airlineAirplane();
	}
	foreach(i; 0 .. 4) {
		f.airlineAirport();
	}
	foreach(i; 0 .. 4) {
		f.animalBear();
	}
	foreach(i; 0 .. 4) {
		f.animalBird();
	}
	foreach(i; 0 .. 4) {
		f.animalCat();
	}
	foreach(i; 0 .. 4) {
		f.animalCetacean();
	}
	foreach(i; 0 .. 4) {
		f.animalCow();
	}
	foreach(i; 0 .. 4) {
		f.animalCrocodilia();
	}
	foreach(i; 0 .. 4) {
		f.animalDog();
	}
	foreach(i; 0 .. 4) {
		f.animalFish();
	}
	foreach(i; 0 .. 4) {
		f.animalHorse();
	}
	foreach(i; 0 .. 4) {
		f.animalInsect();
	}
	foreach(i; 0 .. 4) {
		f.animalLion();
	}
	foreach(i; 0 .. 4) {
		f.animalRabbit();
	}
	foreach(i; 0 .. 4) {
		f.animalRodent();
	}
	foreach(i; 0 .. 4) {
		f.animalSnake();
	}
	foreach(i; 0 .. 4) {
		f.appAuthor();
	}
	foreach(i; 0 .. 4) {
		f.appName();
	}
	foreach(i; 0 .. 4) {
		f.appVersion();
	}
	foreach(i; 0 .. 4) {
		f.cellPhoneFormats();
	}
	foreach(i; 0 .. 4) {
		f.commerceDepartment();
	}
	foreach(i; 0 .. 4) {
		f.commerceProductDescription();
	}
	foreach(i; 0 .. 4) {
		f.commerceProductNameAdjective();
	}
	foreach(i; 0 .. 4) {
		f.commerceProductNameMaterial();
	}
	foreach(i; 0 .. 4) {
		f.commerceProductNameProduct();
	}
	foreach(i; 0 .. 4) {
		f.companyAdjective();
	}
	foreach(i; 0 .. 4) {
		f.companyBuzzAdjective();
	}
	foreach(i; 0 .. 4) {
		f.companyBuzzNoun();
	}
	foreach(i; 0 .. 4) {
		f.companyBuzzVerb();
	}
	foreach(i; 0 .. 4) {
		f.companyCatchPhrase();
	}
	foreach(i; 0 .. 4) {
		f.companyDescriptor();
	}
	foreach(i; 0 .. 4) {
		f.companyName();
	}
	foreach(i; 0 .. 4) {
		f.companyNamePattern();
	}
	foreach(i; 0 .. 4) {
		f.companyNoun();
	}
	foreach(i; 0 .. 4) {
		f.companySuffix();
	}
	foreach(i; 0 .. 4) {
		f.databaseCollation();
	}
	foreach(i; 0 .. 4) {
		f.databaseColumn();
	}
	foreach(i; 0 .. 4) {
		f.databaseEngine();
	}
	foreach(i; 0 .. 4) {
		f.databaseType();
	}
	foreach(i; 0 .. 4) {
		f.dateMonthAbbr();
	}
	foreach(i; 0 .. 4) {
		f.dateMonthWide();
	}
	foreach(i; 0 .. 4) {
		f.dateWeekdayAbbr();
	}
	foreach(i; 0 .. 4) {
		f.dateWeekdayWide();
	}
	foreach(i; 0 .. 4) {
		f.financeAccountType();
	}
	foreach(i; 0 .. 4) {
		f.financeCreditCardAmericanExpress();
	}
	foreach(i; 0 .. 4) {
		f.financeCreditCardDinersClub();
	}
	foreach(i; 0 .. 4) {
		f.financeCreditCardDiscover();
	}
	foreach(i; 0 .. 4) {
		f.financeCreditCardJcb();
	}
	foreach(i; 0 .. 4) {
		f.financeCreditCardMaestro();
	}
	foreach(i; 0 .. 4) {
		f.financeCreditCardMastercard();
	}
	foreach(i; 0 .. 4) {
		f.financeCreditCardVisa();
	}
	foreach(i; 0 .. 4) {
		f.financeCurrency();
	}
	foreach(i; 0 .. 4) {
		f.financeTransactionType();
	}
	foreach(i; 0 .. 4) {
		f.hackerAbbreviation();
	}
	foreach(i; 0 .. 4) {
		f.hackerAdjective();
	}
	foreach(i; 0 .. 4) {
		f.hackerIngverb();
	}
	foreach(i; 0 .. 4) {
		f.hackerNoun();
	}
	foreach(i; 0 .. 4) {
		f.hackerPhrase();
	}
	foreach(i; 0 .. 4) {
		f.hackerVerb();
	}
	foreach(i; 0 .. 4) {
		f.internetDomainSuffix();
	}
	foreach(i; 0 .. 4) {
		f.internetEmoji();
	}
	foreach(i; 0 .. 4) {
		f.internetEmojiActivity();
	}
	foreach(i; 0 .. 4) {
		f.internetEmojiBody();
	}
	foreach(i; 0 .. 4) {
		f.internetEmojiFlag();
	}
	foreach(i; 0 .. 4) {
		f.internetEmojiFood();
	}
	foreach(i; 0 .. 4) {
		f.internetEmojiNature();
	}
	foreach(i; 0 .. 4) {
		f.internetEmojiObject();
	}
	foreach(i; 0 .. 4) {
		f.internetEmojiPerson();
	}
	foreach(i; 0 .. 4) {
		f.internetEmojiSmiley();
	}
	foreach(i; 0 .. 4) {
		f.internetEmojiSymbol();
	}
	foreach(i; 0 .. 4) {
		f.internetEmojiTravel();
	}
	foreach(i; 0 .. 4) {
		f.internetExampleEmail();
	}
	foreach(i; 0 .. 4) {
		f.internetFreeEmail();
	}
	foreach(i; 0 .. 4) {
		f.locationBuildingNumber();
	}
	foreach(i; 0 .. 4) {
		f.locationCity();
	}
	foreach(i; 0 .. 4) {
		f.locationCityName();
	}
	foreach(i; 0 .. 4) {
		f.locationCityPattern();
	}
	foreach(i; 0 .. 4) {
		f.locationCityPrefix();
	}
	foreach(i; 0 .. 4) {
		f.locationCitySuffix();
	}
	foreach(i; 0 .. 4) {
		f.locationCountry();
	}
	foreach(i; 0 .. 4) {
		f.locationCounty();
	}
	foreach(i; 0 .. 4) {
		f.locationDefaultCountry();
	}
	foreach(i; 0 .. 4) {
		f.locationDirection();
	}
	foreach(i; 0 .. 4) {
		f.locationDirectionAbbr();
	}
	foreach(i; 0 .. 4) {
		f.locationPostcode();
	}
	foreach(i; 0 .. 4) {
		f.locationSecondaryAddress();
	}
	foreach(i; 0 .. 4) {
		f.locationState();
	}
	foreach(i; 0 .. 4) {
		f.locationStateAbbr();
	}
	foreach(i; 0 .. 4) {
		f.locationStreetAddress();
	}
	foreach(i; 0 .. 4) {
		f.locationStreetName();
	}
	foreach(i; 0 .. 4) {
		f.locationStreetPattern();
	}
	foreach(i; 0 .. 4) {
		f.locationStreetSuffix();
	}
	foreach(i; 0 .. 4) {
		f.locationTimeZone();
	}
	foreach(i; 0 .. 4) {
		f.loremParagraph();
	}
	foreach(i; 0 .. 4) {
		f.loremParagraphs();
	}
	foreach(i; 0 .. 4) {
		f.loremSentance();
	}
	foreach(i; 0 .. 4) {
		f.loremSentances();
	}
	foreach(i; 0 .. 4) {
		f.loremText();
	}
	foreach(i; 0 .. 4) {
		f.loremWords();
	}
	foreach(i; 0 .. 4) {
		f.musicGenre();
	}
	foreach(i; 0 .. 4) {
		f.musicSongName();
	}
	foreach(i; 0 .. 4) {
		f.personBioPart();
	}
	foreach(i; 0 .. 4) {
		f.personBioPattern();
	}
	foreach(i; 0 .. 4) {
		f.personBioSupporter();
	}
	foreach(i; 0 .. 4) {
		f.personFemaleFirstName();
	}
	foreach(i; 0 .. 4) {
		f.personFemaleMiddleName();
	}
	foreach(i; 0 .. 4) {
		f.personFemalePrefix();
	}
	foreach(i; 0 .. 4) {
		f.personFirstName();
	}
	foreach(i; 0 .. 4) {
		f.personGender();
	}
	foreach(i; 0 .. 4) {
		f.personJobArea();
	}
	foreach(i; 0 .. 4) {
		f.personJobDescriptor();
	}
	foreach(i; 0 .. 4) {
		f.personJobTitlePattern();
	}
	foreach(i; 0 .. 4) {
		f.personJobType();
	}
	foreach(i; 0 .. 4) {
		f.personLastName();
	}
	foreach(i; 0 .. 4) {
		f.personLastNamePattern();
	}
	foreach(i; 0 .. 4) {
		f.personMaleFirstName();
	}
	foreach(i; 0 .. 4) {
		f.personMaleMiddleName();
	}
	foreach(i; 0 .. 4) {
		f.personMalePrefix();
	}
	foreach(i; 0 .. 4) {
		f.personMiddleName();
	}
	foreach(i; 0 .. 4) {
		f.personName();
	}
	foreach(i; 0 .. 4) {
		f.personPrefix();
	}
	foreach(i; 0 .. 4) {
		f.personSex();
	}
	foreach(i; 0 .. 4) {
		f.personSuffix();
	}
	foreach(i; 0 .. 4) {
		f.personTitleDescriptor();
	}
	foreach(i; 0 .. 4) {
		f.personTitleJob();
	}
	foreach(i; 0 .. 4) {
		f.personTitleLevel();
	}
	foreach(i; 0 .. 4) {
		f.personWesternZodiacSign();
	}
	foreach(i; 0 .. 4) {
		f.phoneNumber();
	}
	foreach(i; 0 .. 4) {
		f.phoneNumberFormats();
	}
	foreach(i; 0 .. 4) {
		f.scienceChemicalElement();
	}
	foreach(i; 0 .. 4) {
		f.scienceUnit();
	}
	foreach(i; 0 .. 4) {
		f.systemDirectoryPaths();
	}
	foreach(i; 0 .. 4) {
		f.teamCreature();
	}
	foreach(i; 0 .. 4) {
		f.teamName();
	}
	foreach(i; 0 .. 4) {
		f.vehicleBicycleType();
	}
	foreach(i; 0 .. 4) {
		f.vehicleFuel();
	}
	foreach(i; 0 .. 4) {
		f.vehicleManufacturer();
	}
	foreach(i; 0 .. 4) {
		f.vehicleModel();
	}
	foreach(i; 0 .. 4) {
		f.vehicleType();
	}
	foreach(i; 0 .. 4) {
		f.wordAdjective();
	}
	foreach(i; 0 .. 4) {
		f.wordAdverb();
	}
	foreach(i; 0 .. 4) {
		f.wordConjunction();
	}
	foreach(i; 0 .. 4) {
		f.wordInterjection();
	}
	foreach(i; 0 .. 4) {
		f.wordNoun();
	}
	foreach(i; 0 .. 4) {
		f.wordPreposition();
	}
	foreach(i; 0 .. 4) {
		f.wordVerb();
	}
}

unittest {
	auto f = new Faker_ne(13);

	foreach(i; 0 .. 4) {
		f.airlineAirline();
	}
	foreach(i; 0 .. 4) {
		f.airlineAirplane();
	}
	foreach(i; 0 .. 4) {
		f.airlineAirport();
	}
	foreach(i; 0 .. 4) {
		f.animalBear();
	}
	foreach(i; 0 .. 4) {
		f.animalBird();
	}
	foreach(i; 0 .. 4) {
		f.animalCat();
	}
	foreach(i; 0 .. 4) {
		f.animalCetacean();
	}
	foreach(i; 0 .. 4) {
		f.animalCow();
	}
	foreach(i; 0 .. 4) {
		f.animalCrocodilia();
	}
	foreach(i; 0 .. 4) {
		f.animalDog();
	}
	foreach(i; 0 .. 4) {
		f.animalFish();
	}
	foreach(i; 0 .. 4) {
		f.animalHorse();
	}
	foreach(i; 0 .. 4) {
		f.animalInsect();
	}
	foreach(i; 0 .. 4) {
		f.animalLion();
	}
	foreach(i; 0 .. 4) {
		f.animalRabbit();
	}
	foreach(i; 0 .. 4) {
		f.animalRodent();
	}
	foreach(i; 0 .. 4) {
		f.animalSnake();
	}
	foreach(i; 0 .. 4) {
		f.appAuthor();
	}
	foreach(i; 0 .. 4) {
		f.appName();
	}
	foreach(i; 0 .. 4) {
		f.appVersion();
	}
	foreach(i; 0 .. 4) {
		f.cellPhoneFormats();
	}
	foreach(i; 0 .. 4) {
		f.commerceDepartment();
	}
	foreach(i; 0 .. 4) {
		f.commerceProductDescription();
	}
	foreach(i; 0 .. 4) {
		f.commerceProductNameAdjective();
	}
	foreach(i; 0 .. 4) {
		f.commerceProductNameMaterial();
	}
	foreach(i; 0 .. 4) {
		f.commerceProductNameProduct();
	}
	foreach(i; 0 .. 4) {
		f.companyAdjective();
	}
	foreach(i; 0 .. 4) {
		f.companyBuzzAdjective();
	}
	foreach(i; 0 .. 4) {
		f.companyBuzzNoun();
	}
	foreach(i; 0 .. 4) {
		f.companyBuzzVerb();
	}
	foreach(i; 0 .. 4) {
		f.companyCatchPhrase();
	}
	foreach(i; 0 .. 4) {
		f.companyDescriptor();
	}
	foreach(i; 0 .. 4) {
		f.companyName();
	}
	foreach(i; 0 .. 4) {
		f.companyNamePattern();
	}
	foreach(i; 0 .. 4) {
		f.companyNoun();
	}
	foreach(i; 0 .. 4) {
		f.companySuffix();
	}
	foreach(i; 0 .. 4) {
		f.databaseCollation();
	}
	foreach(i; 0 .. 4) {
		f.databaseColumn();
	}
	foreach(i; 0 .. 4) {
		f.databaseEngine();
	}
	foreach(i; 0 .. 4) {
		f.databaseType();
	}
	foreach(i; 0 .. 4) {
		f.dateMonthAbbr();
	}
	foreach(i; 0 .. 4) {
		f.dateMonthWide();
	}
	foreach(i; 0 .. 4) {
		f.dateWeekdayAbbr();
	}
	foreach(i; 0 .. 4) {
		f.dateWeekdayWide();
	}
	foreach(i; 0 .. 4) {
		f.financeAccountType();
	}
	foreach(i; 0 .. 4) {
		f.financeCreditCardAmericanExpress();
	}
	foreach(i; 0 .. 4) {
		f.financeCreditCardDinersClub();
	}
	foreach(i; 0 .. 4) {
		f.financeCreditCardDiscover();
	}
	foreach(i; 0 .. 4) {
		f.financeCreditCardJcb();
	}
	foreach(i; 0 .. 4) {
		f.financeCreditCardMaestro();
	}
	foreach(i; 0 .. 4) {
		f.financeCreditCardMastercard();
	}
	foreach(i; 0 .. 4) {
		f.financeCreditCardVisa();
	}
	foreach(i; 0 .. 4) {
		f.financeCurrency();
	}
	foreach(i; 0 .. 4) {
		f.financeTransactionType();
	}
	foreach(i; 0 .. 4) {
		f.hackerAbbreviation();
	}
	foreach(i; 0 .. 4) {
		f.hackerAdjective();
	}
	foreach(i; 0 .. 4) {
		f.hackerIngverb();
	}
	foreach(i; 0 .. 4) {
		f.hackerNoun();
	}
	foreach(i; 0 .. 4) {
		f.hackerPhrase();
	}
	foreach(i; 0 .. 4) {
		f.hackerVerb();
	}
	foreach(i; 0 .. 4) {
		f.internetDomainSuffix();
	}
	foreach(i; 0 .. 4) {
		f.internetEmoji();
	}
	foreach(i; 0 .. 4) {
		f.internetEmojiActivity();
	}
	foreach(i; 0 .. 4) {
		f.internetEmojiBody();
	}
	foreach(i; 0 .. 4) {
		f.internetEmojiFlag();
	}
	foreach(i; 0 .. 4) {
		f.internetEmojiFood();
	}
	foreach(i; 0 .. 4) {
		f.internetEmojiNature();
	}
	foreach(i; 0 .. 4) {
		f.internetEmojiObject();
	}
	foreach(i; 0 .. 4) {
		f.internetEmojiPerson();
	}
	foreach(i; 0 .. 4) {
		f.internetEmojiSmiley();
	}
	foreach(i; 0 .. 4) {
		f.internetEmojiSymbol();
	}
	foreach(i; 0 .. 4) {
		f.internetEmojiTravel();
	}
	foreach(i; 0 .. 4) {
		f.internetExampleEmail();
	}
	foreach(i; 0 .. 4) {
		f.internetFreeEmail();
	}
	foreach(i; 0 .. 4) {
		f.locationBuildingNumber();
	}
	foreach(i; 0 .. 4) {
		f.locationCity();
	}
	foreach(i; 0 .. 4) {
		f.locationCityName();
	}
	foreach(i; 0 .. 4) {
		f.locationCityPattern();
	}
	foreach(i; 0 .. 4) {
		f.locationCityPrefix();
	}
	foreach(i; 0 .. 4) {
		f.locationCitySuffix();
	}
	foreach(i; 0 .. 4) {
		f.locationCountry();
	}
	foreach(i; 0 .. 4) {
		f.locationCounty();
	}
	foreach(i; 0 .. 4) {
		f.locationDefaultCountry();
	}
	foreach(i; 0 .. 4) {
		f.locationDirection();
	}
	foreach(i; 0 .. 4) {
		f.locationDirectionAbbr();
	}
	foreach(i; 0 .. 4) {
		f.locationPostcode();
	}
	foreach(i; 0 .. 4) {
		f.locationSecondaryAddress();
	}
	foreach(i; 0 .. 4) {
		f.locationState();
	}
	foreach(i; 0 .. 4) {
		f.locationStateAbbr();
	}
	foreach(i; 0 .. 4) {
		f.locationStreetAddress();
	}
	foreach(i; 0 .. 4) {
		f.locationStreetName();
	}
	foreach(i; 0 .. 4) {
		f.locationStreetPattern();
	}
	foreach(i; 0 .. 4) {
		f.locationStreetSuffix();
	}
	foreach(i; 0 .. 4) {
		f.locationTimeZone();
	}
	foreach(i; 0 .. 4) {
		f.loremParagraph();
	}
	foreach(i; 0 .. 4) {
		f.loremParagraphs();
	}
	foreach(i; 0 .. 4) {
		f.loremSentance();
	}
	foreach(i; 0 .. 4) {
		f.loremSentances();
	}
	foreach(i; 0 .. 4) {
		f.loremText();
	}
	foreach(i; 0 .. 4) {
		f.loremWords();
	}
	foreach(i; 0 .. 4) {
		f.musicGenre();
	}
	foreach(i; 0 .. 4) {
		f.musicSongName();
	}
	foreach(i; 0 .. 4) {
		f.personBioPart();
	}
	foreach(i; 0 .. 4) {
		f.personBioPattern();
	}
	foreach(i; 0 .. 4) {
		f.personBioSupporter();
	}
	foreach(i; 0 .. 4) {
		f.personFemaleFirstName();
	}
	foreach(i; 0 .. 4) {
		f.personFemaleMiddleName();
	}
	foreach(i; 0 .. 4) {
		f.personFemalePrefix();
	}
	foreach(i; 0 .. 4) {
		f.personFirstName();
	}
	foreach(i; 0 .. 4) {
		f.personGender();
	}
	foreach(i; 0 .. 4) {
		f.personJobArea();
	}
	foreach(i; 0 .. 4) {
		f.personJobDescriptor();
	}
	foreach(i; 0 .. 4) {
		f.personJobTitlePattern();
	}
	foreach(i; 0 .. 4) {
		f.personJobType();
	}
	foreach(i; 0 .. 4) {
		f.personLastName();
	}
	foreach(i; 0 .. 4) {
		f.personLastNamePattern();
	}
	foreach(i; 0 .. 4) {
		f.personMaleFirstName();
	}
	foreach(i; 0 .. 4) {
		f.personMaleMiddleName();
	}
	foreach(i; 0 .. 4) {
		f.personMalePrefix();
	}
	foreach(i; 0 .. 4) {
		f.personMiddleName();
	}
	foreach(i; 0 .. 4) {
		f.personName();
	}
	foreach(i; 0 .. 4) {
		f.personPrefix();
	}
	foreach(i; 0 .. 4) {
		f.personSex();
	}
	foreach(i; 0 .. 4) {
		f.personSuffix();
	}
	foreach(i; 0 .. 4) {
		f.personTitleDescriptor();
	}
	foreach(i; 0 .. 4) {
		f.personTitleJob();
	}
	foreach(i; 0 .. 4) {
		f.personTitleLevel();
	}
	foreach(i; 0 .. 4) {
		f.personWesternZodiacSign();
	}
	foreach(i; 0 .. 4) {
		f.phoneNumber();
	}
	foreach(i; 0 .. 4) {
		f.phoneNumberFormats();
	}
	foreach(i; 0 .. 4) {
		f.scienceChemicalElement();
	}
	foreach(i; 0 .. 4) {
		f.scienceUnit();
	}
	foreach(i; 0 .. 4) {
		f.systemDirectoryPaths();
	}
	foreach(i; 0 .. 4) {
		f.teamCreature();
	}
	foreach(i; 0 .. 4) {
		f.teamName();
	}
	foreach(i; 0 .. 4) {
		f.vehicleBicycleType();
	}
	foreach(i; 0 .. 4) {
		f.vehicleFuel();
	}
	foreach(i; 0 .. 4) {
		f.vehicleManufacturer();
	}
	foreach(i; 0 .. 4) {
		f.vehicleModel();
	}
	foreach(i; 0 .. 4) {
		f.vehicleType();
	}
	foreach(i; 0 .. 4) {
		f.wordAdjective();
	}
	foreach(i; 0 .. 4) {
		f.wordAdverb();
	}
	foreach(i; 0 .. 4) {
		f.wordConjunction();
	}
	foreach(i; 0 .. 4) {
		f.wordInterjection();
	}
	foreach(i; 0 .. 4) {
		f.wordNoun();
	}
	foreach(i; 0 .. 4) {
		f.wordPreposition();
	}
	foreach(i; 0 .. 4) {
		f.wordVerb();
	}
}

unittest {
	auto f = new Faker_nl(13);

	foreach(i; 0 .. 4) {
		f.airlineAirline();
	}
	foreach(i; 0 .. 4) {
		f.airlineAirplane();
	}
	foreach(i; 0 .. 4) {
		f.airlineAirport();
	}
	foreach(i; 0 .. 4) {
		f.animalBear();
	}
	foreach(i; 0 .. 4) {
		f.animalBird();
	}
	foreach(i; 0 .. 4) {
		f.animalCat();
	}
	foreach(i; 0 .. 4) {
		f.animalCetacean();
	}
	foreach(i; 0 .. 4) {
		f.animalCow();
	}
	foreach(i; 0 .. 4) {
		f.animalCrocodilia();
	}
	foreach(i; 0 .. 4) {
		f.animalDog();
	}
	foreach(i; 0 .. 4) {
		f.animalFish();
	}
	foreach(i; 0 .. 4) {
		f.animalHorse();
	}
	foreach(i; 0 .. 4) {
		f.animalInsect();
	}
	foreach(i; 0 .. 4) {
		f.animalLion();
	}
	foreach(i; 0 .. 4) {
		f.animalRabbit();
	}
	foreach(i; 0 .. 4) {
		f.animalRodent();
	}
	foreach(i; 0 .. 4) {
		f.animalSnake();
	}
	foreach(i; 0 .. 4) {
		f.appAuthor();
	}
	foreach(i; 0 .. 4) {
		f.appName();
	}
	foreach(i; 0 .. 4) {
		f.appVersion();
	}
	foreach(i; 0 .. 4) {
		f.cellPhoneFormats();
	}
	foreach(i; 0 .. 4) {
		f.commerceDepartment();
	}
	foreach(i; 0 .. 4) {
		f.commerceProductDescription();
	}
	foreach(i; 0 .. 4) {
		f.commerceProductNameAdjective();
	}
	foreach(i; 0 .. 4) {
		f.commerceProductNameMaterial();
	}
	foreach(i; 0 .. 4) {
		f.commerceProductNameProduct();
	}
	foreach(i; 0 .. 4) {
		f.companyAdjective();
	}
	foreach(i; 0 .. 4) {
		f.companyBuzzAdjective();
	}
	foreach(i; 0 .. 4) {
		f.companyBuzzNoun();
	}
	foreach(i; 0 .. 4) {
		f.companyBuzzVerb();
	}
	foreach(i; 0 .. 4) {
		f.companyCatchPhrase();
	}
	foreach(i; 0 .. 4) {
		f.companyDescriptor();
	}
	foreach(i; 0 .. 4) {
		f.companyName();
	}
	foreach(i; 0 .. 4) {
		f.companyNamePattern();
	}
	foreach(i; 0 .. 4) {
		f.companyNoun();
	}
	foreach(i; 0 .. 4) {
		f.companySuffix();
	}
	foreach(i; 0 .. 4) {
		f.databaseCollation();
	}
	foreach(i; 0 .. 4) {
		f.databaseColumn();
	}
	foreach(i; 0 .. 4) {
		f.databaseEngine();
	}
	foreach(i; 0 .. 4) {
		f.databaseType();
	}
	foreach(i; 0 .. 4) {
		f.dateMonthAbbr();
	}
	foreach(i; 0 .. 4) {
		f.dateMonthWide();
	}
	foreach(i; 0 .. 4) {
		f.dateWeekdayAbbr();
	}
	foreach(i; 0 .. 4) {
		f.dateWeekdayWide();
	}
	foreach(i; 0 .. 4) {
		f.financeAccountType();
	}
	foreach(i; 0 .. 4) {
		f.financeCreditCardAmericanExpress();
	}
	foreach(i; 0 .. 4) {
		f.financeCreditCardDinersClub();
	}
	foreach(i; 0 .. 4) {
		f.financeCreditCardDiscover();
	}
	foreach(i; 0 .. 4) {
		f.financeCreditCardJcb();
	}
	foreach(i; 0 .. 4) {
		f.financeCreditCardMaestro();
	}
	foreach(i; 0 .. 4) {
		f.financeCreditCardMastercard();
	}
	foreach(i; 0 .. 4) {
		f.financeCreditCardVisa();
	}
	foreach(i; 0 .. 4) {
		f.financeCurrency();
	}
	foreach(i; 0 .. 4) {
		f.financeTransactionType();
	}
	foreach(i; 0 .. 4) {
		f.hackerAbbreviation();
	}
	foreach(i; 0 .. 4) {
		f.hackerAdjective();
	}
	foreach(i; 0 .. 4) {
		f.hackerIngverb();
	}
	foreach(i; 0 .. 4) {
		f.hackerNoun();
	}
	foreach(i; 0 .. 4) {
		f.hackerPhrase();
	}
	foreach(i; 0 .. 4) {
		f.hackerVerb();
	}
	foreach(i; 0 .. 4) {
		f.internetDomainSuffix();
	}
	foreach(i; 0 .. 4) {
		f.internetEmoji();
	}
	foreach(i; 0 .. 4) {
		f.internetEmojiActivity();
	}
	foreach(i; 0 .. 4) {
		f.internetEmojiBody();
	}
	foreach(i; 0 .. 4) {
		f.internetEmojiFlag();
	}
	foreach(i; 0 .. 4) {
		f.internetEmojiFood();
	}
	foreach(i; 0 .. 4) {
		f.internetEmojiNature();
	}
	foreach(i; 0 .. 4) {
		f.internetEmojiObject();
	}
	foreach(i; 0 .. 4) {
		f.internetEmojiPerson();
	}
	foreach(i; 0 .. 4) {
		f.internetEmojiSmiley();
	}
	foreach(i; 0 .. 4) {
		f.internetEmojiSymbol();
	}
	foreach(i; 0 .. 4) {
		f.internetEmojiTravel();
	}
	foreach(i; 0 .. 4) {
		f.internetExampleEmail();
	}
	foreach(i; 0 .. 4) {
		f.internetFreeEmail();
	}
	foreach(i; 0 .. 4) {
		f.locationBuildingNumber();
	}
	foreach(i; 0 .. 4) {
		f.locationCity();
	}
	foreach(i; 0 .. 4) {
		f.locationCityName();
	}
	foreach(i; 0 .. 4) {
		f.locationCityPattern();
	}
	foreach(i; 0 .. 4) {
		f.locationCityPrefix();
	}
	foreach(i; 0 .. 4) {
		f.locationCitySuffix();
	}
	foreach(i; 0 .. 4) {
		f.locationCountry();
	}
	foreach(i; 0 .. 4) {
		f.locationCounty();
	}
	foreach(i; 0 .. 4) {
		f.locationDefaultCountry();
	}
	foreach(i; 0 .. 4) {
		f.locationDirection();
	}
	foreach(i; 0 .. 4) {
		f.locationDirectionAbbr();
	}
	foreach(i; 0 .. 4) {
		f.locationPostcode();
	}
	foreach(i; 0 .. 4) {
		f.locationSecondaryAddress();
	}
	foreach(i; 0 .. 4) {
		f.locationState();
	}
	foreach(i; 0 .. 4) {
		f.locationStateAbbr();
	}
	foreach(i; 0 .. 4) {
		f.locationStreetAddress();
	}
	foreach(i; 0 .. 4) {
		f.locationStreetName();
	}
	foreach(i; 0 .. 4) {
		f.locationStreetPattern();
	}
	foreach(i; 0 .. 4) {
		f.locationStreetSuffix();
	}
	foreach(i; 0 .. 4) {
		f.locationTimeZone();
	}
	foreach(i; 0 .. 4) {
		f.loremParagraph();
	}
	foreach(i; 0 .. 4) {
		f.loremParagraphs();
	}
	foreach(i; 0 .. 4) {
		f.loremSentance();
	}
	foreach(i; 0 .. 4) {
		f.loremSentances();
	}
	foreach(i; 0 .. 4) {
		f.loremText();
	}
	foreach(i; 0 .. 4) {
		f.loremWords();
	}
	foreach(i; 0 .. 4) {
		f.musicGenre();
	}
	foreach(i; 0 .. 4) {
		f.musicSongName();
	}
	foreach(i; 0 .. 4) {
		f.personBioPart();
	}
	foreach(i; 0 .. 4) {
		f.personBioPattern();
	}
	foreach(i; 0 .. 4) {
		f.personBioSupporter();
	}
	foreach(i; 0 .. 4) {
		f.personFemaleFirstName();
	}
	foreach(i; 0 .. 4) {
		f.personFemaleMiddleName();
	}
	foreach(i; 0 .. 4) {
		f.personFemalePrefix();
	}
	foreach(i; 0 .. 4) {
		f.personFirstName();
	}
	foreach(i; 0 .. 4) {
		f.personGender();
	}
	foreach(i; 0 .. 4) {
		f.personJobArea();
	}
	foreach(i; 0 .. 4) {
		f.personJobDescriptor();
	}
	foreach(i; 0 .. 4) {
		f.personJobTitlePattern();
	}
	foreach(i; 0 .. 4) {
		f.personJobType();
	}
	foreach(i; 0 .. 4) {
		f.personLastName();
	}
	foreach(i; 0 .. 4) {
		f.personLastNamePattern();
	}
	foreach(i; 0 .. 4) {
		f.personMaleFirstName();
	}
	foreach(i; 0 .. 4) {
		f.personMaleMiddleName();
	}
	foreach(i; 0 .. 4) {
		f.personMalePrefix();
	}
	foreach(i; 0 .. 4) {
		f.personMiddleName();
	}
	foreach(i; 0 .. 4) {
		f.personName();
	}
	foreach(i; 0 .. 4) {
		f.personPrefix();
	}
	foreach(i; 0 .. 4) {
		f.personSex();
	}
	foreach(i; 0 .. 4) {
		f.personSuffix();
	}
	foreach(i; 0 .. 4) {
		f.personTitleDescriptor();
	}
	foreach(i; 0 .. 4) {
		f.personTitleJob();
	}
	foreach(i; 0 .. 4) {
		f.personTitleLevel();
	}
	foreach(i; 0 .. 4) {
		f.personWesternZodiacSign();
	}
	foreach(i; 0 .. 4) {
		f.phoneNumber();
	}
	foreach(i; 0 .. 4) {
		f.phoneNumberFormats();
	}
	foreach(i; 0 .. 4) {
		f.scienceChemicalElement();
	}
	foreach(i; 0 .. 4) {
		f.scienceUnit();
	}
	foreach(i; 0 .. 4) {
		f.systemDirectoryPaths();
	}
	foreach(i; 0 .. 4) {
		f.teamCreature();
	}
	foreach(i; 0 .. 4) {
		f.teamName();
	}
	foreach(i; 0 .. 4) {
		f.vehicleBicycleType();
	}
	foreach(i; 0 .. 4) {
		f.vehicleFuel();
	}
	foreach(i; 0 .. 4) {
		f.vehicleManufacturer();
	}
	foreach(i; 0 .. 4) {
		f.vehicleModel();
	}
	foreach(i; 0 .. 4) {
		f.vehicleType();
	}
	foreach(i; 0 .. 4) {
		f.wordAdjective();
	}
	foreach(i; 0 .. 4) {
		f.wordAdverb();
	}
	foreach(i; 0 .. 4) {
		f.wordConjunction();
	}
	foreach(i; 0 .. 4) {
		f.wordInterjection();
	}
	foreach(i; 0 .. 4) {
		f.wordNoun();
	}
	foreach(i; 0 .. 4) {
		f.wordPreposition();
	}
	foreach(i; 0 .. 4) {
		f.wordVerb();
	}
}

unittest {
	auto f = new Faker_nl_be(13);

	foreach(i; 0 .. 4) {
		f.airlineAirline();
	}
	foreach(i; 0 .. 4) {
		f.airlineAirplane();
	}
	foreach(i; 0 .. 4) {
		f.airlineAirport();
	}
	foreach(i; 0 .. 4) {
		f.animalBear();
	}
	foreach(i; 0 .. 4) {
		f.animalBird();
	}
	foreach(i; 0 .. 4) {
		f.animalCat();
	}
	foreach(i; 0 .. 4) {
		f.animalCetacean();
	}
	foreach(i; 0 .. 4) {
		f.animalCow();
	}
	foreach(i; 0 .. 4) {
		f.animalCrocodilia();
	}
	foreach(i; 0 .. 4) {
		f.animalDog();
	}
	foreach(i; 0 .. 4) {
		f.animalFish();
	}
	foreach(i; 0 .. 4) {
		f.animalHorse();
	}
	foreach(i; 0 .. 4) {
		f.animalInsect();
	}
	foreach(i; 0 .. 4) {
		f.animalLion();
	}
	foreach(i; 0 .. 4) {
		f.animalRabbit();
	}
	foreach(i; 0 .. 4) {
		f.animalRodent();
	}
	foreach(i; 0 .. 4) {
		f.animalSnake();
	}
	foreach(i; 0 .. 4) {
		f.appAuthor();
	}
	foreach(i; 0 .. 4) {
		f.appName();
	}
	foreach(i; 0 .. 4) {
		f.appVersion();
	}
	foreach(i; 0 .. 4) {
		f.cellPhoneFormats();
	}
	foreach(i; 0 .. 4) {
		f.commerceDepartment();
	}
	foreach(i; 0 .. 4) {
		f.commerceProductDescription();
	}
	foreach(i; 0 .. 4) {
		f.commerceProductNameAdjective();
	}
	foreach(i; 0 .. 4) {
		f.commerceProductNameMaterial();
	}
	foreach(i; 0 .. 4) {
		f.commerceProductNameProduct();
	}
	foreach(i; 0 .. 4) {
		f.companyAdjective();
	}
	foreach(i; 0 .. 4) {
		f.companyBuzzAdjective();
	}
	foreach(i; 0 .. 4) {
		f.companyBuzzNoun();
	}
	foreach(i; 0 .. 4) {
		f.companyBuzzVerb();
	}
	foreach(i; 0 .. 4) {
		f.companyCatchPhrase();
	}
	foreach(i; 0 .. 4) {
		f.companyDescriptor();
	}
	foreach(i; 0 .. 4) {
		f.companyName();
	}
	foreach(i; 0 .. 4) {
		f.companyNamePattern();
	}
	foreach(i; 0 .. 4) {
		f.companyNoun();
	}
	foreach(i; 0 .. 4) {
		f.companySuffix();
	}
	foreach(i; 0 .. 4) {
		f.databaseCollation();
	}
	foreach(i; 0 .. 4) {
		f.databaseColumn();
	}
	foreach(i; 0 .. 4) {
		f.databaseEngine();
	}
	foreach(i; 0 .. 4) {
		f.databaseType();
	}
	foreach(i; 0 .. 4) {
		f.dateMonthAbbr();
	}
	foreach(i; 0 .. 4) {
		f.dateMonthWide();
	}
	foreach(i; 0 .. 4) {
		f.dateWeekdayAbbr();
	}
	foreach(i; 0 .. 4) {
		f.dateWeekdayWide();
	}
	foreach(i; 0 .. 4) {
		f.financeAccountType();
	}
	foreach(i; 0 .. 4) {
		f.financeCreditCardAmericanExpress();
	}
	foreach(i; 0 .. 4) {
		f.financeCreditCardDinersClub();
	}
	foreach(i; 0 .. 4) {
		f.financeCreditCardDiscover();
	}
	foreach(i; 0 .. 4) {
		f.financeCreditCardJcb();
	}
	foreach(i; 0 .. 4) {
		f.financeCreditCardMaestro();
	}
	foreach(i; 0 .. 4) {
		f.financeCreditCardMastercard();
	}
	foreach(i; 0 .. 4) {
		f.financeCreditCardVisa();
	}
	foreach(i; 0 .. 4) {
		f.financeCurrency();
	}
	foreach(i; 0 .. 4) {
		f.financeTransactionType();
	}
	foreach(i; 0 .. 4) {
		f.hackerAbbreviation();
	}
	foreach(i; 0 .. 4) {
		f.hackerAdjective();
	}
	foreach(i; 0 .. 4) {
		f.hackerIngverb();
	}
	foreach(i; 0 .. 4) {
		f.hackerNoun();
	}
	foreach(i; 0 .. 4) {
		f.hackerPhrase();
	}
	foreach(i; 0 .. 4) {
		f.hackerVerb();
	}
	foreach(i; 0 .. 4) {
		f.internetDomainSuffix();
	}
	foreach(i; 0 .. 4) {
		f.internetEmoji();
	}
	foreach(i; 0 .. 4) {
		f.internetEmojiActivity();
	}
	foreach(i; 0 .. 4) {
		f.internetEmojiBody();
	}
	foreach(i; 0 .. 4) {
		f.internetEmojiFlag();
	}
	foreach(i; 0 .. 4) {
		f.internetEmojiFood();
	}
	foreach(i; 0 .. 4) {
		f.internetEmojiNature();
	}
	foreach(i; 0 .. 4) {
		f.internetEmojiObject();
	}
	foreach(i; 0 .. 4) {
		f.internetEmojiPerson();
	}
	foreach(i; 0 .. 4) {
		f.internetEmojiSmiley();
	}
	foreach(i; 0 .. 4) {
		f.internetEmojiSymbol();
	}
	foreach(i; 0 .. 4) {
		f.internetEmojiTravel();
	}
	foreach(i; 0 .. 4) {
		f.internetExampleEmail();
	}
	foreach(i; 0 .. 4) {
		f.internetFreeEmail();
	}
	foreach(i; 0 .. 4) {
		f.locationBuildingNumber();
	}
	foreach(i; 0 .. 4) {
		f.locationCity();
	}
	foreach(i; 0 .. 4) {
		f.locationCityName();
	}
	foreach(i; 0 .. 4) {
		f.locationCityPattern();
	}
	foreach(i; 0 .. 4) {
		f.locationCityPrefix();
	}
	foreach(i; 0 .. 4) {
		f.locationCitySuffix();
	}
	foreach(i; 0 .. 4) {
		f.locationCountry();
	}
	foreach(i; 0 .. 4) {
		f.locationCounty();
	}
	foreach(i; 0 .. 4) {
		f.locationDefaultCountry();
	}
	foreach(i; 0 .. 4) {
		f.locationDirection();
	}
	foreach(i; 0 .. 4) {
		f.locationDirectionAbbr();
	}
	foreach(i; 0 .. 4) {
		f.locationPostcode();
	}
	foreach(i; 0 .. 4) {
		f.locationSecondaryAddress();
	}
	foreach(i; 0 .. 4) {
		f.locationState();
	}
	foreach(i; 0 .. 4) {
		f.locationStateAbbr();
	}
	foreach(i; 0 .. 4) {
		f.locationStreetAddress();
	}
	foreach(i; 0 .. 4) {
		f.locationStreetName();
	}
	foreach(i; 0 .. 4) {
		f.locationStreetPattern();
	}
	foreach(i; 0 .. 4) {
		f.locationStreetSuffix();
	}
	foreach(i; 0 .. 4) {
		f.locationTimeZone();
	}
	foreach(i; 0 .. 4) {
		f.loremParagraph();
	}
	foreach(i; 0 .. 4) {
		f.loremParagraphs();
	}
	foreach(i; 0 .. 4) {
		f.loremSentance();
	}
	foreach(i; 0 .. 4) {
		f.loremSentances();
	}
	foreach(i; 0 .. 4) {
		f.loremText();
	}
	foreach(i; 0 .. 4) {
		f.loremWords();
	}
	foreach(i; 0 .. 4) {
		f.musicGenre();
	}
	foreach(i; 0 .. 4) {
		f.musicSongName();
	}
	foreach(i; 0 .. 4) {
		f.personBioPart();
	}
	foreach(i; 0 .. 4) {
		f.personBioPattern();
	}
	foreach(i; 0 .. 4) {
		f.personBioSupporter();
	}
	foreach(i; 0 .. 4) {
		f.personFemaleFirstName();
	}
	foreach(i; 0 .. 4) {
		f.personFemaleMiddleName();
	}
	foreach(i; 0 .. 4) {
		f.personFemalePrefix();
	}
	foreach(i; 0 .. 4) {
		f.personFirstName();
	}
	foreach(i; 0 .. 4) {
		f.personGender();
	}
	foreach(i; 0 .. 4) {
		f.personJobArea();
	}
	foreach(i; 0 .. 4) {
		f.personJobDescriptor();
	}
	foreach(i; 0 .. 4) {
		f.personJobTitlePattern();
	}
	foreach(i; 0 .. 4) {
		f.personJobType();
	}
	foreach(i; 0 .. 4) {
		f.personLastName();
	}
	foreach(i; 0 .. 4) {
		f.personLastNamePattern();
	}
	foreach(i; 0 .. 4) {
		f.personMaleFirstName();
	}
	foreach(i; 0 .. 4) {
		f.personMaleMiddleName();
	}
	foreach(i; 0 .. 4) {
		f.personMalePrefix();
	}
	foreach(i; 0 .. 4) {
		f.personMiddleName();
	}
	foreach(i; 0 .. 4) {
		f.personName();
	}
	foreach(i; 0 .. 4) {
		f.personPrefix();
	}
	foreach(i; 0 .. 4) {
		f.personSex();
	}
	foreach(i; 0 .. 4) {
		f.personSuffix();
	}
	foreach(i; 0 .. 4) {
		f.personTitleDescriptor();
	}
	foreach(i; 0 .. 4) {
		f.personTitleJob();
	}
	foreach(i; 0 .. 4) {
		f.personTitleLevel();
	}
	foreach(i; 0 .. 4) {
		f.personWesternZodiacSign();
	}
	foreach(i; 0 .. 4) {
		f.phoneNumber();
	}
	foreach(i; 0 .. 4) {
		f.phoneNumberFormats();
	}
	foreach(i; 0 .. 4) {
		f.scienceChemicalElement();
	}
	foreach(i; 0 .. 4) {
		f.scienceUnit();
	}
	foreach(i; 0 .. 4) {
		f.systemDirectoryPaths();
	}
	foreach(i; 0 .. 4) {
		f.teamCreature();
	}
	foreach(i; 0 .. 4) {
		f.teamName();
	}
	foreach(i; 0 .. 4) {
		f.vehicleBicycleType();
	}
	foreach(i; 0 .. 4) {
		f.vehicleFuel();
	}
	foreach(i; 0 .. 4) {
		f.vehicleManufacturer();
	}
	foreach(i; 0 .. 4) {
		f.vehicleModel();
	}
	foreach(i; 0 .. 4) {
		f.vehicleType();
	}
	foreach(i; 0 .. 4) {
		f.wordAdjective();
	}
	foreach(i; 0 .. 4) {
		f.wordAdverb();
	}
	foreach(i; 0 .. 4) {
		f.wordConjunction();
	}
	foreach(i; 0 .. 4) {
		f.wordInterjection();
	}
	foreach(i; 0 .. 4) {
		f.wordNoun();
	}
	foreach(i; 0 .. 4) {
		f.wordPreposition();
	}
	foreach(i; 0 .. 4) {
		f.wordVerb();
	}
}

unittest {
	auto f = new Faker_pl(13);

	foreach(i; 0 .. 4) {
		f.airlineAirline();
	}
	foreach(i; 0 .. 4) {
		f.airlineAirplane();
	}
	foreach(i; 0 .. 4) {
		f.airlineAirport();
	}
	foreach(i; 0 .. 4) {
		f.animalBear();
	}
	foreach(i; 0 .. 4) {
		f.animalBird();
	}
	foreach(i; 0 .. 4) {
		f.animalCat();
	}
	foreach(i; 0 .. 4) {
		f.animalCetacean();
	}
	foreach(i; 0 .. 4) {
		f.animalCow();
	}
	foreach(i; 0 .. 4) {
		f.animalCrocodilia();
	}
	foreach(i; 0 .. 4) {
		f.animalDog();
	}
	foreach(i; 0 .. 4) {
		f.animalFish();
	}
	foreach(i; 0 .. 4) {
		f.animalHorse();
	}
	foreach(i; 0 .. 4) {
		f.animalInsect();
	}
	foreach(i; 0 .. 4) {
		f.animalLion();
	}
	foreach(i; 0 .. 4) {
		f.animalRabbit();
	}
	foreach(i; 0 .. 4) {
		f.animalRodent();
	}
	foreach(i; 0 .. 4) {
		f.animalSnake();
	}
	foreach(i; 0 .. 4) {
		f.appAuthor();
	}
	foreach(i; 0 .. 4) {
		f.appName();
	}
	foreach(i; 0 .. 4) {
		f.appVersion();
	}
	foreach(i; 0 .. 4) {
		f.cellPhoneFormats();
	}
	foreach(i; 0 .. 4) {
		f.commerceDepartment();
	}
	foreach(i; 0 .. 4) {
		f.commerceProductDescription();
	}
	foreach(i; 0 .. 4) {
		f.commerceProductNameAdjective();
	}
	foreach(i; 0 .. 4) {
		f.commerceProductNameMaterial();
	}
	foreach(i; 0 .. 4) {
		f.commerceProductNameProduct();
	}
	foreach(i; 0 .. 4) {
		f.companyAdjective();
	}
	foreach(i; 0 .. 4) {
		f.companyBuzzAdjective();
	}
	foreach(i; 0 .. 4) {
		f.companyBuzzNoun();
	}
	foreach(i; 0 .. 4) {
		f.companyBuzzVerb();
	}
	foreach(i; 0 .. 4) {
		f.companyCatchPhrase();
	}
	foreach(i; 0 .. 4) {
		f.companyDescriptor();
	}
	foreach(i; 0 .. 4) {
		f.companyName();
	}
	foreach(i; 0 .. 4) {
		f.companyNamePattern();
	}
	foreach(i; 0 .. 4) {
		f.companyNoun();
	}
	foreach(i; 0 .. 4) {
		f.companySuffix();
	}
	foreach(i; 0 .. 4) {
		f.databaseCollation();
	}
	foreach(i; 0 .. 4) {
		f.databaseColumn();
	}
	foreach(i; 0 .. 4) {
		f.databaseEngine();
	}
	foreach(i; 0 .. 4) {
		f.databaseType();
	}
	foreach(i; 0 .. 4) {
		f.dateMonthAbbr();
	}
	foreach(i; 0 .. 4) {
		f.dateMonthWide();
	}
	foreach(i; 0 .. 4) {
		f.dateWeekdayAbbr();
	}
	foreach(i; 0 .. 4) {
		f.dateWeekdayWide();
	}
	foreach(i; 0 .. 4) {
		f.financeAccountType();
	}
	foreach(i; 0 .. 4) {
		f.financeCreditCardAmericanExpress();
	}
	foreach(i; 0 .. 4) {
		f.financeCreditCardDinersClub();
	}
	foreach(i; 0 .. 4) {
		f.financeCreditCardDiscover();
	}
	foreach(i; 0 .. 4) {
		f.financeCreditCardJcb();
	}
	foreach(i; 0 .. 4) {
		f.financeCreditCardMaestro();
	}
	foreach(i; 0 .. 4) {
		f.financeCreditCardMastercard();
	}
	foreach(i; 0 .. 4) {
		f.financeCreditCardVisa();
	}
	foreach(i; 0 .. 4) {
		f.financeCurrency();
	}
	foreach(i; 0 .. 4) {
		f.financeTransactionType();
	}
	foreach(i; 0 .. 4) {
		f.hackerAbbreviation();
	}
	foreach(i; 0 .. 4) {
		f.hackerAdjective();
	}
	foreach(i; 0 .. 4) {
		f.hackerIngverb();
	}
	foreach(i; 0 .. 4) {
		f.hackerNoun();
	}
	foreach(i; 0 .. 4) {
		f.hackerPhrase();
	}
	foreach(i; 0 .. 4) {
		f.hackerVerb();
	}
	foreach(i; 0 .. 4) {
		f.internetDomainSuffix();
	}
	foreach(i; 0 .. 4) {
		f.internetEmoji();
	}
	foreach(i; 0 .. 4) {
		f.internetEmojiActivity();
	}
	foreach(i; 0 .. 4) {
		f.internetEmojiBody();
	}
	foreach(i; 0 .. 4) {
		f.internetEmojiFlag();
	}
	foreach(i; 0 .. 4) {
		f.internetEmojiFood();
	}
	foreach(i; 0 .. 4) {
		f.internetEmojiNature();
	}
	foreach(i; 0 .. 4) {
		f.internetEmojiObject();
	}
	foreach(i; 0 .. 4) {
		f.internetEmojiPerson();
	}
	foreach(i; 0 .. 4) {
		f.internetEmojiSmiley();
	}
	foreach(i; 0 .. 4) {
		f.internetEmojiSymbol();
	}
	foreach(i; 0 .. 4) {
		f.internetEmojiTravel();
	}
	foreach(i; 0 .. 4) {
		f.internetExampleEmail();
	}
	foreach(i; 0 .. 4) {
		f.internetFreeEmail();
	}
	foreach(i; 0 .. 4) {
		f.locationBuildingNumber();
	}
	foreach(i; 0 .. 4) {
		f.locationCity();
	}
	foreach(i; 0 .. 4) {
		f.locationCityName();
	}
	foreach(i; 0 .. 4) {
		f.locationCityPattern();
	}
	foreach(i; 0 .. 4) {
		f.locationCityPrefix();
	}
	foreach(i; 0 .. 4) {
		f.locationCitySuffix();
	}
	foreach(i; 0 .. 4) {
		f.locationCountry();
	}
	foreach(i; 0 .. 4) {
		f.locationCounty();
	}
	foreach(i; 0 .. 4) {
		f.locationDefaultCountry();
	}
	foreach(i; 0 .. 4) {
		f.locationDirection();
	}
	foreach(i; 0 .. 4) {
		f.locationDirectionAbbr();
	}
	foreach(i; 0 .. 4) {
		f.locationPostcode();
	}
	foreach(i; 0 .. 4) {
		f.locationSecondaryAddress();
	}
	foreach(i; 0 .. 4) {
		f.locationState();
	}
	foreach(i; 0 .. 4) {
		f.locationStateAbbr();
	}
	foreach(i; 0 .. 4) {
		f.locationStreetAddress();
	}
	foreach(i; 0 .. 4) {
		f.locationStreetName();
	}
	foreach(i; 0 .. 4) {
		f.locationStreetPattern();
	}
	foreach(i; 0 .. 4) {
		f.locationStreetSuffix();
	}
	foreach(i; 0 .. 4) {
		f.locationTimeZone();
	}
	foreach(i; 0 .. 4) {
		f.loremParagraph();
	}
	foreach(i; 0 .. 4) {
		f.loremParagraphs();
	}
	foreach(i; 0 .. 4) {
		f.loremSentance();
	}
	foreach(i; 0 .. 4) {
		f.loremSentances();
	}
	foreach(i; 0 .. 4) {
		f.loremText();
	}
	foreach(i; 0 .. 4) {
		f.loremWords();
	}
	foreach(i; 0 .. 4) {
		f.musicGenre();
	}
	foreach(i; 0 .. 4) {
		f.musicSongName();
	}
	foreach(i; 0 .. 4) {
		f.personBioPart();
	}
	foreach(i; 0 .. 4) {
		f.personBioPattern();
	}
	foreach(i; 0 .. 4) {
		f.personBioSupporter();
	}
	foreach(i; 0 .. 4) {
		f.personFemaleFirstName();
	}
	foreach(i; 0 .. 4) {
		f.personFemaleMiddleName();
	}
	foreach(i; 0 .. 4) {
		f.personFemalePrefix();
	}
	foreach(i; 0 .. 4) {
		f.personFirstName();
	}
	foreach(i; 0 .. 4) {
		f.personGender();
	}
	foreach(i; 0 .. 4) {
		f.personJobArea();
	}
	foreach(i; 0 .. 4) {
		f.personJobDescriptor();
	}
	foreach(i; 0 .. 4) {
		f.personJobTitlePattern();
	}
	foreach(i; 0 .. 4) {
		f.personJobType();
	}
	foreach(i; 0 .. 4) {
		f.personLastName();
	}
	foreach(i; 0 .. 4) {
		f.personLastNamePattern();
	}
	foreach(i; 0 .. 4) {
		f.personMaleFirstName();
	}
	foreach(i; 0 .. 4) {
		f.personMaleMiddleName();
	}
	foreach(i; 0 .. 4) {
		f.personMalePrefix();
	}
	foreach(i; 0 .. 4) {
		f.personMiddleName();
	}
	foreach(i; 0 .. 4) {
		f.personName();
	}
	foreach(i; 0 .. 4) {
		f.personPrefix();
	}
	foreach(i; 0 .. 4) {
		f.personSex();
	}
	foreach(i; 0 .. 4) {
		f.personSuffix();
	}
	foreach(i; 0 .. 4) {
		f.personTitleDescriptor();
	}
	foreach(i; 0 .. 4) {
		f.personTitleJob();
	}
	foreach(i; 0 .. 4) {
		f.personTitleLevel();
	}
	foreach(i; 0 .. 4) {
		f.personWesternZodiacSign();
	}
	foreach(i; 0 .. 4) {
		f.phoneNumber();
	}
	foreach(i; 0 .. 4) {
		f.phoneNumberFormats();
	}
	foreach(i; 0 .. 4) {
		f.scienceChemicalElement();
	}
	foreach(i; 0 .. 4) {
		f.scienceUnit();
	}
	foreach(i; 0 .. 4) {
		f.systemDirectoryPaths();
	}
	foreach(i; 0 .. 4) {
		f.teamCreature();
	}
	foreach(i; 0 .. 4) {
		f.teamName();
	}
	foreach(i; 0 .. 4) {
		f.vehicleBicycleType();
	}
	foreach(i; 0 .. 4) {
		f.vehicleFuel();
	}
	foreach(i; 0 .. 4) {
		f.vehicleManufacturer();
	}
	foreach(i; 0 .. 4) {
		f.vehicleModel();
	}
	foreach(i; 0 .. 4) {
		f.vehicleType();
	}
	foreach(i; 0 .. 4) {
		f.wordAdjective();
	}
	foreach(i; 0 .. 4) {
		f.wordAdverb();
	}
	foreach(i; 0 .. 4) {
		f.wordConjunction();
	}
	foreach(i; 0 .. 4) {
		f.wordInterjection();
	}
	foreach(i; 0 .. 4) {
		f.wordNoun();
	}
	foreach(i; 0 .. 4) {
		f.wordPreposition();
	}
	foreach(i; 0 .. 4) {
		f.wordVerb();
	}
}

unittest {
	auto f = new Faker_pt_br(13);

	foreach(i; 0 .. 4) {
		f.airlineAirline();
	}
	foreach(i; 0 .. 4) {
		f.airlineAirplane();
	}
	foreach(i; 0 .. 4) {
		f.airlineAirport();
	}
	foreach(i; 0 .. 4) {
		f.animalBear();
	}
	foreach(i; 0 .. 4) {
		f.animalBird();
	}
	foreach(i; 0 .. 4) {
		f.animalCat();
	}
	foreach(i; 0 .. 4) {
		f.animalCetacean();
	}
	foreach(i; 0 .. 4) {
		f.animalCow();
	}
	foreach(i; 0 .. 4) {
		f.animalCrocodilia();
	}
	foreach(i; 0 .. 4) {
		f.animalDog();
	}
	foreach(i; 0 .. 4) {
		f.animalFish();
	}
	foreach(i; 0 .. 4) {
		f.animalHorse();
	}
	foreach(i; 0 .. 4) {
		f.animalInsect();
	}
	foreach(i; 0 .. 4) {
		f.animalLion();
	}
	foreach(i; 0 .. 4) {
		f.animalRabbit();
	}
	foreach(i; 0 .. 4) {
		f.animalRodent();
	}
	foreach(i; 0 .. 4) {
		f.animalSnake();
	}
	foreach(i; 0 .. 4) {
		f.appAuthor();
	}
	foreach(i; 0 .. 4) {
		f.appName();
	}
	foreach(i; 0 .. 4) {
		f.appVersion();
	}
	foreach(i; 0 .. 4) {
		f.cellPhoneFormats();
	}
	foreach(i; 0 .. 4) {
		f.commerceDepartment();
	}
	foreach(i; 0 .. 4) {
		f.commerceProductDescription();
	}
	foreach(i; 0 .. 4) {
		f.commerceProductNameAdjective();
	}
	foreach(i; 0 .. 4) {
		f.commerceProductNameMaterial();
	}
	foreach(i; 0 .. 4) {
		f.commerceProductNameProduct();
	}
	foreach(i; 0 .. 4) {
		f.companyAdjective();
	}
	foreach(i; 0 .. 4) {
		f.companyBuzzAdjective();
	}
	foreach(i; 0 .. 4) {
		f.companyBuzzNoun();
	}
	foreach(i; 0 .. 4) {
		f.companyBuzzVerb();
	}
	foreach(i; 0 .. 4) {
		f.companyCatchPhrase();
	}
	foreach(i; 0 .. 4) {
		f.companyDescriptor();
	}
	foreach(i; 0 .. 4) {
		f.companyName();
	}
	foreach(i; 0 .. 4) {
		f.companyNamePattern();
	}
	foreach(i; 0 .. 4) {
		f.companyNoun();
	}
	foreach(i; 0 .. 4) {
		f.companySuffix();
	}
	foreach(i; 0 .. 4) {
		f.databaseCollation();
	}
	foreach(i; 0 .. 4) {
		f.databaseColumn();
	}
	foreach(i; 0 .. 4) {
		f.databaseEngine();
	}
	foreach(i; 0 .. 4) {
		f.databaseType();
	}
	foreach(i; 0 .. 4) {
		f.dateMonthAbbr();
	}
	foreach(i; 0 .. 4) {
		f.dateMonthWide();
	}
	foreach(i; 0 .. 4) {
		f.dateWeekdayAbbr();
	}
	foreach(i; 0 .. 4) {
		f.dateWeekdayWide();
	}
	foreach(i; 0 .. 4) {
		f.financeAccountType();
	}
	foreach(i; 0 .. 4) {
		f.financeCreditCardAmericanExpress();
	}
	foreach(i; 0 .. 4) {
		f.financeCreditCardDinersClub();
	}
	foreach(i; 0 .. 4) {
		f.financeCreditCardDiscover();
	}
	foreach(i; 0 .. 4) {
		f.financeCreditCardJcb();
	}
	foreach(i; 0 .. 4) {
		f.financeCreditCardMaestro();
	}
	foreach(i; 0 .. 4) {
		f.financeCreditCardMastercard();
	}
	foreach(i; 0 .. 4) {
		f.financeCreditCardVisa();
	}
	foreach(i; 0 .. 4) {
		f.financeCurrency();
	}
	foreach(i; 0 .. 4) {
		f.financeTransactionType();
	}
	foreach(i; 0 .. 4) {
		f.hackerAbbreviation();
	}
	foreach(i; 0 .. 4) {
		f.hackerAdjective();
	}
	foreach(i; 0 .. 4) {
		f.hackerIngverb();
	}
	foreach(i; 0 .. 4) {
		f.hackerNoun();
	}
	foreach(i; 0 .. 4) {
		f.hackerPhrase();
	}
	foreach(i; 0 .. 4) {
		f.hackerVerb();
	}
	foreach(i; 0 .. 4) {
		f.internetDomainSuffix();
	}
	foreach(i; 0 .. 4) {
		f.internetEmoji();
	}
	foreach(i; 0 .. 4) {
		f.internetEmojiActivity();
	}
	foreach(i; 0 .. 4) {
		f.internetEmojiBody();
	}
	foreach(i; 0 .. 4) {
		f.internetEmojiFlag();
	}
	foreach(i; 0 .. 4) {
		f.internetEmojiFood();
	}
	foreach(i; 0 .. 4) {
		f.internetEmojiNature();
	}
	foreach(i; 0 .. 4) {
		f.internetEmojiObject();
	}
	foreach(i; 0 .. 4) {
		f.internetEmojiPerson();
	}
	foreach(i; 0 .. 4) {
		f.internetEmojiSmiley();
	}
	foreach(i; 0 .. 4) {
		f.internetEmojiSymbol();
	}
	foreach(i; 0 .. 4) {
		f.internetEmojiTravel();
	}
	foreach(i; 0 .. 4) {
		f.internetExampleEmail();
	}
	foreach(i; 0 .. 4) {
		f.internetFreeEmail();
	}
	foreach(i; 0 .. 4) {
		f.locationBuildingNumber();
	}
	foreach(i; 0 .. 4) {
		f.locationCity();
	}
	foreach(i; 0 .. 4) {
		f.locationCityName();
	}
	foreach(i; 0 .. 4) {
		f.locationCityPattern();
	}
	foreach(i; 0 .. 4) {
		f.locationCityPrefix();
	}
	foreach(i; 0 .. 4) {
		f.locationCitySuffix();
	}
	foreach(i; 0 .. 4) {
		f.locationCountry();
	}
	foreach(i; 0 .. 4) {
		f.locationCounty();
	}
	foreach(i; 0 .. 4) {
		f.locationDefaultCountry();
	}
	foreach(i; 0 .. 4) {
		f.locationDirection();
	}
	foreach(i; 0 .. 4) {
		f.locationDirectionAbbr();
	}
	foreach(i; 0 .. 4) {
		f.locationPostcode();
	}
	foreach(i; 0 .. 4) {
		f.locationSecondaryAddress();
	}
	foreach(i; 0 .. 4) {
		f.locationState();
	}
	foreach(i; 0 .. 4) {
		f.locationStateAbbr();
	}
	foreach(i; 0 .. 4) {
		f.locationStreetAddress();
	}
	foreach(i; 0 .. 4) {
		f.locationStreetName();
	}
	foreach(i; 0 .. 4) {
		f.locationStreetPattern();
	}
	foreach(i; 0 .. 4) {
		f.locationStreetSuffix();
	}
	foreach(i; 0 .. 4) {
		f.locationTimeZone();
	}
	foreach(i; 0 .. 4) {
		f.loremParagraph();
	}
	foreach(i; 0 .. 4) {
		f.loremParagraphs();
	}
	foreach(i; 0 .. 4) {
		f.loremSentance();
	}
	foreach(i; 0 .. 4) {
		f.loremSentances();
	}
	foreach(i; 0 .. 4) {
		f.loremText();
	}
	foreach(i; 0 .. 4) {
		f.loremWords();
	}
	foreach(i; 0 .. 4) {
		f.musicGenre();
	}
	foreach(i; 0 .. 4) {
		f.musicSongName();
	}
	foreach(i; 0 .. 4) {
		f.personBioPart();
	}
	foreach(i; 0 .. 4) {
		f.personBioPattern();
	}
	foreach(i; 0 .. 4) {
		f.personBioSupporter();
	}
	foreach(i; 0 .. 4) {
		f.personFemaleFirstName();
	}
	foreach(i; 0 .. 4) {
		f.personFemaleMiddleName();
	}
	foreach(i; 0 .. 4) {
		f.personFemalePrefix();
	}
	foreach(i; 0 .. 4) {
		f.personFirstName();
	}
	foreach(i; 0 .. 4) {
		f.personGender();
	}
	foreach(i; 0 .. 4) {
		f.personJobArea();
	}
	foreach(i; 0 .. 4) {
		f.personJobDescriptor();
	}
	foreach(i; 0 .. 4) {
		f.personJobTitlePattern();
	}
	foreach(i; 0 .. 4) {
		f.personJobType();
	}
	foreach(i; 0 .. 4) {
		f.personLastName();
	}
	foreach(i; 0 .. 4) {
		f.personLastNamePattern();
	}
	foreach(i; 0 .. 4) {
		f.personMaleFirstName();
	}
	foreach(i; 0 .. 4) {
		f.personMaleMiddleName();
	}
	foreach(i; 0 .. 4) {
		f.personMalePrefix();
	}
	foreach(i; 0 .. 4) {
		f.personMiddleName();
	}
	foreach(i; 0 .. 4) {
		f.personName();
	}
	foreach(i; 0 .. 4) {
		f.personPrefix();
	}
	foreach(i; 0 .. 4) {
		f.personSex();
	}
	foreach(i; 0 .. 4) {
		f.personSuffix();
	}
	foreach(i; 0 .. 4) {
		f.personTitleDescriptor();
	}
	foreach(i; 0 .. 4) {
		f.personTitleJob();
	}
	foreach(i; 0 .. 4) {
		f.personTitleLevel();
	}
	foreach(i; 0 .. 4) {
		f.personWesternZodiacSign();
	}
	foreach(i; 0 .. 4) {
		f.phoneNumber();
	}
	foreach(i; 0 .. 4) {
		f.phoneNumberFormats();
	}
	foreach(i; 0 .. 4) {
		f.scienceChemicalElement();
	}
	foreach(i; 0 .. 4) {
		f.scienceUnit();
	}
	foreach(i; 0 .. 4) {
		f.systemDirectoryPaths();
	}
	foreach(i; 0 .. 4) {
		f.teamCreature();
	}
	foreach(i; 0 .. 4) {
		f.teamName();
	}
	foreach(i; 0 .. 4) {
		f.vehicleBicycleType();
	}
	foreach(i; 0 .. 4) {
		f.vehicleFuel();
	}
	foreach(i; 0 .. 4) {
		f.vehicleManufacturer();
	}
	foreach(i; 0 .. 4) {
		f.vehicleModel();
	}
	foreach(i; 0 .. 4) {
		f.vehicleType();
	}
	foreach(i; 0 .. 4) {
		f.wordAdjective();
	}
	foreach(i; 0 .. 4) {
		f.wordAdverb();
	}
	foreach(i; 0 .. 4) {
		f.wordConjunction();
	}
	foreach(i; 0 .. 4) {
		f.wordInterjection();
	}
	foreach(i; 0 .. 4) {
		f.wordNoun();
	}
	foreach(i; 0 .. 4) {
		f.wordPreposition();
	}
	foreach(i; 0 .. 4) {
		f.wordVerb();
	}
}

unittest {
	auto f = new Faker_pt_pt(13);

	foreach(i; 0 .. 4) {
		f.airlineAirline();
	}
	foreach(i; 0 .. 4) {
		f.airlineAirplane();
	}
	foreach(i; 0 .. 4) {
		f.airlineAirport();
	}
	foreach(i; 0 .. 4) {
		f.animalBear();
	}
	foreach(i; 0 .. 4) {
		f.animalBird();
	}
	foreach(i; 0 .. 4) {
		f.animalCat();
	}
	foreach(i; 0 .. 4) {
		f.animalCetacean();
	}
	foreach(i; 0 .. 4) {
		f.animalCow();
	}
	foreach(i; 0 .. 4) {
		f.animalCrocodilia();
	}
	foreach(i; 0 .. 4) {
		f.animalDog();
	}
	foreach(i; 0 .. 4) {
		f.animalFish();
	}
	foreach(i; 0 .. 4) {
		f.animalHorse();
	}
	foreach(i; 0 .. 4) {
		f.animalInsect();
	}
	foreach(i; 0 .. 4) {
		f.animalLion();
	}
	foreach(i; 0 .. 4) {
		f.animalRabbit();
	}
	foreach(i; 0 .. 4) {
		f.animalRodent();
	}
	foreach(i; 0 .. 4) {
		f.animalSnake();
	}
	foreach(i; 0 .. 4) {
		f.appAuthor();
	}
	foreach(i; 0 .. 4) {
		f.appName();
	}
	foreach(i; 0 .. 4) {
		f.appVersion();
	}
	foreach(i; 0 .. 4) {
		f.cellPhoneFormats();
	}
	foreach(i; 0 .. 4) {
		f.commerceDepartment();
	}
	foreach(i; 0 .. 4) {
		f.commerceProductDescription();
	}
	foreach(i; 0 .. 4) {
		f.commerceProductNameAdjective();
	}
	foreach(i; 0 .. 4) {
		f.commerceProductNameMaterial();
	}
	foreach(i; 0 .. 4) {
		f.commerceProductNameProduct();
	}
	foreach(i; 0 .. 4) {
		f.companyAdjective();
	}
	foreach(i; 0 .. 4) {
		f.companyBuzzAdjective();
	}
	foreach(i; 0 .. 4) {
		f.companyBuzzNoun();
	}
	foreach(i; 0 .. 4) {
		f.companyBuzzVerb();
	}
	foreach(i; 0 .. 4) {
		f.companyCatchPhrase();
	}
	foreach(i; 0 .. 4) {
		f.companyDescriptor();
	}
	foreach(i; 0 .. 4) {
		f.companyName();
	}
	foreach(i; 0 .. 4) {
		f.companyNamePattern();
	}
	foreach(i; 0 .. 4) {
		f.companyNoun();
	}
	foreach(i; 0 .. 4) {
		f.companySuffix();
	}
	foreach(i; 0 .. 4) {
		f.databaseCollation();
	}
	foreach(i; 0 .. 4) {
		f.databaseColumn();
	}
	foreach(i; 0 .. 4) {
		f.databaseEngine();
	}
	foreach(i; 0 .. 4) {
		f.databaseType();
	}
	foreach(i; 0 .. 4) {
		f.dateMonthAbbr();
	}
	foreach(i; 0 .. 4) {
		f.dateMonthWide();
	}
	foreach(i; 0 .. 4) {
		f.dateWeekdayAbbr();
	}
	foreach(i; 0 .. 4) {
		f.dateWeekdayWide();
	}
	foreach(i; 0 .. 4) {
		f.financeAccountType();
	}
	foreach(i; 0 .. 4) {
		f.financeCreditCardAmericanExpress();
	}
	foreach(i; 0 .. 4) {
		f.financeCreditCardDinersClub();
	}
	foreach(i; 0 .. 4) {
		f.financeCreditCardDiscover();
	}
	foreach(i; 0 .. 4) {
		f.financeCreditCardJcb();
	}
	foreach(i; 0 .. 4) {
		f.financeCreditCardMaestro();
	}
	foreach(i; 0 .. 4) {
		f.financeCreditCardMastercard();
	}
	foreach(i; 0 .. 4) {
		f.financeCreditCardVisa();
	}
	foreach(i; 0 .. 4) {
		f.financeCurrency();
	}
	foreach(i; 0 .. 4) {
		f.financeTransactionType();
	}
	foreach(i; 0 .. 4) {
		f.hackerAbbreviation();
	}
	foreach(i; 0 .. 4) {
		f.hackerAdjective();
	}
	foreach(i; 0 .. 4) {
		f.hackerIngverb();
	}
	foreach(i; 0 .. 4) {
		f.hackerNoun();
	}
	foreach(i; 0 .. 4) {
		f.hackerPhrase();
	}
	foreach(i; 0 .. 4) {
		f.hackerVerb();
	}
	foreach(i; 0 .. 4) {
		f.internetDomainSuffix();
	}
	foreach(i; 0 .. 4) {
		f.internetEmoji();
	}
	foreach(i; 0 .. 4) {
		f.internetEmojiActivity();
	}
	foreach(i; 0 .. 4) {
		f.internetEmojiBody();
	}
	foreach(i; 0 .. 4) {
		f.internetEmojiFlag();
	}
	foreach(i; 0 .. 4) {
		f.internetEmojiFood();
	}
	foreach(i; 0 .. 4) {
		f.internetEmojiNature();
	}
	foreach(i; 0 .. 4) {
		f.internetEmojiObject();
	}
	foreach(i; 0 .. 4) {
		f.internetEmojiPerson();
	}
	foreach(i; 0 .. 4) {
		f.internetEmojiSmiley();
	}
	foreach(i; 0 .. 4) {
		f.internetEmojiSymbol();
	}
	foreach(i; 0 .. 4) {
		f.internetEmojiTravel();
	}
	foreach(i; 0 .. 4) {
		f.internetExampleEmail();
	}
	foreach(i; 0 .. 4) {
		f.internetFreeEmail();
	}
	foreach(i; 0 .. 4) {
		f.locationBuildingNumber();
	}
	foreach(i; 0 .. 4) {
		f.locationCity();
	}
	foreach(i; 0 .. 4) {
		f.locationCityName();
	}
	foreach(i; 0 .. 4) {
		f.locationCityPattern();
	}
	foreach(i; 0 .. 4) {
		f.locationCityPrefix();
	}
	foreach(i; 0 .. 4) {
		f.locationCitySuffix();
	}
	foreach(i; 0 .. 4) {
		f.locationCountry();
	}
	foreach(i; 0 .. 4) {
		f.locationCounty();
	}
	foreach(i; 0 .. 4) {
		f.locationDefaultCountry();
	}
	foreach(i; 0 .. 4) {
		f.locationDirection();
	}
	foreach(i; 0 .. 4) {
		f.locationDirectionAbbr();
	}
	foreach(i; 0 .. 4) {
		f.locationPostcode();
	}
	foreach(i; 0 .. 4) {
		f.locationSecondaryAddress();
	}
	foreach(i; 0 .. 4) {
		f.locationState();
	}
	foreach(i; 0 .. 4) {
		f.locationStateAbbr();
	}
	foreach(i; 0 .. 4) {
		f.locationStreetAddress();
	}
	foreach(i; 0 .. 4) {
		f.locationStreetName();
	}
	foreach(i; 0 .. 4) {
		f.locationStreetPattern();
	}
	foreach(i; 0 .. 4) {
		f.locationStreetSuffix();
	}
	foreach(i; 0 .. 4) {
		f.locationTimeZone();
	}
	foreach(i; 0 .. 4) {
		f.loremParagraph();
	}
	foreach(i; 0 .. 4) {
		f.loremParagraphs();
	}
	foreach(i; 0 .. 4) {
		f.loremSentance();
	}
	foreach(i; 0 .. 4) {
		f.loremSentances();
	}
	foreach(i; 0 .. 4) {
		f.loremText();
	}
	foreach(i; 0 .. 4) {
		f.loremWords();
	}
	foreach(i; 0 .. 4) {
		f.musicGenre();
	}
	foreach(i; 0 .. 4) {
		f.musicSongName();
	}
	foreach(i; 0 .. 4) {
		f.personBioPart();
	}
	foreach(i; 0 .. 4) {
		f.personBioPattern();
	}
	foreach(i; 0 .. 4) {
		f.personBioSupporter();
	}
	foreach(i; 0 .. 4) {
		f.personFemaleFirstName();
	}
	foreach(i; 0 .. 4) {
		f.personFemaleMiddleName();
	}
	foreach(i; 0 .. 4) {
		f.personFemalePrefix();
	}
	foreach(i; 0 .. 4) {
		f.personFirstName();
	}
	foreach(i; 0 .. 4) {
		f.personGender();
	}
	foreach(i; 0 .. 4) {
		f.personJobArea();
	}
	foreach(i; 0 .. 4) {
		f.personJobDescriptor();
	}
	foreach(i; 0 .. 4) {
		f.personJobTitlePattern();
	}
	foreach(i; 0 .. 4) {
		f.personJobType();
	}
	foreach(i; 0 .. 4) {
		f.personLastName();
	}
	foreach(i; 0 .. 4) {
		f.personLastNamePattern();
	}
	foreach(i; 0 .. 4) {
		f.personMaleFirstName();
	}
	foreach(i; 0 .. 4) {
		f.personMaleMiddleName();
	}
	foreach(i; 0 .. 4) {
		f.personMalePrefix();
	}
	foreach(i; 0 .. 4) {
		f.personMiddleName();
	}
	foreach(i; 0 .. 4) {
		f.personName();
	}
	foreach(i; 0 .. 4) {
		f.personPrefix();
	}
	foreach(i; 0 .. 4) {
		f.personSex();
	}
	foreach(i; 0 .. 4) {
		f.personSuffix();
	}
	foreach(i; 0 .. 4) {
		f.personTitleDescriptor();
	}
	foreach(i; 0 .. 4) {
		f.personTitleJob();
	}
	foreach(i; 0 .. 4) {
		f.personTitleLevel();
	}
	foreach(i; 0 .. 4) {
		f.personWesternZodiacSign();
	}
	foreach(i; 0 .. 4) {
		f.phoneNumber();
	}
	foreach(i; 0 .. 4) {
		f.phoneNumberFormats();
	}
	foreach(i; 0 .. 4) {
		f.scienceChemicalElement();
	}
	foreach(i; 0 .. 4) {
		f.scienceUnit();
	}
	foreach(i; 0 .. 4) {
		f.systemDirectoryPaths();
	}
	foreach(i; 0 .. 4) {
		f.teamCreature();
	}
	foreach(i; 0 .. 4) {
		f.teamName();
	}
	foreach(i; 0 .. 4) {
		f.vehicleBicycleType();
	}
	foreach(i; 0 .. 4) {
		f.vehicleFuel();
	}
	foreach(i; 0 .. 4) {
		f.vehicleManufacturer();
	}
	foreach(i; 0 .. 4) {
		f.vehicleModel();
	}
	foreach(i; 0 .. 4) {
		f.vehicleType();
	}
	foreach(i; 0 .. 4) {
		f.wordAdjective();
	}
	foreach(i; 0 .. 4) {
		f.wordAdverb();
	}
	foreach(i; 0 .. 4) {
		f.wordConjunction();
	}
	foreach(i; 0 .. 4) {
		f.wordInterjection();
	}
	foreach(i; 0 .. 4) {
		f.wordNoun();
	}
	foreach(i; 0 .. 4) {
		f.wordPreposition();
	}
	foreach(i; 0 .. 4) {
		f.wordVerb();
	}
}

unittest {
	auto f = new Faker_ro(13);

	foreach(i; 0 .. 4) {
		f.airlineAirline();
	}
	foreach(i; 0 .. 4) {
		f.airlineAirplane();
	}
	foreach(i; 0 .. 4) {
		f.airlineAirport();
	}
	foreach(i; 0 .. 4) {
		f.animalBear();
	}
	foreach(i; 0 .. 4) {
		f.animalBird();
	}
	foreach(i; 0 .. 4) {
		f.animalCat();
	}
	foreach(i; 0 .. 4) {
		f.animalCetacean();
	}
	foreach(i; 0 .. 4) {
		f.animalCow();
	}
	foreach(i; 0 .. 4) {
		f.animalCrocodilia();
	}
	foreach(i; 0 .. 4) {
		f.animalDog();
	}
	foreach(i; 0 .. 4) {
		f.animalFish();
	}
	foreach(i; 0 .. 4) {
		f.animalHorse();
	}
	foreach(i; 0 .. 4) {
		f.animalInsect();
	}
	foreach(i; 0 .. 4) {
		f.animalLion();
	}
	foreach(i; 0 .. 4) {
		f.animalRabbit();
	}
	foreach(i; 0 .. 4) {
		f.animalRodent();
	}
	foreach(i; 0 .. 4) {
		f.animalSnake();
	}
	foreach(i; 0 .. 4) {
		f.appAuthor();
	}
	foreach(i; 0 .. 4) {
		f.appName();
	}
	foreach(i; 0 .. 4) {
		f.appVersion();
	}
	foreach(i; 0 .. 4) {
		f.cellPhoneFormats();
	}
	foreach(i; 0 .. 4) {
		f.commerceDepartment();
	}
	foreach(i; 0 .. 4) {
		f.commerceProductDescription();
	}
	foreach(i; 0 .. 4) {
		f.commerceProductNameAdjective();
	}
	foreach(i; 0 .. 4) {
		f.commerceProductNameMaterial();
	}
	foreach(i; 0 .. 4) {
		f.commerceProductNameProduct();
	}
	foreach(i; 0 .. 4) {
		f.companyAdjective();
	}
	foreach(i; 0 .. 4) {
		f.companyBuzzAdjective();
	}
	foreach(i; 0 .. 4) {
		f.companyBuzzNoun();
	}
	foreach(i; 0 .. 4) {
		f.companyBuzzVerb();
	}
	foreach(i; 0 .. 4) {
		f.companyCatchPhrase();
	}
	foreach(i; 0 .. 4) {
		f.companyDescriptor();
	}
	foreach(i; 0 .. 4) {
		f.companyName();
	}
	foreach(i; 0 .. 4) {
		f.companyNamePattern();
	}
	foreach(i; 0 .. 4) {
		f.companyNoun();
	}
	foreach(i; 0 .. 4) {
		f.companySuffix();
	}
	foreach(i; 0 .. 4) {
		f.databaseCollation();
	}
	foreach(i; 0 .. 4) {
		f.databaseColumn();
	}
	foreach(i; 0 .. 4) {
		f.databaseEngine();
	}
	foreach(i; 0 .. 4) {
		f.databaseType();
	}
	foreach(i; 0 .. 4) {
		f.dateMonthAbbr();
	}
	foreach(i; 0 .. 4) {
		f.dateMonthWide();
	}
	foreach(i; 0 .. 4) {
		f.dateWeekdayAbbr();
	}
	foreach(i; 0 .. 4) {
		f.dateWeekdayWide();
	}
	foreach(i; 0 .. 4) {
		f.financeAccountType();
	}
	foreach(i; 0 .. 4) {
		f.financeCreditCardAmericanExpress();
	}
	foreach(i; 0 .. 4) {
		f.financeCreditCardDinersClub();
	}
	foreach(i; 0 .. 4) {
		f.financeCreditCardDiscover();
	}
	foreach(i; 0 .. 4) {
		f.financeCreditCardJcb();
	}
	foreach(i; 0 .. 4) {
		f.financeCreditCardMaestro();
	}
	foreach(i; 0 .. 4) {
		f.financeCreditCardMastercard();
	}
	foreach(i; 0 .. 4) {
		f.financeCreditCardVisa();
	}
	foreach(i; 0 .. 4) {
		f.financeCurrency();
	}
	foreach(i; 0 .. 4) {
		f.financeTransactionType();
	}
	foreach(i; 0 .. 4) {
		f.hackerAbbreviation();
	}
	foreach(i; 0 .. 4) {
		f.hackerAdjective();
	}
	foreach(i; 0 .. 4) {
		f.hackerIngverb();
	}
	foreach(i; 0 .. 4) {
		f.hackerNoun();
	}
	foreach(i; 0 .. 4) {
		f.hackerPhrase();
	}
	foreach(i; 0 .. 4) {
		f.hackerVerb();
	}
	foreach(i; 0 .. 4) {
		f.internetDomainSuffix();
	}
	foreach(i; 0 .. 4) {
		f.internetEmoji();
	}
	foreach(i; 0 .. 4) {
		f.internetEmojiActivity();
	}
	foreach(i; 0 .. 4) {
		f.internetEmojiBody();
	}
	foreach(i; 0 .. 4) {
		f.internetEmojiFlag();
	}
	foreach(i; 0 .. 4) {
		f.internetEmojiFood();
	}
	foreach(i; 0 .. 4) {
		f.internetEmojiNature();
	}
	foreach(i; 0 .. 4) {
		f.internetEmojiObject();
	}
	foreach(i; 0 .. 4) {
		f.internetEmojiPerson();
	}
	foreach(i; 0 .. 4) {
		f.internetEmojiSmiley();
	}
	foreach(i; 0 .. 4) {
		f.internetEmojiSymbol();
	}
	foreach(i; 0 .. 4) {
		f.internetEmojiTravel();
	}
	foreach(i; 0 .. 4) {
		f.internetExampleEmail();
	}
	foreach(i; 0 .. 4) {
		f.internetFreeEmail();
	}
	foreach(i; 0 .. 4) {
		f.locationBuildingNumber();
	}
	foreach(i; 0 .. 4) {
		f.locationCity();
	}
	foreach(i; 0 .. 4) {
		f.locationCityName();
	}
	foreach(i; 0 .. 4) {
		f.locationCityPattern();
	}
	foreach(i; 0 .. 4) {
		f.locationCityPrefix();
	}
	foreach(i; 0 .. 4) {
		f.locationCitySuffix();
	}
	foreach(i; 0 .. 4) {
		f.locationCountry();
	}
	foreach(i; 0 .. 4) {
		f.locationCounty();
	}
	foreach(i; 0 .. 4) {
		f.locationDefaultCountry();
	}
	foreach(i; 0 .. 4) {
		f.locationDirection();
	}
	foreach(i; 0 .. 4) {
		f.locationDirectionAbbr();
	}
	foreach(i; 0 .. 4) {
		f.locationPostcode();
	}
	foreach(i; 0 .. 4) {
		f.locationSecondaryAddress();
	}
	foreach(i; 0 .. 4) {
		f.locationState();
	}
	foreach(i; 0 .. 4) {
		f.locationStateAbbr();
	}
	foreach(i; 0 .. 4) {
		f.locationStreetAddress();
	}
	foreach(i; 0 .. 4) {
		f.locationStreetName();
	}
	foreach(i; 0 .. 4) {
		f.locationStreetPattern();
	}
	foreach(i; 0 .. 4) {
		f.locationStreetSuffix();
	}
	foreach(i; 0 .. 4) {
		f.locationTimeZone();
	}
	foreach(i; 0 .. 4) {
		f.loremParagraph();
	}
	foreach(i; 0 .. 4) {
		f.loremParagraphs();
	}
	foreach(i; 0 .. 4) {
		f.loremSentance();
	}
	foreach(i; 0 .. 4) {
		f.loremSentances();
	}
	foreach(i; 0 .. 4) {
		f.loremText();
	}
	foreach(i; 0 .. 4) {
		f.loremWords();
	}
	foreach(i; 0 .. 4) {
		f.musicGenre();
	}
	foreach(i; 0 .. 4) {
		f.musicSongName();
	}
	foreach(i; 0 .. 4) {
		f.personBioPart();
	}
	foreach(i; 0 .. 4) {
		f.personBioPattern();
	}
	foreach(i; 0 .. 4) {
		f.personBioSupporter();
	}
	foreach(i; 0 .. 4) {
		f.personFemaleFirstName();
	}
	foreach(i; 0 .. 4) {
		f.personFemaleMiddleName();
	}
	foreach(i; 0 .. 4) {
		f.personFemalePrefix();
	}
	foreach(i; 0 .. 4) {
		f.personFirstName();
	}
	foreach(i; 0 .. 4) {
		f.personGender();
	}
	foreach(i; 0 .. 4) {
		f.personJobArea();
	}
	foreach(i; 0 .. 4) {
		f.personJobDescriptor();
	}
	foreach(i; 0 .. 4) {
		f.personJobTitlePattern();
	}
	foreach(i; 0 .. 4) {
		f.personJobType();
	}
	foreach(i; 0 .. 4) {
		f.personLastName();
	}
	foreach(i; 0 .. 4) {
		f.personLastNamePattern();
	}
	foreach(i; 0 .. 4) {
		f.personMaleFirstName();
	}
	foreach(i; 0 .. 4) {
		f.personMaleMiddleName();
	}
	foreach(i; 0 .. 4) {
		f.personMalePrefix();
	}
	foreach(i; 0 .. 4) {
		f.personMiddleName();
	}
	foreach(i; 0 .. 4) {
		f.personName();
	}
	foreach(i; 0 .. 4) {
		f.personPrefix();
	}
	foreach(i; 0 .. 4) {
		f.personSex();
	}
	foreach(i; 0 .. 4) {
		f.personSuffix();
	}
	foreach(i; 0 .. 4) {
		f.personTitleDescriptor();
	}
	foreach(i; 0 .. 4) {
		f.personTitleJob();
	}
	foreach(i; 0 .. 4) {
		f.personTitleLevel();
	}
	foreach(i; 0 .. 4) {
		f.personWesternZodiacSign();
	}
	foreach(i; 0 .. 4) {
		f.phoneNumber();
	}
	foreach(i; 0 .. 4) {
		f.phoneNumberFormats();
	}
	foreach(i; 0 .. 4) {
		f.scienceChemicalElement();
	}
	foreach(i; 0 .. 4) {
		f.scienceUnit();
	}
	foreach(i; 0 .. 4) {
		f.systemDirectoryPaths();
	}
	foreach(i; 0 .. 4) {
		f.teamCreature();
	}
	foreach(i; 0 .. 4) {
		f.teamName();
	}
	foreach(i; 0 .. 4) {
		f.vehicleBicycleType();
	}
	foreach(i; 0 .. 4) {
		f.vehicleFuel();
	}
	foreach(i; 0 .. 4) {
		f.vehicleManufacturer();
	}
	foreach(i; 0 .. 4) {
		f.vehicleModel();
	}
	foreach(i; 0 .. 4) {
		f.vehicleType();
	}
	foreach(i; 0 .. 4) {
		f.wordAdjective();
	}
	foreach(i; 0 .. 4) {
		f.wordAdverb();
	}
	foreach(i; 0 .. 4) {
		f.wordConjunction();
	}
	foreach(i; 0 .. 4) {
		f.wordInterjection();
	}
	foreach(i; 0 .. 4) {
		f.wordNoun();
	}
	foreach(i; 0 .. 4) {
		f.wordPreposition();
	}
	foreach(i; 0 .. 4) {
		f.wordVerb();
	}
}

unittest {
	auto f = new Faker_ro_md(13);

	foreach(i; 0 .. 4) {
		f.airlineAirline();
	}
	foreach(i; 0 .. 4) {
		f.airlineAirplane();
	}
	foreach(i; 0 .. 4) {
		f.airlineAirport();
	}
	foreach(i; 0 .. 4) {
		f.animalBear();
	}
	foreach(i; 0 .. 4) {
		f.animalBird();
	}
	foreach(i; 0 .. 4) {
		f.animalCat();
	}
	foreach(i; 0 .. 4) {
		f.animalCetacean();
	}
	foreach(i; 0 .. 4) {
		f.animalCow();
	}
	foreach(i; 0 .. 4) {
		f.animalCrocodilia();
	}
	foreach(i; 0 .. 4) {
		f.animalDog();
	}
	foreach(i; 0 .. 4) {
		f.animalFish();
	}
	foreach(i; 0 .. 4) {
		f.animalHorse();
	}
	foreach(i; 0 .. 4) {
		f.animalInsect();
	}
	foreach(i; 0 .. 4) {
		f.animalLion();
	}
	foreach(i; 0 .. 4) {
		f.animalRabbit();
	}
	foreach(i; 0 .. 4) {
		f.animalRodent();
	}
	foreach(i; 0 .. 4) {
		f.animalSnake();
	}
	foreach(i; 0 .. 4) {
		f.appAuthor();
	}
	foreach(i; 0 .. 4) {
		f.appName();
	}
	foreach(i; 0 .. 4) {
		f.appVersion();
	}
	foreach(i; 0 .. 4) {
		f.cellPhoneFormats();
	}
	foreach(i; 0 .. 4) {
		f.commerceDepartment();
	}
	foreach(i; 0 .. 4) {
		f.commerceProductDescription();
	}
	foreach(i; 0 .. 4) {
		f.commerceProductNameAdjective();
	}
	foreach(i; 0 .. 4) {
		f.commerceProductNameMaterial();
	}
	foreach(i; 0 .. 4) {
		f.commerceProductNameProduct();
	}
	foreach(i; 0 .. 4) {
		f.companyAdjective();
	}
	foreach(i; 0 .. 4) {
		f.companyBuzzAdjective();
	}
	foreach(i; 0 .. 4) {
		f.companyBuzzNoun();
	}
	foreach(i; 0 .. 4) {
		f.companyBuzzVerb();
	}
	foreach(i; 0 .. 4) {
		f.companyCatchPhrase();
	}
	foreach(i; 0 .. 4) {
		f.companyDescriptor();
	}
	foreach(i; 0 .. 4) {
		f.companyName();
	}
	foreach(i; 0 .. 4) {
		f.companyNamePattern();
	}
	foreach(i; 0 .. 4) {
		f.companyNoun();
	}
	foreach(i; 0 .. 4) {
		f.companySuffix();
	}
	foreach(i; 0 .. 4) {
		f.databaseCollation();
	}
	foreach(i; 0 .. 4) {
		f.databaseColumn();
	}
	foreach(i; 0 .. 4) {
		f.databaseEngine();
	}
	foreach(i; 0 .. 4) {
		f.databaseType();
	}
	foreach(i; 0 .. 4) {
		f.dateMonthAbbr();
	}
	foreach(i; 0 .. 4) {
		f.dateMonthWide();
	}
	foreach(i; 0 .. 4) {
		f.dateWeekdayAbbr();
	}
	foreach(i; 0 .. 4) {
		f.dateWeekdayWide();
	}
	foreach(i; 0 .. 4) {
		f.financeAccountType();
	}
	foreach(i; 0 .. 4) {
		f.financeCreditCardAmericanExpress();
	}
	foreach(i; 0 .. 4) {
		f.financeCreditCardDinersClub();
	}
	foreach(i; 0 .. 4) {
		f.financeCreditCardDiscover();
	}
	foreach(i; 0 .. 4) {
		f.financeCreditCardJcb();
	}
	foreach(i; 0 .. 4) {
		f.financeCreditCardMaestro();
	}
	foreach(i; 0 .. 4) {
		f.financeCreditCardMastercard();
	}
	foreach(i; 0 .. 4) {
		f.financeCreditCardVisa();
	}
	foreach(i; 0 .. 4) {
		f.financeCurrency();
	}
	foreach(i; 0 .. 4) {
		f.financeTransactionType();
	}
	foreach(i; 0 .. 4) {
		f.hackerAbbreviation();
	}
	foreach(i; 0 .. 4) {
		f.hackerAdjective();
	}
	foreach(i; 0 .. 4) {
		f.hackerIngverb();
	}
	foreach(i; 0 .. 4) {
		f.hackerNoun();
	}
	foreach(i; 0 .. 4) {
		f.hackerPhrase();
	}
	foreach(i; 0 .. 4) {
		f.hackerVerb();
	}
	foreach(i; 0 .. 4) {
		f.internetDomainSuffix();
	}
	foreach(i; 0 .. 4) {
		f.internetEmoji();
	}
	foreach(i; 0 .. 4) {
		f.internetEmojiActivity();
	}
	foreach(i; 0 .. 4) {
		f.internetEmojiBody();
	}
	foreach(i; 0 .. 4) {
		f.internetEmojiFlag();
	}
	foreach(i; 0 .. 4) {
		f.internetEmojiFood();
	}
	foreach(i; 0 .. 4) {
		f.internetEmojiNature();
	}
	foreach(i; 0 .. 4) {
		f.internetEmojiObject();
	}
	foreach(i; 0 .. 4) {
		f.internetEmojiPerson();
	}
	foreach(i; 0 .. 4) {
		f.internetEmojiSmiley();
	}
	foreach(i; 0 .. 4) {
		f.internetEmojiSymbol();
	}
	foreach(i; 0 .. 4) {
		f.internetEmojiTravel();
	}
	foreach(i; 0 .. 4) {
		f.internetExampleEmail();
	}
	foreach(i; 0 .. 4) {
		f.internetFreeEmail();
	}
	foreach(i; 0 .. 4) {
		f.locationBuildingNumber();
	}
	foreach(i; 0 .. 4) {
		f.locationCity();
	}
	foreach(i; 0 .. 4) {
		f.locationCityName();
	}
	foreach(i; 0 .. 4) {
		f.locationCityPattern();
	}
	foreach(i; 0 .. 4) {
		f.locationCityPrefix();
	}
	foreach(i; 0 .. 4) {
		f.locationCitySuffix();
	}
	foreach(i; 0 .. 4) {
		f.locationCountry();
	}
	foreach(i; 0 .. 4) {
		f.locationCounty();
	}
	foreach(i; 0 .. 4) {
		f.locationDefaultCountry();
	}
	foreach(i; 0 .. 4) {
		f.locationDirection();
	}
	foreach(i; 0 .. 4) {
		f.locationDirectionAbbr();
	}
	foreach(i; 0 .. 4) {
		f.locationPostcode();
	}
	foreach(i; 0 .. 4) {
		f.locationSecondaryAddress();
	}
	foreach(i; 0 .. 4) {
		f.locationState();
	}
	foreach(i; 0 .. 4) {
		f.locationStateAbbr();
	}
	foreach(i; 0 .. 4) {
		f.locationStreetAddress();
	}
	foreach(i; 0 .. 4) {
		f.locationStreetName();
	}
	foreach(i; 0 .. 4) {
		f.locationStreetPattern();
	}
	foreach(i; 0 .. 4) {
		f.locationStreetSuffix();
	}
	foreach(i; 0 .. 4) {
		f.locationTimeZone();
	}
	foreach(i; 0 .. 4) {
		f.loremParagraph();
	}
	foreach(i; 0 .. 4) {
		f.loremParagraphs();
	}
	foreach(i; 0 .. 4) {
		f.loremSentance();
	}
	foreach(i; 0 .. 4) {
		f.loremSentances();
	}
	foreach(i; 0 .. 4) {
		f.loremText();
	}
	foreach(i; 0 .. 4) {
		f.loremWords();
	}
	foreach(i; 0 .. 4) {
		f.musicGenre();
	}
	foreach(i; 0 .. 4) {
		f.musicSongName();
	}
	foreach(i; 0 .. 4) {
		f.personBioPart();
	}
	foreach(i; 0 .. 4) {
		f.personBioPattern();
	}
	foreach(i; 0 .. 4) {
		f.personBioSupporter();
	}
	foreach(i; 0 .. 4) {
		f.personFemaleFirstName();
	}
	foreach(i; 0 .. 4) {
		f.personFemaleMiddleName();
	}
	foreach(i; 0 .. 4) {
		f.personFemalePrefix();
	}
	foreach(i; 0 .. 4) {
		f.personFirstName();
	}
	foreach(i; 0 .. 4) {
		f.personGender();
	}
	foreach(i; 0 .. 4) {
		f.personJobArea();
	}
	foreach(i; 0 .. 4) {
		f.personJobDescriptor();
	}
	foreach(i; 0 .. 4) {
		f.personJobTitlePattern();
	}
	foreach(i; 0 .. 4) {
		f.personJobType();
	}
	foreach(i; 0 .. 4) {
		f.personLastName();
	}
	foreach(i; 0 .. 4) {
		f.personLastNamePattern();
	}
	foreach(i; 0 .. 4) {
		f.personMaleFirstName();
	}
	foreach(i; 0 .. 4) {
		f.personMaleMiddleName();
	}
	foreach(i; 0 .. 4) {
		f.personMalePrefix();
	}
	foreach(i; 0 .. 4) {
		f.personMiddleName();
	}
	foreach(i; 0 .. 4) {
		f.personName();
	}
	foreach(i; 0 .. 4) {
		f.personPrefix();
	}
	foreach(i; 0 .. 4) {
		f.personSex();
	}
	foreach(i; 0 .. 4) {
		f.personSuffix();
	}
	foreach(i; 0 .. 4) {
		f.personTitleDescriptor();
	}
	foreach(i; 0 .. 4) {
		f.personTitleJob();
	}
	foreach(i; 0 .. 4) {
		f.personTitleLevel();
	}
	foreach(i; 0 .. 4) {
		f.personWesternZodiacSign();
	}
	foreach(i; 0 .. 4) {
		f.phoneNumber();
	}
	foreach(i; 0 .. 4) {
		f.phoneNumberFormats();
	}
	foreach(i; 0 .. 4) {
		f.scienceChemicalElement();
	}
	foreach(i; 0 .. 4) {
		f.scienceUnit();
	}
	foreach(i; 0 .. 4) {
		f.systemDirectoryPaths();
	}
	foreach(i; 0 .. 4) {
		f.teamCreature();
	}
	foreach(i; 0 .. 4) {
		f.teamName();
	}
	foreach(i; 0 .. 4) {
		f.vehicleBicycleType();
	}
	foreach(i; 0 .. 4) {
		f.vehicleFuel();
	}
	foreach(i; 0 .. 4) {
		f.vehicleManufacturer();
	}
	foreach(i; 0 .. 4) {
		f.vehicleModel();
	}
	foreach(i; 0 .. 4) {
		f.vehicleType();
	}
	foreach(i; 0 .. 4) {
		f.wordAdjective();
	}
	foreach(i; 0 .. 4) {
		f.wordAdverb();
	}
	foreach(i; 0 .. 4) {
		f.wordConjunction();
	}
	foreach(i; 0 .. 4) {
		f.wordInterjection();
	}
	foreach(i; 0 .. 4) {
		f.wordNoun();
	}
	foreach(i; 0 .. 4) {
		f.wordPreposition();
	}
	foreach(i; 0 .. 4) {
		f.wordVerb();
	}
}

unittest {
	auto f = new Faker_ru(13);

	foreach(i; 0 .. 4) {
		f.airlineAirline();
	}
	foreach(i; 0 .. 4) {
		f.airlineAirplane();
	}
	foreach(i; 0 .. 4) {
		f.airlineAirport();
	}
	foreach(i; 0 .. 4) {
		f.animalBear();
	}
	foreach(i; 0 .. 4) {
		f.animalBird();
	}
	foreach(i; 0 .. 4) {
		f.animalCat();
	}
	foreach(i; 0 .. 4) {
		f.animalCetacean();
	}
	foreach(i; 0 .. 4) {
		f.animalCow();
	}
	foreach(i; 0 .. 4) {
		f.animalCrocodilia();
	}
	foreach(i; 0 .. 4) {
		f.animalDog();
	}
	foreach(i; 0 .. 4) {
		f.animalFish();
	}
	foreach(i; 0 .. 4) {
		f.animalHorse();
	}
	foreach(i; 0 .. 4) {
		f.animalInsect();
	}
	foreach(i; 0 .. 4) {
		f.animalLion();
	}
	foreach(i; 0 .. 4) {
		f.animalRabbit();
	}
	foreach(i; 0 .. 4) {
		f.animalRodent();
	}
	foreach(i; 0 .. 4) {
		f.animalSnake();
	}
	foreach(i; 0 .. 4) {
		f.appAuthor();
	}
	foreach(i; 0 .. 4) {
		f.appName();
	}
	foreach(i; 0 .. 4) {
		f.appVersion();
	}
	foreach(i; 0 .. 4) {
		f.cellPhoneFormats();
	}
	foreach(i; 0 .. 4) {
		f.commerceDepartment();
	}
	foreach(i; 0 .. 4) {
		f.commerceProductDescription();
	}
	foreach(i; 0 .. 4) {
		f.commerceProductNameAdjective();
	}
	foreach(i; 0 .. 4) {
		f.commerceProductNameMaterial();
	}
	foreach(i; 0 .. 4) {
		f.commerceProductNameProduct();
	}
	foreach(i; 0 .. 4) {
		f.companyAdjective();
	}
	foreach(i; 0 .. 4) {
		f.companyBuzzAdjective();
	}
	foreach(i; 0 .. 4) {
		f.companyBuzzNoun();
	}
	foreach(i; 0 .. 4) {
		f.companyBuzzVerb();
	}
	foreach(i; 0 .. 4) {
		f.companyCatchPhrase();
	}
	foreach(i; 0 .. 4) {
		f.companyDescriptor();
	}
	foreach(i; 0 .. 4) {
		f.companyName();
	}
	foreach(i; 0 .. 4) {
		f.companyNamePattern();
	}
	foreach(i; 0 .. 4) {
		f.companyNoun();
	}
	foreach(i; 0 .. 4) {
		f.companySuffix();
	}
	foreach(i; 0 .. 4) {
		f.databaseCollation();
	}
	foreach(i; 0 .. 4) {
		f.databaseColumn();
	}
	foreach(i; 0 .. 4) {
		f.databaseEngine();
	}
	foreach(i; 0 .. 4) {
		f.databaseType();
	}
	foreach(i; 0 .. 4) {
		f.dateMonthAbbr();
	}
	foreach(i; 0 .. 4) {
		f.dateMonthWide();
	}
	foreach(i; 0 .. 4) {
		f.dateWeekdayAbbr();
	}
	foreach(i; 0 .. 4) {
		f.dateWeekdayWide();
	}
	foreach(i; 0 .. 4) {
		f.financeAccountType();
	}
	foreach(i; 0 .. 4) {
		f.financeCreditCardAmericanExpress();
	}
	foreach(i; 0 .. 4) {
		f.financeCreditCardDinersClub();
	}
	foreach(i; 0 .. 4) {
		f.financeCreditCardDiscover();
	}
	foreach(i; 0 .. 4) {
		f.financeCreditCardJcb();
	}
	foreach(i; 0 .. 4) {
		f.financeCreditCardMaestro();
	}
	foreach(i; 0 .. 4) {
		f.financeCreditCardMastercard();
	}
	foreach(i; 0 .. 4) {
		f.financeCreditCardVisa();
	}
	foreach(i; 0 .. 4) {
		f.financeCurrency();
	}
	foreach(i; 0 .. 4) {
		f.financeTransactionType();
	}
	foreach(i; 0 .. 4) {
		f.hackerAbbreviation();
	}
	foreach(i; 0 .. 4) {
		f.hackerAdjective();
	}
	foreach(i; 0 .. 4) {
		f.hackerIngverb();
	}
	foreach(i; 0 .. 4) {
		f.hackerNoun();
	}
	foreach(i; 0 .. 4) {
		f.hackerPhrase();
	}
	foreach(i; 0 .. 4) {
		f.hackerVerb();
	}
	foreach(i; 0 .. 4) {
		f.internetDomainSuffix();
	}
	foreach(i; 0 .. 4) {
		f.internetEmoji();
	}
	foreach(i; 0 .. 4) {
		f.internetEmojiActivity();
	}
	foreach(i; 0 .. 4) {
		f.internetEmojiBody();
	}
	foreach(i; 0 .. 4) {
		f.internetEmojiFlag();
	}
	foreach(i; 0 .. 4) {
		f.internetEmojiFood();
	}
	foreach(i; 0 .. 4) {
		f.internetEmojiNature();
	}
	foreach(i; 0 .. 4) {
		f.internetEmojiObject();
	}
	foreach(i; 0 .. 4) {
		f.internetEmojiPerson();
	}
	foreach(i; 0 .. 4) {
		f.internetEmojiSmiley();
	}
	foreach(i; 0 .. 4) {
		f.internetEmojiSymbol();
	}
	foreach(i; 0 .. 4) {
		f.internetEmojiTravel();
	}
	foreach(i; 0 .. 4) {
		f.internetExampleEmail();
	}
	foreach(i; 0 .. 4) {
		f.internetFreeEmail();
	}
	foreach(i; 0 .. 4) {
		f.locationBuildingNumber();
	}
	foreach(i; 0 .. 4) {
		f.locationCity();
	}
	foreach(i; 0 .. 4) {
		f.locationCityName();
	}
	foreach(i; 0 .. 4) {
		f.locationCityPattern();
	}
	foreach(i; 0 .. 4) {
		f.locationCityPrefix();
	}
	foreach(i; 0 .. 4) {
		f.locationCitySuffix();
	}
	foreach(i; 0 .. 4) {
		f.locationCountry();
	}
	foreach(i; 0 .. 4) {
		f.locationCounty();
	}
	foreach(i; 0 .. 4) {
		f.locationDefaultCountry();
	}
	foreach(i; 0 .. 4) {
		f.locationDirection();
	}
	foreach(i; 0 .. 4) {
		f.locationDirectionAbbr();
	}
	foreach(i; 0 .. 4) {
		f.locationPostcode();
	}
	foreach(i; 0 .. 4) {
		f.locationSecondaryAddress();
	}
	foreach(i; 0 .. 4) {
		f.locationState();
	}
	foreach(i; 0 .. 4) {
		f.locationStateAbbr();
	}
	foreach(i; 0 .. 4) {
		f.locationStreetAddress();
	}
	foreach(i; 0 .. 4) {
		f.locationStreetName();
	}
	foreach(i; 0 .. 4) {
		f.locationStreetPattern();
	}
	foreach(i; 0 .. 4) {
		f.locationStreetSuffix();
	}
	foreach(i; 0 .. 4) {
		f.locationTimeZone();
	}
	foreach(i; 0 .. 4) {
		f.loremParagraph();
	}
	foreach(i; 0 .. 4) {
		f.loremParagraphs();
	}
	foreach(i; 0 .. 4) {
		f.loremSentance();
	}
	foreach(i; 0 .. 4) {
		f.loremSentances();
	}
	foreach(i; 0 .. 4) {
		f.loremText();
	}
	foreach(i; 0 .. 4) {
		f.loremWords();
	}
	foreach(i; 0 .. 4) {
		f.musicGenre();
	}
	foreach(i; 0 .. 4) {
		f.musicSongName();
	}
	foreach(i; 0 .. 4) {
		f.personBioPart();
	}
	foreach(i; 0 .. 4) {
		f.personBioPattern();
	}
	foreach(i; 0 .. 4) {
		f.personBioSupporter();
	}
	foreach(i; 0 .. 4) {
		f.personFemaleFirstName();
	}
	foreach(i; 0 .. 4) {
		f.personFemaleMiddleName();
	}
	foreach(i; 0 .. 4) {
		f.personFemalePrefix();
	}
	foreach(i; 0 .. 4) {
		f.personFirstName();
	}
	foreach(i; 0 .. 4) {
		f.personGender();
	}
	foreach(i; 0 .. 4) {
		f.personJobArea();
	}
	foreach(i; 0 .. 4) {
		f.personJobDescriptor();
	}
	foreach(i; 0 .. 4) {
		f.personJobTitlePattern();
	}
	foreach(i; 0 .. 4) {
		f.personJobType();
	}
	foreach(i; 0 .. 4) {
		f.personLastName();
	}
	foreach(i; 0 .. 4) {
		f.personLastNamePattern();
	}
	foreach(i; 0 .. 4) {
		f.personMaleFirstName();
	}
	foreach(i; 0 .. 4) {
		f.personMaleMiddleName();
	}
	foreach(i; 0 .. 4) {
		f.personMalePrefix();
	}
	foreach(i; 0 .. 4) {
		f.personMiddleName();
	}
	foreach(i; 0 .. 4) {
		f.personName();
	}
	foreach(i; 0 .. 4) {
		f.personPrefix();
	}
	foreach(i; 0 .. 4) {
		f.personSex();
	}
	foreach(i; 0 .. 4) {
		f.personSuffix();
	}
	foreach(i; 0 .. 4) {
		f.personTitleDescriptor();
	}
	foreach(i; 0 .. 4) {
		f.personTitleJob();
	}
	foreach(i; 0 .. 4) {
		f.personTitleLevel();
	}
	foreach(i; 0 .. 4) {
		f.personWesternZodiacSign();
	}
	foreach(i; 0 .. 4) {
		f.phoneNumber();
	}
	foreach(i; 0 .. 4) {
		f.phoneNumberFormats();
	}
	foreach(i; 0 .. 4) {
		f.scienceChemicalElement();
	}
	foreach(i; 0 .. 4) {
		f.scienceUnit();
	}
	foreach(i; 0 .. 4) {
		f.systemDirectoryPaths();
	}
	foreach(i; 0 .. 4) {
		f.teamCreature();
	}
	foreach(i; 0 .. 4) {
		f.teamName();
	}
	foreach(i; 0 .. 4) {
		f.vehicleBicycleType();
	}
	foreach(i; 0 .. 4) {
		f.vehicleFuel();
	}
	foreach(i; 0 .. 4) {
		f.vehicleManufacturer();
	}
	foreach(i; 0 .. 4) {
		f.vehicleModel();
	}
	foreach(i; 0 .. 4) {
		f.vehicleType();
	}
	foreach(i; 0 .. 4) {
		f.wordAdjective();
	}
	foreach(i; 0 .. 4) {
		f.wordAdverb();
	}
	foreach(i; 0 .. 4) {
		f.wordConjunction();
	}
	foreach(i; 0 .. 4) {
		f.wordInterjection();
	}
	foreach(i; 0 .. 4) {
		f.wordNoun();
	}
	foreach(i; 0 .. 4) {
		f.wordPreposition();
	}
	foreach(i; 0 .. 4) {
		f.wordVerb();
	}
}

unittest {
	auto f = new Faker_sk(13);

	foreach(i; 0 .. 4) {
		f.airlineAirline();
	}
	foreach(i; 0 .. 4) {
		f.airlineAirplane();
	}
	foreach(i; 0 .. 4) {
		f.airlineAirport();
	}
	foreach(i; 0 .. 4) {
		f.animalBear();
	}
	foreach(i; 0 .. 4) {
		f.animalBird();
	}
	foreach(i; 0 .. 4) {
		f.animalCat();
	}
	foreach(i; 0 .. 4) {
		f.animalCetacean();
	}
	foreach(i; 0 .. 4) {
		f.animalCow();
	}
	foreach(i; 0 .. 4) {
		f.animalCrocodilia();
	}
	foreach(i; 0 .. 4) {
		f.animalDog();
	}
	foreach(i; 0 .. 4) {
		f.animalFish();
	}
	foreach(i; 0 .. 4) {
		f.animalHorse();
	}
	foreach(i; 0 .. 4) {
		f.animalInsect();
	}
	foreach(i; 0 .. 4) {
		f.animalLion();
	}
	foreach(i; 0 .. 4) {
		f.animalRabbit();
	}
	foreach(i; 0 .. 4) {
		f.animalRodent();
	}
	foreach(i; 0 .. 4) {
		f.animalSnake();
	}
	foreach(i; 0 .. 4) {
		f.appAuthor();
	}
	foreach(i; 0 .. 4) {
		f.appName();
	}
	foreach(i; 0 .. 4) {
		f.appVersion();
	}
	foreach(i; 0 .. 4) {
		f.cellPhoneFormats();
	}
	foreach(i; 0 .. 4) {
		f.commerceDepartment();
	}
	foreach(i; 0 .. 4) {
		f.commerceProductDescription();
	}
	foreach(i; 0 .. 4) {
		f.commerceProductNameAdjective();
	}
	foreach(i; 0 .. 4) {
		f.commerceProductNameMaterial();
	}
	foreach(i; 0 .. 4) {
		f.commerceProductNameProduct();
	}
	foreach(i; 0 .. 4) {
		f.companyAdjective();
	}
	foreach(i; 0 .. 4) {
		f.companyBuzzAdjective();
	}
	foreach(i; 0 .. 4) {
		f.companyBuzzNoun();
	}
	foreach(i; 0 .. 4) {
		f.companyBuzzVerb();
	}
	foreach(i; 0 .. 4) {
		f.companyCatchPhrase();
	}
	foreach(i; 0 .. 4) {
		f.companyDescriptor();
	}
	foreach(i; 0 .. 4) {
		f.companyName();
	}
	foreach(i; 0 .. 4) {
		f.companyNamePattern();
	}
	foreach(i; 0 .. 4) {
		f.companyNoun();
	}
	foreach(i; 0 .. 4) {
		f.companySuffix();
	}
	foreach(i; 0 .. 4) {
		f.databaseCollation();
	}
	foreach(i; 0 .. 4) {
		f.databaseColumn();
	}
	foreach(i; 0 .. 4) {
		f.databaseEngine();
	}
	foreach(i; 0 .. 4) {
		f.databaseType();
	}
	foreach(i; 0 .. 4) {
		f.dateMonthAbbr();
	}
	foreach(i; 0 .. 4) {
		f.dateMonthWide();
	}
	foreach(i; 0 .. 4) {
		f.dateWeekdayAbbr();
	}
	foreach(i; 0 .. 4) {
		f.dateWeekdayWide();
	}
	foreach(i; 0 .. 4) {
		f.financeAccountType();
	}
	foreach(i; 0 .. 4) {
		f.financeCreditCardAmericanExpress();
	}
	foreach(i; 0 .. 4) {
		f.financeCreditCardDinersClub();
	}
	foreach(i; 0 .. 4) {
		f.financeCreditCardDiscover();
	}
	foreach(i; 0 .. 4) {
		f.financeCreditCardJcb();
	}
	foreach(i; 0 .. 4) {
		f.financeCreditCardMaestro();
	}
	foreach(i; 0 .. 4) {
		f.financeCreditCardMastercard();
	}
	foreach(i; 0 .. 4) {
		f.financeCreditCardVisa();
	}
	foreach(i; 0 .. 4) {
		f.financeCurrency();
	}
	foreach(i; 0 .. 4) {
		f.financeTransactionType();
	}
	foreach(i; 0 .. 4) {
		f.hackerAbbreviation();
	}
	foreach(i; 0 .. 4) {
		f.hackerAdjective();
	}
	foreach(i; 0 .. 4) {
		f.hackerIngverb();
	}
	foreach(i; 0 .. 4) {
		f.hackerNoun();
	}
	foreach(i; 0 .. 4) {
		f.hackerPhrase();
	}
	foreach(i; 0 .. 4) {
		f.hackerVerb();
	}
	foreach(i; 0 .. 4) {
		f.internetDomainSuffix();
	}
	foreach(i; 0 .. 4) {
		f.internetEmoji();
	}
	foreach(i; 0 .. 4) {
		f.internetEmojiActivity();
	}
	foreach(i; 0 .. 4) {
		f.internetEmojiBody();
	}
	foreach(i; 0 .. 4) {
		f.internetEmojiFlag();
	}
	foreach(i; 0 .. 4) {
		f.internetEmojiFood();
	}
	foreach(i; 0 .. 4) {
		f.internetEmojiNature();
	}
	foreach(i; 0 .. 4) {
		f.internetEmojiObject();
	}
	foreach(i; 0 .. 4) {
		f.internetEmojiPerson();
	}
	foreach(i; 0 .. 4) {
		f.internetEmojiSmiley();
	}
	foreach(i; 0 .. 4) {
		f.internetEmojiSymbol();
	}
	foreach(i; 0 .. 4) {
		f.internetEmojiTravel();
	}
	foreach(i; 0 .. 4) {
		f.internetExampleEmail();
	}
	foreach(i; 0 .. 4) {
		f.internetFreeEmail();
	}
	foreach(i; 0 .. 4) {
		f.locationBuildingNumber();
	}
	foreach(i; 0 .. 4) {
		f.locationCity();
	}
	foreach(i; 0 .. 4) {
		f.locationCityName();
	}
	foreach(i; 0 .. 4) {
		f.locationCityPattern();
	}
	foreach(i; 0 .. 4) {
		f.locationCityPrefix();
	}
	foreach(i; 0 .. 4) {
		f.locationCitySuffix();
	}
	foreach(i; 0 .. 4) {
		f.locationCountry();
	}
	foreach(i; 0 .. 4) {
		f.locationCounty();
	}
	foreach(i; 0 .. 4) {
		f.locationDefaultCountry();
	}
	foreach(i; 0 .. 4) {
		f.locationDirection();
	}
	foreach(i; 0 .. 4) {
		f.locationDirectionAbbr();
	}
	foreach(i; 0 .. 4) {
		f.locationPostcode();
	}
	foreach(i; 0 .. 4) {
		f.locationSecondaryAddress();
	}
	foreach(i; 0 .. 4) {
		f.locationState();
	}
	foreach(i; 0 .. 4) {
		f.locationStateAbbr();
	}
	foreach(i; 0 .. 4) {
		f.locationStreetAddress();
	}
	foreach(i; 0 .. 4) {
		f.locationStreetName();
	}
	foreach(i; 0 .. 4) {
		f.locationStreetPattern();
	}
	foreach(i; 0 .. 4) {
		f.locationStreetSuffix();
	}
	foreach(i; 0 .. 4) {
		f.locationTimeZone();
	}
	foreach(i; 0 .. 4) {
		f.loremParagraph();
	}
	foreach(i; 0 .. 4) {
		f.loremParagraphs();
	}
	foreach(i; 0 .. 4) {
		f.loremSentance();
	}
	foreach(i; 0 .. 4) {
		f.loremSentances();
	}
	foreach(i; 0 .. 4) {
		f.loremText();
	}
	foreach(i; 0 .. 4) {
		f.loremWords();
	}
	foreach(i; 0 .. 4) {
		f.musicGenre();
	}
	foreach(i; 0 .. 4) {
		f.musicSongName();
	}
	foreach(i; 0 .. 4) {
		f.personBioPart();
	}
	foreach(i; 0 .. 4) {
		f.personBioPattern();
	}
	foreach(i; 0 .. 4) {
		f.personBioSupporter();
	}
	foreach(i; 0 .. 4) {
		f.personFemaleFirstName();
	}
	foreach(i; 0 .. 4) {
		f.personFemaleMiddleName();
	}
	foreach(i; 0 .. 4) {
		f.personFemalePrefix();
	}
	foreach(i; 0 .. 4) {
		f.personFirstName();
	}
	foreach(i; 0 .. 4) {
		f.personGender();
	}
	foreach(i; 0 .. 4) {
		f.personJobArea();
	}
	foreach(i; 0 .. 4) {
		f.personJobDescriptor();
	}
	foreach(i; 0 .. 4) {
		f.personJobTitlePattern();
	}
	foreach(i; 0 .. 4) {
		f.personJobType();
	}
	foreach(i; 0 .. 4) {
		f.personLastName();
	}
	foreach(i; 0 .. 4) {
		f.personLastNamePattern();
	}
	foreach(i; 0 .. 4) {
		f.personMaleFirstName();
	}
	foreach(i; 0 .. 4) {
		f.personMaleMiddleName();
	}
	foreach(i; 0 .. 4) {
		f.personMalePrefix();
	}
	foreach(i; 0 .. 4) {
		f.personMiddleName();
	}
	foreach(i; 0 .. 4) {
		f.personName();
	}
	foreach(i; 0 .. 4) {
		f.personPrefix();
	}
	foreach(i; 0 .. 4) {
		f.personSex();
	}
	foreach(i; 0 .. 4) {
		f.personSuffix();
	}
	foreach(i; 0 .. 4) {
		f.personTitleDescriptor();
	}
	foreach(i; 0 .. 4) {
		f.personTitleJob();
	}
	foreach(i; 0 .. 4) {
		f.personTitleLevel();
	}
	foreach(i; 0 .. 4) {
		f.personWesternZodiacSign();
	}
	foreach(i; 0 .. 4) {
		f.phoneNumber();
	}
	foreach(i; 0 .. 4) {
		f.phoneNumberFormats();
	}
	foreach(i; 0 .. 4) {
		f.scienceChemicalElement();
	}
	foreach(i; 0 .. 4) {
		f.scienceUnit();
	}
	foreach(i; 0 .. 4) {
		f.systemDirectoryPaths();
	}
	foreach(i; 0 .. 4) {
		f.teamCreature();
	}
	foreach(i; 0 .. 4) {
		f.teamName();
	}
	foreach(i; 0 .. 4) {
		f.vehicleBicycleType();
	}
	foreach(i; 0 .. 4) {
		f.vehicleFuel();
	}
	foreach(i; 0 .. 4) {
		f.vehicleManufacturer();
	}
	foreach(i; 0 .. 4) {
		f.vehicleModel();
	}
	foreach(i; 0 .. 4) {
		f.vehicleType();
	}
	foreach(i; 0 .. 4) {
		f.wordAdjective();
	}
	foreach(i; 0 .. 4) {
		f.wordAdverb();
	}
	foreach(i; 0 .. 4) {
		f.wordConjunction();
	}
	foreach(i; 0 .. 4) {
		f.wordInterjection();
	}
	foreach(i; 0 .. 4) {
		f.wordNoun();
	}
	foreach(i; 0 .. 4) {
		f.wordPreposition();
	}
	foreach(i; 0 .. 4) {
		f.wordVerb();
	}
}

unittest {
	auto f = new Faker_sr_rs_latin(13);

	foreach(i; 0 .. 4) {
		f.airlineAirline();
	}
	foreach(i; 0 .. 4) {
		f.airlineAirplane();
	}
	foreach(i; 0 .. 4) {
		f.airlineAirport();
	}
	foreach(i; 0 .. 4) {
		f.animalBear();
	}
	foreach(i; 0 .. 4) {
		f.animalBird();
	}
	foreach(i; 0 .. 4) {
		f.animalCat();
	}
	foreach(i; 0 .. 4) {
		f.animalCetacean();
	}
	foreach(i; 0 .. 4) {
		f.animalCow();
	}
	foreach(i; 0 .. 4) {
		f.animalCrocodilia();
	}
	foreach(i; 0 .. 4) {
		f.animalDog();
	}
	foreach(i; 0 .. 4) {
		f.animalFish();
	}
	foreach(i; 0 .. 4) {
		f.animalHorse();
	}
	foreach(i; 0 .. 4) {
		f.animalInsect();
	}
	foreach(i; 0 .. 4) {
		f.animalLion();
	}
	foreach(i; 0 .. 4) {
		f.animalRabbit();
	}
	foreach(i; 0 .. 4) {
		f.animalRodent();
	}
	foreach(i; 0 .. 4) {
		f.animalSnake();
	}
	foreach(i; 0 .. 4) {
		f.appAuthor();
	}
	foreach(i; 0 .. 4) {
		f.appName();
	}
	foreach(i; 0 .. 4) {
		f.appVersion();
	}
	foreach(i; 0 .. 4) {
		f.cellPhoneFormats();
	}
	foreach(i; 0 .. 4) {
		f.commerceDepartment();
	}
	foreach(i; 0 .. 4) {
		f.commerceProductDescription();
	}
	foreach(i; 0 .. 4) {
		f.commerceProductNameAdjective();
	}
	foreach(i; 0 .. 4) {
		f.commerceProductNameMaterial();
	}
	foreach(i; 0 .. 4) {
		f.commerceProductNameProduct();
	}
	foreach(i; 0 .. 4) {
		f.companyAdjective();
	}
	foreach(i; 0 .. 4) {
		f.companyBuzzAdjective();
	}
	foreach(i; 0 .. 4) {
		f.companyBuzzNoun();
	}
	foreach(i; 0 .. 4) {
		f.companyBuzzVerb();
	}
	foreach(i; 0 .. 4) {
		f.companyCatchPhrase();
	}
	foreach(i; 0 .. 4) {
		f.companyDescriptor();
	}
	foreach(i; 0 .. 4) {
		f.companyName();
	}
	foreach(i; 0 .. 4) {
		f.companyNamePattern();
	}
	foreach(i; 0 .. 4) {
		f.companyNoun();
	}
	foreach(i; 0 .. 4) {
		f.companySuffix();
	}
	foreach(i; 0 .. 4) {
		f.databaseCollation();
	}
	foreach(i; 0 .. 4) {
		f.databaseColumn();
	}
	foreach(i; 0 .. 4) {
		f.databaseEngine();
	}
	foreach(i; 0 .. 4) {
		f.databaseType();
	}
	foreach(i; 0 .. 4) {
		f.dateMonthAbbr();
	}
	foreach(i; 0 .. 4) {
		f.dateMonthWide();
	}
	foreach(i; 0 .. 4) {
		f.dateWeekdayAbbr();
	}
	foreach(i; 0 .. 4) {
		f.dateWeekdayWide();
	}
	foreach(i; 0 .. 4) {
		f.financeAccountType();
	}
	foreach(i; 0 .. 4) {
		f.financeCreditCardAmericanExpress();
	}
	foreach(i; 0 .. 4) {
		f.financeCreditCardDinersClub();
	}
	foreach(i; 0 .. 4) {
		f.financeCreditCardDiscover();
	}
	foreach(i; 0 .. 4) {
		f.financeCreditCardJcb();
	}
	foreach(i; 0 .. 4) {
		f.financeCreditCardMaestro();
	}
	foreach(i; 0 .. 4) {
		f.financeCreditCardMastercard();
	}
	foreach(i; 0 .. 4) {
		f.financeCreditCardVisa();
	}
	foreach(i; 0 .. 4) {
		f.financeCurrency();
	}
	foreach(i; 0 .. 4) {
		f.financeTransactionType();
	}
	foreach(i; 0 .. 4) {
		f.hackerAbbreviation();
	}
	foreach(i; 0 .. 4) {
		f.hackerAdjective();
	}
	foreach(i; 0 .. 4) {
		f.hackerIngverb();
	}
	foreach(i; 0 .. 4) {
		f.hackerNoun();
	}
	foreach(i; 0 .. 4) {
		f.hackerPhrase();
	}
	foreach(i; 0 .. 4) {
		f.hackerVerb();
	}
	foreach(i; 0 .. 4) {
		f.internetDomainSuffix();
	}
	foreach(i; 0 .. 4) {
		f.internetEmoji();
	}
	foreach(i; 0 .. 4) {
		f.internetEmojiActivity();
	}
	foreach(i; 0 .. 4) {
		f.internetEmojiBody();
	}
	foreach(i; 0 .. 4) {
		f.internetEmojiFlag();
	}
	foreach(i; 0 .. 4) {
		f.internetEmojiFood();
	}
	foreach(i; 0 .. 4) {
		f.internetEmojiNature();
	}
	foreach(i; 0 .. 4) {
		f.internetEmojiObject();
	}
	foreach(i; 0 .. 4) {
		f.internetEmojiPerson();
	}
	foreach(i; 0 .. 4) {
		f.internetEmojiSmiley();
	}
	foreach(i; 0 .. 4) {
		f.internetEmojiSymbol();
	}
	foreach(i; 0 .. 4) {
		f.internetEmojiTravel();
	}
	foreach(i; 0 .. 4) {
		f.internetExampleEmail();
	}
	foreach(i; 0 .. 4) {
		f.internetFreeEmail();
	}
	foreach(i; 0 .. 4) {
		f.locationBuildingNumber();
	}
	foreach(i; 0 .. 4) {
		f.locationCity();
	}
	foreach(i; 0 .. 4) {
		f.locationCityName();
	}
	foreach(i; 0 .. 4) {
		f.locationCityPattern();
	}
	foreach(i; 0 .. 4) {
		f.locationCityPrefix();
	}
	foreach(i; 0 .. 4) {
		f.locationCitySuffix();
	}
	foreach(i; 0 .. 4) {
		f.locationCountry();
	}
	foreach(i; 0 .. 4) {
		f.locationCounty();
	}
	foreach(i; 0 .. 4) {
		f.locationDefaultCountry();
	}
	foreach(i; 0 .. 4) {
		f.locationDirection();
	}
	foreach(i; 0 .. 4) {
		f.locationDirectionAbbr();
	}
	foreach(i; 0 .. 4) {
		f.locationPostcode();
	}
	foreach(i; 0 .. 4) {
		f.locationSecondaryAddress();
	}
	foreach(i; 0 .. 4) {
		f.locationState();
	}
	foreach(i; 0 .. 4) {
		f.locationStateAbbr();
	}
	foreach(i; 0 .. 4) {
		f.locationStreetAddress();
	}
	foreach(i; 0 .. 4) {
		f.locationStreetName();
	}
	foreach(i; 0 .. 4) {
		f.locationStreetPattern();
	}
	foreach(i; 0 .. 4) {
		f.locationStreetSuffix();
	}
	foreach(i; 0 .. 4) {
		f.locationTimeZone();
	}
	foreach(i; 0 .. 4) {
		f.loremParagraph();
	}
	foreach(i; 0 .. 4) {
		f.loremParagraphs();
	}
	foreach(i; 0 .. 4) {
		f.loremSentance();
	}
	foreach(i; 0 .. 4) {
		f.loremSentances();
	}
	foreach(i; 0 .. 4) {
		f.loremText();
	}
	foreach(i; 0 .. 4) {
		f.loremWords();
	}
	foreach(i; 0 .. 4) {
		f.musicGenre();
	}
	foreach(i; 0 .. 4) {
		f.musicSongName();
	}
	foreach(i; 0 .. 4) {
		f.personBioPart();
	}
	foreach(i; 0 .. 4) {
		f.personBioPattern();
	}
	foreach(i; 0 .. 4) {
		f.personBioSupporter();
	}
	foreach(i; 0 .. 4) {
		f.personFemaleFirstName();
	}
	foreach(i; 0 .. 4) {
		f.personFemaleMiddleName();
	}
	foreach(i; 0 .. 4) {
		f.personFemalePrefix();
	}
	foreach(i; 0 .. 4) {
		f.personFirstName();
	}
	foreach(i; 0 .. 4) {
		f.personGender();
	}
	foreach(i; 0 .. 4) {
		f.personJobArea();
	}
	foreach(i; 0 .. 4) {
		f.personJobDescriptor();
	}
	foreach(i; 0 .. 4) {
		f.personJobTitlePattern();
	}
	foreach(i; 0 .. 4) {
		f.personJobType();
	}
	foreach(i; 0 .. 4) {
		f.personLastName();
	}
	foreach(i; 0 .. 4) {
		f.personLastNamePattern();
	}
	foreach(i; 0 .. 4) {
		f.personMaleFirstName();
	}
	foreach(i; 0 .. 4) {
		f.personMaleMiddleName();
	}
	foreach(i; 0 .. 4) {
		f.personMalePrefix();
	}
	foreach(i; 0 .. 4) {
		f.personMiddleName();
	}
	foreach(i; 0 .. 4) {
		f.personName();
	}
	foreach(i; 0 .. 4) {
		f.personPrefix();
	}
	foreach(i; 0 .. 4) {
		f.personSex();
	}
	foreach(i; 0 .. 4) {
		f.personSuffix();
	}
	foreach(i; 0 .. 4) {
		f.personTitleDescriptor();
	}
	foreach(i; 0 .. 4) {
		f.personTitleJob();
	}
	foreach(i; 0 .. 4) {
		f.personTitleLevel();
	}
	foreach(i; 0 .. 4) {
		f.personWesternZodiacSign();
	}
	foreach(i; 0 .. 4) {
		f.phoneNumber();
	}
	foreach(i; 0 .. 4) {
		f.phoneNumberFormats();
	}
	foreach(i; 0 .. 4) {
		f.scienceChemicalElement();
	}
	foreach(i; 0 .. 4) {
		f.scienceUnit();
	}
	foreach(i; 0 .. 4) {
		f.systemDirectoryPaths();
	}
	foreach(i; 0 .. 4) {
		f.teamCreature();
	}
	foreach(i; 0 .. 4) {
		f.teamName();
	}
	foreach(i; 0 .. 4) {
		f.vehicleBicycleType();
	}
	foreach(i; 0 .. 4) {
		f.vehicleFuel();
	}
	foreach(i; 0 .. 4) {
		f.vehicleManufacturer();
	}
	foreach(i; 0 .. 4) {
		f.vehicleModel();
	}
	foreach(i; 0 .. 4) {
		f.vehicleType();
	}
	foreach(i; 0 .. 4) {
		f.wordAdjective();
	}
	foreach(i; 0 .. 4) {
		f.wordAdverb();
	}
	foreach(i; 0 .. 4) {
		f.wordConjunction();
	}
	foreach(i; 0 .. 4) {
		f.wordInterjection();
	}
	foreach(i; 0 .. 4) {
		f.wordNoun();
	}
	foreach(i; 0 .. 4) {
		f.wordPreposition();
	}
	foreach(i; 0 .. 4) {
		f.wordVerb();
	}
}

unittest {
	auto f = new Faker_sv(13);

	foreach(i; 0 .. 4) {
		f.airlineAirline();
	}
	foreach(i; 0 .. 4) {
		f.airlineAirplane();
	}
	foreach(i; 0 .. 4) {
		f.airlineAirport();
	}
	foreach(i; 0 .. 4) {
		f.animalBear();
	}
	foreach(i; 0 .. 4) {
		f.animalBird();
	}
	foreach(i; 0 .. 4) {
		f.animalCat();
	}
	foreach(i; 0 .. 4) {
		f.animalCetacean();
	}
	foreach(i; 0 .. 4) {
		f.animalCow();
	}
	foreach(i; 0 .. 4) {
		f.animalCrocodilia();
	}
	foreach(i; 0 .. 4) {
		f.animalDog();
	}
	foreach(i; 0 .. 4) {
		f.animalFish();
	}
	foreach(i; 0 .. 4) {
		f.animalHorse();
	}
	foreach(i; 0 .. 4) {
		f.animalInsect();
	}
	foreach(i; 0 .. 4) {
		f.animalLion();
	}
	foreach(i; 0 .. 4) {
		f.animalRabbit();
	}
	foreach(i; 0 .. 4) {
		f.animalRodent();
	}
	foreach(i; 0 .. 4) {
		f.animalSnake();
	}
	foreach(i; 0 .. 4) {
		f.appAuthor();
	}
	foreach(i; 0 .. 4) {
		f.appName();
	}
	foreach(i; 0 .. 4) {
		f.appVersion();
	}
	foreach(i; 0 .. 4) {
		f.cellPhoneFormats();
	}
	foreach(i; 0 .. 4) {
		f.commerceDepartment();
	}
	foreach(i; 0 .. 4) {
		f.commerceProductDescription();
	}
	foreach(i; 0 .. 4) {
		f.commerceProductNameAdjective();
	}
	foreach(i; 0 .. 4) {
		f.commerceProductNameMaterial();
	}
	foreach(i; 0 .. 4) {
		f.commerceProductNameProduct();
	}
	foreach(i; 0 .. 4) {
		f.companyAdjective();
	}
	foreach(i; 0 .. 4) {
		f.companyBuzzAdjective();
	}
	foreach(i; 0 .. 4) {
		f.companyBuzzNoun();
	}
	foreach(i; 0 .. 4) {
		f.companyBuzzVerb();
	}
	foreach(i; 0 .. 4) {
		f.companyCatchPhrase();
	}
	foreach(i; 0 .. 4) {
		f.companyDescriptor();
	}
	foreach(i; 0 .. 4) {
		f.companyName();
	}
	foreach(i; 0 .. 4) {
		f.companyNamePattern();
	}
	foreach(i; 0 .. 4) {
		f.companyNoun();
	}
	foreach(i; 0 .. 4) {
		f.companySuffix();
	}
	foreach(i; 0 .. 4) {
		f.databaseCollation();
	}
	foreach(i; 0 .. 4) {
		f.databaseColumn();
	}
	foreach(i; 0 .. 4) {
		f.databaseEngine();
	}
	foreach(i; 0 .. 4) {
		f.databaseType();
	}
	foreach(i; 0 .. 4) {
		f.dateMonthAbbr();
	}
	foreach(i; 0 .. 4) {
		f.dateMonthWide();
	}
	foreach(i; 0 .. 4) {
		f.dateWeekdayAbbr();
	}
	foreach(i; 0 .. 4) {
		f.dateWeekdayWide();
	}
	foreach(i; 0 .. 4) {
		f.financeAccountType();
	}
	foreach(i; 0 .. 4) {
		f.financeCreditCardAmericanExpress();
	}
	foreach(i; 0 .. 4) {
		f.financeCreditCardDinersClub();
	}
	foreach(i; 0 .. 4) {
		f.financeCreditCardDiscover();
	}
	foreach(i; 0 .. 4) {
		f.financeCreditCardJcb();
	}
	foreach(i; 0 .. 4) {
		f.financeCreditCardMaestro();
	}
	foreach(i; 0 .. 4) {
		f.financeCreditCardMastercard();
	}
	foreach(i; 0 .. 4) {
		f.financeCreditCardVisa();
	}
	foreach(i; 0 .. 4) {
		f.financeCurrency();
	}
	foreach(i; 0 .. 4) {
		f.financeTransactionType();
	}
	foreach(i; 0 .. 4) {
		f.hackerAbbreviation();
	}
	foreach(i; 0 .. 4) {
		f.hackerAdjective();
	}
	foreach(i; 0 .. 4) {
		f.hackerIngverb();
	}
	foreach(i; 0 .. 4) {
		f.hackerNoun();
	}
	foreach(i; 0 .. 4) {
		f.hackerPhrase();
	}
	foreach(i; 0 .. 4) {
		f.hackerVerb();
	}
	foreach(i; 0 .. 4) {
		f.internetDomainSuffix();
	}
	foreach(i; 0 .. 4) {
		f.internetEmoji();
	}
	foreach(i; 0 .. 4) {
		f.internetEmojiActivity();
	}
	foreach(i; 0 .. 4) {
		f.internetEmojiBody();
	}
	foreach(i; 0 .. 4) {
		f.internetEmojiFlag();
	}
	foreach(i; 0 .. 4) {
		f.internetEmojiFood();
	}
	foreach(i; 0 .. 4) {
		f.internetEmojiNature();
	}
	foreach(i; 0 .. 4) {
		f.internetEmojiObject();
	}
	foreach(i; 0 .. 4) {
		f.internetEmojiPerson();
	}
	foreach(i; 0 .. 4) {
		f.internetEmojiSmiley();
	}
	foreach(i; 0 .. 4) {
		f.internetEmojiSymbol();
	}
	foreach(i; 0 .. 4) {
		f.internetEmojiTravel();
	}
	foreach(i; 0 .. 4) {
		f.internetExampleEmail();
	}
	foreach(i; 0 .. 4) {
		f.internetFreeEmail();
	}
	foreach(i; 0 .. 4) {
		f.locationBuildingNumber();
	}
	foreach(i; 0 .. 4) {
		f.locationCity();
	}
	foreach(i; 0 .. 4) {
		f.locationCityName();
	}
	foreach(i; 0 .. 4) {
		f.locationCityPattern();
	}
	foreach(i; 0 .. 4) {
		f.locationCityPrefix();
	}
	foreach(i; 0 .. 4) {
		f.locationCitySuffix();
	}
	foreach(i; 0 .. 4) {
		f.locationCountry();
	}
	foreach(i; 0 .. 4) {
		f.locationCounty();
	}
	foreach(i; 0 .. 4) {
		f.locationDefaultCountry();
	}
	foreach(i; 0 .. 4) {
		f.locationDirection();
	}
	foreach(i; 0 .. 4) {
		f.locationDirectionAbbr();
	}
	foreach(i; 0 .. 4) {
		f.locationPostcode();
	}
	foreach(i; 0 .. 4) {
		f.locationSecondaryAddress();
	}
	foreach(i; 0 .. 4) {
		f.locationState();
	}
	foreach(i; 0 .. 4) {
		f.locationStateAbbr();
	}
	foreach(i; 0 .. 4) {
		f.locationStreetAddress();
	}
	foreach(i; 0 .. 4) {
		f.locationStreetName();
	}
	foreach(i; 0 .. 4) {
		f.locationStreetPattern();
	}
	foreach(i; 0 .. 4) {
		f.locationStreetSuffix();
	}
	foreach(i; 0 .. 4) {
		f.locationTimeZone();
	}
	foreach(i; 0 .. 4) {
		f.loremParagraph();
	}
	foreach(i; 0 .. 4) {
		f.loremParagraphs();
	}
	foreach(i; 0 .. 4) {
		f.loremSentance();
	}
	foreach(i; 0 .. 4) {
		f.loremSentances();
	}
	foreach(i; 0 .. 4) {
		f.loremText();
	}
	foreach(i; 0 .. 4) {
		f.loremWords();
	}
	foreach(i; 0 .. 4) {
		f.musicGenre();
	}
	foreach(i; 0 .. 4) {
		f.musicSongName();
	}
	foreach(i; 0 .. 4) {
		f.personBioPart();
	}
	foreach(i; 0 .. 4) {
		f.personBioPattern();
	}
	foreach(i; 0 .. 4) {
		f.personBioSupporter();
	}
	foreach(i; 0 .. 4) {
		f.personFemaleFirstName();
	}
	foreach(i; 0 .. 4) {
		f.personFemaleMiddleName();
	}
	foreach(i; 0 .. 4) {
		f.personFemalePrefix();
	}
	foreach(i; 0 .. 4) {
		f.personFirstName();
	}
	foreach(i; 0 .. 4) {
		f.personGender();
	}
	foreach(i; 0 .. 4) {
		f.personJobArea();
	}
	foreach(i; 0 .. 4) {
		f.personJobDescriptor();
	}
	foreach(i; 0 .. 4) {
		f.personJobTitlePattern();
	}
	foreach(i; 0 .. 4) {
		f.personJobType();
	}
	foreach(i; 0 .. 4) {
		f.personLastName();
	}
	foreach(i; 0 .. 4) {
		f.personLastNamePattern();
	}
	foreach(i; 0 .. 4) {
		f.personMaleFirstName();
	}
	foreach(i; 0 .. 4) {
		f.personMaleMiddleName();
	}
	foreach(i; 0 .. 4) {
		f.personMalePrefix();
	}
	foreach(i; 0 .. 4) {
		f.personMiddleName();
	}
	foreach(i; 0 .. 4) {
		f.personName();
	}
	foreach(i; 0 .. 4) {
		f.personPrefix();
	}
	foreach(i; 0 .. 4) {
		f.personSex();
	}
	foreach(i; 0 .. 4) {
		f.personSuffix();
	}
	foreach(i; 0 .. 4) {
		f.personTitleDescriptor();
	}
	foreach(i; 0 .. 4) {
		f.personTitleJob();
	}
	foreach(i; 0 .. 4) {
		f.personTitleLevel();
	}
	foreach(i; 0 .. 4) {
		f.personWesternZodiacSign();
	}
	foreach(i; 0 .. 4) {
		f.phoneNumber();
	}
	foreach(i; 0 .. 4) {
		f.phoneNumberFormats();
	}
	foreach(i; 0 .. 4) {
		f.scienceChemicalElement();
	}
	foreach(i; 0 .. 4) {
		f.scienceUnit();
	}
	foreach(i; 0 .. 4) {
		f.systemDirectoryPaths();
	}
	foreach(i; 0 .. 4) {
		f.teamCreature();
	}
	foreach(i; 0 .. 4) {
		f.teamName();
	}
	foreach(i; 0 .. 4) {
		f.vehicleBicycleType();
	}
	foreach(i; 0 .. 4) {
		f.vehicleFuel();
	}
	foreach(i; 0 .. 4) {
		f.vehicleManufacturer();
	}
	foreach(i; 0 .. 4) {
		f.vehicleModel();
	}
	foreach(i; 0 .. 4) {
		f.vehicleType();
	}
	foreach(i; 0 .. 4) {
		f.wordAdjective();
	}
	foreach(i; 0 .. 4) {
		f.wordAdverb();
	}
	foreach(i; 0 .. 4) {
		f.wordConjunction();
	}
	foreach(i; 0 .. 4) {
		f.wordInterjection();
	}
	foreach(i; 0 .. 4) {
		f.wordNoun();
	}
	foreach(i; 0 .. 4) {
		f.wordPreposition();
	}
	foreach(i; 0 .. 4) {
		f.wordVerb();
	}
}

unittest {
	auto f = new Faker_th(13);

	foreach(i; 0 .. 4) {
		f.airlineAirline();
	}
	foreach(i; 0 .. 4) {
		f.airlineAirplane();
	}
	foreach(i; 0 .. 4) {
		f.airlineAirport();
	}
	foreach(i; 0 .. 4) {
		f.animalBear();
	}
	foreach(i; 0 .. 4) {
		f.animalBird();
	}
	foreach(i; 0 .. 4) {
		f.animalCat();
	}
	foreach(i; 0 .. 4) {
		f.animalCetacean();
	}
	foreach(i; 0 .. 4) {
		f.animalCow();
	}
	foreach(i; 0 .. 4) {
		f.animalCrocodilia();
	}
	foreach(i; 0 .. 4) {
		f.animalDog();
	}
	foreach(i; 0 .. 4) {
		f.animalFish();
	}
	foreach(i; 0 .. 4) {
		f.animalHorse();
	}
	foreach(i; 0 .. 4) {
		f.animalInsect();
	}
	foreach(i; 0 .. 4) {
		f.animalLion();
	}
	foreach(i; 0 .. 4) {
		f.animalRabbit();
	}
	foreach(i; 0 .. 4) {
		f.animalRodent();
	}
	foreach(i; 0 .. 4) {
		f.animalSnake();
	}
	foreach(i; 0 .. 4) {
		f.appAuthor();
	}
	foreach(i; 0 .. 4) {
		f.appName();
	}
	foreach(i; 0 .. 4) {
		f.appVersion();
	}
	foreach(i; 0 .. 4) {
		f.cellPhoneFormats();
	}
	foreach(i; 0 .. 4) {
		f.commerceDepartment();
	}
	foreach(i; 0 .. 4) {
		f.commerceProductDescription();
	}
	foreach(i; 0 .. 4) {
		f.commerceProductNameAdjective();
	}
	foreach(i; 0 .. 4) {
		f.commerceProductNameMaterial();
	}
	foreach(i; 0 .. 4) {
		f.commerceProductNameProduct();
	}
	foreach(i; 0 .. 4) {
		f.companyAdjective();
	}
	foreach(i; 0 .. 4) {
		f.companyBuzzAdjective();
	}
	foreach(i; 0 .. 4) {
		f.companyBuzzNoun();
	}
	foreach(i; 0 .. 4) {
		f.companyBuzzVerb();
	}
	foreach(i; 0 .. 4) {
		f.companyCatchPhrase();
	}
	foreach(i; 0 .. 4) {
		f.companyDescriptor();
	}
	foreach(i; 0 .. 4) {
		f.companyName();
	}
	foreach(i; 0 .. 4) {
		f.companyNamePattern();
	}
	foreach(i; 0 .. 4) {
		f.companyNoun();
	}
	foreach(i; 0 .. 4) {
		f.companySuffix();
	}
	foreach(i; 0 .. 4) {
		f.databaseCollation();
	}
	foreach(i; 0 .. 4) {
		f.databaseColumn();
	}
	foreach(i; 0 .. 4) {
		f.databaseEngine();
	}
	foreach(i; 0 .. 4) {
		f.databaseType();
	}
	foreach(i; 0 .. 4) {
		f.dateMonthAbbr();
	}
	foreach(i; 0 .. 4) {
		f.dateMonthWide();
	}
	foreach(i; 0 .. 4) {
		f.dateWeekdayAbbr();
	}
	foreach(i; 0 .. 4) {
		f.dateWeekdayWide();
	}
	foreach(i; 0 .. 4) {
		f.financeAccountType();
	}
	foreach(i; 0 .. 4) {
		f.financeCreditCardAmericanExpress();
	}
	foreach(i; 0 .. 4) {
		f.financeCreditCardDinersClub();
	}
	foreach(i; 0 .. 4) {
		f.financeCreditCardDiscover();
	}
	foreach(i; 0 .. 4) {
		f.financeCreditCardJcb();
	}
	foreach(i; 0 .. 4) {
		f.financeCreditCardMaestro();
	}
	foreach(i; 0 .. 4) {
		f.financeCreditCardMastercard();
	}
	foreach(i; 0 .. 4) {
		f.financeCreditCardVisa();
	}
	foreach(i; 0 .. 4) {
		f.financeCurrency();
	}
	foreach(i; 0 .. 4) {
		f.financeTransactionType();
	}
	foreach(i; 0 .. 4) {
		f.hackerAbbreviation();
	}
	foreach(i; 0 .. 4) {
		f.hackerAdjective();
	}
	foreach(i; 0 .. 4) {
		f.hackerIngverb();
	}
	foreach(i; 0 .. 4) {
		f.hackerNoun();
	}
	foreach(i; 0 .. 4) {
		f.hackerPhrase();
	}
	foreach(i; 0 .. 4) {
		f.hackerVerb();
	}
	foreach(i; 0 .. 4) {
		f.internetDomainSuffix();
	}
	foreach(i; 0 .. 4) {
		f.internetEmoji();
	}
	foreach(i; 0 .. 4) {
		f.internetEmojiActivity();
	}
	foreach(i; 0 .. 4) {
		f.internetEmojiBody();
	}
	foreach(i; 0 .. 4) {
		f.internetEmojiFlag();
	}
	foreach(i; 0 .. 4) {
		f.internetEmojiFood();
	}
	foreach(i; 0 .. 4) {
		f.internetEmojiNature();
	}
	foreach(i; 0 .. 4) {
		f.internetEmojiObject();
	}
	foreach(i; 0 .. 4) {
		f.internetEmojiPerson();
	}
	foreach(i; 0 .. 4) {
		f.internetEmojiSmiley();
	}
	foreach(i; 0 .. 4) {
		f.internetEmojiSymbol();
	}
	foreach(i; 0 .. 4) {
		f.internetEmojiTravel();
	}
	foreach(i; 0 .. 4) {
		f.internetExampleEmail();
	}
	foreach(i; 0 .. 4) {
		f.internetFreeEmail();
	}
	foreach(i; 0 .. 4) {
		f.locationBuildingNumber();
	}
	foreach(i; 0 .. 4) {
		f.locationCity();
	}
	foreach(i; 0 .. 4) {
		f.locationCityName();
	}
	foreach(i; 0 .. 4) {
		f.locationCityPattern();
	}
	foreach(i; 0 .. 4) {
		f.locationCityPrefix();
	}
	foreach(i; 0 .. 4) {
		f.locationCitySuffix();
	}
	foreach(i; 0 .. 4) {
		f.locationCountry();
	}
	foreach(i; 0 .. 4) {
		f.locationCounty();
	}
	foreach(i; 0 .. 4) {
		f.locationDefaultCountry();
	}
	foreach(i; 0 .. 4) {
		f.locationDirection();
	}
	foreach(i; 0 .. 4) {
		f.locationDirectionAbbr();
	}
	foreach(i; 0 .. 4) {
		f.locationPostcode();
	}
	foreach(i; 0 .. 4) {
		f.locationSecondaryAddress();
	}
	foreach(i; 0 .. 4) {
		f.locationState();
	}
	foreach(i; 0 .. 4) {
		f.locationStateAbbr();
	}
	foreach(i; 0 .. 4) {
		f.locationStreetAddress();
	}
	foreach(i; 0 .. 4) {
		f.locationStreetName();
	}
	foreach(i; 0 .. 4) {
		f.locationStreetPattern();
	}
	foreach(i; 0 .. 4) {
		f.locationStreetSuffix();
	}
	foreach(i; 0 .. 4) {
		f.locationTimeZone();
	}
	foreach(i; 0 .. 4) {
		f.loremParagraph();
	}
	foreach(i; 0 .. 4) {
		f.loremParagraphs();
	}
	foreach(i; 0 .. 4) {
		f.loremSentance();
	}
	foreach(i; 0 .. 4) {
		f.loremSentances();
	}
	foreach(i; 0 .. 4) {
		f.loremText();
	}
	foreach(i; 0 .. 4) {
		f.loremWords();
	}
	foreach(i; 0 .. 4) {
		f.musicGenre();
	}
	foreach(i; 0 .. 4) {
		f.musicSongName();
	}
	foreach(i; 0 .. 4) {
		f.personBioPart();
	}
	foreach(i; 0 .. 4) {
		f.personBioPattern();
	}
	foreach(i; 0 .. 4) {
		f.personBioSupporter();
	}
	foreach(i; 0 .. 4) {
		f.personFemaleFirstName();
	}
	foreach(i; 0 .. 4) {
		f.personFemaleMiddleName();
	}
	foreach(i; 0 .. 4) {
		f.personFemalePrefix();
	}
	foreach(i; 0 .. 4) {
		f.personFirstName();
	}
	foreach(i; 0 .. 4) {
		f.personGender();
	}
	foreach(i; 0 .. 4) {
		f.personJobArea();
	}
	foreach(i; 0 .. 4) {
		f.personJobDescriptor();
	}
	foreach(i; 0 .. 4) {
		f.personJobTitlePattern();
	}
	foreach(i; 0 .. 4) {
		f.personJobType();
	}
	foreach(i; 0 .. 4) {
		f.personLastName();
	}
	foreach(i; 0 .. 4) {
		f.personLastNamePattern();
	}
	foreach(i; 0 .. 4) {
		f.personMaleFirstName();
	}
	foreach(i; 0 .. 4) {
		f.personMaleMiddleName();
	}
	foreach(i; 0 .. 4) {
		f.personMalePrefix();
	}
	foreach(i; 0 .. 4) {
		f.personMiddleName();
	}
	foreach(i; 0 .. 4) {
		f.personName();
	}
	foreach(i; 0 .. 4) {
		f.personPrefix();
	}
	foreach(i; 0 .. 4) {
		f.personSex();
	}
	foreach(i; 0 .. 4) {
		f.personSuffix();
	}
	foreach(i; 0 .. 4) {
		f.personTitleDescriptor();
	}
	foreach(i; 0 .. 4) {
		f.personTitleJob();
	}
	foreach(i; 0 .. 4) {
		f.personTitleLevel();
	}
	foreach(i; 0 .. 4) {
		f.personWesternZodiacSign();
	}
	foreach(i; 0 .. 4) {
		f.phoneNumber();
	}
	foreach(i; 0 .. 4) {
		f.phoneNumberFormats();
	}
	foreach(i; 0 .. 4) {
		f.scienceChemicalElement();
	}
	foreach(i; 0 .. 4) {
		f.scienceUnit();
	}
	foreach(i; 0 .. 4) {
		f.systemDirectoryPaths();
	}
	foreach(i; 0 .. 4) {
		f.teamCreature();
	}
	foreach(i; 0 .. 4) {
		f.teamName();
	}
	foreach(i; 0 .. 4) {
		f.vehicleBicycleType();
	}
	foreach(i; 0 .. 4) {
		f.vehicleFuel();
	}
	foreach(i; 0 .. 4) {
		f.vehicleManufacturer();
	}
	foreach(i; 0 .. 4) {
		f.vehicleModel();
	}
	foreach(i; 0 .. 4) {
		f.vehicleType();
	}
	foreach(i; 0 .. 4) {
		f.wordAdjective();
	}
	foreach(i; 0 .. 4) {
		f.wordAdverb();
	}
	foreach(i; 0 .. 4) {
		f.wordConjunction();
	}
	foreach(i; 0 .. 4) {
		f.wordInterjection();
	}
	foreach(i; 0 .. 4) {
		f.wordNoun();
	}
	foreach(i; 0 .. 4) {
		f.wordPreposition();
	}
	foreach(i; 0 .. 4) {
		f.wordVerb();
	}
}

unittest {
	auto f = new Faker_tr(13);

	foreach(i; 0 .. 4) {
		f.airlineAirline();
	}
	foreach(i; 0 .. 4) {
		f.airlineAirplane();
	}
	foreach(i; 0 .. 4) {
		f.airlineAirport();
	}
	foreach(i; 0 .. 4) {
		f.animalBear();
	}
	foreach(i; 0 .. 4) {
		f.animalBird();
	}
	foreach(i; 0 .. 4) {
		f.animalCat();
	}
	foreach(i; 0 .. 4) {
		f.animalCetacean();
	}
	foreach(i; 0 .. 4) {
		f.animalCow();
	}
	foreach(i; 0 .. 4) {
		f.animalCrocodilia();
	}
	foreach(i; 0 .. 4) {
		f.animalDog();
	}
	foreach(i; 0 .. 4) {
		f.animalFish();
	}
	foreach(i; 0 .. 4) {
		f.animalHorse();
	}
	foreach(i; 0 .. 4) {
		f.animalInsect();
	}
	foreach(i; 0 .. 4) {
		f.animalLion();
	}
	foreach(i; 0 .. 4) {
		f.animalRabbit();
	}
	foreach(i; 0 .. 4) {
		f.animalRodent();
	}
	foreach(i; 0 .. 4) {
		f.animalSnake();
	}
	foreach(i; 0 .. 4) {
		f.appAuthor();
	}
	foreach(i; 0 .. 4) {
		f.appName();
	}
	foreach(i; 0 .. 4) {
		f.appVersion();
	}
	foreach(i; 0 .. 4) {
		f.cellPhoneFormats();
	}
	foreach(i; 0 .. 4) {
		f.commerceDepartment();
	}
	foreach(i; 0 .. 4) {
		f.commerceProductDescription();
	}
	foreach(i; 0 .. 4) {
		f.commerceProductNameAdjective();
	}
	foreach(i; 0 .. 4) {
		f.commerceProductNameMaterial();
	}
	foreach(i; 0 .. 4) {
		f.commerceProductNameProduct();
	}
	foreach(i; 0 .. 4) {
		f.companyAdjective();
	}
	foreach(i; 0 .. 4) {
		f.companyBuzzAdjective();
	}
	foreach(i; 0 .. 4) {
		f.companyBuzzNoun();
	}
	foreach(i; 0 .. 4) {
		f.companyBuzzVerb();
	}
	foreach(i; 0 .. 4) {
		f.companyCatchPhrase();
	}
	foreach(i; 0 .. 4) {
		f.companyDescriptor();
	}
	foreach(i; 0 .. 4) {
		f.companyName();
	}
	foreach(i; 0 .. 4) {
		f.companyNamePattern();
	}
	foreach(i; 0 .. 4) {
		f.companyNoun();
	}
	foreach(i; 0 .. 4) {
		f.companySuffix();
	}
	foreach(i; 0 .. 4) {
		f.databaseCollation();
	}
	foreach(i; 0 .. 4) {
		f.databaseColumn();
	}
	foreach(i; 0 .. 4) {
		f.databaseEngine();
	}
	foreach(i; 0 .. 4) {
		f.databaseType();
	}
	foreach(i; 0 .. 4) {
		f.dateMonthAbbr();
	}
	foreach(i; 0 .. 4) {
		f.dateMonthWide();
	}
	foreach(i; 0 .. 4) {
		f.dateWeekdayAbbr();
	}
	foreach(i; 0 .. 4) {
		f.dateWeekdayWide();
	}
	foreach(i; 0 .. 4) {
		f.financeAccountType();
	}
	foreach(i; 0 .. 4) {
		f.financeCreditCardAmericanExpress();
	}
	foreach(i; 0 .. 4) {
		f.financeCreditCardDinersClub();
	}
	foreach(i; 0 .. 4) {
		f.financeCreditCardDiscover();
	}
	foreach(i; 0 .. 4) {
		f.financeCreditCardJcb();
	}
	foreach(i; 0 .. 4) {
		f.financeCreditCardMaestro();
	}
	foreach(i; 0 .. 4) {
		f.financeCreditCardMastercard();
	}
	foreach(i; 0 .. 4) {
		f.financeCreditCardVisa();
	}
	foreach(i; 0 .. 4) {
		f.financeCurrency();
	}
	foreach(i; 0 .. 4) {
		f.financeTransactionType();
	}
	foreach(i; 0 .. 4) {
		f.hackerAbbreviation();
	}
	foreach(i; 0 .. 4) {
		f.hackerAdjective();
	}
	foreach(i; 0 .. 4) {
		f.hackerIngverb();
	}
	foreach(i; 0 .. 4) {
		f.hackerNoun();
	}
	foreach(i; 0 .. 4) {
		f.hackerPhrase();
	}
	foreach(i; 0 .. 4) {
		f.hackerVerb();
	}
	foreach(i; 0 .. 4) {
		f.internetDomainSuffix();
	}
	foreach(i; 0 .. 4) {
		f.internetEmoji();
	}
	foreach(i; 0 .. 4) {
		f.internetEmojiActivity();
	}
	foreach(i; 0 .. 4) {
		f.internetEmojiBody();
	}
	foreach(i; 0 .. 4) {
		f.internetEmojiFlag();
	}
	foreach(i; 0 .. 4) {
		f.internetEmojiFood();
	}
	foreach(i; 0 .. 4) {
		f.internetEmojiNature();
	}
	foreach(i; 0 .. 4) {
		f.internetEmojiObject();
	}
	foreach(i; 0 .. 4) {
		f.internetEmojiPerson();
	}
	foreach(i; 0 .. 4) {
		f.internetEmojiSmiley();
	}
	foreach(i; 0 .. 4) {
		f.internetEmojiSymbol();
	}
	foreach(i; 0 .. 4) {
		f.internetEmojiTravel();
	}
	foreach(i; 0 .. 4) {
		f.internetExampleEmail();
	}
	foreach(i; 0 .. 4) {
		f.internetFreeEmail();
	}
	foreach(i; 0 .. 4) {
		f.locationBuildingNumber();
	}
	foreach(i; 0 .. 4) {
		f.locationCity();
	}
	foreach(i; 0 .. 4) {
		f.locationCityName();
	}
	foreach(i; 0 .. 4) {
		f.locationCityPattern();
	}
	foreach(i; 0 .. 4) {
		f.locationCityPrefix();
	}
	foreach(i; 0 .. 4) {
		f.locationCitySuffix();
	}
	foreach(i; 0 .. 4) {
		f.locationCountry();
	}
	foreach(i; 0 .. 4) {
		f.locationCounty();
	}
	foreach(i; 0 .. 4) {
		f.locationDefaultCountry();
	}
	foreach(i; 0 .. 4) {
		f.locationDirection();
	}
	foreach(i; 0 .. 4) {
		f.locationDirectionAbbr();
	}
	foreach(i; 0 .. 4) {
		f.locationPostcode();
	}
	foreach(i; 0 .. 4) {
		f.locationSecondaryAddress();
	}
	foreach(i; 0 .. 4) {
		f.locationState();
	}
	foreach(i; 0 .. 4) {
		f.locationStateAbbr();
	}
	foreach(i; 0 .. 4) {
		f.locationStreetAddress();
	}
	foreach(i; 0 .. 4) {
		f.locationStreetName();
	}
	foreach(i; 0 .. 4) {
		f.locationStreetPattern();
	}
	foreach(i; 0 .. 4) {
		f.locationStreetSuffix();
	}
	foreach(i; 0 .. 4) {
		f.locationTimeZone();
	}
	foreach(i; 0 .. 4) {
		f.loremParagraph();
	}
	foreach(i; 0 .. 4) {
		f.loremParagraphs();
	}
	foreach(i; 0 .. 4) {
		f.loremSentance();
	}
	foreach(i; 0 .. 4) {
		f.loremSentances();
	}
	foreach(i; 0 .. 4) {
		f.loremText();
	}
	foreach(i; 0 .. 4) {
		f.loremWords();
	}
	foreach(i; 0 .. 4) {
		f.musicGenre();
	}
	foreach(i; 0 .. 4) {
		f.musicSongName();
	}
	foreach(i; 0 .. 4) {
		f.personBioPart();
	}
	foreach(i; 0 .. 4) {
		f.personBioPattern();
	}
	foreach(i; 0 .. 4) {
		f.personBioSupporter();
	}
	foreach(i; 0 .. 4) {
		f.personFemaleFirstName();
	}
	foreach(i; 0 .. 4) {
		f.personFemaleMiddleName();
	}
	foreach(i; 0 .. 4) {
		f.personFemalePrefix();
	}
	foreach(i; 0 .. 4) {
		f.personFirstName();
	}
	foreach(i; 0 .. 4) {
		f.personGender();
	}
	foreach(i; 0 .. 4) {
		f.personJobArea();
	}
	foreach(i; 0 .. 4) {
		f.personJobDescriptor();
	}
	foreach(i; 0 .. 4) {
		f.personJobTitlePattern();
	}
	foreach(i; 0 .. 4) {
		f.personJobType();
	}
	foreach(i; 0 .. 4) {
		f.personLastName();
	}
	foreach(i; 0 .. 4) {
		f.personLastNamePattern();
	}
	foreach(i; 0 .. 4) {
		f.personMaleFirstName();
	}
	foreach(i; 0 .. 4) {
		f.personMaleMiddleName();
	}
	foreach(i; 0 .. 4) {
		f.personMalePrefix();
	}
	foreach(i; 0 .. 4) {
		f.personMiddleName();
	}
	foreach(i; 0 .. 4) {
		f.personName();
	}
	foreach(i; 0 .. 4) {
		f.personPrefix();
	}
	foreach(i; 0 .. 4) {
		f.personSex();
	}
	foreach(i; 0 .. 4) {
		f.personSuffix();
	}
	foreach(i; 0 .. 4) {
		f.personTitleDescriptor();
	}
	foreach(i; 0 .. 4) {
		f.personTitleJob();
	}
	foreach(i; 0 .. 4) {
		f.personTitleLevel();
	}
	foreach(i; 0 .. 4) {
		f.personWesternZodiacSign();
	}
	foreach(i; 0 .. 4) {
		f.phoneNumber();
	}
	foreach(i; 0 .. 4) {
		f.phoneNumberFormats();
	}
	foreach(i; 0 .. 4) {
		f.scienceChemicalElement();
	}
	foreach(i; 0 .. 4) {
		f.scienceUnit();
	}
	foreach(i; 0 .. 4) {
		f.systemDirectoryPaths();
	}
	foreach(i; 0 .. 4) {
		f.teamCreature();
	}
	foreach(i; 0 .. 4) {
		f.teamName();
	}
	foreach(i; 0 .. 4) {
		f.vehicleBicycleType();
	}
	foreach(i; 0 .. 4) {
		f.vehicleFuel();
	}
	foreach(i; 0 .. 4) {
		f.vehicleManufacturer();
	}
	foreach(i; 0 .. 4) {
		f.vehicleModel();
	}
	foreach(i; 0 .. 4) {
		f.vehicleType();
	}
	foreach(i; 0 .. 4) {
		f.wordAdjective();
	}
	foreach(i; 0 .. 4) {
		f.wordAdverb();
	}
	foreach(i; 0 .. 4) {
		f.wordConjunction();
	}
	foreach(i; 0 .. 4) {
		f.wordInterjection();
	}
	foreach(i; 0 .. 4) {
		f.wordNoun();
	}
	foreach(i; 0 .. 4) {
		f.wordPreposition();
	}
	foreach(i; 0 .. 4) {
		f.wordVerb();
	}
}

unittest {
	auto f = new Faker_uk(13);

	foreach(i; 0 .. 4) {
		f.airlineAirline();
	}
	foreach(i; 0 .. 4) {
		f.airlineAirplane();
	}
	foreach(i; 0 .. 4) {
		f.airlineAirport();
	}
	foreach(i; 0 .. 4) {
		f.animalBear();
	}
	foreach(i; 0 .. 4) {
		f.animalBird();
	}
	foreach(i; 0 .. 4) {
		f.animalCat();
	}
	foreach(i; 0 .. 4) {
		f.animalCetacean();
	}
	foreach(i; 0 .. 4) {
		f.animalCow();
	}
	foreach(i; 0 .. 4) {
		f.animalCrocodilia();
	}
	foreach(i; 0 .. 4) {
		f.animalDog();
	}
	foreach(i; 0 .. 4) {
		f.animalFish();
	}
	foreach(i; 0 .. 4) {
		f.animalHorse();
	}
	foreach(i; 0 .. 4) {
		f.animalInsect();
	}
	foreach(i; 0 .. 4) {
		f.animalLion();
	}
	foreach(i; 0 .. 4) {
		f.animalRabbit();
	}
	foreach(i; 0 .. 4) {
		f.animalRodent();
	}
	foreach(i; 0 .. 4) {
		f.animalSnake();
	}
	foreach(i; 0 .. 4) {
		f.appAuthor();
	}
	foreach(i; 0 .. 4) {
		f.appName();
	}
	foreach(i; 0 .. 4) {
		f.appVersion();
	}
	foreach(i; 0 .. 4) {
		f.cellPhoneFormats();
	}
	foreach(i; 0 .. 4) {
		f.commerceDepartment();
	}
	foreach(i; 0 .. 4) {
		f.commerceProductDescription();
	}
	foreach(i; 0 .. 4) {
		f.commerceProductNameAdjective();
	}
	foreach(i; 0 .. 4) {
		f.commerceProductNameMaterial();
	}
	foreach(i; 0 .. 4) {
		f.commerceProductNameProduct();
	}
	foreach(i; 0 .. 4) {
		f.companyAdjective();
	}
	foreach(i; 0 .. 4) {
		f.companyBuzzAdjective();
	}
	foreach(i; 0 .. 4) {
		f.companyBuzzNoun();
	}
	foreach(i; 0 .. 4) {
		f.companyBuzzVerb();
	}
	foreach(i; 0 .. 4) {
		f.companyCatchPhrase();
	}
	foreach(i; 0 .. 4) {
		f.companyDescriptor();
	}
	foreach(i; 0 .. 4) {
		f.companyName();
	}
	foreach(i; 0 .. 4) {
		f.companyNamePattern();
	}
	foreach(i; 0 .. 4) {
		f.companyNoun();
	}
	foreach(i; 0 .. 4) {
		f.companySuffix();
	}
	foreach(i; 0 .. 4) {
		f.databaseCollation();
	}
	foreach(i; 0 .. 4) {
		f.databaseColumn();
	}
	foreach(i; 0 .. 4) {
		f.databaseEngine();
	}
	foreach(i; 0 .. 4) {
		f.databaseType();
	}
	foreach(i; 0 .. 4) {
		f.dateMonthAbbr();
	}
	foreach(i; 0 .. 4) {
		f.dateMonthWide();
	}
	foreach(i; 0 .. 4) {
		f.dateWeekdayAbbr();
	}
	foreach(i; 0 .. 4) {
		f.dateWeekdayWide();
	}
	foreach(i; 0 .. 4) {
		f.financeAccountType();
	}
	foreach(i; 0 .. 4) {
		f.financeCreditCardAmericanExpress();
	}
	foreach(i; 0 .. 4) {
		f.financeCreditCardDinersClub();
	}
	foreach(i; 0 .. 4) {
		f.financeCreditCardDiscover();
	}
	foreach(i; 0 .. 4) {
		f.financeCreditCardJcb();
	}
	foreach(i; 0 .. 4) {
		f.financeCreditCardMaestro();
	}
	foreach(i; 0 .. 4) {
		f.financeCreditCardMastercard();
	}
	foreach(i; 0 .. 4) {
		f.financeCreditCardVisa();
	}
	foreach(i; 0 .. 4) {
		f.financeCurrency();
	}
	foreach(i; 0 .. 4) {
		f.financeTransactionType();
	}
	foreach(i; 0 .. 4) {
		f.hackerAbbreviation();
	}
	foreach(i; 0 .. 4) {
		f.hackerAdjective();
	}
	foreach(i; 0 .. 4) {
		f.hackerIngverb();
	}
	foreach(i; 0 .. 4) {
		f.hackerNoun();
	}
	foreach(i; 0 .. 4) {
		f.hackerPhrase();
	}
	foreach(i; 0 .. 4) {
		f.hackerVerb();
	}
	foreach(i; 0 .. 4) {
		f.internetDomainSuffix();
	}
	foreach(i; 0 .. 4) {
		f.internetEmoji();
	}
	foreach(i; 0 .. 4) {
		f.internetEmojiActivity();
	}
	foreach(i; 0 .. 4) {
		f.internetEmojiBody();
	}
	foreach(i; 0 .. 4) {
		f.internetEmojiFlag();
	}
	foreach(i; 0 .. 4) {
		f.internetEmojiFood();
	}
	foreach(i; 0 .. 4) {
		f.internetEmojiNature();
	}
	foreach(i; 0 .. 4) {
		f.internetEmojiObject();
	}
	foreach(i; 0 .. 4) {
		f.internetEmojiPerson();
	}
	foreach(i; 0 .. 4) {
		f.internetEmojiSmiley();
	}
	foreach(i; 0 .. 4) {
		f.internetEmojiSymbol();
	}
	foreach(i; 0 .. 4) {
		f.internetEmojiTravel();
	}
	foreach(i; 0 .. 4) {
		f.internetExampleEmail();
	}
	foreach(i; 0 .. 4) {
		f.internetFreeEmail();
	}
	foreach(i; 0 .. 4) {
		f.locationBuildingNumber();
	}
	foreach(i; 0 .. 4) {
		f.locationCity();
	}
	foreach(i; 0 .. 4) {
		f.locationCityName();
	}
	foreach(i; 0 .. 4) {
		f.locationCityPattern();
	}
	foreach(i; 0 .. 4) {
		f.locationCityPrefix();
	}
	foreach(i; 0 .. 4) {
		f.locationCitySuffix();
	}
	foreach(i; 0 .. 4) {
		f.locationCountry();
	}
	foreach(i; 0 .. 4) {
		f.locationCounty();
	}
	foreach(i; 0 .. 4) {
		f.locationDefaultCountry();
	}
	foreach(i; 0 .. 4) {
		f.locationDirection();
	}
	foreach(i; 0 .. 4) {
		f.locationDirectionAbbr();
	}
	foreach(i; 0 .. 4) {
		f.locationPostcode();
	}
	foreach(i; 0 .. 4) {
		f.locationSecondaryAddress();
	}
	foreach(i; 0 .. 4) {
		f.locationState();
	}
	foreach(i; 0 .. 4) {
		f.locationStateAbbr();
	}
	foreach(i; 0 .. 4) {
		f.locationStreetAddress();
	}
	foreach(i; 0 .. 4) {
		f.locationStreetName();
	}
	foreach(i; 0 .. 4) {
		f.locationStreetPattern();
	}
	foreach(i; 0 .. 4) {
		f.locationStreetSuffix();
	}
	foreach(i; 0 .. 4) {
		f.locationTimeZone();
	}
	foreach(i; 0 .. 4) {
		f.loremParagraph();
	}
	foreach(i; 0 .. 4) {
		f.loremParagraphs();
	}
	foreach(i; 0 .. 4) {
		f.loremSentance();
	}
	foreach(i; 0 .. 4) {
		f.loremSentances();
	}
	foreach(i; 0 .. 4) {
		f.loremText();
	}
	foreach(i; 0 .. 4) {
		f.loremWords();
	}
	foreach(i; 0 .. 4) {
		f.musicGenre();
	}
	foreach(i; 0 .. 4) {
		f.musicSongName();
	}
	foreach(i; 0 .. 4) {
		f.personBioPart();
	}
	foreach(i; 0 .. 4) {
		f.personBioPattern();
	}
	foreach(i; 0 .. 4) {
		f.personBioSupporter();
	}
	foreach(i; 0 .. 4) {
		f.personFemaleFirstName();
	}
	foreach(i; 0 .. 4) {
		f.personFemaleMiddleName();
	}
	foreach(i; 0 .. 4) {
		f.personFemalePrefix();
	}
	foreach(i; 0 .. 4) {
		f.personFirstName();
	}
	foreach(i; 0 .. 4) {
		f.personGender();
	}
	foreach(i; 0 .. 4) {
		f.personJobArea();
	}
	foreach(i; 0 .. 4) {
		f.personJobDescriptor();
	}
	foreach(i; 0 .. 4) {
		f.personJobTitlePattern();
	}
	foreach(i; 0 .. 4) {
		f.personJobType();
	}
	foreach(i; 0 .. 4) {
		f.personLastName();
	}
	foreach(i; 0 .. 4) {
		f.personLastNamePattern();
	}
	foreach(i; 0 .. 4) {
		f.personMaleFirstName();
	}
	foreach(i; 0 .. 4) {
		f.personMaleMiddleName();
	}
	foreach(i; 0 .. 4) {
		f.personMalePrefix();
	}
	foreach(i; 0 .. 4) {
		f.personMiddleName();
	}
	foreach(i; 0 .. 4) {
		f.personName();
	}
	foreach(i; 0 .. 4) {
		f.personPrefix();
	}
	foreach(i; 0 .. 4) {
		f.personSex();
	}
	foreach(i; 0 .. 4) {
		f.personSuffix();
	}
	foreach(i; 0 .. 4) {
		f.personTitleDescriptor();
	}
	foreach(i; 0 .. 4) {
		f.personTitleJob();
	}
	foreach(i; 0 .. 4) {
		f.personTitleLevel();
	}
	foreach(i; 0 .. 4) {
		f.personWesternZodiacSign();
	}
	foreach(i; 0 .. 4) {
		f.phoneNumber();
	}
	foreach(i; 0 .. 4) {
		f.phoneNumberFormats();
	}
	foreach(i; 0 .. 4) {
		f.scienceChemicalElement();
	}
	foreach(i; 0 .. 4) {
		f.scienceUnit();
	}
	foreach(i; 0 .. 4) {
		f.systemDirectoryPaths();
	}
	foreach(i; 0 .. 4) {
		f.teamCreature();
	}
	foreach(i; 0 .. 4) {
		f.teamName();
	}
	foreach(i; 0 .. 4) {
		f.vehicleBicycleType();
	}
	foreach(i; 0 .. 4) {
		f.vehicleFuel();
	}
	foreach(i; 0 .. 4) {
		f.vehicleManufacturer();
	}
	foreach(i; 0 .. 4) {
		f.vehicleModel();
	}
	foreach(i; 0 .. 4) {
		f.vehicleType();
	}
	foreach(i; 0 .. 4) {
		f.wordAdjective();
	}
	foreach(i; 0 .. 4) {
		f.wordAdverb();
	}
	foreach(i; 0 .. 4) {
		f.wordConjunction();
	}
	foreach(i; 0 .. 4) {
		f.wordInterjection();
	}
	foreach(i; 0 .. 4) {
		f.wordNoun();
	}
	foreach(i; 0 .. 4) {
		f.wordPreposition();
	}
	foreach(i; 0 .. 4) {
		f.wordVerb();
	}
}

unittest {
	auto f = new Faker_ur(13);

	foreach(i; 0 .. 4) {
		f.airlineAirline();
	}
	foreach(i; 0 .. 4) {
		f.airlineAirplane();
	}
	foreach(i; 0 .. 4) {
		f.airlineAirport();
	}
	foreach(i; 0 .. 4) {
		f.animalBear();
	}
	foreach(i; 0 .. 4) {
		f.animalBird();
	}
	foreach(i; 0 .. 4) {
		f.animalCat();
	}
	foreach(i; 0 .. 4) {
		f.animalCetacean();
	}
	foreach(i; 0 .. 4) {
		f.animalCow();
	}
	foreach(i; 0 .. 4) {
		f.animalCrocodilia();
	}
	foreach(i; 0 .. 4) {
		f.animalDog();
	}
	foreach(i; 0 .. 4) {
		f.animalFish();
	}
	foreach(i; 0 .. 4) {
		f.animalHorse();
	}
	foreach(i; 0 .. 4) {
		f.animalInsect();
	}
	foreach(i; 0 .. 4) {
		f.animalLion();
	}
	foreach(i; 0 .. 4) {
		f.animalRabbit();
	}
	foreach(i; 0 .. 4) {
		f.animalRodent();
	}
	foreach(i; 0 .. 4) {
		f.animalSnake();
	}
	foreach(i; 0 .. 4) {
		f.appAuthor();
	}
	foreach(i; 0 .. 4) {
		f.appName();
	}
	foreach(i; 0 .. 4) {
		f.appVersion();
	}
	foreach(i; 0 .. 4) {
		f.cellPhoneFormats();
	}
	foreach(i; 0 .. 4) {
		f.commerceDepartment();
	}
	foreach(i; 0 .. 4) {
		f.commerceProductDescription();
	}
	foreach(i; 0 .. 4) {
		f.commerceProductNameAdjective();
	}
	foreach(i; 0 .. 4) {
		f.commerceProductNameMaterial();
	}
	foreach(i; 0 .. 4) {
		f.commerceProductNameProduct();
	}
	foreach(i; 0 .. 4) {
		f.companyAdjective();
	}
	foreach(i; 0 .. 4) {
		f.companyBuzzAdjective();
	}
	foreach(i; 0 .. 4) {
		f.companyBuzzNoun();
	}
	foreach(i; 0 .. 4) {
		f.companyBuzzVerb();
	}
	foreach(i; 0 .. 4) {
		f.companyCatchPhrase();
	}
	foreach(i; 0 .. 4) {
		f.companyDescriptor();
	}
	foreach(i; 0 .. 4) {
		f.companyName();
	}
	foreach(i; 0 .. 4) {
		f.companyNamePattern();
	}
	foreach(i; 0 .. 4) {
		f.companyNoun();
	}
	foreach(i; 0 .. 4) {
		f.companySuffix();
	}
	foreach(i; 0 .. 4) {
		f.databaseCollation();
	}
	foreach(i; 0 .. 4) {
		f.databaseColumn();
	}
	foreach(i; 0 .. 4) {
		f.databaseEngine();
	}
	foreach(i; 0 .. 4) {
		f.databaseType();
	}
	foreach(i; 0 .. 4) {
		f.dateMonthAbbr();
	}
	foreach(i; 0 .. 4) {
		f.dateMonthWide();
	}
	foreach(i; 0 .. 4) {
		f.dateWeekdayAbbr();
	}
	foreach(i; 0 .. 4) {
		f.dateWeekdayWide();
	}
	foreach(i; 0 .. 4) {
		f.financeAccountType();
	}
	foreach(i; 0 .. 4) {
		f.financeCreditCardAmericanExpress();
	}
	foreach(i; 0 .. 4) {
		f.financeCreditCardDinersClub();
	}
	foreach(i; 0 .. 4) {
		f.financeCreditCardDiscover();
	}
	foreach(i; 0 .. 4) {
		f.financeCreditCardJcb();
	}
	foreach(i; 0 .. 4) {
		f.financeCreditCardMaestro();
	}
	foreach(i; 0 .. 4) {
		f.financeCreditCardMastercard();
	}
	foreach(i; 0 .. 4) {
		f.financeCreditCardVisa();
	}
	foreach(i; 0 .. 4) {
		f.financeCurrency();
	}
	foreach(i; 0 .. 4) {
		f.financeTransactionType();
	}
	foreach(i; 0 .. 4) {
		f.hackerAbbreviation();
	}
	foreach(i; 0 .. 4) {
		f.hackerAdjective();
	}
	foreach(i; 0 .. 4) {
		f.hackerIngverb();
	}
	foreach(i; 0 .. 4) {
		f.hackerNoun();
	}
	foreach(i; 0 .. 4) {
		f.hackerPhrase();
	}
	foreach(i; 0 .. 4) {
		f.hackerVerb();
	}
	foreach(i; 0 .. 4) {
		f.internetDomainSuffix();
	}
	foreach(i; 0 .. 4) {
		f.internetEmoji();
	}
	foreach(i; 0 .. 4) {
		f.internetEmojiActivity();
	}
	foreach(i; 0 .. 4) {
		f.internetEmojiBody();
	}
	foreach(i; 0 .. 4) {
		f.internetEmojiFlag();
	}
	foreach(i; 0 .. 4) {
		f.internetEmojiFood();
	}
	foreach(i; 0 .. 4) {
		f.internetEmojiNature();
	}
	foreach(i; 0 .. 4) {
		f.internetEmojiObject();
	}
	foreach(i; 0 .. 4) {
		f.internetEmojiPerson();
	}
	foreach(i; 0 .. 4) {
		f.internetEmojiSmiley();
	}
	foreach(i; 0 .. 4) {
		f.internetEmojiSymbol();
	}
	foreach(i; 0 .. 4) {
		f.internetEmojiTravel();
	}
	foreach(i; 0 .. 4) {
		f.internetExampleEmail();
	}
	foreach(i; 0 .. 4) {
		f.internetFreeEmail();
	}
	foreach(i; 0 .. 4) {
		f.locationBuildingNumber();
	}
	foreach(i; 0 .. 4) {
		f.locationCity();
	}
	foreach(i; 0 .. 4) {
		f.locationCityName();
	}
	foreach(i; 0 .. 4) {
		f.locationCityPattern();
	}
	foreach(i; 0 .. 4) {
		f.locationCityPrefix();
	}
	foreach(i; 0 .. 4) {
		f.locationCitySuffix();
	}
	foreach(i; 0 .. 4) {
		f.locationCountry();
	}
	foreach(i; 0 .. 4) {
		f.locationCounty();
	}
	foreach(i; 0 .. 4) {
		f.locationDefaultCountry();
	}
	foreach(i; 0 .. 4) {
		f.locationDirection();
	}
	foreach(i; 0 .. 4) {
		f.locationDirectionAbbr();
	}
	foreach(i; 0 .. 4) {
		f.locationPostcode();
	}
	foreach(i; 0 .. 4) {
		f.locationSecondaryAddress();
	}
	foreach(i; 0 .. 4) {
		f.locationState();
	}
	foreach(i; 0 .. 4) {
		f.locationStateAbbr();
	}
	foreach(i; 0 .. 4) {
		f.locationStreetAddress();
	}
	foreach(i; 0 .. 4) {
		f.locationStreetName();
	}
	foreach(i; 0 .. 4) {
		f.locationStreetPattern();
	}
	foreach(i; 0 .. 4) {
		f.locationStreetSuffix();
	}
	foreach(i; 0 .. 4) {
		f.locationTimeZone();
	}
	foreach(i; 0 .. 4) {
		f.loremParagraph();
	}
	foreach(i; 0 .. 4) {
		f.loremParagraphs();
	}
	foreach(i; 0 .. 4) {
		f.loremSentance();
	}
	foreach(i; 0 .. 4) {
		f.loremSentances();
	}
	foreach(i; 0 .. 4) {
		f.loremText();
	}
	foreach(i; 0 .. 4) {
		f.loremWords();
	}
	foreach(i; 0 .. 4) {
		f.musicGenre();
	}
	foreach(i; 0 .. 4) {
		f.musicSongName();
	}
	foreach(i; 0 .. 4) {
		f.personBioPart();
	}
	foreach(i; 0 .. 4) {
		f.personBioPattern();
	}
	foreach(i; 0 .. 4) {
		f.personBioSupporter();
	}
	foreach(i; 0 .. 4) {
		f.personFemaleFirstName();
	}
	foreach(i; 0 .. 4) {
		f.personFemaleMiddleName();
	}
	foreach(i; 0 .. 4) {
		f.personFemalePrefix();
	}
	foreach(i; 0 .. 4) {
		f.personFirstName();
	}
	foreach(i; 0 .. 4) {
		f.personGender();
	}
	foreach(i; 0 .. 4) {
		f.personJobArea();
	}
	foreach(i; 0 .. 4) {
		f.personJobDescriptor();
	}
	foreach(i; 0 .. 4) {
		f.personJobTitlePattern();
	}
	foreach(i; 0 .. 4) {
		f.personJobType();
	}
	foreach(i; 0 .. 4) {
		f.personLastName();
	}
	foreach(i; 0 .. 4) {
		f.personLastNamePattern();
	}
	foreach(i; 0 .. 4) {
		f.personMaleFirstName();
	}
	foreach(i; 0 .. 4) {
		f.personMaleMiddleName();
	}
	foreach(i; 0 .. 4) {
		f.personMalePrefix();
	}
	foreach(i; 0 .. 4) {
		f.personMiddleName();
	}
	foreach(i; 0 .. 4) {
		f.personName();
	}
	foreach(i; 0 .. 4) {
		f.personPrefix();
	}
	foreach(i; 0 .. 4) {
		f.personSex();
	}
	foreach(i; 0 .. 4) {
		f.personSuffix();
	}
	foreach(i; 0 .. 4) {
		f.personTitleDescriptor();
	}
	foreach(i; 0 .. 4) {
		f.personTitleJob();
	}
	foreach(i; 0 .. 4) {
		f.personTitleLevel();
	}
	foreach(i; 0 .. 4) {
		f.personWesternZodiacSign();
	}
	foreach(i; 0 .. 4) {
		f.phoneNumber();
	}
	foreach(i; 0 .. 4) {
		f.phoneNumberFormats();
	}
	foreach(i; 0 .. 4) {
		f.scienceChemicalElement();
	}
	foreach(i; 0 .. 4) {
		f.scienceUnit();
	}
	foreach(i; 0 .. 4) {
		f.systemDirectoryPaths();
	}
	foreach(i; 0 .. 4) {
		f.teamCreature();
	}
	foreach(i; 0 .. 4) {
		f.teamName();
	}
	foreach(i; 0 .. 4) {
		f.vehicleBicycleType();
	}
	foreach(i; 0 .. 4) {
		f.vehicleFuel();
	}
	foreach(i; 0 .. 4) {
		f.vehicleManufacturer();
	}
	foreach(i; 0 .. 4) {
		f.vehicleModel();
	}
	foreach(i; 0 .. 4) {
		f.vehicleType();
	}
	foreach(i; 0 .. 4) {
		f.wordAdjective();
	}
	foreach(i; 0 .. 4) {
		f.wordAdverb();
	}
	foreach(i; 0 .. 4) {
		f.wordConjunction();
	}
	foreach(i; 0 .. 4) {
		f.wordInterjection();
	}
	foreach(i; 0 .. 4) {
		f.wordNoun();
	}
	foreach(i; 0 .. 4) {
		f.wordPreposition();
	}
	foreach(i; 0 .. 4) {
		f.wordVerb();
	}
}

unittest {
	auto f = new Faker_vi(13);

	foreach(i; 0 .. 4) {
		f.airlineAirline();
	}
	foreach(i; 0 .. 4) {
		f.airlineAirplane();
	}
	foreach(i; 0 .. 4) {
		f.airlineAirport();
	}
	foreach(i; 0 .. 4) {
		f.animalBear();
	}
	foreach(i; 0 .. 4) {
		f.animalBird();
	}
	foreach(i; 0 .. 4) {
		f.animalCat();
	}
	foreach(i; 0 .. 4) {
		f.animalCetacean();
	}
	foreach(i; 0 .. 4) {
		f.animalCow();
	}
	foreach(i; 0 .. 4) {
		f.animalCrocodilia();
	}
	foreach(i; 0 .. 4) {
		f.animalDog();
	}
	foreach(i; 0 .. 4) {
		f.animalFish();
	}
	foreach(i; 0 .. 4) {
		f.animalHorse();
	}
	foreach(i; 0 .. 4) {
		f.animalInsect();
	}
	foreach(i; 0 .. 4) {
		f.animalLion();
	}
	foreach(i; 0 .. 4) {
		f.animalRabbit();
	}
	foreach(i; 0 .. 4) {
		f.animalRodent();
	}
	foreach(i; 0 .. 4) {
		f.animalSnake();
	}
	foreach(i; 0 .. 4) {
		f.appAuthor();
	}
	foreach(i; 0 .. 4) {
		f.appName();
	}
	foreach(i; 0 .. 4) {
		f.appVersion();
	}
	foreach(i; 0 .. 4) {
		f.cellPhoneFormats();
	}
	foreach(i; 0 .. 4) {
		f.commerceDepartment();
	}
	foreach(i; 0 .. 4) {
		f.commerceProductDescription();
	}
	foreach(i; 0 .. 4) {
		f.commerceProductNameAdjective();
	}
	foreach(i; 0 .. 4) {
		f.commerceProductNameMaterial();
	}
	foreach(i; 0 .. 4) {
		f.commerceProductNameProduct();
	}
	foreach(i; 0 .. 4) {
		f.companyAdjective();
	}
	foreach(i; 0 .. 4) {
		f.companyBuzzAdjective();
	}
	foreach(i; 0 .. 4) {
		f.companyBuzzNoun();
	}
	foreach(i; 0 .. 4) {
		f.companyBuzzVerb();
	}
	foreach(i; 0 .. 4) {
		f.companyCatchPhrase();
	}
	foreach(i; 0 .. 4) {
		f.companyDescriptor();
	}
	foreach(i; 0 .. 4) {
		f.companyName();
	}
	foreach(i; 0 .. 4) {
		f.companyNamePattern();
	}
	foreach(i; 0 .. 4) {
		f.companyNoun();
	}
	foreach(i; 0 .. 4) {
		f.companySuffix();
	}
	foreach(i; 0 .. 4) {
		f.databaseCollation();
	}
	foreach(i; 0 .. 4) {
		f.databaseColumn();
	}
	foreach(i; 0 .. 4) {
		f.databaseEngine();
	}
	foreach(i; 0 .. 4) {
		f.databaseType();
	}
	foreach(i; 0 .. 4) {
		f.dateMonthAbbr();
	}
	foreach(i; 0 .. 4) {
		f.dateMonthWide();
	}
	foreach(i; 0 .. 4) {
		f.dateWeekdayAbbr();
	}
	foreach(i; 0 .. 4) {
		f.dateWeekdayWide();
	}
	foreach(i; 0 .. 4) {
		f.financeAccountType();
	}
	foreach(i; 0 .. 4) {
		f.financeCreditCardAmericanExpress();
	}
	foreach(i; 0 .. 4) {
		f.financeCreditCardDinersClub();
	}
	foreach(i; 0 .. 4) {
		f.financeCreditCardDiscover();
	}
	foreach(i; 0 .. 4) {
		f.financeCreditCardJcb();
	}
	foreach(i; 0 .. 4) {
		f.financeCreditCardMaestro();
	}
	foreach(i; 0 .. 4) {
		f.financeCreditCardMastercard();
	}
	foreach(i; 0 .. 4) {
		f.financeCreditCardVisa();
	}
	foreach(i; 0 .. 4) {
		f.financeCurrency();
	}
	foreach(i; 0 .. 4) {
		f.financeTransactionType();
	}
	foreach(i; 0 .. 4) {
		f.hackerAbbreviation();
	}
	foreach(i; 0 .. 4) {
		f.hackerAdjective();
	}
	foreach(i; 0 .. 4) {
		f.hackerIngverb();
	}
	foreach(i; 0 .. 4) {
		f.hackerNoun();
	}
	foreach(i; 0 .. 4) {
		f.hackerPhrase();
	}
	foreach(i; 0 .. 4) {
		f.hackerVerb();
	}
	foreach(i; 0 .. 4) {
		f.internetDomainSuffix();
	}
	foreach(i; 0 .. 4) {
		f.internetEmoji();
	}
	foreach(i; 0 .. 4) {
		f.internetEmojiActivity();
	}
	foreach(i; 0 .. 4) {
		f.internetEmojiBody();
	}
	foreach(i; 0 .. 4) {
		f.internetEmojiFlag();
	}
	foreach(i; 0 .. 4) {
		f.internetEmojiFood();
	}
	foreach(i; 0 .. 4) {
		f.internetEmojiNature();
	}
	foreach(i; 0 .. 4) {
		f.internetEmojiObject();
	}
	foreach(i; 0 .. 4) {
		f.internetEmojiPerson();
	}
	foreach(i; 0 .. 4) {
		f.internetEmojiSmiley();
	}
	foreach(i; 0 .. 4) {
		f.internetEmojiSymbol();
	}
	foreach(i; 0 .. 4) {
		f.internetEmojiTravel();
	}
	foreach(i; 0 .. 4) {
		f.internetExampleEmail();
	}
	foreach(i; 0 .. 4) {
		f.internetFreeEmail();
	}
	foreach(i; 0 .. 4) {
		f.locationBuildingNumber();
	}
	foreach(i; 0 .. 4) {
		f.locationCity();
	}
	foreach(i; 0 .. 4) {
		f.locationCityName();
	}
	foreach(i; 0 .. 4) {
		f.locationCityPattern();
	}
	foreach(i; 0 .. 4) {
		f.locationCityPrefix();
	}
	foreach(i; 0 .. 4) {
		f.locationCitySuffix();
	}
	foreach(i; 0 .. 4) {
		f.locationCountry();
	}
	foreach(i; 0 .. 4) {
		f.locationCounty();
	}
	foreach(i; 0 .. 4) {
		f.locationDefaultCountry();
	}
	foreach(i; 0 .. 4) {
		f.locationDirection();
	}
	foreach(i; 0 .. 4) {
		f.locationDirectionAbbr();
	}
	foreach(i; 0 .. 4) {
		f.locationPostcode();
	}
	foreach(i; 0 .. 4) {
		f.locationSecondaryAddress();
	}
	foreach(i; 0 .. 4) {
		f.locationState();
	}
	foreach(i; 0 .. 4) {
		f.locationStateAbbr();
	}
	foreach(i; 0 .. 4) {
		f.locationStreetAddress();
	}
	foreach(i; 0 .. 4) {
		f.locationStreetName();
	}
	foreach(i; 0 .. 4) {
		f.locationStreetPattern();
	}
	foreach(i; 0 .. 4) {
		f.locationStreetSuffix();
	}
	foreach(i; 0 .. 4) {
		f.locationTimeZone();
	}
	foreach(i; 0 .. 4) {
		f.loremParagraph();
	}
	foreach(i; 0 .. 4) {
		f.loremParagraphs();
	}
	foreach(i; 0 .. 4) {
		f.loremSentance();
	}
	foreach(i; 0 .. 4) {
		f.loremSentances();
	}
	foreach(i; 0 .. 4) {
		f.loremText();
	}
	foreach(i; 0 .. 4) {
		f.loremWords();
	}
	foreach(i; 0 .. 4) {
		f.musicGenre();
	}
	foreach(i; 0 .. 4) {
		f.musicSongName();
	}
	foreach(i; 0 .. 4) {
		f.personBioPart();
	}
	foreach(i; 0 .. 4) {
		f.personBioPattern();
	}
	foreach(i; 0 .. 4) {
		f.personBioSupporter();
	}
	foreach(i; 0 .. 4) {
		f.personFemaleFirstName();
	}
	foreach(i; 0 .. 4) {
		f.personFemaleMiddleName();
	}
	foreach(i; 0 .. 4) {
		f.personFemalePrefix();
	}
	foreach(i; 0 .. 4) {
		f.personFirstName();
	}
	foreach(i; 0 .. 4) {
		f.personGender();
	}
	foreach(i; 0 .. 4) {
		f.personJobArea();
	}
	foreach(i; 0 .. 4) {
		f.personJobDescriptor();
	}
	foreach(i; 0 .. 4) {
		f.personJobTitlePattern();
	}
	foreach(i; 0 .. 4) {
		f.personJobType();
	}
	foreach(i; 0 .. 4) {
		f.personLastName();
	}
	foreach(i; 0 .. 4) {
		f.personLastNamePattern();
	}
	foreach(i; 0 .. 4) {
		f.personMaleFirstName();
	}
	foreach(i; 0 .. 4) {
		f.personMaleMiddleName();
	}
	foreach(i; 0 .. 4) {
		f.personMalePrefix();
	}
	foreach(i; 0 .. 4) {
		f.personMiddleName();
	}
	foreach(i; 0 .. 4) {
		f.personName();
	}
	foreach(i; 0 .. 4) {
		f.personPrefix();
	}
	foreach(i; 0 .. 4) {
		f.personSex();
	}
	foreach(i; 0 .. 4) {
		f.personSuffix();
	}
	foreach(i; 0 .. 4) {
		f.personTitleDescriptor();
	}
	foreach(i; 0 .. 4) {
		f.personTitleJob();
	}
	foreach(i; 0 .. 4) {
		f.personTitleLevel();
	}
	foreach(i; 0 .. 4) {
		f.personWesternZodiacSign();
	}
	foreach(i; 0 .. 4) {
		f.phoneNumber();
	}
	foreach(i; 0 .. 4) {
		f.phoneNumberFormats();
	}
	foreach(i; 0 .. 4) {
		f.scienceChemicalElement();
	}
	foreach(i; 0 .. 4) {
		f.scienceUnit();
	}
	foreach(i; 0 .. 4) {
		f.systemDirectoryPaths();
	}
	foreach(i; 0 .. 4) {
		f.teamCreature();
	}
	foreach(i; 0 .. 4) {
		f.teamName();
	}
	foreach(i; 0 .. 4) {
		f.vehicleBicycleType();
	}
	foreach(i; 0 .. 4) {
		f.vehicleFuel();
	}
	foreach(i; 0 .. 4) {
		f.vehicleManufacturer();
	}
	foreach(i; 0 .. 4) {
		f.vehicleModel();
	}
	foreach(i; 0 .. 4) {
		f.vehicleType();
	}
	foreach(i; 0 .. 4) {
		f.wordAdjective();
	}
	foreach(i; 0 .. 4) {
		f.wordAdverb();
	}
	foreach(i; 0 .. 4) {
		f.wordConjunction();
	}
	foreach(i; 0 .. 4) {
		f.wordInterjection();
	}
	foreach(i; 0 .. 4) {
		f.wordNoun();
	}
	foreach(i; 0 .. 4) {
		f.wordPreposition();
	}
	foreach(i; 0 .. 4) {
		f.wordVerb();
	}
}

unittest {
	auto f = new Faker_yo_ng(13);

	foreach(i; 0 .. 4) {
		f.airlineAirline();
	}
	foreach(i; 0 .. 4) {
		f.airlineAirplane();
	}
	foreach(i; 0 .. 4) {
		f.airlineAirport();
	}
	foreach(i; 0 .. 4) {
		f.animalBear();
	}
	foreach(i; 0 .. 4) {
		f.animalBird();
	}
	foreach(i; 0 .. 4) {
		f.animalCat();
	}
	foreach(i; 0 .. 4) {
		f.animalCetacean();
	}
	foreach(i; 0 .. 4) {
		f.animalCow();
	}
	foreach(i; 0 .. 4) {
		f.animalCrocodilia();
	}
	foreach(i; 0 .. 4) {
		f.animalDog();
	}
	foreach(i; 0 .. 4) {
		f.animalFish();
	}
	foreach(i; 0 .. 4) {
		f.animalHorse();
	}
	foreach(i; 0 .. 4) {
		f.animalInsect();
	}
	foreach(i; 0 .. 4) {
		f.animalLion();
	}
	foreach(i; 0 .. 4) {
		f.animalRabbit();
	}
	foreach(i; 0 .. 4) {
		f.animalRodent();
	}
	foreach(i; 0 .. 4) {
		f.animalSnake();
	}
	foreach(i; 0 .. 4) {
		f.appAuthor();
	}
	foreach(i; 0 .. 4) {
		f.appName();
	}
	foreach(i; 0 .. 4) {
		f.appVersion();
	}
	foreach(i; 0 .. 4) {
		f.cellPhoneFormats();
	}
	foreach(i; 0 .. 4) {
		f.commerceDepartment();
	}
	foreach(i; 0 .. 4) {
		f.commerceProductDescription();
	}
	foreach(i; 0 .. 4) {
		f.commerceProductNameAdjective();
	}
	foreach(i; 0 .. 4) {
		f.commerceProductNameMaterial();
	}
	foreach(i; 0 .. 4) {
		f.commerceProductNameProduct();
	}
	foreach(i; 0 .. 4) {
		f.companyAdjective();
	}
	foreach(i; 0 .. 4) {
		f.companyBuzzAdjective();
	}
	foreach(i; 0 .. 4) {
		f.companyBuzzNoun();
	}
	foreach(i; 0 .. 4) {
		f.companyBuzzVerb();
	}
	foreach(i; 0 .. 4) {
		f.companyCatchPhrase();
	}
	foreach(i; 0 .. 4) {
		f.companyDescriptor();
	}
	foreach(i; 0 .. 4) {
		f.companyName();
	}
	foreach(i; 0 .. 4) {
		f.companyNamePattern();
	}
	foreach(i; 0 .. 4) {
		f.companyNoun();
	}
	foreach(i; 0 .. 4) {
		f.companySuffix();
	}
	foreach(i; 0 .. 4) {
		f.databaseCollation();
	}
	foreach(i; 0 .. 4) {
		f.databaseColumn();
	}
	foreach(i; 0 .. 4) {
		f.databaseEngine();
	}
	foreach(i; 0 .. 4) {
		f.databaseType();
	}
	foreach(i; 0 .. 4) {
		f.dateMonthAbbr();
	}
	foreach(i; 0 .. 4) {
		f.dateMonthWide();
	}
	foreach(i; 0 .. 4) {
		f.dateWeekdayAbbr();
	}
	foreach(i; 0 .. 4) {
		f.dateWeekdayWide();
	}
	foreach(i; 0 .. 4) {
		f.financeAccountType();
	}
	foreach(i; 0 .. 4) {
		f.financeCreditCardAmericanExpress();
	}
	foreach(i; 0 .. 4) {
		f.financeCreditCardDinersClub();
	}
	foreach(i; 0 .. 4) {
		f.financeCreditCardDiscover();
	}
	foreach(i; 0 .. 4) {
		f.financeCreditCardJcb();
	}
	foreach(i; 0 .. 4) {
		f.financeCreditCardMaestro();
	}
	foreach(i; 0 .. 4) {
		f.financeCreditCardMastercard();
	}
	foreach(i; 0 .. 4) {
		f.financeCreditCardVisa();
	}
	foreach(i; 0 .. 4) {
		f.financeCurrency();
	}
	foreach(i; 0 .. 4) {
		f.financeTransactionType();
	}
	foreach(i; 0 .. 4) {
		f.hackerAbbreviation();
	}
	foreach(i; 0 .. 4) {
		f.hackerAdjective();
	}
	foreach(i; 0 .. 4) {
		f.hackerIngverb();
	}
	foreach(i; 0 .. 4) {
		f.hackerNoun();
	}
	foreach(i; 0 .. 4) {
		f.hackerPhrase();
	}
	foreach(i; 0 .. 4) {
		f.hackerVerb();
	}
	foreach(i; 0 .. 4) {
		f.internetDomainSuffix();
	}
	foreach(i; 0 .. 4) {
		f.internetEmoji();
	}
	foreach(i; 0 .. 4) {
		f.internetEmojiActivity();
	}
	foreach(i; 0 .. 4) {
		f.internetEmojiBody();
	}
	foreach(i; 0 .. 4) {
		f.internetEmojiFlag();
	}
	foreach(i; 0 .. 4) {
		f.internetEmojiFood();
	}
	foreach(i; 0 .. 4) {
		f.internetEmojiNature();
	}
	foreach(i; 0 .. 4) {
		f.internetEmojiObject();
	}
	foreach(i; 0 .. 4) {
		f.internetEmojiPerson();
	}
	foreach(i; 0 .. 4) {
		f.internetEmojiSmiley();
	}
	foreach(i; 0 .. 4) {
		f.internetEmojiSymbol();
	}
	foreach(i; 0 .. 4) {
		f.internetEmojiTravel();
	}
	foreach(i; 0 .. 4) {
		f.internetExampleEmail();
	}
	foreach(i; 0 .. 4) {
		f.internetFreeEmail();
	}
	foreach(i; 0 .. 4) {
		f.locationBuildingNumber();
	}
	foreach(i; 0 .. 4) {
		f.locationCity();
	}
	foreach(i; 0 .. 4) {
		f.locationCityName();
	}
	foreach(i; 0 .. 4) {
		f.locationCityPattern();
	}
	foreach(i; 0 .. 4) {
		f.locationCityPrefix();
	}
	foreach(i; 0 .. 4) {
		f.locationCitySuffix();
	}
	foreach(i; 0 .. 4) {
		f.locationCountry();
	}
	foreach(i; 0 .. 4) {
		f.locationCounty();
	}
	foreach(i; 0 .. 4) {
		f.locationDefaultCountry();
	}
	foreach(i; 0 .. 4) {
		f.locationDirection();
	}
	foreach(i; 0 .. 4) {
		f.locationDirectionAbbr();
	}
	foreach(i; 0 .. 4) {
		f.locationPostcode();
	}
	foreach(i; 0 .. 4) {
		f.locationSecondaryAddress();
	}
	foreach(i; 0 .. 4) {
		f.locationState();
	}
	foreach(i; 0 .. 4) {
		f.locationStateAbbr();
	}
	foreach(i; 0 .. 4) {
		f.locationStreetAddress();
	}
	foreach(i; 0 .. 4) {
		f.locationStreetName();
	}
	foreach(i; 0 .. 4) {
		f.locationStreetPattern();
	}
	foreach(i; 0 .. 4) {
		f.locationStreetSuffix();
	}
	foreach(i; 0 .. 4) {
		f.locationTimeZone();
	}
	foreach(i; 0 .. 4) {
		f.loremParagraph();
	}
	foreach(i; 0 .. 4) {
		f.loremParagraphs();
	}
	foreach(i; 0 .. 4) {
		f.loremSentance();
	}
	foreach(i; 0 .. 4) {
		f.loremSentances();
	}
	foreach(i; 0 .. 4) {
		f.loremText();
	}
	foreach(i; 0 .. 4) {
		f.loremWords();
	}
	foreach(i; 0 .. 4) {
		f.musicGenre();
	}
	foreach(i; 0 .. 4) {
		f.musicSongName();
	}
	foreach(i; 0 .. 4) {
		f.personBioPart();
	}
	foreach(i; 0 .. 4) {
		f.personBioPattern();
	}
	foreach(i; 0 .. 4) {
		f.personBioSupporter();
	}
	foreach(i; 0 .. 4) {
		f.personFemaleFirstName();
	}
	foreach(i; 0 .. 4) {
		f.personFemaleMiddleName();
	}
	foreach(i; 0 .. 4) {
		f.personFemalePrefix();
	}
	foreach(i; 0 .. 4) {
		f.personFirstName();
	}
	foreach(i; 0 .. 4) {
		f.personGender();
	}
	foreach(i; 0 .. 4) {
		f.personJobArea();
	}
	foreach(i; 0 .. 4) {
		f.personJobDescriptor();
	}
	foreach(i; 0 .. 4) {
		f.personJobTitlePattern();
	}
	foreach(i; 0 .. 4) {
		f.personJobType();
	}
	foreach(i; 0 .. 4) {
		f.personLastName();
	}
	foreach(i; 0 .. 4) {
		f.personLastNamePattern();
	}
	foreach(i; 0 .. 4) {
		f.personMaleFirstName();
	}
	foreach(i; 0 .. 4) {
		f.personMaleMiddleName();
	}
	foreach(i; 0 .. 4) {
		f.personMalePrefix();
	}
	foreach(i; 0 .. 4) {
		f.personMiddleName();
	}
	foreach(i; 0 .. 4) {
		f.personName();
	}
	foreach(i; 0 .. 4) {
		f.personPrefix();
	}
	foreach(i; 0 .. 4) {
		f.personSex();
	}
	foreach(i; 0 .. 4) {
		f.personSuffix();
	}
	foreach(i; 0 .. 4) {
		f.personTitleDescriptor();
	}
	foreach(i; 0 .. 4) {
		f.personTitleJob();
	}
	foreach(i; 0 .. 4) {
		f.personTitleLevel();
	}
	foreach(i; 0 .. 4) {
		f.personWesternZodiacSign();
	}
	foreach(i; 0 .. 4) {
		f.phoneNumber();
	}
	foreach(i; 0 .. 4) {
		f.phoneNumberFormats();
	}
	foreach(i; 0 .. 4) {
		f.scienceChemicalElement();
	}
	foreach(i; 0 .. 4) {
		f.scienceUnit();
	}
	foreach(i; 0 .. 4) {
		f.systemDirectoryPaths();
	}
	foreach(i; 0 .. 4) {
		f.teamCreature();
	}
	foreach(i; 0 .. 4) {
		f.teamName();
	}
	foreach(i; 0 .. 4) {
		f.vehicleBicycleType();
	}
	foreach(i; 0 .. 4) {
		f.vehicleFuel();
	}
	foreach(i; 0 .. 4) {
		f.vehicleManufacturer();
	}
	foreach(i; 0 .. 4) {
		f.vehicleModel();
	}
	foreach(i; 0 .. 4) {
		f.vehicleType();
	}
	foreach(i; 0 .. 4) {
		f.wordAdjective();
	}
	foreach(i; 0 .. 4) {
		f.wordAdverb();
	}
	foreach(i; 0 .. 4) {
		f.wordConjunction();
	}
	foreach(i; 0 .. 4) {
		f.wordInterjection();
	}
	foreach(i; 0 .. 4) {
		f.wordNoun();
	}
	foreach(i; 0 .. 4) {
		f.wordPreposition();
	}
	foreach(i; 0 .. 4) {
		f.wordVerb();
	}
}

unittest {
	auto f = new Faker_zh_cn(13);

	foreach(i; 0 .. 4) {
		f.airlineAirline();
	}
	foreach(i; 0 .. 4) {
		f.airlineAirplane();
	}
	foreach(i; 0 .. 4) {
		f.airlineAirport();
	}
	foreach(i; 0 .. 4) {
		f.animalBear();
	}
	foreach(i; 0 .. 4) {
		f.animalBird();
	}
	foreach(i; 0 .. 4) {
		f.animalCat();
	}
	foreach(i; 0 .. 4) {
		f.animalCetacean();
	}
	foreach(i; 0 .. 4) {
		f.animalCow();
	}
	foreach(i; 0 .. 4) {
		f.animalCrocodilia();
	}
	foreach(i; 0 .. 4) {
		f.animalDog();
	}
	foreach(i; 0 .. 4) {
		f.animalFish();
	}
	foreach(i; 0 .. 4) {
		f.animalHorse();
	}
	foreach(i; 0 .. 4) {
		f.animalInsect();
	}
	foreach(i; 0 .. 4) {
		f.animalLion();
	}
	foreach(i; 0 .. 4) {
		f.animalRabbit();
	}
	foreach(i; 0 .. 4) {
		f.animalRodent();
	}
	foreach(i; 0 .. 4) {
		f.animalSnake();
	}
	foreach(i; 0 .. 4) {
		f.appAuthor();
	}
	foreach(i; 0 .. 4) {
		f.appName();
	}
	foreach(i; 0 .. 4) {
		f.appVersion();
	}
	foreach(i; 0 .. 4) {
		f.cellPhoneFormats();
	}
	foreach(i; 0 .. 4) {
		f.commerceDepartment();
	}
	foreach(i; 0 .. 4) {
		f.commerceProductDescription();
	}
	foreach(i; 0 .. 4) {
		f.commerceProductNameAdjective();
	}
	foreach(i; 0 .. 4) {
		f.commerceProductNameMaterial();
	}
	foreach(i; 0 .. 4) {
		f.commerceProductNameProduct();
	}
	foreach(i; 0 .. 4) {
		f.companyAdjective();
	}
	foreach(i; 0 .. 4) {
		f.companyBuzzAdjective();
	}
	foreach(i; 0 .. 4) {
		f.companyBuzzNoun();
	}
	foreach(i; 0 .. 4) {
		f.companyBuzzVerb();
	}
	foreach(i; 0 .. 4) {
		f.companyCatchPhrase();
	}
	foreach(i; 0 .. 4) {
		f.companyDescriptor();
	}
	foreach(i; 0 .. 4) {
		f.companyName();
	}
	foreach(i; 0 .. 4) {
		f.companyNamePattern();
	}
	foreach(i; 0 .. 4) {
		f.companyNoun();
	}
	foreach(i; 0 .. 4) {
		f.companySuffix();
	}
	foreach(i; 0 .. 4) {
		f.databaseCollation();
	}
	foreach(i; 0 .. 4) {
		f.databaseColumn();
	}
	foreach(i; 0 .. 4) {
		f.databaseEngine();
	}
	foreach(i; 0 .. 4) {
		f.databaseType();
	}
	foreach(i; 0 .. 4) {
		f.dateMonthAbbr();
	}
	foreach(i; 0 .. 4) {
		f.dateMonthWide();
	}
	foreach(i; 0 .. 4) {
		f.dateWeekdayAbbr();
	}
	foreach(i; 0 .. 4) {
		f.dateWeekdayWide();
	}
	foreach(i; 0 .. 4) {
		f.financeAccountType();
	}
	foreach(i; 0 .. 4) {
		f.financeCreditCardAmericanExpress();
	}
	foreach(i; 0 .. 4) {
		f.financeCreditCardDinersClub();
	}
	foreach(i; 0 .. 4) {
		f.financeCreditCardDiscover();
	}
	foreach(i; 0 .. 4) {
		f.financeCreditCardJcb();
	}
	foreach(i; 0 .. 4) {
		f.financeCreditCardMaestro();
	}
	foreach(i; 0 .. 4) {
		f.financeCreditCardMastercard();
	}
	foreach(i; 0 .. 4) {
		f.financeCreditCardVisa();
	}
	foreach(i; 0 .. 4) {
		f.financeCurrency();
	}
	foreach(i; 0 .. 4) {
		f.financeTransactionType();
	}
	foreach(i; 0 .. 4) {
		f.hackerAbbreviation();
	}
	foreach(i; 0 .. 4) {
		f.hackerAdjective();
	}
	foreach(i; 0 .. 4) {
		f.hackerIngverb();
	}
	foreach(i; 0 .. 4) {
		f.hackerNoun();
	}
	foreach(i; 0 .. 4) {
		f.hackerPhrase();
	}
	foreach(i; 0 .. 4) {
		f.hackerVerb();
	}
	foreach(i; 0 .. 4) {
		f.internetDomainSuffix();
	}
	foreach(i; 0 .. 4) {
		f.internetEmoji();
	}
	foreach(i; 0 .. 4) {
		f.internetEmojiActivity();
	}
	foreach(i; 0 .. 4) {
		f.internetEmojiBody();
	}
	foreach(i; 0 .. 4) {
		f.internetEmojiFlag();
	}
	foreach(i; 0 .. 4) {
		f.internetEmojiFood();
	}
	foreach(i; 0 .. 4) {
		f.internetEmojiNature();
	}
	foreach(i; 0 .. 4) {
		f.internetEmojiObject();
	}
	foreach(i; 0 .. 4) {
		f.internetEmojiPerson();
	}
	foreach(i; 0 .. 4) {
		f.internetEmojiSmiley();
	}
	foreach(i; 0 .. 4) {
		f.internetEmojiSymbol();
	}
	foreach(i; 0 .. 4) {
		f.internetEmojiTravel();
	}
	foreach(i; 0 .. 4) {
		f.internetExampleEmail();
	}
	foreach(i; 0 .. 4) {
		f.internetFreeEmail();
	}
	foreach(i; 0 .. 4) {
		f.locationBuildingNumber();
	}
	foreach(i; 0 .. 4) {
		f.locationCity();
	}
	foreach(i; 0 .. 4) {
		f.locationCityName();
	}
	foreach(i; 0 .. 4) {
		f.locationCityPattern();
	}
	foreach(i; 0 .. 4) {
		f.locationCityPrefix();
	}
	foreach(i; 0 .. 4) {
		f.locationCitySuffix();
	}
	foreach(i; 0 .. 4) {
		f.locationCountry();
	}
	foreach(i; 0 .. 4) {
		f.locationCounty();
	}
	foreach(i; 0 .. 4) {
		f.locationDefaultCountry();
	}
	foreach(i; 0 .. 4) {
		f.locationDirection();
	}
	foreach(i; 0 .. 4) {
		f.locationDirectionAbbr();
	}
	foreach(i; 0 .. 4) {
		f.locationPostcode();
	}
	foreach(i; 0 .. 4) {
		f.locationSecondaryAddress();
	}
	foreach(i; 0 .. 4) {
		f.locationState();
	}
	foreach(i; 0 .. 4) {
		f.locationStateAbbr();
	}
	foreach(i; 0 .. 4) {
		f.locationStreetAddress();
	}
	foreach(i; 0 .. 4) {
		f.locationStreetName();
	}
	foreach(i; 0 .. 4) {
		f.locationStreetPattern();
	}
	foreach(i; 0 .. 4) {
		f.locationStreetSuffix();
	}
	foreach(i; 0 .. 4) {
		f.locationTimeZone();
	}
	foreach(i; 0 .. 4) {
		f.loremParagraph();
	}
	foreach(i; 0 .. 4) {
		f.loremParagraphs();
	}
	foreach(i; 0 .. 4) {
		f.loremSentance();
	}
	foreach(i; 0 .. 4) {
		f.loremSentances();
	}
	foreach(i; 0 .. 4) {
		f.loremText();
	}
	foreach(i; 0 .. 4) {
		f.loremWords();
	}
	foreach(i; 0 .. 4) {
		f.musicGenre();
	}
	foreach(i; 0 .. 4) {
		f.musicSongName();
	}
	foreach(i; 0 .. 4) {
		f.personBioPart();
	}
	foreach(i; 0 .. 4) {
		f.personBioPattern();
	}
	foreach(i; 0 .. 4) {
		f.personBioSupporter();
	}
	foreach(i; 0 .. 4) {
		f.personFemaleFirstName();
	}
	foreach(i; 0 .. 4) {
		f.personFemaleMiddleName();
	}
	foreach(i; 0 .. 4) {
		f.personFemalePrefix();
	}
	foreach(i; 0 .. 4) {
		f.personFirstName();
	}
	foreach(i; 0 .. 4) {
		f.personGender();
	}
	foreach(i; 0 .. 4) {
		f.personJobArea();
	}
	foreach(i; 0 .. 4) {
		f.personJobDescriptor();
	}
	foreach(i; 0 .. 4) {
		f.personJobTitlePattern();
	}
	foreach(i; 0 .. 4) {
		f.personJobType();
	}
	foreach(i; 0 .. 4) {
		f.personLastName();
	}
	foreach(i; 0 .. 4) {
		f.personLastNamePattern();
	}
	foreach(i; 0 .. 4) {
		f.personMaleFirstName();
	}
	foreach(i; 0 .. 4) {
		f.personMaleMiddleName();
	}
	foreach(i; 0 .. 4) {
		f.personMalePrefix();
	}
	foreach(i; 0 .. 4) {
		f.personMiddleName();
	}
	foreach(i; 0 .. 4) {
		f.personName();
	}
	foreach(i; 0 .. 4) {
		f.personPrefix();
	}
	foreach(i; 0 .. 4) {
		f.personSex();
	}
	foreach(i; 0 .. 4) {
		f.personSuffix();
	}
	foreach(i; 0 .. 4) {
		f.personTitleDescriptor();
	}
	foreach(i; 0 .. 4) {
		f.personTitleJob();
	}
	foreach(i; 0 .. 4) {
		f.personTitleLevel();
	}
	foreach(i; 0 .. 4) {
		f.personWesternZodiacSign();
	}
	foreach(i; 0 .. 4) {
		f.phoneNumber();
	}
	foreach(i; 0 .. 4) {
		f.phoneNumberFormats();
	}
	foreach(i; 0 .. 4) {
		f.scienceChemicalElement();
	}
	foreach(i; 0 .. 4) {
		f.scienceUnit();
	}
	foreach(i; 0 .. 4) {
		f.systemDirectoryPaths();
	}
	foreach(i; 0 .. 4) {
		f.teamCreature();
	}
	foreach(i; 0 .. 4) {
		f.teamName();
	}
	foreach(i; 0 .. 4) {
		f.vehicleBicycleType();
	}
	foreach(i; 0 .. 4) {
		f.vehicleFuel();
	}
	foreach(i; 0 .. 4) {
		f.vehicleManufacturer();
	}
	foreach(i; 0 .. 4) {
		f.vehicleModel();
	}
	foreach(i; 0 .. 4) {
		f.vehicleType();
	}
	foreach(i; 0 .. 4) {
		f.wordAdjective();
	}
	foreach(i; 0 .. 4) {
		f.wordAdverb();
	}
	foreach(i; 0 .. 4) {
		f.wordConjunction();
	}
	foreach(i; 0 .. 4) {
		f.wordInterjection();
	}
	foreach(i; 0 .. 4) {
		f.wordNoun();
	}
	foreach(i; 0 .. 4) {
		f.wordPreposition();
	}
	foreach(i; 0 .. 4) {
		f.wordVerb();
	}
}

unittest {
	auto f = new Faker_zh_tw(13);

	foreach(i; 0 .. 4) {
		f.airlineAirline();
	}
	foreach(i; 0 .. 4) {
		f.airlineAirplane();
	}
	foreach(i; 0 .. 4) {
		f.airlineAirport();
	}
	foreach(i; 0 .. 4) {
		f.animalBear();
	}
	foreach(i; 0 .. 4) {
		f.animalBird();
	}
	foreach(i; 0 .. 4) {
		f.animalCat();
	}
	foreach(i; 0 .. 4) {
		f.animalCetacean();
	}
	foreach(i; 0 .. 4) {
		f.animalCow();
	}
	foreach(i; 0 .. 4) {
		f.animalCrocodilia();
	}
	foreach(i; 0 .. 4) {
		f.animalDog();
	}
	foreach(i; 0 .. 4) {
		f.animalFish();
	}
	foreach(i; 0 .. 4) {
		f.animalHorse();
	}
	foreach(i; 0 .. 4) {
		f.animalInsect();
	}
	foreach(i; 0 .. 4) {
		f.animalLion();
	}
	foreach(i; 0 .. 4) {
		f.animalRabbit();
	}
	foreach(i; 0 .. 4) {
		f.animalRodent();
	}
	foreach(i; 0 .. 4) {
		f.animalSnake();
	}
	foreach(i; 0 .. 4) {
		f.appAuthor();
	}
	foreach(i; 0 .. 4) {
		f.appName();
	}
	foreach(i; 0 .. 4) {
		f.appVersion();
	}
	foreach(i; 0 .. 4) {
		f.cellPhoneFormats();
	}
	foreach(i; 0 .. 4) {
		f.commerceDepartment();
	}
	foreach(i; 0 .. 4) {
		f.commerceProductDescription();
	}
	foreach(i; 0 .. 4) {
		f.commerceProductNameAdjective();
	}
	foreach(i; 0 .. 4) {
		f.commerceProductNameMaterial();
	}
	foreach(i; 0 .. 4) {
		f.commerceProductNameProduct();
	}
	foreach(i; 0 .. 4) {
		f.companyAdjective();
	}
	foreach(i; 0 .. 4) {
		f.companyBuzzAdjective();
	}
	foreach(i; 0 .. 4) {
		f.companyBuzzNoun();
	}
	foreach(i; 0 .. 4) {
		f.companyBuzzVerb();
	}
	foreach(i; 0 .. 4) {
		f.companyCatchPhrase();
	}
	foreach(i; 0 .. 4) {
		f.companyDescriptor();
	}
	foreach(i; 0 .. 4) {
		f.companyName();
	}
	foreach(i; 0 .. 4) {
		f.companyNamePattern();
	}
	foreach(i; 0 .. 4) {
		f.companyNoun();
	}
	foreach(i; 0 .. 4) {
		f.companySuffix();
	}
	foreach(i; 0 .. 4) {
		f.databaseCollation();
	}
	foreach(i; 0 .. 4) {
		f.databaseColumn();
	}
	foreach(i; 0 .. 4) {
		f.databaseEngine();
	}
	foreach(i; 0 .. 4) {
		f.databaseType();
	}
	foreach(i; 0 .. 4) {
		f.dateMonthAbbr();
	}
	foreach(i; 0 .. 4) {
		f.dateMonthWide();
	}
	foreach(i; 0 .. 4) {
		f.dateWeekdayAbbr();
	}
	foreach(i; 0 .. 4) {
		f.dateWeekdayWide();
	}
	foreach(i; 0 .. 4) {
		f.financeAccountType();
	}
	foreach(i; 0 .. 4) {
		f.financeCreditCardAmericanExpress();
	}
	foreach(i; 0 .. 4) {
		f.financeCreditCardDinersClub();
	}
	foreach(i; 0 .. 4) {
		f.financeCreditCardDiscover();
	}
	foreach(i; 0 .. 4) {
		f.financeCreditCardJcb();
	}
	foreach(i; 0 .. 4) {
		f.financeCreditCardMaestro();
	}
	foreach(i; 0 .. 4) {
		f.financeCreditCardMastercard();
	}
	foreach(i; 0 .. 4) {
		f.financeCreditCardVisa();
	}
	foreach(i; 0 .. 4) {
		f.financeCurrency();
	}
	foreach(i; 0 .. 4) {
		f.financeTransactionType();
	}
	foreach(i; 0 .. 4) {
		f.hackerAbbreviation();
	}
	foreach(i; 0 .. 4) {
		f.hackerAdjective();
	}
	foreach(i; 0 .. 4) {
		f.hackerIngverb();
	}
	foreach(i; 0 .. 4) {
		f.hackerNoun();
	}
	foreach(i; 0 .. 4) {
		f.hackerPhrase();
	}
	foreach(i; 0 .. 4) {
		f.hackerVerb();
	}
	foreach(i; 0 .. 4) {
		f.internetDomainSuffix();
	}
	foreach(i; 0 .. 4) {
		f.internetEmoji();
	}
	foreach(i; 0 .. 4) {
		f.internetEmojiActivity();
	}
	foreach(i; 0 .. 4) {
		f.internetEmojiBody();
	}
	foreach(i; 0 .. 4) {
		f.internetEmojiFlag();
	}
	foreach(i; 0 .. 4) {
		f.internetEmojiFood();
	}
	foreach(i; 0 .. 4) {
		f.internetEmojiNature();
	}
	foreach(i; 0 .. 4) {
		f.internetEmojiObject();
	}
	foreach(i; 0 .. 4) {
		f.internetEmojiPerson();
	}
	foreach(i; 0 .. 4) {
		f.internetEmojiSmiley();
	}
	foreach(i; 0 .. 4) {
		f.internetEmojiSymbol();
	}
	foreach(i; 0 .. 4) {
		f.internetEmojiTravel();
	}
	foreach(i; 0 .. 4) {
		f.internetExampleEmail();
	}
	foreach(i; 0 .. 4) {
		f.internetFreeEmail();
	}
	foreach(i; 0 .. 4) {
		f.locationBuildingNumber();
	}
	foreach(i; 0 .. 4) {
		f.locationCity();
	}
	foreach(i; 0 .. 4) {
		f.locationCityName();
	}
	foreach(i; 0 .. 4) {
		f.locationCityPattern();
	}
	foreach(i; 0 .. 4) {
		f.locationCityPrefix();
	}
	foreach(i; 0 .. 4) {
		f.locationCitySuffix();
	}
	foreach(i; 0 .. 4) {
		f.locationCountry();
	}
	foreach(i; 0 .. 4) {
		f.locationCounty();
	}
	foreach(i; 0 .. 4) {
		f.locationDefaultCountry();
	}
	foreach(i; 0 .. 4) {
		f.locationDirection();
	}
	foreach(i; 0 .. 4) {
		f.locationDirectionAbbr();
	}
	foreach(i; 0 .. 4) {
		f.locationPostcode();
	}
	foreach(i; 0 .. 4) {
		f.locationSecondaryAddress();
	}
	foreach(i; 0 .. 4) {
		f.locationState();
	}
	foreach(i; 0 .. 4) {
		f.locationStateAbbr();
	}
	foreach(i; 0 .. 4) {
		f.locationStreetAddress();
	}
	foreach(i; 0 .. 4) {
		f.locationStreetName();
	}
	foreach(i; 0 .. 4) {
		f.locationStreetPattern();
	}
	foreach(i; 0 .. 4) {
		f.locationStreetSuffix();
	}
	foreach(i; 0 .. 4) {
		f.locationTimeZone();
	}
	foreach(i; 0 .. 4) {
		f.loremParagraph();
	}
	foreach(i; 0 .. 4) {
		f.loremParagraphs();
	}
	foreach(i; 0 .. 4) {
		f.loremSentance();
	}
	foreach(i; 0 .. 4) {
		f.loremSentances();
	}
	foreach(i; 0 .. 4) {
		f.loremText();
	}
	foreach(i; 0 .. 4) {
		f.loremWords();
	}
	foreach(i; 0 .. 4) {
		f.musicGenre();
	}
	foreach(i; 0 .. 4) {
		f.musicSongName();
	}
	foreach(i; 0 .. 4) {
		f.personBioPart();
	}
	foreach(i; 0 .. 4) {
		f.personBioPattern();
	}
	foreach(i; 0 .. 4) {
		f.personBioSupporter();
	}
	foreach(i; 0 .. 4) {
		f.personFemaleFirstName();
	}
	foreach(i; 0 .. 4) {
		f.personFemaleMiddleName();
	}
	foreach(i; 0 .. 4) {
		f.personFemalePrefix();
	}
	foreach(i; 0 .. 4) {
		f.personFirstName();
	}
	foreach(i; 0 .. 4) {
		f.personGender();
	}
	foreach(i; 0 .. 4) {
		f.personJobArea();
	}
	foreach(i; 0 .. 4) {
		f.personJobDescriptor();
	}
	foreach(i; 0 .. 4) {
		f.personJobTitlePattern();
	}
	foreach(i; 0 .. 4) {
		f.personJobType();
	}
	foreach(i; 0 .. 4) {
		f.personLastName();
	}
	foreach(i; 0 .. 4) {
		f.personLastNamePattern();
	}
	foreach(i; 0 .. 4) {
		f.personMaleFirstName();
	}
	foreach(i; 0 .. 4) {
		f.personMaleMiddleName();
	}
	foreach(i; 0 .. 4) {
		f.personMalePrefix();
	}
	foreach(i; 0 .. 4) {
		f.personMiddleName();
	}
	foreach(i; 0 .. 4) {
		f.personName();
	}
	foreach(i; 0 .. 4) {
		f.personPrefix();
	}
	foreach(i; 0 .. 4) {
		f.personSex();
	}
	foreach(i; 0 .. 4) {
		f.personSuffix();
	}
	foreach(i; 0 .. 4) {
		f.personTitleDescriptor();
	}
	foreach(i; 0 .. 4) {
		f.personTitleJob();
	}
	foreach(i; 0 .. 4) {
		f.personTitleLevel();
	}
	foreach(i; 0 .. 4) {
		f.personWesternZodiacSign();
	}
	foreach(i; 0 .. 4) {
		f.phoneNumber();
	}
	foreach(i; 0 .. 4) {
		f.phoneNumberFormats();
	}
	foreach(i; 0 .. 4) {
		f.scienceChemicalElement();
	}
	foreach(i; 0 .. 4) {
		f.scienceUnit();
	}
	foreach(i; 0 .. 4) {
		f.systemDirectoryPaths();
	}
	foreach(i; 0 .. 4) {
		f.teamCreature();
	}
	foreach(i; 0 .. 4) {
		f.teamName();
	}
	foreach(i; 0 .. 4) {
		f.vehicleBicycleType();
	}
	foreach(i; 0 .. 4) {
		f.vehicleFuel();
	}
	foreach(i; 0 .. 4) {
		f.vehicleManufacturer();
	}
	foreach(i; 0 .. 4) {
		f.vehicleModel();
	}
	foreach(i; 0 .. 4) {
		f.vehicleType();
	}
	foreach(i; 0 .. 4) {
		f.wordAdjective();
	}
	foreach(i; 0 .. 4) {
		f.wordAdverb();
	}
	foreach(i; 0 .. 4) {
		f.wordConjunction();
	}
	foreach(i; 0 .. 4) {
		f.wordInterjection();
	}
	foreach(i; 0 .. 4) {
		f.wordNoun();
	}
	foreach(i; 0 .. 4) {
		f.wordPreposition();
	}
	foreach(i; 0 .. 4) {
		f.wordVerb();
	}
}

unittest {
	auto f = new Faker_zu_za(13);

	foreach(i; 0 .. 4) {
		f.airlineAirline();
	}
	foreach(i; 0 .. 4) {
		f.airlineAirplane();
	}
	foreach(i; 0 .. 4) {
		f.airlineAirport();
	}
	foreach(i; 0 .. 4) {
		f.animalBear();
	}
	foreach(i; 0 .. 4) {
		f.animalBird();
	}
	foreach(i; 0 .. 4) {
		f.animalCat();
	}
	foreach(i; 0 .. 4) {
		f.animalCetacean();
	}
	foreach(i; 0 .. 4) {
		f.animalCow();
	}
	foreach(i; 0 .. 4) {
		f.animalCrocodilia();
	}
	foreach(i; 0 .. 4) {
		f.animalDog();
	}
	foreach(i; 0 .. 4) {
		f.animalFish();
	}
	foreach(i; 0 .. 4) {
		f.animalHorse();
	}
	foreach(i; 0 .. 4) {
		f.animalInsect();
	}
	foreach(i; 0 .. 4) {
		f.animalLion();
	}
	foreach(i; 0 .. 4) {
		f.animalRabbit();
	}
	foreach(i; 0 .. 4) {
		f.animalRodent();
	}
	foreach(i; 0 .. 4) {
		f.animalSnake();
	}
	foreach(i; 0 .. 4) {
		f.appAuthor();
	}
	foreach(i; 0 .. 4) {
		f.appName();
	}
	foreach(i; 0 .. 4) {
		f.appVersion();
	}
	foreach(i; 0 .. 4) {
		f.cellPhoneFormats();
	}
	foreach(i; 0 .. 4) {
		f.commerceDepartment();
	}
	foreach(i; 0 .. 4) {
		f.commerceProductDescription();
	}
	foreach(i; 0 .. 4) {
		f.commerceProductNameAdjective();
	}
	foreach(i; 0 .. 4) {
		f.commerceProductNameMaterial();
	}
	foreach(i; 0 .. 4) {
		f.commerceProductNameProduct();
	}
	foreach(i; 0 .. 4) {
		f.companyAdjective();
	}
	foreach(i; 0 .. 4) {
		f.companyBuzzAdjective();
	}
	foreach(i; 0 .. 4) {
		f.companyBuzzNoun();
	}
	foreach(i; 0 .. 4) {
		f.companyBuzzVerb();
	}
	foreach(i; 0 .. 4) {
		f.companyCatchPhrase();
	}
	foreach(i; 0 .. 4) {
		f.companyDescriptor();
	}
	foreach(i; 0 .. 4) {
		f.companyName();
	}
	foreach(i; 0 .. 4) {
		f.companyNamePattern();
	}
	foreach(i; 0 .. 4) {
		f.companyNoun();
	}
	foreach(i; 0 .. 4) {
		f.companySuffix();
	}
	foreach(i; 0 .. 4) {
		f.databaseCollation();
	}
	foreach(i; 0 .. 4) {
		f.databaseColumn();
	}
	foreach(i; 0 .. 4) {
		f.databaseEngine();
	}
	foreach(i; 0 .. 4) {
		f.databaseType();
	}
	foreach(i; 0 .. 4) {
		f.dateMonthAbbr();
	}
	foreach(i; 0 .. 4) {
		f.dateMonthWide();
	}
	foreach(i; 0 .. 4) {
		f.dateWeekdayAbbr();
	}
	foreach(i; 0 .. 4) {
		f.dateWeekdayWide();
	}
	foreach(i; 0 .. 4) {
		f.financeAccountType();
	}
	foreach(i; 0 .. 4) {
		f.financeCreditCardAmericanExpress();
	}
	foreach(i; 0 .. 4) {
		f.financeCreditCardDinersClub();
	}
	foreach(i; 0 .. 4) {
		f.financeCreditCardDiscover();
	}
	foreach(i; 0 .. 4) {
		f.financeCreditCardJcb();
	}
	foreach(i; 0 .. 4) {
		f.financeCreditCardMaestro();
	}
	foreach(i; 0 .. 4) {
		f.financeCreditCardMastercard();
	}
	foreach(i; 0 .. 4) {
		f.financeCreditCardVisa();
	}
	foreach(i; 0 .. 4) {
		f.financeCurrency();
	}
	foreach(i; 0 .. 4) {
		f.financeTransactionType();
	}
	foreach(i; 0 .. 4) {
		f.hackerAbbreviation();
	}
	foreach(i; 0 .. 4) {
		f.hackerAdjective();
	}
	foreach(i; 0 .. 4) {
		f.hackerIngverb();
	}
	foreach(i; 0 .. 4) {
		f.hackerNoun();
	}
	foreach(i; 0 .. 4) {
		f.hackerPhrase();
	}
	foreach(i; 0 .. 4) {
		f.hackerVerb();
	}
	foreach(i; 0 .. 4) {
		f.internetDomainSuffix();
	}
	foreach(i; 0 .. 4) {
		f.internetEmoji();
	}
	foreach(i; 0 .. 4) {
		f.internetEmojiActivity();
	}
	foreach(i; 0 .. 4) {
		f.internetEmojiBody();
	}
	foreach(i; 0 .. 4) {
		f.internetEmojiFlag();
	}
	foreach(i; 0 .. 4) {
		f.internetEmojiFood();
	}
	foreach(i; 0 .. 4) {
		f.internetEmojiNature();
	}
	foreach(i; 0 .. 4) {
		f.internetEmojiObject();
	}
	foreach(i; 0 .. 4) {
		f.internetEmojiPerson();
	}
	foreach(i; 0 .. 4) {
		f.internetEmojiSmiley();
	}
	foreach(i; 0 .. 4) {
		f.internetEmojiSymbol();
	}
	foreach(i; 0 .. 4) {
		f.internetEmojiTravel();
	}
	foreach(i; 0 .. 4) {
		f.internetExampleEmail();
	}
	foreach(i; 0 .. 4) {
		f.internetFreeEmail();
	}
	foreach(i; 0 .. 4) {
		f.locationBuildingNumber();
	}
	foreach(i; 0 .. 4) {
		f.locationCity();
	}
	foreach(i; 0 .. 4) {
		f.locationCityName();
	}
	foreach(i; 0 .. 4) {
		f.locationCityPattern();
	}
	foreach(i; 0 .. 4) {
		f.locationCityPrefix();
	}
	foreach(i; 0 .. 4) {
		f.locationCitySuffix();
	}
	foreach(i; 0 .. 4) {
		f.locationCountry();
	}
	foreach(i; 0 .. 4) {
		f.locationCounty();
	}
	foreach(i; 0 .. 4) {
		f.locationDefaultCountry();
	}
	foreach(i; 0 .. 4) {
		f.locationDirection();
	}
	foreach(i; 0 .. 4) {
		f.locationDirectionAbbr();
	}
	foreach(i; 0 .. 4) {
		f.locationPostcode();
	}
	foreach(i; 0 .. 4) {
		f.locationSecondaryAddress();
	}
	foreach(i; 0 .. 4) {
		f.locationState();
	}
	foreach(i; 0 .. 4) {
		f.locationStateAbbr();
	}
	foreach(i; 0 .. 4) {
		f.locationStreetAddress();
	}
	foreach(i; 0 .. 4) {
		f.locationStreetName();
	}
	foreach(i; 0 .. 4) {
		f.locationStreetPattern();
	}
	foreach(i; 0 .. 4) {
		f.locationStreetSuffix();
	}
	foreach(i; 0 .. 4) {
		f.locationTimeZone();
	}
	foreach(i; 0 .. 4) {
		f.loremParagraph();
	}
	foreach(i; 0 .. 4) {
		f.loremParagraphs();
	}
	foreach(i; 0 .. 4) {
		f.loremSentance();
	}
	foreach(i; 0 .. 4) {
		f.loremSentances();
	}
	foreach(i; 0 .. 4) {
		f.loremText();
	}
	foreach(i; 0 .. 4) {
		f.loremWords();
	}
	foreach(i; 0 .. 4) {
		f.musicGenre();
	}
	foreach(i; 0 .. 4) {
		f.musicSongName();
	}
	foreach(i; 0 .. 4) {
		f.personBioPart();
	}
	foreach(i; 0 .. 4) {
		f.personBioPattern();
	}
	foreach(i; 0 .. 4) {
		f.personBioSupporter();
	}
	foreach(i; 0 .. 4) {
		f.personFemaleFirstName();
	}
	foreach(i; 0 .. 4) {
		f.personFemaleMiddleName();
	}
	foreach(i; 0 .. 4) {
		f.personFemalePrefix();
	}
	foreach(i; 0 .. 4) {
		f.personFirstName();
	}
	foreach(i; 0 .. 4) {
		f.personGender();
	}
	foreach(i; 0 .. 4) {
		f.personJobArea();
	}
	foreach(i; 0 .. 4) {
		f.personJobDescriptor();
	}
	foreach(i; 0 .. 4) {
		f.personJobTitlePattern();
	}
	foreach(i; 0 .. 4) {
		f.personJobType();
	}
	foreach(i; 0 .. 4) {
		f.personLastName();
	}
	foreach(i; 0 .. 4) {
		f.personLastNamePattern();
	}
	foreach(i; 0 .. 4) {
		f.personMaleFirstName();
	}
	foreach(i; 0 .. 4) {
		f.personMaleMiddleName();
	}
	foreach(i; 0 .. 4) {
		f.personMalePrefix();
	}
	foreach(i; 0 .. 4) {
		f.personMiddleName();
	}
	foreach(i; 0 .. 4) {
		f.personName();
	}
	foreach(i; 0 .. 4) {
		f.personPrefix();
	}
	foreach(i; 0 .. 4) {
		f.personSex();
	}
	foreach(i; 0 .. 4) {
		f.personSuffix();
	}
	foreach(i; 0 .. 4) {
		f.personTitleDescriptor();
	}
	foreach(i; 0 .. 4) {
		f.personTitleJob();
	}
	foreach(i; 0 .. 4) {
		f.personTitleLevel();
	}
	foreach(i; 0 .. 4) {
		f.personWesternZodiacSign();
	}
	foreach(i; 0 .. 4) {
		f.phoneNumber();
	}
	foreach(i; 0 .. 4) {
		f.phoneNumberFormats();
	}
	foreach(i; 0 .. 4) {
		f.scienceChemicalElement();
	}
	foreach(i; 0 .. 4) {
		f.scienceUnit();
	}
	foreach(i; 0 .. 4) {
		f.systemDirectoryPaths();
	}
	foreach(i; 0 .. 4) {
		f.teamCreature();
	}
	foreach(i; 0 .. 4) {
		f.teamName();
	}
	foreach(i; 0 .. 4) {
		f.vehicleBicycleType();
	}
	foreach(i; 0 .. 4) {
		f.vehicleFuel();
	}
	foreach(i; 0 .. 4) {
		f.vehicleManufacturer();
	}
	foreach(i; 0 .. 4) {
		f.vehicleModel();
	}
	foreach(i; 0 .. 4) {
		f.vehicleType();
	}
	foreach(i; 0 .. 4) {
		f.wordAdjective();
	}
	foreach(i; 0 .. 4) {
		f.wordAdverb();
	}
	foreach(i; 0 .. 4) {
		f.wordConjunction();
	}
	foreach(i; 0 .. 4) {
		f.wordInterjection();
	}
	foreach(i; 0 .. 4) {
		f.wordNoun();
	}
	foreach(i; 0 .. 4) {
		f.wordPreposition();
	}
	foreach(i; 0 .. 4) {
		f.wordVerb();
	}
}

unittest {
	auto f = new FakerForwarder(13);

	foreach(i; 0 .. 4) {
		f.airlineAirline();
	}
	foreach(i; 0 .. 4) {
		f.airlineAirplane();
	}
	foreach(i; 0 .. 4) {
		f.airlineAirport();
	}
	foreach(i; 0 .. 4) {
		f.animalBear();
	}
	foreach(i; 0 .. 4) {
		f.animalBird();
	}
	foreach(i; 0 .. 4) {
		f.animalCat();
	}
	foreach(i; 0 .. 4) {
		f.animalCetacean();
	}
	foreach(i; 0 .. 4) {
		f.animalCow();
	}
	foreach(i; 0 .. 4) {
		f.animalCrocodilia();
	}
	foreach(i; 0 .. 4) {
		f.animalDog();
	}
	foreach(i; 0 .. 4) {
		f.animalFish();
	}
	foreach(i; 0 .. 4) {
		f.animalHorse();
	}
	foreach(i; 0 .. 4) {
		f.animalInsect();
	}
	foreach(i; 0 .. 4) {
		f.animalLion();
	}
	foreach(i; 0 .. 4) {
		f.animalRabbit();
	}
	foreach(i; 0 .. 4) {
		f.animalRodent();
	}
	foreach(i; 0 .. 4) {
		f.animalSnake();
	}
	foreach(i; 0 .. 4) {
		f.appAuthor();
	}
	foreach(i; 0 .. 4) {
		f.appName();
	}
	foreach(i; 0 .. 4) {
		f.appVersion();
	}
	foreach(i; 0 .. 4) {
		f.cellPhoneFormats();
	}
	foreach(i; 0 .. 4) {
		f.commerceDepartment();
	}
	foreach(i; 0 .. 4) {
		f.commerceProductDescription();
	}
	foreach(i; 0 .. 4) {
		f.commerceProductNameAdjective();
	}
	foreach(i; 0 .. 4) {
		f.commerceProductNameMaterial();
	}
	foreach(i; 0 .. 4) {
		f.commerceProductNameProduct();
	}
	foreach(i; 0 .. 4) {
		f.companyAdjective();
	}
	foreach(i; 0 .. 4) {
		f.companyBuzzAdjective();
	}
	foreach(i; 0 .. 4) {
		f.companyBuzzNoun();
	}
	foreach(i; 0 .. 4) {
		f.companyBuzzVerb();
	}
	foreach(i; 0 .. 4) {
		f.companyCatchPhrase();
	}
	foreach(i; 0 .. 4) {
		f.companyDescriptor();
	}
	foreach(i; 0 .. 4) {
		f.companyName();
	}
	foreach(i; 0 .. 4) {
		f.companyNamePattern();
	}
	foreach(i; 0 .. 4) {
		f.companyNoun();
	}
	foreach(i; 0 .. 4) {
		f.companySuffix();
	}
	foreach(i; 0 .. 4) {
		f.databaseCollation();
	}
	foreach(i; 0 .. 4) {
		f.databaseColumn();
	}
	foreach(i; 0 .. 4) {
		f.databaseEngine();
	}
	foreach(i; 0 .. 4) {
		f.databaseType();
	}
	foreach(i; 0 .. 4) {
		f.dateMonthAbbr();
	}
	foreach(i; 0 .. 4) {
		f.dateMonthWide();
	}
	foreach(i; 0 .. 4) {
		f.dateWeekdayAbbr();
	}
	foreach(i; 0 .. 4) {
		f.dateWeekdayWide();
	}
	foreach(i; 0 .. 4) {
		f.financeAccountType();
	}
	foreach(i; 0 .. 4) {
		f.financeCreditCardAmericanExpress();
	}
	foreach(i; 0 .. 4) {
		f.financeCreditCardDinersClub();
	}
	foreach(i; 0 .. 4) {
		f.financeCreditCardDiscover();
	}
	foreach(i; 0 .. 4) {
		f.financeCreditCardJcb();
	}
	foreach(i; 0 .. 4) {
		f.financeCreditCardMaestro();
	}
	foreach(i; 0 .. 4) {
		f.financeCreditCardMastercard();
	}
	foreach(i; 0 .. 4) {
		f.financeCreditCardVisa();
	}
	foreach(i; 0 .. 4) {
		f.financeCurrency();
	}
	foreach(i; 0 .. 4) {
		f.financeTransactionType();
	}
	foreach(i; 0 .. 4) {
		f.hackerAbbreviation();
	}
	foreach(i; 0 .. 4) {
		f.hackerAdjective();
	}
	foreach(i; 0 .. 4) {
		f.hackerIngverb();
	}
	foreach(i; 0 .. 4) {
		f.hackerNoun();
	}
	foreach(i; 0 .. 4) {
		f.hackerPhrase();
	}
	foreach(i; 0 .. 4) {
		f.hackerVerb();
	}
	foreach(i; 0 .. 4) {
		f.internetDomainSuffix();
	}
	foreach(i; 0 .. 4) {
		f.internetEmoji();
	}
	foreach(i; 0 .. 4) {
		f.internetEmojiActivity();
	}
	foreach(i; 0 .. 4) {
		f.internetEmojiBody();
	}
	foreach(i; 0 .. 4) {
		f.internetEmojiFlag();
	}
	foreach(i; 0 .. 4) {
		f.internetEmojiFood();
	}
	foreach(i; 0 .. 4) {
		f.internetEmojiNature();
	}
	foreach(i; 0 .. 4) {
		f.internetEmojiObject();
	}
	foreach(i; 0 .. 4) {
		f.internetEmojiPerson();
	}
	foreach(i; 0 .. 4) {
		f.internetEmojiSmiley();
	}
	foreach(i; 0 .. 4) {
		f.internetEmojiSymbol();
	}
	foreach(i; 0 .. 4) {
		f.internetEmojiTravel();
	}
	foreach(i; 0 .. 4) {
		f.internetExampleEmail();
	}
	foreach(i; 0 .. 4) {
		f.internetFreeEmail();
	}
	foreach(i; 0 .. 4) {
		f.locationBuildingNumber();
	}
	foreach(i; 0 .. 4) {
		f.locationCity();
	}
	foreach(i; 0 .. 4) {
		f.locationCityName();
	}
	foreach(i; 0 .. 4) {
		f.locationCityPattern();
	}
	foreach(i; 0 .. 4) {
		f.locationCityPrefix();
	}
	foreach(i; 0 .. 4) {
		f.locationCitySuffix();
	}
	foreach(i; 0 .. 4) {
		f.locationCountry();
	}
	foreach(i; 0 .. 4) {
		f.locationCounty();
	}
	foreach(i; 0 .. 4) {
		f.locationDefaultCountry();
	}
	foreach(i; 0 .. 4) {
		f.locationDirection();
	}
	foreach(i; 0 .. 4) {
		f.locationDirectionAbbr();
	}
	foreach(i; 0 .. 4) {
		f.locationPostcode();
	}
	foreach(i; 0 .. 4) {
		f.locationSecondaryAddress();
	}
	foreach(i; 0 .. 4) {
		f.locationState();
	}
	foreach(i; 0 .. 4) {
		f.locationStateAbbr();
	}
	foreach(i; 0 .. 4) {
		f.locationStreetAddress();
	}
	foreach(i; 0 .. 4) {
		f.locationStreetName();
	}
	foreach(i; 0 .. 4) {
		f.locationStreetPattern();
	}
	foreach(i; 0 .. 4) {
		f.locationStreetSuffix();
	}
	foreach(i; 0 .. 4) {
		f.locationTimeZone();
	}
	foreach(i; 0 .. 4) {
		f.loremParagraph();
	}
	foreach(i; 0 .. 4) {
		f.loremParagraphs();
	}
	foreach(i; 0 .. 4) {
		f.loremSentance();
	}
	foreach(i; 0 .. 4) {
		f.loremSentances();
	}
	foreach(i; 0 .. 4) {
		f.loremText();
	}
	foreach(i; 0 .. 4) {
		f.loremWords();
	}
	foreach(i; 0 .. 4) {
		f.musicGenre();
	}
	foreach(i; 0 .. 4) {
		f.musicSongName();
	}
	foreach(i; 0 .. 4) {
		f.personBioPart();
	}
	foreach(i; 0 .. 4) {
		f.personBioPattern();
	}
	foreach(i; 0 .. 4) {
		f.personBioSupporter();
	}
	foreach(i; 0 .. 4) {
		f.personFemaleFirstName();
	}
	foreach(i; 0 .. 4) {
		f.personFemaleMiddleName();
	}
	foreach(i; 0 .. 4) {
		f.personFemalePrefix();
	}
	foreach(i; 0 .. 4) {
		f.personFirstName();
	}
	foreach(i; 0 .. 4) {
		f.personGender();
	}
	foreach(i; 0 .. 4) {
		f.personJobArea();
	}
	foreach(i; 0 .. 4) {
		f.personJobDescriptor();
	}
	foreach(i; 0 .. 4) {
		f.personJobTitlePattern();
	}
	foreach(i; 0 .. 4) {
		f.personJobType();
	}
	foreach(i; 0 .. 4) {
		f.personLastName();
	}
	foreach(i; 0 .. 4) {
		f.personLastNamePattern();
	}
	foreach(i; 0 .. 4) {
		f.personMaleFirstName();
	}
	foreach(i; 0 .. 4) {
		f.personMaleMiddleName();
	}
	foreach(i; 0 .. 4) {
		f.personMalePrefix();
	}
	foreach(i; 0 .. 4) {
		f.personMiddleName();
	}
	foreach(i; 0 .. 4) {
		f.personName();
	}
	foreach(i; 0 .. 4) {
		f.personPrefix();
	}
	foreach(i; 0 .. 4) {
		f.personSex();
	}
	foreach(i; 0 .. 4) {
		f.personSuffix();
	}
	foreach(i; 0 .. 4) {
		f.personTitleDescriptor();
	}
	foreach(i; 0 .. 4) {
		f.personTitleJob();
	}
	foreach(i; 0 .. 4) {
		f.personTitleLevel();
	}
	foreach(i; 0 .. 4) {
		f.personWesternZodiacSign();
	}
	foreach(i; 0 .. 4) {
		f.phoneNumber();
	}
	foreach(i; 0 .. 4) {
		f.phoneNumberFormats();
	}
	foreach(i; 0 .. 4) {
		f.scienceChemicalElement();
	}
	foreach(i; 0 .. 4) {
		f.scienceUnit();
	}
	foreach(i; 0 .. 4) {
		f.systemDirectoryPaths();
	}
	foreach(i; 0 .. 4) {
		f.teamCreature();
	}
	foreach(i; 0 .. 4) {
		f.teamName();
	}
	foreach(i; 0 .. 4) {
		f.vehicleBicycleType();
	}
	foreach(i; 0 .. 4) {
		f.vehicleFuel();
	}
	foreach(i; 0 .. 4) {
		f.vehicleManufacturer();
	}
	foreach(i; 0 .. 4) {
		f.vehicleModel();
	}
	foreach(i; 0 .. 4) {
		f.vehicleType();
	}
	foreach(i; 0 .. 4) {
		f.wordAdjective();
	}
	foreach(i; 0 .. 4) {
		f.wordAdverb();
	}
	foreach(i; 0 .. 4) {
		f.wordConjunction();
	}
	foreach(i; 0 .. 4) {
		f.wordInterjection();
	}
	foreach(i; 0 .. 4) {
		f.wordNoun();
	}
	foreach(i; 0 .. 4) {
		f.wordPreposition();
	}
	foreach(i; 0 .. 4) {
		f.wordVerb();
	}
}

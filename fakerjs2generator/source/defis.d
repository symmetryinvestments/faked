module defis;

import std.typecons : Nullable;
import std.sumtype;

struct Mustache {
	string str;
}

struct Number {
	string num;
}

struct MustacheWeight {
	Mustache value;
	int weight;
}

struct MergeArray {
	string[] arrayNames;
}

struct Airline {
	Nullable!(string) name;
	Nullable!(string) iataCode;
}

struct Airplane {
	Nullable!(string) name;
	Nullable!(string) iataTypeCode;
}

struct Airport {
	Nullable!(string) name;
	Nullable!(string) iataCode;
}

struct AirlineFolder {
	Airline[] airline;
	Airplane[] airplane;
	Airport[] airport;
}

struct AnimalFolder {
	Nullable!(string[]) bear;
	Nullable!(string[]) bird;
	Nullable!(string[]) cat;
	Nullable!(string[]) cetacean;
	Nullable!(string[]) cow;
	Nullable!(string[]) crocodilia;
	Nullable!(string[]) dog;
	Nullable!(string[]) fish;
	Nullable!(string[]) horse;
	Nullable!(string[]) insect;
	Nullable!(string[]) lion;
	Nullable!(string[]) rabbit;
	Nullable!(string[]) rodent;
	Nullable!(string[]) snake;
}

struct AppFolder {
	Nullable!(Mustache[]) author;
	Nullable!(string[]) name;
	Nullable!(Number[]) version_;
}

struct Cell_PhoneFolder {
	Nullable!(Number[]) formats;
}

struct ColorFolder {
	Nullable!(string[]) human;
	Nullable!(string[]) space;
}

struct Product_Name {
	Nullable!(string[]) adjective;
	Nullable!(string[]) material;
	Nullable!(string[]) product;
}

struct CommerceFolder {
	Nullable!(string[]) departments;
	Nullable!(string[]) product_description;
	Nullable!(Product_Name) product_name;
	Nullable!(string[]) department;
}

struct CompanyFolder {
	Nullable!(string[]) adjective;
	Nullable!(string[]) buzz_adjective;
	Nullable!(string[]) buzz_noun;
	Nullable!(string[]) buzz_verb;
	Nullable!(string[]) descriptor;
	Nullable!(Mustache[]) name_pattern;
	Nullable!(string[]) noun;
	Nullable!(string[]) suffix;
	Nullable!(string[]) prefix;
	Nullable!(string[]) company_name;
	Nullable!(string[]) name;
	Nullable!(string[]) type;
	Nullable!(string[]) category;
}

struct DatabaseFolder {
	Nullable!(string[]) column;
	Nullable!(string[]) collation;
	Nullable!(string[]) engine;
	Nullable!(string[]) type;
}

struct DateMonth {
	Nullable!(string[]) wide;
	Nullable!(string[]) abbr;
}

struct DateWeekday {
	Nullable!(string[]) wide;
	Nullable!(string[]) abbr;
}

struct DateFolder {
	DateMonth month;
	DateWeekday weekday;
}

struct Credit_CardFolder {
	Nullable!(Number[]) american_express;
	Nullable!(Number[]) diners_club;
	Nullable!(Number[]) discover;
	Nullable!(Number[]) jcb;
	Nullable!(Number[]) maestro;
	Nullable!(Number[]) mastercard;
	Nullable!(Number[]) visa;
}

struct Currency {
	string name;
	string code;
	string symbol;
}

struct FinanceFolder {
	Nullable!(Credit_CardFolder) credit_card;
	Nullable!(string[]) account_type;
	Nullable!(Currency[]) currency;
	Nullable!(string[]) transaction_type;
}

struct HackerFolder {
	Nullable!(string[]) adjective;
	Nullable!(string[]) ingverb;
	Nullable!(string[]) noun;
	Nullable!(Mustache[]) phrase;
	Nullable!(string[]) verb;
	Nullable!(string[]) abbreviation;
}

struct EmojiFolder {
	Nullable!(string[]) smiley;
	Nullable!(string[]) body_;
	Nullable!(string[]) person;
	Nullable!(string[]) nature;
	Nullable!(string[]) food;
	Nullable!(string[]) travel;
	Nullable!(string[]) activity;
	Nullable!(string[]) object;
	Nullable!(string[]) symbol;
	Nullable!(string[]) flag;
}

struct InternetFolder {
	Nullable!(string[]) domain_suffix;
	Nullable!(string[]) example_email;
	Nullable!(string[]) free_email;
	Nullable!(EmojiFolder) emoji;
}

struct Country_Code {
	Nullable!(string) alpha2;
	Nullable!(string) alpha3;
	Nullable!(string) numeric;
}

struct LocationFolder {
	Nullable!(Number[]) building_number;
	Nullable!(string[]) city_name;
	Nullable!(Mustache[]) city_pattern;
	Nullable!(string[]) city_infix;
	Nullable!(string[]) city_prefix;
	Nullable!(string[]) city_suffix;
	Nullable!(string[]) country;
	Nullable!(string[]) county;
	Nullable!(string[]) default_country;
	Nullable!(string[]) direction;
	Nullable!(string[]) direction_abbr;
	Nullable!(Number[]) postcode;
	Nullable!(Number[]) secondary_address;
	Nullable!(string[]) state;
	Nullable!(string[]) state_abbr;
	Nullable!(Mustache[string]) street_address;
	Nullable!(string[]) street_name;
	Nullable!(Mustache[]) street_pattern;
	Nullable!(string[]) street_suffix;
	Nullable!(string[]) common_street_suffix;
	Nullable!(string[]) street_prefix;
	Nullable!(string[]) street_name_part;
	Nullable!(Country_Code[]) country_code;
	Nullable!(string[]) time_zone;
	Nullable!(string[]) street_cantonese_part;
	Nullable!(string[]) street_english_part;
}

struct LoremFolder {
	Nullable!(string[]) words;
}

struct MusicFolder {
	Nullable!(string[]) genre;
	Nullable!(string[]) song_name;
}

struct Title {
	Nullable!(string[]) descriptor;
	Nullable!(string[]) level;
	Nullable!(string[]) job;
}

struct PersonFolder {
	Nullable!(string[]) bio_part;
	Nullable!(Mustache[]) bio_pattern;
	Nullable!(string[]) bio_supporter;
	Nullable!(string[]) female_first_name;
	Nullable!(string[]) female_middle_name;
	Nullable!(string[]) female_last_name;
	Nullable!(string[]) female_prefix;
	Nullable!(string[]) first_name;
	Nullable!(string[]) gender;
	Nullable!(Mustache[]) job_title_pattern;
	Nullable!(string[]) last_name;
	Nullable!(MustacheWeight[]) last_name_pattern;
	Nullable!(string[]) male_first_name;
	Nullable!(string[]) male_last_name;
	Nullable!(string[]) male_middle_name;
	Nullable!(string[]) male_prefix;
	Nullable!(string[]) middle_name;
	Nullable!(MustacheWeight[]) name;
	Nullable!(string[]) prefix;
	Nullable!(string[]) sex;
	Nullable!(string[]) suffix;
	Nullable!(Title) title;
	Nullable!(string[]) western_zodiac_sign;
}

struct Phone_NumberFolder {
	Nullable!(Number[]) formats;
}

struct ChemicalElement {
	string symbol;
	string name;
	int atomicNumber;
}

struct ChemicalUnit {
	string name;
	string symbol;
}

struct ScienceFolder {
	Nullable!(ChemicalElement[]) chemicalElement;
	Nullable!(ChemicalUnit[]) unit;
}

struct TeamFolder {
	Nullable!(string[]) creature;
	Nullable!(string[]) prefix;
	Nullable!(string[]) suffix;
	Nullable!(Mustache[]) name;
}

struct VehicleFolder {
	Nullable!(string[]) bicycle_type;
	Nullable!(string[]) fuel;
	Nullable!(string[]) manufacturer;
	Nullable!(string[]) model;
	Nullable!(string[]) type;
}

struct WordFolder {
	Nullable!(string[]) adjective;
	Nullable!(string[]) adverb;
	Nullable!(string[]) conjunction;
	Nullable!(string[]) interjection;
	Nullable!(string[]) noun;
	Nullable!(string[]) preposition;
	Nullable!(string[]) verb;
}

struct SystemFolder {
	Nullable!(string[]) directoryPaths;
}

struct Language {
	Nullable!AirlineFolder airline;
	Nullable!(AnimalFolder) animal;
	Nullable!(AppFolder) app;
	Nullable!(Cell_PhoneFolder) cell_phone;
	Nullable!(CommerceFolder) commerce;
	Nullable!(CompanyFolder) company;
	Nullable!(DatabaseFolder) database;
	Nullable!(DateFolder) date;
	Nullable!(FinanceFolder) finance;
	Nullable!(HackerFolder) hacker;
	Nullable!(InternetFolder) internet;
	Nullable!(LocationFolder) location;
	Nullable!(LoremFolder) lorem;
	Nullable!(MusicFolder) music;
	Nullable!(PersonFolder) person;
	Nullable!(Phone_NumberFolder) phone_number;
	Nullable!(ScienceFolder) science;
	Nullable!(TeamFolder) team;
	Nullable!(VehicleFolder) vehicle;
	Nullable!(WordFolder) word;
	Nullable!(SystemFolder) system;
}

struct JsonFile {
	Language data;
	string[] chain;
	Nullable!(string[]) first_name;
	Nullable!(string[]) last_name;
	Nullable!(string[]) prefix;
	Nullable!(string[]) female_middle_name;
	Nullable!(string[]) male_middle_name;
	Nullable!(string[]) county;
}

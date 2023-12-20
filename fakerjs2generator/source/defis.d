module defis;

import std.typecons : Nullable;

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
	string name;
	string iataCode;
}

struct Airplane {
	string name;
	string iataTypeCode;
}

struct Airport {
	string name;
	string iataCode;
}

struct AirlineFolder {
	Airline airline;
	Airplane airplane;
	Airport airport;
}

struct AnimalFolder {
	string[] bear;
	string[] bird;
	string[] cat;
	string[] cetacean;
	string[] cow;
	string[] crocodilia;
	string[] dog;
	string[] fish;
	string[] horse;
	string[] insect;
	string[] lion;
	string[] rabbit;
	string[] rodent;
	string[] snake;
}

struct AppFolder {
	Mustache[] author;
	string[] name;
	Number[] version_;
}

struct Cell_PhoneFolder {
	Number[] formats;
}

struct ColorFolder {
	string[] human;
}

struct Product_Name {
	string[] adjective;
	string[] material;
	string[] product;
}

struct CommerceFolder {
	string[] departments;
	string[] product_description;
	Product_Name product_name;
}

struct CompanyFolder {
	string[] adjective;
	string[] buzz_adjective;
	string[] buzz_noun;
	string[] buzz_verb;
	string[] descriptor;
	Mustache[] name_pattern;
	string[] noun;
	string[] suffix;
}

struct DatabaseFolder {
	string[] column;
}

struct DateMonth {
	string[] wide;
	string[] abbr;
}

struct DateWeekday {
	string[] wide;
	string[] abbr;
}

struct DateFolder {
	DateMonth month;
	DateWeekday weekday;
}

struct Credit_CardFolder {
	Number[] american_express;
	Number[] diners_club;
	Number[] discover;
	Number[] jcb;
	Number[] maestro;
	Number[] mastercard;
	Number[] visa;
}

struct Currency {
	string name;
	string code;
	string symbol;
}

struct FinanceFolder {
	Credit_CardFolder credit_card;
	string[] account_type;
	Currency currency;
	string[] transaction_type;
}

struct HackerFolder {
	string[] adjective;
	string[] ingverb;
	string[] noun;
	Mustache[] phrase;
	string[] verb;
}

struct InternetFolder {
	string[] domain_suffix;
	string[] example_email;
	string[] free_email;
}

struct LocationFolder {
	Number[] building_number;
	string[] city_name;
	Mustache[] city_pattern;
	string[] city_prefix;
	string[] city_suffix;
	string[] country;
	string[] county;
	string[] default_country;
	string[] direction;
	string[] direction_abbr;
	Number[] postcode;
	Number[] secondary_address;
	string[] state;
	string[] state_abbr;
	Mustache[string] street_address;
	string[] street_name;
	Mustache[] street_pattern;
	string[] street_suffix;
}

struct LoremFolder {
	string[] words;
}

struct MusicFolder {
	string[] genre;
	string[] song_name;
}

struct Title {
	string[] descriptor;
	string[] level;
	string[] job;
}

struct PersonFolder {
	string[] bio_part;
	Mustache[] bio_pattern;
	string[] bio_supporter;
	string[] female_first_name;
	string[] female_middle_name;
	string[] female_prefix;
	string[] first_name;
	string[] gender;
	Mustache[] job_title_pattern;
	string[] last_name;
	MustacheWeight[] last_name_pattern;
	string[] male_first_name;
	string[] male_middle_name;
	string[] male_prefix;
	string[] middle_name;
	MustacheWeight[] name;
	MergeArray prefix;
	string[] sex;
	string[] suffix;
	Title title;
	string[] western_zodiac_sign;
}

struct Phone_NumberFolder {
	Number[] formats;
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
	ChemicalElement[] chemicalElement;
	ChemicalUnit[] unit;
}

struct TeamFolder {
	string[] creature;
	Mustache[] name;
}

struct VehicleFolder {
	string[] bicycle_type;
	string[] fuel;
	string[] manufacturer;
	string[] model;
	string[] type;
}

struct WordFolder {
	string[] adjective;
	string[] adverb;
	string[] conjunction;
	string[] interjection;
	string[] noun;
	string[] preposition;
	string[] verb;
}

struct Language {
	AirlineFolder airline;
	AnimalFolder animal;
	AppFolder app;
	Cell_PhoneFolder cell_phone;
	CommerceFolder commerce;
	CompanyFolder company;
	DatabaseFolder database;
	DateFolder date;
	FinanceFolder finance;
	HackerFolder hacker;
	InternetFolder internet;
	LocationFolder location;
	LoremFolder lorem;
	MusicFolder music;
	PersonFolder person;
	Phone_NumberFolder phone_number;
	ScienceFolder science;
	TeamFolder team;
	VehicleFolder vehicle;
	WordFolder word;
}

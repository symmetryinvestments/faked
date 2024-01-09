module faked.customtypes;

import std.typecons : Nullable;

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

struct Currency {
	string name;
	string code;
	string symbol;
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



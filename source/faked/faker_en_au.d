// generated by fakerjsgenerator
///
module faked.faker_en_au;

import faked.base;


///
class Faker_en_au : Faker {
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
	override string internetDomainSuffix() {
		auto data = [
		"com.au', 'com', 'net.au', 'net', 'org.au', 'org'"
		];
		return choice(data, this.rnd);
	}

	///
	override string companySuffix() {
		auto data = [
		"Pty Ltd', 'and Sons', 'Corp', 'Group', 'Brothers', 'Partners'"
		];
		return choice(data, this.rnd);
	}

	///
	override string addressStateAbbr() {
		auto data = [
		"NSW', 'QLD', 'NT', 'SA', 'WA', 'TAS', 'ACT', 'VIC'"
		];
		return choice(data, this.rnd);
	}

	///
	override string addressState() {
		auto data = [
		"New South Wales",
		"Queensland",
		"Northern Territory",
		"South Australia",
		"Western Australia",
		"Tasmania",
		"Australian Capital Territory",
		"Victoria",
		""
		];
		return choice(data, this.rnd);
	}

	///
	override string addressDefaultCountry() {
		auto data = [
		"Australia'"
		];
		return choice(data, this.rnd);
	}

	///
	override string addressBuildingNumber() {
		auto data = [
		"####', '###', '##'"
		];
		return this.digitBuild(choice(data, this.rnd));
	}

	///
	override string addressPostcode() {
		auto data = [
		"####'"
		];
		return this.digitBuild(choice(data, this.rnd));
	}

	///
	override string addressStreetSuffix() {
		auto data = [
		"Avenue",
		"Boulevard",
		"Circle",
		"Circuit",
		"Court",
		"Crescent",
		"Crest",
		"Drive",
		"Estate Dr",
		"Grove",
		"Hill",
		"Island",
		"Junction",
		"Knoll",
		"Lane",
		"Loop",
		"Mall",
		"Manor",
		"Meadow",
		"Mews",
		"Parade",
		"Parkway",
		"Pass",
		"Place",
		"Plaza",
		"Ridge",
		"Road",
		"Run",
		"Square",
		"Station St",
		"Street",
		"Summit",
		"Terrace",
		"Track",
		"Trail",
		"View Rd",
		"Way",
		""
		];
		return choice(data, this.rnd);
	}

	///
	override string nameLastName() {
		auto data = [
		"Smith",
		"Jones",
		"Williams",
		"Brown",
		"Wilson",
		"Taylor",
		"Johnson",
		"White",
		"Martin",
		"Anderson",
		"Thompson",
		"Nguyen",
		"Thomas",
		"Walker",
		"Harris",
		"Lee",
		"Ryan",
		"Robinson",
		"Kelly",
		"King",
		"Davis",
		"Wright",
		"Evans",
		"Roberts",
		"Green",
		"Hall",
		"Wood",
		"Jackson",
		"Clarke",
		"Patel",
		"Khan",
		"Lewis",
		"James",
		"Phillips",
		"Mason",
		"Mitchell",
		"Rose",
		"Davies",
		"Rodriguez",
		"Cox",
		"Alexander",
		"Garden",
		"Campbell",
		"Johnston",
		"Moore",
		"Smyth",
		"O'neill",
		"Doherty",
		"Stewart",
		"Quinn",
		"Murphy",
		"Graham",
		"Mclaughlin",
		"Hamilton",
		"Murray",
		"Hughes",
		"Robertson",
		"Thomson",
		"Scott",
		"Macdonald",
		"Reid",
		"Clark",
		"Ross",
		"Young",
		"Watson",
		"Paterson",
		"Morrison",
		"Morgan",
		"Griffiths",
		"Edwards",
		"Rees",
		"Jenkins",
		"Owen",
		"Price",
		"Moss",
		"Richards",
		"Abbott",
		"Adams",
		"Armstrong",
		"Bahringer",
		"Bailey",
		"Barrows",
		"Bartell",
		"Bartoletti",
		"Barton",
		"Bauch",
		"Baumbach",
		"Bayer",
		"Beahan",
		"Beatty",
		"Becker",
		"Beier",
		"Berge",
		"Bergstrom",
		"Bode",
		"Bogan",
		"Borer",
		"Bosco",
		"Botsford",
		"Boyer",
		"Boyle",
		"Braun",
		"Bruen",
		"Carroll",
		"Carter",
		"Cartwright",
		"Casper",
		"Cassin",
		"Champlin",
		"Christiansen",
		"Cole",
		"Collier",
		"Collins",
		"Connelly",
		"Conroy",
		"Corkery",
		"Cormier",
		"Corwin",
		"Cronin",
		"Crooks",
		"Cruickshank",
		"Cummings",
		"D'amore",
		"Daniel",
		"Dare",
		"Daugherty",
		"Dickens",
		"Dickinson",
		"Dietrich",
		"Donnelly",
		"Dooley",
		"Douglas",
		"Doyle",
		"Durgan",
		"Ebert",
		"Emard",
		"Emmerich",
		"Erdman",
		"Ernser",
		"Fadel",
		"Fahey",
		"Farrell",
		"Fay",
		"Feeney",
		"Feil",
		"Ferry",
		"Fisher",
		"Flatley",
		"Gibson",
		"Gleason",
		"Glover",
		"Goldner",
		"Goodwin",
		"Grady",
		"Grant",
		"Greenfelder",
		"Greenholt",
		"Grimes",
		"Gutmann",
		"Hackett",
		"Hahn",
		"Haley",
		"Hammes",
		"Hand",
		"Hane",
		"Hansen",
		"Harber",
		"Hartmann",
		"Harvey",
		"Hayes",
		"Heaney",
		"Heathcote",
		"Heller",
		"Hermann",
		"Hermiston",
		"Hessel",
		"Hettinger",
		"Hickle",
		"Hill",
		"Hills",
		"Hoppe",
		"Howe",
		"Howell",
		"Hudson",
		"Huel",
		"Hyatt",
		"Jacobi",
		"Jacobs",
		"Jacobson",
		"Jerde",
		"Johns",
		"Keeling",
		"Kemmer",
		"Kessler",
		"Kiehn",
		"Kirlin",
		"Klein",
		"Koch",
		"Koelpin",
		"Kohler",
		"Koss",
		"Kovacek",
		"Kreiger",
		"Kris",
		"Kuhlman",
		"Kuhn",
		"Kulas",
		"Kunde",
		"Kutch",
		"Lakin",
		"Lang",
		"Langworth",
		"Larkin",
		"Larson",
		"Leannon",
		"Leffler",
		"Little",
		"Lockman",
		"Lowe",
		"Lynch",
		"Mann",
		"Marks",
		"Marvin",
		"Mayer",
		"Mccullough",
		"Mcdermott",
		"Mckenzie",
		"Miller",
		"Mills",
		"Monahan",
		"Morissette",
		"Mueller",
		"Muller",
		"Nader",
		"Nicolas",
		"Nolan",
		"O'connell",
		"O'conner",
		"O'hara",
		"O'keefe",
		"Olson",
		"O'reilly",
		"Parisian",
		"Parker",
		"Quigley",
		"Reilly",
		"Reynolds",
		"Rice",
		"Ritchie",
		"Rohan",
		"Rolfson",
		"Rowe",
		"Russel",
		"Rutherford",
		"Sanford",
		"Sauer",
		"Schmidt",
		"Schmitt",
		"Schneider",
		"Schroeder",
		"Schultz",
		"Shields",
		"Smitham",
		"Spencer",
		"Stanton",
		"Stark",
		"Stokes",
		"Swift",
		"Tillman",
		"Towne",
		"Tremblay",
		"Tromp",
		"Turcotte",
		"Turner",
		"Walsh",
		"Walter",
		"Ward",
		"Waters",
		"Weber",
		"Welch",
		"West",
		"Wilderman",
		"Wilkinson",
		"Williamson",
		"Windler",
		"Wolf",
		""
		];
		return choice(data, this.rnd);
	}

	///
	override string nameFirstName() {
		auto data = [
		"William",
		"Jack",
		"Oliver",
		"Joshua",
		"Thomas",
		"Lachlan",
		"Cooper",
		"Noah",
		"Ethan",
		"Lucas",
		"James",
		"Samuel",
		"Jacob",
		"Liam",
		"Alexander",
		"Benjamin",
		"Max",
		"Isaac",
		"Daniel",
		"Riley",
		"Ryan",
		"Charlie",
		"Tyler",
		"Jake",
		"Matthew",
		"Xavier",
		"Harry",
		"Jayden",
		"Nicholas",
		"Harrison",
		"Levi",
		"Luke",
		"Adam",
		"Henry",
		"Aiden",
		"Dylan",
		"Oscar",
		"Michael",
		"Jackson",
		"Logan",
		"Joseph",
		"Blake",
		"Nathan",
		"Connor",
		"Elijah",
		"Nate",
		"Archie",
		"Bailey",
		"Marcus",
		"Cameron",
		"Jordan",
		"Zachary",
		"Caleb",
		"Hunter",
		"Ashton",
		"Toby",
		"Aidan",
		"Hayden",
		"Mason",
		"Hamish",
		"Edward",
		"Angus",
		"Eli",
		"Sebastian",
		"Christian",
		"Patrick",
		"Andrew",
		"Anthony",
		"Luca",
		"Kai",
		"Beau",
		"Alex",
		"George",
		"Callum",
		"Finn",
		"Zac",
		"Mitchell",
		"Jett",
		"Jesse",
		"Gabriel",
		"Leo",
		"Declan",
		"Charles",
		"Jasper",
		"Jonathan",
		"Aaron",
		"Hugo",
		"David",
		"Christopher",
		"Chase",
		"Owen",
		"Justin",
		"Ali",
		"Darcy",
		"Lincoln",
		"Cody",
		"Phoenix",
		"Sam",
		"John",
		"Joel",
		"Isabella",
		"Ruby",
		"Chloe",
		"Olivia",
		"Charlotte",
		"Mia",
		"Lily",
		"Emily",
		"Ella",
		"Sienna",
		"Sophie",
		"Amelia",
		"Grace",
		"Ava",
		"Zoe",
		"Emma",
		"Sophia",
		"Matilda",
		"Hannah",
		"Jessica",
		"Lucy",
		"Georgia",
		"Sarah",
		"Abigail",
		"Zara",
		"Eva",
		"Scarlett",
		"Jasmine",
		"Chelsea",
		"Lilly",
		"Ivy",
		"Isla",
		"Evie",
		"Isabelle",
		"Maddison",
		"Layla",
		"Summer",
		"Annabelle",
		"Alexis",
		"Elizabeth",
		"Bella",
		"Holly",
		"Lara",
		"Madison",
		"Alyssa",
		"Maya",
		"Tahlia",
		"Claire",
		"Hayley",
		"Imogen",
		"Jade",
		"Ellie",
		"Sofia",
		"Addison",
		"Molly",
		"Phoebe",
		"Alice",
		"Savannah",
		"Gabriella",
		"Kayla",
		"Mikayla",
		"Abbey",
		"Eliza",
		"Willow",
		"Alexandra",
		"Poppy",
		"Samantha",
		"Stella",
		"Amy",
		"Amelie",
		"Anna",
		"Piper",
		"Gemma",
		"Isabel",
		"Victoria",
		"Stephanie",
		"Caitlin",
		"Heidi",
		"Paige",
		"Rose",
		"Amber",
		"Audrey",
		"Claudia",
		"Taylor",
		"Madeline",
		"Angelina",
		"Natalie",
		"Charli",
		"Lauren",
		"Ashley",
		"Violet",
		"Mackenzie",
		"Abby",
		"Skye",
		"Lillian",
		"Alana",
		"Lola",
		"Leah",
		"Eve",
		"Kiara",
		""
		];
		return choice(data, this.rnd);
	}

}

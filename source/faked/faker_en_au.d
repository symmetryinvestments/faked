module faker.faker_en_au;

import std.random;
import std.array;
import std.format;
import std.conv : to;
import std.string : toUpper;
import std.range : iota, take, repeat;
import std.algorithm : map, joiner;
import faker.base;

class Faker_en_au : Faker {
@safe:
	this(int seed) {
		super(seed);
	}

	override string companySuffix() {
		const string[] strs =
		[ q"{Pty Ltd}", q"{and Sons}", q"{Corp}", q"{Group}", q"{Brothers}", q"{Partners}" ];

		return choice(strs, this.rnd);
	}

	override string internetDomainSuffix() {
		const string[] strs =
		[ q"{com.au}", q"{com}", q"{net.au}", q"{net}", q"{org.au}", q"{org}" ];

		return choice(strs, this.rnd);
	}

	override string locationCityPattern() {
		assert(false);
	}

	override string locationDefaultCountry() {
		const string[] strs =
		[ q"{Australia}" ];

		return choice(strs, this.rnd);
	}

	override string locationState() {
		const string[] strs =
		[ q"{New South Wales}", q"{Queensland}", q"{Northern Territory}", q"{South Australia}", q"{Western Australia}"
		, q"{Tasmania}", q"{Australian Capital Territory}", q"{Victoria}" ];

		return choice(strs, this.rnd);
	}

	override string locationStateAbbr() {
		const string[] strs =
		[ q"{NSW}", q"{QLD}", q"{NT}", q"{SA}", q"{WA}", q"{TAS}", q"{ACT}", q"{VIC}" ];

		return choice(strs, this.rnd);
	}

	override string locationStreetPattern() {
		assert(false);
	}

	override string locationStreetSuffix() {
		const string[] strs =
		[ q"{Avenue}", q"{Boulevard}", q"{Circle}", q"{Circuit}", q"{Court}", q"{Crescent}", q"{Crest}", q"{Drive}"
		, q"{Estate Dr}", q"{Grove}", q"{Hill}", q"{Island}", q"{Junction}", q"{Knoll}", q"{Lane}", q"{Loop}"
		, q"{Mall}", q"{Manor}", q"{Meadow}", q"{Mews}", q"{Parade}", q"{Parkway}", q"{Pass}", q"{Place}"
		, q"{Plaza}", q"{Ridge}", q"{Road}", q"{Run}", q"{Square}", q"{Station St}", q"{Street}", q"{Summit}"
		, q"{Terrace}", q"{Track}", q"{Trail}", q"{View Rd}", q"{Way}" ];

		return choice(strs, this.rnd);
	}

	override string personFemaleFirstName() {
		const string[] strs =
		[ q"{Isabella}", q"{Ruby}", q"{Chloe}", q"{Olivia}", q"{Charlotte}", q"{Mia}", q"{Lily}", q"{Emily}"
		, q"{Ella}", q"{Sienna}", q"{Sophie}", q"{Amelia}", q"{Grace}", q"{Ava}", q"{Zoe}", q"{Emma}", q"{Sophia}"
		, q"{Matilda}", q"{Hannah}", q"{Jessica}", q"{Lucy}", q"{Georgia}", q"{Sarah}", q"{Abigail}", q"{Zara}"
		, q"{Eva}", q"{Scarlett}", q"{Jasmine}", q"{Chelsea}", q"{Lilly}", q"{Ivy}", q"{Isla}", q"{Evie}"
		, q"{Isabelle}", q"{Maddison}", q"{Layla}", q"{Summer}", q"{Annabelle}", q"{Alexis}", q"{Elizabeth}"
		, q"{Bella}", q"{Holly}", q"{Lara}", q"{Madison}", q"{Alyssa}", q"{Maya}", q"{Tahlia}", q"{Claire}"
		, q"{Hayley}", q"{Imogen}", q"{Jade}", q"{Ellie}", q"{Sofia}", q"{Addison}", q"{Molly}", q"{Phoebe}"
		, q"{Alice}", q"{Savannah}", q"{Gabriella}", q"{Kayla}", q"{Mikayla}", q"{Abbey}", q"{Eliza}", q"{Willow}"
		, q"{Alexandra}", q"{Poppy}", q"{Samantha}", q"{Stella}", q"{Amy}", q"{Amelie}", q"{Anna}", q"{Piper}"
		, q"{Gemma}", q"{Isabel}", q"{Victoria}", q"{Stephanie}", q"{Caitlin}", q"{Heidi}", q"{Paige}"
		, q"{Rose}", q"{Amber}", q"{Audrey}", q"{Claudia}", q"{Taylor}", q"{Madeline}", q"{Angelina}", q"{Natalie}"
		, q"{Charli}", q"{Lauren}", q"{Ashley}", q"{Violet}", q"{Mackenzie}", q"{Abby}", q"{Skye}", q"{Lillian}"
		, q"{Alana}", q"{Lola}", q"{Leah}", q"{Eve}", q"{Kiara}" ];

		return choice(strs, this.rnd);
	}

	override string personFirstName() {
		const string[] strs =
		[ q"{Aaron}", q"{Abbey}", q"{Abby}", q"{Abigail}", q"{Adam}", q"{Addison}", q"{Aidan}", q"{Aiden}", q"{Alana}"
		, q"{Alex}", q"{Alexander}", q"{Alexandra}", q"{Alexis}", q"{Ali}", q"{Alice}", q"{Alyssa}", q"{Amber}"
		, q"{Amelia}", q"{Amelie}", q"{Amy}", q"{Andrew}", q"{Angelina}", q"{Angus}", q"{Anna}", q"{Annabelle}"
		, q"{Anthony}", q"{Archie}", q"{Ashley}", q"{Ashton}", q"{Audrey}", q"{Ava}", q"{Bailey}", q"{Beau}"
		, q"{Bella}", q"{Benjamin}", q"{Blake}", q"{Caitlin}", q"{Caleb}", q"{Callum}", q"{Cameron}", q"{Charles}"
		, q"{Charli}", q"{Charlie}", q"{Charlotte}", q"{Chase}", q"{Chelsea}", q"{Chloe}", q"{Christian}"
		, q"{Christopher}", q"{Claire}", q"{Claudia}", q"{Cody}", q"{Connor}", q"{Cooper}", q"{Daniel}"
		, q"{Darcy}", q"{David}", q"{Declan}", q"{Dylan}", q"{Edward}", q"{Eli}", q"{Elijah}", q"{Eliza}"
		, q"{Elizabeth}", q"{Ella}", q"{Ellie}", q"{Emily}", q"{Emma}", q"{Ethan}", q"{Eva}", q"{Eve}", q"{Evie}"
		, q"{Finn}", q"{Gabriel}", q"{Gabriella}", q"{Gemma}", q"{George}", q"{Georgia}", q"{Grace}", q"{Hamish}"
		, q"{Hannah}", q"{Harrison}", q"{Harry}", q"{Hayden}", q"{Hayley}", q"{Heidi}", q"{Henry}", q"{Holly}"
		, q"{Hugo}", q"{Hunter}", q"{Imogen}", q"{Isaac}", q"{Isabel}", q"{Isabella}", q"{Isabelle}", q"{Isla}"
		, q"{Ivy}", q"{Jack}", q"{Jackson}", q"{Jacob}", q"{Jade}", q"{Jake}", q"{James}", q"{Jasmine}", q"{Jasper}"
		, q"{Jayden}", q"{Jesse}", q"{Jessica}", q"{Jett}", q"{Joel}", q"{John}", q"{Jonathan}", q"{Jordan}"
		, q"{Joseph}", q"{Joshua}", q"{Justin}", q"{Kai}", q"{Kayla}", q"{Kiara}", q"{Lachlan}", q"{Lara}"
		, q"{Lauren}", q"{Layla}", q"{Leah}", q"{Leo}", q"{Levi}", q"{Liam}", q"{Lillian}", q"{Lilly}", q"{Lily}"
		, q"{Lincoln}", q"{Logan}", q"{Lola}", q"{Luca}", q"{Lucas}", q"{Lucy}", q"{Luke}", q"{Mackenzie}"
		, q"{Maddison}", q"{Madeline}", q"{Madison}", q"{Marcus}", q"{Mason}", q"{Matilda}", q"{Matthew}"
		, q"{Max}", q"{Maya}", q"{Mia}", q"{Michael}", q"{Mikayla}", q"{Mitchell}", q"{Molly}", q"{Natalie}"
		, q"{Nate}", q"{Nathan}", q"{Nicholas}", q"{Noah}", q"{Oliver}", q"{Olivia}", q"{Oscar}", q"{Owen}"
		, q"{Paige}", q"{Patrick}", q"{Phoebe}", q"{Phoenix}", q"{Piper}", q"{Poppy}", q"{Riley}", q"{Rose}"
		, q"{Ruby}", q"{Ryan}", q"{Sam}", q"{Samantha}", q"{Samuel}", q"{Sarah}", q"{Savannah}", q"{Scarlett}"
		, q"{Sebastian}", q"{Sienna}", q"{Skye}", q"{Sofia}", q"{Sophia}", q"{Sophie}", q"{Stella}", q"{Stephanie}"
		, q"{Summer}", q"{Tahlia}", q"{Taylor}", q"{Thomas}", q"{Toby}", q"{Tyler}", q"{Victoria}", q"{Violet}"
		, q"{William}", q"{Willow}", q"{Xavier}", q"{Zac}", q"{Zachary}", q"{Zara}", q"{Zoe}" ];

		return choice(strs, this.rnd);
	}

	override string personLastName() {
		const string[] strs =
		[ q"{Smith}", q"{Jones}", q"{Williams}", q"{Brown}", q"{Wilson}", q"{Taylor}", q"{Johnson}", q"{White}"
		, q"{Martin}", q"{Anderson}", q"{Thompson}", q"{Nguyen}", q"{Thomas}", q"{Walker}", q"{Harris}"
		, q"{Lee}", q"{Ryan}", q"{Robinson}", q"{Kelly}", q"{King}", q"{Davis}", q"{Wright}", q"{Evans}", q"{Roberts}"
		, q"{Green}", q"{Hall}", q"{Wood}", q"{Jackson}", q"{Clarke}", q"{Patel}", q"{Khan}", q"{Lewis}", q"{James}"
		, q"{Phillips}", q"{Mason}", q"{Mitchell}", q"{Rose}", q"{Davies}", q"{Rodriguez}", q"{Cox}", q"{Alexander}"
		, q"{Garden}", q"{Campbell}", q"{Johnston}", q"{Moore}", q"{Smyth}", q"{O'Neill}", q"{Doherty}"
		, q"{Stewart}", q"{Quinn}", q"{Murphy}", q"{Graham}", q"{Mclaughlin}", q"{Hamilton}", q"{Murray}"
		, q"{Hughes}", q"{Robertson}", q"{Thomson}", q"{Scott}", q"{Macdonald}", q"{Reid}", q"{Clark}"
		, q"{Ross}", q"{Young}", q"{Watson}", q"{Paterson}", q"{Morrison}", q"{Morgan}", q"{Griffiths}"
		, q"{Edwards}", q"{Rees}", q"{Jenkins}", q"{Owen}", q"{Price}", q"{Moss}", q"{Richards}", q"{Abbott}"
		, q"{Adams}", q"{Armstrong}", q"{Bahringer}", q"{Bailey}", q"{Barrows}", q"{Bartell}", q"{Bartoletti}"
		, q"{Barton}", q"{Bauch}", q"{Baumbach}", q"{Bayer}", q"{Beahan}", q"{Beatty}", q"{Becker}", q"{Beier}"
		, q"{Berge}", q"{Bergstrom}", q"{Bode}", q"{Bogan}", q"{Borer}", q"{Bosco}", q"{Botsford}", q"{Boyer}"
		, q"{Boyle}", q"{Braun}", q"{Bruen}", q"{Carroll}", q"{Carter}", q"{Cartwright}", q"{Casper}", q"{Cassin}"
		, q"{Champlin}", q"{Christiansen}", q"{Cole}", q"{Collier}", q"{Collins}", q"{Connelly}", q"{Conroy}"
		, q"{Corkery}", q"{Cormier}", q"{Corwin}", q"{Cronin}", q"{Crooks}", q"{Cruickshank}", q"{Cummings}"
		, q"{D'Amore}", q"{Daniel}", q"{Dare}", q"{Daugherty}", q"{Dickens}", q"{Dickinson}", q"{Dietrich}"
		, q"{Donnelly}", q"{Dooley}", q"{Douglas}", q"{Doyle}", q"{Durgan}", q"{Ebert}", q"{Emard}", q"{Emmerich}"
		, q"{Erdman}", q"{Ernser}", q"{Fadel}", q"{Fahey}", q"{Farrell}", q"{Fay}", q"{Feeney}", q"{Feil}"
		, q"{Ferry}", q"{Fisher}", q"{Flatley}", q"{Gibson}", q"{Gleason}", q"{Glover}", q"{Goldner}", q"{Goodwin}"
		, q"{Grady}", q"{Grant}", q"{Greenfelder}", q"{Greenholt}", q"{Grimes}", q"{Gutmann}", q"{Hackett}"
		, q"{Hahn}", q"{Haley}", q"{Hammes}", q"{Hand}", q"{Hane}", q"{Hansen}", q"{Harber}", q"{Hartmann}"
		, q"{Harvey}", q"{Hayes}", q"{Heaney}", q"{Heathcote}", q"{Heller}", q"{Hermann}", q"{Hermiston}"
		, q"{Hessel}", q"{Hettinger}", q"{Hickle}", q"{Hill}", q"{Hills}", q"{Hoppe}", q"{Howe}", q"{Howell}"
		, q"{Hudson}", q"{Huel}", q"{Hyatt}", q"{Jacobi}", q"{Jacobs}", q"{Jacobson}", q"{Jerde}", q"{Johns}"
		, q"{Keeling}", q"{Kemmer}", q"{Kessler}", q"{Kiehn}", q"{Kirlin}", q"{Klein}", q"{Koch}", q"{Koelpin}"
		, q"{Kohler}", q"{Koss}", q"{Kovacek}", q"{Kreiger}", q"{Kris}", q"{Kuhlman}", q"{Kuhn}", q"{Kulas}"
		, q"{Kunde}", q"{Kutch}", q"{Lakin}", q"{Lang}", q"{Langworth}", q"{Larkin}", q"{Larson}", q"{Leannon}"
		, q"{Leffler}", q"{Little}", q"{Lockman}", q"{Lowe}", q"{Lynch}", q"{Mann}", q"{Marks}", q"{Marvin}"
		, q"{Mayer}", q"{Mccullough}", q"{Mcdermott}", q"{Mckenzie}", q"{Miller}", q"{Mills}", q"{Monahan}"
		, q"{Morissette}", q"{Mueller}", q"{Muller}", q"{Nader}", q"{Nicolas}", q"{Nolan}", q"{O'Connell}"
		, q"{O'Conner}", q"{O'Hara}", q"{O'Keefe}", q"{Olson}", q"{O'Reilly}", q"{Parisian}", q"{Parker}"
		, q"{Quigley}", q"{Reilly}", q"{Reynolds}", q"{Rice}", q"{Ritchie}", q"{Rohan}", q"{Rolfson}", q"{Rowe}"
		, q"{Russel}", q"{Rutherford}", q"{Sanford}", q"{Sauer}", q"{Schmidt}", q"{Schmitt}", q"{Schneider}"
		, q"{Schroeder}", q"{Schultz}", q"{Shields}", q"{Smitham}", q"{Spencer}", q"{Stanton}", q"{Stark}"
		, q"{Stokes}", q"{Swift}", q"{Tillman}", q"{Towne}", q"{Tremblay}", q"{Tromp}", q"{Turcotte}", q"{Turner}"
		, q"{Walsh}", q"{Walter}", q"{Ward}", q"{Waters}", q"{Weber}", q"{Welch}", q"{West}", q"{Wilderman}"
		, q"{Wilkinson}", q"{Williamson}", q"{Windler}", q"{Wolf}" ];

		return choice(strs, this.rnd);
	}

	override string personMaleFirstName() {
		const string[] strs =
		[ q"{William}", q"{Jack}", q"{Oliver}", q"{Joshua}", q"{Thomas}", q"{Lachlan}", q"{Cooper}", q"{Noah}"
		, q"{Ethan}", q"{Lucas}", q"{James}", q"{Samuel}", q"{Jacob}", q"{Liam}", q"{Alexander}", q"{Benjamin}"
		, q"{Max}", q"{Isaac}", q"{Daniel}", q"{Riley}", q"{Ryan}", q"{Charlie}", q"{Tyler}", q"{Jake}", q"{Matthew}"
		, q"{Xavier}", q"{Harry}", q"{Jayden}", q"{Nicholas}", q"{Harrison}", q"{Levi}", q"{Luke}", q"{Adam}"
		, q"{Henry}", q"{Aiden}", q"{Dylan}", q"{Oscar}", q"{Michael}", q"{Jackson}", q"{Logan}", q"{Joseph}"
		, q"{Blake}", q"{Nathan}", q"{Connor}", q"{Elijah}", q"{Nate}", q"{Archie}", q"{Bailey}", q"{Marcus}"
		, q"{Cameron}", q"{Jordan}", q"{Zachary}", q"{Caleb}", q"{Hunter}", q"{Ashton}", q"{Toby}", q"{Aidan}"
		, q"{Hayden}", q"{Mason}", q"{Hamish}", q"{Edward}", q"{Angus}", q"{Eli}", q"{Sebastian}", q"{Christian}"
		, q"{Patrick}", q"{Andrew}", q"{Anthony}", q"{Luca}", q"{Kai}", q"{Beau}", q"{Alex}", q"{George}"
		, q"{Callum}", q"{Finn}", q"{Zac}", q"{Mitchell}", q"{Jett}", q"{Jesse}", q"{Gabriel}", q"{Leo}", q"{Declan}"
		, q"{Charles}", q"{Jasper}", q"{Jonathan}", q"{Aaron}", q"{Hugo}", q"{David}", q"{Christopher}"
		, q"{Chase}", q"{Owen}", q"{Justin}", q"{Ali}", q"{Darcy}", q"{Lincoln}", q"{Cody}", q"{Phoenix}"
		, q"{Sam}", q"{John}", q"{Joel}" ];

		return choice(strs, this.rnd);
	}

}

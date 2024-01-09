module faked.faker_en_za;

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

class Faker_en_za : Faker_en {
@safe:
	this(int seed) {
		super(seed);
	}

	override string cellPhoneFormats() {
		const string[] strs =
		[ q"{+2760 ### ####}", q"{+2761 ### ####}", q"{+2763 ### ####}", q"{+2772 ### ####}", q"{+2773 ### ####}"
		, q"{+2774 ### ####}", q"{+2776 ### ####}", q"{+2779 ### ####}", q"{+2781 ### ####}", q"{+2782 ### ####}"
		, q"{+2783 ### ####}", q"{+2784 ### ####}", q"{082 ### ####}", q"{084 ### ####}", q"{083 ### ####}"
		, q"{065 ### ####}", q"{082#######}", q"{082 #######}" ];

		return numberBuild(choice(strs, this.rnd));
	}

	override string companySuffix() {
		const string[] strs =
		[ q"{Pty Ltd}", q"{Ltd}", q"{CC}" ];

		return choice(strs, this.rnd);
	}

	override string internetDomainSuffix() {
		const string[] strs =
		[ q"{co.za}", q"{com}", q"{org.za}", q"{info}", q"{net.za}" ];

		return choice(strs, this.rnd);
	}

	override string locationCityName() {
		const string[] strs =
		[ q"{Polokwane}", q"{Johannesburg}", q"{Pretoria}", q"{Tshwane}", q"{Durban}", q"{Pietermaritzburg}"
		, q"{Mbombela}", q"{Cape Town}", q"{Stellenbosch}", q"{Port Elizabeth}", q"{East London}"
		, q"{Kimberley}", q"{Rustenburg}", q"{Bloemfontein}" ];

		return choice(strs, this.rnd);
	}

	override string locationCityPattern() {
		switch(uniform(0, 1, this.rnd)) {
			case 0: return locationCityName();
		}
		return "";
	}

	override string locationDefaultCountry() {
		const string[] strs =
		[ q"{South Africa}", q"{The Republic of South Africa}", q"{SA}" ];

		return choice(strs, this.rnd);
	}

	override string locationPostcode() {
		const string[] strs =
		[ q"{#####}", q"{####}" ];

		return numberBuild(choice(strs, this.rnd));
	}

	override string locationState() {
		const string[] strs =
		[ q"{Limpopo}", q"{Gauteng}", q"{Free State}", q"{North West}", q"{Northern Cape}", q"{Western Cape}"
		, q"{KwaZulu-Natal}", q"{Mpumalanga}", q"{Eastern Cape}" ];

		return choice(strs, this.rnd);
	}

	override string locationStreetPattern() {
		switch(uniform(0, 2, this.rnd)) {
			case 0: return personFirstName() ~ " " ~ locationStreetSuffix();
			case 1: return personLastName() ~ " " ~ locationStreetSuffix();
		}
		return "";
	}

	override string personFemaleFirstName() {
		const string[] strs =
		[ q"{Mary}", q"{Patricia}", q"{Linda}", q"{Barbara}", q"{Elizabeth}", q"{Jennifer}", q"{Susan}", q"{Margaret}"
		, q"{Dorothy}", q"{Lisa}", q"{Karen}", q"{Helen}", q"{Sandra}", q"{Donna}", q"{Carol}", q"{Ruth}"
		, q"{Sharon}", q"{Michelle}", q"{Laura}", q"{Sarah}", q"{Kimberly}", q"{Deborah}", q"{Jessica}"
		, q"{Shirley}", q"{Cynthia}", q"{Angela}", q"{Melissa}", q"{Brenda}", q"{Amy}", q"{Anna}", q"{Rebecca}"
		, q"{Kathleen}", q"{Amanda}", q"{Stephanie}", q"{Carolyn}", q"{Christine}", q"{Marie}", q"{Janet}"
		, q"{Catherine}", q"{Ann}", q"{Joyce}", q"{Diane}", q"{Alice}", q"{Julie}", q"{Heather}", q"{Teresa}"
		, q"{Evelyn}", q"{Cheryl}", q"{Katherine}", q"{Joan}", q"{Ashley}", q"{Judith}", q"{Rose}", q"{Janice}"
		, q"{Kelly}", q"{Nicole}", q"{Judy}", q"{Christina}", q"{Kathy}", q"{Theresa}", q"{Beverly}", q"{Denise}"
		, q"{Tammy}", q"{Irene}", q"{Jane}", q"{Lori}", q"{Rachel}", q"{Marilyn}", q"{Andrea}", q"{Kathryn}"
		, q"{Louise}", q"{Sara}", q"{Anne}", q"{Jacqueline}", q"{Julia}", q"{Tina}", q"{Paula}", q"{Diana}"
		, q"{Annie}", q"{Lillian}", q"{Emily}", q"{Robin}", q"{Rita}", q"{Tracy}", q"{Edna}", q"{Tiffany}"
		, q"{Carmen}", q"{Cindy}", q"{Edith}", q"{Kim}", q"{Sherry}", q"{Shannon}", q"{Ethel}", q"{Ellen}"
		, q"{Elaine}", q"{Charlotte}", q"{Monica}", q"{Pauline}", q"{Emma}", q"{Juanita}", q"{Anita}", q"{Rhonda}"
		, q"{Hazel}", q"{Amber}", q"{Debbie}", q"{Clara}", q"{Lucille}", q"{Joanne}", q"{Eleanor}", q"{Megan}"
		, q"{Alicia}", q"{Suzanne}", q"{Michele}", q"{Gail}", q"{Geraldine}", q"{Lauren}", q"{Cathy}", q"{Joann}"
		, q"{Lorraine}", q"{Lynn}", q"{Erica}", q"{Beatrice}", q"{Bernice}", q"{Audrey}", q"{Yvonne}", q"{Annette}"
		, q"{Samantha}", q"{Dana}", q"{Stacy}", q"{Ana}", q"{Renee}", q"{Ida}", q"{Vivian}", q"{Roberta}"
		, q"{Melanie}", q"{Yolanda}", q"{Jeanette}", q"{Katie}", q"{Kristen}", q"{Vanessa}", q"{Alma}"
		, q"{Sue}", q"{Elsie}", q"{Beth}", q"{Jeanne}", q"{Vicki}", q"{Carla}", q"{Tara}", q"{Rosemary}", q"{Eileen}"
		, q"{Lucy}", q"{Stacey}", q"{Wilma}", q"{Gina}", q"{Kristin}", q"{Jessie}", q"{Natalie}", q"{Charlene}"
		, q"{Melinda}", q"{Maureen}", q"{Colleen}", q"{Allison}", q"{Tamara}", q"{Joy}", q"{Claudia}", q"{Jackie}"
		, q"{Marcia}", q"{Tanya}", q"{Nellie}", q"{Marlene}", q"{Heidi}", q"{Glenda}", q"{Lydia}", q"{Viola}"
		, q"{Courtney}", q"{Marian}", q"{Stella}", q"{Caroline}", q"{Vickie}", q"{Maxine}", q"{Irma}", q"{Christy}"
		, q"{Deanna}", q"{Hilda}", q"{Jennie}", q"{Nora}", q"{Nina}", q"{Cassandra}", q"{Leah}", q"{Priscilla}"
		, q"{Carole}", q"{Olga}", q"{Billie}", q"{Dianne}", q"{Tracey}", q"{Leona}", q"{Jenny}", q"{Felicia}"
		, q"{Sonia}", q"{Kristina}", q"{Shelly}", q"{Sherri}", q"{Erika}", q"{Katrina}", q"{Claire}", q"{Lindsay}"
		, q"{Belinda}", q"{Margarita}", q"{Sheryl}", q"{Natasha}", q"{Molly}", q"{Cecilia}", q"{Kristi}"
		, q"{Brandi}", q"{Blanche}", q"{Sandy}", q"{Rosie}", q"{Joanna}", q"{Iris}", q"{Eunice}", q"{Angie}"
		, q"{Lynda}", q"{Madeline}", q"{Amelia}", q"{Monique}", q"{Maggie}", q"{Kayla}", q"{Sonya}", q"{Jan}"
		, q"{Lee}", q"{Kristine}", q"{Candace}", q"{Alison}", q"{Yvette}", q"{Melody}", q"{Olivia}", q"{Kristy}"
		, q"{Antoinette}", q"{Candice}", q"{Bridget}", q"{Karla}", q"{Celia}", q"{Gayle}", q"{Vicky}", q"{Lynne}"
		, q"{Sheri}", q"{Marianne}", q"{Kara}", q"{Jacquelyn}", q"{Erma}", q"{Leticia}", q"{Krista}", q"{Roxanne}"
		, q"{Robyn}", q"{Rosalie}", q"{Alexandra}", q"{Brooke}", q"{Bethany}", q"{Bernadette}", q"{Traci}"
		, q"{Nichole}", q"{Krystal}", q"{Angelina}", q"{Nadine}", q"{Estelle}", q"{Dianna}", q"{Rosemarie}"
		, q"{Desiree}", q"{Lynette}", q"{Cristina}", q"{Leigh}", q"{Meghan}", q"{Eloise}", q"{Rochelle}"
		, q"{Jana}", q"{Gwen}", q"{Kerry}", q"{Jenna}", q"{Tricia}", q"{Laverne}", q"{Alexis}", q"{Tasha}"
		, q"{Kellie}", q"{Sonja}", q"{Mandy}", q"{Lorene}", q"{Elsa}", q"{Camille}", q"{Tami}", q"{Elisa}"
		, q"{Kristie}" ];

		return choice(strs, this.rnd);
	}

	override string personFirstName() {
		const string[] strs =
		[ q"{Rapulane}", q"{Nthabiseng}", q"{Kopano}", q"{Mpho}", q"{Lungelo}", q"{Ziyanda}", q"{Nqobile}"
		, q"{Monde}", q"{Mary}", q"{Patricia}", q"{Linda}", q"{Barbara}", q"{Elizabeth}", q"{Jennifer}"
		, q"{Susan}", q"{Margaret}", q"{Dorothy}", q"{Lisa}", q"{Karen}", q"{Helen}", q"{Sandra}", q"{Donna}"
		, q"{Carol}", q"{Ruth}", q"{Sharon}", q"{Michelle}", q"{Laura}", q"{Sarah}", q"{Kimberly}", q"{Deborah}"
		, q"{Jessica}", q"{Shirley}", q"{Cynthia}", q"{Angela}", q"{Melissa}", q"{Brenda}", q"{Amy}", q"{Anna}"
		, q"{Rebecca}", q"{Kathleen}", q"{Amanda}", q"{Stephanie}", q"{Carolyn}", q"{Christine}", q"{Marie}"
		, q"{Janet}", q"{Catherine}", q"{Ann}", q"{Joyce}", q"{Diane}", q"{Alice}", q"{Julie}", q"{Heather}"
		, q"{Teresa}", q"{Evelyn}", q"{Cheryl}", q"{Katherine}", q"{Joan}", q"{Ashley}", q"{Judith}", q"{Rose}"
		, q"{Janice}", q"{Kelly}", q"{Nicole}", q"{Judy}", q"{Christina}", q"{Kathy}", q"{Theresa}", q"{Beverly}"
		, q"{Denise}", q"{Tammy}", q"{Irene}", q"{Jane}", q"{Lori}", q"{Rachel}", q"{Marilyn}", q"{Andrea}"
		, q"{Kathryn}", q"{Louise}", q"{Sara}", q"{Anne}", q"{Jacqueline}", q"{Julia}", q"{Tina}", q"{Paula}"
		, q"{Diana}", q"{Annie}", q"{Lillian}", q"{Emily}", q"{Robin}", q"{Rita}", q"{Tracy}", q"{Edna}", q"{Tiffany}"
		, q"{Carmen}", q"{Cindy}", q"{Edith}", q"{Kim}", q"{Sherry}", q"{Shannon}", q"{Ethel}", q"{Ellen}"
		, q"{Elaine}", q"{Charlotte}", q"{Monica}", q"{Pauline}", q"{Emma}", q"{Juanita}", q"{Anita}", q"{Rhonda}"
		, q"{Hazel}", q"{Amber}", q"{Debbie}", q"{Clara}", q"{Lucille}", q"{Joanne}", q"{Eleanor}", q"{Megan}"
		, q"{Alicia}", q"{Suzanne}", q"{Michele}", q"{Gail}", q"{Geraldine}", q"{Lauren}", q"{Cathy}", q"{Joann}"
		, q"{Lorraine}", q"{Lynn}", q"{Erica}", q"{Beatrice}", q"{Bernice}", q"{Audrey}", q"{Yvonne}", q"{Annette}"
		, q"{Samantha}", q"{Dana}", q"{Stacy}", q"{Ana}", q"{Renee}", q"{Ida}", q"{Vivian}", q"{Roberta}"
		, q"{Melanie}", q"{Yolanda}", q"{Jeanette}", q"{Katie}", q"{Kristen}", q"{Vanessa}", q"{Alma}"
		, q"{Sue}", q"{Elsie}", q"{Beth}", q"{Jeanne}", q"{Vicki}", q"{Carla}", q"{Tara}", q"{Rosemary}", q"{Eileen}"
		, q"{Lucy}", q"{Stacey}", q"{Wilma}", q"{Gina}", q"{Kristin}", q"{Jessie}", q"{Natalie}", q"{Charlene}"
		, q"{Melinda}", q"{Maureen}", q"{Colleen}", q"{Allison}", q"{Tamara}", q"{Joy}", q"{Claudia}", q"{Jackie}"
		, q"{Marcia}", q"{Tanya}", q"{Nellie}", q"{Marlene}", q"{Heidi}", q"{Glenda}", q"{Lydia}", q"{Viola}"
		, q"{Courtney}", q"{Marian}", q"{Stella}", q"{Caroline}", q"{Vickie}", q"{Maxine}", q"{Irma}", q"{Christy}"
		, q"{Deanna}", q"{Hilda}", q"{Jennie}", q"{Nora}", q"{Nina}", q"{Cassandra}", q"{Leah}", q"{Priscilla}"
		, q"{Carole}", q"{Olga}", q"{Billie}", q"{Dianne}", q"{Tracey}", q"{Leona}", q"{Jenny}", q"{Felicia}"
		, q"{Sonia}", q"{Kristina}", q"{Shelly}", q"{Sherri}", q"{Erika}", q"{Katrina}", q"{Claire}", q"{Lindsay}"
		, q"{Belinda}", q"{Margarita}", q"{Sheryl}", q"{Natasha}", q"{Molly}", q"{Cecilia}", q"{Kristi}"
		, q"{Brandi}", q"{Blanche}", q"{Sandy}", q"{Rosie}", q"{Joanna}", q"{Iris}", q"{Eunice}", q"{Angie}"
		, q"{Lynda}", q"{Madeline}", q"{Amelia}", q"{Monique}", q"{Maggie}", q"{Kayla}", q"{Sonya}", q"{Jan}"
		, q"{Lee}", q"{Kristine}", q"{Candace}", q"{Alison}", q"{Yvette}", q"{Melody}", q"{Olivia}", q"{Kristy}"
		, q"{Antoinette}", q"{Candice}", q"{Bridget}", q"{Karla}", q"{Celia}", q"{Gayle}", q"{Vicky}", q"{Lynne}"
		, q"{Sheri}", q"{Marianne}", q"{Kara}", q"{Jacquelyn}", q"{Erma}", q"{Leticia}", q"{Krista}", q"{Roxanne}"
		, q"{Robyn}", q"{Rosalie}", q"{Alexandra}", q"{Brooke}", q"{Bethany}", q"{Bernadette}", q"{Traci}"
		, q"{Nichole}", q"{Krystal}", q"{Angelina}", q"{Nadine}", q"{Estelle}", q"{Dianna}", q"{Rosemarie}"
		, q"{Desiree}", q"{Lynette}", q"{Cristina}", q"{Leigh}", q"{Meghan}", q"{Eloise}", q"{Rochelle}"
		, q"{Jana}", q"{Gwen}", q"{Kerry}", q"{Jenna}", q"{Tricia}", q"{Laverne}", q"{Alexis}", q"{Tasha}"
		, q"{Kellie}", q"{Sonja}", q"{Mandy}", q"{Lorene}", q"{Elsa}", q"{Camille}", q"{Tami}", q"{Elisa}"
		, q"{Kristie}", q"{James}", q"{John}", q"{Robert}", q"{Michael}", q"{William}", q"{David}", q"{Richard}"
		, q"{Thomas}", q"{Charles}", q"{Christopher}", q"{Daniel}", q"{Dante}", q"{Paul}", q"{Mark}", q"{George}"
		, q"{Kenneth}", q"{Steven}", q"{Edward}", q"{Brian}", q"{Ronald}", q"{Anthony}", q"{Albert}", q"{Alfred}"
		, q"{Kevin}", q"{Jason}", q"{Matthew}", q"{Gary}", q"{Timothy}", q"{Frank}", q"{Eric}", q"{Stephen}"
		, q"{Andrew}", q"{Raymond}", q"{Greg}", q"{Joshua}", q"{Jerry}", q"{Dennis}", q"{Peter}", q"{Henry}"
		, q"{Carl}", q"{Arthur}", q"{Ryan}", q"{Roger}", q"{Joe}", q"{Juan}", q"{Jonathan}", q"{Justin}", q"{Terry}"
		, q"{Gerald}", q"{Keith}", q"{Samuel}", q"{Willie}", q"{Ralph}", q"{Roy}", q"{Brandon}", q"{Adam}"
		, q"{Harry}", q"{Wayne}", q"{Billy}", q"{Steve}", q"{Louis}", q"{Jeremy}", q"{Howard}", q"{Eugene}"
		, q"{Carlos}", q"{Russell}", q"{Bobby}", q"{Victor}", q"{Martin}", q"{Ernest}", q"{Phillip}", q"{Craig}"
		, q"{Alan}", q"{Shawn}", q"{Sean}", q"{Philip}", q"{Chris}", q"{Johnny}", q"{Earl}", q"{Jimmy}", q"{Bryan}"
		, q"{Tony}", q"{Luis}", q"{Mike}", q"{Stanley}", q"{Leonard}", q"{Nathan}", q"{Dale}", q"{Manuel}"
		, q"{Rodney}", q"{Curtis}", q"{Norman}", q"{Allen}", q"{Marvin}", q"{Vincent}", q"{Glenn}", q"{Travis}"
		, q"{Jacob}", q"{Kyle}", q"{Francis}", q"{Bradley}", q"{Joel}", q"{Edwin}", q"{Eddie}", q"{Barry}"
		, q"{Alexander}", q"{Bernard}", q"{Marcus}", q"{Micheal}", q"{Theodore}", q"{Clifford}", q"{Miguel}"
		, q"{Oscar}", q"{Jay}", q"{Jim}", q"{Tom}", q"{Calvin}", q"{Alex}", q"{Jon}", q"{Ronnie}", q"{Bill}"
		, q"{Lloyd}", q"{Tommy}", q"{Leon}", q"{Derek}", q"{Warren}", q"{Darrell}", q"{Jerome}", q"{Leo}"
		, q"{Tim}", q"{Wesley}", q"{Gordon}", q"{Dean}", q"{Jorge}", q"{Dustin}", q"{Derrick}", q"{Dan}", q"{Herman}"
		, q"{Glen}", q"{Shane}", q"{Rick}", q"{Brent}", q"{Tyler}", q"{Marc}", q"{Ruben}", q"{Brett}", q"{Nathaniel}"
		, q"{Rafael}", q"{Leslie}", q"{Edgar}", q"{Raul}", q"{Ben}", q"{Chester}", q"{Cecil}", q"{Duane}"
		, q"{Franklin}", q"{Andre}", q"{Elmer}", q"{Brad}", q"{Gabriel}", q"{Ron}", q"{Mitchell}", q"{Roland}"
		, q"{Arnold}", q"{Harvey}", q"{Jared}", q"{Adrian}", q"{Karl}", q"{Cory}", q"{Claude}", q"{Erik}"
		, q"{Darryl}", q"{Jamie}", q"{Neil}", q"{Christian}", q"{Ted}", q"{Mathew}", q"{Tyrone}", q"{Darren}"
		, q"{Kurt}", q"{Allan}", q"{Guy}", q"{Max}", q"{Dwayne}", q"{Ian}", q"{Ken}", q"{Bob}", q"{Dave}", q"{Ivan}"
		, q"{Johnnie}", q"{Sid}", q"{Sidney}", q"{Byron}", q"{Julian}", q"{Morris}", q"{Clifton}", q"{Willard}"
		, q"{Daryl}", q"{Ross}", q"{Andy}", q"{Kirk}", q"{Terrence}", q"{Fred}", q"{Freddie}", q"{Wade}", q"{Stuart}"
		, q"{Joey}", q"{Nick}", q"{Julius}", q"{Trevor}", q"{Luke}", q"{Gerard}", q"{Hubert}", q"{Shaun}"
		, q"{Matt}", q"{Cameron}", q"{Neal}", q"{Wilbur}", q"{Grant}", q"{Jean}", q"{Johnathan}", q"{Rudolph}"
		, q"{Rudy}", q"{Marco}", q"{Garry}", q"{Bennie}", q"{Ed}", q"{Colin}", q"{Earnest}", q"{Lucas}", q"{Benny}"
		, q"{Noel}", q"{Garrett}", q"{Gregg}", q"{Devin}", q"{Simon}", q"{Rufus}", q"{Clint}", q"{Josh}", q"{Hugo}"
		, q"{Erick}", q"{Frankie}", q"{Stewart}", q"{Terence}", q"{Conrad}", q"{Percy}", q"{Tommie}" ];

		return choice(strs, this.rnd);
	}

	override string personLastName() {
		const string[] strs =
		[ q"{Dlamini}", q"{Zulu}", q"{Mabunda}", q"{Makhanya}", q"{Khoza}", q"{Zuma}", q"{Zondi}", q"{Abbott}"
		, q"{Adams}", q"{Anderson}", q"{Adcock}", q"{Ashley}", q"{Amla}", q"{Baloyi}", q"{Bailey}", q"{Barrows}"
		, q"{Barton}", q"{Berge}", q"{Bernhard}", q"{Bernier}", q"{Boyle}", q"{Braun}", q"{Blanckenberg}"
		, q"{Brekke}", q"{Brown}", q"{Bruen}", q"{Bacher}", q"{Boucher}", q"{Bromfield}", q"{Benjamin}"
		, q"{Bongo}", q"{Bhana}", q"{Bhengu}", q"{Carter}", q"{Cameron}", q"{Champlin}", q"{Collins}", q"{Cullinan}"
		, q"{Chetty}", q"{Cook}", q"{Connelly}", q"{Crooks}", q"{Cummings}", q"{Cassim}", q"{Dube}", q"{Dhlamini}"
		, q"{Daniel}", q"{Davis}", q"{Dower}", q"{Dixon}", q"{Dickinson}", q"{Douglas}", q"{Deane}", q"{Ebert}"
		, q"{Elworthy}", q"{Feest}", q"{Fuller}", q"{Fish}", q"{Fisher}", q"{Fichardt}", q"{Govender}"
		, q"{Gupta}", q"{Gandhi}", q"{Gibson}", q"{Gibbs}", q"{Gleason}", q"{Goonam}", q"{Gordhan}", q"{Goodwin}"
		, q"{Grady}", q"{Graham}", q"{Grant}", q"{Green}", q"{Greenholt}", q"{Grimes}", q"{Hlongwane}"
		, q"{Harris}", q"{Hall}", q"{Horne}", q"{Harvey}", q"{Hearne}", q"{Heller}", q"{Herzog}", q"{Hudson}"
		, q"{Hlatshwayo}", q"{Hitchinson}", q"{Hathorn}", q"{Hayworth}", q"{Henderson}", q"{Jacobs}"
		, q"{Jacobson}", q"{Johnson}", q"{Johnston}", q"{Jones}", q"{Joseph}", q"{Kalyan}", q"{Kathrada}"
		, q"{King}", q"{Klusener}", q"{Klein}", q"{Keith}", q"{Kennedy}", q"{Kuhn}", q"{Khumalu}", q"{Kunene}"
		, q"{Kempis}", q"{Kemp}", q"{Kubheka}", q"{Khuzwayo}", q"{Linsey}", q"{Lowe}", q"{Letsoalo}", q"{Mhlanga}"
		, q"{Mabaso}", q"{Mazibuko}", q"{Moosa}", q"{Mhlongo}", q"{Mahlangu}", q"{Markham}", q"{Mansell}"
		, q"{Marvin}", q"{Mayer}", q"{Mbatha}", q"{Maseko}", q"{Milton}", q"{Mkhize}", q"{Moses}", q"{McKenzie}"
		, q"{McMillan}", q"{McLaren}", q"{McLean}", q"{Miller}", q"{Mills}", q"{Mitchell}", q"{Mchunu}"
		, q"{Munsamy}", q"{Mnisi}", q"{Moen}", q"{Motaung}", q"{Mudau}", q"{Mohr}", q"{Monahan}", q"{Moore}"
		, q"{Moonsamy}", q"{Mphahlele}", q"{Morar}", q"{Molefe}", q"{Mthembu}", q"{Muller}", q"{Murray}"
		, q"{Moloi}", q"{Mofokeng}", q"{Modise}", q"{Mtshali}", q"{Mathebula}", q"{Mthethwa}", q"{Maluleke}"
		, q"{Mokwena}", q"{Motloung}", q"{Mahabeer}", q"{Mngomezulu}", q"{Nolan}", q"{Nair}", q"{Ndlovu}"
		, q"{Nkosi}", q"{Ngcobo}", q"{Ngwenya}", q"{Ntuli}", q"{Nxumalo}", q"{Ngubane}", q"{Nhlapo}", q"{Ndaba}"
		, q"{Nkomo}", q"{Oliphant}", q"{Ochse}", q"{O'Linn}", q"{Patel}", q"{Parker}", q"{Parkin}", q"{Pillay}"
		, q"{Parnell}", q"{Peterson}", q"{Procter}", q"{Poore}", q"{Pollock}", q"{Powell}", q"{Price}"
		, q"{Prince}", q"{Pithey}", q"{Reilly}", q"{Reid}", q"{Rowe}", q"{Roberts}", q"{Richards}", q"{Richardson}"
		, q"{Schmidt}", q"{Schultz}", q"{Stewart}", q"{Symcox}", q"{Smith}", q"{Stokes}", q"{Sinclair}"
		, q"{Singh}", q"{Shongwe}", q"{Sibiya}", q"{Schwarz}", q"{Snooke}", q"{Sithole}", q"{Terry}", q"{Thompson}"
		, q"{Tromp}", q"{Tuckett}", q"{Taylor}", q"{Tsabalala}", q"{Wesley}", q"{Walsh}", q"{Weber}", q"{Weimann}"
		, q"{Willoughby}", q"{White}", q"{Welch}", q"{West}", q"{Williamson}", q"{Ziemann}", q"{Albertyn}"
		, q"{Bosman}", q"{Bester}", q"{Truter}", q"{Tsotetsi}", q"{Prinsloo}", q"{van Niekerk}", q"{Zimmerman}"
		, q"{Venter}", q"{van den Berg}", q"{Xaba}", q"{Zungu}", q"{Zwane}" ];

		return choice(strs, this.rnd);
	}

	override string personLastNamePattern() {
		const int rndInt = uniform(0, 100, this.rnd);

		if(rndInt >= 0 && rndInt < 95) {
			return personLastName();
		}
		if(rndInt >= 95 && rndInt < 100) {
			return personLastName() ~ "-" ~ personLastName();
		}

		return "";
	}

	override string personMaleFirstName() {
		const string[] strs =
		[ q"{James}", q"{John}", q"{Robert}", q"{Michael}", q"{William}", q"{David}", q"{Richard}", q"{Thomas}"
		, q"{Charles}", q"{Christopher}", q"{Daniel}", q"{Dante}", q"{Paul}", q"{Mark}", q"{George}", q"{Kenneth}"
		, q"{Steven}", q"{Edward}", q"{Brian}", q"{Ronald}", q"{Anthony}", q"{Albert}", q"{Alfred}", q"{Kevin}"
		, q"{Jason}", q"{Matthew}", q"{Gary}", q"{Timothy}", q"{Frank}", q"{Eric}", q"{Stephen}", q"{Andrew}"
		, q"{Raymond}", q"{Greg}", q"{Joshua}", q"{Jerry}", q"{Dennis}", q"{Peter}", q"{Henry}", q"{Carl}"
		, q"{Arthur}", q"{Ryan}", q"{Roger}", q"{Joe}", q"{Juan}", q"{Jonathan}", q"{Justin}", q"{Terry}"
		, q"{Gerald}", q"{Keith}", q"{Samuel}", q"{Willie}", q"{Ralph}", q"{Roy}", q"{Brandon}", q"{Adam}"
		, q"{Harry}", q"{Wayne}", q"{Billy}", q"{Steve}", q"{Louis}", q"{Jeremy}", q"{Howard}", q"{Eugene}"
		, q"{Carlos}", q"{Russell}", q"{Bobby}", q"{Victor}", q"{Martin}", q"{Ernest}", q"{Phillip}", q"{Craig}"
		, q"{Alan}", q"{Shawn}", q"{Sean}", q"{Philip}", q"{Chris}", q"{Johnny}", q"{Earl}", q"{Jimmy}", q"{Bryan}"
		, q"{Tony}", q"{Luis}", q"{Mike}", q"{Stanley}", q"{Leonard}", q"{Nathan}", q"{Dale}", q"{Manuel}"
		, q"{Rodney}", q"{Curtis}", q"{Norman}", q"{Allen}", q"{Marvin}", q"{Vincent}", q"{Glenn}", q"{Travis}"
		, q"{Jacob}", q"{Kyle}", q"{Francis}", q"{Bradley}", q"{Joel}", q"{Edwin}", q"{Eddie}", q"{Barry}"
		, q"{Alexander}", q"{Bernard}", q"{Marcus}", q"{Micheal}", q"{Theodore}", q"{Clifford}", q"{Miguel}"
		, q"{Oscar}", q"{Jay}", q"{Jim}", q"{Tom}", q"{Calvin}", q"{Alex}", q"{Jon}", q"{Ronnie}", q"{Bill}"
		, q"{Lloyd}", q"{Tommy}", q"{Leon}", q"{Derek}", q"{Warren}", q"{Darrell}", q"{Jerome}", q"{Leo}"
		, q"{Tim}", q"{Wesley}", q"{Gordon}", q"{Dean}", q"{Jorge}", q"{Dustin}", q"{Derrick}", q"{Dan}", q"{Herman}"
		, q"{Glen}", q"{Shane}", q"{Rick}", q"{Brent}", q"{Tyler}", q"{Marc}", q"{Ruben}", q"{Brett}", q"{Nathaniel}"
		, q"{Rafael}", q"{Leslie}", q"{Edgar}", q"{Raul}", q"{Ben}", q"{Chester}", q"{Cecil}", q"{Duane}"
		, q"{Franklin}", q"{Andre}", q"{Elmer}", q"{Brad}", q"{Gabriel}", q"{Ron}", q"{Mitchell}", q"{Roland}"
		, q"{Arnold}", q"{Harvey}", q"{Jared}", q"{Adrian}", q"{Karl}", q"{Cory}", q"{Claude}", q"{Erik}"
		, q"{Darryl}", q"{Jamie}", q"{Neil}", q"{Jessie}", q"{Christian}", q"{Ted}", q"{Mathew}", q"{Tyrone}"
		, q"{Darren}", q"{Kurt}", q"{Allan}", q"{Guy}", q"{Max}", q"{Dwayne}", q"{Ian}", q"{Ken}", q"{Bob}", q"{Dave}"
		, q"{Ivan}", q"{Johnnie}", q"{Sid}", q"{Sidney}", q"{Byron}", q"{Julian}", q"{Morris}", q"{Clifton}"
		, q"{Willard}", q"{Daryl}", q"{Ross}", q"{Andy}", q"{Kirk}", q"{Terrence}", q"{Fred}", q"{Freddie}"
		, q"{Wade}", q"{Stuart}", q"{Joey}", q"{Nick}", q"{Julius}", q"{Trevor}", q"{Luke}", q"{Gerard}", q"{Hubert}"
		, q"{Shaun}", q"{Matt}", q"{Cameron}", q"{Neal}", q"{Wilbur}", q"{Grant}", q"{Jean}", q"{Johnathan}"
		, q"{Rudolph}", q"{Rudy}", q"{Marco}", q"{Garry}", q"{Bennie}", q"{Ed}", q"{Colin}", q"{Earnest}"
		, q"{Lucas}", q"{Benny}", q"{Noel}", q"{Garrett}", q"{Gregg}", q"{Devin}", q"{Kim}", q"{Simon}", q"{Rufus}"
		, q"{Clint}", q"{Josh}", q"{Hugo}", q"{Erick}", q"{Frankie}", q"{Stewart}", q"{Terence}", q"{Conrad}"
		, q"{Percy}", q"{Tommie}", q"{Jan}" ];

		return choice(strs, this.rnd);
	}

	override string personName() {
		const int rndInt = uniform(0, 2, this.rnd);

		if(rndInt >= 0 && rndInt < 1) {
			return personFirstName() ~ " " ~ personLastName();
		}
		if(rndInt >= 1 && rndInt < 2) {
			return personLastName() ~ " " ~ personFirstName();
		}

		return "";
	}

	override string phoneNumberFormats() {
		const string[] strs =
		[ q"{(0##) ### ####}", q"{0## ### ####}", q"{+27 ## ### ####}", q"{01# ### #####}", q"{02# ### #####}"
		, q"{03# ### #####}", q"{04# ### #####}", q"{05# ### #####}", q"{0800 ### ###}", q"{0860 ### ###}"
		, q"{01#########}", q"{01# ########}" ];

		return numberBuild(choice(strs, this.rnd));
	}

}

module faked.faker_af_za;

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

class Faker_af_za : Faker_en {
@safe:
	this(int seed) {
		super(seed);
	}

	override string cellPhoneFormats() {
		const string[] strs =
		[ q"{082 ### ####}", q"{084 ### ####}", q"{083 ### ####}", q"{065 ### ####}", q"{082#######}"
		, q"{082 #######}" ];

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
		, q"{Nelspruit}", q"{Kaapstad}", q"{Stellenbosch}", q"{Port Elizabeth}", q"{Oos-Londen}"
		, q"{Kimberley}", q"{Rustenburg}", q"{Bloemfontein}" ];

		return choice(strs, this.rnd);
	}

	override string locationCityPattern() {
		switch(uniform(0, 1, this.rnd)) {
			case 0: return locationCityName();
			default: return "";
		}
	}

	override string locationDefaultCountry() {
		const string[] strs =
		[ q"{South Africa}" ];

		return choice(strs, this.rnd);
	}

	override string locationPostcode() {
		const string[] strs =
		[ q"{#####}", q"{####}" ];

		return numberBuild(choice(strs, this.rnd));
	}

	override string locationState() {
		const string[] strs =
		[ q"{Gauteng}", q"{KwaZulu-Natal}", q"{Limpopo}", q"{Mpumalanga}", q"{Noord-Kaap}", q"{Noordwes}"
		, q"{Oos-Kaap}", q"{Vrystaat}", q"{Wes-Kaap}" ];

		return choice(strs, this.rnd);
	}

	override string locationStreetPattern() {
		switch(uniform(0, 2, this.rnd)) {
			case 0: return personFirstName() ~ " " ~ locationStreetSuffix();
			case 1: return personLastName() ~ " " ~ locationStreetSuffix();
			default: return "";
		}
	}

	override string personFemaleFirstName() {
		const string[] strs =
		[ q"{Susan}", q"{Monica}", q"{Linda}", q"{Elsa}", q"{Margaret}", q"{Lisa}", q"{Karen}", q"{Helen}", q"{Sandra}"
		, q"{Sara}", q"{Kimberly}", q"{Angelique}", q"{Melissa}", q"{Brenda}", q"{Anna}", q"{Annelie}"
		, q"{Katryn}", q"{Amanda}", q"{Stefanie}", q"{Marie}", q"{Janet}", q"{Rosemarie}", q"{Nicoleen}"
		, q"{Paula}", q"{Robin}", q"{Rita}", q"{Edna}", q"{Carmen}", q"{Cindy}", q"{Edith}", q"{Ethel}", q"{Ellen}"
		, q"{Elaine}", q"{Charlotte}", q"{Pauline}", q"{Juanita}", q"{Anita}", q"{Rhonda}", q"{Hazel}"
		, q"{Debbie}", q"{Clara}", q"{Lucille}", q"{Eleanor}", q"{Alicia}", q"{Michele}", q"{Geraldine}"
		, q"{Erika}", q"{Bernice}", q"{Audrey}", q"{Yvonne}", q"{Annette}", q"{Renette}", q"{Ida}", q"{Melanie}"
		, q"{Jolanda}", q"{Vanessa}", q"{Alma}", q"{Sue-Marie}", q"{Carla}", q"{Rosemary}", q"{Wilma}"
		, q"{Kristin}", q"{Natalie}", q"{Charlene}", q"{Melinda}", q"{Maureen}", q"{Tanya}", q"{Marlene}"
		, q"{Heidi}", q"{Lydia}", q"{Vickie}", q"{Nina}", q"{Leona}", q"{Jenny}", q"{Sonia}", q"{Kristina}"
		, q"{Katrina}", q"{Belinda}", q"{Natasha}", q"{Cecile}", q"{Angie}", q"{Lynda}", q"{Amelia}", q"{Monique}"
		, q"{Kayla}", q"{Yvette}", q"{Olivia}", q"{Antoinette}", q"{Bridgette}", q"{Karla}", q"{Leticia}"
		, q"{Krista}", q"{Robyn}", q"{Rosalie}", q"{Bernadette}", q"{Krystal}", q"{Nadine}", q"{Estelle}"
		, q"{Lynette}", q"{Eloise}", q"{Jana}", q"{Kerry}", q"{Jenna}", q"{Tasha}", q"{Sonja}", q"{Elisa}"
		, q"{Kristie}" ];

		return choice(strs, this.rnd);
	}

	override string personFirstName() {
		const string[] strs =
		[ q"{Susan}", q"{Monica}", q"{Linda}", q"{Elsa}", q"{Margaret}", q"{Lisa}", q"{Karen}", q"{Helen}", q"{Sandra}"
		, q"{Sara}", q"{Kimberly}", q"{Angelique}", q"{Melissa}", q"{Brenda}", q"{Anna}", q"{Annelie}"
		, q"{Katryn}", q"{Amanda}", q"{Stefanie}", q"{Marie}", q"{Janet}", q"{Rosemarie}", q"{Nicoleen}"
		, q"{Paula}", q"{Robin}", q"{Rita}", q"{Edna}", q"{Carmen}", q"{Cindy}", q"{Edith}", q"{Ethel}", q"{Ellen}"
		, q"{Elaine}", q"{Charlotte}", q"{Pauline}", q"{Juanita}", q"{Anita}", q"{Rhonda}", q"{Hazel}"
		, q"{Debbie}", q"{Clara}", q"{Lucille}", q"{Eleanor}", q"{Alicia}", q"{Michele}", q"{Geraldine}"
		, q"{Erika}", q"{Bernice}", q"{Audrey}", q"{Yvonne}", q"{Annette}", q"{Renette}", q"{Ida}", q"{Melanie}"
		, q"{Jolanda}", q"{Vanessa}", q"{Alma}", q"{Sue-Marie}", q"{Carla}", q"{Wilma}", q"{Kristin}", q"{Natalie}"
		, q"{Charlene}", q"{Melinda}", q"{Maureen}", q"{Tanya}", q"{Marlene}", q"{Heidi}", q"{Lydia}", q"{Vickie}"
		, q"{Nina}", q"{Leona}", q"{Jenny}", q"{Sonia}", q"{Kristina}", q"{Katrina}", q"{Belinda}", q"{Natasha}"
		, q"{Cecile}", q"{Angie}", q"{Lynda}", q"{Amelia}", q"{Monique}", q"{Kayla}", q"{Yvette}", q"{Olivia}"
		, q"{Antoinette}", q"{Bridgette}", q"{Karla}", q"{Leticia}", q"{Krista}", q"{Robyn}", q"{Rosalie}"
		, q"{Bernadette}", q"{Krystal}", q"{Nadine}", q"{Estelle}", q"{Lynette}", q"{Eloise}", q"{Jana}"
		, q"{Kerry}", q"{Jenna}", q"{Tasha}", q"{Sonja}", q"{Elisa}", q"{Kristie}", q"{Johan}", q"{Robert}"
		, q"{Michael}", q"{William}", q"{Willem}", q"{David}", q"{Richard}", q"{Thomas}", q"{Charl}", q"{Christopher}"
		, q"{Daniel}", q"{Dante}", q"{Paul}", q"{Mark}", q"{George}", q"{Kenneth}", q"{Steven}", q"{Edward}"
		, q"{Ronald}", q"{Anthony}", q"{Albert}", q"{Kevin}", q"{Jaco}", q"{Jacobus}", q"{Mathuys}", q"{Frankie}"
		, q"{Stephen}", q"{Andre}", q"{Raymond}", q"{Joshua}", q"{Dennis}", q"{Pieter}", q"{Henrie}", q"{Rigard}"
		, q"{Riaan}", q"{Joe}", q"{Johannes}", q"{Hannes}", q"{Gerald}", q"{Gerhard}", q"{Willie}", q"{Roy}"
		, q"{Adam}", q"{Harry}", q"{Wayne}", q"{Billy}", q"{Steve}", q"{Louis}", q"{Eugene}", q"{Russell}"
		, q"{Bobbie}", q"{Victor}", q"{Martin}", q"{Ernest}", q"{Phillip}", q"{Craig}", q"{Alan}", q"{Shawn}"
		, q"{Chris}", q"{Earl}", q"{Jimmy}", q"{Brian}", q"{Mike}", q"{Leonard}", q"{Dale}", q"{Allen}", q"{Vincent}"
		, q"{Francois}", q"{Eddie}", q"{Alexander}", q"{Bernard}", q"{Markus}", q"{Micheal}", q"{Theo}"
		, q"{Oscar}", q"{Derek}", q"{Wesley}", q"{Derrick}", q"{Herman}", q"{Rick}", q"{Ruben}", q"{Cecil}"
		, q"{Roland}", q"{Harvey}", q"{Adriaan}", q"{Karl}", q"{Erik}", q"{Neil}", q"{Ian}", q"{Iwan}", q"{Julian}"
		, q"{Nick}", q"{Shaun}", q"{Cameron}", q"{Wilbur}", q"{Rudolph}", q"{Rudy}", q"{Bennie}", q"{Lukas}"
		, q"{Simon}", q"{Rufus}", q"{Hugo}", q"{Conrad}", q"{Tommie}", q"{Jan}", q"{Jacques}", q"{Morne}"
		, q"{Vernon}", q"{Duanne}", q"{Theunis}", q"{Theuns}", q"{Wessel}", q"{Stephaans}" ];

		return choice(strs, this.rnd);
	}

	override string personLastName() {
		const string[] strs =
		[ q"{van de Merwe}", q"{Schoeman}", q"{Barnard}", q"{de Kock}", q"{Meintjies}", q"{le Roux}", q"{Koen}"
		, q"{Morkel}", q"{Viljoen}", q"{Smit}", q"{Nel}", q"{Grobelaar}", q"{Oppenheimer}", q"{Castelyn}"
		, q"{du Preez}", q"{Cronnje}", q"{Donald}", q"{Pringle}", q"{Snell}", q"{Burger}", q"{van Heerden}"
		, q"{van de Heefer}", q"{Wessels}", q"{Eksteen}", q"{Kirsten}", q"{de Villiers}", q"{Olivier}"
		, q"{Steyn}", q"{Kallis}", q"{Ackerman}", q"{Dippenaar}", q"{Strydon}", q"{Boje}", q"{Pretorius}"
		, q"{Langeveldt}", q"{Botha}", q"{Duminy}", q"{Fuller}", q"{Philander}", q"{Daniels}", q"{Fichardt}"
		, q"{van Zyl}", q"{de Bruyn}", q"{van der Bijl}", q"{Dyer}", q"{van Buuren}", q"{Boyes}", q"{Versfeld}"
		, q"{Bisset}", q"{Castens}", q"{Louw}", q"{Powell}", q"{Snedden}", q"{van Renen}", q"{Myburg}"
		, q"{Bredenkamp}", q"{Mellett}", q"{Hertzog}", q"{Theunissen}", q"{de Waal}", q"{Cloete}", q"{Krige}"
		, q"{Melker}", q"{Loubser}", q"{Stegmann}", q"{Joubert}", q"{Luyt}", q"{Roos}", q"{Lombard}", q"{van der Hoff}"
		, q"{Immelman}", q"{Els}", q"{Delaney}", q"{Strauss}", q"{Meyer}", q"{Pienaar}", q"{du Plessis}"
		, q"{van Rooyen}", q"{Kruger}", q"{Mostert}", q"{Scholtz}", q"{Aucamp}", q"{Albertyn}", q"{Bosman}"
		, q"{Bester}", q"{Truter}", q"{Prinsloo}", q"{van Niekerk}", q"{Zimmerman}", q"{Venter}", q"{van den Berg}"
		, q"{de Wet}", q"{Marais}", q"{van Jaarsveld}", q"{Jordaan}", q"{Malan}", q"{Viviers}", q"{Myburgh}"
		, q"{Hoffman}", q"{Bekker}", q"{Rossouw}", q"{Rens}", q"{Lochner}", q"{Hanekom}", q"{Schmidt}"
		, q"{Wentzel}", q"{Bezuidenhout}", q"{Cilliers}", q"{Naude}", q"{de Vos}", q"{Goosen}", q"{Durand}"
		, q"{Potgieter}", q"{van Deventer}", q"{de Klerk}", q"{Spies}", q"{Snyman}", q"{Oosthuizen}"
		, q"{Bosch}", q"{Vogel}", q"{Fourie}", q"{van Staden}", q"{Wagenaar}", q"{Wolmerans}", q"{Veldsman}"
		, q"{Tromp}", q"{Serfontein}", q"{Claasen}", q"{Heunis}", q"{Visagie}", q"{Ferreira}", q"{Erasmus}"
		, q"{Knoetze}", q"{Jansen van Rensburg}", q"{Styger}", q"{Roberts}", q"{Richter}", q"{Lotter}"
		, q"{Swart}", q"{Badenhorst}", q"{Laubscher}", q"{Hattingh}", q"{Visser}", q"{Brink}", q"{Theron}"
		, q"{Paulse}", q"{Basson}", q"{van der Westhuyzen}", q"{Gerber}", q"{Human}", q"{Uys}", q"{Hougaard}"
		, q"{Steenkamp}", q"{Pieterse}", q"{Brits}", q"{Jantjies}", q"{Etzebeth}", q"{de Jager}", q"{Boshoff}"
		, q"{Kriel}", q"{Vosloo}", q"{Carstens}" ];

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
		[ q"{Johan}", q"{Robert}", q"{Michael}", q"{William}", q"{Willem}", q"{David}", q"{Richard}", q"{Thomas}"
		, q"{Charl}", q"{Christopher}", q"{Daniel}", q"{Dante}", q"{Paul}", q"{Mark}", q"{George}", q"{Kenneth}"
		, q"{Steven}", q"{Edward}", q"{Ronald}", q"{Anthony}", q"{Albert}", q"{Kevin}", q"{Jaco}", q"{Jacobus}"
		, q"{Mathuys}", q"{Frankie}", q"{Stephen}", q"{Andre}", q"{Raymond}", q"{Joshua}", q"{Dennis}"
		, q"{Pieter}", q"{Henrie}", q"{Rigard}", q"{Riaan}", q"{Joe}", q"{Johannes}", q"{Hannes}", q"{Gerald}"
		, q"{Gerhard}", q"{Willie}", q"{Roy}", q"{Adam}", q"{Harry}", q"{Wayne}", q"{Billy}", q"{Steve}", q"{Louis}"
		, q"{Eugene}", q"{Russell}", q"{Bobbie}", q"{Victor}", q"{Martin}", q"{Ernest}", q"{Phillip}", q"{Craig}"
		, q"{Alan}", q"{Shawn}", q"{Chris}", q"{Earl}", q"{Jimmy}", q"{Brian}", q"{Mike}", q"{Leonard}", q"{Dale}"
		, q"{Allen}", q"{Vincent}", q"{Francois}", q"{Eddie}", q"{Alexander}", q"{Bernard}", q"{Markus}"
		, q"{Micheal}", q"{Theo}", q"{Oscar}", q"{Derek}", q"{Wesley}", q"{Derrick}", q"{Herman}", q"{Rick}"
		, q"{Ruben}", q"{Cecil}", q"{Roland}", q"{Harvey}", q"{Adriaan}", q"{Karl}", q"{Erik}", q"{Neil}"
		, q"{Ian}", q"{Iwan}", q"{Julian}", q"{Nick}", q"{Shaun}", q"{Cameron}", q"{Wilbur}", q"{Rudolph}"
		, q"{Rudy}", q"{Bennie}", q"{Lukas}", q"{Simon}", q"{Rufus}", q"{Hugo}", q"{Conrad}", q"{Tommie}"
		, q"{Jan}", q"{Jacques}", q"{Morne}", q"{Vernon}", q"{Duanne}", q"{Theunis}", q"{Theuns}", q"{Wessel}"
		, q"{Stephaans}" ];

		return choice(strs, this.rnd);
	}

	override string phoneNumberFormats() {
		const string[] strs =
		[ q"{01# ### #####}", q"{02# ### #####}", q"{03# ### #####}", q"{04# ### #####}", q"{05# ### #####}"
		, q"{0800 ### ###}", q"{0860 ### ###}", q"{01#########}", q"{01# ########}" ];

		return numberBuild(choice(strs, this.rnd));
	}

}

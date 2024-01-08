module faker.faker_de_ch;

import std.random;
import std.array;
import std.format;
import std.conv : to;
import std.string : toUpper;
import std.range : iota, take, repeat;
import std.algorithm : map, joiner;

import faker.customtypes;
import faker.base;
import faker.faker_de;

class Faker_de_ch : Faker_de {
@safe:
	this(int seed) {
		super(seed);
	}

	override string companyNamePattern() {
		final switch(uniform(0, 3, this.rnd)) {
			case 0: return personLastName() ~ " " ~ companySuffix();
			case 1: return personLastName() ~ "-" ~ personLastName();
			case 2: return personLastName() ~ ", " ~ personLastName() ~ " und " ~ personLastName();
		}
		return "";
	}

	override string companySuffix() {
		const string[] strs =
		[ q"{AG}", q"{GmbH}", q"{und Söhne}", q"{und Partner}", q"{& Co.}", q"{Gruppe}", q"{LLC}", q"{Inc.}" ];

		return choice(strs, this.rnd);
	}

	override string internetDomainSuffix() {
		const string[] strs =
		[ q"{com}", q"{net}", q"{biz}", q"{ch}", q"{de}", q"{li}", q"{at}" ];

		return choice(strs, this.rnd);
	}

	override string locationCityName() {
		const string[] strs =
		[ q"{Aarau}", q"{Adliswil}", q"{Allschwil}", q"{Arbon}", q"{Baar}", q"{Baden}", q"{Basel}", q"{Bellinzona}"
		, q"{Bern}", q"{Biel/Bienne}", q"{Binningen}", q"{Brig-Glis}", q"{Bulle}", q"{Burgdorf}", q"{Bülach}"
		, q"{Carouge}", q"{Cham}", q"{Chur}", q"{Dietikon}", q"{Dübendorf}", q"{Einsiedeln}", q"{Emmen}"
		, q"{Frauenfeld}", q"{Freiburg}", q"{Freienbach}", q"{Genf}", q"{Glarus Nord}", q"{Gossau}"
		, q"{Grenchen}", q"{Herisau}", q"{Horgen}", q"{Horw}", q"{Illnau-Effretikon}", q"{Kloten}", q"{Kreuzlingen}"
		, q"{Kriens}", q"{Köniz}", q"{Küsnacht}", q"{La Chaux-de-Fonds}", q"{Lancy}", q"{Langenthal}"
		, q"{Lausanne}", q"{Liestal}", q"{Locarno}", q"{Lugano}", q"{Luzern}", q"{Lyss}", q"{Martigny}"
		, q"{Meilen}", q"{Mendrisio}", q"{Meyrin}", q"{Monthey}", q"{Montreux}", q"{Morges}", q"{Muri bei Bern}"
		, q"{Muttenz}", q"{Neuenburg}", q"{Nyon}", q"{Oftringen}", q"{Olten}", q"{Onex}", q"{Opfikon}"
		, q"{Ostermundigen}", q"{Pratteln}", q"{Pully}", q"{Rapperswil-Jona}", q"{Regensdorf}", q"{Reinach}"
		, q"{Renens}", q"{Rheinfelden}", q"{Richterswil}", q"{Riehen}", q"{Schaffhausen}", q"{Schlieren}"
		, q"{Schwyz}", q"{Siders}", q"{Sitten}", q"{Solothurn}", q"{St. Gallen}", q"{Steffisburg}", q"{Stäfa}"
		, q"{Thalwil}", q"{Thun}", q"{Thônex}", q"{Uster}", q"{Val-de-Ruz}", q"{Vernier}", q"{Versoix}"
		, q"{Vevey}", q"{Volketswil}", q"{Wallisellen}", q"{Wettingen}", q"{Wetzikon}", q"{Wil}", q"{Winterthur}"
		, q"{Wohlen}", q"{Wädenswil}", q"{Yverdon-les-Bains}", q"{Zug}", q"{Zürich}" ];

		return choice(strs, this.rnd);
	}

	override string locationCityPattern() {
		final switch(uniform(0, 1, this.rnd)) {
			case 0: return locationCityName();
		}
		return "";
	}

	override string locationDefaultCountry() {
		const string[] strs =
		[ q"{Schweiz}" ];

		return choice(strs, this.rnd);
	}

	override string locationPostcode() {
		const string[] strs =
		[ q"{1###}", q"{2###}", q"{3###}", q"{4###}", q"{5###}", q"{6###}", q"{7###}", q"{8###}", q"{9###}" ];

		return numberBuild(choice(str, this.rnd));
	}

	override string locationState() {
		const string[] strs =
		[ q"{Aargau}", q"{Appenzell Ausserrhoden}", q"{Appenzell Innerrhoden}", q"{Basel-Land}"
		, q"{Basel-Stadt}", q"{Bern}", q"{Freiburg}", q"{Genf}", q"{Glarus}", q"{Graubünden}", q"{Jura}"
		, q"{Luzern}", q"{Neuenburg}", q"{Nidwalden}", q"{Obwalden}", q"{St. Gallen}", q"{Schaffhausen}"
		, q"{Schwyz}", q"{Solothurn}", q"{Tessin}", q"{Thurgau}", q"{Uri}", q"{Waadt}", q"{Wallis}", q"{Zug}"
		, q"{Zürich}" ];

		return choice(strs, this.rnd);
	}

	override string locationStateAbbr() {
		const string[] strs =
		[ q"{AG}", q"{AR}", q"{AI}", q"{BL}", q"{BS}", q"{BE}", q"{FR}", q"{GE}", q"{GL}", q"{GR}", q"{JU}", q"{LU}", q"{NE}"
		, q"{NW}", q"{OW}", q"{SG}", q"{SH}", q"{SZ}", q"{SO}", q"{TI}", q"{TG}", q"{UR}", q"{VD}", q"{VS}", q"{ZG}", q"{ZH}" ];

		return choice(strs, this.rnd);
	}

	override string locationStreetName() {
		const string[] strs =
		[ q"{Amthausstrasse}", q"{Augustinergasse}", q"{Bahnhofstrasse}", q"{Birkenweg}", q"{Bierkellerweg}"
		, q"{Columbusstrasse}", q"{Dorfstrasse}", q"{Elefantenbach}", q"{Endingerstrasse}", q"{Glockengasse}"
		, q"{Hauptstrasse}", q"{Hirschengraben}", q"{Honiggasse}", q"{Industriestrasse}", q"{Katzenplatz}"
		, q"{Kirchweg}", q"{Knoblauchweg}", q"{Lindenhofweg}", q"{Melonenstrasse}", q"{Oberdorfstrasse}"
		, q"{Ödhus}", q"{Ogimatte}", q"{Rämistrasse}", q"{Rennweg}", q"{Rosenweg}", q"{Schulhausstrasse}"
		, q"{Schulstrasse}", q"{Sihlfeldstrasse}", q"{Trittligasse}", q"{Uraniastrasse}", q"{Vorstadt}" ];

		return choice(strs, this.rnd);
	}

	override string locationStreetPattern() {
		final switch(uniform(0, 1, this.rnd)) {
			case 0: return locationStreetName();
		}
		return "";
	}

	override string personFemaleFirstName() {
		const string[] strs =
		[ q"{Alice}", q"{Andrea}", q"{Angela}", q"{Anita}", q"{Anna}", q"{Anne}", q"{Anne-Marie}", q"{Annemarie}"
		, q"{Astrid}", q"{Barbara}", q"{Beatrice}", q"{Beatrix}", q"{Bernadette}", q"{Bettina}", q"{Brigitta}"
		, q"{Brigitte}", q"{Carmen}", q"{Caroline}", q"{Catherine}", q"{Chantal}", q"{Charlotte}", q"{Christa}"
		, q"{Christiane}", q"{Christina}", q"{Christine}", q"{Claire}", q"{Claudia}", q"{Claudine}"
		, q"{Corinne}", q"{Cornelia}", q"{Daniela}", q"{Danielle}", q"{Denise}", q"{Dominique}", q"{Dora}"
		, q"{Doris}", q"{Edith}", q"{Eliane}", q"{Elisabeth}", q"{Elsa}", q"{Elsbeth}", q"{Erica}", q"{Erika}"
		, q"{Esther}", q"{Eva}", q"{Eveline}", q"{Evelyne}", q"{Fabienne}", q"{Florence}", q"{Françoise}"
		, q"{Franziska}", q"{Gabriela}", q"{Gabrielle}", q"{Gertrud}", q"{Gisela}", q"{Hanna}", q"{Heidi}"
		, q"{Helen}", q"{Helena}", q"{Helene}", q"{Hildegard}", q"{Ingrid}", q"{Irene}", q"{Iris}", q"{Isabelle}"
		, q"{Jacqueline}", q"{Janine}", q"{Jean}", q"{Johanna}", q"{Jolanda}", q"{Josette}", q"{Josiane}"
		, q"{Judith}", q"{Julia}", q"{Karin}", q"{Katharina}", q"{Laura}", q"{Laurence}", q"{Liliane}"
		, q"{Liselotte}", q"{Lydia}", q"{Madeleine}", q"{Maja}", q"{Manuela}", q"{Margrit}", q"{Margrith}"
		, q"{Maria}", q"{Marianne}", q"{Marion}", q"{Marlène}", q"{Marlies}", q"{Marlis}", q"{Martha}"
		, q"{Martina}", q"{Martine}", q"{Maya}", q"{Michele}", q"{Micheline}", q"{Monica}", q"{Monika}"
		, q"{Monique}", q"{Myriam}", q"{Nadia}", q"{Nadja}", q"{Nathalie}", q"{Nelly}", q"{Nicole}", q"{Paola}"
		, q"{Patricia}", q"{Petra}", q"{Pia}", q"{Priska}", q"{Regina}", q"{Regula}", q"{Renata}", q"{Renate}"
		, q"{Ruth}", q"{Sabine}", q"{Sandra}", q"{Silvia}", q"{Simone}", q"{Sonia}", q"{Sonja}", q"{Stéphanie}"
		, q"{Susanna}", q"{Susanne}", q"{Suzanne}", q"{Sylvia}", q"{Sylvie}", q"{Therese}", q"{Toni}", q"{Ursula}"
		, q"{Verena}", q"{Véronique}", q"{Vreni}", q"{Yolande}", q"{Yvette}", q"{Yvonne}" ];

		return choice(strs, this.rnd);
	}

	override string personFemalePrefix() {
		const string[] strs =
		[ q"{Frau}", q"{Dr.}", q"{Prof. Dr.}" ];

		return choice(strs, this.rnd);
	}

	override string personFirstName() {
		const string[] strs =
		[ q"{Alfons}", q"{Alfred}", q"{Alice}", q"{Alois}", q"{Andrea}", q"{Andreas}", q"{André}", q"{Angela}"
		, q"{Angelo}", q"{Anita}", q"{Anna}", q"{Anne}", q"{Anne-Marie}", q"{Annemarie}", q"{Antoine}"
		, q"{Anton}", q"{Antonio}", q"{Armin}", q"{Arnold}", q"{Arthur}", q"{Astrid}", q"{Barbara}", q"{Beat}"
		, q"{Beatrice}", q"{Beatrix}", q"{Bernadette}", q"{Bernard}", q"{Bernhard}", q"{Bettina}", q"{Brigitta}"
		, q"{Brigitte}", q"{Bruno}", q"{Carlo}", q"{Carmen}", q"{Caroline}", q"{Catherine}", q"{Chantal}"
		, q"{Charles}", q"{Charlotte}", q"{Christa}", q"{Christian}", q"{Christiane}", q"{Christina}"
		, q"{Christine}", q"{Christoph}", q"{Christophe}", q"{Claire}", q"{Claude}", q"{Claudia}", q"{Claudine}"
		, q"{Claudio}", q"{Corinne}", q"{Cornelia}", q"{Daniel}", q"{Daniela}", q"{Daniele}", q"{Danielle}"
		, q"{David}", q"{Denis}", q"{Denise}", q"{Didier}", q"{Dieter}", q"{Dominik}", q"{Dominique}", q"{Dora}"
		, q"{Doris}", q"{Edgar}", q"{Edith}", q"{Eduard}", q"{Edwin}", q"{Eliane}", q"{Elisabeth}", q"{Elsa}"
		, q"{Elsbeth}", q"{Emil}", q"{Enrico}", q"{Eric}", q"{Erica}", q"{Erich}", q"{Erika}", q"{Ernst}"
		, q"{Erwin}", q"{Esther}", q"{Eugen}", q"{Eva}", q"{Eveline}", q"{Evelyne}", q"{Fabienne}", q"{Felix}"
		, q"{Ferdinand}", q"{Florence}", q"{Francesco}", q"{Francis}", q"{Franco}", q"{Frank}", q"{Franz}"
		, q"{Franziska}", q"{François}", q"{Françoise}", q"{Fredy}", q"{Fridolin}", q"{Friedrich}"
		, q"{Fritz}", q"{Frédéric}", q"{Gabriel}", q"{Gabriela}", q"{Gabrielle}", q"{Georg}", q"{Georges}"
		, q"{Gerhard}", q"{Gertrud}", q"{Gianni}", q"{Gilbert}", q"{Giorgio}", q"{Giovanni}", q"{Gisela}"
		, q"{Giuseppe}", q"{Gottfried}", q"{Guido}", q"{Guy}", q"{Gérald}", q"{Gérard}", q"{Hanna}", q"{Hans}"
		, q"{Hans-Peter}", q"{Hans-Rudolf}", q"{Hans-Ulrich}", q"{Hansjörg}", q"{Hanspeter}", q"{Hansruedi}"
		, q"{Hansueli}", q"{Harry}", q"{Heidi}", q"{Heinrich}", q"{Heinz}", q"{Helen}", q"{Helena}", q"{Helene}"
		, q"{Helmut}", q"{Henri}", q"{Herbert}", q"{Hermann}", q"{Hildegard}", q"{Hubert}", q"{Hugo}", q"{Ingrid}"
		, q"{Irene}", q"{Iris}", q"{Isabelle}", q"{Jacqueline}", q"{Jacques}", q"{Jakob}", q"{Jan}", q"{Janine}"
		, q"{Jean}", q"{Jean-Claude}", q"{Jean-Daniel}", q"{Jean-François}", q"{Jean-Jacques}", q"{Jean-Louis}"
		, q"{Jean-Luc}", q"{Jean-Marc}", q"{Jean-Marie}", q"{Jean-Paul}", q"{Jean-Pierre}", q"{Johann}"
		, q"{Johanna}", q"{Johannes}", q"{John}", q"{Jolanda}", q"{Josef}", q"{Joseph}", q"{Josette}", q"{Josiane}"
		, q"{Judith}", q"{Julia}", q"{Jörg}", q"{Jürg}", q"{Karin}", q"{Karl}", q"{Katharina}", q"{Klaus}"
		, q"{Konrad}", q"{Kurt}", q"{Laura}", q"{Laurence}", q"{Laurent}", q"{Leo}", q"{Liliane}", q"{Liselotte}"
		, q"{Louis}", q"{Luca}", q"{Luigi}", q"{Lukas}", q"{Lydia}", q"{Madeleine}", q"{Maja}", q"{Manfred}"
		, q"{Manuel}", q"{Manuela}", q"{Marc}", q"{Marcel}", q"{Marco}", q"{Margrit}", q"{Margrith}", q"{Maria}"
		, q"{Marianne}", q"{Mario}", q"{Marion}", q"{Markus}", q"{Marlies}", q"{Marlis}", q"{Marlène}"
		, q"{Martha}", q"{Martin}", q"{Martina}", q"{Martine}", q"{Massimo}", q"{Matthias}", q"{Maurice}"
		, q"{Max}", q"{Maya}", q"{Michael}", q"{Michel}", q"{Michele}", q"{Micheline}", q"{Monica}", q"{Monika}"
		, q"{Monique}", q"{Myriam}", q"{Nadia}", q"{Nadja}", q"{Nathalie}", q"{Nelly}", q"{Nicolas}", q"{Nicole}"
		, q"{Niklaus}", q"{Norbert}", q"{Olivier}", q"{Oskar}", q"{Otto}", q"{Paola}", q"{Paolo}", q"{Pascal}"
		, q"{Patricia}", q"{Patrick}", q"{Paul}", q"{Peter}", q"{Petra}", q"{Philipp}", q"{Philippe}", q"{Pia}"
		, q"{Pierre}", q"{Pierre-Alain}", q"{Pierre-André}", q"{Pius}", q"{Priska}", q"{Rainer}", q"{Raymond}"
		, q"{Regina}", q"{Regula}", q"{Reinhard}", q"{Remo}", q"{Renata}", q"{Renate}", q"{Renato}", q"{Rene}"
		, q"{René}", q"{Reto}", q"{Richard}", q"{Rudolf}", q"{Ruedi}", q"{Ruth}", q"{Sabine}", q"{Samuel}"
		, q"{Sandra}", q"{Sandro}", q"{Serge}", q"{Silvia}", q"{Silvio}", q"{Simon}", q"{Simone}", q"{Sonia}"
		, q"{Sonja}", q"{Stefan}", q"{Stephan}", q"{Stéphane}", q"{Stéphanie}", q"{Susanna}", q"{Susanne}"
		, q"{Suzanne}", q"{Sylvia}", q"{Sylvie}", q"{Theo}", q"{Theodor}", q"{Therese}", q"{Thomas}", q"{Toni}"
		, q"{Ueli}", q"{Ulrich}", q"{Urs}", q"{Ursula}", q"{Verena}", q"{Victor}", q"{Viktor}", q"{Vreni}"
		, q"{Véronique}", q"{Walter}", q"{Werner}", q"{Willi}", q"{Willy}", q"{Wolfgang}", q"{Yolande}"
		, q"{Yves}", q"{Yvette}", q"{Yvonne}" ];

		return choice(strs, this.rnd);
	}

	override string personLastName() {
		const string[] strs =
		[ q"{Ackermann}", q"{Aebi}", q"{Albrecht}", q"{Ammann}", q"{Amrein}", q"{Arnold}", q"{Bachmann}"
		, q"{Bader}", q"{Bär}", q"{Bättig}", q"{Bauer}", q"{Baumann}", q"{Baumgartner}", q"{Baur}", q"{Beck}"
		, q"{Benz}", q"{Berger}", q"{Bernasconi}", q"{Betschart}", q"{Bianchi}", q"{Bieri}", q"{Blaser}"
		, q"{Blum}", q"{Bolliger}", q"{Bosshard}", q"{Braun}", q"{Brun}", q"{Brunner}", q"{Bucher}", q"{Bühler}"
		, q"{Bühlmann}", q"{Burri}", q"{Christen}", q"{Egger}", q"{Egli}", q"{Eichenberger}", q"{Erni}"
		, q"{Ernst}", q"{Eugster}", q"{Fankhauser}", q"{Favre}", q"{Fehr}", q"{Felber}", q"{Felder}", q"{Ferrari}"
		, q"{Fischer}", q"{Flückiger}", q"{Forster}", q"{Frei}", q"{Frey}", q"{Frick}", q"{Friedli}", q"{Fuchs}"
		, q"{Furrer}", q"{Gasser}", q"{Geiger}", q"{Gerber}", q"{Gfeller}", q"{Giger}", q"{Gloor}", q"{Graf}"
		, q"{Grob}", q"{Gross}", q"{Gut}", q"{Haas}", q"{Häfliger}", q"{Hafner}", q"{Hartmann}", q"{Hasler}"
		, q"{Hauser}", q"{Hermann}", q"{Herzog}", q"{Hess}", q"{Hirt}", q"{Hodel}", q"{Hofer}", q"{Hoffmann}"
		, q"{Hofmann}", q"{Hofstetter}", q"{Hotz}", q"{Huber}", q"{Hug}", q"{Hunziker}", q"{Hürlimann}"
		, q"{Imhof}", q"{Isler}", q"{Iten}", q"{Jäggi}", q"{Jenni}", q"{Jost}", q"{Kägi}", q"{Kaiser}", q"{Kälin}"
		, q"{Käser}", q"{Kaufmann}", q"{Keller}", q"{Kern}", q"{Kessler}", q"{Knecht}", q"{Koch}", q"{Kohler}"
		, q"{Kuhn}", q"{Küng}", q"{Kunz}", q"{Lang}", q"{Lanz}", q"{Lehmann}", q"{Leu}", q"{Leunberger}"
		, q"{Lüscher}", q"{Lustenberger}", q"{Lüthi}", q"{Lutz}", q"{Mäder}", q"{Maier}", q"{Marti}"
		, q"{Martin}", q"{Maurer}", q"{Mayer}", q"{Meier}", q"{Meili}", q"{Meister}", q"{Merz}", q"{Mettler}"
		, q"{Meyer}", q"{Michel}", q"{Moser}", q"{Müller}", q"{Näf}", q"{Ott}", q"{Peter}", q"{Pfister}"
		, q"{Portmann}", q"{Probst}", q"{Rey}", q"{Ritter}", q"{Roos}", q"{Roth}", q"{Rüegg}", q"{Schäfer}"
		, q"{Schaller}", q"{Schär}", q"{Schärer}", q"{Schaub}", q"{Scheidegger}", q"{Schenk}", q"{Scherrer}"
		, q"{Schlatter}", q"{Schmid}", q"{Schmidt}", q"{Schneider}", q"{Schnyder}", q"{Schoch}", q"{Schuler}"
		, q"{Schumacher}", q"{Schürch}", q"{Schwab}", q"{Schwarz}", q"{Schweizer}", q"{Seiler}", q"{Senn}"
		, q"{Sidler}", q"{Siegrist}", q"{Sigrist}", q"{Spörri}", q"{Stadelmann}", q"{Stalder}", q"{Staub}"
		, q"{Stauffer}", q"{Steffen}", q"{Steiger}", q"{Steiner}", q"{Steinmann}", q"{Stettler}", q"{Stocker}"
		, q"{Stöckli}", q"{Stucki}", q"{Studer}", q"{Stutz}", q"{Suter}", q"{Sutter}", q"{Tanner}", q"{Thommen}"
		, q"{Tobler}", q"{Vogel}", q"{Vogt}", q"{Wagner}", q"{Walder}", q"{Walter}", q"{Weber}", q"{Wegmann}"
		, q"{Wehrli}", q"{Weibel}", q"{Wenger}", q"{Wettstein}", q"{Widmer}", q"{Winkler}", q"{Wirth}"
		, q"{Wirz}", q"{Wolf}", q"{Wüthrich}", q"{Wyss}", q"{Zbinden}", q"{Zehnder}", q"{Ziegler}", q"{Zimmermann}"
		, q"{Zingg}", q"{Zollinger}", q"{Zürcher}" ];

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
		[ q"{Alfons}", q"{Alfred}", q"{Alois}", q"{André}", q"{Andreas}", q"{Angelo}", q"{Antoine}", q"{Anton}"
		, q"{Antonio}", q"{Armin}", q"{Arnold}", q"{Arthur}", q"{Beat}", q"{Bernard}", q"{Bernhard}", q"{Bruno}"
		, q"{Carlo}", q"{Charles}", q"{Christian}", q"{Christoph}", q"{Christophe}", q"{Claude}", q"{Claudio}"
		, q"{Daniel}", q"{Daniele}", q"{David}", q"{Denis}", q"{Didier}", q"{Dieter}", q"{Dominik}", q"{Dominique}"
		, q"{Edgar}", q"{Eduard}", q"{Edwin}", q"{Emil}", q"{Enrico}", q"{Eric}", q"{Erich}", q"{Ernst}", q"{Erwin}"
		, q"{Eugen}", q"{Felix}", q"{Ferdinand}", q"{Francesco}", q"{Francis}", q"{Franco}", q"{François}"
		, q"{Frank}", q"{Franz}", q"{Frédéric}", q"{Fredy}", q"{Fridolin}", q"{Friedrich}", q"{Fritz}"
		, q"{Gabriel}", q"{Georg}", q"{Georges}", q"{Gérald}", q"{Gérard}", q"{Gerhard}", q"{Gianni}"
		, q"{Gilbert}", q"{Giorgio}", q"{Giovanni}", q"{Giuseppe}", q"{Gottfried}", q"{Guido}", q"{Guy}"
		, q"{Hans}", q"{Hans-Peter}", q"{Hans-Rudolf}", q"{Hans-Ulrich}", q"{Hansjörg}", q"{Hanspeter}"
		, q"{Hansruedi}", q"{Hansueli}", q"{Harry}", q"{Heinrich}", q"{Heinz}", q"{Helmut}", q"{Henri}"
		, q"{Herbert}", q"{Hermann}", q"{Hubert}", q"{Hugo}", q"{Jacques}", q"{Jakob}", q"{Jan}", q"{Jean-Claude}"
		, q"{Jean-Daniel}", q"{Jean-François}", q"{Jean-Jacques}", q"{Jean-Louis}", q"{Jean-Luc}"
		, q"{Jean-Marc}", q"{Jean-Marie}", q"{Jean-Paul}", q"{Jean-Pierre}", q"{Johann}", q"{Johannes}"
		, q"{John}", q"{Jörg}", q"{Josef}", q"{Joseph}", q"{Jürg}", q"{Karl}", q"{Klaus}", q"{Konrad}", q"{Kurt}"
		, q"{Laurent}", q"{Leo}", q"{Louis}", q"{Luca}", q"{Luigi}", q"{Lukas}", q"{Manfred}", q"{Manuel}"
		, q"{Marc}", q"{Marcel}", q"{Marco}", q"{Mario}", q"{Markus}", q"{Martin}", q"{Massimo}", q"{Matthias}"
		, q"{Maurice}", q"{Max}", q"{Michael}", q"{Michel}", q"{Nicolas}", q"{Niklaus}", q"{Norbert}", q"{Olivier}"
		, q"{Oskar}", q"{Otto}", q"{Paolo}", q"{Pascal}", q"{Patrick}", q"{Paul}", q"{Peter}", q"{Philipp}"
		, q"{Philippe}", q"{Pierre}", q"{Pierre-Alain}", q"{Pierre-André}", q"{Pius}", q"{Rainer}"
		, q"{Raymond}", q"{Reinhard}", q"{Remo}", q"{Renato}", q"{Rene}", q"{René}", q"{Reto}", q"{Richard}"
		, q"{Rudolf}", q"{Ruedi}", q"{Samuel}", q"{Sandro}", q"{Serge}", q"{Silvio}", q"{Simon}", q"{Stefan}"
		, q"{Stephan}", q"{Stéphane}", q"{Theo}", q"{Theodor}", q"{Thomas}", q"{Ueli}", q"{Ulrich}", q"{Urs}"
		, q"{Victor}", q"{Viktor}", q"{Walter}", q"{Werner}", q"{Willi}", q"{Willy}", q"{Wolfgang}", q"{Yves}" ];

		return choice(strs, this.rnd);
	}

	override string personMalePrefix() {
		const string[] strs =
		[ q"{Herr}", q"{Dr.}", q"{Prof. Dr.}" ];

		return choice(strs, this.rnd);
	}

	override string personName() {
		const int rndInt = uniform(0, 1, this.rnd);

		if(rndInt >= 0 && rndInt < 1) {
			return personFirstName() ~ " " ~ personLastName();
		}

		return "";
	}

	override string personPrefix() {
		const string[] strs =
		[ q"{Dr.}", q"{Frau}", q"{Herr}", q"{Prof. Dr.}" ];

		return choice(strs, this.rnd);
	}

	override string phoneNumberFormats() {
		const string[] strs =
		[ q"{0800 ### ###}", q"{0800 ## ## ##}", q"{0## ### ## ##}", q"{+41 ## ### ## ##}", q"{0900 ### ###}"
		, q"{076 ### ## ##}", q"{+4178 ### ## ##}", q"{0041 79 ### ## ##}" ];

		return numberBuild(choice(str, this.rnd));
	}

}

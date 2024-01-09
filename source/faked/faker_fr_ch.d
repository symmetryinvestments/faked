module faked.faker_fr_ch;

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

import faked.faker_fr;

class Faker_fr_ch : Faker_fr {
@safe:
	this(int seed) {
		super(seed);
	}

	override string cellPhoneFormats() {
		const string[] strs =
		[ q"{076 ### ## ##}", q"{079 ### ## ##}", q"{078 ### ## ##}", q"{+41 76 ### ## ##}", q"{+41 78 ### ## ##}"
		, q"{+41 79 ### ## ##}", q"{0041 76 ### ## ##}", q"{0041 78 ### ## ##}", q"{0041 79 ### ## ##}" ];

		return numberBuild(choice(strs, this.rnd));
	}

	override string internetDomainSuffix() {
		const string[] strs =
		[ q"{com}", q"{net}", q"{biz}", q"{ch}" ];

		return choice(strs, this.rnd);
	}

	override string internetFreeEmail() {
		const string[] strs =
		[ q"{gmail.com}", q"{bluewin.ch}", q"{hotmail.com}", q"{outlook.com}" ];

		return choice(strs, this.rnd);
	}

	override string locationBuildingNumber() {
		const string[] strs =
		[ q"{####}", q"{###}", q"{##}", q"{#}" ];

		return numberBuild(choice(strs, this.rnd));
	}

	override string locationCityName() {
		const string[] strs =
		[ q"{Aarau}", q"{Adliswil}", q"{Aesch}", q"{Affoltern am Albis}", q"{Aigle}", q"{Allschwil}", q"{Altdorf}"
		, q"{Altstätten}", q"{Amriswil}", q"{Appenzell}", q"{Arbon}", q"{Arlesheim}", q"{Arosa}", q"{Arth}"
		, q"{Baar}", q"{Baden}", q"{Bassersdorf}", q"{Bellinzone}", q"{Belp}", q"{Berne}", q"{Berthoud}"
		, q"{Bienne}", q"{Binningen}", q"{Birsfelden}", q"{Brigue-Glis}", q"{Brugg}", q"{Buchs}", q"{Bulle}"
		, q"{Bussigny}", q"{Bâle}", q"{Bülach}", q"{Carouge}", q"{Cham}", q"{Chiasso}", q"{Chêne-Bougeries}"
		, q"{Coire}", q"{Crissier}", q"{Davos}", q"{Delémont}", q"{Dietikon}", q"{Dübendorf}", q"{Ebikon}"
		, q"{Einsiedeln}", q"{Emmen}", q"{Flawil}", q"{Frauenfeld}", q"{Freienbach}", q"{Fribourg}"
		, q"{Genève}", q"{Gland}", q"{Glaris Centre}", q"{Glaris Nord}", q"{Gossau}", q"{Granges}"
		, q"{Herisau}", q"{Hinwil}", q"{Horgen}", q"{Horw}", q"{Illnau-Effretikon}", q"{Interlaken}"
		, q"{Ittigen}", q"{Kloten}", q"{Kreuzlingen}", q"{Kriens}", q"{Köniz}", q"{Küsnacht}", q"{La Chaux-de-Fonds}"
		, q"{La Neuveville}", q"{La Tour-de-Peilz}", q"{Lancy}", q"{Langenthal}", q"{Lausanne}", q"{Le Grand-Saconnex}"
		, q"{Le Locle}", q"{Lenzbourg}", q"{Liestal}", q"{Locarno}", q"{Lucerne}", q"{Lugano}", q"{Lyss}"
		, q"{Martigny}", q"{Meilen}", q"{Mendrisio}", q"{Meyrin}", q"{Monthey}", q"{Montreux}", q"{Morat}"
		, q"{Morges}", q"{Moutier}", q"{Muri bei Bern}", q"{Muttenz}", q"{Männedorf}", q"{Möhlin}"
		, q"{Münchenbuchsee}", q"{Münchenstein}", q"{Münsingen}", q"{Neuchâtel}", q"{Neuhausen am Rheinfall}"
		, q"{Nyon}", q"{Oberwil}", q"{Oftringen}", q"{Olten}", q"{Onex}", q"{Opfikon}", q"{Ostermundigen}"
		, q"{Payerne}", q"{Peseux}", q"{Pfäffikon}", q"{Plan-les-Ouates}", q"{Poliez-Pittet}", q"{Porrentruy}"
		, q"{Pratteln}", q"{Prilly}", q"{Pully}", q"{Rapperswil-Jona}", q"{Regensdorf}", q"{Reinach}"
		, q"{Renens}", q"{Rheinfelden}", q"{Richterswil}", q"{Riehen}", q"{Risch-Rotkreuz}", q"{Romanshorn}"
		, q"{Rorschach}", q"{Rüti}", q"{Saint-Gall}", q"{Saint-Moritz}", q"{Sarnen}", q"{Schaffhouse}"
		, q"{Schlieren}", q"{Schwytz}", q"{Sierre}", q"{Sion}", q"{Soleure}", q"{Spiez}", q"{Spreitenbach}"
		, q"{Stans}", q"{Steffisburg}", q"{Steinhausen}", q"{Stäfa}", q"{Suhr}", q"{Sursee}", q"{Thalwil}"
		, q"{Thoune}", q"{Thônex}", q"{Urdorf}", q"{Uster}", q"{Uzwil}", q"{Vernier}", q"{Versoix}", q"{Vevey}"
		, q"{Veyrier}", q"{Villars-sur-Glâne}", q"{Viège}", q"{Volketswil}", q"{Wallisellen}", q"{Weinfelden}"
		, q"{Wettingen}", q"{Wetzikon}", q"{Wil}", q"{Winterthour}", q"{Wohlen}", q"{Worb}", q"{Wädenswil}"
		, q"{Yverdon-les-Bains}", q"{Zermatt}", q"{Zofingue}", q"{Zollikofen}", q"{Zollikon}", q"{Zoug}"
		, q"{Zuchwil}", q"{Zurich}", q"{Écublens}" ];

		return choice(strs, this.rnd);
	}

	override string locationCityPattern() {
		final switch(uniform(0, 1, this.rnd)) {
			case 0: return locationCityName();
		}
		return "";
	}

	override string locationCountry() {
		const string[] strs =
		[ q"{Afghanistan}", q"{Albanie}", q"{Algérie}", q"{Andorre}", q"{Angola}", q"{Antigua-et-Barbuda}"
		, q"{Argentine}", q"{Arménie}", q"{Australie}", q"{Autriche}", q"{Azerbaïdjan}", q"{Bahamas}"
		, q"{Bahreïn}", q"{Bangladesh}", q"{Barbade}", q"{Biélorussie}", q"{Belgique}", q"{Belize}"
		, q"{Bénin}", q"{Bhoutan}", q"{Bolivie}", q"{Bosnie-Herzégovine}", q"{Botswana}", q"{Brésil}"
		, q"{Brunei}", q"{Bulgarie}", q"{Burkina Faso}", q"{Burundi}", q"{Cambodge}", q"{Cameroun}"
		, q"{Canada}", q"{Cap-Vert}", q"{République centrafricaine}", q"{Tchad}", q"{Chili}", q"{Chine}"
		, q"{Colombie}", q"{Comores}", q"{Costa Rica}", q"{Côte d’Ivoire}", q"{Croatie}", q"{Cuba}"
		, q"{Chypre}", q"{République tchèque}", q"{République démocratique du Congo}", q"{Danemark}"
		, q"{Djibouti}", q"{Dominique}", q"{République dominicaine}", q"{Timor oriental}", q"{Équateur}"
		, q"{Égypte}", q"{Salvador}", q"{Guinée équatoriale}", q"{Érythrée}", q"{Estonie}", q"{Eswatini}"
		, q"{Éthiopie}", q"{Fidji}", q"{Finlande}", q"{France}", q"{Gabon}", q"{Gambie}", q"{Géorgie}"
		, q"{Allemagne}", q"{Ghana}", q"{Grèce}", q"{Grenade}", q"{Guatemala}", q"{Guinée}", q"{Guinée-Bissau}"
		, q"{Guyane}", q"{Haïti}", q"{Honduras}", q"{Hongrie}", q"{Islande}", q"{Inde}", q"{Indonésie}"
		, q"{Iran}", q"{Irak}", q"{Irlande}", q"{Israël}", q"{Italie}", q"{Jamaïque}", q"{Japon}", q"{Jordan}"
		, q"{Kazakhstan}", q"{Kenya}", q"{Kiribati}", q"{Koweït}", q"{Kirghizistan}", q"{Laos}", q"{Lettonie}"
		, q"{Liban}", q"{Lesotho}", q"{Liberia}", q"{Libye}", q"{Liechtenstein}", q"{Lituanie}", q"{Luxembourg}"
		, q"{Madagascar}", q"{Malawi}", q"{Malaisie}", q"{Maldives}", q"{Mali}", q"{Malte}", q"{Îles Marshall}"
		, q"{Mauritanie}", q"{Maurice}", q"{Mexique}", q"{Micronésie}", q"{Moldavie}", q"{Monaco}"
		, q"{Mongolie}", q"{Monténégro}", q"{Maroc}", q"{Mozambique}", q"{Birmanie}", q"{Namibie}"
		, q"{Nauru}", q"{Népal}", q"{Pays-Bas}", q"{Nouvelle-Zélande}", q"{Nicaragua}", q"{Niger}"
		, q"{Nigeria}", q"{Corée du Nord}", q"{Norvège}", q"{Oman}", q"{Pakistan}", q"{Palau}", q"{Panama}"
		, q"{Papouasie-Nouvelle-Guinée}", q"{Paraguay}", q"{Pérou}", q"{Philippines}", q"{Pologne}"
		, q"{Portugal}", q"{Qatar}", q"{République du Congo}", q"{Macédoine}", q"{Roumanie}", q"{Russie}"
		, q"{Rwanda}", q"{Saint-Christophe-et-Niévès}", q"{Sainte-Lucie}", q"{Saint-Vincent-et-les-Grenadines}"
		, q"{Samoa}", q"{Saint-Marin}", q"{São Tomé-et-Principe}", q"{Arabie saoudite}", q"{Sénégal}"
		, q"{Serbie}", q"{Seychelles}", q"{Sierra Leone}", q"{Singapour}", q"{Slovaquie}", q"{Slovénie}"
		, q"{Îles Salomon}", q"{Somalie}", q"{Afrique du Sud}", q"{Corée du Sud}", q"{Soudan du Sud}"
		, q"{Espagne}", q"{Sri Lanka}", q"{Soudan}", q"{Suriname}", q"{Suède}", q"{Suisse}", q"{Syrie}"
		, q"{Tadjikistan}", q"{Tanzanie}", q"{Thaïlande}", q"{Togo}", q"{Tonga}", q"{Trinité-et-Tobago}"
		, q"{Tunisie}", q"{Turquie}", q"{Turkménistan}", q"{Tuvalu}", q"{Ouganda}", q"{Ukraine}", q"{Émirats arabes unis}"
		, q"{Royaume-Uni}", q"{États-Unis}", q"{Uruguay}", q"{Ouzbékistan}", q"{Vanuatu}", q"{Venezuela}"
		, q"{Viêt Nam}", q"{Yémen}", q"{Zambie}", q"{Zimbabwe}" ];

		return choice(strs, this.rnd);
	}

	override string locationDefaultCountry() {
		const string[] strs =
		[ q"{Suisse}" ];

		return choice(strs, this.rnd);
	}

	override string locationDirection() {
		const string[] strs =
		[ q"{Nord}", q"{Est}", q"{Sud}", q"{Ouest}", q"{Nord-est}", q"{Nord-ouest}", q"{Sud-est}", q"{Sud-ouest}" ];

		return choice(strs, this.rnd);
	}

	override string locationPostcode() {
		const string[] strs =
		[ q"{1###}", q"{2###}", q"{3###}", q"{4###}", q"{5###}", q"{6###}", q"{7###}", q"{8###}", q"{9###}" ];

		return numberBuild(choice(strs, this.rnd));
	}

	override string locationSecondaryAddress() {
		const string[] strs =
		[ q"{Apt. ###}", q"{# étage}" ];

		return numberBuild(choice(strs, this.rnd));
	}

	override string locationState() {
		const string[] strs =
		[ q"{Argovie}", q"{Appenzell Rhodes-Intérieures}", q"{Appenzell Rhodes-Extérieures}"
		, q"{Bâle-Ville}", q"{Bâle-Campagne}", q"{Berne}", q"{Fribourg}", q"{Genève}", q"{Glaris}"
		, q"{Grisons}", q"{Jura}", q"{Lucerne}", q"{Neuchâtel}", q"{Nidwald}", q"{Obwald}", q"{Schaffhouse}"
		, q"{Schwyt}", q"{Soleure}", q"{Saint-Gall}", q"{Thurgovie}", q"{Tessin}", q"{Uri}", q"{Valai}"
		, q"{Vaud}", q"{Zoug}", q"{Zurich}" ];

		return choice(strs, this.rnd);
	}

	override string locationStateAbbr() {
		const string[] strs =
		[ q"{AG}", q"{AI}", q"{AR}", q"{BE}", q"{BL}", q"{BS}", q"{FR}", q"{GE}", q"{GL}", q"{GR}", q"{JU}", q"{LU}", q"{NE}"
		, q"{NW}", q"{OW}", q"{SG}", q"{SH}", q"{SO}", q"{SZ}", q"{TG}", q"{TI}", q"{UR}", q"{VD}", q"{VS}", q"{ZG}", q"{ZH}" ];

		return choice(strs, this.rnd);
	}

	override string locationStreetAddress() {
		const LocationStreetAddressEnum[] enums = [ LocationStreetAddressEnum.normal, LocationStreetAddressEnum.full ];
		return locationStreetAddress(choice(enums, this.rnd));
	}

	override string locationStreetAddress(LocationStreetAddressEnum which) {
		final switch(which) {
			case LocationStreetAddressEnum.normal: return locationBuildingNumber() ~ " " ~ locationStreet();
			case LocationStreetAddressEnum.full: return locationBuildingNumber() ~ " " ~ locationStreet() ~ " " ~ locationSecondaryAddress();
		}
		return "";
	}

	override string locationStreetPattern() {
		final switch(uniform(0, 1, this.rnd)) {
			case 0: return locationStreetPrefix() ~ " " ~ locationStreetSuffix();
		}
		return "";
	}

	override string locationStreetSuffix() {
		const string[] strs =
		[ q"{Agassiz}", q"{Aimé Charpilloz}", q"{Albert-Gobat}", q"{Ancienne Route Romaine}", q"{aux Brebis}"
		, q"{Baptiste Savoye}", q"{Basse}", q"{Beauregard}", q"{Beausite}", q"{Berg}", q"{Berthold Vuilleumier}"
		, q"{Blanc}", q"{cantonale}", q"{Centrale}", q"{Champ Meusel}", q"{Champs Bruants}", q"{Champs de la Pelle}"
		, q"{Champs Saliers}", q"{Chantemerle}", q"{Charles Schäublin}", q"{Chautenatte}", q"{Combe-Grède}"
		, q"{d'Amour}", q"{d'Evilard}", q"{d'Orvin}", q"{de Beau-Site}", q"{de Beauregard}", q"{de Beausite}"
		, q"{de Bel-Air}", q"{de Belfond}", q"{de Berne}", q"{de Beuchemaitin}", q"{de Bienne}", q"{de Blanche-Terre}"
		, q"{de Blanchet}", q"{de Bonné}", q"{de Boron}", q"{de Bretin}", q"{de Brevoi}", q"{de Chalière}"
		, q"{de Chaluet}", q"{de Champ Villiers}", q"{de Champ-Fleuri}", q"{de Champoz}", q"{de Chasseral}"
		, q"{de Châtillon}", q"{de Chavannes}", q"{de Chuffort}", q"{de Citroz}", q"{de Combatte}"
		, q"{de Courtelary}", q"{de Diesse}", q"{de Ferreule}", q"{de Frinvillier}", q"{de Froideval}"
		, q"{de Graitery}", q"{de Jeaurat}", q"{de l'Aiguillon}", q"{de l'Alouette}", q"{de l'Arsenal}"
		, q"{de l'Aurore}", q"{de l'Avenir}", q"{de l'Eau des Fontaines}", q"{de l'Ecluse}", q"{de l'Ecole}"
		, q"{de l'Ecole Primaire}", q"{de l'Eglise}", q"{de l'Endroit}", q"{de l'Enfer}", q"{de l'Envers}"
		, q"{de l'Erguel}", q"{de l'Essor}", q"{de l'Est}", q"{de l'Hôpital}", q"{de l'Hôtel-de-Ville}"
		, q"{de l'Industrie}", q"{de l'Orée}", q"{de l'Orge}", q"{de l'Orgerie}", q"{de l'Ouest}"
		, q"{de la Baume}", q"{de la Bergerie}", q"{de la Blanche-Eglise}", q"{de la Borcairde}"
		, q"{de la Bosse}", q"{de la Brigade}", q"{de la Calle}", q"{de la Carrière}", q"{de la Cascade}"
		, q"{de la Cernière}", q"{de la Chapelle}", q"{de la Chavonne}", q"{de la Ciblerie}"
		, q"{de la Citadelle}", q"{de la Cité}", q"{de la Citerne}", q"{de la Clef}", q"{de la Colline}"
		, q"{de la Combe}", q"{de la Combe-Aubert}", q"{de la Condemine}", q"{de la Côte}", q"{de la Courtine}"
		, q"{de la Creuse}", q"{de la Croix}", q"{de la Cure}", q"{de la Dout}", q"{de la Doux}"
		, q"{de la Douzette}", q"{de la Fenatte}", q"{de la Fenette}", q"{de la Fin}", q"{de la Fiole}"
		, q"{de la Fontaine}", q"{de la Forge}", q"{de la Foule}", q"{de la Fourchaux}", q"{de la Gare}"
		, q"{de la Golatte}", q"{de la Halle}", q"{de la Halte}", q"{de la Joux}", q"{de la Maison de Ville}"
		, q"{de la Maison-Blanche}", q"{de la Malade}", q"{de la Malathe}", q"{de la Marchande}"
		, q"{de la Nancoran}", q"{de la Nant}", q"{de la Neigette}", q"{de la Neuve Charrière}"
		, q"{de la Paix}", q"{de la Peluse}", q"{de la Petite Fin}", q"{de la Petite-Fin}", q"{de la Piscine}"
		, q"{de la Place}", q"{de la Plage}", q"{de la Poste}", q"{de la Poya}", q"{de la Prairie}"
		, q"{de la Praye}", q"{de la Préfecture}", q"{de la Prévôté}", q"{de la Printanière}"
		, q"{de la Promenade}", q"{de la Pron}", q"{de la Raisse}", q"{de la Récille}", q"{de la Reuchenette}"
		, q"{de la Rive}", q"{de la Rochalle}", q"{de la Roche au Cros}", q"{de la Rochette}"
		, q"{de la Rouette}", q"{de la Sagnette}", q"{de la Scierie}", q"{de la Seignette}", q"{de la Serre}"
		, q"{de la Société}", q"{de la Suze}", q"{de la Tour}", q"{de la Trame}", q"{de la Valle}"
		, q"{de la Vanne}", q"{de la Versanne}", q"{de la vieille Charrière}", q"{de la Vignette}"
		, q"{de La vy deſtraÿe}", q"{de Lamboing}", q"{de Lausanne}", q"{de Lausanne à Daillens}"
		, q"{de Lignières}", q"{de Loville}", q"{de Malvaux}", q"{de Maupras}", q"{de Maupras du Haut}"
		, q"{de Mévilier}", q"{de Montoz}", q"{de Morges}", q"{de Moron}", q"{de Neuchâtel}", q"{de Nods}"
		, q"{de Pâquier}", q"{de Penthaz à Bournens}", q"{de Penthaz à Cossonay}", q"{de Penthaz à Daillens}"
		, q"{de Penthaz à Gollion}", q"{de Penthaz à Penthalaz}", q"{de Penthaz à Sullens}"
		, q"{de Pierre Grise}", q"{de Pierre-Pertuis}", q"{de Plein Vent}", q"{de Pontenet}", q"{de Poudeille}"
		, q"{de Prapion}", q"{de Prêles}", q"{de Reconvilier}", q"{de Reuchenette}", q"{de Rondans}"
		, q"{de Rouge-Terre}", q"{de Ruege}", q"{de Ruveau}", q"{de Sassagne}", q"{de Saules}", q"{de Savaronne}"
		, q"{de Sebastopol}", q"{de Sébaux}", q"{de Sébeillon}", q"{de Soleure}", q"{de Sonceboz}"
		, q"{de Sonrougeux}", q"{de Sonvilier}", q"{de St-Joux}", q"{de Sur-Frête}", q"{de Tavannes}"
		, q"{de Tivoli}", q"{de Tombain}", q"{de Tramelan}", q"{de Vallon}", q"{de Vauffelin}", q"{de Vervas}"
		, q"{de Vigneule}", q"{de Villeret}", q"{Derrière Mahlés}", q"{des Ages}", q"{des Alouettes}"
		, q"{des Artisans}", q"{des Aubépines}", q"{des Auges}", q"{des Aulnes}", q"{des Bains}"
		, q"{des Biches}", q"{des Biolas}", q"{des Blanchards}", q"{des Blés}", q"{des Bleuets}"
		, q"{des Bosquets}", q"{des Bouleaux}", q"{des Bourdons}", q"{des Bourgognons}", q"{des Britanières}"
		, q"{des Brues}", q"{des Carrons}", q"{des Celliers}", q"{des Cerisiers}", q"{des Champs}"
		, q"{des Charbonnières}", q"{des Chardonnerets}", q"{des Charmilles}", q"{des Chavannes}"
		, q"{des Chênes}", q"{des Chenevières}", q"{des Chevaux}", q"{des Cibles}", q"{des Clos}"
		, q"{des Coillards}", q"{des Collèges}", q"{des Combattes}", q"{des Combes}", q"{des Convers}"
		, q"{des Côtes Bugnot}", q"{des Deutes}", q"{des Dolaises}", q"{des Eaux}", q"{des Ecommunes}"
		, q"{des Ecureuils}", q"{des Eglantines}", q"{des Epinettes}", q"{des Etoblons}", q"{des Faulx}"
		, q"{des Fauvettes}", q"{des Fleurs}", q"{des Fontenettes}", q"{des Fossés}", q"{des fourches}"
		, q"{des Fraîches}", q"{des Français}", q"{des Gentianes}", q"{des Golats}", q"{des Gorges}"
		, q"{des Granges}", q"{des Graviers}", q"{des Gretions}", q"{des grilles}", q"{des Grillons}"
		, q"{des Huit-Journaux}", q"{des Isles}", q"{des Italiens}", q"{des Jardinets}", q"{des Jardins}"
		, q"{des Jonchères}", q"{des Jonquilles}", q"{des Levrières}", q"{des Lilas}", q"{des Longines}"
		, q"{des Lorettes}", q"{des Lovières}", q"{des Malterres}", q"{des Marnins}", q"{des Martinets}"
		, q"{des Mélèzes}", q"{des Mésanges}", q"{des Mines}", q"{des Mornets}", q"{des Mulets}"
		, q"{des Mûriers}", q"{des Navaux}", q"{des Nazieux}", q"{des Noisetiers}", q"{des Nouettes}"
		, q"{des Noyères}", q"{des Noyes}", q"{des Oeuches}", q"{des Oeuchettes}", q"{des Oeuvriés}"
		, q"{des Otaux}", q"{des Pâturages}", q"{des Pêcheurs}", q"{des Pélerins}", q"{des Pendants}"
		, q"{des Peupliers}", q"{des Pins Gras}", q"{des Pinsons}", q"{des Planchers}", q"{des Planches}"
		, q"{des Plânes}", q"{des Plantes}", q"{des Platanes}", q"{des Pommiers}", q"{des Pontins}"
		, q"{des Préjures}", q"{des Prés}", q"{des Prés Bernard}", q"{des Prés Joyeux}", q"{des prés Vaillons}"
		, q"{des Prés Vaillons}", q"{des Prés-Guëtins}", q"{des Primevères}", q"{des Puits}"
		, q"{des ravières}", q"{des Rives}", q"{des Rocailles}", q"{des Roches}", q"{des Rochettes}"
		, q"{des Roses}", q"{des Rottes}", q"{des Ruaux}", q"{des Saigneules}", q"{des Sapins}", q"{des Sauges}"
		, q"{des Sociétés}", q"{des Sorbiers}", q"{des Sources}", q"{des Tilles}", q"{des Tilleuls}"
		, q"{des Tschètres}", q"{des Vergers}", q"{des Vieilles Mortes}", q"{des Vignolans}"
		, q"{des Voitats}", q"{deſoubz}", q"{dit le Petit pré}", q"{Doyen Morel}", q"{du 16 Mars}"
		, q"{du 26-Mars}", q"{du Bambois}", q"{du Brue}", q"{du Bruye}", q"{du Cagreu}", q"{du Cairli}"
		, q"{du Chalet}", q"{du Chasseral}", q"{du Château}", q"{du Châtillon}", q"{du Chaumin}"
		, q"{du Chêne}", q"{du Chevreuil}", q"{du Cinéma}", q"{du Clos}", q"{du Clos Michel}", q"{du Coin Dessus}"
		, q"{du Collège}", q"{du Compois}", q"{du Coq}", q"{du Corps-de-Garde}", q"{du Coteau}"
		, q"{du Cratat}", q"{du Crêt}", q"{du Crêt-Georges}", q"{du Docteur Schwab}", q"{du Dr. Eguet}"
		, q"{du Dr.Tièche}", q"{du Droit}", q"{du Faubourg}", q"{du Faucon}", q"{du fournel}", q"{du Foyer}"
		, q"{du Frête}", q"{du Fuet}", q"{du Général Voirol}", q"{du Genièvre}", q"{du Grand-Champ}"
		, q"{du Grand'Clos}", q"{du Haut}", q"{du Haut des Roches}", q"{du haut ou de la côte}"
		, q"{du Jura}", q"{du Lac}", q"{du Lac Vert}", q"{du Lavoir}", q"{du Levant}", q"{du long Jorat autrement de la Cavoye}"
		, q"{du Mamelon Vert}", q"{du Marais}", q"{du Marché}", q"{du Midi}", q"{du Milieu}", q"{du Monnet}"
		, q"{du Mont}", q"{du Moulin}", q"{du Nord}", q"{du Nouveau Pont}", q"{du Paradis}", q"{du Parc}"
		, q"{du Pasteur Frêne}", q"{du Pâturage}", q"{du Pensionnat}", q"{du Perset}", q"{du Petit-Bâle}"
		, q"{du Petit-Val}", q"{du Pierrat}", q"{du Plan}", q"{du Pommé au Loup}", q"{du Pont}"
		, q"{du Port}", q"{du Prailat}", q"{du Pré}", q"{du Pré Bayard}", q"{du Puits}", q"{du Quai}"
		, q"{du Quart Derrière}", q"{du Raisin}", q"{du Rêche}", q"{du Repos}", q"{du Righi}", q"{du Roc}"
		, q"{du Ruaul du puble}", q"{du Ryaulx}", q"{du Scé}", q"{du Sel}", q"{du Signal}", q"{du Signolet}"
		, q"{du Soleil}", q"{du Stade}", q"{du Stand}", q"{du Tempé}", q"{du Temple}", q"{du Tennis}"
		, q"{du Tilleul}", q"{du Tirage}", q"{du Torrent}", q"{du Truit}", q"{du Tunnel}", q"{du Vélé}"
		, q"{du Vergeret}", q"{du Viaduc}", q"{du Vignoble}", q"{du Village}", q"{du wie Ruaul}"
		, q"{Edouard Tièche}", q"{Emile Villeneuve}", q"{en haut le Cret}", q"{Euchette}", q"{Ferdinand-Gonseth}"
		, q"{Fin de là Outre}", q"{Fin-Lépine}", q"{Francillon}", q"{Fritz-Marchand}", q"{Ginnel}"
		, q"{Grock}", q"{H.-F.Sandoz}", q"{Haute}", q"{Industrielle}", q"{Jacques David}", q"{Jacques-René Fiechter}"
		, q"{Jolimont}", q"{l'Orée du Bois}", q"{le long du Cret}", q"{Marzon}", q"{Menin}", q"{Mercier}"
		, q"{Méval}", q"{Mol}", q"{Montagu}", q"{Neuf}", q"{Neuve}", q"{Nicolas-Junker}", q"{Paul Charmillot}"
		, q"{Pierre Jolissaint}", q"{Pierre-Alin}", q"{Plaine Fin}", q"{principale}", q"{Principale}"
		, q"{Quart-Dessus}", q"{Rière Ville}", q"{Robert de Vigier}", q"{Rondelle}", q"{Rosselet-Challandes}"
		, q"{Saint-Germain}", q"{Saint-Randoald}", q"{Samuel d'Aubigné}", q"{Sandoz}", q"{Sans-Souci}"
		, q"{Sauvain}", q"{sous la Côte}", q"{sous la Lampe}", q"{Sous Route}", q"{Sous-la-Forêt}"
		, q"{sur Beaumont}", q"{tendant à Bioley}", q"{vers Dizy}", q"{vers La Chaux}", q"{vers La Sarraz}"
		, q"{vers Senarclens}", q"{Virgile-Rossel}" ];

		return choice(strs, this.rnd);
	}

	override string locationStreetPrefix() {
		const string[] strs =
		[ q"{Rue}", q"{Avenue}", q"{Place}", q"{Route}", q"{Chemin}" ];

		return choice(strs, this.rnd);
	}

	override string loremWords() {
		const string[] strs =
		[ q"{alias}", q"{consequatur}", q"{aut}", q"{perferendis}", q"{sit}", q"{voluptatem}", q"{accusantium}"
		, q"{doloremque}", q"{aperiam}", q"{eaque}", q"{ipsa}", q"{quae}", q"{ab}", q"{illo}", q"{inventore}"
		, q"{veritatis}", q"{et}", q"{quasi}", q"{architecto}", q"{beatae}", q"{vitae}", q"{dicta}", q"{sunt}"
		, q"{explicabo}", q"{aspernatur}", q"{odit}", q"{fugit}", q"{sed}", q"{quia}", q"{consequuntur}"
		, q"{magni}", q"{dolores}", q"{eos}", q"{qui}", q"{ratione}", q"{sequi}", q"{nesciunt}", q"{neque}"
		, q"{dolorem}", q"{ipsum}", q"{dolor}", q"{amet}", q"{consectetur}", q"{adipisci}", q"{velit}"
		, q"{non}", q"{numquam}", q"{eius}", q"{modi}", q"{tempora}", q"{incidunt}", q"{ut}", q"{labore}"
		, q"{dolore}", q"{magnam}", q"{aliquam}", q"{quaerat}", q"{enim}", q"{ad}", q"{minima}", q"{veniam}"
		, q"{quis}", q"{nostrum}", q"{exercitationem}", q"{ullam}", q"{corporis}", q"{nemo}", q"{ipsam}"
		, q"{voluptas}", q"{suscipit}", q"{laboriosam}", q"{nisi}", q"{aliquid}", q"{ex}", q"{ea}", q"{commodi}"
		, q"{autem}", q"{vel}", q"{eum}", q"{iure}", q"{reprehenderit}", q"{in}", q"{voluptate}", q"{esse}"
		, q"{quam}", q"{nihil}", q"{molestiae}", q"{iusto}", q"{odio}", q"{dignissimos}", q"{ducimus}"
		, q"{blanditiis}", q"{praesentium}", q"{laudantium}", q"{totam}", q"{rem}", q"{voluptatum}"
		, q"{deleniti}", q"{atque}", q"{corrupti}", q"{quos}", q"{quas}", q"{molestias}", q"{excepturi}"
		, q"{sint}", q"{occaecati}", q"{cupiditate}", q"{provident}", q"{perspiciatis}", q"{unde}", q"{omnis}"
		, q"{iste}", q"{natus}", q"{error}", q"{similique}", q"{culpa}", q"{officia}", q"{deserunt}", q"{mollitia}"
		, q"{animi}", q"{id}", q"{est}", q"{laborum}", q"{dolorum}", q"{fuga}", q"{harum}", q"{quidem}", q"{rerum}"
		, q"{facilis}", q"{expedita}", q"{distinctio}", q"{nam}", q"{libero}", q"{tempore}", q"{cum}", q"{soluta}"
		, q"{nobis}", q"{eligendi}", q"{optio}", q"{cumque}", q"{impedit}", q"{quo}", q"{porro}", q"{quisquam}"
		, q"{minus}", q"{quod}", q"{maxime}", q"{placeat}", q"{facere}", q"{possimus}", q"{assumenda}"
		, q"{repellendus}", q"{temporibus}", q"{quibusdam}", q"{illum}", q"{fugiat}", q"{nulla}", q"{pariatur}"
		, q"{at}", q"{vero}", q"{accusamus}", q"{officiis}", q"{debitis}", q"{necessitatibus}", q"{saepe}"
		, q"{eveniet}", q"{voluptates}", q"{repudiandae}", q"{recusandae}", q"{itaque}", q"{earum}"
		, q"{hic}", q"{tenetur}", q"{a}", q"{sapiente}", q"{delectus}", q"{reiciendis}", q"{voluptatibus}"
		, q"{maiores}", q"{doloribus}", q"{asperiores}", q"{repellat}" ];

		return choice(strs, this.rnd);
	}

	override string personFemaleFirstName() {
		const string[] strs =
		[ q"{Mia}", q"{Emilia}", q"{Mila}", q"{Sofia}", q"{Sophia}", q"{Ella}", q"{Lea}", q"{Elena}", q"{Olivia}"
		, q"{Anna}", q"{Alina}", q"{Elina}", q"{Lina}", q"{Emma}", q"{Leonie}", q"{Sophie}", q"{Laura}", q"{Elin}"
		, q"{Nora}", q"{Amelia}", q"{Juna}", q"{Lara}", q"{Lia}", q"{Ava}", q"{Nina}", q"{Maria}", q"{Yara}"
		, q"{Sara}", q"{Valentina}", q"{Emily}", q"{Lena}", q"{Noemi}", q"{Ronja}", q"{Aurora}", q"{Julia}"
		, q"{Zoe}", q"{Luana}", q"{Luna}", q"{Mara}", q"{Victoria}", q"{Alea}", q"{Alice}", q"{Elisa}", q"{Giulia}"
		, q"{Chiara}", q"{Jana}", q"{Livia}", q"{Malea}", q"{Alma}", q"{Charlotte}", q"{Hana}", q"{Melina}"
		, q"{Amélie}", q"{Ela}", q"{Klea}", q"{Mira}", q"{Elea}", q"{Ida}", q"{Luisa}", q"{Sarah}", q"{Tara}"
		, q"{Yuna}", q"{Jara}", q"{Paula}", q"{Hanna}", q"{Aurelia}", q"{Clara}", q"{Diana}", q"{Helena}"
		, q"{Lisa}", q"{Lorena}", q"{Malia}", q"{Alessia}", q"{Liara}", q"{Stella}", q"{Aline}", q"{Johanna}"
		, q"{Lily}", q"{Liv}", q"{Maya}", q"{Amelie}", q"{Eleonora}", q"{Eliana}", q"{Ellie}", q"{Isabella}"
		, q"{Malou}", q"{Melissa}", q"{Selina}", q"{Amina}", q"{Amira}", q"{Aria}", q"{Eva}", q"{Hannah}"
		, q"{Leana}", q"{Lynn}", q"{Ariana}", q"{Ayla}", q"{Carla}", q"{Leyla}", q"{Lou}", q"{Marie}", q"{Milena}"
		, q"{Anouk}", q"{Dua}", q"{Fiona}", q"{Klara}", q"{Leni}", q"{Leona}", q"{Louisa}", q"{Selma}", q"{Vivienne}"
		, q"{Ana}", q"{Anastasia}", q"{Aylin}", q"{Finja}", q"{Leandra}", q"{Maja}", q"{Romy}", q"{Alva}"
		, q"{Emilie}", q"{Maila}", q"{Mina}", q"{Naomi}", q"{Sina}", q"{Valeria}", q"{Zoé}", q"{Angelina}"
		, q"{Arya}", q"{Inara}", q"{Kaia}", q"{Matilda}", q"{Sienna}", q"{Thea}", q"{Yael}", q"{Alicia}", q"{Alisa}"
		, q"{Amy}", q"{Anika}", q"{Azra}", q"{Chloe}", q"{Ema}", q"{Frida}", q"{Ladina}", q"{Liyana}", q"{Malin}"
		, q"{Malina}", q"{Mathilda}", q"{Medina}", q"{Rosa}", q"{Samira}", q"{Sofija}", q"{Ajla}", q"{Amanda}"
		, q"{Asja}", q"{Bianca}", q"{Carlotta}", q"{Dalia}", q"{Elif}", q"{Hailey}", q"{Iva}", q"{Liana}"
		, q"{Melisa}", q"{Neyla}", q"{Noelia}", q"{Runa}", q"{Alena}", q"{Aleyna}", q"{Aliyah}", q"{Amara}"
		, q"{Amra}", q"{Carolina}", q"{Cecilia}", q"{Chloé}", q"{Elli}", q"{Elodie}", q"{Ena}", q"{Freya}"
		, q"{Irina}", q"{Kaja}", q"{Lilly}", q"{Linda}", q"{Lotta}", q"{Lucia}", q"{Lucy}", q"{Marta}", q"{Nuria}"
		, q"{Paulina}", q"{Yasmin}", q"{Zoey}", q"{Ada}", q"{Adriana}", q"{Alexandra}", q"{Alya}", q"{Ayana}"
		, q"{Cataleya}", q"{Céline}", q"{Eleni}", q"{Jael}", q"{Jasmin}", q"{Kiara}", q"{Laila}", q"{Larissa}"
		, q"{Matilde}", q"{Miriam}", q"{Nela}", q"{Nisa}", q"{Noa}", q"{Pia}", q"{Teodora}", q"{Tiana}", q"{Alisha}"
		, q"{Aliya}", q"{Amalia}", q"{Anina}", q"{Arianna}", q"{Clea}", q"{Daria}", q"{Filippa}", q"{Flurina}"
		, q"{Gianna}", q"{Gioia}", q"{Giorgia}", q"{Isabel}", q"{Isabelle}", q"{Josephine}", q"{Juliana}"
		, q"{Julie}", q"{Juliette}", q"{Larina}", q"{Layla}", q"{Leia}", q"{Leila}", q"{Liva}", q"{Lua}", q"{Luena}"
		, q"{Malena}", q"{Margaux}", q"{Michelle}", q"{Nayla}", q"{Rahel}", q"{Rebecca}", q"{Romina}", q"{Rona}"
		, q"{Ruby}", q"{Serena}", q"{Siena}", q"{Soraya}", q"{Vanessa}", q"{Viola}", q"{Aaliyah}", q"{Adea}"
		, q"{Alana}", q"{Alba}", q"{Alissa}", q"{Ambra}", q"{Anastasija}", q"{Anaïs}", q"{Antonia}", q"{Eda}"
		, q"{Eleanor}", q"{Emilija}", q"{Hira}", q"{Ilenia}", q"{Ivy}", q"{Jasmine}", q"{Kira}", q"{Leah}"
		, q"{Leonora}", q"{Letizia}", q"{Leya}", q"{Linn}", q"{Liya}", q"{Lola}", q"{Léonie}", q"{Mayla}"
		, q"{Naya}", q"{Nika}", q"{Nova}", q"{Pauline}", q"{Rose}", q"{Siara}", q"{Tilda}", q"{Timea}", q"{Viktoria}"
		, q"{Aisha}", q"{Ajna}", q"{Alara}", q"{Alia}", q"{Annika}", q"{Asia}", q"{Astrid}", q"{Beatrice}"
		, q"{Claire}", q"{Céleste}", q"{Dahlia}", q"{Dea}", q"{Eline}", q"{Elisabeth}", q"{Elsa}", q"{Emelie}"
		, q"{Enya}", q"{Esther}", q"{Giada}", q"{Helen}", q"{Ilaria}", q"{Ina}", q"{Jennifer}", q"{Joana}"
		, q"{Joline}", q"{Kalea}", q"{Lenia}", q"{Lenya}", q"{Lilia}", q"{Liliana}", q"{Léa}", q"{Maira}"
		, q"{Mattea}", q"{Maëlle}", q"{Melanie}", q"{Melody}", q"{Merjem}", q"{Mika}", q"{Najla}", q"{Nea}"
		, q"{Nefeli}", q"{Neva}", q"{Nia}", q"{Philippa}", q"{Rhea}", q"{Seraina}", q"{Sidra}", q"{Tabea}"
		, q"{Tamara}", q"{Tea}", q"{Teresa}", q"{Tina}", q"{Valerie}", q"{Vera}", q"{Zoë}", q"{Adina}", q"{Agatha}"
		, q"{Ajana}", q"{Ajlin}", q"{Alissia}", q"{Alyssa}", q"{Amber}", q"{Amélia}", q"{Asya}", q"{Bella}"
		, q"{Bigna}", q"{Camilla}", q"{Carlota}", q"{Celina}", q"{Celine}", q"{Cleo}", q"{Deborah}", q"{Delia}"
		, q"{Diara}", q"{Dina}", q"{Eliona}", q"{Eliza}", q"{Ellen}", q"{Estelle}", q"{Felicia}", q"{Flavia}"
		, q"{Florence}", q"{Gelila}", q"{Grace}", q"{Hava}", q"{Helin}", q"{Iliana}", q"{Iris}", q"{Janina}"
		, q"{Jil}", q"{Joy}", q"{Jusra}", q"{Kaya}", q"{Laia}", q"{Lana}", q"{Lavinia}", q"{Leoni}", q"{Lilian}"
		, q"{Linnea}", q"{Louise}", q"{Luise}", q"{Lya}", q"{Madlaina}", q"{Maia}", q"{Marina}", q"{Maša}"
		, q"{Melia}", q"{Milla}", q"{Moira}", q"{Mona}", q"{Nala}", q"{Natalia}", q"{Nathalie}", q"{Nejla}"
		, q"{Nerea}", q"{Nila}", q"{Rachel}", q"{Rajana}", q"{Rea}", q"{Reina}", q"{Riana}", q"{Robyn}", q"{Rosalie}"
		, q"{Roza}", q"{Rüya}", q"{Samara}", q"{Sarina}", q"{Selin}", q"{Sena}", q"{Siana}", q"{Silvia}"
		, q"{Simea}", q"{Sonja}", q"{Talia}", q"{Tessa}", q"{Theresa}", q"{Tilla}", q"{Tuana}", q"{Uma}", q"{Una}"
		, q"{Vittoria}", q"{Wilma}", q"{Xenia}", q"{Zana}", q"{Zara}", q"{Abigail}", q"{Adele}", q"{Aida}"
		, q"{Aina}", q"{Aleksandra}", q"{Alenia}", q"{Alexia}", q"{Aleya}", q"{Alix}", q"{Alyssia}", q"{Amadea}"
		, q"{Amea}", q"{Amen}", q"{Amália}", q"{Anahita}", q"{Andjelina}", q"{Andrina}", q"{Angela}", q"{Anik}"
		, q"{Annabel}", q"{Arielle}", q"{Arisa}" ];

		return choice(strs, this.rnd);
	}

	override string personFemalePrefix() {
		const string[] strs =
		[ q"{Mme}", q"{Mlle}", q"{Dr}", q"{Prof}" ];

		return choice(strs, this.rnd);
	}

	override string personFirstName() {
		const string[] strs =
		[ q"{Aaliyah}", q"{Aaron}", q"{Abdullah}", q"{Abigail}", q"{Ada}", q"{Adam}", q"{Adea}", q"{Adele}"
		, q"{Adina}", q"{Adrian}", q"{Adriana}", q"{Agatha}", q"{Ahmed}", q"{Aida}", q"{Aiden}", q"{Aina}"
		, q"{Aisha}", q"{Ajan}", q"{Ajana}", q"{Ajla}", q"{Ajlin}", q"{Ajna}", q"{Alan}", q"{Alana}", q"{Alara}"
		, q"{Alba}", q"{Albert}", q"{Alea}", q"{Alec}", q"{Alejandro}", q"{Aleksa}", q"{Aleksander}", q"{Aleksandra}"
		, q"{Alena}", q"{Alenia}", q"{Alessandro}", q"{Alessia}", q"{Alessio}", q"{Alex}", q"{Alexander}"
		, q"{Alexandra}", q"{Alexandre}", q"{Alexandros}", q"{Alexia}", q"{Alexis}", q"{Aleya}", q"{Aleyna}"
		, q"{Alfred}", q"{Ali}", q"{Alia}", q"{Alice}", q"{Alicia}", q"{Alina}", q"{Aline}", q"{Alisa}", q"{Alisha}"
		, q"{Alissa}", q"{Alissia}", q"{Alix}", q"{Aliya}", q"{Aliyah}", q"{Alma}", q"{Alva}", q"{Alya}", q"{Alyssa}"
		, q"{Alyssia}", q"{Amadea}", q"{Amalia}", q"{Amanda}", q"{Amar}", q"{Amara}", q"{Amber}", q"{Ambra}"
		, q"{Amea}", q"{Amelia}", q"{Amelie}", q"{Amen}", q"{Amin}", q"{Amina}", q"{Amir}", q"{Amira}", q"{Amra}"
		, q"{Amy}", q"{Amália}", q"{Amélia}", q"{Amélie}", q"{Ana}", q"{Anahita}", q"{Anastasia}", q"{Anastasija}"
		, q"{Anaïs}", q"{Andjelina}", q"{Andrea}", q"{Andrej}", q"{Andri}", q"{Andrin}", q"{Andrina}"
		, q"{Angela}", q"{Angelina}", q"{Angelo}", q"{Anik}", q"{Anika}", q"{Anina}", q"{Anna}", q"{Annabel}"
		, q"{Annika}", q"{Anouk}", q"{Anthony}", q"{Anton}", q"{Antonia}", q"{Antonio}", q"{Anuar}", q"{Aren}"
		, q"{Ari}", q"{Aria}", q"{Arian}", q"{Ariana}", q"{Arianna}", q"{Arielle}", q"{Arion}", q"{Aris}"
		, q"{Arisa}", q"{Armando}", q"{Armin}", q"{Arno}", q"{Aron}", q"{Arthur}", q"{Arun}", q"{Arya}", q"{Asia}"
		, q"{Asja}", q"{Astrid}", q"{Asya}", q"{Atlas}", q"{Aurel}", q"{Aurelia}", q"{Aurelio}", q"{Auron}"
		, q"{Aurora}", q"{Ava}", q"{Axel}", q"{Ayan}", q"{Ayana}", q"{Ayaz}", q"{Ayden}", q"{Ayla}", q"{Aylin}"
		, q"{Azra}", q"{Beatrice}", q"{Bela}", q"{Bella}", q"{Ben}", q"{Benjamin}", q"{Bianca}", q"{Bigna}"
		, q"{Björn}", q"{Bogdan}", q"{Bruno}", q"{Bryan}", q"{Béla}", q"{Camilla}", q"{Can}", q"{Carl}"
		, q"{Carla}", q"{Carlo}", q"{Carlota}", q"{Carlotta}", q"{Carolina}", q"{Cataleya}", q"{Cecilia}"
		, q"{Cedric}", q"{Celina}", q"{Celine}", q"{Charles}", q"{Charlie}", q"{Charlotte}", q"{Chiara}"
		, q"{Chloe}", q"{Chloé}", q"{Christian}", q"{Christopher}", q"{Claire}", q"{Clara}", q"{Clea}"
		, q"{Clemens}", q"{Cleo}", q"{Colin}", q"{Constantin}", q"{Cristian}", q"{Cédric}", q"{Céleste}"
		, q"{Céline}", q"{Dahlia}", q"{Dalia}", q"{Damian}", q"{Daniel}", q"{Danilo}", q"{Dante}", q"{Daria}"
		, q"{Darian}", q"{Dario}", q"{Daris}", q"{Darius}", q"{David}", q"{Davide}", q"{Dea}", q"{Dean}", q"{Deborah}"
		, q"{Delia}", q"{Denis}", q"{Deniz}", q"{Devin}", q"{Diana}", q"{Diar}", q"{Diara}", q"{Diego}", q"{Dina}"
		, q"{Dino}", q"{Dion}", q"{Dominik}", q"{Dorian}", q"{Dua}", q"{Dylan}", q"{Eda}", q"{Eddie}", q"{Eduard}"
		, q"{Eduardo}", q"{Ela}", q"{Elea}", q"{Eleanor}", q"{Elena}", q"{Eleni}", q"{Eleonora}", q"{Eli}"
		, q"{Elia}", q"{Eliah}", q"{Elian}", q"{Eliana}", q"{Eliano}", q"{Elias}", q"{Elif}", q"{Elija}", q"{Elijah}"
		, q"{Elin}", q"{Elina}", q"{Eline}", q"{Elio}", q"{Elion}", q"{Eliona}", q"{Elisa}", q"{Elisabeth}"
		, q"{Eliza}", q"{Ella}", q"{Ellen}", q"{Elli}", q"{Ellie}", q"{Elliot}", q"{Elodie}", q"{Elsa}", q"{Elyas}"
		, q"{Ema}", q"{Emanuel}", q"{Emelie}", q"{Emil}", q"{Emilia}", q"{Emilian}", q"{Emilie}", q"{Emilija}"
		, q"{Emilio}", q"{Emily}", q"{Emir}", q"{Emma}", q"{Ena}", q"{Enea}", q"{Enes}", q"{Enio}", q"{Ennio}"
		, q"{Ensar}", q"{Enya}", q"{Enyo}", q"{Enzo}", q"{Eric}", q"{Erik}", q"{Eron}", q"{Esra}", q"{Estelle}"
		, q"{Esther}", q"{Ethan}", q"{Eva}", q"{Evan}", q"{Fabian}", q"{Fabio}", q"{Federico}", q"{Felicia}"
		, q"{Felix}", q"{Ferdinand}", q"{Filip}", q"{Filippa}", q"{Filippo}", q"{Finja}", q"{Finn}", q"{Fiona}"
		, q"{Fionn}", q"{Flavia}", q"{Flavio}", q"{Florence}", q"{Florian}", q"{Flurin}", q"{Flurina}"
		, q"{Flynn}", q"{Francesco}", q"{Francis}", q"{Francisco}", q"{Frederick}", q"{Frederik}", q"{Freya}"
		, q"{Frida}", q"{Fynn}", q"{Gabriel}", q"{Gabriele}", q"{Gelila}", q"{Georg}", q"{Giada}", q"{Gian}"
		, q"{Gianluca}", q"{Gianna}", q"{Gino}", q"{Gioele}", q"{Gioia}", q"{Gion}", q"{Giorgia}", q"{Giulia}"
		, q"{Giuliano}", q"{Giulio}", q"{Giuseppe}", q"{Grace}", q"{Hailey}", q"{Hamza}", q"{Hana}", q"{Hanna}"
		, q"{Hannah}", q"{Hava}", q"{Helen}", q"{Helena}", q"{Helin}", q"{Henri}", q"{Henrik}", q"{Henry}"
		, q"{Hira}", q"{Hugo}", q"{Ian}", q"{Ida}", q"{Ignacy}", q"{Ilai}", q"{Ilaria}", q"{Ilay}", q"{Ilenia}"
		, q"{Ilian}", q"{Iliana}", q"{Ilias}", q"{Ilja}", q"{Ilyas}", q"{Imran}", q"{Ina}", q"{Inara}", q"{Irina}"
		, q"{Iris}", q"{Isa}", q"{Isaac}", q"{Isabel}", q"{Isabella}", q"{Isabelle}", q"{Isaiah}", q"{Iva}"
		, q"{Ivan}", q"{Ivy}", q"{Jack}", q"{Jaden}", q"{Jael}", q"{Jakob}", q"{Jakub}", q"{Jamal}", q"{James}"
		, q"{Jamie}", q"{Jamiro}", q"{Jan}", q"{Jana}", q"{Janina}", q"{Janis}", q"{Jannik}", q"{Jannis}"
		, q"{Janosch}", q"{Jara}", q"{Jari}", q"{Jaro}", q"{Jaron}", q"{Jasin}", q"{Jasmin}", q"{Jasmine}"
		, q"{Jason}", q"{Jay}", q"{Jayden}", q"{Jennifer}", q"{Jeremy}", q"{Jil}", q"{Joah}", q"{Joana}", q"{Joel}"
		, q"{Johanna}", q"{John}", q"{Joline}", q"{Jon}", q"{Jona}", q"{Jonah}", q"{Jonas}", q"{Jonathan}"
		, q"{Jorin}", q"{Joris}", q"{Josephine}", q"{Joshua}", q"{Jovan}", q"{Jovin}", q"{Joy}", q"{Juan}"
		, q"{Jules}", q"{Julia}", q"{Julian}", q"{Juliana}", q"{Julie}", q"{Julien}", q"{Juliette}", q"{Julius}"
		, q"{Juna}", q"{Juri}", q"{Jusra}", q"{Jusuf}", q"{Kai}", q"{Kaia}", q"{Kaja}", q"{Kalea}", q"{Karl}"
		, q"{Kaya}", q"{Keano}", q"{Keanu}", q"{Kerem}", q"{Keyan}", q"{Kian}", q"{Kiano}", q"{Kiara}", q"{Kilian}"
		, q"{Kimo}", q"{Kira}", q"{Kiyan}", q"{Klara}", q"{Klea}", q"{Konstantin}", q"{Kristijan}", q"{Kuzey}"
		, q"{Kyan}", q"{Ladina}", q"{Laia}", q"{Laila}", q"{Lana}", q"{Lara}", q"{Larina}", q"{Larissa}", q"{Lars}"
		, q"{Lasse}", q"{Laura}", q"{Lauri}", q"{Laurin}", q"{Lavinia}", q"{Layla}", q"{Lea}", q"{Leah}", q"{Lean}"
		, q"{Leana}", q"{Leandra}", q"{Leandro}", q"{Leano}", q"{Leart}", q"{Ledion}", q"{Leia}", q"{Leila}"
		, q"{Len}", q"{Lena}", q"{Leni}", q"{Lenia}", q"{Lenn}", q"{Lenni}", q"{Lennox}", q"{Lenny}", q"{Lenya}"
		, q"{Leo}", q"{Leon}", q"{Leona}", q"{Leonard}", q"{Leonardo}", q"{Leonel}", q"{Leoni}", q"{Leonidas}"
		, q"{Leonie}", q"{Leonis}", q"{Leonora}", q"{Leopold}", q"{Leroy}", q"{Letizia}", q"{Levi}", q"{Levin}"
		, q"{Levio}", q"{Leya}", q"{Leyan}", q"{Leyla}", q"{Lia}", q"{Liam}", q"{Lian}", q"{Liana}", q"{Liara}"
		, q"{Lias}", q"{Lilia}", q"{Lilian}", q"{Liliana}", q"{Lilly}", q"{Lily}", q"{Lina}", q"{Linda}", q"{Linn}"
		, q"{Linnea}", q"{Lino}", q"{Linus}", q"{Lio}", q"{Lion}", q"{Lionel}", q"{Lior}", q"{Liron}", q"{Lisa}"
		, q"{Liv}", q"{Liva}", q"{Livia}", q"{Livio}", q"{Liya}", q"{Liyan}", q"{Liyana}", q"{Lola}", q"{Lorena}"
		, q"{Lorenz}", q"{Lorenzo}", q"{Lorian}", q"{Lorik}", q"{Lorin}", q"{Loris}", q"{Lotta}", q"{Lou}"
		, q"{Louan}", q"{Louie}", q"{Louis}", q"{Louisa}", q"{Louise}", q"{Loïc}", q"{Lua}", q"{Luan}", q"{Luana}"
		, q"{Luc}", q"{Luca}", q"{Lucas}", q"{Lucia}", q"{Lucy}", q"{Luena}", q"{Lui}", q"{Luis}", q"{Luisa}"
		, q"{Luise}", q"{Luka}", q"{Lukas}", q"{Luke}", q"{Luna}", q"{Lya}", q"{Lyan}", q"{Lynn}", q"{Léa}"
		, q"{Léo}", q"{Léonie}", q"{Madlaina}", q"{Mael}", q"{Mahir}", q"{Maia}", q"{Maila}", q"{Mailo}"
		, q"{Maira}", q"{Maja}", q"{Maksim}", q"{Malea}", q"{Malena}", q"{Malia}", q"{Malik}", q"{Malin}"
		, q"{Malina}", q"{Malou}", q"{Manuel}", q"{Mara}", q"{Marcel}", q"{Marco}", q"{Marcus}", q"{Margaux}"
		, q"{Maria}", q"{Marie}", q"{Marina}", q"{Marino}", q"{Mario}", q"{Marius}", q"{Mark}", q"{Marlo}"
		, q"{Marlon}", q"{Marta}", q"{Martim}", q"{Martin}", q"{Marvin}", q"{Matej}", q"{Mateo}", q"{Mateus}"
		, q"{Matheo}", q"{Mathias}", q"{Mathilda}", q"{Mathis}", q"{Matias}", q"{Matilda}", q"{Matilde}"
		, q"{Mats}", q"{Mattea}", q"{Matteo}", q"{Matthias}", q"{Matti}", q"{Mattia}", q"{Mattis}", q"{Maurice}"
		, q"{Mauro}", q"{Max}", q"{Maxim}", q"{Maxime}", q"{Maximilian}", q"{Maya}", q"{Mayla}", q"{Maël}"
		, q"{Maëlle}", q"{Maša}", q"{Medina}", q"{Melanie}", q"{Melia}", q"{Melina}", q"{Melisa}", q"{Melissa}"
		, q"{Melody}", q"{Merjem}", q"{Mete}", q"{Mia}", q"{Micha}", q"{Michael}", q"{Michelle}", q"{Miguel}"
		, q"{Mika}", q"{Mikail}", q"{Mila}", q"{Milan}", q"{Milena}", q"{Miles}", q"{Milla}", q"{Milo}", q"{Mina}"
		, q"{Mira}", q"{Miran}", q"{Miriam}", q"{Miro}", q"{Mischa}", q"{Mohammed}", q"{Moira}", q"{Mona}"
		, q"{Moritz}", q"{Muhammad}", q"{Muhammed}", q"{Musa}", q"{Nael}", q"{Najla}", q"{Nala}", q"{Nando}"
		, q"{Naomi}", q"{Natalia}", q"{Natan}", q"{Nathalie}", q"{Nathan}", q"{Naya}", q"{Nayla}", q"{Nea}"
		, q"{Nefeli}", q"{Nejla}", q"{Nela}", q"{Nelio}", q"{Neo}", q"{Nerea}", q"{Neva}", q"{Nevin}", q"{Nevio}"
		, q"{Neyla}", q"{Nia}", q"{Nick}", q"{Nico}", q"{Nicola}", q"{Nicolas}", q"{Nika}", q"{Niklas}", q"{Niko}"
		, q"{Nikola}", q"{Nila}", q"{Nils}", q"{Nina}", q"{Nino}", q"{Nio}", q"{Nisa}", q"{Noa}", q"{Noah}", q"{Noam}"
		, q"{Noar}", q"{Noe}", q"{Noel}", q"{Noelia}", q"{Noemi}", q"{Nora}", q"{Nova}", q"{Noé}", q"{Nuri}"
		, q"{Nuria}", q"{Oliver}", q"{Olivia}", q"{Omar}", q"{Orell}", q"{Oscar}", q"{Oskar}", q"{Pablo}"
		, q"{Patrick}", q"{Paul}", q"{Paula}", q"{Paulina}", q"{Pauline}", q"{Philipp}", q"{Philippa}"
		, q"{Pia}", q"{Pietro}", q"{Quinn}", q"{Rachel}", q"{Rafael}", q"{Rahel}", q"{Rajana}", q"{Raphael}"
		, q"{Rayan}", q"{Rayyan}", q"{Rea}", q"{Rebecca}", q"{Reina}", q"{Rejan}", q"{Rhea}", q"{Rian}", q"{Riana}"
		, q"{Rio}", q"{Roan}", q"{Robin}", q"{Robyn}", q"{Rodrigo}", q"{Romeo}", q"{Romina}", q"{Romy}", q"{Ron}"
		, q"{Rona}", q"{Ronja}", q"{Rosa}", q"{Rosalie}", q"{Rose}", q"{Roy}", q"{Roza}", q"{Ruben}", q"{Ruby}"
		, q"{Runa}", q"{Ryan}", q"{Rüya}", q"{Sam}", q"{Samara}", q"{Sami}", q"{Samir}", q"{Samira}", q"{Samu}"
		, q"{Samuel}", q"{Samuele}", q"{Santiago}", q"{Santino}", q"{Sara}", q"{Sarah}", q"{Sarina}", q"{Sebastian}"
		, q"{Selin}", q"{Selina}", q"{Selma}", q"{Sena}", q"{Seraina}", q"{Serena}", q"{Siana}", q"{Siara}"
		, q"{Sidra}", q"{Siena}", q"{Sienna}", q"{Silas}", q"{Silvia}", q"{Simea}", q"{Simon}", q"{Sina}"
		, q"{Siro}", q"{Sofia}", q"{Sofija}", q"{Sonja}", q"{Sophia}", q"{Sophie}", q"{Soraya}", q"{Stefan}"
		, q"{Stella}", q"{Sven}", q"{Tabea}", q"{Talia}", q"{Tamara}", q"{Tara}", q"{Tea}", q"{Teo}", q"{Teodor}"
		, q"{Teodora}", q"{Teresa}", q"{Tessa}", q"{Thea}", q"{Theo}", q"{Theodor}", q"{Theresa}", q"{Thiago}"
		, q"{Thierry}", q"{Thomas}", q"{Tiago}", q"{Tian}", q"{Tiana}", q"{Tilda}", q"{Till}", q"{Tilla}"
		, q"{Tim}", q"{Timea}", q"{Timo}", q"{Timon}", q"{Tina}", q"{Tobias}", q"{Tom}", q"{Tomás}", q"{Tristan}"
		, q"{Tuana}", q"{Uma}", q"{Una}", q"{Valentin}", q"{Valentina}", q"{Valeria}", q"{Valerie}", q"{Vanessa}"
		, q"{Vasco}", q"{Vera}", q"{Victor}", q"{Victoria}", q"{Viktor}", q"{Viktoria}", q"{Vincent}", q"{Viola}"
		, q"{Vito}", q"{Vittoria}", q"{Vivienne}", q"{Vuk}", q"{William}", q"{Wilma}", q"{Xenia}", q"{Yael}"
		, q"{Yago}", q"{Yanis}", q"{Yann}", q"{Yannick}", q"{Yannik}", q"{Yara}", q"{Yaro}", q"{Yaron}", q"{Yasin}"
		, q"{Yasmin}", q"{Younes}", q"{Yuna}", q"{Yuri}", q"{Yusuf}", q"{Zana}", q"{Zara}", q"{Zoe}", q"{Zoey}"
		, q"{Zoé}", q"{Zoë}" ];

		return choice(strs, this.rnd);
	}

	override string personLastName() {
		const string[] strs =
		[ q"{Abegglen}", q"{Ackermann}", q"{Aebischer}", q"{Aeby}", q"{Aigroz}", q"{Aregger}", q"{Bagnoud}"
		, q"{Ballouhey}", q"{Balmer}", q"{Barras}", q"{Bavaud}", q"{Beerli}", q"{Berney}", q"{Berset}"
		, q"{Berthoud}", q"{Beyeler}", q"{Bidaud}", q"{Bideau}", q"{Blanc}", q"{Blatter}", q"{Blazer}"
		, q"{Bolle}", q"{Borgeaud}", q"{Bossard}", q"{Bosson}", q"{Bossy}", q"{Bourcard}", q"{Bourgeois}"
		, q"{Brändli}", q"{Brogli}", q"{Brügger}", q"{Burckhardt}", q"{Burkhard}", q"{Burkhardt}"
		, q"{Caillat}", q"{Cailler}", q"{Calame}", q"{Cali}", q"{Chappuis}", q"{Chapuis}", q"{Chapuisat}"
		, q"{Chassot}", q"{Chollet}", q"{Chopard}", q"{Choquart}", q"{Chuit}", q"{Clerc}", q"{Cloos}", q"{Clottu}"
		, q"{Coinchon}", q"{Corboz}", q"{Cottier}", q"{Coulon}", q"{Courten}", q"{Cuche}", q"{Dallenbach}"
		, q"{De Pury}", q"{Denzler}", q"{Dietsche}", q"{Droz}", q"{Dubochet}", q"{Dubuis}", q"{Ducommun}"
		, q"{Ducret}", q"{Dutoit}", q"{Écoffey}", q"{Egli}", q"{Emery}", q"{Emig}", q"{Fankhauser}", q"{Fauche}"
		, q"{Favre}", q"{Felber}", q"{Flückiger}", q"{Foretay}", q"{Frey}", q"{Freymond}", q"{Friedli}"
		, q"{Funk}", q"{Gähwiler}", q"{Gehrig}", q"{Geisendorf}", q"{Genoud}", q"{Gerwig}", q"{Gilliéron}"
		, q"{Girard}", q"{Girardet}", q"{Glasson}", q"{Graber}", q"{Grandjean}", q"{Groebli}", q"{Grosjean}"
		, q"{Guinand}", q"{Hänni}", q"{Hediger}", q"{Hennezel}", q"{Henri}", q"{Hochstrasser}", q"{Hofer}"
		, q"{Hollard}", q"{Hommel}", q"{Honegger}", q"{Hottinguer}", q"{Huguenin}", q"{Humbert-Droz}"
		, q"{Huwiler}", q"{Jeanneret}", q"{Kälin}", q"{Kolly}", q"{Krügel}", q"{Kubli}", q"{Küng}", q"{Kunz}"
		, q"{Lambelet}", q"{Leuba}", q"{Leutenegger}", q"{Loup}", q"{Marcet}", q"{Matthey}", q"{Meichtry}"
		, q"{Meier}", q"{Menu}", q"{Merian}", q"{Mermoud}", q"{Meylan}", q"{Monnard}", q"{Monod}", q"{Morax}"
		, q"{Moraz}", q"{Moser}", q"{Mottet}", q"{Muschg}", q"{Musy}", q"{Nauer}", q"{Niggeler}", q"{Oberlin}"
		, q"{Oppliger}", q"{Ostervald}", q"{Parlier}", q"{Perret}", q"{Perrier}", q"{Perrin}", q"{Perroy}"
		, q"{Piaget}", q"{Pictet}", q"{Piguet}", q"{Pinon}", q"{Pittard}", q"{Plomb}", q"{Pury}", q"{Python}"
		, q"{Quartenoud}", q"{Quinodoz}", q"{Racordon}", q"{Ravet}", q"{Reymond}", q"{Reynold}", q"{Ribaupierre}"
		, q"{Riner}", q"{RIS}", q"{Ritz}", q"{Rochaix}", q"{Rochat}", q"{Romy}", q"{Röthlisberger}", q"{Rougemont}"
		, q"{Roulin}", q"{Rousseau}", q"{Rüttimann}", q"{Sandoz}", q"{Saussure}", q"{Savary}", q"{Scheurer}"
		, q"{Schmid}", q"{Schnider}", q"{Schnyder}", q"{Schorderet}", q"{Schrepfer}", q"{Schweitz}"
		, q"{Schweizer}", q"{Schwizgebel}", q"{Simmen}", q"{Simonet}", q"{Soutter}", q"{Spoerri}", q"{Sprunger}"
		, q"{Suter}", q"{Sutermeister}", q"{Sutz}", q"{Tinguely}", q"{Tissot}", q"{Toma}", q"{Torriani}"
		, q"{Tschudi}", q"{Vallet}", q"{Wasser}", q"{Wehrle}", q"{Welti}", q"{Widmer}" ];

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
		[ q"{Noah}", q"{Luca}", q"{Leon}", q"{Matteo}", q"{Ben}", q"{David}", q"{Liam}", q"{Leo}", q"{Elias}", q"{Louis}"
		, q"{Julian}", q"{Levi}", q"{Nino}", q"{Alexander}", q"{Leonardo}", q"{Tim}", q"{Finn}", q"{Aaron}"
		, q"{Laurin}", q"{Lio}", q"{Nico}", q"{Gabriel}", q"{Lian}", q"{Luan}", q"{Elia}", q"{Luis}", q"{Samuel}"
		, q"{Emil}", q"{Gian}", q"{Milo}", q"{Oliver}", q"{Valentin}", q"{Diego}", q"{Levin}", q"{Daniel}"
		, q"{Felix}", q"{Maximilian}", q"{Henry}", q"{Nael}", q"{Alessio}", q"{Elio}", q"{Leandro}", q"{Mateo}"
		, q"{Paul}", q"{Vincent}", q"{Adam}", q"{Malik}", q"{Mattia}", q"{Max}", q"{Jan}", q"{Leano}", q"{Theo}"
		, q"{Arthur}", q"{Enea}", q"{Livio}", q"{Nicolas}", q"{Benjamin}", q"{Kian}", q"{Noel}", q"{Oskar}"
		, q"{Robin}", q"{Dylan}", q"{Lino}", q"{Lukas}", q"{Noar}", q"{Amar}", q"{Marlon}", q"{Rayan}", q"{Dario}"
		, q"{Jonas}", q"{Moritz}", q"{Lionel}", q"{Loris}", q"{Nils}", q"{Lars}", q"{Arian}", q"{Jonathan}"
		, q"{Joshua}", q"{Linus}", q"{Simon}", q"{Ajan}", q"{Anton}", q"{Lenny}", q"{Rafael}", q"{Leonard}"
		, q"{Miro}", q"{Noé}", q"{Raphael}", q"{Ryan}", q"{Andrin}", q"{Ari}", q"{Aron}", q"{Aurelio}", q"{Jason}"
		, q"{Timo}", q"{Andrej}", q"{Damian}", q"{Fynn}", q"{Jamie}", q"{Jaro}", q"{Joel}", q"{John}", q"{Nevio}"
		, q"{Jayden}", q"{Juri}", q"{Lean}", q"{Luka}", q"{Mael}", q"{Maxim}", q"{Michael}", q"{Romeo}", q"{Adrian}"
		, q"{Alessandro}", q"{Dion}", q"{Henri}", q"{Jaron}", q"{Jon}", q"{Kai}", q"{Kilian}", q"{Lorik}"
		, q"{Rian}", q"{Can}", q"{Ennio}", q"{Filip}", q"{Karl}", q"{Lion}", q"{Lorenzo}", q"{Nelio}", q"{Neo}"
		, q"{Nick}", q"{Noam}", q"{Ruben}", q"{Thierry}", q"{Alex}", q"{Emilio}", q"{Fabio}", q"{Jakob}", q"{Tiago}"
		, q"{Aurel}", q"{Colin}", q"{Erik}", q"{Francesco}", q"{Hugo}", q"{Lucas}", q"{Manuel}", q"{Maël}"
		, q"{Niklas}", q"{Oscar}", q"{Samu}", q"{Sebastian}", q"{Stefan}", q"{Tian}", q"{Victor}", q"{Viktor}"
		, q"{William}", q"{Yannick}", q"{Ali}", q"{Amir}", q"{Ayden}", q"{Christian}", q"{Devin}", q"{Elian}"
		, q"{Fabian}", q"{Fionn}", q"{Gino}", q"{Henrik}", q"{James}", q"{Julien}", q"{Louie}", q"{Maksim}"
		, q"{Marvin}", q"{Mathias}", q"{Matti}", q"{Milan}", q"{Miran}", q"{Nathan}", q"{Nikola}", q"{Omar}"
		, q"{Santiago}", q"{Sven}", q"{Vito}", q"{Yuri}", q"{Anuar}", q"{Carl}", q"{Darian}", q"{Elijah}"
		, q"{Enzo}", q"{Ethan}", q"{Frederik}", q"{Giuliano}", q"{Ian}", q"{Ivan}", q"{Jaden}", q"{Janis}"
		, q"{Jeremy}", q"{Julius}", q"{Konstantin}", q"{Louan}", q"{Mailo}", q"{Martin}", q"{Micha}", q"{Roan}"
		, q"{Thomas}", q"{Yaro}", q"{Antonio}", q"{Aris}", q"{Carlo}", q"{Cristian}", q"{Diar}", q"{Enes}"
		, q"{Ensar}", q"{Gabriele}", q"{Gianluca}", q"{Jari}", q"{Jay}", q"{Loïc}", q"{Mateus}", q"{Mauro}"
		, q"{Miguel}", q"{Mika}", q"{Nuri}", q"{Rejan}", q"{Rodrigo}", q"{Theodor}", q"{Thiago}", q"{Timon}"
		, q"{Tom}", q"{Aiden}", q"{Albert}", q"{Alec}", q"{Andri}", q"{Cedric}", q"{Dante}", q"{Davide}", q"{Denis}"
		, q"{Elija}", q"{Elliot}", q"{Emanuel}", q"{Eric}", q"{Florian}", q"{Flurin}", q"{Hamza}", q"{Ilay}"
		, q"{Ilyas}", q"{Jack}", q"{Lenn}", q"{Lennox}", q"{Lias}", q"{Lior}", q"{Lou}", q"{Marcel}", q"{Marlo}"
		, q"{Mattis}", q"{Maurice}", q"{Nicola}", q"{Nio}", q"{Orell}", q"{Rio}", q"{Ron}", q"{Sam}", q"{Silas}"
		, q"{Till}", q"{Tobias}", q"{Vasco}", q"{Yann}", q"{Yaron}", q"{Yasin}", q"{Alan}", q"{Alexandre}"
		, q"{Alexis}", q"{Angelo}", q"{Constantin}", q"{Dean}", q"{Dominik}", q"{Eduard}", q"{Eliah}", q"{Eliano}"
		, q"{Emir}", q"{Federico}", q"{Filippo}", q"{Ilias}", q"{Jakub}", q"{Jannis}", q"{Jonah}", q"{Keanu}"
		, q"{Leyan}", q"{Lorian}", q"{Marco}", q"{Mario}", q"{Mark}", q"{Mats}", q"{Miles}", q"{Mischa}", q"{Muhammed}"
		, q"{Nando}", q"{Natan}", q"{Niko}", q"{Noa}", q"{Philipp}", q"{Quinn}", q"{Sami}", q"{Teo}", q"{Teodor}"
		, q"{Tristan}", q"{Yanis}", q"{Yannik}", q"{Yusuf}", q"{Abdullah}", q"{Alejandro}", q"{Aleksander}"
		, q"{Alexandros}", q"{Anik}", q"{Aren}", q"{Arion}", q"{Armin}", q"{Auron}", q"{Ayaz}", q"{Bela}"
		, q"{Bryan}", q"{Béla}", q"{Charles}", q"{Charlie}", q"{Danilo}", q"{Dorian}", q"{Eddie}", q"{Eduardo}"
		, q"{Eli}", q"{Elion}", q"{Elyas}", q"{Emilian}", q"{Evan}", q"{Francisco}", q"{Georg}", q"{Ignacy}"
		, q"{Ilai}", q"{Isa}", q"{Jamiro}", q"{Keano}", q"{Kerem}", q"{Kiano}", q"{Ledion}", q"{Len}", q"{Leonidas}"
		, q"{Leopold}", q"{Levio}", q"{Lorenz}", q"{Lorin}", q"{Luc}", q"{Mahir}", q"{Marius}", q"{Martim}"
		, q"{Matias}", q"{Mete}", q"{Mohammed}", q"{Muhammad}", q"{Musa}", q"{Nevin}", q"{Noe}", q"{Pablo}"
		, q"{Patrick}", q"{Pietro}", q"{Rayyan}", q"{Roy}", q"{Samir}", q"{Samuele}", q"{Santino}", q"{Siro}"
		, q"{Tomás}", q"{Vuk}", q"{Yago}", q"{Younes}", q"{Ahmed}", q"{Aleksa}", q"{Alfred}", q"{Amin}", q"{Andrea}"
		, q"{Anthony}", q"{Armando}", q"{Arno}", q"{Arun}", q"{Atlas}", q"{Axel}", q"{Ayan}", q"{Björn}"
		, q"{Bogdan}", q"{Bruno}", q"{Christopher}", q"{Clemens}", q"{Cédric}", q"{Daris}", q"{Darius}"
		, q"{Deniz}", q"{Dino}", q"{Enio}", q"{Enyo}", q"{Eron}", q"{Esra}", q"{Ferdinand}", q"{Flavio}", q"{Flynn}"
		, q"{Francis}", q"{Frederick}", q"{Gioele}", q"{Gion}", q"{Giulio}", q"{Giuseppe}", q"{Ilian}"
		, q"{Ilja}", q"{Imran}", q"{Isaac}", q"{Isaiah}", q"{Jamal}", q"{Jannik}", q"{Janosch}", q"{Jasin}"
		, q"{Joah}", q"{Jona}", q"{Jorin}", q"{Joris}", q"{Jovan}", q"{Jovin}", q"{Juan}", q"{Jules}", q"{Jusuf}"
		, q"{Keyan}", q"{Kimo}", q"{Kiyan}", q"{Kristijan}", q"{Kuzey}", q"{Kyan}", q"{Lasse}", q"{Lauri}"
		, q"{Leart}", q"{Lenni}", q"{Leonel}", q"{Leonis}", q"{Leroy}", q"{Liron}", q"{Liyan}", q"{Lui}", q"{Luke}"
		, q"{Lyan}", q"{Léo}", q"{Marcus}", q"{Marino}", q"{Matej}", q"{Matheo}", q"{Mathis}", q"{Matthias}"
		, q"{Maxime}", q"{Mikail}" ];

		return choice(strs, this.rnd);
	}

	override string personMalePrefix() {
		const string[] strs =
		[ q"{M}", q"{Dr}", q"{Prof}" ];

		return choice(strs, this.rnd);
	}

	override string personName() {
		const int rndInt = uniform(0, 10, this.rnd);

		if(rndInt >= 0 && rndInt < 2) {
			return personPrefix() ~ " " ~ personFirstName() ~ " " ~ personLastName();
		}
		if(rndInt >= 2 && rndInt < 10) {
			return personFirstName() ~ " " ~ personLastName();
		}

		return "";
	}

	override string personPrefix() {
		const string[] strs =
		[ q"{Dr}", q"{M}", q"{Mlle}", q"{Mme}", q"{Prof}" ];

		return choice(strs, this.rnd);
	}

	override string personSex() {
		const string[] strs =
		[ q"{Femme}", q"{Homme}" ];

		return choice(strs, this.rnd);
	}

	override string phoneNumberFormats() {
		const string[] strs =
		[ q"{0800 ### ###}", q"{0800 ## ## ##}", q"{0## ### ## ##}", q"{+41 ## ### ## ##}", q"{0900 ### ###}"
		, q"{076 ### ## ##}", q"{079 ### ## ##}", q"{078 ### ## ##}", q"{+41 76 ### ## ##}", q"{+41 78 ### ## ##}"
		, q"{+41 79 ### ## ##}", q"{0041 76 ### ## ##}", q"{0041 78 ### ## ##}", q"{0041 79 ### ## ##}" ];

		return numberBuild(choice(strs, this.rnd));
	}

}

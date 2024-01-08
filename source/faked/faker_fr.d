module faker.faker_fr;

import std.random;
import std.array;
import std.format;
import std.conv : to;
import std.string : toUpper;
import std.range : iota, take, repeat;
import std.algorithm : map, joiner;

import faker.customtypes;
import faker.base;

class Faker_fr : Faker {
@safe:
	this(int seed) {
		super(seed);
	}

	override string animalBear() {
		const string[] strs =
		[ q"{Ours à collier}", q"{Ours lippu}", q"{Ours à lunettes}", q"{Ours noir}", q"{Ours brun}"
		, q"{Ours blanc}", q"{Panda géant}" ];

		return choice(strs, this.rnd);
	}

	override string animalBird() {
		const string[] strs =
		[ q"{Accenteur à gorge noire}", q"{Accenteur alpin}", q"{Accenteur de Radde}", q"{Accenteur montanelle}"
		, q"{Accenteur mouchet}", q"{Agrobate roux}", q"{Aigle botté}", q"{Aigle criard}", q"{Aigle de Bonelli}"
		, q"{Aigle des steppes}", q"{Aigle ibérique}", q"{Aigle impérial}", q"{Aigle pomarin}"
		, q"{Aigle ravisseur}", q"{Aigle royal}", q"{Aigrette ardoisée}", q"{Aigrette bleue}"
		, q"{Aigrette des récifs}", q"{Aigrette à gorge blanche}", q"{Aigrette garzette}"
		, q"{Aigrette neigeuse}", q"{Aigrette tricolore}", q"{Albatros à nez jaune}", q"{Albatros à sourcils noirs}"
		, q"{Albatros de Tristan}", q"{Albatros de Tristan da Cunha}", q"{Albatros hurleur}"
		, q"{Alouette bilophe}", q"{Alouette calandre}", q"{Alouette calandrelle}", q"{Alouette de Clot-Bey}"
		, q"{Alouette de Swinhoe}", q"{Alouette des champs}", q"{Alouette gulgule}", q"{Alouette haussecol}"
		, q"{Alouette hausse-col}", q"{Alouette leucoptère}", q"{Alouette lulu}", q"{Alouette monticole}"
		, q"{Alouette nègre}", q"{Alouette pispolette}", q"{Amadine cou-coupé}", q"{Ammomane élégante}"
		, q"{Ammomane isabelline}", q"{Anhinga d'Afrique}", q"{Arlequin plongeur}", q"{Astrild à joues orange}"
		, q"{Astrild cendré}", q"{Astrild ondulé}", q"{Autour des palombes}", q"{Avocette d'Amérique}"
		, q"{Avocette élégante}", q"{Balbuzard pêcheur}", q"{Barge à queue noire}", q"{Barge hudsonienne}"
		, q"{Barge rousse}", q"{Bartramie des champs}", q"{Maubèche des champs}", q"{Bateleur des savanes}"
		, q"{Bec-croisé bifascié}", q"{Bec-croisé d'Ecosse}", q"{Bec-croisé d'Écosse}"
		, q"{Bec-croisé des sapins}", q"{Bec-croisé perroquet}", q"{Bec-en-ciseaux noir}"
		, q"{Bécasse d'Amérique}", q"{Bécasse des bois}", q"{Bécasseau à cou roux}", q"{Bécasseau à col roux}"
		, q"{Bécasseau à échasses}", q"{Bécasseau à longs doigts}", q"{Bécasseau à queue pointue}"
		, q"{Bécasseau cocorli}", q"{Bécasseau d'Alaska}", q"{Bécasseau de Baird}", q"{Bécasseau de Bonaparte}"
		, q"{Bécasseau à croupion blanc}", q"{Bécasseau de l'Anadyr}", q"{Bécasseau de Temminck}"
		, q"{Bécasseau falcinelle}", q"{Bécasseau maubèche}", q"{Bécasseau minuscule}"
		, q"{Bécasseau minute}", q"{Bécasseau rousset}", q"{Bécasseau roussâtre}", q"{Bécasseau sanderling}"
		, q"{Bécasseau semipalmé}", q"{Bécasseau spatule}", q"{Bécasseau tacheté}", q"{Bécasseau à poitrine cendrée}"
		, q"{Bécasseau variable}", q"{Bécasseau violet}", q"{Bécassin à bec court}", q"{Bécassin roux}"
		, q"{Bécassin à long bec}", q"{Bécassine à queue pointue}", q"{Bécassine de Swinhoe}"
		, q"{Bécassine de Wilson}", q"{Bécassine des marais}", q"{Bécassine double}", q"{Bécassine sourde}"
		, q"{Bengali rouge}", q"{Bergeronnette citrine}", q"{Bergeronnette de Béringie}", q"{Bergeronnette des ruisseaux}"
		, q"{Bergeronnette grise}", q"{Bergeronnette printanière}", q"{Bernache à cou roux}"
		, q"{Bernache cravant}", q"{Bernache de Hutchins}", q"{Bernache du Canada}", q"{Bernache nonnette}"
		, q"{Bihoreau gris}", q"{Bihoreau violacé}", q"{Blongios de Sturm}", q"{Blongios mandchou}"
		, q"{Blongios de Schrenck}", q"{Blongios nain}", q"{Bondrée apivore}", q"{Bondrée orientale}"
		, q"{Bouscarle de Cetti}", q"{Bouvreuil des Açores}", q"{Bouvreuil pivoine}", q"{Bruant à calotte blanche}"
		, q"{Bruant à cou gris}", q"{Bruant à couronne blanche}", q"{Bruant à gorge blanche}"
		, q"{Bruant à joues marron}", q"{Bruant à oreillons}", q"{Bruant à sourcils jaunes}"
		, q"{Bruant à tête rousse}", q"{Bruant ardoisé}", q"{Bruant auréole}", q"{Bruant cendré}"
		, q"{Bruant cendrillard}", q"{Bruant chanteur}", q"{Bruant de Lincoln}", q"{Bruant de Pallas}"
		, q"{Bruant des neiges}", q"{Plectrophane des neiges}", q"{Bruant des prés}", q"{Bruant des roseaux}"
		, q"{Bruant du Sahara}", q"{Bruant fauve}", q"{Bruant fou}", q"{Bruant fuligineux}", q"{Bruant hudsonien}"
		, q"{Bruant jaune}", q"{Bruant lapon}", q"{Plectrophane lapon}", q"{Bruant masqué}", q"{Bruant mélanocéphale}"
		, q"{Bruant nain}", q"{Bruant ortolan}", q"{Bruant proyer}", q"{Bruant roux}", q"{Bruant rustique}"
		, q"{Bruant striolé}", q"{Bruant zizi}", q"{Bulbul à oreillons blancs}", q"{Bulbul des jardins}"
		, q"{Bulbul orphée}", q"{Busard cendré}", q"{Busard d'Amérique}", q"{Busard des marais}"
		, q"{Busard des roseaux}", q"{Busard pâle}", q"{Busard Saint-Martin}", q"{Buse de Chine}"
		, q"{Buse de Swainson}", q"{Buse féroce}", q"{Buse pattue}", q"{Buse variable}", q"{Butor d'Amérique}"
		, q"{Butor étoilé}", q"{Caille des blés}", q"{Caille du Japon}", q"{Canard à faucilles}"
		, q"{Canard à front blanc}", q"{Canard d'Amérique}", q"{Canard carolin}", q"{Canard branchu}"
		, q"{Canard chipeau}", q"{Canard colvert}", q"{Canard du Cap}", q"{Canard mandarin}", q"{Canard musqué}"
		, q"{Canard noir}", q"{Canard pilet}", q"{Canard siffleur}", q"{Canard souchet}", q"{Capucin à dos marron}"
		, q"{Capucin à tête noire}", q"{Capucin bec-d'argent}", q"{Capucin bec-de-plomb}"
		, q"{Capucin damier}", q"{Cardinal à poitrine rose}", q"{Carouge à épaulettes}"
		, q"{Carouge à tête jaune}", q"{Cassenoix moucheté}", q"{Chardonneret élégant}"
		, q"{Chevalier à pattes jaunes}", q"{Petit Chevalier}", q"{Chevalier aboyeur}", q"{Chevalier arlequin}"
		, q"{Chevalier bargette}", q"{Chevalier criard}", q"{Grand Chevalier}", q"{Chevalier culblanc}"
		, q"{Chevalier cul-blanc}", q"{Chevalier de Sibérie}", q"{Chevalier gambette}", q"{Chevalier grivelé}"
		, q"{Chevalier guignette}", q"{Chevalier semipalmé}", q"{Chevalier solitaire}", q"{Chevalier stagnatile}"
		, q"{Chevalier sylvain}", q"{Chevêche d'Athéna}", q"{Chevêchette d'Europe}", q"{Chionis blanc}"
		, q"{Chocard à bec jaune}", q"{Choucador à oreillons bleus}", q"{Choucas de Daourie}"
		, q"{Choucas des tours}", q"{Chouette de l'Oural}", q"{Chouette de Tengmalm}", q"{Nyctale de Tengmalm}"
		, q"{Chouette épervière}", q"{Épervière boréale}", q"{Chouette hulotte}", q"{Chouette hulotte africaine}"
		, q"{Chouette hulotte (mauritanica)}", q"{Chouette lapone}", q"{Cigogne blanche}", q"{Cigogne noire}"
		, q"{Cincle plongeur}", q"{Circaète Jean-le-Blanc}", q"{Cisticole des joncs}", q"{Cochevis de Thékla}"
		, q"{Cochevis huppé}", q"{Colin de Californie}", q"{Colin de Virginie}", q"{Combattant varié}"
		, q"{Conure à tête rouge}", q"{Corbeau à queue courte}", q"{Corbeau brun}", q"{Corbeau familier}"
		, q"{Corbeau freux}", q"{Corbeau pie}", q"{Cormoran à aigrettes}", q"{Cormoran à poitrine blanche}"
		, q"{Cormoran africain}", q"{Cormoran huppé}", q"{Cormoran pygmée}", q"{Corneille mantelée}"
		, q"{Corneille noire}", q"{Coucou de Chine}", q"{Coucou de l'Himalaya}", q"{Coucou geai}"
		, q"{Coucou gris}", q"{Coucou oriental}", q"{Coulicou à bec jaune}", q"{Coulicou à bec noir}"
		, q"{Courlis à bec grêle}", q"{Courlis cendré}", q"{Courlis corlieu}", q"{Courlis esquimau}"
		, q"{Courlis hudsonien}", q"{Courlis nain}", q"{Courvite isabelle}", q"{Crabier chevelu}"
		, q"{Crabier chinois}", q"{Crabier de Gray}", q"{Crave à bec rouge}", q"{Crécerelle d'Amérique}"
		, q"{Cygne chanteur}", q"{Cygne de Bewick}", q"{Cygne siffleur}", q"{Cygne noir}", q"{Cygne tuberculé}"
		, q"{Damier du Cap}", q"{Dendrocygne fauve}", q"{Dendrocygne veuf}", q"{Diamant mandarin}"
		, q"{Dickcissel d'Amérique}", q"{Durbec des sapins}", q"{Échasse blanche}", q"{Effraie d'Amérique}"
		, q"{Effraie des clochers}", q"{Chouette effraie}", q"{Eider à duvet}", q"{Eider à lunettes}"
		, q"{Eider à tête grise}", q"{Eider de Steller}", q"{Élanion blanc}", q"{Engoulevent à collier roux}"
		, q"{Engoulevent d'Amérique}", q"{Engoulevent d'Europe}", q"{Engoulevent du désert}"
		, q"{Épervier à pieds courts}", q"{Épervier d'Europe}", q"{Érismature à tête blanche}"
		, q"{Érismature rousse}", q"{Étourneau de Daourie}", q"{Étourneau roselin}", q"{Étourneau sansonnet}"
		, q"{Étourneau unicolore}", q"{Euplecte vorabé}", q"{Faisan de Colchide}", q"{Faisan de Lady Amherst}"
		, q"{Faisan doré}", q"{Faisan vénéré}", q"{Faucon concolore}", q"{Faucon crécerelle}"
		, q"{Faucon crécerellette}", q"{Faucon d'Éléonore}", q"{Faucon de l'Amour}", q"{Faucon émerillon}"
		, q"{Faucon gerfaut}", q"{Faucon hobereau}", q"{Faucon kobez}", q"{Faucon lanier}", q"{Faucon pèlerin}"
		, q"{Faucon sacre}", q"{Fauvette à lunettes}", q"{Fauvette à tête noire}", q"{Fauvette babillarde}"
		, q"{Fauvette de Chypre}", q"{Fauvette de Hume}", q"{Fauvette de l'Atlas}", q"{Fauvette de Ménétries}"
		, q"{Fauvette de Moltoni}", q"{Fauvette de Rüppell}", q"{Fauvette des Baléares}"
		, q"{Fauvette des Balkans}", q"{Fauvette des jardins}", q"{Fauvette du désert}", q"{Fauvette épervière}"
		, q"{Fauvette grisette}", q"{Fauvette mélanocéphale}", q"{Fauvette minule}", q"{Fauvette naine}"
		, q"{Fauvette orphéane}", q"{Fauvette orphée}", q"{Fauvette passerinette}", q"{Fauvette pitchou}"
		, q"{Fauvette sarde}", q"{Flamant des Caraïbes}", q"{Flamant du Chili}", q"{Flamant nain}"
		, q"{Flamant rose}", q"{Fou à pieds rouges}", q"{Fou brun}", q"{Fou de Bassan}", q"{Fou du Cap}"
		, q"{Fou masqué}", q"{Foulque caronculée}", q"{Foulque à crête}", q"{Foulque d'Amérique}"
		, q"{Foulque macroule}", q"{Francolin d'Erckel}", q"{Francolin noir}", q"{Frégate aigle-de-mer}"
		, q"{Frégate superbe}", q"{Fuligule à bec cerclé}", q"{Fuligule à collier}", q"{Fuligule à dos blanc}"
		, q"{Fuligule à tête noire}", q"{Petit Fuligule}", q"{Fuligule à tête rouge}", q"{Fuligule milouin}"
		, q"{Fuligule milouinan}", q"{Fuligule morillon}", q"{Fuligule nyroca}", q"{Fulmar boréal}"
		, q"{Gallinule africaine}", q"{Gallinule d'Amérique}", q"{Gallinule poule-d'eau}"
		, q"{Ganga à ventre brun}", q"{Ganga cata}", q"{Ganga tacheté}", q"{Ganga unibande}"
		, q"{Garde-boeufs d'Asie}", q"{Gardeboeuf d'Asie}", q"{Garrot à oeil d'or}", q"{Garrot albéole}"
		, q"{Petit Garrot}", q"{Garrot d'Islande}", q"{Geai des chênes}", q"{Gélinotte des bois}"
		, q"{Glaréole à ailes noires}", q"{Glaréole à collier}", q"{Glaréole orientale}"
		, q"{Gobemouche à collier}", q"{Gobemouche à demi-collier}", q"{Gobemouche brun}"
		, q"{Gobemouche de l'Atlas}", q"{Gobemouche de la taïga}", q"{Gobemouche de Sibérie}"
		, q"{Gobemouche gris}", q"{Gobemouche mugimaki}", q"{Gobemouche nain}", q"{Gobemouche noir}"
		, q"{Goéland à ailes blanches}", q"{Goéland arctique}", q"{Goéland à ailes grises}"
		, q"{Goéland à bec cerclé}", q"{Goéland à iris blanc}", q"{Goéland à manteau ardoisé}"
		, q"{Goéland à queue noire}", q"{Goéland argenté}", q"{Goéland bourgmestre}", q"{Goéland brun}"
		, q"{Goéland cendré}", q"{Goéland d'Amérique}", q"{Goéland hudsonien}", q"{Goéland d'Arménie}"
		, q"{Goéland d'Audouin}", q"{Goéland de la Véga}", q"{Goéland dominicain}", q"{Goéland ichthyaète}"
		, q"{Goéland leucophée}", q"{Goéland marin}", q"{Goéland pontique}", q"{Goéland railleur}"
		, q"{Goglu des prés}", q"{Gorgebleue à miroir}", q"{Grand-duc ascalaphe}", q"{Grand-duc d'Europe}"
		, q"{Grand Corbeau}", q"{Grand Cormoran}", q"{Grand Gravelot}", q"{Pluvier grand-gravelot}"
		, q"{Grand Grèbe}", q"{Grand Héron}", q"{Grand Labbe}", q"{Grand Tétras}", q"{Grande Aigrette}"
		, q"{Gravelot à collier interrompu}", q"{Pluvier à collier interrompu}", q"{Gravelot de Leschenault}"
		, q"{Pluvier de Leschenault}", q"{Gravelot kildir}", q"{Pluvier kildir}", q"{Gravelot mongol}"
		, q"{Pluvier de Mongolie}", q"{Gravelot neigeux}", q"{Pluvier neigeux}", q"{Gravelot oriental}"
		, q"{Pluvier oriental}", q"{Gravelot pâtre}", q"{Pluvier pâtre}", q"{Gravelot semipalmé}"
		, q"{Pluvier semipalmé}", q"{Grèbe à bec bigarré}", q"{Grèbe à cou noir}", q"{Grèbe castagneux}"
		, q"{Grèbe esclavon}", q"{Grèbe huppé}", q"{Grèbe jougris}", q"{Grimpereau des bois}"
		, q"{Grimpereau des jardins}", q"{Grive à ailes rousses}", q"{Grive à collier}", q"{Grive à dos olive}"
		, q"{Grive à gorge noire}", q"{Grive à gorge rousse}", q"{Grive à joues grises}"
		, q"{Grive dama}", q"{Grive de Naumann}", q"{Grive de Sibérie}", q"{Grive des bois}"
		, q"{Grive dorée}", q"{Grive draine}", q"{Grive fauve}", q"{Grive litorne}", q"{Grive mauvis}"
		, q"{Grive musicienne}", q"{Grive obscure}", q"{Merle obscur}", q"{Grive solitaire}", q"{Grosbec casse-noyaux}"
		, q"{Gros-bec casse-noyaux}", q"{Grosbec errant}", q"{Gros-bec errant}", q"{Grue cendrée}"
		, q"{Grue de Sibérie}", q"{Grue demoiselle}", q"{Grue du Canada}", q"{Grue moine}", q"{Guêpier d'Europe}"
		, q"{Guêpier d'Orient}", q"{Guêpier de Perse}", q"{Guifette leucoptère}", q"{Guifette moustac}"
		, q"{Guifette noire}", q"{Guillemot à cou blanc}", q"{Guillemot à long bec}", q"{Guillemot à miroir}"
		, q"{Guillemot colombin}", q"{Guillemot de Brünnich}", q"{Guillemot de Troïl}", q"{Guillemot marmette}"
		, q"{Guiraca bleu}", q"{Gypaète barbu}", q"{Harelde boréale}", q"{Harelde kakawi}", q"{Harfang des neiges}"
		, q"{Harle bièvre}", q"{Grand Harle}", q"{Harle couronné}", q"{Harle huppé}", q"{Harle piette}"
		, q"{Héron cendré}", q"{Héron garde-boeufs}", q"{Héron intermédiaire}", q"{Héron mélanocéphale}"
		, q"{Héron pourpré}", q"{Héron strié}", q"{Héron vert}", q"{Hibou des marais}", q"{Hibou du Cap}"
		, q"{Hibou moyen-duc}", q"{Hirondelle à ailes hérissées}", q"{Hirondelle à front blanc}"
		, q"{Hirondelle bicolore}", q"{Hirondelle de Bonaparte}", q"{Hirondelle de fenêtre}"
		, q"{Hirondelle de Pallas}", q"{Hirondelle de rivage}", q"{Hirondelle de rochers}"
		, q"{Hirondelle du désert}", q"{Hirondelle isabelline}", q"{Hirondelle noire}", q"{Hirondelle pâle}"
		, q"{Hirondelle paludicole}", q"{Hirondelle rousseline}", q"{Hirondelle rustique}"
		, q"{Huîtrier d'Amérique}", q"{Huîtrier pie}", q"{Huppe d'Afrique}", q"{Huppe fasciée}"
		, q"{Hypolaïs bottée}", q"{Hypolaïs d'Upcher}", q"{Hypolaïs des oliviers}", q"{Hypolaïs ictérine}"
		, q"{Hypolaïs obscure}", q"{Hypolaïs pâle}", q"{Hypolaïs polyglotte}", q"{Hypolaïs rama}"
		, q"{Ibis chauve}", q"{Ibis falcinelle}", q"{Ibis sacré}", q"{Inséparable de Fischer}"
		, q"{Iranie à gorge blanche}", q"{Jaseur boréal}", q"{Jaseur d'Amérique}", q"{Junco ardoisé}"
		, q"{Labbe à longue queue}", q"{Labbe de McCormick}", q"{Labbe parasite}", q"{Labbe pomarin}"
		, q"{Lagopède alpin}", q"{Lagopède des saules}", q"{Léiothrix jaune}", q"{Linotte à bec jaune}"
		, q"{Linotte mélodieuse}", q"{Locustelle de Pallas}", q"{Locustelle fasciée}", q"{Locustelle fluviatile}"
		, q"{Locustelle lancéolée}", q"{Locustelle luscinioïde}", q"{Locustelle tachetée}"
		, q"{Loriot d'Europe}", q"{Lusciniole à moustaches}", q"{Macareux cornu}", q"{Macareux huppé}"
		, q"{Macareux moine}", q"{Macreuse à ailes blanches}", q"{Macreuse à bec jaune}"
		, q"{Macreuse à front blanc}", q"{Macreuse brune}", q"{Macreuse de Sibérie}", q"{Macreuse noire}"
		, q"{Marabout d'Afrique}", q"{Marouette de Baillon}", q"{Marouette de Caroline}", q"{Marouette ponctuée}"
		, q"{Marouette poussin}", q"{Marouette rayée}", q"{Râle rayé}", q"{Martin-chasseur de Smyrne}"
		, q"{Martin-pêcheur d'Amérique}", q"{Martin-pêcheur d'Europe}", q"{Martin-pêcheur pie}"
		, q"{Martin huppé}", q"{Martin triste}", q"{Martinet à ventre blanc}", q"{Martinet cafre}"
		, q"{Martinet de Sibérie}", q"{Martinet des maisons}", q"{Martinet épineux}", q"{Martinet noir}"
		, q"{Martinet pâle}", q"{Martinet ramoneur}", q"{Martinet unicolore}", q"{Mergule nain}"
		, q"{Merle à plastron}", q"{Merle d'Amérique}", q"{Merle noir}", q"{Merle pâle}", q"{Merle unicolore}"
		, q"{Mésange azurée}", q"{Mésange bleue}", q"{Mésange boréale}", q"{Mésange charbonnière}"
		, q"{Mésange huppée}", q"{Mésange lapone}", q"{Mésange lugubre}", q"{Mésange noire}"
		, q"{Mésange nonnette}", q"{Mésange nord-africaine}", q"{Mésangeai imitateur}", q"{Milan à queue fourchue}"
		, q"{Naucler à queue fourchue}", q"{Milan noir}", q"{Milan royal}", q"{Moineau blanc}"
		, q"{Moineau cisalpin}", q"{Moineau de la mer Morte}", q"{Moineau domestique}", q"{Moineau espagnol}"
		, q"{Moineau friquet}", q"{Moineau pâle}", q"{Moineau soulcie}", q"{Monticole bleu}"
		, q"{Monticole de roche}", q"{Moqueur chat}", q"{Moqueur polyglotte}", q"{Moqueur roux}"
		, q"{Moucherolle à côtés olive}", q"{Moucherolle à ventre jaune}", q"{Moucherolle des aulnes}"
		, q"{Moucherolle des saules}", q"{Moucherolle phébi}", q"{Moucherolle tchébec}", q"{Moucherolle vert}"
		, q"{Mouette à tête grise}", q"{Mouette atricille}", q"{Mouette blanche}", q"{Mouette de Bonaparte}"
		, q"{Mouette de Franklin}", q"{Mouette de Ross}", q"{Mouette rosée}", q"{Mouette de Sabine}"
		, q"{Mouette mélanocéphale}", q"{Mouette pygmée}", q"{Mouette relique}", q"{Mouette rieuse}"
		, q"{Mouette tridactyle}", q"{Nette rousse}", q"{Ninoxe hirsute}", q"{Niverolle alpine}"
		, q"{Noddi brun}", q"{Nymphée fuligineuse}", q"{Rougequeue fuligineux}", q"{Océanite à ventre noir}"
		, q"{Océanite culblanc}", q"{Océanite cul-blanc}", q"{Océanite de Castro}", q"{Océanite de Monteiro}"
		, q"{Océanite de Swinhoe}", q"{Océanite de Wilson}", q"{Océanite frégate}", q"{Océanite tempête}"
		, q"{Oedicnème criard}", q"{Oie à bec court}", q"{Oie à tête barrée}", q"{Oie cendrée}"
		, q"{Oie de la toundra}", q"{Oie de Ross}", q"{Oie des moissons}", q"{Oie des neiges}"
		, q"{Oie empereur}", q"{Oie naine}", q"{Oie rieuse}", q"{Oriole du Nord}", q"{Oriole de Baltimore}"
		, q"{Orite à longue queue}", q"{Mésange à longue queue}", q"{Ouette d'Égypte}"
		, q"{Outarde barbue}", q"{Grande Outarde}", q"{Outarde canepetière}", q"{Outarde de Macqueen}"
		, q"{Outarde houbara}", q"{Panure à moustaches}", q"{Paon bleu}", q"{Paradoxornis à gorge cendrée}"
		, q"{Paradoxornis de Webb}", q"{Paruline à ailes bleues}", q"{Paruline à ailes dorées}"
		, q"{Paruline à calotte noire}", q"{Paruline à capuchon}", q"{Paruline à collier}"
		, q"{Paruline à couronne rousse}", q"{Paruline à croupion jaune}", q"{Paruline à flancs marron}"
		, q"{Paruline à gorge grise}", q"{Paruline à gorge jaune}", q"{Paruline à gorge noire}"
		, q"{Paruline à gorge orangée}", q"{Paruline à joues grises}", q"{Paruline à poitrine baie}"
		, q"{Paruline à tête cendrée}", q"{Paruline azurée}", q"{Paruline bleue}", q"{Paruline couronnée}"
		, q"{Paruline d'Audubon}", q"{Paruline des pins}", q"{Paruline des prés}", q"{Paruline des ruisseaux}"
		, q"{Paruline du Canada}", q"{Paruline flamboyante}", q"{Paruline hochequeue}", q"{Paruline jaune}"
		, q"{Paruline des mangroves}", q"{Paruline masquée}", q"{Paruline noir et blanc}"
		, q"{Paruline obscure}", q"{Paruline orangée}", q"{Paruline polyglotte}", q"{Ictérie polyglotte}"
		, q"{Paruline rayée}", q"{Paruline tigrée}", q"{Paruline triste}", q"{Paruline verdâtre}"
		, q"{Passerin azuré}", q"{Passerin indigo}", q"{Pélican blanc}", q"{Pélican frisé}"
		, q"{Pélican gris}", q"{Perdrix bartavelle}", q"{Perdrix choukar}", q"{Perdrix de Daourie}"
		, q"{Perdrix gambra}", q"{Perdrix grise}", q"{Perdrix rouge}", q"{Perriche veuve}", q"{Conure veuve}"
		, q"{Perruche à collier}", q"{Perruche alexandre}", q"{Petit-duc scops}", q"{Petit Blongios}"
		, q"{Petit Gravelot}", q"{Pluvier petit-gravelot}", q"{Petit Puffin du Cap-Vert}", q"{Puffin de Boyd}"
		, q"{Petite Sterne}", q"{Pétrel de Bulwer}", q"{Pétrel de la Trinité}", q"{Pétrel de Trindade}"
		, q"{Pétrel de Madère}", q"{Pétrel de Schlegel}", q"{Pétrel des Bermudes}", q"{Pétrel des Kermadec}"
		, q"{Pétrel diablotin}", q"{Pétrel du désert}", q"{Pétrel des Desertas}", q"{Pétrel géant}"
		, q"{Pétrel gongon}", q"{Pétrel hérault}", q"{Pétrel du Herald}", q"{Pétrel noir}"
		, q"{Pétrel soyeux}", q"{Phaéton à bec jaune}", q"{Phaéton à bec rouge}", q"{Phalarope à bec étroit}"
		, q"{Phalarope à bec large}", q"{Phalarope de Wilson}", q"{Phragmite aquatique}", q"{Phragmite des joncs}"
		, q"{Pic à dos blanc}", q"{Pic cendré}", q"{Pic de Levaillant}", q"{Pic de Sharpe}"
		, q"{Pic épeiche}", q"{Pic épeichette}", q"{Pic flamboyant}", q"{Pic maculé}", q"{Pic mar}"
		, q"{Pic noir}", q"{Pic syriaque}", q"{Pic tridactyle}", q"{Pic vert}", q"{Pie-grièche à poitrine rose}"
		, q"{Pie-grièche à tête rousse}", q"{Pie-grièche boréale}", q"{Pie-grièche brune}"
		, q"{Pie-grièche du Turkestan}", q"{Pie-grièche écorcheur}", q"{Pie-grièche grise}"
		, q"{Pie-grièche isabelle}", q"{Pie-grièche masquée}", q"{Pie-grièche méridionale}"
		, q"{Pie-grièche schach}", q"{Pie bavarde}", q"{Pie du Maghreb}", q"{Pie ibérique}"
		, q"{Pie-bleue ibérique}", q"{Pigeon biset}", q"{Pigeon colombin}", q"{Pigeon de Bolle}"
		, q"{Pigeon des lauriers}", q"{Pigeon ramier}", q"{Pigeon trocaz}", q"{Pingouin torda}"
		, q"{Petit Pingouin}", q"{Pinson bleu}", q"{Pinson bleu de Grande Canarie}", q"{Pinson de Grande Canarie}"
		, q"{Pinson des arbres}", q"{Pinson du Nord}", q"{Pintade de Numidie}", q"{Pioui de l'Est}"
		, q"{Pipit à dos olive}", q"{Pipit à gorge rousse}", q"{Pipit à long bec}", q"{Pipit de Berthelot}"
		, q"{Pipit de Godlewski}", q"{Pipit de la Petchora}", q"{Pipit de Richard}", q"{Pipit des arbres}"
		, q"{Pipit farlousane}", q"{Pipit d'Amérique}", q"{Pipit farlouse}", q"{Pipit maritime}"
		, q"{Pipit rousseline}", q"{Pipit rousset}", q"{Pipit spioncelle}", q"{Plongeon à bec blanc}"
		, q"{Plongeon arctique}", q"{Plongeon catmarin}", q"{Plongeon du Pacifique}", q"{Plongeon imbrin}"
		, q"{Plongeon huard}", q"{Pluvian fluviatile}", q"{Pluvier argenté}", q"{Pluvier asiatique}"
		, q"{Pluvier bronzé}", q"{Pluvier doré}", q"{Pluvier fauve}", q"{Pluvier guignard}"
		, q"{Pouillot à deux barres}", q"{Pouillot à grands sourcils}", q"{Pouillot à gros bec}"
		, q"{Pouillot à pattes claires}", q"{Pouillot boréal}", q"{Pouillot brun}", q"{Pouillot de Bonelli}"
		, q"{Pouillot de Hume}", q"{Pouillot de Pallas}", q"{Pouillot de Schwarz}", q"{Pouillot de Temminck}"
		, q"{Pouillot des Canaries}", q"{Pouillot du Caucase}", q"{Pouillot du Kamtchatka}"
		, q"{Pouillot fitis}", q"{Pouillot griséole}", q"{Pouillot ibérique}", q"{Pouillot modeste}"
		, q"{Pouillot montagnard}", q"{Pouillot oriental}", q"{Pouillot siffleur}", q"{Pouillot véloce}"
		, q"{Pouillot verdâtre}", q"{Prinia gracile}", q"{Puffin à bec grêle}", q"{Puffin à menton blanc}"
		, q"{Puffin à pieds pâles}", q"{Puffin boréal}", q"{Puffin cendré}", q"{Puffin d'Audubon}"
		, q"{Puffin de Baillon}", q"{Puffin de Macaronésie}", q"{Puffin de Scopoli}", q"{Puffin des Anglais}"
		, q"{Puffin des Baléares}", q"{Puffin du Cap-Vert}", q"{Puffin fuligineux}", q"{Puffin majeur}"
		, q"{Puffin yelkouan}", q"{Pygargue à queue blanche}", q"{Pygargue à tête blanche}"
		, q"{Pygargue de Pallas}", q"{Quiscale bronzé}", q"{Quiscale rouilleux}", q"{Râle à bec jaune}"
		, q"{Marouette à bec jaune}", q"{Râle à crête}", q"{Râle d'eau}", q"{Râle de Virginie}"
		, q"{Râle des genêts}", q"{Râle des prés}", q"{Rémiz penduline}", q"{Rhynchée peinte}"
		, q"{Robin à flancs roux}", q"{Roitelet à couronne rubis}", q"{Roitelet de Madère}"
		, q"{Roitelet huppé}", q"{Roitelet triple-bandeau}", q"{Rollier d'Abyssinie}", q"{Rollier d'Europe}"
		, q"{Roselin à ailes roses}", q"{Roselin à tête grise}", q"{Roselin cramoisi}", q"{Roselin de Lichtenstein}"
		, q"{Roselin de Mongolie}", q"{Roselin familier}", q"{Roselin githagine}", q"{Roselin rose}"
		, q"{Roselin tacheté}", q"{Rossignol bleu}", q"{Rossignol calliope}", q"{Rossignol philomèle}"
		, q"{Rossignol progné}", q"{Rossignol siffleur}", q"{Rougegorge familier}", q"{Rougequeue à front blanc}"
		, q"{Rougequeue d'Eversmann}", q"{Rougequeue de Moussier}", q"{Rougequeue noir}", q"{Rousserolle à gros bec}"
		, q"{Rousserolle africaine}", q"{Rousserolle des buissons}", q"{Rousserolle effarvatte}"
		, q"{Rousserolle isabelle}", q"{Rousserolle stentor}", q"{Rousserolle turdoïde}", q"{Rousserolle verderolle}"
		, q"{Sarcelle à ailes bleues}", q"{Sarcelle à ailes vertes}", q"{Sarcelle cannelle}"
		, q"{Sarcelle d'été}", q"{Sarcelle d'hiver}", q"{Sarcelle élégante}", q"{Sarcelle marbrée}"
		, q"{Marmaronette marbrée}", q"{Serin à front rouge}", q"{Serin à front d'or}", q"{Serin cini}"
		, q"{Serin des Canaries}", q"{Serin du Cap}", q"{Sirli de Dupont}", q"{Alouette de Dupont}"
		, q"{Sirli du désert}", q"{Sittelle à poitrine rousse}", q"{Sittelle corse}", q"{Sittelle de Krüper}"
		, q"{Sittelle de Neumayer}", q"{Sittelle torchepot}", q"{Sizerin blanchâtre}", q"{Sizerin cabaret}"
		, q"{Sizerin flammé}", q"{Spatule blanche}", q"{Spatule d'Afrique}", q"{Starique cristatelle}"
		, q"{Starique perroquet}", q"{Sterne à dos pâle}", q"{Sterne royale (Afrique)}", q"{Sterne à joues blanches}"
		, q"{Sterne arctique}", q"{Sterne bridée}", q"{Sterne caspienne}", q"{Sterne caugek}"
		, q"{Sterne de Cabot}", q"{Sterne de Dougall}", q"{Sterne de Forster}", q"{Sterne de Saunders}"
		, q"{Sterne des Aléoutiennes}", q"{Sterne élégante}", q"{Sterne fuligineuse}", q"{Sterne hansel}"
		, q"{Sterne naine}", q"{Sterne pierregarin}", q"{Sterne royale}", q"{Sterne voyageuse}"
		, q"{Syrrhapte paradoxal}", q"{Tadorne casarca}", q"{Tadorne de Belon}", q"{Talève à tête grise}"
		, q"{Talève d'Afrique}", q"{Talève d'Allen}", q"{Talève sultane}", q"{Talève violacée}"
		, q"{Tangara écarlate}", q"{Piranga écarlate}", q"{Tangara vermillon}", q"{Piranga vermillon}"
		, q"{Tantale ibis}", q"{Tarier africain}", q"{Tarier d'Afrique}", q"{Tarier de Sibérie}"
		, q"{Tarier de Stejneger}", q"{Tarier des Canaries}", q"{Tarier des prés}", q"{Tarier pâtre}"
		, q"{Tarier pie}", q"{Tarin des aulnes}", q"{Tchagra à tête noire}", q"{Tétras lyre}"
		, q"{Tichodrome échelette}", q"{Tisserin à tête noire}", q"{Tisserin gendarme}"
		, q"{Tohi à flancs roux}", q"{Torcol fourmilier}", q"{Torrentaire à calotte blanche}"
		, q"{Rougequeue à calotte blanche}", q"{Tournepierre à collier}", q"{Tourterelle à queue carrée}"
		, q"{Tourterelle des bois}", q"{Tourterelle maillée}", q"{Tourterelle masquée}", q"{Tourtelette masquée}"
		, q"{Tourterelle orientale}", q"{Tourterelle rieuse}", q"{Tourterelle triste}", q"{Tourterelle turque}"
		, q"{Traquet à capuchon}", q"{Traquet à tête blanche}", q"{Traquet à tête grise}"
		, q"{Traquet de Chypre}", q"{Traquet de Finsch}", q"{Traquet de Seebohm}", q"{Traquet deuil}"
		, q"{Traquet du désert}", q"{Traquet isabelle}", q"{Traquet kurde}", q"{Traquet motteux}"
		, q"{Traquet noir et blanc}", q"{Traquet oreillard}", q"{Traquet pie}", q"{Traquet rieur}"
		, q"{Traquet variable}", q"{Troglodyte des marais}", q"{Troglodyte mignon}", q"{Turnix mugissant}"
		, q"{Turnix d'Andalousie}", q"{Tyran de l'Ouest}", q"{Tyran des savanes}", q"{Tyran tritri}"
		, q"{Vacher à tête brune}", q"{Vanneau à queue blanche}", q"{Vanneau à tête grise}"
		, q"{Vanneau éperonné}", q"{Vanneau à éperons}", q"{Vanneau huppé}", q"{Vanneau indien}"
		, q"{Vanneau sociable}", q"{Vautour africain}", q"{Vautour de Rüppell}", q"{Vautour fauve}"
		, q"{Vautour moine}", q"{Vautour oricou}", q"{Vautour percnoptère}", q"{Percnoptère d'Égypte}"
		, q"{Venturon corse}", q"{Venturon montagnard}", q"{Verdier d'Europe}", q"{Viréo à gorge jaune}"
		, q"{Viréo à oeil rouge}", q"{Viréo aux yeux rouges}", q"{Viréo à tête bleue}"
		, q"{Viréo aux yeux blancs}", q"{Viréo de Philadelphie}", q"{Viréo mélodieux}" ];

		return choice(strs, this.rnd);
	}

	override string animalCat() {
		const string[] strs =
		[ q"{Abyssin}", q"{American curl}", q"{American shorthair}", q"{American wirehair}", q"{Anatoli}"
		, q"{Angora turc}", q"{Asian}", q"{Balinais}", q"{Bengal}", q"{Bleu russe}", q"{Bobtail américain}"
		, q"{Bobtail des Kouriles}", q"{Bobtail japonais}", q"{Bombay}", q"{Brazilian shorthair}"
		, q"{British longhair}", q"{British shorthair}", q"{Burmese}", q"{Burmilla}", q"{Californian rex}"
		, q"{Californian spangled}", q"{Ceylan}", q"{Chartreux}", q"{Chantilly}", q"{Chausie}", q"{Colorpoint shorthair}"
		, q"{Cornish rex}", q"{Cymric}", q"{Devon rex}", q"{Donskoy}", q"{European shorthair}", q"{Exotic shorthair}"
		, q"{German rex}", q"{Havana brown}", q"{Highland fold}", q"{Himalayen}", q"{Khao Manee}"
		, q"{Korat}", q"{LaPerm}", q"{Maine coon}", q"{Mandarin}", q"{Manx}", q"{Mau arabe}", q"{Mau égyptien}"
		, q"{Minskin}", q"{Munchkin}", q"{Nebelung}", q"{Norvégien}", q"{Ocicat}", q"{Ojos azules}"
		, q"{Oriental shorthair}", q"{Persan}", q"{Peterbald}", q"{Pixie-bob}", q"{Ragamuffin}", q"{Ragdoll}"
		, q"{Sacré de Birmanie}", q"{Safari}", q"{Savannah}", q"{Scottish fold}", q"{Selkirk rex}"
		, q"{Serengeti}", q"{Seychellois}", q"{Siamois}", q"{Sibérien}", q"{Singapura}", q"{Skookum}"
		, q"{Snowshoe}", q"{Sokoké}", q"{Somali}", q"{Sphynx}", q"{Thaï}", q"{Tiffany}", q"{Tonkinois}"
		, q"{Toyger}", q"{Turc de Van}", q"{Ural rex}", q"{York chocolat}" ];

		return choice(strs, this.rnd);
	}

	override string animalCetacean() {
		const string[] strs =
		[ q"{Baiji}", q"{Baleine à bec de Blainville}", q"{Baleine à bec de Gervais}", q"{Baleine à bec de Gray}"
		, q"{Baleine à bec de Hubbs}", q"{Baleine à bec de Layard}", q"{Baleine à bec de Longman}"
		, q"{Baleine à bec de Perrin}", q"{Baleine à bec de Sowerby}", q"{Baleine à bec de Stejneger}"
		, q"{Baleine à bec de Travers}", q"{Baleine à bec de True}", q"{Baleine à bec pygmée}"
		, q"{Baleine à bec}", q"{Baleine à bosse}", q"{Baleine australe}", q"{Baleine bleue}"
		, q"{Baleine boréale}", q"{Baleine de Cuvier}", q"{Baleine de Minke}", q"{Baleine du Groenland}"
		, q"{Baleine franche australe}", q"{Baleine franche de Biscaye}", q"{Baleine franche du Pacifique Nord}"
		, q"{Baleine grise}", q"{Baleine noire australe}", q"{Baleine pilote}", q"{Baleine pygmée}"
		, q"{Béluga}", q"{Bérardie de Baird}", q"{Boto}", q"{Cachalot nain}", q"{Cachalot pygmée}"
		, q"{Cachalots}", q"{Costero}", q"{Dauphin à bec étroit}", q"{Dauphin à bosse du Pacifique}"
		, q"{Dauphin à flancs blancs}", q"{Dauphin à long bec}", q"{Dauphin à nez blanc}"
		, q"{Dauphin aptère austral}", q"{Dauphin blanc de Chine}", q"{Dauphin bleu et blanc}"
		, q"{Dauphin Burrunan}", q"{Dauphin clymène}", q"{Dauphin commun à bec court}", q"{Dauphin commun à long bec}"
		, q"{Dauphin de Chine}", q"{Dauphin de Commerson}", q"{Dauphin de Fraser}", q"{Dauphin de Gill}"
		, q"{Dauphin de Guyane}", q"{Dauphin de la Plata}", q"{Dauphin de Peale}", q"{Dauphin de Risso}"
		, q"{Dauphin du Cap}", q"{Dauphin du Gange}", q"{Dauphin du Nord}", q"{Dauphin noir}"
		, q"{Dauphin obscur}", q"{Dauphin sablier}", q"{Dauphin tacheté pantropical}", q"{Fausse orque}"
		, q"{Globicéphale noir}", q"{Globicéphale tropical}", q"{Globicéphale}", q"{Grand cachalot}"
		, q"{Grand dauphin}", q"{Hyperoodon austral}", q"{Hyperoodon boréal}", q"{Jubarte}", q"{Marsouin à lunettes}"
		, q"{Marsouin aptère}", q"{Marsouin blanc}", q"{Marsouin commun}", q"{Marsouin de Burmeister}"
		, q"{Marsouin de Cuvier}", q"{Marsouin de Lahille}", q"{Marsouin du Golfe de Californie}"
		, q"{Marsouin du Pacifique}", q"{Marsouins}", q"{Mégaptère}", q"{Mésoplodon japonais}"
		, q"{Narval}", q"{Orque pygmée}", q"{Orque}", q"{Petit rorqual de l’Antarctique}", q"{Petit rorqual}"
		, q"{Rorqual à bosse}", q"{Rorqual bleu}", q"{Rorqual boréal}", q"{Rorqual commun}"
		, q"{Rorqual de Bryde}", q"{Rorqual de Rudolphi}", q"{Rorqual tropical}", q"{Rorquals}"
		, q"{Sotalie}", q"{Sousouc}", q"{Tasmacète de Shepherd}", q"{Tucuxi}", q"{Whalphin}", q"{Baleine à bec d'Andrews}"
		, q"{Baleine à bec d'Hector}", q"{Baleine franche de l'Atlantique Nord}", q"{Baleine noire de l'Atlantique Nord}"
		, q"{Bérardie d'Arnoux}", q"{Dauphin à aileron retroussé d'Australie}", q"{Dauphin à bosse de l'Atlantique}"
		, q"{Dauphin à bosse de l'Indo-Pacifique}", q"{Dauphin à bosse de l'océan Indien}"
		, q"{Dauphin commun d'Arabie}", q"{Dauphin d'Électre}", q"{Dauphin d'Hector}", q"{Dauphin de l'Amazone}"
		, q"{Dauphin de l'Indus}", q"{Dauphin de l'Irrawaddy}", q"{Dauphin rose de l'Amazone}"
		, q"{Dauphin tacheté de l'Atlantique}", q"{Dauphins d'eau douce}", q"{Grand dauphin de l'océan Indien}"
		, q"{Marsouin de l'Inde}", q"{Rorqual d'Omura}" ];

		return choice(strs, this.rnd);
	}

	override string animalCow() {
		const string[] strs =
		[ q"{Abondance}", q"{Armoricaine}", q"{Aubrac}", q"{Aure-et-Saint-Girons}", q"{Bazadaise}"
		, q"{Béarnaise}", q"{Bétizu}", q"{Bleue du Nord}", q"{Bordelaise (Nouvelle)}", q"{Braunvieh}"
		, q"{Brava}", q"{Bretonne pie noir}", q"{Brune}", q"{Camargue}", q"{Charolaise}", q"{Corse}"
		, q"{Coursière}", q"{Créole}", q"{Évolène}", q"{Ferrandaise}", q"{Froment du Léon}"
		, q"{Gasconne des Pyrénées}", q"{Hérens}", q"{INRA 95}", q"{Limousine}", q"{Lourdaise}"
		, q"{Maraîchine}", q"{Marine landaise}", q"{Mirandaise}", q"{Montbéliarde}", q"{Montbéliardes au pré.}"
		, q"{Nantaise}", q"{Normande}", q"{Parthenaise}", q"{Pie rouge des plaines}", q"{Rouge des prés}"
		, q"{Rouge flamande}", q"{Saïnata}", q"{Salers}", q"{Saosnoise}", q"{Sarlabot}", q"{Simmental française}"
		, q"{Simmental}", q"{Tarine}", q"{Villard-de-Lans}", q"{Vosgienne}", q"{Blonde d'Aquitaine}"
		, q"{Prim'Holstein}" ];

		return choice(strs, this.rnd);
	}

	override string animalCrocodilia() {
		const string[] strs =
		[ q"{Alligator d'Amérique}", q"{Alligator de Chine}", q"{Caïman à lunettes}", q"{Caïman à museau large}"
		, q"{Caïman de Schneider}", q"{Caïman nain}", q"{Caïman noir}", q"{Crocodile américain}"
		, q"{Crocodile d'Afrique de l'Ouest}", q"{Crocodile de Cuba}", q"{Crocodile de Johnston}"
		, q"{Crocodile de l'Orénoque}", q"{Crocodile de Morelet}", q"{Crocodile de Nouvelle-Guinée}"
		, q"{Crocodile des marais}", q"{Crocodile des Philippines}", q"{Crocodile du Nil}"
		, q"{Crocodile du Siam}", q"{Crocodile marin}", q"{Crocodile nain}", q"{Faux-gavial d'Afrique}"
		, q"{Faux-gavial de Malaisie}", q"{Gavial du Gange}", q"{Jacara}" ];

		return choice(strs, this.rnd);
	}

	override string animalDog() {
		const string[] strs =
		[ q"{Affenpinscher}", q"{Airedale Terrier}", q"{Akita Américain}", q"{Akita Inu}", q"{American Staffordshire Terrier}"
		, q"{Ancien chien d'arrêt danois}", q"{Anglo-Français de Petite Vènerie}", q"{Ariégeois}"
		, q"{Barbet}", q"{Barbu Tchèque}", q"{Barzoï}", q"{Basenji}", q"{Basset Artésien-Normand}"
		, q"{Basset Bleu de Gascogne}", q"{Basset de Westphalie}", q"{Basset des Alpes}", q"{Basset Fauve de Bretagne}"
		, q"{Basset Hound}", q"{Beagle}", q"{Beagle-Harrier}", q"{Bearded Collie}", q"{Beauceron}"
		, q"{Bedlington Terrier}", q"{Berger Allemand}", q"{Berger Américain Miniature}", q"{Berger Australien}"
		, q"{Berger Belge Groenendael}", q"{Berger Belge Laekenois}", q"{Berger Belge Malinois}"
		, q"{Berger Belge Tervueren}", q"{Berger Blanc Suisse}", q"{Berger Catalan}", q"{Berger d'Anatolie}"
		, q"{Berger d'Asie Centrale}", q"{Berger de Bergame}", q"{Berger de Bohême}", q"{Berger de Brie}"
		, q"{Berger de l'Atlas}", q"{Berger de Maremme et des Abruzzes}", q"{Berger de Picardie}"
		, q"{Berger de Russie}", q"{Berger de Savoie}", q"{Berger des Pyrénées}", q"{Berger des Shetland}"
		, q"{Berger du Caucase}", q"{Berger du massif du Karst}", q"{Berger finnois de Laponie}"
		, q"{Berger Hollandais}", q"{Berger Islandais}", q"{Berger Polonais de Plaine}", q"{Berger Polonais de Podhale}"
		, q"{Berger Portugais}", q"{Berger Yougoslave}", q"{Bichon à poil frisé}", q"{Bichon Bolonais}"
		, q"{Bichon Havanais}", q"{Bichon Maltais}", q"{Biewer Yorkshire}", q"{Billy}", q"{Black and Tan Coonhound}"
		, q"{Bobtail}", q"{Boerbull}", q"{Border Collie}", q"{Border Terrier}", q"{Boston Terrier}"
		, q"{Bouledogue Américain}", q"{Bouledogue Français}", q"{Bouvier Australien}", q"{Bouvier Bernois}"
		, q"{Bouvier d'Appenzell}", q"{Bouvier de l'Entlebuch}", q"{Bouvier des Ardennes}"
		, q"{Bouvier des Flandres}", q"{Boxer}", q"{Brachet Allemand}", q"{Brachet autrichien noir et feu}"
		, q"{Brachet de Styrie à poil dur}", q"{Brachet Polonais}", q"{Brachet Tyrolien}"
		, q"{Braque allemand à poil court}", q"{Braque allemand à poil dur}", q"{Braque d'Auvergne}"
		, q"{Braque de Burgos}", q"{Braque de l'Ariège}", q"{Braque de Weimar}", q"{Braque du Bourbonnais}"
		, q"{Braque Français}", q"{Braque Hongrois à poil court}", q"{Braque hongrois à poil dur}"
		, q"{Braque Italien}", q"{Braque Saint-Germain}", q"{Braque Slovaque à poil dur}"
		, q"{Briquet Griffon Vendéen}", q"{Broholmer}", q"{Buhund Norvégien}", q"{Bull Terrier}"
		, q"{Bulldog Anglais}", q"{Bulldog Continental}", q"{Bullmastiff}", q"{Cairn Terrier}"
		, q"{Cane Corso}", q"{Caniche}", q"{Cao de Castro Laboreiro}", q"{Carlin}", q"{Cavalier King Charles Spaniel}"
		, q"{Cavapoo}", q"{Chesapeake Bay Retriever}", q"{Chien chinois à crête}", q"{Chien courant d'Istrie à poil dur}"
		, q"{Chien courant d'Istrie à poil ras}", q"{Chien courant de Bosnie}", q"{Chien courant de Halden}"
		, q"{Chien courant de Hamilton}", q"{Chien courant de Hygen}", q"{Chien courant de Posavatz}"
		, q"{Chien courant de Schiller}", q"{Chien courant de Transylvanie}", q"{Chien courant du Småland}"
		, q"{Chien courant espagnol}", q"{Chien courant Finnois}", q"{Chien courant grec}"
		, q"{Chien courant italien}", q"{Chien courant norvégien}", q"{Chien courant serbe}"
		, q"{Chien courant slovaque}", q"{Chien courant suisse}", q"{Chien courant yougoslave de montagne}"
		, q"{Chien courant yougoslave tricolore}", q"{Chien d'arrêt frison}", q"{Chien d'arrêt portugais}"
		, q"{Chien d'eau américain}", q"{Chien d'eau espagnol}", q"{Chien d'eau frison}", q"{Chien d'eau irlandais}"
		, q"{Chien d'Eau Portugais}", q"{Chien d'eau romagnol}", q"{Chien d'ours de Carélie}"
		, q"{Chien d'Oysel}", q"{Chien de berger de Croatie}", q"{Chien de berger de Majorque}"
		, q"{Chien de Berger Roumain de Mioritza}", q"{Chien de Berger Roumain des Carpathes}"
		, q"{Chien de Canaan}", q"{Chien de montagne des Pyrénées}", q"{Chien de montagne portugais}"
		, q"{Chien de Saint Hubert}", q"{Chien du Groenland}", q"{Chien du pharaon}", q"{Chien d’arrêt allemand à poil long}"
		, q"{Chien d’Artois}", q"{Chien d’élan norvégien gris}", q"{Chien d’Élan Norvégien Noir}"
		, q"{Chien d’élan suédois}", q"{Chien Finnois de Laponie}", q"{Chien Jindo Coréen}"
		, q"{Chien Loup de Saarloos}", q"{Chien Loup Tchécoslovaque}", q"{Chien norvégien de Macareux}"
		, q"{Chien nu du Pérou}", q"{Chien nu mexicain}", q"{Chien rouge de Bavière}", q"{Chien rouge de Hanovre}"
		, q"{Chien suédois de Laponie}", q"{Chien thaïlandais}", q"{Chihuahua}", q"{Chow Chow}"
		, q"{Cirneco de l’Etna}", q"{Clumber-Spaniel}", q"{Cocker Américain}", q"{Cocker Anglais}"
		, q"{Colley à poil court}", q"{Colley à poil long}", q"{Coton de Tuléar}", q"{Curly Coated Retriever}"
		, q"{Cursinu}", q"{Dalmatien}", q"{Dandie-Dinmont-Terrier}", q"{Dobermann}", q"{Dogo Canario}"
		, q"{Dogue Allemand}", q"{Dogue Argentin}", q"{Dogue de Bordeaux}", q"{Dogue de Majorque}"
		, q"{Dogue du Tibet}", q"{Drever}", q"{English Toy Terrier}", q"{Epagneul à perdrix de Drente}"
		, q"{Epagneul Bleu de Picardie}", q"{Epagneul Breton}", q"{Epagneul de Pont-Audemer}"
		, q"{Epagneul Français}", q"{Epagneul Japonais}", q"{Epagneul Nain Continental}", q"{Epagneul Picard}"
		, q"{Epagneul Tibétain}", q"{Eurasier}", q"{Field-Spaniel}", q"{Fila Brasileiro}", q"{Fila de Sao Miguel}"
		, q"{Flat-Coated Retriever}", q"{Fox Terrier}", q"{Foxhound américain}", q"{Foxhound anglais}"
		, q"{Golden Retriever}", q"{Goldendoodle}", q"{Grand Anglo-Français blanc et noir}"
		, q"{Grand Anglo-Français blanc et orange}", q"{Grand Anglo-Français tricolore}"
		, q"{Grand Basset Griffon vendéen}", q"{Grand Bouvier Suisse}", q"{Grand Épagneul de Münster}"
		, q"{Grand Gascon saintongeois}", q"{Grand Griffon Vendéen}", q"{Greyhound}", q"{Griffon Belge}"
		, q"{Griffon Bleu de Gascogne}", q"{Griffon Bruxellois}", q"{Griffon fauve de Bretagne}"
		, q"{Griffon Korthals}", q"{Griffon Nivernais}", q"{Harrier}", q"{Hokkaïdo Ken}", q"{Hovawart}"
		, q"{Husky Sibérien}", q"{Irish Glen of Imaal Terrier}", q"{Irish Terrier}", q"{Irish Terrier à poil doux}"
		, q"{Jack Russell Terrier}", q"{Jagdterrier}", q"{Kai}", q"{Kelpie}", q"{Kerry Blue Terrier}"
		, q"{King Charles Spaniel}", q"{Kishu}", q"{Komondor}", q"{Kromfohrländer}", q"{Kuvasz Hongrois}"
		, q"{Labradoodle}", q"{Labrador Retriever}", q"{Laïka de Sibérie occidentale}", q"{Laïka de Sibérie orientale}"
		, q"{Laïka Russo-Européen}", q"{Lakeland Terrier}", q"{Landseer}", q"{Leonberger}", q"{Lévrier Afghan}"
		, q"{Lévrier Azawakh}", q"{Lévrier Écossais}", q"{Lévrier Espagnol}", q"{Lévrier Hongrois}"
		, q"{Lévrier Irlandais}", q"{Lévrier Polonais}", q"{Lhassa Apso}", q"{Malamute de l'Alaska}"
		, q"{Mastiff}", q"{Mâtin de l'Alentejo}", q"{Mâtin de Naples}", q"{Mâtin des Pyrénées}"
		, q"{Mâtin Espagnol}", q"{Mudi}", q"{Norfolk Terrier}", q"{Norwich Terrier}", q"{Otterhound}"
		, q"{Parson Russell Terrier}", q"{Pékinois}", q"{Petit Basset Griffon vendéen}", q"{Petit Brabançon}"
		, q"{Petit Chien Courant Suisse}", q"{Petit chien hollandais de chasse au gibier d'eau}"
		, q"{Petit Chien Lion}", q"{Petit Epagneul de Münster}", q"{Petit Lévrier Italien}"
		, q"{Pinscher}", q"{Pinscher autrichien à poil court}", q"{Pinscher Nain}", q"{Pitbull}"
		, q"{Podenco Canario}", q"{Podenco Ibicenco}", q"{Podengo portugais}", q"{Pointer Anglais}"
		, q"{Poitevin}", q"{Pomsky}", q"{Porcelaine}", q"{Pudelpointer}", q"{Puli}", q"{Pumi}", q"{Ratonero Bodeguero Andaluz}"
		, q"{Retriever de la Nouvelle-Écosse}", q"{Rhodesian-Ridgeback}", q"{Rottweiler}"
		, q"{Saint-Bernard}", q"{Saluki}", q"{Samoyède}", q"{Schapendoes}", q"{Schipperke}", q"{Schnauzer}"
		, q"{Sealyham Terrier}", q"{Setter Anglais}", q"{Setter Gordon}", q"{Setter Irlandais Rouge}"
		, q"{Shar-Pei}", q"{Shiba Inu}", q"{Shih Tzu}", q"{Shikoku}", q"{Silky Terrier}", q"{Skye Terrier}"
		, q"{Sloughi}", q"{Smous des Pays-Bas}", q"{Spinone}", q"{Spitz Allemand}", q"{Spitz de Norrbotten}"
		, q"{Spitz des Wisigoths}", q"{Spitz Finlandais}", q"{Spitz Japonais}", q"{Springer Anglais}"
		, q"{Staffordshire Bull Terrier}", q"{Sussex-Spaniel}", q"{Tchouvatch Slovaque}", q"{Teckel}"
		, q"{Terre-Neuve}", q"{Terrier australien}", q"{Terrier brésilien}", q"{Terrier de Manchester}"
		, q"{Terrier Ecossais}", q"{Terrier japonais}", q"{Terrier Noir Russe}", q"{Terrier tchèque}"
		, q"{Terrier Tibétain}", q"{Tosa}", q"{Volpino Italien}", q"{Welsh Corgi Cardigan}", q"{Welsh Corgi Pembroke}"
		, q"{Welsh Springer Spaniel}", q"{Welsh Terrier}", q"{West Highland White Terrier}"
		, q"{Whippet}", q"{Yorkshire Terrier}" ];

		return choice(strs, this.rnd);
	}

	override string animalFish() {
		const string[] strs =
		[ q"{Able de Heckel}", q"{Ablette}", q"{Achigan de mer}", q"{Aiglefin}", q"{Aiguillat commun}"
		, q"{Aiguillat noir}", q"{Alose}", q"{Amour blanc}", q"{Anchois}", q"{Anguille}", q"{Apogon}"
		, q"{Apron du Rhône}", q"{Aspe}", q"{Baliste}", q"{Bar}", q"{Bar blanc}", q"{Barbeau}", q"{Bardot}"
		, q"{Barracuda}", q"{Baudroie}", q"{Baudroie abyssale de Johnson}", q"{Baudroie commune}"
		, q"{Baudroie d’Amérique}", q"{Baudroie des abysses}", q"{Beaux yeux}", q"{Billard}"
		, q"{Black-Bass}", q"{Blade}", q"{Blageon}", q"{Blanchet}", q"{Blennie}", q"{Bogue}", q"{Bonite}"
		, q"{Bouvière}", q"{Brème}", q"{Brochet}", q"{Brosme}", q"{Cabillaud}", q"{Capelan}", q"{Capret}"
		, q"{Carassin}", q"{Carassin doré}", q"{Cardine franche}", q"{Carpe}", q"{Carrelet}", q"{Castagnole}"
		, q"{Cernier}", q"{Chabot}", q"{Chapon}", q"{Chat}", q"{Chevesne}", q"{Claresse}", q"{Colin}", q"{Congre}"
		, q"{Corb}", q"{Corégone}", q"{Coryphène}", q"{Courbine}", q"{Crénilabre}", q"{Cyprinodonte}"
		, q"{Daubenet}", q"{Denti}", q"{Dorade}", q"{Doré jaune}", q"{Dormelle}", q"{Dragonnet}", q"{Églefin}"
		, q"{Elbot}", q"{Éperlan}", q"{Épinoche}", q"{Épinochette}", q"{Équille}", q"{Escolier}"
		, q"{Espadon}", q"{Esturgeon}", q"{Fanfre}", q"{Flétan}", q"{Gallinette}", q"{Gardon}", q"{Girelle}"
		, q"{Gobie}", q"{Gobio}", q"{Goret}", q"{Gorette}", q"{Goujon}", q"{Grand-gueule}", q"{Grande vive}"
		, q"{Grémille}", q"{Grenadier}", q"{Grenadier de roche}", q"{Grondin}", q"{Guppy}", q"{Hareng}"
		, q"{Hippocampe}", q"{Hotu}", q"{Huchon}", q"{Ibaïa}", q"{Ide mélanote}", q"{Julienne}", q"{Labre}"
		, q"{Lamproie}", q"{Lançon}", q"{Liche}", q"{Lieu appelé}", q"{Lieu jaune}", q"{Lieu noir}"
		, q"{Limande}", q"{Lingue}", q"{Loche}", q"{Lompe}", q"{Loquette d'Europe}", q"{Lorette}", q"{Lotte}"
		, q"{Loubine}", q"{Loup de mer}", q"{Mâchoiron}", q"{Maigre}", q"{Makaire}", q"{Mako}", q"{Malachigan}"
		, q"{Mandoule}", q"{Maquereau}", q"{Maraîche}", q"{Marbré}", q"{Marigane noire}", q"{Marlin}"
		, q"{Maskinongé}", q"{mehdia}", q"{Ménomini rond}", q"{Merlan}", q"{Merlu}", q"{Mérou}", q"{Merval}"
		, q"{Meunier}", q"{Mirandelle}", q"{Môle}", q"{Mora}", q"{Morue}", q"{Motelle}", q"{Muge}", q"{Mulet}"
		, q"{Murène}", q"{Napoléon}", q"{Oblade}", q"{Omble chevalier}", q"{Omble de fontaine1}"
		, q"{Ombre}", q"{Opah}", q"{Ouananiche}", q"{Pageot}", q"{Pagre}", q"{Panga}", q"{Pataclet}", q"{Perche}"
		, q"{Perche du Nil}", q"{Petite vive}", q"{Phrynorhombe}", q"{Piranha}", q"{Plie}", q"{Poisson clown}"
		, q"{Poisson lanterne}", q"{Poisson rouge}", q"{Poisson zèbre}", q"{Poisson-chat}", q"{Poisson-chien}"
		, q"{Poisson-coffre}", q"{Poisson-lune}", q"{Poisson-pilote}", q"{Raie}", q"{Rascasse}", q"{Rason}"
		, q"{Rémora commun}", q"{Requin}", q"{Requin à pointes noires}", q"{Requin blanc}", q"{Requin gris}"
		, q"{Requin marteau}", q"{Requin pèlerin}", q"{Requin-baleine}", q"{Requin-nourrice}"
		, q"{Requin-taureau}", q"{Requin-tigre}", q"{Rondin}", q"{Rotengle}", q"{Roucaou}", q"{Rouget}"
		, q"{Roussette}", q"{Rouvet}", q"{Saint-pierre}", q"{Sandre}", q"{Sar}", q"{Sardine}", q"{Sarran}"
		, q"{Saumon}", q"{Saupe}", q"{Sébaste}", q"{Sériole}", q"{Séverau}", q"{Sigan Corail}", q"{Silure}"
		, q"{Sole}", q"{Sprat}", q"{Tacaud}", q"{Tanche}", q"{Tanche-tautogue}", q"{Tanude}", q"{Targeur}"
		, q"{Tassergal}", q"{Tautogue noir}", q"{Tétraodon}", q"{Thazard}", q"{Thon}", q"{Thon albacore}"
		, q"{Thon blanc}", q"{Thon listao}", q"{Thon rouge}", q"{Tilapia du Nil}", q"{Truite}", q"{Truite arc-en-ciel}"
		, q"{Truite de mer}", q"{Truite fario}", q"{Turbot}", q"{Turbot de sable}", q"{Turbot de Terre-Neuve}"
		, q"{Uranoscope}", q"{Vairon}", q"{Vandoise}", q"{Vieille}", q"{Vivaneau}", q"{Vive}", q"{Vive araignée}"
		, q"{Vive rayée}" ];

		return choice(strs, this.rnd);
	}

	override string animalHorse() {
		const string[] strs =
		[ q"{Abaga}", q"{Abyssinien}", q"{Achetta}", q"{Adaev}", q"{Aegidienberger}", q"{Aénos}", q"{Akhal-Teke}"
		, q"{Alaca}", q"{Albanais}", q"{Alt-Württemberger}", q"{Altaï}", q"{American Walking Pony}"
		, q"{American warmblood}", q"{Anatolien}", q"{Andalou}", q"{Andin}", q"{Andravida}", q"{Anglo-arabe}"
		, q"{Anglo-Argentino}", q"{Anglo-kabarde}", q"{Appaloosa}", q"{Appaloosa britannique}"
		, q"{Appaloosa néerlandais}", q"{Appenninico}", q"{AraAppaloosa}", q"{Arabe}", q"{Arabe Shagya}"
		, q"{Arabe syrien}", q"{Arabe-Barbe}", q"{Arabe-lusitanien}", q"{Arabo-boulonnais}", q"{Arabo-frison}"
		, q"{Arabo-Haflinger}", q"{Aralusian}", q"{Aravani}", q"{Ardahan}", q"{Ardennais}", q"{Ardennais palatin}"
		, q"{Ardennais russe}", q"{Ardennais suédois}", q"{Arenberg-Nordkirchener}", q"{Aréwa}"
		, q"{Astrakhan}", q"{Asturcón}", q"{Autre que Pur-sang}", q"{Auxois}", q"{Axios}", q"{Aztèque}"
		, q"{Bachkir}", q"{Bagual}", q"{Baguio}", q"{Bagzan}", q"{Bahiano}", q"{Bahr el-Ghazal}", q"{Baicha}"
		, q"{Baïkal}", q"{Baise}", q"{Baixadeiro}", q"{Baixo-Amazona }", q"{Bajau}", q"{Baladi}", q"{Bale}"
		, q"{Bali}", q"{Balikun}", q"{Baloutche}", q"{Bandiagara}", q"{Bangladais}", q"{Barbe}", q"{Bardigiano}"
		, q"{Barock Pinto}", q"{Barraquand}", q"{Batak}", q"{Bauernpferd}", q"{Bélédougou}", q"{Berba}"
		, q"{Bergmann}", q"{Bhirum}", q"{Bhotia}", q"{Biłgoraj}", q"{Bima}", q"{Blazer}", q"{Bobo}", q"{Boer du Cap}"
		, q"{Boer sud-africain}", q"{Borana}", q"{Bornu}", q"{Bosnien}", q"{Boudienny}", q"{Boulonnais}"
		, q"{Bouriate}", q"{Breton}", q"{Britannique sang-chaud}", q"{Brumby}", q"{Bucovine}", q"{Bulgare oriental}"
		, q"{Buohai}", q"{Burguete}", q"{Cabadin}", q"{Calabrais}", q"{Camargue}", q"{Camarillo white}"
		, q"{Cambodgien}", q"{Campeiro}", q"{Campolina}", q"{Canadien}", q"{Canik}", q"{Capitanata}"
		, q"{Carneddau}", q"{Carolina Marsh Tacky}", q"{Caspien}", q"{Castillan}", q"{Castillonnais}"
		, q"{Chaidamu}", q"{Chakouyi}", q"{Chara}", q"{Cheju}", q"{Cherokee}", q"{Cheval corse}", q"{Cheval crème}"
		, q"{Cheval d'Auvergne}", q"{Cheval d'Azerbaïdjan}", q"{Cheval de ban'ei}", q"{Cheval de Catria}"
		, q"{Cheval de Heck}", q"{Cheval de Koro}", q"{Cheval de l'île de Cumberland}", q"{Cheval de l'île de sable}"
		, q"{Cheval de la mer noire}", q"{Cheval de la Sierra Tarahumara}", q"{Cheval de Megève}"
		, q"{Cheval de Miquelon}", q"{Cheval de Nangchen}", q"{Cheval de Pentro}", q"{Cheval de Posavina}"
		, q"{Cheval de Riwoché}", q"{Cheval de selle luxembourgeois}", q"{Cheval de Senne}"
		, q"{Cheval de sport belge}", q"{Cheval de sport brésilien}", q"{Cheval de sport bulgare}"
		, q"{Cheval de sport canadien}", q"{Cheval de sport croate}", q"{Cheval de sport espagnol}"
		, q"{Cheval de sport estonien}", q"{Cheval de sport frison}", q"{Cheval de sport hongrois}"
		, q"{Cheval de sport polonais}", q"{Cheval de sport roumain}", q"{Cheval de sport suisse}"
		, q"{Cheval des Marquises}", q"{Cheval des montagnes du Pays basque}", q"{Cheval des Nez-Percés}"
		, q"{Cheval des Outer Banks}", q"{Cheval doré de la Bohême}", q"{Cheval du Delta}"
		, q"{Cheval du delta du Danube}", q"{Cheval du Don}", q"{Cheval du Haut-Ienisseï}"
		, q"{Cheval du Namib}", q"{Cheval du plateau persan}", q"{Cheval du Ventasso}", q"{Cheval du Vercors de Barraquand}"
		, q"{cheval en Afghanistan}", q"{Cheval marocain de sport}", q"{Cheval miniature américain}"
		, q"{Cheval miniature français}", q"{Cheval mongol}", q"{Cheval portugais de sport}"
		, q"{Chilien}", q"{Chilote}", q"{Chincoteague}", q"{Choctaw}", q"{Chumbivilcas}", q"{Chumysh}"
		, q"{Cleveland Bay}", q"{Clydesdale}", q"{Cob Gypsy}", q"{Cob normand}", q"{Coffin Bay Brumby}"
		, q"{Colorado ranger}", q"{Comtois}", q"{Connemara}", q"{Corajoso}", q"{Costeño}", q"{Crétois}"
		, q"{Criollo}", q"{Criollo militar}", q"{Criollo paraguayen}", q"{Criollo uruguayen}"
		, q"{Criollo vénézuélien}", q"{Crioulo}", q"{Çukurova}", q"{Curly}", q"{Daghestan}", q"{Dales}"
		, q"{Danois sang-chaud}", q"{Danubien}", q"{Darashouri}", q"{Darkhad}", q"{Dartmoor}", q"{Datong}"
		, q"{Deccani}", q"{Deliboz}", q"{Demi-sang d'Inde}", q"{Djavakhéti}", q"{Døle}", q"{Dongola}"
		, q"{Dosanko}", q"{Dülmen}", q"{Dun hongrois}", q"{Edelbluthaflinger}", q"{Emben}", q"{Eriskay}"
		, q"{Erlunchun}", q"{Estonien}", q"{Exmoor}", q"{Falabella}", q"{Feliński}", q"{Fell}", q"{Féroé}"
		, q"{Finlandais}", q"{Finlandais sang-chaud}", q"{Fiorello}", q"{Fjord}", q"{Flamand}", q"{Fleuve}"
		, q"{Flores}", q"{Florida Cracker Horse}", q"{Foutanké}", q"{Franches-Montagnes}", q"{Frederiksborg}"
		, q"{Frison}", q"{Frison oriental}", q"{Furioso-North Star}", q"{Galiceno}", q"{Galicien}"
		, q"{Galshar}", q"{Ganja}", q"{Ganzi}", q"{Garrano}", q"{Garron}", q"{Garwolin}", q"{Gashghai}"
		, q"{Gayo}", q"{Gelderland}", q"{Gemlik}", q"{Georgian Grande}", q"{Gharkawi}", q"{Giara}", q"{Giarab}"
		, q"{Giawf}", q"{Gidran}", q"{Glasinacki}", q"{Gobir}", q"{Gocan}", q"{Goklan}", q"{Golden American Saddlebred}"
		, q"{Gondo}", q"{Gotland}", q"{Graditz}", q"{Grand Žemaitukas}", q"{Groningen}", q"{Guangxi}"
		, q"{Guanzhong}", q"{Guba}", q"{Guizhou}", q"{Guoxia}", q"{Habash}", q"{Hackney}", q"{Haflinger}"
		, q"{Haflo-arabe}", q"{Halla}", q"{Hanovrien}", q"{Haomeng}", q"{Heihe}", q"{Heilongjiang}"
		, q"{Henan}", q"{Henson}", q"{Hequ}", q"{Herati}", q"{Hessois}", q"{Highland}", q"{Hirzai}", q"{Hispano}"
		, q"{Hispano-arabe}", q"{Hispano-Bretón}", q"{Hınıs}", q"{Hmong}", q"{Hodh}", q"{Hoho}", q"{Hokkaïdo washu}"
		, q"{Holsteiner}", q"{Horro}", q"{Huçul}", q"{Hunter irlandais}", q"{Iakoute}", q"{Iomud}"
		, q"{Irish Cob}", q"{Irish Sport Horse}", q"{Islandais}", q"{israélien}", q"{Jabe}", q"{Jaca Navarra}"
		, q"{Jaf}", q"{Jata}", q"{Java}", q"{Jianchang}", q"{Jilin}", q"{Jinhong}", q"{Jinjiang}", q"{Jofi}"
		, q"{Jomud}", q"{Jumli}", q"{Jutland}", q"{Kabardin}", q"{Kabia}", q"{Kabouli}", q"{Kafa}", q"{Kaimanawa}"
		, q"{Kajlan}", q"{Kalmouk}", q"{Kandachime}", q"{Karabaïr}", q"{Karabakh}", q"{Karachai}", q"{Karakatchan}"
		, q"{Kathiawari}", q"{Kazakh}", q"{Kazakh chinois}", q"{Kentucky Mountain Saddle Horse}"
		, q"{Kerqin}", q"{Kerry bog}", q"{Kiger Mustang}", q"{Kinsky}", q"{Kirdi}", q"{Kirdimi}", q"{Kirghiz}"
		, q"{Kisber Felver}", q"{Kiso}", q"{Kladruber}", q"{Knabstrup}", q"{Kohband}", q"{Konik}", q"{Kordofani}"
		, q"{Koto-koli}", q"{Kouznetsk}", q"{Kuda Padi}", q"{Kuda-Pacu}", q"{Kumyk}", q"{Kundudo}", q"{Kuningan}"
		, q"{Kurde}", q"{Kushum}", q"{Kustanair}", q"{Kwangok}", q"{KWPN}", q"{La Silla}", q"{Lakka}", q"{Lämminverinen Ravuri}"
		, q"{Landais}", q"{Lao}", q"{Lavradeiro}", q"{Lebaniega}", q"{Lehmkuhlener}", q"{Lesbos}", q"{Letea}"
		, q"{Letton}", q"{Leutstettener}", q"{Lewitzer}", q"{Lezgian}", q"{Lichuan}", q"{Lidzbark}"
		, q"{Liebenthaler}", q"{Lijiang}", q"{Lipizzan}", q"{Lippitt Morgan}", q"{Livno}", q"{Llanero}"
		, q"{Logone}", q"{Lokaï}", q"{Lombok}", q"{Losino}", q"{Lovets}", q"{Lowicz}", q"{Lundy}", q"{Lusitanien}"
		, q"{Lynghest}", q"{M'Bayar}", q"{M'Par}", q"{Macassar}", q"{Makra}", q"{Malakan}", q"{Mallorquín}"
		, q"{Malopolski}", q"{Manga}", q"{Mangalarga marchador}", q"{Mangalarga paulista}", q"{Mangolina}"
		, q"{Marajoara}", q"{Marazi}", q"{Maremmano}", q"{Marismeña}", q"{Marwari}", q"{Mayray}", q"{Mbai}"
		, q"{Mecklembourg}", q"{Međimurje}", q"{Megezh}", q"{Megruli}", q"{Merak-Saktenpata}", q"{Mérens}"
		, q"{Messara}", q"{Messeri}", q"{Mezen}", q"{Midilli}", q"{Minahasa}", q"{Mini Shetland}", q"{Minianka}"
		, q"{Miniature néerlandais}", q"{Miniature sud-africain}", q"{Miniature Toy Horse}"
		, q"{Minorquin}", q"{Minoussinsk}", q"{Misaki}", q"{Missouri Fox Trotter}", q"{Miyako}", q"{Moldave}"
		, q"{Monchina}", q"{Mongol chinois}", q"{Montana Traveler}", q"{Morab}", q"{Morave}", q"{Morgan}"
		, q"{Morna}", q"{Morocco spotted horse}", q"{Morochuco}", q"{Mossi}", q"{Mountain Pleasure}"
		, q"{Moyle}", q"{Muniqi}", q"{Murakosi - Murakoz}", q"{Murgese}", q"{Murinsulaner}", q"{Mustang}"
		, q"{Mustang de Cerbat}", q"{Mustang des monts Pryor}", q"{Mustang espagnol}", q"{Myangad}"
		, q"{Napolitain}", q"{Narym}", q"{National Show Horse}", q"{New Forest}", q"{Ngua Noi}", q"{Nigérian}"
		, q"{Ningqiang}", q"{Nokota}", q"{Nonius}", q"{Nooitgedacht}", q"{Nordestin}", q"{Nordlandshest}"
		, q"{Noriker}", q"{Noriker silésien}", q"{Nouvel Altaï}", q"{Novoalexandrovsk}", q"{Novokirghize}"
		, q"{Ob}", q"{Oldenbourg}", q"{Oldenbourg danois}", q"{Ondorshil}", q"{Orlov-Rostopchin}"
		, q"{Østland}", q"{Padang}", q"{Pagan}", q"{Paint Horse}", q"{Pampa}", q"{Pampa marchador}"
		, q"{Panje}", q"{Pantaneiro}", q"{Paso cubain}", q"{Paso du Costa Rica}", q"{Paso Fino}"
		, q"{Paso fino colombien}", q"{Paso péruvien}", q"{Patibarcino}", q"{Pechora}", q"{Percheron}"
		, q"{Persano}", q"{Petiso argentino}", q"{Petit cheval de selle allemand}", q"{Pfalz-ardenner}"
		, q"{Pindos}", q"{Pinkafeld}", q"{Pintabian}", q"{Pinto cubain}", q"{Pinzgauer}", q"{Piquira}"
		, q"{Pleven}", q"{Poitevin mulassier}", q"{Polesskaya}", q"{Polo argentin}", q"{Poney Appaloosa européen}"
		, q"{Poney australien}", q"{Poney basque}", q"{Poney classique allemand}", q"{Poney de Birmanie}"
		, q"{Poney de Bornéo}", q"{Poney de Kagoshima}", q"{Poney de l'Esperia}", q"{Poney de Manipur}"
		, q"{Poney de Monterufoli}", q"{Poney de Pénée}", q"{Poney de polo}", q"{Poney de Râjshâhî}"
		, q"{Poney de selle allemand}", q"{Poney de selle belge}", q"{Poney de selle britannique}"
		, q"{Poney de selle finlandais}", q"{Poney de selle polonais}", q"{Poney de selle suédois}"
		, q"{Poney de Somalie}", q"{Poney de sport danois}", q"{Poney de sport nord-américain}"
		, q"{Poney de sport slovaque}", q"{Poney de sport tchèque}", q"{Poney de Terre-Neuve}"
		, q"{Poney des Açores}", q"{Poney des Amériques}", q"{Poney des Carpates}", q"{Poney des Mogods}"
		, q"{Poney du Darfour}", q"{Poney du Sri Lanka}", q"{Poney français de selle}", q"{Poney Hackney}"
		, q"{Poney indien du lac La Croix}", q"{Poney Noma}", q"{Poney roumain}", q"{Poney rustique canadien}"
		, q"{Poney sardinien}", q"{Poney tacheté britannique}", q"{Poney thaïlandais}", q"{Poney tibétain}"
		, q"{Poney westphalien}", q"{Pottok}", q"{Priangan}", q"{Priob}", q"{Pur-sang}", q"{Pur-sang arabe}"
		, q"{Pure race espagnole}", q"{Puruca}", q"{Pyongwon}", q"{Pyrénées catalanes}", q"{Qashqai}"
		, q"{Qatgani}", q"{Qazal}", q"{Quarab}", q"{Quarter Horse}", q"{Quarter pony}", q"{Racking horse}"
		, q"{Rahvan}", q"{Retuerta}", q"{Reziegi Taaishi}", q"{Rhénan sang-chaud}", q"{Rhodos}"
		, q"{Rocky Mountain Horse}", q"{Rodope}", q"{Romano della Maremma Laziale}", q"{Rottaler}"
		, q"{Sabyol}", q"{Saddlebred}", q"{Saklawi}", q"{Salernitano}", q"{Samand}", q"{Samolaco}", q"{Sandalwood}"
		, q"{Sanfratellano}", q"{Sang-chaud lourd de Saxe-Thuringe}", q"{Sanhe}", q"{Sara}", q"{Sarcidano}"
		, q"{sBs}", q"{Selale}", q"{Selle argentin}", q"{Selle australien}", q"{Selle autrichien}"
		, q"{Selle de Thuringe}", q"{Selle français}", q"{Selle italien}", q"{Selle russe}", q"{Selle slovaque}"
		, q"{Selle slovène}", q"{Selle sud-africain}", q"{Selle suédois}", q"{Selle tchèque}"
		, q"{Selle ukrainien}", q"{Selle uruguayen}", q"{Serrano}", q"{Shagya}", q"{Shan}", q"{Shandan}"
		, q"{Shetland}", q"{Shetland américain}", q"{Shirazi}", q"{Shire}", q"{Shirvan}", q"{Siaen}"
		, q"{Siciliano}", q"{Siglavy}", q"{Sikang}", q"{Silésien}", q"{Sindh Desi}", q"{Sini}", q"{Sistani}"
		, q"{Skogsruss}", q"{Skyros}", q"{Sokólski}", q"{Sorraïa}", q"{Soudanais}", q"{Spanish Jennet}"
		, q"{Spanish Norman}", q"{Spiti}", q"{Sportaloosa}", q"{Spotted saddle horse}", q"{Standardbred}"
		, q"{Stock Horse australien}", q"{Sud-africain sang-chaud}", q"{Suédois du nord}"
		, q"{Suffolk Punch}", q"{Sulphur}", q"{Sumba}", q"{Sumbar-Sandel-Arabe}", q"{Sumbawa}", q"{Sunicho}"
		, q"{Sztumski}", q"{Tadjik}", q"{Tagaytay}", q"{Taishuh}", q"{Tarāi}", q"{Tavda}", q"{Tawleed}"
		, q"{Tchéco-morave belge}", q"{Tchenaran}", q"{Tchèque sang-froid}", q"{Tchernomor}"
		, q"{Tennessee Walker}", q"{Tersk}", q"{Tes}", q"{Thessalien}", q"{Tieling}", q"{Tiger horse}"
		, q"{Timor}", q"{Tokara}", q"{Tolfetano}", q"{Tonga}", q"{Tooraq}", q"{Topuğu Kıllı}", q"{Tori}"
		, q"{Touchine}", q"{Touva}", q"{Trait allemand du Sud}", q"{Trait argentin}", q"{Trait australien}"
		, q"{Trait belge}", q"{Trait biélorusse}", q"{Trait bulgare}", q"{Trait crème américain}"
		, q"{Trait de Croatie}", q"{Trait de l'Altmark}", q"{Trait de la Forêt-Noire}", q"{Trait de Rhénanie}"
		, q"{Trait de Saxe-Thuringe}", q"{Trait du Nord}", q"{Trait du Schleswig}", q"{Trait estonien}"
		, q"{Trait hanovrien d'origine Schleswig}", q"{Trait hongrois}", q"{Trait irlandais}"
		, q"{Trait italien}", q"{Trait lituanien}", q"{Trait néerlandais}", q"{Trait pie américain}"
		, q"{Trait polonais}", q"{Trait roumain}", q"{Trait russe}", q"{Trait soviétique}", q"{Trait westphalien}"
		, q"{Trakehner}", q"{Trakya}", q"{Transbaïkal}", q"{Trocha Pura Colombiana}", q"{Trote y galope}"
		, q"{Trotteur allemand}", q"{Trotteur croate}", q"{Trotteur cubain}", q"{Trotteur danois}"
		, q"{Trotteur de Ljutomer}", q"{Trotteur Døle}", q"{Trotteur espagnol}", q"{Trotteur finlandais sang-chaud}"
		, q"{Trotteur français}", q"{Trotteur italien}", q"{Trotteur Latgale}", q"{Trotteur métis}"
		, q"{Trotteur Orlov}", q"{Trotteur roumain}", q"{Trotteur russe}", q"{Trotteur scandinave}"
		, q"{Trotteur yougoslave}", q"{Tuigpaard}", q"{Turkestani}", q"{Ujumqin}", q"{Unmol}", q"{Uzunyayla}"
		, q"{Viatka}", q"{Virginia highlander}", q"{Vlaamperd}", q"{Vladimir}", q"{Voronej}", q"{Warlander}"
		, q"{Waziri}", q"{Welara}", q"{Welsh}", q"{Welsh cob}", q"{Welsh de type cob}", q"{Welsh mountain}"
		, q"{Wenshan}", q"{Westphalien}", q"{Wielkopolski}", q"{Wilwal}", q"{Württemberger}", q"{Wushen}"
		, q"{Xiangfen}", q"{Xilinguole}", q"{Xinihe}", q"{Yabu}", q"{Yanqi}", q"{Yargha}", q"{Yili}", q"{Yiwu}"
		, q"{Yonaguni}", q"{Yongning}", q"{Yunnan}", q"{Yushu}", q"{Yuta}", q"{Zabaikal}", q"{Zakynthos}"
		, q"{Zanskari}", q"{Žemaitukas}", q"{Zhongdian}", q"{Zweibrücker}" ];

		return choice(strs, this.rnd);
	}

	override string animalInsect() {
		const string[] strs =
		[ q"{Abeille tueuse}", q"{Abeille découpeuse de la luzerne}", q"{Abeille européenne}"
		, q"{Abeille à miel}", q"{Æschne}", q"{Æschne bleue}", q"{Æschne des joncs}", q"{Agrion jouvencelle}"
		, q"{Agrion élégant}", q"{Ammophile des sables}", q"{Anax empereur}", q"{Anophèle}"
		, q"{Apollon}", q"{Argus bleu}", q"{Ascalaphe soufré}", q"{Atlas}", q"{Aurore}", q"{Azuré du serpolet}"
		, q"{Balanin des noisettes}", q"{Blastophage}", q"{Blatte}", q"{Blatte américaine}", q"{Blatte de Madagascar}"
		, q"{Blatte germanique}", q"{Blatte orientale}", q"{Bombyle}", q"{Bombyx du mûrier}"
		, q"{Bombyx du ricin}", q"{Bombyx éri}", q"{Bostryche typographe}", q"{Bourdon}", q"{Bourdon des champs}"
		, q"{Bourdon des pierres}", q"{Bourdon des prés}", q"{Bourdon terrestre}", q"{Bousier}"
		, q"{Calliphoridé}", q"{Caloptéryx vierge}", q"{Capricorne de l'épine de Jérusalem}"
		, q"{Capricorne des cactus}", q"{Capricorne des maisons}", q"{Capricorne du chêne}"
		, q"{Capricorne musqué}", q"{Carabe doré}", q"{Carabe violet}", q"{Cercope}", q"{Cétoine}"
		, q"{Cétoine dorée}", q"{Cétoine grise}", q"{Cétoine marginée}", q"{Cétoine verte}"
		, q"{Charançon du blé}", q"{Charançon rouge des palmiers}", q"{Chironome}", q"{Chouette}"
		, q"{Chrysope}", q"{Chrysope nacrée}", q"{Chrysope verte}", q"{Cicadelle blanche}", q"{Cicindèle}"
		, q"{Cigale}", q"{Cigale bossue}", q"{Cigale bossue du chêne}", q"{Cigale grise}", q"{Cigale plébéienne}"
		, q"{Citron}", q"{Citron de Provence}", q"{Clairon des abeilles}", q"{Clairon des ruches}"
		, q"{Coccinelle}", q"{Coccinelle asiatique}", q"{Coccinelle à deux points}", q"{Coccinelle à quatorze points}"
		, q"{Coccinelle à sept points}", q"{Coccinelle à vingt-deux points}", q"{Courtilière}"
		, q"{Criquet}", q"{Criquet migrateur}", q"{Déesse précieuse}", q"{Demi-deuil}", q"{Demi diable}"
		, q"{Grand diable}", q"{Petit diable}", q"{Doryphore de la pomme de terre}", q"{Drosophile}"
		, q"{Dynaste Hercule}", q"{Éphémère}", q"{Euglossine}", q"{Fausse teigne de la cire}"
		, q"{Flambé}", q"{Fourmi}", q"{Fourmi balle de fusil}", q"{Fourmi de feu}", q"{Fourmi ensanglantée}"
		, q"{Fourmilion}", q"{Frelon asiatique}", q"{Frelon européen}", q"{Frelon géant japonais}"
		, q"{Gazé}", q"{Gendarme}", q"{Gerris}", q"{Grand paon de nuit}", q"{Grand Planeur}", q"{Grande aeschne}"
		, q"{Grande saperde du peuplier}", q"{Grande sauterelle verte}", q"{Graphosome d'Italie}"
		, q"{Greta oto}", q"{Grillon}", q"{Grillon champêtre}", q"{Grillon domestique}", q"{Guêpe commune}"
		, q"{Guêpe germanique}", q"{Guêpe-papillon}", q"{Hanneton}", q"{Hercule}", q"{Hulotte}"
		, q"{Insecte}", q"{Lepture cordigère}", q"{Leste fiancé}", q"{Léthocère d'Amérique}"
		, q"{Libellule déprimée}", q"{Lucane cerf-volant}", q"{Lucilie bouchère}", q"{Lucilie bufonivore}"
		, q"{Luciole}", q"{Lyctus}", q"{Machaon}", q"{Magicienne dentelée}", q"{Mante religieuse}"
		, q"{Mante-orchidée}", q"{Mélipone}", q"{Monarque}", q"{Morpho cypris}", q"{Mouche domestique}"
		, q"{Mouche du vinaigre}", q"{Mouche tsé-tsé}", q"{Mouche verte commune}", q"{Moustique tigre}"
		, q"{Nèpe}", q"{Neuroptère}", q"{Osmie cornue}", q"{Papillon}", q"{Papillon du palmier}"
		, q"{Perle}", q"{Petit apollon}", q"{Petit capricorne}", q"{Phasme}", q"{Phasme bâton}"
		, q"{Phrygane}", q"{Phyllie}", q"{Poisson d'argent}", q"{Poliste}", q"{Poliste géant}", q"{Polyphème}"
		, q"{Pou}", q"{Pou du pubis}", q"{Prométhée}", q"{Puce}", q"{Puceron}", q"{Punaise}", q"{Punaise d'eau géante}"
		, q"{Punaise de la Morelle}", q"{Punaise de lit}", q"{Punaise ornée}", q"{Punaise-épine}"
		, q"{Rosalie alpine}", q"{Saturnie Cécropia}", q"{Saturnie du cerisier}", q"{Saturnie du poirier}"
		, q"{Sauterelle}", q"{Scarabée du désert}", q"{Scarabée rhinocéros européen}"
		, q"{Scarabée rhinocéros japonais}", q"{Scolie des jardins}", q"{Sorcière blanche}"
		, q"{Sphinx de Morgan}", q"{Sphinx de Wallace}", q"{Sphinx du tilleul}", q"{Taon}", q"{Ténébrion meunier}"
		, q"{Termite}", q"{Tipule}", q"{Titan}", q"{Titiwai}", q"{Turquoise}", q"{Ver de bancoule}"
		, q"{Ver luisant}", q"{Vrillette}", q"{Vrillette du pain}", q"{Weta}", q"{Weta des arbres}"
		, q"{Weta des cavernes}", q"{Weta géant}", q"{Xylocope violet}", q"{Zabre des céréales}"
		, q"{Zygène}" ];

		return choice(strs, this.rnd);
	}

	override string animalLion() {
		const string[] strs =
		[ q"{Lion de l'Atlas}", q"{Lion du Cap}", q"{Lion d'Afrique}", q"{Lion d'Asie}" ];

		return choice(strs, this.rnd);
	}

	override string animalRabbit() {
		const string[] strs =
		[ q"{Alaska}", q"{Angora français}", q"{Argenté de Champagne}", q"{Argenté de Saint Hubert}"
		, q"{Bélier anglais}", q"{Bélier français}", q"{Blanc de Hotot}", q"{Blanc de Vendée}"
		, q"{Bleu de Beveren}", q"{Bleu de Vienne}", q"{Brun marron de Lorraine}", q"{Californien}"
		, q"{Castorrex}", q"{Chamois de Thuringe}", q"{Fauve de Bourgogne}", q"{Feh de Marbourg}"
		, q"{Feu Feh}", q"{Feu havane}", q"{Feu noir}", q"{Géant blanc du Bouscat}", q"{Géant des Flandres}"
		, q"{Géant papillon français}", q"{Grand Chinchilla}", q"{Grand Russe}", q"{Gris bleu de Vienne}"
		, q"{Gris de Vienne}", q"{Gris du Bourbonnais}", q"{Havane français}", q"{Hermine de Lutterbach}"
		, q"{Hollandais}", q"{Japonais}", q"{lapin bélier}", q"{Lapin blanc danois}", q"{Lapin chèvre}"
		, q"{Lapin chinchilla}", q"{Lièvre belge}", q"{Lynx}", q"{Nain angora}", q"{Nain bélier Rex}"
		, q"{Nain de couleur}", q"{Nain renard}", q"{Nain Rex}", q"{Nain satin}", q"{Néo-Zélandais}"
		, q"{Noir de Vienne}", q"{Normand}", q"{Papillon anglais}", q"{Papillon rhénan}", q"{Perlfeh}"
		, q"{Petit bélier}", q"{Petit papillon}", q"{Polonais}", q"{Renard}", q"{Rex}", q"{Rhoen}"
		, q"{Russe}", q"{Sablé des Vosges}", q"{Satin}", q"{Separator}", q"{Zibeline}" ];

		return choice(strs, this.rnd);
	}

	override string animalSnake() {
		const string[] strs =
		[ q"{Alsophis ater}", q"{Anaconda à taches sombres}", q"{Anaconda bolivien}", q"{Anaconda curiyú}"
		, q"{Anaconda de Barbour}", q"{Anaconda de Bolivie}", q"{Anaconda de Deschauense}"
		, q"{Anaconda du Paraguay}", q"{Anaconda géant}", q"{Anaconda jaune}", q"{Anaconda vert}"
		, q"{Barba amarilla}", q"{Boa}", q"{Boa arboricole de Madagascar}", q"{Boa arc-en-ciel}"
		, q"{Boa arc-en-ciel cubain}", q"{Boa canin}", q"{Boa caoutchouc}", q"{Boa cubain}", q"{Boa d'Amazonie}"
		, q"{Boa de Cuba}", q"{Boa de Duméril}", q"{Boa de l'île Ronde}", q"{Boa de l'île Ronde de Dussumier}"
		, q"{Boa de l'île Ronde de Schlegel}", q"{Boa de la Jamaïque}", q"{Boa de Madagascar}"
		, q"{Boa de Maurice}", q"{Boa de Porto Rico}", q"{Boa des forêts}", q"{Boa des forêts de Madagascar}"
		, q"{Boa des perroquets}", q"{Boa des sables}", q"{Boa des sables d'Afrique}", q"{Boa des savanes de Duméril}"
		, q"{Boa devin}", q"{Boa émeraude}", q"{Boa fouisseur de l'île Maurice}", q"{Boa fouisseur de l'île Ronde}"
		, q"{Boa nain}", q"{Boa sobre}", q"{Boa terrestre de Madagascar}", q"{Bongare}", q"{Bongare annelé}"
		, q"{Bongare candide}", q"{Bongare fascié}", q"{Bongare indien}", q"{Bongare rayé}"
		, q"{Boomslang}", q"{Bungare}", q"{Cinglard}", q"{Cobra}", q"{Cobra à lunettes}", q"{Cobra à monocle}"
		, q"{Cobra chinois}", q"{Cobra cracheur}", q"{Cobra cracheur à cou noir}", q"{Cobra cracheur du Mozambique}"
		, q"{Cobra cracheur équatorial}", q"{Cobra cracheur indonésien}", q"{Cobra cracheur rouge}"
		, q"{Cobra d'eau}", q"{Cobra d'eau rayé}", q"{Cobra de mer}", q"{Cobra des Philipines du Nord}"
		, q"{Cobra du Cap}", q"{Cobra du Mozambique}", q"{Cobra égyptien}", q"{Cobra indien}"
		, q"{Cobra royal}", q"{Coronelle}", q"{Coronelle girondine}", q"{Coronelle lisse}", q"{Couleuvre}"
		, q"{Couleuvre à capuchon}", q"{Couleuvre à collier}", q"{Couleuvre à collier américaine}"
		, q"{Couleuvre à dos rouge}", q"{Couleuvre à échelons}", q"{Couleuvre à jarretière de Santa Cruz}"
		, q"{Couleuvre à nez plat}", q"{Couleuvre à nez retroussé}", q"{Couleuvre à quatre raies}"
		, q"{Couleuvre à ventre rouge}", q"{Couleuvre brune}", q"{Couleuvre d'eau}", q"{Couleuvre d'Esculape}"
		, q"{Couleuvre de Forsskal}", q"{Couleuvre de l'Amour}", q"{Couleuvre de l'Ouest}"
		, q"{Couleuvre de Montpellier}", q"{Couleuvre des Plaines}", q"{Couleuvre diadème}"
		, q"{Couleuvre du Nord-Ouest}", q"{Couleuvre fauve de l'Est}", q"{Couleuvre faux-corail}"
		, q"{Couleuvre léopard}", q"{Couleuvre mauresque}", q"{Couleuvre mince}", q"{Couleuvre obscure}"
		, q"{Couleuvre rayée}", q"{Couleuvre royale}", q"{Couleuvre tachetée}", q"{Couleuvre tessellée}"
		, q"{Couleuvre verte}", q"{Couleuvre verte et jaune}", q"{Couleuvre vipérine}", q"{Couleuvre-jarretière}"
		, q"{Couresse à ventre rouge}", q"{Couresse du Banc d'Anguilla}", q"{Crotale}", q"{Crotale à losange}"
		, q"{Crotale cascabelle}", q"{Crotale cent pas}", q"{Crotale de l'ouest}", q"{Crotale de Malaisie}"
		, q"{Crotale de Mojave}", q"{Crotale des bambous}", q"{Crotale des bois}", q"{Crotale des prairies}"
		, q"{Crotale des tropiques}", q"{Crotale diamantin}", q"{Crotale diamantin de l'Ouest}"
		, q"{Crotale du temple}", q"{Crotale du Texas}", q"{Crotale du Venezuela}", q"{Crotale muet}"
		, q"{Crotale tigré}", q"{Cuatronarices}", q"{Curiyú}", q"{Échide}", q"{Échide à ventre blanc}"
		, q"{Échide carénée}", q"{Échide des pyramides}", q"{Faux-corail de Sinaloa}", q"{Fer de lance}"
		, q"{Fer de lance centro-américain}", q"{Fer de lance commun}", q"{Fer de lance de la Martinique}"
		, q"{Grage grands carreaux}", q"{Grand anaconda}", q"{Grands carreaux}", q"{Habu}", q"{Habu d'Arisa}"
		, q"{Habu d'Okinawa}", q"{Habu de Kikuchi}", q"{Habu de Kume-jima}", q"{Habu de Sakishima}"
		, q"{Habu de Taïwan}", q"{Habu de Tokara}", q"{Habu Hime}", q"{Jaracacá amarilla}", q"{Jaracacá jaune}"
		, q"{Jararaca}", q"{Jararaca Pintada}", q"{Jararaca-cruzeira}", q"{Jararaca-ilhoa}", q"{Jararacuçu}"
		, q"{Katuali}", q"{Macagua}", q"{Maître de la brousse}", q"{Mamba de Jameson}", q"{Mamba noir}"
		, q"{Mamba vert}", q"{Mamba vert de Guinée}", q"{Mamba vert de Jameson}", q"{Mamba vert de l'Est}"
		, q"{Mamba vert de l'Ouest}", q"{Mapanare}", q"{Mocassin d'eau}", q"{Ñacaniná}", q"{Pélamide}"
		, q"{Plature}", q"{Python}", q"{Python à lèvres blanches}", q"{Python à tête noire}"
		, q"{Python à tête noire d'Australie}", q"{Python améthyste}", q"{Python arboricole vert}"
		, q"{Python arboricole vert australien}", q"{Python birman}", q"{Python boule}", q"{Python d'Amérique centrale}"
		, q"{Python d'Angola}", q"{Python de Boelen}", q"{Python de Children}", q"{Python de Macklot}"
		, q"{Python de Papouasie}", q"{Python de Ramsay}", q"{Python de Seba}", q"{Python de Stimson}"
		, q"{Python de Timor}", q"{Python fouisseur du Mexique}", q"{Python indien}", q"{Python malais}"
		, q"{Python molure}", q"{Python olive}", q"{Python pygmé}", q"{Python réticulé}", q"{Python royal}" ];

		return choice(strs, this.rnd);
	}

	override string commerceProductDescription() {
		const string[] strs =
		[ q"{Ces médailles et épingles sont en argent avec patine artistique. Elles ont été composées et frappées spécialement dans les ateliers de l'État pour la Société l'Hirondelle.}"
		, q"{Cadre raccord brasé de 53 ou 58 %. Jantes en acier émaillées. Pneus “Hiron” 700 x 35, garantis 12 mois. Pignon roue libre à emboitement hexagonal. Frein “Hirondelle” sur jante arrière. Garde-boue métal.}", q"{Montre-bracelet, dite “d'Aviateur”, métal inaltérable, diam. 435ym. Mouvement de précision chronographe, cadran avec grande aiguille trotteuse, permettant la lecture 1/25de seconde.}"
		, q"{Lanterne cuivre fort, finement nickelé, chute d'eau réglable, suspension antivibratrice, projecteur diamètre cm2, avec verre bombé. Durée d'éclairage 3 heures. Poids 395 grammes.}", q"{Lunettes étanches, monture caoutchouc moulé de 1re qual. glaces rondes de 55 mm de diam. en verre clair. Les lunettes protègent les yeux contre les poussières, fumées et gaz industriels et se portent av. nos masques 5862-5864. Pds 60 gr.}"
		, q"{Carrosserie en tôle d'acier laqué blanc montée sur roues pour faciliter le déplacement, couvercle laqué blanc, dessus et cuve en métal émaille marron, inaltérable a l'eau de lessive et a la chaleur,}", q"{Bicyclette à 1 vitesse, pneus 1/2 ballon. Cadre de 52cm. Jantes chromées. Roue Hore.  Moyeux indéréglables. 2 freins sur jantes. Guidon trials. Garde-boue et couvre chaine en acier émaillé. Porte-bagages. Gardejupes. Pédales à blocs caoutchouc. Émail couleur. Selle route cuir. Sacoche avec outillage. Pompe de cadre. Timbre avertisseur.}"
		, q"{Petite griffe à sarcler. 5 dents en acier, largeur 8 cm. poignée estampée, longueur 26 cm. poids 150 gr. Pour ameublir le sol, arracher les herbes entre les plantes ou fleurs cultivées en lignes rapprochées.}", q"{Moteur Villiers. Puissance au frein : 7 HP, 3 vitesses, lancement au pied, éclairage électrique, carrosserie 2 places, coffre à outils, outillage complet, capote et pare-brise.}"
		, q"{Maillot en coton fin à rayures se boutonnant devant pour enfants.}", q"{Rasoir de sûreté “Prima” tout en laiton massif nickelé chromé, manche moleté bien en main. Peigne et contre-peigne galbés tenant tout d'une pièce, fermeture à charnière, blocage instantané de la lame.}"
		, q"{Ce magnifique radio-phono comprend un excellent récepteur radioL'ensemble, dans une belle ébénisterie teintée palissandre, forme un très phonique 6 lampes et un tourne-disque de vitesses placé sous le couvercle. Beau meuble. Ce modèle, dont le montage particulièrement soigne assure un très bon rendement aussi bien en radio qu'en phono, est garanti mn an.}", q"{Récepteurs de télévision à haute définition 819 lignes, donnant une image très nette et d'un contraste agréable ne fatiguant pas la vue, le montage de la partie radio donne un son absolument remarquable.}"
		, q"{Tous nos appareils sont blindés pour que leur rayonnement ne trouble pas les récepteurs radiophoniques, et ils fonctionnent sur courant alternatif 50 riodes 110 et 220 volts. Ils sont garantis pendant 1 an; toutefois, suivant la règle, le tube cathodique est garanti pour 6 mois seulement.}" ];

		return choice(strs, this.rnd);
	}

	override string commerceProductNameAdjective() {
		const string[] strs =
		[ q"{Petit}", q"{Ergonomique}", q"{Électronique}", q"{Rustique}", q"{Intelligent}", q"{Magnifique}"
		, q"{Incroyable}", q"{Élégant}", q"{Fantastique}", q"{Pratique}", q"{Moderne}", q"{Recyclé}"
		, q"{Sur mesure}", q"{Génial}", q"{Générique}", q"{Artisanal}", q"{Fait main}", q"{Oriental}"
		, q"{Licencié}", q"{Luxueux}", q"{Raffiné}", q"{Sans marque}", q"{Savoureux}" ];

		return choice(strs, this.rnd);
	}

	override string commerceProductNameMaterial() {
		const string[] strs =
		[ q"{Acier}", q"{Bronze}", q"{Bois}", q"{Béton}", q"{Plastique}", q"{Coton}", q"{Granit}", q"{Caoutchouc}"
		, q"{Métal}", q"{Doux}", q"{Frais}", q"{Congelé}" ];

		return choice(strs, this.rnd);
	}

	override string commerceProductNameProduct() {
		const string[] strs =
		[ q"{Chaise}", q"{Voiture}", q"{Ordinateur}", q"{Clavier}", q"{Souris}", q"{Vélo}", q"{Boule}", q"{Gants}"
		, q"{Pantalon}", q"{Chemise}", q"{Table}", q"{Chaussures}", q"{Chapeau}", q"{Serviettes}", q"{Savon}"
		, q"{Thon}", q"{Poulet}", q"{Poisson}", q"{Fromage}", q"{Lard}", q"{Pizza}", q"{Salade}", q"{Saucisses}"
		, q"{Frites}" ];

		return choice(strs, this.rnd);
	}

	override string companyNamePattern() {
		final switch(uniform(0, 2, this.rnd)) {
			case 0: return personLastName() ~ " " ~ companySuffix();
			case 1: return personLastName() ~ " et " ~ personLastName();
		}
		return "";
	}

	override string companySuffix() {
		const string[] strs =
		[ q"{SARL}", q"{SA}", q"{EURL}", q"{SAS}", q"{SEM}", q"{SCOP}", q"{GIE}", q"{EI}" ];

		return choice(strs, this.rnd);
	}

	override string dateMonthWide() {
		const string[] strs =
		[ q"{Janvier}", q"{Février}", q"{Mars}", q"{Avril}", q"{Mai}", q"{Juin}", q"{Juillet}", q"{Août}"
		, q"{Septembre}", q"{Octobre}", q"{Novembre}", q"{Décembre}" ];

		return choice(strs, this.rnd);
	}

	override string dateMonthAbbr() {
		const string[] strs =
		[ q"{janv.}", q"{févr.}", q"{mars}", q"{avril}", q"{mai}", q"{juin}", q"{juil.}", q"{août}", q"{sept.}"
		, q"{oct.}", q"{nov.}", q"{déc.}" ];

		return choice(strs, this.rnd);
	}

	override string dateWeekdayWide() {
		const string[] strs =
		[ q"{Dimanche}", q"{Lundi}", q"{Mardi}", q"{Mercredi}", q"{Jeudi}", q"{Vendredi}", q"{Samedi}" ];

		return choice(strs, this.rnd);
	}

	override string dateWeekdayAbbr() {
		const string[] strs =
		[ q"{Dim}", q"{Lun}", q"{Mar}", q"{Mer}", q"{Jeu}", q"{Ven}", q"{Sam}" ];

		return choice(strs, this.rnd);
	}

	override string financeAccountType() {
		const string[] strs =
		[ q"{Chèque}", q"{Epargne}", q"{Marché monétaire}", q"{Investissement}", q"{Prêt immobilier}"
		, q"{Carte de crédit}", q"{Prêt personnel}" ];

		return choice(strs, this.rnd);
	}

	override Currency financeCurrency() {
		final switch(uniform(0, 86, this.rnd)) {
			case 0: return Currency(q"{Dollar}", q"{USD}", q"{$}");
			case 1: return Currency(q"{Dollar canadien}", q"{CAD}", q"{$}");
			case 2: return Currency(q"{Peso mexicain}", q"{MXN}", q"{$}");
			case 3: return Currency(q"{Florin}", q"{AWG}", q"{ƒ}");
			case 4: return Currency(q"{Baisse du dollar}", q"{BBD}", q"{$}");
			case 5: return Currency(q"{Dollar bermudien}", q"{BMD}", q"{$}");
			case 6: return Currency(q"{Dollar des Bahamas}", q"{BSD}", q"{$}");
			case 7: return Currency(q"{Peso dominicain}", q"{DOP}", q"{$}");
			case 8: return Currency(q"{Dollar jamaïcain}", q"{JMD}", q"{$}");
			case 9: return Currency(q"{Quetzal guatémaltèque}", q"{GTQ}", q"{Q}");
			case 10: return Currency(q"{Balboa panaméen}", q"{PAB}", q"{B/.}");
			case 11: return Currency(q"{Dollar des Caraïbes}", q"{XCD}", q"{$}");
			case 12: return Currency(q"{euro}", q"{EUR}", q"{€}");
			case 13: return Currency(q"{Livre sterling}", q"{GBP}", q"{£}");
			case 14: return Currency(q"{Course géorgienne}", q"{GEL}", q"{₾}");
			case 15: return Currency(q"{Lev bulgare}", q"{BGN}", q"{лв}");
			case 16: return Currency(q"{Franc suisse}", q"{CHF}", q"{CHF}");
			case 17: return Currency(q"{Couronne danoise}", q"{DKK}", q"{kr}");
			case 18: return Currency(q"{République tchèque Couronne}", q"{CZK}", q"{Kč}");
			case 19: return Currency(q"{Kuna croate}", q"{HRK}", q"{kn}");
			case 20: return Currency(q"{Forint hongrois}", q"{HUF}", q"{ft}");
			case 21: return Currency(q"{couronne norvégienne}", q"{NOK}", q"{kr}");
			case 22: return Currency(q"{Rouble russe}", q"{RUB}", q"{₽}");
			case 23: return Currency(q"{Zloty polonais}", q"{PLN}", q"{zł}");
			case 24: return Currency(q"{Leu roumain}", q"{RON}", q"{lei}");
			case 25: return Currency(q"{couronne suédoise}", q"{SEK}", q"{kr}");
			case 26: return Currency(q"{Hryvnia ukrainienne}", q"{UAH}", q"{₴}");
			case 27: return Currency(q"{lire turque}", q"{TRY}", q"{₺}");
			case 28: return Currency(q"{Argentine Peso}", q"{ARS}", q"{$}");
			case 29: return Currency(q"{Bolivien bolivien}", q"{BOB}", q"{Bs.}");
			case 30: return Currency(q"{Real brésilien}", q"{BRL}", q"{R$}");
			case 31: return Currency(q"{Peso chilien}", q"{CLP}", q"{$}");
			case 32: return Currency(q"{Peso colombien}", q"{COP}", q"{$}");
			case 33: return Currency(q"{Nouveau Sol Péruvien}", q"{PEN}", q"{S/.}");
			case 34: return Currency(q"{Guarani paraguayen}", q"{PYG}", q"{₲}");
			case 35: return Currency(q"{Peso uruguayen}", q"{UYU}", q"{$}");
			case 36: return Currency(q"{Bolivar vénézuélien}", q"{VES}", q"{Bs.}");
			case 37: return Currency(q"{Yen japonais}", q"{JPY}", q"{¥}");
			case 38: return Currency(q"{Bangladesh Taka}", q"{BDT}", q"{৳}");
			case 39: return Currency(q"{Le yuan chinois}", q"{CNY}", q"{¥}");
			case 40: return Currency(q"{Dollar de Hong Kong}", q"{HKD}", q"{$}");
			case 41: return Currency(q"{Roupie indienne}", q"{INR}", q"{₹}");
			case 42: return Currency(q"{Riel cambodgien}", q"{KHR}", q"{៛}");
			case 43: return Currency(q"{Poulet}", q"{LAK}", q"{₭}");
			case 44: return Currency(q"{Roupie sri lankaise}", q"{LKR}", q"{රු}");
			case 45: return Currency(q"{Rufiyaa}", q"{MVR}", q"{.ރ}");
			case 46: return Currency(q"{cloche malaisienne}", q"{MYR}", q"{RM}");
			case 47: return Currency(q"{Roupie népalaise}", q"{NPR}", q"{रू}");
			case 48: return Currency(q"{Peso philippin}", q"{PHP}", q"{₱}");
			case 49: return Currency(q"{Roupie pakistanaise}", q"{PKR}", q"{₨}");
			case 50: return Currency(q"{Dollar de Singapour}", q"{SGD}", q"{$}");
			case 51: return Currency(q"{Baht thaïlandais}", q"{THB}", q"{฿}");
			case 52: return Currency(q"{Nouveau dollar de Taïwan}", q"{TWD}", q"{$}");
			case 53: return Currency(q"{Dong vietnamien}", q"{VND}", q"{₫}");
			case 54: return Currency(q"{Dollar australien}", q"{AUD}", q"{$}");
			case 55: return Currency(q"{Dollar fidjien}", q"{FJD}", q"{$}");
			case 56: return Currency(q"{Dollar néo-zélandais}", q"{NZD}", q"{$}");
			case 57: return Currency(q"{Franc CFP}", q"{XPF}", q"{₣}");
			case 58: return Currency(q"{Livre égyptienne}", q"{EGP}", q"{£}");
			case 59: return Currency(q"{Cédi ghanéen}", q"{GHS}", q"{₵}");
			case 60: return Currency(q"{Dalasi}", q"{GMD}", q"{D}");
			case 61: return Currency(q"{Shilling kenyan}", q"{KES}", q"{Sh}");
			case 62: return Currency(q"{Dirham marocain}", q"{MAD}", q"{DH}");
			case 63: return Currency(q"{Ariary malgache}", q"{MGA}", q"{Ar}");
			case 64: return Currency(q"{Roupie mauricienne}", q"{MUR}", q"{₨}");
			case 65: return Currency(q"{Dollar namibien}", q"{NAD}", q"{$}");
			case 66: return Currency(q"{Naira nigérian}", q"{NGN}", q"{₦}");
			case 67: return Currency(q"{Roupie}", q"{SCR}", q"{₨}");
			case 68: return Currency(q"{Dinar tunisien}", q"{TND}", q"{DT}");
			case 69: return Currency(q"{Shilling ougandais}", q"{UGX}", q"{Sh}");
			case 70: return Currency(q"{CFA Franc BEAC}", q"{XAF}", q"{Fr}");
			case 71: return Currency(q"{CFA Franc BCEAO}", q"{XOF}", q"{Fr}");
			case 72: return Currency(q"{Rand sud-africain}", q"{ZAR}", q"{Br}");
			case 73: return Currency(q"{Dirham des Émirats arabes unis}", q"{AED}", q"{د.إ}");
			case 74: return Currency(q"{Nouveau Shekel israélien}", q"{ILS}", q"{₪}");
			case 75: return Currency(q"{Livre syrienne}", q"{SYP}", q"{£}");
			case 76: return Currency(q"{Dinar jordanien}", q"{JOD}", q"{د.ا}");
			case 77: return Currency(q"{Dinar koweïtien}", q"{KWD}", q"{د.ك}");
			case 78: return Currency(q"{Livre libanaise}", q"{LBP}", q"{ل.ل}");
			case 79: return Currency(q"{Rial omanais}", q"{OMR}", q"{ر.ع.}");
			case 80: return Currency(q"{Rial qatari}", q"{QAR}", q"{ر.ق}");
			case 81: return Currency(q"{Riyal saoudien}", q"{SAR}", q"{}");
			case 82: return Currency(q"{Bitcoin}", q"{BTC}", q"{₿}");
			case 83: return Currency(q"{Ethereum}", q"{ETH}", q"{Ξ}");
			case 84: return Currency(q"{Litecoin}", q"{LTC}", q"{Ł}");
			case 85: return Currency(q"{Ripples}", q"{XRP}", q"{XRP}");
		}
		return Currency("", "", "");
	}

	override string financeTransactionType() {
		const string[] strs =
		[ q"{dépôt}", q"{retrait}", q"{paiement}", q"{facture}" ];

		return choice(strs, this.rnd);
	}

	override string internetDomainSuffix() {
		const string[] strs =
		[ q"{com}", q"{fr}", q"{eu}", q"{info}", q"{name}", q"{net}", q"{org}" ];

		return choice(strs, this.rnd);
	}

	override string internetFreeEmail() {
		const string[] strs =
		[ q"{gmail.com}", q"{yahoo.fr}", q"{hotmail.fr}" ];

		return choice(strs, this.rnd);
	}

	override string locationBuildingNumber() {
		const string[] strs =
		[ q"{####}", q"{###}", q"{##}", q"{#}" ];

		return numberBuild(choice(str, this.rnd));
	}

	override string locationCityName() {
		const string[] strs =
		[ q"{Aix-en-Provence}", q"{Ajaccio}", q"{Amiens}", q"{Angers}", q"{Antibes}", q"{Antony}", q"{Argenteuil}"
		, q"{Asnières-sur-Seine}", q"{Aubervilliers}", q"{Aulnay-sous-Bois}", q"{Avignon}", q"{Beauvais}"
		, q"{Besançon}", q"{Béziers}", q"{Bordeaux}", q"{Boulogne-Billancourt}", q"{Bourges}", q"{Brest}"
		, q"{Caen}", q"{Calais}", q"{Cannes}", q"{Cayenne}", q"{Cergy}", q"{Chambéry}", q"{Champigny-sur-Marne}"
		, q"{Cholet}", q"{Clermont-Ferrand}", q"{Clichy}", q"{Colmar}", q"{Colombes}", q"{Courbevoie}"
		, q"{Créteil}", q"{Dijon}", q"{Drancy}", q"{Dunkerque}", q"{Fort-de-France}", q"{Grenoble}"
		, q"{Hyères}", q"{Issy-les-Moulineaux}", q"{Ivry-sur-Seine}", q"{La Rochelle}", q"{La Seyne-sur-Mer}"
		, q"{Le Havre}", q"{Le Mans}", q"{Le Tampon}", q"{Les Abymes}", q"{Levallois-Perret}", q"{Lille}"
		, q"{Limoges}", q"{Lorient}", q"{Lyon}", q"{Marseille}", q"{Mérignac}", q"{Metz}", q"{Montauban}"
		, q"{Montpellier}", q"{Montreuil}", q"{Mulhouse}", q"{Nancy}", q"{Nanterre}", q"{Nantes}", q"{Neuilly-sur-Seine}"
		, q"{Nice}", q"{Nîmes}", q"{Niort}", q"{Noisy-le-Grand}", q"{Orléans}", q"{Paris}", q"{Pau}"
		, q"{Perpignan}", q"{Pessac}", q"{Poitiers}", q"{Quimper}", q"{Reims}", q"{Rennes}", q"{Roubaix}"
		, q"{Rouen}", q"{Rueil-Malmaison}", q"{Saint-Denis}", q"{Saint-Étienne}", q"{Saint-Maur-des-Fossés}"
		, q"{Saint-Nazaire}", q"{Saint-Paul}", q"{Saint-Pierre}", q"{Saint-Quentin}", q"{Sarcelles}"
		, q"{Strasbourg}", q"{Toulon}", q"{Toulouse}", q"{Tourcoing}", q"{Tours}", q"{Troyes}", q"{Valence}"
		, q"{Vénissieux}", q"{Versailles}", q"{Villejuif}", q"{Villeneuve-d'Ascq}", q"{Villeurbanne}"
		, q"{Vitry-sur-Seine}" ];

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
		[ q"{France}" ];

		return choice(strs, this.rnd);
	}

	override string locationDirection() {
		const string[] strs =
		[ q"{Nord}", q"{Est}", q"{Sud}", q"{Ouest}", q"{Nord-est}", q"{Nord-ouest}", q"{Sud-est}", q"{Sud-ouest}" ];

		return choice(strs, this.rnd);
	}

	override string locationPostcode() {
		const string[] strs =
		[ q"{#####}" ];

		return numberBuild(choice(str, this.rnd));
	}

	override string locationSecondaryAddress() {
		const string[] strs =
		[ q"{Apt. ###}", q"{# étage}" ];

		return numberBuild(choice(str, this.rnd));
	}

	override string locationState() {
		const string[] strs =
		[ q"{Alsace}", q"{Aquitaine}", q"{Auvergne}", q"{Basse-Normandie}", q"{Bourgogne}", q"{Bretagne}"
		, q"{Centre}", q"{Champagne-Ardenne}", q"{Corse}", q"{Franche-Comté}", q"{Haute-Normandie}"
		, q"{Île-de-France}", q"{Languedoc-Roussillon}", q"{Limousin}", q"{Lorraine}", q"{Midi-Pyrénées}"
		, q"{Nord-Pas-de-Calais}", q"{Pays de la Loire}", q"{Picardie}", q"{Poitou-Charentes}"
		, q"{Provence-Alpes-Côte d'Azur}", q"{Rhône-Alpes}" ];

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
		[ q"{de l'Abbaye}", q"{Adolphe Mille}", q"{d'Alésia}", q"{d'Argenteuil}", q"{d'Assas}", q"{du Bac}"
		, q"{de Paris}", q"{La Boétie}", q"{Bonaparte}", q"{de la Bûcherie}", q"{de Caumartin}"
		, q"{Charlemagne}", q"{du Chat-qui-Pêche}", q"{de la Chaussée-d'Antin}", q"{du Dahomey}"
		, q"{Dauphine}", q"{Delesseux}", q"{du Faubourg Saint-Honoré}", q"{du Faubourg-Saint-Denis}"
		, q"{de la Ferronnerie}", q"{des Francs-Bourgeois}", q"{des Grands Augustins}", q"{de la Harpe}"
		, q"{du Havre}", q"{de la Huchette}", q"{Joubert}", q"{Laffitte}", q"{Lepic}", q"{des Lombards}"
		, q"{Marcadet}", q"{Molière}", q"{Monsieur-le-Prince}", q"{de Montmorency}", q"{Montorgueil}"
		, q"{Mouffetard}", q"{de Nesle}", q"{Oberkampf}", q"{de l'Odéon}", q"{d'Orsel}", q"{de la Paix}"
		, q"{des Panoramas}", q"{Pastourelle}", q"{Pierre Charron}", q"{de la Pompe}", q"{de Presbourg}"
		, q"{de Provence}", q"{de Richelieu}", q"{de Rivoli}", q"{des Rosiers}", q"{Royale}", q"{d'Abbeville}"
		, q"{Saint-Honoré}", q"{Saint-Bernard}", q"{Saint-Denis}", q"{Saint-Dominique}", q"{Saint-Jacques}"
		, q"{Saint-Séverin}", q"{des Saussaies}", q"{de Seine}", q"{de Solférino}", q"{Du Sommerard}"
		, q"{de Tilsitt}", q"{Vaneau}", q"{de Vaugirard}", q"{de la Victoire}", q"{Zadkine}" ];

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

	override string musicGenre() {
		const string[] strs =
		[ q"{Rock}", q"{Metal}", q"{Pop}", q"{Électronique}", q"{Folk}", q"{World}", q"{Country}", q"{Jazz}"
		, q"{Funk}", q"{Soul}", q"{Hip Hop}", q"{Classique}", q"{Latine}", q"{Reggae}", q"{Blues}", q"{Rap}"
		, q"{Variété}", q"{Lofi}" ];

		return choice(strs, this.rnd);
	}

	override string personFemaleFirstName() {
		const string[] strs =
		[ q"{Abdonie}", q"{Abeline}", q"{Abigaelle}", q"{Abigaïl}", q"{Acacie}", q"{Acanthe}", q"{Adalbaude}"
		, q"{Adalsinde}", q"{Adegrine}", q"{Adélaïde}", q"{Adèle}", q"{Adélie}", q"{Adeline}", q"{Adeltrude}"
		, q"{Adolphie}", q"{Adonise}", q"{Adrastée}", q"{Adrehilde}", q"{Adrienne}", q"{Agathe}", q"{Agilberte}"
		, q"{Aglaé}", q"{Agnane}", q"{Agneflète}", q"{Agnès}", q"{Agrippine}", q"{Aimée}", q"{Alaine}"
		, q"{Alaïs}", q"{Albane}", q"{Albérade}", q"{Alberte}", q"{Alcidie}", q"{Alcine}", q"{Alcyone}"
		, q"{Aldegonde}", q"{Aleth}", q"{Alexandrine}", q"{Alexanne}", q"{Alexine}", q"{Alice}", q"{Aliénor}"
		, q"{Aliette}", q"{Aline}", q"{Alix}", q"{Alizé}", q"{Aloïse}", q"{Aloyse}", q"{Alphonsine}"
		, q"{Althée}", q"{Amaliane}", q"{Amalthée}", q"{Amande}", q"{Amandine}", q"{Amante}", q"{Amarande}"
		, q"{Amaranthe}", q"{Amaryllis}", q"{Ambre}", q"{Ambroisie}", q"{Améliane}", q"{Amélie}", q"{Ameline}"
		, q"{Améthyste}", q"{Aminte}", q"{Anaëlle}", q"{Anaïs}", q"{Anastasie}", q"{Anatolie}", q"{Anceline}"
		, q"{Andrée}", q"{Anémone}", q"{Angadrême}", q"{Angèle}", q"{Angeline}", q"{Angélina}"
		, q"{Angélique}", q"{Angilberte}", q"{Anicée}", q"{Anicette}", q"{Annabelle}", q"{Anne}", q"{Annette}"
		, q"{Annonciade}", q"{Ansberte}", q"{Anstrudie}", q"{Anthelmette}", q"{Antigone}", q"{Antoinette}"
		, q"{Antonine}", q"{Aphélie}", q"{Apolline}", q"{Aquiline}", q"{Arabelle}", q"{Arcadie}", q"{Archange}"
		, q"{Argine}", q"{Ariane}", q"{Aricie}", q"{Ariel}", q"{Arielle}", q"{Arlette}", q"{Armance}", q"{Armande}"
		, q"{Armandine}", q"{Armeline}", q"{Armide}", q"{Armelle}", q"{Armine}", q"{Arnaude}", q"{Arsènie}"
		, q"{Arsinoé}", q"{Artémis}", q"{Arthurine}", q"{Asceline}", q"{Ascension}", q"{Assomption}"
		, q"{Astarté}", q"{Astérie}", q"{Astrée}", q"{Astride}", q"{Athalie}", q"{Athanasie}", q"{Athénaïs}"
		, q"{Athina}", q"{Aube}", q"{Aubertine}", q"{Aude}", q"{Audeline}", q"{Audrey}", q"{Augustine}"
		, q"{Aure}", q"{Aurélie}", q"{Aurélienne}", q"{Aurelle}", q"{Auriane}", q"{Aurore}", q"{Auxane}"
		, q"{Aveline}", q"{Avigaëlle}", q"{Avoye}", q"{Axeline}", q"{Axelle}", q"{Aymardine}", q"{Aymonde}"
		, q"{Azalée}", q"{Azélie}", q"{Azeline}", q"{Barbe}", q"{Basilisse}", q"{Bathilde}", q"{Béatrice}"
		, q"{Bénédicte}", q"{Bérangère}", q"{Bernadette}", q"{Berthe}", q"{Bertille}", q"{Betty}"
		, q"{Beuve}", q"{Blanche}", q"{Blandine}", q"{Brigitte}", q"{Brunehaut}", q"{Brunehilde}", q"{Camille}"
		, q"{Capucine}", q"{Carine}", q"{Caroline}", q"{Cassandre}", q"{Catherine}", q"{Cécile}", q"{Céleste}"
		, q"{Célestine}", q"{Céline}", q"{Chantal}", q"{Charlaine}", q"{Charline}", q"{Charlotte}"
		, q"{Chloé}", q"{Christelle}", q"{Christiane}", q"{Christine}", q"{Claire}", q"{Clara}", q"{Claude}"
		, q"{Claudine}", q"{Clarisse}", q"{Clélie}", q"{Clémence}", q"{Clémentine}", q"{Clio}", q"{Clotilde}"
		, q"{Coline}", q"{Conception}", q"{Constance}", q"{Coralie}", q"{Coraline}", q"{Corentine}"
		, q"{Corinne}", q"{Cyrielle}", q"{Danielle}", q"{Daphné}", q"{Débora}", q"{Delphine}", q"{Denise}"
		, q"{Diane}", q"{Dieudonnée}", q"{Dominique}", q"{Doriane}", q"{Dorine}", q"{Dorothée}", q"{Douce}"
		, q"{Édith}", q"{Edmée}", q"{Éléonore}", q"{Éliane}", q"{Élia}", q"{Élisabeth}", q"{Élise}"
		, q"{Ella}", q"{Élodie}", q"{Éloïse}", q"{Elsa}", q"{Émeline}", q"{Émérance}", q"{Émérencie}"
		, q"{Émilie}", q"{Emma}", q"{Emmanuelle}", q"{Emmelie}", q"{Ernestine}", q"{Esther}", q"{Estelle}"
		, q"{Eudoxie}", q"{Eugénie}", q"{Eulalie}", q"{Euphrasie}", q"{Eusébie}", q"{Évangéline}"
		, q"{Eva}", q"{Ève}", q"{Évelyne}", q"{Fanny}", q"{Fantine}", q"{Faustine}", q"{Félicie}", q"{Frédérique}"
		, q"{Flavie}", q"{Fleur}", q"{Flore}", q"{Florence}", q"{Florie}", q"{Fortunée}", q"{France}"
		, q"{Francette}", q"{Francia}", q"{Françoise}", q"{Francine}", q"{Gabrielle}", q"{Gaëlle}"
		, q"{Garance}", q"{Geneviève}", q"{Georgette}", q"{Gerberge}", q"{Germaine}", q"{Gertrude}"
		, q"{Gisèle}", q"{Guenièvre}", q"{Guilhemine}", q"{Guillemette}", q"{Gustavine}", q"{Gwenaëlle}"
		, q"{Hélène}", q"{Héloïse}", q"{Henriette}", q"{Hermine}", q"{Hippolyte}", q"{Honorine}"
		, q"{Hortense}", q"{Huguette}", q"{Inès}", q"{Irène}", q"{Irina}", q"{Iris}", q"{Isabeau}", q"{Isabelle}"
		, q"{Iseult}", q"{Ismérie}", q"{Jacinthe}", q"{Jacqueline}", q"{Jade}", q"{Janine}", q"{Jeanne}"
		, q"{Jeanne d’Arc}", q"{Jehanne}", q"{Jocelyne}", q"{Joëlle}", q"{Joséphine}", q"{Judith}"
		, q"{Julia}", q"{Julie}", q"{Juliette}", q"{Justine}", q"{Laura}", q"{Laurane}", q"{Laure}", q"{Laureline}"
		, q"{Laurence}", q"{Laurène}", q"{Lauriane}", q"{Laurine}", q"{Léa}", q"{Léna}", q"{Léopoldine}"
		, q"{Léonie}", q"{Léonne}", q"{Lorraine}", q"{Lucie}", q"{Lucienne}", q"{Lucille}", q"{Ludivine}"
		, q"{Lydie}", q"{Mégane}", q"{Madeleine}", q"{Magali}", q"{Maguelone}", q"{Mahaut}", q"{Mallaury}"
		, q"{Manon}", q"{Marceline}", q"{Margot}", q"{Marguerite}", q"{Marianne}", q"{Marie}", q"{Marine}"
		, q"{Marion}", q"{Marlène}", q"{Marthe}", q"{Martine}", q"{Mathilde}", q"{Maud}", q"{Maureen}"
		, q"{Mauricette}", q"{Maxellende}", q"{Maxime}", q"{Mélanie}", q"{Mélissa}", q"{Mélissandre}"
		, q"{Mélisande}", q"{Mélodie}", q"{Michèle}", q"{Mireille}", q"{Miriam}", q"{Moïsette}"
		, q"{Monique}", q"{Morgane}", q"{Muriel}", q"{Mylène}", q"{Nadège}", q"{Nadine}", q"{Nathalie}"
		, q"{Nicole}", q"{Nine}", q"{Noëlle}", q"{Noémie}", q"{Océane}", q"{Odette}", q"{Odile}", q"{Olive}"
		, q"{Olympe}", q"{Ombline}", q"{Ophélie}", q"{Oriande}", q"{Oriane}", q"{Orlane}", q"{Ozanne}"
		, q"{Pascale}", q"{Paule}", q"{Paulette}", q"{Pauline}", q"{Priscille}", q"{Pécine}", q"{Pélagie}"
		, q"{Pénélope}", q"{Perrine}", q"{Pétronille}", q"{Philippine}", q"{Philomène}", q"{Philothée}"
		, q"{Primerose}", q"{Prudence}", q"{Pulchérie}", q"{Quentine}", q"{Quiéta}", q"{Quintia}"
		, q"{Rachel}", q"{Raphaëlle}", q"{Raymonde}", q"{Rebecca}", q"{Régine}", q"{Reine}", q"{Réjeanne}"
		, q"{Renée}", q"{Rita}", q"{Rolande}", q"{Romane}", q"{Rosalie}", q"{Rose}", q"{Roseline}", q"{Sabine}"
		, q"{Salomé}", q"{Sandra}", q"{Sandrine}", q"{Sarah}", q"{Scholastique}", q"{Ségolène}", q"{Séverine}"
		, q"{Sibylle}", q"{Simone}", q"{Sixtine}", q"{Solange}", q"{Soline}", q"{Sophie}", q"{Stéphanie}"
		, q"{Suzanne}", q"{Suzon}", q"{Sylviane}", q"{Sylvie}", q"{Swassane}", q"{Tatiana}", q"{Thaïs}"
		, q"{Théodora}", q"{Thérèse}", q"{Tiphaine}", q"{Ursule}", q"{Valentine}", q"{Valérie}"
		, q"{Véronique}", q"{Victoire}", q"{Vinciane}", q"{Violette}", q"{Virginie}", q"{Viviane}"
		, q"{Xavière}", q"{Yolande}", q"{Ysaline}", q"{Yseult}", q"{Yvette}", q"{Yvonne}", q"{Zoé}", q"{Zoéva}" ];

		return choice(strs, this.rnd);
	}

	override string personFemalePrefix() {
		const string[] strs =
		[ q"{Mme}", q"{Mlle}", q"{Dr}", q"{Prof}" ];

		return choice(strs, this.rnd);
	}

	override string personFirstName() {
		const string[] strs =
		[ q"{Aaron}", q"{Abdon}", q"{Abdonie}", q"{Abel}", q"{Abelin}", q"{Abeline}", q"{Abigaelle}", q"{Abigaïl}"
		, q"{Abondance}", q"{Abraham}", q"{Absalon}", q"{Abélard}", q"{Acace}", q"{Acacie}", q"{Acanthe}"
		, q"{Achaire}", q"{Achille}", q"{Adalard}", q"{Adalbald}", q"{Adalbaude}", q"{Adalbert}", q"{Adalbéron}"
		, q"{Adalric}", q"{Adalsinde}", q"{Adam}", q"{Adegrin}", q"{Adegrine}", q"{Adel}", q"{Adelin}"
		, q"{Adeline}", q"{Adelphe}", q"{Adeltrude}", q"{Adenet}", q"{Adhémar}", q"{Adjutor}", q"{Adolphe}"
		, q"{Adolphie}", q"{Adonis}", q"{Adonise}", q"{Adrastée}", q"{Adrehilde}", q"{Adrien}", q"{Adrienne}"
		, q"{Adèle}", q"{Adélaïde}", q"{Adélie}", q"{Adéodat}", q"{Agapet}", q"{Agathange}", q"{Agathe}"
		, q"{Agathon}", q"{Agilbert}", q"{Agilberte}", q"{Aglaé}", q"{Agnan}", q"{Agnane}", q"{Agneflète}"
		, q"{Agnès}", q"{Agrippin}", q"{Agrippine}", q"{Aimable}", q"{Aimé}", q"{Aimée}", q"{Alain}"
		, q"{Alaine}", q"{Alaïs}", q"{Alban}", q"{Albane}", q"{Albert}", q"{Alberte}", q"{Albérade}"
		, q"{Albéric}", q"{Alcibiade}", q"{Alcide}", q"{Alcidie}", q"{Alcime}", q"{Alcine}", q"{Alcyone}"
		, q"{Aldegonde}", q"{Aldonce}", q"{Aldric}", q"{Aleaume}", q"{Aleth}", q"{Alexandre}", q"{Alexandrine}"
		, q"{Alexanne}", q"{Alexine}", q"{Alexis}", q"{Alice}", q"{Aliette}", q"{Aline}", q"{Alix}", q"{Alizé}"
		, q"{Aliénor}", q"{Alliaume}", q"{Almine}", q"{Almire}", q"{Aloyse}", q"{Aloïs}", q"{Aloïse}"
		, q"{Alphonse}", q"{Alphonsine}", q"{Alphée}", q"{Alpinien}", q"{Althée}", q"{Alverède}"
		, q"{Amaliane}", q"{Amalric}", q"{Amalthée}", q"{Amande}", q"{Amandin}", q"{Amandine}", q"{Amant}"
		, q"{Amante}", q"{Amarande}", q"{Amaranthe}", q"{Amaryllis}", q"{Ambre}", q"{Ambroise}", q"{Ambroisie}"
		, q"{Ameline}", q"{Amiel}", q"{Aminte}", q"{Amour}", q"{Amédée}", q"{Améliane}", q"{Amélie}"
		, q"{Amélien}", q"{Améthyste}", q"{Anastase}", q"{Anastasie}", q"{Anatole}", q"{Anatolie}"
		, q"{Anaël}", q"{Anaëlle}", q"{Anaïs}", q"{Ancelin}", q"{Anceline}", q"{Andoche}", q"{André}"
		, q"{Andrée}", q"{Andéol}", q"{Angadrême}", q"{Ange}", q"{Angeline}", q"{Angilbe}", q"{Angilberte}"
		, q"{Angilran}", q"{Angoustan}", q"{Angèle}", q"{Angélina}", q"{Angélique}", q"{Anicet}"
		, q"{Anicette}", q"{Anicée}", q"{Annabelle}", q"{Anne}", q"{Annette}", q"{Annibal}", q"{Annonciade}"
		, q"{Ansbert}", q"{Ansberte}", q"{Anselme}", q"{Anstrudie}", q"{Anthelme}", q"{Anthelmette}"
		, q"{Antide}", q"{Antigone}", q"{Antoine}", q"{Antoinette}", q"{Antonin}", q"{Antonine}", q"{Anémone}"
		, q"{Aphélie}", q"{Apollinaire}", q"{Apolline}", q"{Aquilin}", q"{Aquiline}", q"{Arabelle}"
		, q"{Arcade}", q"{Arcadie}", q"{Archambaud}", q"{Archange}", q"{Archibald}", q"{Argine}", q"{Arian}"
		, q"{Ariane}", q"{Aricie}", q"{Ariel}", q"{Arielle}", q"{Ariste}", q"{Aristide}", q"{Arlette}"
		, q"{Armance}", q"{Armand}", q"{Armande}", q"{Armandine}", q"{Armel}", q"{Armeline}", q"{Armelle}"
		, q"{Armide}", q"{Armin}", q"{Armine}", q"{Arnaud}", q"{Arnaude}", q"{Arnould}", q"{Arolde}", q"{Arsinoé}"
		, q"{Arsène}", q"{Arsènie}", q"{Arthaud}", q"{Arthur}", q"{Arthurine}", q"{Arthème}", q"{Artémis}"
		, q"{Ascelin}", q"{Asceline}", q"{Ascension}", q"{Assomption}", q"{Astarté}", q"{Astride}"
		, q"{Astrée}", q"{Astérie}", q"{Athalie}", q"{Athanase}", q"{Athanasie}", q"{Athina}", q"{Athénaïs}"
		, q"{Aube}", q"{Aubertine}", q"{Aubry}", q"{Aude}", q"{Audebert}", q"{Audeline}", q"{Audouin}"
		, q"{Audran}", q"{Audrey}", q"{Auguste}", q"{Augustine}", q"{Aure}", q"{Aurelle}", q"{Aurian}"
		, q"{Auriane}", q"{Aurore}", q"{Aurèle}", q"{Aurélie}", q"{Aurélienne}", q"{Auxane}", q"{Auxence}"
		, q"{Aveline}", q"{Avigaëlle}", q"{Avoye}", q"{Axel}", q"{Axeline}", q"{Axelle}", q"{Aymard}"
		, q"{Aymardine}", q"{Aymeric}", q"{Aymon}", q"{Aymonde}", q"{Azalée}", q"{Azeline}", q"{Azélie}"
		, q"{Balthazar}", q"{Baptiste}", q"{Barbe}", q"{Barnabé}", q"{Barthélemy}", q"{Bartimée}"
		, q"{Basile}", q"{Basilisse}", q"{Bastien}", q"{Bathilde}", q"{Baudouin}", q"{Benjamin}", q"{Benoît}"
		, q"{Bernadette}", q"{Bernard}", q"{Berthe}", q"{Bertille}", q"{Bertrand}", q"{Betty}", q"{Beuve}"
		, q"{Blaise}", q"{Blanche}", q"{Blandine}", q"{Bohémond}", q"{Bon}", q"{Boniface}", q"{Bouchard}"
		, q"{Briac}", q"{Brice}", q"{Brieuc}", q"{Brigitte}", q"{Brunehaut}", q"{Brunehilde}", q"{Bruno}"
		, q"{Béatrice}", q"{Bénigne}", q"{Bénédicte}", q"{Béranger}", q"{Bérangère}", q"{Bérard}"
		, q"{Calixte}", q"{Camille}", q"{Camillien}", q"{Camélien}", q"{Candide}", q"{Capucine}", q"{Caribert}"
		, q"{Carine}", q"{Carloman}", q"{Caroline}", q"{Cassandre}", q"{Cassien}", q"{Catherine}", q"{Chantal}"
		, q"{Charlaine}", q"{Charlemagne}", q"{Charles}", q"{Charline}", q"{Charlotte}", q"{Childebert}"
		, q"{Chilpéric}", q"{Chloé}", q"{Christelle}", q"{Christian}", q"{Christiane}", q"{Christine}"
		, q"{Christodule}", q"{Christophe}", q"{Chrysole}", q"{Chrysostome}", q"{Chrétien}", q"{Claire}"
		, q"{Clara}", q"{Clarence}", q"{Clarisse}", q"{Claude}", q"{Claudien}", q"{Claudine}", q"{Clio}"
		, q"{Clotaire}", q"{Clotilde}", q"{Clovis}", q"{Cléandre}", q"{Clélie}", q"{Clémence}", q"{Clément}"
		, q"{Clémentine}", q"{Cléry}", q"{Colin}", q"{Coline}", q"{Conception}", q"{Constance}", q"{Constant}"
		, q"{Constantin}", q"{Coralie}", q"{Coraline}", q"{Corentin}", q"{Corentine}", q"{Corinne}"
		, q"{Cyprien}", q"{Cyriaque}", q"{Cyrielle}", q"{Cyrille}", q"{Cécile}", q"{Cédric}", q"{Céleste}"
		, q"{Célestin}", q"{Célestine}", q"{Célien}", q"{Céline}", q"{Césaire}", q"{César}", q"{Côme}"
		, q"{Damien}", q"{Daniel}", q"{Danielle}", q"{Daphné}", q"{David}", q"{Delphin}", q"{Delphine}"
		, q"{Denis}", q"{Denise}", q"{Diane}", q"{Didier}", q"{Dieudonné}", q"{Dieudonnée}", q"{Dimitri}"
		, q"{Dominique}", q"{Dorian}", q"{Doriane}", q"{Dorine}", q"{Dorothée}", q"{Douce}", q"{Débora}"
		, q"{Désiré}", q"{Edgard}", q"{Edmond}", q"{Edmée}", q"{Ella}", q"{Elsa}", q"{Emma}", q"{Emmanuel}"
		, q"{Emmanuelle}", q"{Emmelie}", q"{Enguerrand}", q"{Ernest}", q"{Ernestine}", q"{Estelle}"
		, q"{Esther}", q"{Eubert}", q"{Eudes}", q"{Eudoxe}", q"{Eudoxie}", q"{Eugène}", q"{Eugénie}"
		, q"{Eulalie}", q"{Euphrasie}", q"{Eustache}", q"{Eusèbe}", q"{Eusébie}", q"{Eva}", q"{Fabien}"
		, q"{Fabrice}", q"{Falba}", q"{Fanny}", q"{Fantin}", q"{Fantine}", q"{Faustine}", q"{Ferdinand}"
		, q"{Fiacre}", q"{Fidèle}", q"{Firmin}", q"{Flavie}", q"{Flavien}", q"{Fleur}", q"{Flodoard}"
		, q"{Flore}", q"{Florence}", q"{Florent}", q"{Florestan}", q"{Florian}", q"{Florie}", q"{Fortuné}"
		, q"{Fortunée}", q"{Foulques}", q"{France}", q"{Francette}", q"{Francia}", q"{Francine}", q"{Francisque}"
		, q"{François}", q"{Françoise}", q"{Frédéric}", q"{Frédérique}", q"{Fulbert}", q"{Fulcran}"
		, q"{Fulgence}", q"{Félicie}", q"{Félicité}", q"{Félix}", q"{Gabin}", q"{Gabriel}", q"{Gabrielle}"
		, q"{Garance}", q"{Garnier}", q"{Gaspar}", q"{Gaspard}", q"{Gaston}", q"{Gatien}", q"{Gaud}", q"{Gautier}"
		, q"{Gaël}", q"{Gaëlle}", q"{Geneviève}", q"{Geoffroy}", q"{Georges}", q"{Georgette}", q"{Gerberge}"
		, q"{Gerbert}", q"{Germain}", q"{Germaine}", q"{Gertrude}", q"{Gervais}", q"{Ghislain}", q"{Gilbert}"
		, q"{Gilles}", q"{Girart}", q"{Gislebert}", q"{Gisèle}", q"{Gondebaud}", q"{Gonthier}", q"{Gontran}"
		, q"{Gonzague}", q"{Grégoire}", q"{Guenièvre}", q"{Gui}", q"{Guilhemine}", q"{Guillaume}"
		, q"{Guillemette}", q"{Gustave}", q"{Gustavine}", q"{Guy}", q"{Guyot}", q"{Guérin}", q"{Gwenaëlle}"
		, q"{Gédéon}", q"{Gérard}", q"{Géraud}", q"{Hardouin}", q"{Hector}", q"{Henri}", q"{Henriette}"
		, q"{Herbert}", q"{Herluin}", q"{Hermine}", q"{Hervé}", q"{Hilaire}", q"{Hildebert}", q"{Hincmar}"
		, q"{Hippolyte}", q"{Honorine}", q"{Honoré}", q"{Hortense}", q"{Hubert}", q"{Hugues}", q"{Huguette}"
		, q"{Hédelin}", q"{Hélier}", q"{Héloïse}", q"{Hélène}", q"{Innocent}", q"{Inès}", q"{Irina}"
		, q"{Iris}", q"{Irène}", q"{Isabeau}", q"{Isabelle}", q"{Iseult}", q"{Isidore}", q"{Ismérie}"
		, q"{Jacinthe}", q"{Jacqueline}", q"{Jacques}", q"{Jade}", q"{Janine}", q"{Japhet}", q"{Jason}"
		, q"{Jean}", q"{Jeanne}", q"{Jeanne d’Arc}", q"{Jeannel}", q"{Jeannot}", q"{Jehanne}", q"{Joachim}"
		, q"{Joanny}", q"{Job}", q"{Jocelyn}", q"{Jocelyne}", q"{Johan}", q"{Jonas}", q"{Jonathan}", q"{Joseph}"
		, q"{Josse}", q"{Josselin}", q"{Joséphine}", q"{Jourdain}", q"{Joël}", q"{Joëlle}", q"{Jude}"
		, q"{Judicaël}", q"{Judith}", q"{Jules}", q"{Julia}", q"{Julie}", q"{Julien}", q"{Juliette}", q"{Juste}"
		, q"{Justin}", q"{Justine}", q"{Jérémie}", q"{Jérôme}", q"{Lambert}", q"{Landry}", q"{Laura}"
		, q"{Laurane}", q"{Laure}", q"{Laureline}", q"{Laurence}", q"{Laurent}", q"{Lauriane}", q"{Laurine}"
		, q"{Laurène}", q"{Lazare}", q"{Leu}", q"{Leufroy}", q"{Libère}", q"{Lionel}", q"{Liétald}"
		, q"{Longin}", q"{Lorrain}", q"{Lorraine}", q"{Lothaire}", q"{Louis}", q"{Loup}", q"{Loïc}", q"{Luc}"
		, q"{Lucas}", q"{Lucie}", q"{Lucien}", q"{Lucienne}", q"{Lucille}", q"{Ludivine}", q"{Ludolphe}"
		, q"{Ludovic}", q"{Lydie}", q"{Léa}", q"{Léandre}", q"{Léna}", q"{Léon}", q"{Léonard}", q"{Léonie}"
		, q"{Léonne}", q"{Léopold}", q"{Léopoldine}", q"{Macaire}", q"{Madeleine}", q"{Magali}", q"{Maguelone}"
		, q"{Mahaut}", q"{Mallaury}", q"{Malo}", q"{Mamert}", q"{Manassé}", q"{Manon}", q"{Marc}", q"{Marceau}"
		, q"{Marcel}", q"{Marcelin}", q"{Marceline}", q"{Margot}", q"{Marguerite}", q"{Marianne}", q"{Marie}"
		, q"{Marine}", q"{Marion}", q"{Marius}", q"{Marlène}", q"{Marthe}", q"{Martial}", q"{Martin}"
		, q"{Martine}", q"{Mathilde}", q"{Mathurin}", q"{Matthias}", q"{Matthieu}", q"{Maud}", q"{Maugis}"
		, q"{Maureen}", q"{Maurice}", q"{Mauricette}", q"{Maxellende}", q"{Maxence}", q"{Maxime}", q"{Maximilien}"
		, q"{Mayeul}", q"{Melchior}", q"{Mence}", q"{Merlin}", q"{Michaël}", q"{Michel}", q"{Michèle}"
		, q"{Mireille}", q"{Miriam}", q"{Monique}", q"{Morgan}", q"{Morgane}", q"{Moïse}", q"{Moïsette}"
		, q"{Muriel}", q"{Mylène}", q"{Médéric}", q"{Mégane}", q"{Mélanie}", q"{Mélisande}", q"{Mélissa}"
		, q"{Mélissandre}", q"{Mélodie}", q"{Mérovée}", q"{Nadine}", q"{Nadège}", q"{Narcisse}"
		, q"{Nathalie}", q"{Nathan}", q"{Nathanaël}", q"{Naudet}", q"{Nestor}", q"{Nicolas}", q"{Nicole}"
		, q"{Nicéphore}", q"{Nine}", q"{Norbert}", q"{Normand}", q"{Noé}", q"{Noémie}", q"{Noël}", q"{Noëlle}"
		, q"{Néhémie}", q"{Octave}", q"{Océane}", q"{Odette}", q"{Odile}", q"{Odilon}", q"{Odon}", q"{Oger}"
		, q"{Olive}", q"{Olivier}", q"{Olympe}", q"{Ombline}", q"{Ophélie}", q"{Oriande}", q"{Oriane}"
		, q"{Orlane}", q"{Oury}", q"{Ozanne}", q"{Pacôme}", q"{Palémon}", q"{Parfait}", q"{Pascal}", q"{Pascale}"
		, q"{Paterne}", q"{Patrice}", q"{Paul}", q"{Paule}", q"{Paulette}", q"{Pauline}", q"{Perceval}"
		, q"{Perrine}", q"{Philibert}", q"{Philippe}", q"{Philippine}", q"{Philomène}", q"{Philothée}"
		, q"{Philémon}", q"{Pie}", q"{Pierre}", q"{Pierrick}", q"{Primerose}", q"{Priscille}", q"{Prosper}"
		, q"{Prudence}", q"{Pulchérie}", q"{Pécine}", q"{Pélagie}", q"{Pénélope}", q"{Pépin}"
		, q"{Pétronille}", q"{Quentin}", q"{Quentine}", q"{Quintia}", q"{Quiéta}", q"{Rachel}", q"{Rachid}"
		, q"{Raoul}", q"{Raphaël}", q"{Raphaëlle}", q"{Raymond}", q"{Raymonde}", q"{Rebecca}", q"{Reine}"
		, q"{Renaud}", q"{René}", q"{Renée}", q"{Reybaud}", q"{Richard}", q"{Rita}", q"{Robert}", q"{Roch}"
		, q"{Rodolphe}", q"{Rodrigue}", q"{Roger}", q"{Roland}", q"{Rolande}", q"{Romain}", q"{Romane}"
		, q"{Romuald}", q"{Roméo}", q"{Ronan}", q"{Rosalie}", q"{Rose}", q"{Roselin}", q"{Roseline}", q"{Régine}"
		, q"{Régis}", q"{Réjean}", q"{Réjeanne}", q"{Rémi}", q"{Sabine}", q"{Salomon}", q"{Salomé}"
		, q"{Samuel}", q"{Sandra}", q"{Sandrine}", q"{Sarah}", q"{Sauveur}", q"{Savin}", q"{Savinien}"
		, q"{Scholastique}", q"{Serge}", q"{Sibylle}", q"{Sidoine}", q"{Sigebert}", q"{Sigismond}", q"{Silvère}"
		, q"{Simon}", q"{Simone}", q"{Sixte}", q"{Sixtine}", q"{Solange}", q"{Soline}", q"{Sophie}", q"{Stanislas}"
		, q"{Stéphane}", q"{Stéphanie}", q"{Suzanne}", q"{Suzon}", q"{Swassane}", q"{Sylvain}", q"{Sylvestre}"
		, q"{Sylviane}", q"{Sylvie}", q"{Sébastien}", q"{Ségolène}", q"{Séraphin}", q"{Séverin}"
		, q"{Séverine}", q"{Tancrède}", q"{Tanguy}", q"{Tatiana}", q"{Taurin}", q"{Thaïs}", q"{Thibault}"
		, q"{Thibert}", q"{Thierry}", q"{Thomas}", q"{Théodora}", q"{Théodore}", q"{Théodose}", q"{Théophile}"
		, q"{Théophraste}", q"{Thérèse}", q"{Tim}", q"{Timoléon}", q"{Timothée}", q"{Tiphaine}"
		, q"{Titien}", q"{Tonnin}", q"{Toussaint}", q"{Trajan}", q"{Tristan}", q"{Turold}", q"{Ulysse}"
		, q"{Urbain}", q"{Ursule}", q"{Valentin}", q"{Valentine}", q"{Valère}", q"{Valérie}", q"{Valéry}"
		, q"{Venance}", q"{Venceslas}", q"{Vianney}", q"{Victoire}", q"{Victor}", q"{Victorien}", q"{Victorin}"
		, q"{Vigile}", q"{Vincent}", q"{Vinciane}", q"{Violette}", q"{Virginie}", q"{Vital}", q"{Viviane}"
		, q"{Vivien}", q"{Véronique}", q"{Waleran}", q"{Wandrille}", q"{Xavier}", q"{Xavière}", q"{Xénophon}"
		, q"{Yoann}", q"{Yolande}", q"{Ysaline}", q"{Yseult}", q"{Yves}", q"{Yvette}", q"{Yvonne}", q"{Zacharie}"
		, q"{Zaché}", q"{Zoé}", q"{Zoéva}", q"{Zéphirin}", q"{Ève}", q"{Édith}", q"{Édouard}", q"{Éleuthère}"
		, q"{Élia}", q"{Éliane}", q"{Élie}", q"{Élisabeth}", q"{Élise}", q"{Élisée}", q"{Élodie}"
		, q"{Éloïse}", q"{Élzéar}", q"{Éléonore}", q"{Émeline}", q"{Émeric}", q"{Émile}", q"{Émilie}"
		, q"{Émérance}", q"{Émérencie}", q"{Épiphane}", q"{Éric}", q"{Étienne}", q"{Évangéline}"
		, q"{Évariste}", q"{Évelyne}", q"{Évrard}" ];

		return choice(strs, this.rnd);
	}

	override string personJobTitlePattern() {
		final switch(uniform(0, 1, this.rnd)) {
			case 0: return personJobType() ~ " " ~ personJobArea() ~ " " ~ personJobDescriptor();
		}
		return "";
	}

	override string personLastName() {
		const string[] strs =
		[ q"{Martin}", q"{Bernard}", q"{Dubois}", q"{Thomas}", q"{Robert}", q"{Richard}", q"{Petit}", q"{Durand}"
		, q"{Leroy}", q"{Moreau}", q"{Simon}", q"{Laurent}", q"{Lefebvre}", q"{Michel}", q"{Garcia}", q"{David}"
		, q"{Bertrand}", q"{Roux}", q"{Vincent}", q"{Fournier}", q"{Morel}", q"{Girard}", q"{Andre}", q"{Lefevre}"
		, q"{Mercier}", q"{Dupont}", q"{Lambert}", q"{Bonnet}", q"{Francois}", q"{Martinez}", q"{Legrand}"
		, q"{Garnier}", q"{Faure}", q"{Rousseau}", q"{Blanc}", q"{Guerin}", q"{Muller}", q"{Henry}", q"{Roussel}"
		, q"{Nicolas}", q"{Perrin}", q"{Morin}", q"{Mathieu}", q"{Clement}", q"{Gauthier}", q"{Dumont}"
		, q"{Lopez}", q"{Fontaine}", q"{Chevalier}", q"{Robin}", q"{Masson}", q"{Sanchez}", q"{Gerard}"
		, q"{Nguyen}", q"{Boyer}", q"{Denis}", q"{Lemaire}", q"{Duval}", q"{Joly}", q"{Gautier}", q"{Roger}"
		, q"{Roche}", q"{Roy}", q"{Noel}", q"{Meyer}", q"{Lucas}", q"{Meunier}", q"{Jean}", q"{Perez}", q"{Marchand}"
		, q"{Dufour}", q"{Blanchard}", q"{Marie}", q"{Barbier}", q"{Brun}", q"{Dumas}", q"{Brunet}", q"{Schmitt}"
		, q"{Leroux}", q"{Colin}", q"{Fernandez}", q"{Pierre}", q"{Renard}", q"{Arnaud}", q"{Rolland}"
		, q"{Caron}", q"{Aubert}", q"{Giraud}", q"{Leclerc}", q"{Vidal}", q"{Bourgeois}", q"{Renaud}", q"{Lemoine}"
		, q"{Picard}", q"{Gaillard}", q"{Philippe}", q"{Leclercq}", q"{Lacroix}", q"{Fabre}", q"{Dupuis}"
		, q"{Olivier}", q"{Rodriguez}", q"{Da silva}", q"{Hubert}", q"{Louis}", q"{Charles}", q"{Guillot}"
		, q"{Riviere}", q"{Le gall}", q"{Guillaume}", q"{Adam}", q"{Rey}", q"{Moulin}", q"{Gonzalez}", q"{Berger}"
		, q"{Lecomte}", q"{Menard}", q"{Fleury}", q"{Deschamps}", q"{Carpentier}", q"{Julien}", q"{Benoit}"
		, q"{Paris}", q"{Maillard}", q"{Marchal}", q"{Aubry}", q"{Vasseur}", q"{Le roux}", q"{Renault}"
		, q"{Jacquet}", q"{Collet}", q"{Prevost}", q"{Poirier}", q"{Charpentier}", q"{Royer}", q"{Huet}"
		, q"{Baron}", q"{Dupuy}", q"{Pons}", q"{Paul}", q"{Laine}", q"{Carre}", q"{Breton}", q"{Remy}", q"{Schneider}"
		, q"{Perrot}", q"{Guyot}", q"{Barre}", q"{Marty}", q"{Cousin}" ];

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
		[ q"{Aaron}", q"{Abdon}", q"{Abel}", q"{Abélard}", q"{Abelin}", q"{Abondance}", q"{Abraham}", q"{Absalon}"
		, q"{Acace}", q"{Achaire}", q"{Achille}", q"{Adalard}", q"{Adalbald}", q"{Adalbéron}", q"{Adalbert}"
		, q"{Adalric}", q"{Adam}", q"{Adegrin}", q"{Adel}", q"{Adelin}", q"{Adelphe}", q"{Adenet}", q"{Adéodat}"
		, q"{Adhémar}", q"{Adjutor}", q"{Adolphe}", q"{Adonis}", q"{Adrien}", q"{Agapet}", q"{Agathange}"
		, q"{Agathon}", q"{Agilbert}", q"{Agnan}", q"{Agrippin}", q"{Aimable}", q"{Aimé}", q"{Alain}"
		, q"{Alban}", q"{Albéric}", q"{Albert}", q"{Alcibiade}", q"{Alcide}", q"{Alcime}", q"{Aldonce}"
		, q"{Aldric}", q"{Aleaume}", q"{Alexandre}", q"{Alexis}", q"{Alix}", q"{Alliaume}", q"{Almine}"
		, q"{Almire}", q"{Aloïs}", q"{Alphée}", q"{Alphonse}", q"{Alpinien}", q"{Alverède}", q"{Amalric}"
		, q"{Amandin}", q"{Amant}", q"{Ambroise}", q"{Amédée}", q"{Amélien}", q"{Amiel}", q"{Amour}"
		, q"{Anaël}", q"{Anastase}", q"{Anatole}", q"{Ancelin}", q"{Andéol}", q"{Andoche}", q"{André}"
		, q"{Ange}", q"{Angilbe}", q"{Angilran}", q"{Angoustan}", q"{Anicet}", q"{Anne}", q"{Annibal}"
		, q"{Ansbert}", q"{Anselme}", q"{Anthelme}", q"{Antide}", q"{Antoine}", q"{Antonin}", q"{Apollinaire}"
		, q"{Aquilin}", q"{Arcade}", q"{Archambaud}", q"{Archange}", q"{Archibald}", q"{Arian}", q"{Ariel}"
		, q"{Ariste}", q"{Aristide}", q"{Armand}", q"{Armel}", q"{Armin}", q"{Arnould}", q"{Arnaud}", q"{Arolde}"
		, q"{Arsène}", q"{Arsinoé}", q"{Arthaud}", q"{Arthème}", q"{Arthur}", q"{Ascelin}", q"{Athanase}"
		, q"{Aubry}", q"{Audebert}", q"{Audouin}", q"{Audran}", q"{Auguste}", q"{Aurèle}", q"{Aurian}"
		, q"{Auxence}", q"{Axel}", q"{Aymard}", q"{Aymeric}", q"{Aymon}", q"{Balthazar}", q"{Baptiste}"
		, q"{Barnabé}", q"{Barthélemy}", q"{Bartimée}", q"{Basile}", q"{Bastien}", q"{Baudouin}"
		, q"{Bénigne}", q"{Benjamin}", q"{Benoît}", q"{Béranger}", q"{Bérard}", q"{Bernard}", q"{Bertrand}"
		, q"{Blaise}", q"{Bohémond}", q"{Bon}", q"{Boniface}", q"{Bouchard}", q"{Briac}", q"{Brice}", q"{Brieuc}"
		, q"{Bruno}", q"{Calixte}", q"{Camélien}", q"{Camille}", q"{Camillien}", q"{Candide}", q"{Caribert}"
		, q"{Carloman}", q"{Cassandre}", q"{Cassien}", q"{Cédric}", q"{Céleste}", q"{Célestin}", q"{Célien}"
		, q"{Césaire}", q"{César}", q"{Charles}", q"{Charlemagne}", q"{Childebert}", q"{Chilpéric}"
		, q"{Chrétien}", q"{Christian}", q"{Christodule}", q"{Christophe}", q"{Chrysole}", q"{Chrysostome}"
		, q"{Clarence}", q"{Claude}", q"{Claudien}", q"{Cléandre}", q"{Clément}", q"{Cléry}", q"{Clotaire}"
		, q"{Clovis}", q"{Colin}", q"{Côme}", q"{Constance}", q"{Constant}", q"{Constantin}", q"{Corentin}"
		, q"{Cyprien}", q"{Cyriaque}", q"{Cyrille}", q"{Damien}", q"{Daniel}", q"{David}", q"{Delphin}"
		, q"{Denis}", q"{Désiré}", q"{Didier}", q"{Dieudonné}", q"{Dimitri}", q"{Dominique}", q"{Dorian}"
		, q"{Edgard}", q"{Edmond}", q"{Édouard}", q"{Éleuthère}", q"{Élie}", q"{Élisée}", q"{Élzéar}"
		, q"{Émeric}", q"{Émile}", q"{Emmanuel}", q"{Enguerrand}", q"{Épiphane}", q"{Éric}", q"{Ernest}"
		, q"{Étienne}", q"{Eubert}", q"{Eudes}", q"{Eudoxe}", q"{Eugène}", q"{Eusèbe}", q"{Eustache}"
		, q"{Évariste}", q"{Évrard}", q"{Fabien}", q"{Fabrice}", q"{Falba}", q"{Fantin}", q"{Félicité}"
		, q"{Félix}", q"{Ferdinand}", q"{Fiacre}", q"{Fidèle}", q"{Firmin}", q"{Flavien}", q"{Flodoard}"
		, q"{Florent}", q"{Florestan}", q"{Florian}", q"{Fortuné}", q"{Foulques}", q"{Francisque}"
		, q"{François}", q"{Frédéric}", q"{Fulbert}", q"{Fulcran}", q"{Fulgence}", q"{Gabin}", q"{Gabriel}"
		, q"{Gaël}", q"{Garnier}", q"{Gaston}", q"{Gaspar}", q"{Gaspard}", q"{Gatien}", q"{Gaud}", q"{Gautier}"
		, q"{Gédéon}", q"{Geoffroy}", q"{Georges}", q"{Géraud}", q"{Gérard}", q"{Gerbert}", q"{Germain}"
		, q"{Gervais}", q"{Ghislain}", q"{Gilbert}", q"{Gilles}", q"{Girart}", q"{Gislebert}", q"{Gondebaud}"
		, q"{Gonthier}", q"{Gontran}", q"{Gonzague}", q"{Grégoire}", q"{Guérin}", q"{Gui}", q"{Guillaume}"
		, q"{Gustave}", q"{Guy}", q"{Guyot}", q"{Hardouin}", q"{Hector}", q"{Hédelin}", q"{Hélier}", q"{Henri}"
		, q"{Herbert}", q"{Herluin}", q"{Hervé}", q"{Hilaire}", q"{Hildebert}", q"{Hincmar}", q"{Hippolyte}"
		, q"{Honoré}", q"{Hubert}", q"{Hugues}", q"{Innocent}", q"{Isabeau}", q"{Isidore}", q"{Jacques}"
		, q"{Japhet}", q"{Jason}", q"{Jean}", q"{Jeannel}", q"{Jeannot}", q"{Jérémie}", q"{Jérôme}"
		, q"{Joachim}", q"{Joanny}", q"{Job}", q"{Jocelyn}", q"{Joël}", q"{Johan}", q"{Jonas}", q"{Jonathan}"
		, q"{Joseph}", q"{Josse}", q"{Josselin}", q"{Jourdain}", q"{Jude}", q"{Judicaël}", q"{Jules}"
		, q"{Julien}", q"{Juste}", q"{Justin}", q"{Lambert}", q"{Landry}", q"{Laurent}", q"{Lazare}", q"{Léandre}"
		, q"{Léon}", q"{Léonard}", q"{Léopold}", q"{Leu}", q"{Leufroy}", q"{Libère}", q"{Liétald}"
		, q"{Lionel}", q"{Loïc}", q"{Longin}", q"{Lorrain}", q"{Lothaire}", q"{Louis}", q"{Loup}", q"{Luc}"
		, q"{Lucas}", q"{Lucien}", q"{Ludolphe}", q"{Ludovic}", q"{Macaire}", q"{Malo}", q"{Mamert}", q"{Manassé}"
		, q"{Marc}", q"{Marceau}", q"{Marcel}", q"{Marcelin}", q"{Marius}", q"{Martial}", q"{Martin}", q"{Mathurin}"
		, q"{Matthias}", q"{Matthieu}", q"{Maugis}", q"{Maurice}", q"{Maxence}", q"{Maxime}", q"{Maximilien}"
		, q"{Mayeul}", q"{Médéric}", q"{Melchior}", q"{Mence}", q"{Merlin}", q"{Mérovée}", q"{Michaël}"
		, q"{Michel}", q"{Moïse}", q"{Morgan}", q"{Nathan}", q"{Nathanaël}", q"{Narcisse}", q"{Naudet}"
		, q"{Néhémie}", q"{Nestor}", q"{Nicéphore}", q"{Nicolas}", q"{Noé}", q"{Noël}", q"{Norbert}"
		, q"{Normand}", q"{Octave}", q"{Odilon}", q"{Odon}", q"{Oger}", q"{Olivier}", q"{Oury}", q"{Pacôme}"
		, q"{Palémon}", q"{Parfait}", q"{Pascal}", q"{Paterne}", q"{Patrice}", q"{Paul}", q"{Pépin}"
		, q"{Perceval}", q"{Philémon}", q"{Philibert}", q"{Philippe}", q"{Philothée}", q"{Pie}", q"{Pierre}"
		, q"{Pierrick}", q"{Prosper}", q"{Quentin}", q"{Raoul}", q"{Raphaël}", q"{Raymond}", q"{Régis}"
		, q"{Réjean}", q"{Rémi}", q"{Renaud}", q"{René}", q"{Reybaud}", q"{Richard}", q"{Robert}", q"{Roch}"
		, q"{Rodolphe}", q"{Rodrigue}", q"{Roger}", q"{Roland}", q"{Romain}", q"{Romuald}", q"{Roméo}"
		, q"{Ronan}", q"{Roselin}", q"{Rachid}", q"{Salomon}", q"{Samuel}", q"{Sauveur}", q"{Savin}", q"{Savinien}"
		, q"{Scholastique}", q"{Sébastien}", q"{Séraphin}", q"{Serge}", q"{Séverin}", q"{Sidoine}"
		, q"{Sigebert}", q"{Sigismond}", q"{Silvère}", q"{Simon}", q"{Sixte}", q"{Stanislas}", q"{Stéphane}"
		, q"{Sylvain}", q"{Sylvestre}", q"{Tancrède}", q"{Tanguy}", q"{Taurin}", q"{Théodore}", q"{Théodose}"
		, q"{Théophile}", q"{Théophraste}", q"{Thibault}", q"{Thibert}", q"{Thierry}", q"{Thomas}"
		, q"{Timoléon}", q"{Timothée}", q"{Titien}", q"{Tonnin}", q"{Toussaint}", q"{Trajan}", q"{Tristan}"
		, q"{Turold}", q"{Tim}", q"{Ulysse}", q"{Urbain}", q"{Valentin}", q"{Valère}", q"{Valéry}", q"{Venance}"
		, q"{Venceslas}", q"{Vianney}", q"{Victor}", q"{Victorien}", q"{Victorin}", q"{Vigile}", q"{Vincent}"
		, q"{Vital}", q"{Vivien}", q"{Waleran}", q"{Wandrille}", q"{Xavier}", q"{Xénophon}", q"{Yves}"
		, q"{Yoann}", q"{Zacharie}", q"{Zaché}", q"{Zéphirin}" ];

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

	override string personTitleDescriptor() {
		const string[] strs =
		[ q"{central}", q"{client}", q"{direct}", q"{futur}", q"{humain}", q"{international}", q"{interne}"
		, q"{mondial}", q"{national}", q"{principal}", q"{régional}" ];

		return choice(strs, this.rnd);
	}

	override string personTitleLevel() {
		const string[] strs =
		[ q"{de configuration}", q"{de division}", q"{de groupe}", q"{de la communication}", q"{de la création}"
		, q"{de la marque}", q"{de la mise en œuvre}", q"{de la mobilité}", q"{de la qualité}"
		, q"{de la réponse}", q"{de la responsabilité}", q"{de la sécurité}", q"{de la tactique}"
		, q"{de marque}", q"{de paradigme}", q"{de programme}", q"{de recherche}", q"{des applications}"
		, q"{des comptes}", q"{des directives}", q"{des données}", q"{des facteurs}", q"{des fonctionnalités}"
		, q"{des infrastructures}", q"{des interactions}", q"{des marchés}", q"{des métriques}"
		, q"{des opérations}", q"{des solutions}", q"{du marketing}", q"{du web}", q"{de l'assurance}"
		, q"{de l'identité}", q"{de l'intégration}", q"{de l'intranet}", q"{de l'optimisation}"
		, q"{de l'utilisabilité}" ];

		return choice(strs, this.rnd);
	}

	override string personTitleJob() {
		const string[] strs =
		[ q"{Superviseur}", q"{Executif}", q"{Manager}", q"{Ingenieur}", q"{Specialiste}", q"{Directeur}"
		, q"{Coordinateur}", q"{Administrateur}", q"{Architecte}", q"{Analyste}", q"{Designer}", q"{Technicien}"
		, q"{Developpeur}", q"{Producteur}", q"{Consultant}", q"{Assistant}", q"{Agent}", q"{Stagiaire}" ];

		return choice(strs, this.rnd);
	}

	override string phoneNumberFormats() {
		const string[] strs =
		[ q"{01########}", q"{02########}", q"{03########}", q"{04########}", q"{05########}", q"{06########}"
		, q"{07########}", q"{+33 1########}", q"{+33 2########}", q"{+33 3########}", q"{+33 4########}"
		, q"{+33 5########}", q"{+33 6########}", q"{+33 7########}" ];

		return numberBuild(choice(str, this.rnd));
	}

	override string vehicleBicycleType() {
		const string[] strs =
		[ q"{Biporteur}", q"{Cruiser}", q"{Cyclo-draisine}", q"{Draisienne}", q"{Fatbike}", q"{Gocycle}"
		, q"{Grand bi}", q"{Gravel}", q"{Longtail}", q"{Lowrider bikes}", q"{Michaudine}", q"{Rickshaw}"
		, q"{Rosalie}", q"{Singlespeed}", q"{Tall bike}", q"{Tandem}", q"{Tricycle}", q"{Tricycle couché}"
		, q"{Triplette}", q"{Triporteur}", q"{Vélo à assistance électrique}", q"{Vélo à voile}"
		, q"{Vélo cargo}", q"{Vélo couché}", q"{Vélo de piste}", q"{Vélo de route}", q"{Vélo électrique}"
		, q"{Vélo en bambou}", q"{Vélo fantôme}", q"{Vélo festif}", q"{Vélo hollandais}"
		, q"{Vélo pliant}", q"{Vélo tout chemin}", q"{Vélo tout-terrain}", q"{Vélocar}", q"{Vélocipède}"
		, q"{Vélocipèdraisiavaporianna}", q"{Vélomobile}", q"{Vélo-taxi}", q"{Whike}" ];

		return choice(strs, this.rnd);
	}

	override string vehicleFuel() {
		const string[] strs =
		[ q"{Diesel}", q"{Électrique}", q"{Essence}", q"{Hybride}" ];

		return choice(strs, this.rnd);
	}

	override string vehicleType() {
		const string[] strs =
		[ q"{Micro-urbaines}", q"{Mini-citadines}", q"{Citadines polyvalentes}", q"{Berlines compactes}"
		, q"{Berlines}", q"{SUV}", q"{Tout-terrains}", q"{Pick-up}", q"{Minispaces}", q"{Monospaces compacts}"
		, q"{Grands monospaces}" ];

		return choice(strs, this.rnd);
	}

	override string wordAdjective() {
		const string[] strs =
		[ q"{âcre}", q"{adorable}", q"{affable}", q"{agréable}", q"{aigre}", q"{aimable}", q"{altruiste}"
		, q"{amorphe}", q"{antique}", q"{apte}", q"{avare}", q"{blême}", q"{brave}", q"{brusque}", q"{calme}"
		, q"{candide}", q"{charitable}", q"{circulaire}", q"{considérable}", q"{coupable}", q"{cyan}"
		, q"{débile}", q"{délectable}", q"{dense}", q"{désagréable}", q"{dynamique}", q"{efficace}"
		, q"{égoïste}", q"{émérite}", q"{énergique}", q"{énorme}", q"{espiègle}", q"{extatique}"
		, q"{extra}", q"{fade}", q"{ferme}", q"{fidèle}", q"{fourbe}", q"{gai}", q"{géométrique}", q"{gigantesque}"
		, q"{habile}", q"{hebdomadaire}", q"{hirsute}", q"{horrible}", q"{hypocrite}", q"{hystérique}"
		, q"{immense}", q"{incalculable}", q"{infime}", q"{innombrable}", q"{insipide}", q"{insolite}"
		, q"{intrépide}", q"{jeune}", q"{lâche}", q"{large}", q"{loufoque}", q"{lunatique}", q"{magenta}"
		, q"{magnifique}", q"{maigre}", q"{malade}", q"{marron}", q"{mature}", q"{mélancolique}", q"{mince}"
		, q"{minuscule}", q"{moderne}", q"{multiple}", q"{neutre}", q"{novice}", q"{orange}", q"{pacifique}"
		, q"{pauvre}", q"{perplexe}", q"{placide}", q"{pourpre}", q"{propre}", q"{raide}", q"{rapide}"
		, q"{rectangulaire}", q"{rose}", q"{sage}", q"{sale}", q"{sauvage}", q"{séculaire}", q"{sédentaire}"
		, q"{serviable}", q"{simple}", q"{sincère}", q"{snob}", q"{solitaire}", q"{sombre}", q"{souple}"
		, q"{spécialiste}", q"{splendide}", q"{super}", q"{svelte}", q"{sympathique}", q"{téméraire}"
		, q"{tendre}", q"{terne}", q"{timide}", q"{tranquille}", q"{triangulaire}", q"{triste}", q"{turquoise}"
		, q"{vaste}", q"{vétuste}", q"{vide}", q"{vivace}", q"{vorace}" ];

		return choice(strs, this.rnd);
	}

	override string wordAdverb() {
		const string[] strs =
		[ q"{admirablement}", q"{ainsi}", q"{aussi}", q"{bien}", q"{comme}", q"{comment}", q"{debout}", q"{doucement}"
		, q"{également}", q"{ensemble}", q"{exprès}", q"{franco}", q"{gratis}", q"{impromptu}", q"{incognito}"
		, q"{lentement}", q"{mal}", q"{mieux}", q"{pis}", q"{plutôt}", q"{presque}", q"{recta}", q"{vite}"
		, q"{volontiers}", q"{à peine}", q"{à peu près}", q"{absolument}", q"{à demi}", q"{assez}"
		, q"{autant}", q"{autrement}", q"{approximativement}", q"{beaucoup}", q"{carrément}", q"{combien}"
		, q"{complètement}", q"{davantage}", q"{diablement}", q"{divinement}", q"{drôlement}", q"{encore}"
		, q"{entièrement}", q"{environ}", q"{extrêmement}", q"{fort}", q"{grandement}", q"{guère}"
		, q"{infiniment}", q"{insuffisamment}", q"{joliment}", q"{même}", q"{moins}", q"{pas mal}"
		, q"{passablement}", q"{peu}", q"{plus}", q"{prou}", q"{quasi}", q"{quasiment}", q"{quelque}", q"{rudement}"
		, q"{si}", q"{suffisamment}", q"{tant}", q"{tellement}", q"{terriblement}", q"{totalement}"
		, q"{tout}", q"{tout à fait}", q"{très}", q"{trop}", q"{trop peu}", q"{un peu}", q"{alors}", q"{après}"
		, q"{après-demain}", q"{aujourd'hui}", q"{auparavant}", q"{aussitôt}", q"{autrefois}", q"{avant}"
		, q"{avant-hier}", q"{bientôt}", q"{cependant}", q"{d'abord}", q"{déjà}", q"{demain}", q"{depuis}"
		, q"{derechef}", q"{désormais}", q"{dorénavant}", q"{enfin}", q"{ensuite}", q"{entre-temps}"
		, q"{hier}", q"{jadis}", q"{jamais}", q"{longtemps}", q"{lors}", q"{maintenant}", q"{naguère}"
		, q"{parfois}", q"{premièrement}", q"{puis}", q"{quand ?}", q"{quelquefois}", q"{sitôt}", q"{soudain}"
		, q"{souvent}", q"{subito}", q"{tantôt}", q"{tard}", q"{tôt}", q"{toujours}", q"{ailleurs}", q"{alentour}"
		, q"{arrière}", q"{au-delà}", q"{au-dessous}", q"{au-dessus}", q"{au-devant}", q"{autour}"
		, q"{ça}", q"{céans}", q"{ci}", q"{contre}", q"{deçà}", q"{dedans}", q"{dehors}", q"{derrière}"
		, q"{dessous}", q"{dessus}", q"{devant}", q"{ici}", q"{là}", q"{là-haut}", q"{loin}", q"{où}", q"{outre}"
		, q"{partout}", q"{près}", q"{proche}", q"{sus}", q"{y}", q"{apparemment}", q"{assurément}", q"{bon}"
		, q"{certainement}", q"{certes}", q"{en vérité}", q"{oui}", q"{peut-être}", q"{précisément}"
		, q"{probablement}", q"{sans doute}", q"{soit}", q"{toutefois}", q"{vraiment}", q"{vraisemblablement}" ];

		return choice(strs, this.rnd);
	}

	override string wordConjunction() {
		const string[] strs =
		[ q"{que}", q"{afin que}", q"{pour que}", q"{de sorte que}", q"{de façon à ce que}", q"{de manière à ce que}"
		, q"{de peur que}", q"{de crainte que}", q"{puisque}", q"{parce que}", q"{comme}", q"{vu que}"
		, q"{étant donné que}", q"{du fait que}", q"{du moment que}", q"{d’autant que}", q"{même si}"
		, q"{quoique}", q"{bien que}", q"{si}", q"{dans la mesure où}", q"{à condition que}", q"{pourvu que}"
		, q"{au cas où}", q"{si bien que}", q"{de façon que}", q"{au point que}", q"{tant}", q"{tellement}"
		, q"{assez}", q"{trop}", q"{avant que}", q"{jusqu’à ce que}", q"{lorsque}", q"{quand}", q"{aussitôt que}"
		, q"{sitôt que}", q"{dès que}", q"{après que}", q"{pendant que}", q"{tant que}", q"{alors que}"
		, q"{tandis que}", q"{sans que}" ];

		return choice(strs, this.rnd);
	}

	override string wordInterjection() {
		const string[] strs =
		[ q"{ah}", q"{aïe}", q"{areu areu}", q"{atchoum}", q"{badaboum}", q"{bang}", q"{bè}", q"{blablabla}"
		, q"{bof}", q"{boum}", q"{broum}", q"{bzzz}", q"{chut}", q"{clac}", q"{coac coac}", q"{cocorico}"
		, q"{coin-coin}", q"{cot cot}", q"{crac}", q"{croâ}", q"{cuicui}", q"{ding}", q"{drelin}", q"{dring}"
		, q"{euh}", q"{glouglou}", q"{groin groin}", q"{grrr}", q"{ha}", q"{ha ha}", q"{hé}", q"{hi}", q"{meuh}"
		, q"{miam}", q"{miaou}", q"{oh}", q"{ouah}", q"{ouch}", q"{ouf}", q"{ouille}", q"{ouin}", q"{oups}", q"{paf}"
		, q"{pff}", q"{pin-pon}", q"{plic}", q"{plouf}", q"{prout}", q"{pschitt}", q"{psitt}", q"{ronron}"
		, q"{smack}", q"{snif}", q"{tchou tchouu}", q"{tic-tac}", q"{toc}", q"{toc-toc}", q"{tsoin-tsoin}"
		, q"{vlan}", q"{vouh}", q"{vroum}", q"{zzzz}" ];

		return choice(strs, this.rnd);
	}

	override string wordNoun() {
		const string[] strs =
		[ q"{cadre}", q"{fonctionnaire}", q"{commis de cuisine}", q"{adepte}", q"{diplomate}", q"{camarade}"
		, q"{actionnaire}", q"{jeune enfant}", q"{biathlète}", q"{responsable}", q"{chef de cuisine}"
		, q"{partenaire}", q"{collègue}", q"{adversaire}", q"{guide}", q"{commissionnaire}", q"{parlementaire}"
		, q"{diététiste}", q"{gestionnaire}", q"{chef}", q"{membre du personnel}", q"{antagoniste}"
		, q"{membre de l’équipe}", q"{spécialiste}", q"{prestataire de services}", q"{juriste}"
		, q"{hôte}", q"{membre titulaire}", q"{membre à vie}", q"{commis}", q"{porte-parole}", q"{secouriste}"
		, q"{athlète}", q"{triathlète}", q"{touriste}", q"{administration}", q"{conseil d’administration}"
		, q"{équipe de recherche}", q"{clientèle}", q"{concurrence}", q"{conseil municipal}"
		, q"{délégation}", q"{direction}", q"{électorat}", q"{personnel}", q"{corps enseignant}"
		, q"{équipe}", q"{communauté étudiante}", q"{gens}", q"{lectorat}", q"{mairie}", q"{patientèle}"
		, q"{police}", q"{présidence}", q"{personnel professionnel}", q"{population du Québec}"
		, q"{rectorat}", q"{rédaction}", q"{secours}", q"{foule}", q"{main-d’œuvre}" ];

		return choice(strs, this.rnd);
	}

	override string wordPreposition() {
		const string[] strs =
		[ q"{a}", q"{après}", q"{avant}", q"{avex}", q"{chez}", q"{concernant}", q"{contre}", q"{dans}", q"{de}"
		, q"{depuis}", q"{derrière}", q"{dès}", q"{devant}", q"{durant}", q"{en}", q"{entre}", q"{envers}"
		, q"{hormis}", q"{hors}", q"{jusque}", q"{malgré}", q"{moyennant}", q"{nonobstant}", q"{outre}"
		, q"{par}", q"{parmi}", q"{pendant}", q"{pour}", q"{près}", q"{sans}", q"{sauf}", q"{selon}", q"{sous}"
		, q"{suivant}", q"{sur}", q"{touchant}", q"{vers}", q"{via}", q"{à bas de}", q"{à cause de}"
		, q"{à côté de}", q"{à défaut de }", q"{afin de}", q"{à force de}", q"{à la merci}"
		, q"{à la faveur de}", q"{à l'égard de}", q"{à l'encontre de}", q"{à l'entour de}"
		, q"{à l'exception de}", q"{à l'instar de}", q"{à l'insu de}", q"{à même}", q"{à moins de}"
		, q"{à partir de}", q"{à raison de}", q"{à seule fin de}", q"{à travers}", q"{au-dedans de}"
		, q"{au défaut de}", q"{au-dehors}", q"{au-dessous de}", q"{au-dessus de}", q"{au lieu de}"
		, q"{au moyen de}", q"{auprès de}", q"{aux environs de}", q"{au prix de}", q"{autour de}"
		, q"{aux alentours de}", q"{au dépens de}", q"{avant de}", q"{d'après}", q"{d'avec}", q"{de façon à}"
		, q"{de la part de}", q"{de manière à}", q"{d'entre}", q"{de par}", q"{de peur de}", q"{du côté de}"
		, q"{en bas de}", q"{en decà de}", q"{en dedans de}", q"{en dehors de}", q"{en dépit de}"
		, q"{en face de}", q"{en faveur de}", q"{en guise de}", q"{en outre de}", q"{en plus de}"
		, q"{grâce à}", q"{hors de}", q"{loin de}", q"{lors de}", q"{par rapport à}", q"{par suite de}"
		, q"{près de}", q"{proche de}", q"{quant à}", q"{quitte à}", q"{sauf à}", q"{sous couleur de}"
		, q"{vis-à-vie de}" ];

		return choice(strs, this.rnd);
	}

	override string wordVerb() {
		const string[] strs =
		[ q"{être}", q"{avoir}", q"{faire}", q"{dire}", q"{voir}", q"{prendre}", q"{pouvoir}", q"{parler}"
		, q"{aller}", q"{savoir}", q"{donner}", q"{passer}", q"{mettre}", q"{partir}", q"{trouver}", q"{rire}"
		, q"{vivre}", q"{laisser}", q"{rendre}", q"{sourire}", q"{venir}", q"{comprendre}", q"{penser}"
		, q"{chercher}", q"{croire}", q"{entendre}", q"{tenir}", q"{demander}", q"{souvenir}", q"{attendre}"
		, q"{sortir}", q"{regarder}", q"{jouer}", q"{écrire}", q"{connaître}", q"{devenir}", q"{mourir}"
		, q"{rester}", q"{retrouver}", q"{entrer}", q"{manger}", q"{tomber}", q"{tirer}", q"{lire}", q"{suivre}"
		, q"{répondre}", q"{obtenir}", q"{perdre}", q"{expliquer}", q"{assurer}", q"{servir}", q"{porter}"
		, q"{montrer}", q"{étranger}", q"{éviter}", q"{arriver}", q"{vouloir}", q"{reconnaître}"
		, q"{monter}", q"{boire}", q"{oublier}", q"{poser}", q"{aimer}", q"{arrêter}", q"{sentir}", q"{atteindre}"
		, q"{revenir}", q"{devoir}", q"{changer}", q"{dormir}", q"{permettre}", q"{quitter}", q"{reprendre}"
		, q"{appeler}", q"{dîner}", q"{apprendre}", q"{empêcher}", q"{établir}", q"{travailler}"
		, q"{garder}", q"{marcher}", q"{imaginer}", q"{considérer}", q"{tendre}", q"{lever}", q"{tourner}"
		, q"{gagner}", q"{recevoir}", q"{revoir}", q"{aider}", q"{créer}", q"{découvrir}", q"{compter}"
		, q"{tuer}", q"{courir}", q"{rentrer}", q"{réaliser}", q"{toucher}", q"{finir}", q"{descendre}"
		, q"{ajouter}", q"{essayer}", q"{présenter}", q"{coucher}", q"{occuper}", q"{asseoir}", q"{payer}"
		, q"{jeter}", q"{définir}", q"{déjeuner}", q"{agir}", q"{choisir}", q"{distinguer}", q"{préparer}"
		, q"{apparaître}", q"{remettre}", q"{raconter}", q"{échapper}", q"{acheter}", q"{rejoindre}"
		, q"{battre}", q"{écouter}", q"{offrir}", q"{glisser}", q"{conduire}", q"{paraître}", q"{exprimer}"
		, q"{pleurer}", q"{étudier}", q"{retourner}", q"{accepter}", q"{défendre}", q"{maintenir}"
		, q"{rappeler}", q"{continuer}", q"{commencer}", q"{disparaître}", q"{produire}", q"{officier}"
		, q"{observer}", q"{apporter}", q"{former}", q"{admettre}", q"{retenir}", q"{fournir}", q"{déterminer}"
		, q"{pousser}", q"{rencontrer}", q"{fixer}", q"{construire}", q"{constater}", q"{remarquer}"
		, q"{cacher}", q"{développer}", q"{prévoir}", q"{préciser}", q"{réduire}", q"{constituer}"
		, q"{résoudre}", q"{crier}", q"{sauver}", q"{remonter}", q"{imposer}", q"{naître}", q"{envoyer}"
		, q"{souffrir}", q"{tenter}", q"{juger}", q"{bouger}", q"{exercer}", q"{intervenir}", q"{supporter}"
		, q"{mesurer}", q"{sauter}", q"{apercevoir}", q"{conserver}", q"{représenter}", q"{placer}"
		, q"{traiter}", q"{appliquer}", q"{remplacer}", q"{baiser}", q"{étendre}", q"{affirmer}", q"{mener}"
		, q"{satisfaire}", q"{réfléchir}", q"{chanter}", q"{vendre}", q"{traverser}", q"{fier}", q"{décider}"
		, q"{entraîner}", q"{avancer}", q"{refuser}", q"{abandonner}", q"{protéger}", q"{noter}", q"{remplir}"
		, q"{fermer}", q"{dégager}", q"{ramener}", q"{poursuivre}", q"{couper}", q"{embrasser}", q"{décrire}"
		, q"{répéter}", q"{organiser}", q"{vérifier}", q"{danser}", q"{espérer}", q"{frapper}", q"{avouer}"
		, q"{exister}", q"{accomplir}", q"{couler}", q"{élever}", q"{parvenir}", q"{arracher}", q"{citer}"
		, q"{provoquer}", q"{renoncer}", q"{approcher}", q"{lancer}", q"{séparer}", q"{transformer}"
		, q"{examiner}", q"{justifier}", q"{installer}", q"{respirer}", q"{rêver}", q"{prévenir}"
		, q"{taire}", q"{plancher}", q"{relever}", q"{livrer}", q"{pénétrer}", q"{détruire}", q"{rouler}"
		, q"{discuter}", q"{modifier}", q"{participer}", q"{régler}", q"{engager}", q"{employer}", q"{profiter}"
		, q"{envisager}", q"{concevoir}", q"{soutenir}", q"{promener}", q"{conclure}", q"{nourrir}"
		, q"{prouver}", q"{douter}", q"{laver}", q"{disposer}", q"{aboutir}", q"{dépasser}", q"{intéresser}"
		, q"{prononcer}", q"{apprécier}", q"{assister}", q"{rechercher}", q"{lutter}", q"{marquer}"
		, q"{effectuer}", q"{rompre}", q"{partager}", q"{supposer}", q"{accorder}", q"{casser}", q"{procéder}"
		, q"{convaincre}", q"{éloigner}", q"{emporter}", q"{augmenter}", q"{introduire}", q"{évoquer}"
		, q"{amener}", q"{enlever}", q"{désigner}", q"{franchir}", q"{écarter}", q"{réveiller}", q"{proposer}"
		, q"{calculer}", q"{diriger}", q"{posséder}", q"{retirer}", q"{voler}", q"{durer}", q"{crever}"
		, q"{résister}", q"{deviner}", q"{tromper}", q"{dresser}", q"{céder}", q"{prêter}", q"{craindre}"
		, q"{couvrir}", q"{ménager}", q"{traîner}", q"{cesser}", q"{traduire}", q"{confondre}", q"{aborder}"
		, q"{peindre}", q"{entreprendre}", q"{débarrasser}", q"{comparer}", q"{entretenir}", q"{plaindre}"
		, q"{amuser}", q"{attaquer}", q"{fabriquer}", q"{combattre}", q"{accroître}", q"{ignorer}"
		, q"{reposer}", q"{attirer}", q"{songer}", q"{opposer}", q"{emmener}", q"{visiter}", q"{améliorer}"
		, q"{annoncer}", q"{éprouver}", q"{accompagner}", q"{recommencer}", q"{conseiller}", q"{brûler}"
		, q"{adresser}", q"{adapter}", q"{prétendre}", q"{rapprocher}", q"{confier}", q"{indiquer}"
		, q"{nier}", q"{signaler}", q"{serrer}", q"{démontrer}", q"{réussir}", q"{soumettre}", q"{appuyer}"
		, q"{surveiller}", q"{prier}", q"{éclater}", q"{super}", q"{chasser}", q"{acquérir}", q"{endormir}"
		, q"{attribuer}", q"{souligner}", q"{épouser}", q"{adopter}", q"{interroger}", q"{éclairer}"
		, q"{révéler}", q"{limiter}", q"{demeurer}", q"{consacrer}", q"{faciliter}", q"{inventer}"
		, q"{libérer}", q"{ranger}", q"{plaire}", q"{goûter}", q"{boucher}", q"{communiquer}", q"{effacer}"
		, q"{exécuter}", q"{rocher}", q"{réunir}", q"{repartir}", q"{respecter}", q"{refaire}", q"{forcer}"
		, q"{interpréter}", q"{contrôler}", q"{vaincre}", q"{ficher}", q"{lâcher}", q"{trembler}"
		, q"{supprimer}", q"{identifier}", q"{opérer}", q"{diminuer}", q"{imiter}", q"{insister}", q"{manifester}"
		, q"{admirer}", q"{rétablir}", q"{filer}", q"{contenter}", q"{mêler}", q"{nommer}", q"{exposer}"
		, q"{écraser}", q"{achever}", q"{marier}", q"{jouir}", q"{surprendre}", q"{fondre}", q"{soulever}"
		, q"{allumer}", q"{dissimuler}", q"{briser}", q"{consulter}", q"{obéir}", q"{reconstituer}"
		, q"{enfoncer}", q"{analyser}", q"{éliminer}", q"{étonner}", q"{terminer}", q"{procurer}"
		, q"{peser}", q"{contempler}", q"{transporter}", q"{ressembler}", q"{classer}", q"{éteindre}"
		, q"{inscrire}", q"{déplacer}", q"{habiter}", q"{attacher}", q"{ramasser}", q"{sonner}", q"{accueillir}"
		, q"{substituer}", q"{soigner}", q"{déceler}", q"{fumer}", q"{arranger}", q"{parcourir}", q"{veiller}"
		, q"{claquer}", q"{reculer}", q"{publier}", q"{compléter}", q"{hésiter}", q"{téléphoner}"
		, q"{contenir}", q"{transmettre}", q"{dominer}", q"{causer}", q"{situer}", q"{détacher}", q"{fonctionner}"
		, q"{rassurer}", q"{avaler}", q"{associer}", q"{rassembler}", q"{saluer}", q"{briller}", q"{commander}"
		, q"{valoir}", q"{recueillir}", q"{reproduire}", q"{taper}", q"{mentir}", q"{isoler}", q"{multiplier}"
		, q"{rattraper}", q"{orienter}", q"{affronter}", q"{enseigner}", q"{user}", q"{falloir}", q"{enfermer}"
		, q"{dessiner}", q"{favoriser}", q"{retomber}", q"{pratiquer}", q"{recourir}", q"{abattre}"
		, q"{baisser}", q"{bénéficier}", q"{exiger}", q"{fonder}", q"{réparer}", q"{risquer}", q"{vider}"
		, q"{percevoir}", q"{comporter}", q"{accéder}", q"{composer}", q"{caresser}", q"{formuler}"
		, q"{prolonger}", q"{signer}", q"{varier}", q"{détourner}", q"{consoler}", q"{rapporter}", q"{éveiller}"
		, q"{calmer}", q"{regagner}", q"{survivre}", q"{renforcer}", q"{plonger}", q"{réclamer}", q"{ressortir}"
		, q"{attraper}", q"{négliger}", q"{figurer}", q"{chier}", q"{corriger}", q"{hurler}", q"{craquer}"
		, q"{préserver}", q"{récupérer}", q"{accrocher}", q"{grandir}", q"{reprocher}", q"{habiller}"
		, q"{tarder}", q"{déposer}", q"{assumer}", q"{évaluer}", q"{susciter}", q"{noyer}", q"{regretter}"
		, q"{remuer}", q"{exploiter}", q"{remercier}", q"{rejeter}", q"{déduire}", q"{charger}", q"{inviter}"
		, q"{échanger}", q"{appartenir}", q"{persuader}", q"{planter}", q"{percer}", q"{tracer}", q"{distraire}"
		, q"{bâtir}", q"{combler}", q"{guider}", q"{déranger}", q"{déclarer}", q"{inquiéter}", q"{plier}"
		, q"{interrompre}", q"{bouffer}", q"{secouer}", q"{entrevoir}", q"{souffler}", q"{souhaiter}"
		, q"{allonger}", q"{confirmer}", q"{discerner}", q"{réagir}", q"{grimper}", q"{pardonner}"
		, q"{repérer}", q"{presser}", q"{estimer}", q"{creuser}", q"{clocher}", q"{lier}", q"{boulanger}"
		, q"{verser}", q"{refermer}", q"{piquer}", q"{repousser}", q"{obliger}", q"{pencher}", q"{informer}"
		, q"{étouffer}", q"{conquérir}", q"{correspondre}", q"{déchiffrer}", q"{ressentir}", q"{sacrifier}"
		, q"{subsister}", q"{mordre}", q"{désirer}", q"{encourager}", q"{excuser}", q"{explorer}", q"{nettoyer}"
		, q"{coller}", q"{délivrer}", q"{gêner}", q"{avertir}", q"{ôter}", q"{élargir}", q"{intégrer}"
		, q"{renouveler}", q"{garantir}", q"{répandre}", q"{fouiller}", q"{oser}", q"{résumer}", q"{pisser}"
		, q"{interdire}", q"{venger}", q"{convenir}", q"{surmonter}", q"{rédiger}", q"{jaillir}", q"{contribuer}"
		, q"{emprunter}", q"{défiler}", q"{agiter}", q"{séduire}", q"{revivre}", q"{défaire}", q"{signifier}"
		, q"{flotter}", q"{concilier}", q"{croître}", q"{émettre}", q"{suffire}", q"{concentrer}"
		, q"{renverser}", q"{renvoyer}", q"{commettre}", q"{inspirer}", q"{chauffer}", q"{troubler}"
		, q"{balancer}", q"{enregistrer}", q"{mentionner}", q"{réserver}", q"{soucier}", q"{réchauffer}"
		, q"{élaborer}", q"{assimiler}", q"{dénoncer}", q"{voyager}", q"{précipiter}", q"{témoigner}"
		, q"{suggérer}", q"{embarquer}", q"{loger}", q"{régner}", q"{sécher}", q"{enrichir}", q"{distribuer}"
		, q"{essuyer}", q"{soupçonner}", q"{compenser}", q"{dissoudre}", q"{cueillir}", q"{progresser}"
		, q"{caractériser}", q"{grouper}", q"{manier}", q"{absorber}", q"{maîtriser}", q"{répartir}"
		, q"{compromettre}", q"{basculer}", q"{circuler}", q"{déclencher}", q"{pêcher}", q"{alimenter}"
		, q"{épargner}", q"{instruire}", q"{apaiser}", q"{remédier}", q"{accuser}", q"{cracher}", q"{enfiler}"
		, q"{heurter}", q"{souper}", q"{redresser}", q"{nager}", q"{ennuyer}", q"{envahir}", q"{coudre}"
		, q"{verger}", q"{évoluer}", q"{louer}", q"{préférer}", q"{repasser}", q"{soustraire}", q"{habituer}"
		, q"{baigner}", q"{consentir}", q"{condamner}", q"{négocier}", q"{guetter}", q"{protester}"
		, q"{reporter}", q"{sembler}", q"{vibrer}", q"{bondir}", q"{pendre}", q"{dissiper}", q"{moquer}"
		, q"{rattacher}", q"{trancher}", q"{voter}", q"{priver}", q"{atténuer}", q"{déchirer}", q"{murmurer}"
		, q"{triompher}", q"{pourvoir}", q"{repentir}", q"{exclure}", q"{édifier}", q"{enterrer}", q"{renseigner}"
		, q"{parer}", q"{ordonner}", q"{déployer}", q"{diviser}", q"{frotter}", q"{gratter}", q"{raisonner}"
		, q"{rigoler}", q"{tailler}", q"{relire}", q"{bavarder}", q"{capter}", q"{illustrer}", q"{mériter}"
		, q"{dérouler}", q"{émouvoir}", q"{revêtir}", q"{dérober}", q"{étaler}", q"{abriter}", q"{fréquenter}"
		, q"{promettre}", q"{passager}", q"{animer}", q"{approuver}", q"{blesser}", q"{célébrer}"
		, q"{cultiver}", q"{relier}", q"{dévorer}", q"{contester}", q"{hâter}", q"{résigner}", q"{vanter}"
		, q"{recouvrir}", q"{critiquer}", q"{conférer}", q"{croiser}", q"{doubler}", q"{qualifier}"
		, q"{réciter}", q"{restaurer}", q"{résulter}", q"{promouvoir}", q"{approfondir}", q"{gémir}"
		, q"{attarder}", q"{bûcher}", q"{combiner}", q"{succéder}", q"{abaisser}", q"{cogner}", q"{coordonner}"
		, q"{imprimer}", q"{accélérer}", q"{déshabiller}", q"{invoquer}", q"{jurer}", q"{mouiller}"
		, q"{ralentir}", q"{contraindre}", q"{préoccuper}", q"{dépenser}", q"{accumuler}", q"{déboucher}"
		, q"{siffler}", q"{restituer}", q"{retarder}", q"{décrocher}", q"{influencer}", q"{redouter}"
		, q"{entamer}", q"{généraliser}", q"{balayer}", q"{perfectionner}", q"{simplifier}", q"{épuiser}"
		, q"{épanouir}", q"{éclaircir}", q"{fendre}", q"{redevenir}", q"{soulager}", q"{consommer}"
		, q"{débarquer}", q"{décourager}", q"{engendrer}", q"{fêter}", q"{renaître}", q"{affranchir}"
		, q"{freiner}", q"{initier}", q"{racheter}", q"{raser}", q"{solliciter}", q"{dater}", q"{errer}"
		, q"{dépouiller}", q"{entourer}", q"{féliciter}", q"{honorer}", q"{accommoder}", q"{énumérer}"
		, q"{exciter}", q"{incliner}", q"{insérer}", q"{pleuvoir}", q"{tâcher}", q"{exploser}", q"{convertir}"
		, q"{viser}", q"{méconnaître}", q"{redire}", q"{nouer}", q"{rallier}", q"{aménager}", q"{débrouiller}"
		, q"{sombrer}", q"{proclamer}", q"{ressusciter}", q"{buter}", q"{découper}", q"{masquer}", q"{menacer}"
		, q"{mépriser}", q"{cerner}", q"{contrarier}", q"{mater}", q"{réjouir}", q"{virer}", q"{affecter}"
		, q"{dispenser}", q"{gouverner}", q"{renier}", q"{plaider}", q"{périr}", q"{gonfler}", q"{étrangler}"
		, q"{expédier}", q"{fourrer}", q"{hisser}", q"{inciter}", q"{photographier}", q"{puiser}", q"{redonner}"
		, q"{saigner}", q"{projeter}", q"{accentuer}", q"{exagérer}", q"{lasser}", q"{méditer}", q"{sauvegarder}"
		, q"{insulter}", q"{choir}", q"{emplir}", q"{pourrir}", q"{rembourser}", q"{abuser}", q"{décoller}"
		, q"{lécher}", q"{autoriser}", q"{frémir}", q"{gravir}", q"{tisser}", q"{débattre}", q"{dépendre}"
		, q"{cocher}", q"{compliquer}", q"{équilibrer}", q"{emmerder}", q"{détendre}", q"{rater}"
		, q"{plaisanter}", q"{copier}", q"{déborder}", q"{gâcher}", q"{contredire}", q"{reconstruire}"
		, q"{redescendre}", q"{abîmer}", q"{évacuer}", q"{aggraver}", q"{conformer}", q"{résonner}"
		, q"{grossir}", q"{hausser}", q"{administrer}", q"{dissocier}", q"{effondrer}", q"{pressentir}"
		, q"{prévaloir}", q"{chialer}", q"{coïncider}", q"{coûter}", q"{disputer}", q"{fusiller}"
		, q"{gueuler}", q"{différencier}", q"{équiper}", q"{foncer}", q"{modeler}", q"{recommander}"
		, q"{décharger}", q"{inspecter}", q"{aligner}", q"{énoncer}", q"{instituer}", q"{tousser}"
		, q"{violer}", q"{assigner}", q"{ébranler}", q"{émerger}", q"{gérer}", q"{planquer}", q"{référer}"
		, q"{réprimer}", q"{retracer}", q"{tâter}", q"{contourner}", q"{démarrer}", q"{effrayer}"
		, q"{frayer}", q"{liquider}", q"{camper}", q"{commenter}", q"{différer}", q"{semer}", q"{pater}"
		, q"{ranimer}", q"{sursauter}", q"{anéantir}", q"{retentir}", q"{barrer}", q"{confesser}", q"{confronter}"
		, q"{flatter}", q"{incarner}", q"{détester}", q"{regrouper}", q"{tremper}", q"{feindre}", q"{refroidir}"
		, q"{articuler}", q"{brouiller}", q"{doter}", q"{économiser}", q"{égarer}", q"{adhérer}"
		, q"{trier}", q"{attendrir}", q"{tordre}", q"{ramper}", q"{recruter}", q"{pointer}", q"{apprivoiser}"
		, q"{assassiner}", q"{aventurer}", q"{défier}", q"{détailler}", q"{envelopper}", q"{impressionner}"
		, q"{engloutir}", q"{restreindre}", q"{abolir}", q"{réconcilier}", q"{ruiner}", q"{amorcer}"
		, q"{corner}", q"{dériver}", q"{esquisser}", q"{incorporer}", q"{manipuler}", q"{disperser}"
		, q"{échouer}", q"{mélanger}", q"{replacer}", q"{rôder}", q"{ronfler}", q"{raccrocher}", q"{applaudir}"
		, q"{reparaître}", q"{aspirer}", q"{bousculer}", q"{détecter}", q"{dévoiler}", q"{excéder}"
		, q"{financer}", q"{afficher}", q"{collaborer}", q"{meubler}", q"{pallier}", q"{tolérer}", q"{rafraîchir}"
		, q"{fleurir}" ];

		return choice(strs, this.rnd);
	}

}

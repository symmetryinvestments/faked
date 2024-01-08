module faked.faker_it;

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

import faked.faker_en;

class Faker_it : Faker_en {
@safe:
	this(int seed) {
		super(seed);
	}

	override string companyAdjective() {
		const string[] strs =
		[ q"{24 ore}", q"{24/7}", q"{terza generazione}", q"{quarta generazione}", q"{quinta generazione}"
		, q"{sesta generazione}", q"{asimmetrica}", q"{asincrona}", q"{background}", q"{bi-direzionale}"
		, q"{biforcata}", q"{bottom-line}", q"{coerente}", q"{coesiva}", q"{composita}", q"{sensibile al contesto}"
		, q"{basta sul contesto}", q"{basata sul contenuto}", q"{dedicata}", q"{didattica}", q"{direzionale}"
		, q"{discreta}", q"{dinamica}", q"{eco-centrica}", q"{esecutiva}", q"{esplicita}", q"{full-range}"
		, q"{globale}", q"{euristica}", q"{alto livello}", q"{olistica}", q"{omogenea}", q"{ibrida}"
		, q"{impattante}", q"{incrementale}", q"{intangibile}", q"{interattiva}", q"{intermediaria}"
		, q"{locale}", q"{logistica}", q"{massimizzata}", q"{metodica}", q"{mission-critical}", q"{mobile}"
		, q"{modulare}", q"{motivazionale}", q"{multimedia}", q"{multi-tasking}", q"{nazionale}"
		, q"{neutrale}", q"{nextgeneration}", q"{non-volatile}", q"{object-oriented}", q"{ottima}"
		, q"{ottimizzante}", q"{radicale}", q"{real-time}", q"{reciproca}", q"{regionale}", q"{responsiva}"
		, q"{scalabile}", q"{secondaria}", q"{stabile}", q"{statica}", q"{sistematica}", q"{sistemica}"
		, q"{tangibile}", q"{terziaria}", q"{uniforme}", q"{valore aggiunto}" ];

		return choice(strs, this.rnd);
	}

	override string companyBuzzAdjective() {
		const string[] strs =
		[ q"{valore aggiunto}", q"{verticalizzate}", q"{proattive}", q"{forti}", q"{rivoluzionari}"
		, q"{scalabili}", q"{innovativi}", q"{intuitivi}", q"{strategici}", q"{e-business}", q"{mission-critical}"
		, q"{24/7}", q"{globali}", q"{B2B}", q"{B2C}", q"{granulari}", q"{virtuali}", q"{virali}", q"{dinamiche}"
		, q"{magnetiche}", q"{web}", q"{interattive}", q"{sexy}", q"{back-end}", q"{real-time}", q"{efficienti}"
		, q"{front-end}", q"{distributivi}", q"{estensibili}", q"{mondiali}", q"{open-source}", q"{cross-platform}"
		, q"{sinergiche}", q"{out-of-the-box}", q"{enterprise}", q"{integrate}", q"{di impatto}"
		, q"{wireless}", q"{trasparenti}", q"{next-generation}", q"{cutting-edge}", q"{visionari}"
		, q"{plug-and-play}", q"{collaborative}", q"{olistiche}", q"{ricche}" ];

		return choice(strs, this.rnd);
	}

	override string companyBuzzNoun() {
		const string[] strs =
		[ q"{partnerships}", q"{comunità}", q"{ROI}", q"{soluzioni}", q"{e-services}", q"{nicchie}", q"{tecnologie}"
		, q"{contenuti}", q"{supply-chains}", q"{convergenze}", q"{relazioni}", q"{architetture}"
		, q"{interfacce}", q"{mercati}", q"{e-commerce}", q"{sistemi}", q"{modelli}", q"{schemi}", q"{reti}"
		, q"{applicazioni}", q"{metriche}", q"{e-business}", q"{funzionalità}", q"{esperienze}"
		, q"{webservices}", q"{metodologie}" ];

		return choice(strs, this.rnd);
	}

	override string companyBuzzVerb() {
		const string[] strs =
		[ q"{implementate}", q"{utilizzo}", q"{integrate}", q"{ottimali}", q"{evolutive}", q"{abilitate}"
		, q"{reinventate}", q"{aggregate}", q"{migliorate}", q"{incentivate}", q"{monetizzate}", q"{sinergizzate}"
		, q"{strategiche}", q"{deploy}", q"{marchi}", q"{accrescitive}", q"{target}", q"{sintetizzate}"
		, q"{spedizioni}", q"{massimizzate}", q"{innovazione}", q"{guida}", q"{estensioni}", q"{generate}"
		, q"{exploit}", q"{transizionali}", q"{matrici}", q"{ricontestualizzate}" ];

		return choice(strs, this.rnd);
	}

	override string companyDescriptor() {
		const string[] strs =
		[ q"{adattiva}", q"{avanzata}", q"{migliorata}", q"{assimilata}", q"{automatizzata}", q"{bilanciata}"
		, q"{centralizzata}", q"{compatibile}", q"{configurabile}", q"{cross-platform}", q"{decentralizzata}"
		, q"{digitalizzata}", q"{distribuita}", q"{piccola}", q"{ergonomica}", q"{esclusiva}", q"{espansa}"
		, q"{estesa}", q"{fondamentale}", q"{orizzontale}", q"{implementata}", q"{innovativa}", q"{integrata}"
		, q"{intuitiva}", q"{inversa}", q"{gestita}", q"{obbligatoria}", q"{monitorata}", q"{multi-canale}"
		, q"{multi-laterale}", q"{open-source}", q"{operativa}", q"{ottimizzata}", q"{organica}"
		, q"{persistente}", q"{polarizzata}", q"{proattiva}", q"{programmabile}", q"{progressiva}"
		, q"{reattiva}", q"{riallineata}", q"{ricontestualizzata}", q"{ridotta}", q"{robusta}", q"{sicura}"
		, q"{condivisibile}", q"{stand-alone}", q"{switchabile}", q"{sincronizzata}", q"{sinergica}"
		, q"{totale}", q"{universale}", q"{user-friendly}", q"{versatile}", q"{virtuale}", q"{visionaria}" ];

		return choice(strs, this.rnd);
	}

	override string companyNamePattern() {
		final switch(uniform(0, 3, this.rnd)) {
			case 0: return personLastName() ~ " " ~ companySuffix();
			case 1: return personLastName() ~ "-" ~ personLastName() ~ " " ~ companySuffix();
			case 2: return personLastName() ~ ", " ~ personLastName() ~ " e " ~ personLastName() ~ " " ~ companySuffix();
		}
		return "";
	}

	override string companyNoun() {
		const string[] strs =
		[ q"{Abilità}", q"{Access}", q"{Adattatore}", q"{Algoritmo}", q"{Alleanza}", q"{Analizzatore}"
		, q"{Applicazione}", q"{Approccio}", q"{Architettura}", q"{Archivio}", q"{Intelligenza artificiale}"
		, q"{Array}", q"{Attitudine}", q"{Benchmark}", q"{Capacità}", q"{Sfida}", q"{Circuito}", q"{Collaborazione}"
		, q"{Complessità}", q"{Concetto}", q"{Conglomerato}", q"{Contingenza}", q"{Core}", q"{Database}"
		, q"{Data-warehouse}", q"{Definizione}", q"{Emulazione}", q"{Codifica}", q"{Criptazione}"
		, q"{Firmware}", q"{Flessibilità}", q"{Previsione}", q"{Frame}", q"{framework}", q"{Funzione}"
		, q"{Funzionalità}", q"{Interfaccia grafica}", q"{Hardware}", q"{Help-desk}", q"{Gerarchia}"
		, q"{Hub}", q"{Implementazione}", q"{Infrastruttura}", q"{Iniziativa}", q"{Installazione}"
		, q"{Set di istruzioni}", q"{Interfaccia}", q"{Soluzione internet}", q"{Intranet}", q"{Conoscenza base}"
		, q"{Matrici}", q"{Matrice}", q"{Metodologia}", q"{Middleware}", q"{Migrazione}", q"{Modello}"
		, q"{Moderazione}", q"{Monitoraggio}", q"{Moratoria}", q"{Rete}", q"{Architettura aperta}"
		, q"{Sistema aperto}", q"{Orchestrazione}", q"{Paradigma}", q"{Parallelismo}", q"{Policy}"
		, q"{Portale}", q"{Struttura di prezzo}", q"{Prodotto}", q"{Produttività}", q"{Progetto}"
		, q"{Proiezione}", q"{Protocollo}", q"{Servizio clienti}", q"{Software}", q"{Soluzione}"
		, q"{Standardizzazione}", q"{Strategia}", q"{Struttura}", q"{Successo}", q"{Sovrastruttura}"
		, q"{Supporto}", q"{Sinergia}", q"{Task-force}", q"{Finestra temporale}", q"{Strumenti}"
		, q"{Utilizzazione}", q"{Sito web}", q"{Forza lavoro}" ];

		return choice(strs, this.rnd);
	}

	override string companySuffix() {
		const string[] strs =
		[ q"{SPA}", q"{e figli}", q"{Group}", q"{s.r.l.}" ];

		return choice(strs, this.rnd);
	}

	override string internetDomainSuffix() {
		const string[] strs =
		[ q"{com}", q"{net}", q"{org}", q"{it}" ];

		return choice(strs, this.rnd);
	}

	override string internetFreeEmail() {
		const string[] strs =
		[ q"{gmail.com}", q"{yahoo.com}", q"{hotmail.com}", q"{email.it}", q"{libero.it}", q"{yahoo.it}" ];

		return choice(strs, this.rnd);
	}

	override string locationBuildingNumber() {
		const string[] strs =
		[ q"{###}", q"{##}", q"{#}" ];

		return numberBuild(choice(strs, this.rnd));
	}

	override string locationCityName() {
		const string[] strs =
		[ q"{Agliè}", q"{Andezeno}", q"{Barbania}", q"{Brosso}", q"{Buriasco}", q"{Caluso}", q"{Cantoira}"
		, q"{Carmagnola}", q"{Cavour}", q"{Chiaverano}", q"{Ciconio}", q"{Coazze}", q"{Cumiana}", q"{Feletto}"
		, q"{Front}", q"{Giaveno}", q"{Grugliasco}", q"{Lauriano}", q"{Locana}", q"{Lusigliè}", q"{Mathi}"
		, q"{Mompantero}", q"{Nichelino}", q"{Novalesa}", q"{Oulx}", q"{Perrero}", q"{Pinerolo}", q"{Pomaretto}"
		, q"{Pramollo}", q"{Quassolo}", q"{Rivara}", q"{Rondissone}", q"{Rueglio}", q"{Santena}", q"{Sparone}"
		, q"{Usseaux}", q"{Varisella}", q"{Vidracco}", q"{Vinovo}", q"{Volvera}", q"{Balocco}", q"{Campertogno}"
		, q"{Cervatto}", q"{Cravagliana}", q"{Formigliana}", q"{Lamporo}", q"{Moncrivello}", q"{Pila}"
		, q"{Rassa}", q"{Rossa}", q"{Scopa}", q"{Valduggia}", q"{Vocca}", q"{Biandrate}", q"{Briona}", q"{Comignago}"
		, q"{Galliate}", q"{Invorio}", q"{Mezzomerico}", q"{Pisano}", q"{Sillavengo}", q"{Terdobbiate}"
		, q"{Vinzaglio}", q"{Alto}", q"{Barge}", q"{Benevello}", q"{Bosia}", q"{Brondello}", q"{Canosio}"
		, q"{Cartignano}", q"{Castino}", q"{Cervere}", q"{Clavesana}", q"{Demonte}", q"{Envie}", q"{Frassino}"
		, q"{Gorzegno}", q"{Isasca}", q"{Macra}", q"{Marmora}", q"{Montanera}", q"{Murello}", q"{Nucetto}"
		, q"{Pagno}", q"{Peveragno}", q"{Pocapaglia}", q"{Revello}", q"{Robilante}", q"{Roddi}", q"{Saliceto}"
		, q"{Sanfrè}", q"{Sinio}", q"{Treiso}", q"{Venasca}", q"{Vignolo}", q"{Albugnano}", q"{Bruno}"
		, q"{Canelli}", q"{Castell'Alfero}", q"{Coazzolo}", q"{Cortazzone}", q"{Fontanile}", q"{Maretto}"
		, q"{Monale}", q"{Quaranti}", q"{Scurzolengo}", q"{Tigliole}", q"{Viale}", q"{Balzola}", q"{Bosio}"
		, q"{Carezzano}", q"{Casasco}", q"{Cereseto}", q"{Dernice}", q"{Frugarolo}", q"{Giarole}", q"{Lerma}"
		, q"{Molare}", q"{Montaldeo}", q"{Mornese}", q"{Ottiglio}", q"{Pasturana}", q"{Prasco}", q"{Rivarone}"
		, q"{Solero}", q"{Terruggia}", q"{Trisobbio}", q"{Villalvernia}", q"{Bioglio}", q"{Camburzano}"
		, q"{Cerrione}", q"{Donato}", q"{Magnano}", q"{Mottalciata}", q"{Piedicavallo}", q"{Pray}", q"{Tollegno}"
		, q"{Verrone}", q"{Lessona}", q"{Baceno}", q"{Bognanco}", q"{Caprezzo}", q"{Crodo}", q"{Ghiffa}"
		, q"{Macugnaga}", q"{Miazzina}", q"{Omegna}", q"{Premia}", q"{Trasquera}", q"{Allein}", q"{Avise}"
		, q"{Brissogne}", q"{Chamois}", q"{Cogne}", q"{Etroubles}", q"{Gressan}", q"{Issime}", q"{Morgex}"
		, q"{Pollein}", q"{Quart}", q"{Saint-Denis}", q"{Saint-Rhémy-en-Bosses}", q"{Valpelline}"
		, q"{Villeneuve}", q"{Azzate}", q"{Besnate}", q"{Bregano}", q"{Brusimpiano}", q"{Caravate}"
		, q"{Castelseprio}", q"{Clivio}", q"{Cugliate-Fabiasco}", q"{Dumenza}", q"{Gemonio}", q"{Inarzo}"
		, q"{Luino}", q"{Marnate}", q"{Morazzone}", q"{Saltrio}", q"{Ternate}", q"{Albiolo}", q"{Barni}"
		, q"{Bregnano}", q"{Cabiate}", q"{Carbonate}", q"{Cavargna}", q"{Dizzasco}", q"{Faloppio}", q"{Guanzate}"
		, q"{Lasnigo}", q"{Luisago}", q"{Moltrasio}", q"{Musso}", q"{Pigra}", q"{Pusiano}", q"{Schignano}"
		, q"{Torno}", q"{Zelbio}", q"{Aprica}", q"{Caiolo}", q"{Chiavenna}", q"{Dazio}", q"{Gordona}", q"{Livigno}"
		, q"{Morbegno}", q"{Poggiridenti}", q"{Sernio}", q"{Tartano}", q"{Valdidentro}", q"{Abbiategrasso}"
		, q"{Binasco}", q"{Buscate}", q"{Carpiano}", q"{Cisliano}", q"{Corsico}", q"{Gaggiano}", q"{Inzago}"
		, q"{Magenta}", q"{Melzo}", q"{Nosate}", q"{Pantigliate}", q"{Rescaldina}", q"{Sedriano}", q"{Tribiano}"
		, q"{Vignate}", q"{Albino}", q"{Ardesio}", q"{Barbata}", q"{Bossico}", q"{Brumano}", q"{Capizzone}"
		, q"{Cerete}", q"{Colzate}", q"{Cusio}", q"{Fontanella}", q"{Gandosso}", q"{Gorno}", q"{Lallio}"
		, q"{Martinengo}", q"{Mozzo}", q"{Pagazzano}", q"{Parzanica}", q"{Piazzatorre}", q"{Pradalunga}"
		, q"{Ranica}", q"{Rovetta}", q"{Selvino}", q"{Sovere}", q"{Taleggio}", q"{Valbondione}", q"{Valtorta}"
		, q"{Viadanica}", q"{Zogno}", q"{Acquafredda}", q"{Artogne}", q"{Berlingo}", q"{Botticino}"
		, q"{Breno}", q"{Calvisano}", q"{Castelcovati}", q"{Cellatica}", q"{Cigole}", q"{Cologne}", q"{Edolo}"
		, q"{Gambara}", q"{Gottolengo}", q"{Iseo}", q"{Lograto}", q"{Maclodio}", q"{Manerbio}", q"{Milzano}"
		, q"{Muscoline}", q"{Odolo}", q"{Ospitaletto}", q"{Passirano}", q"{Poncarale}", q"{Preseglie}"
		, q"{Sellero}", q"{Sulzano}", q"{Trenzano}", q"{Piancogno}", q"{Barbianello}", q"{Borgarello}"
		, q"{Calvignano}", q"{Casteggio}", q"{Cervesina}", q"{Copiano}", q"{Fortunago}", q"{Garlasco}"
		, q"{Langosco}", q"{Lungavilla}", q"{Menconico}", q"{Nicorvo}", q"{Retorbido}", q"{Rosasco}"
		, q"{Sommo}", q"{Vidigulfo}", q"{Zerbo}", q"{Azzanello}", q"{Capergnanica}", q"{Castelleone}"
		, q"{Crema}", q"{Fiesco}", q"{Grontardo}", q"{Montodine}", q"{Pandino}", q"{Ricengo}", q"{Soresina}"
		, q"{Tornata}", q"{Voltido}", q"{Casalromano}", q"{Commessaggio}", q"{Gonzaga}", q"{Marmirolo}"
		, q"{Ostiglia}", q"{Quistello}", q"{Sabbioneta}", q"{Viadana}", q"{Barzago}", q"{Bulciago}"
		, q"{Casatenovo}", q"{Cremeno}", q"{Erve}", q"{Merate}", q"{Morterone}", q"{Pagnona}", q"{Premana}"
		, q"{Sirtori}", q"{Valmadrera}", q"{Codogno}", q"{Galgagnano}", q"{Maccastorna}", q"{Meleti}"
		, q"{Sordio}", q"{Barlassina}", q"{Briosco}", q"{Concorezzo}", q"{Lesmo}", q"{Renate}", q"{Triuggio}"
		, q"{Caponago}", q"{Avelengo}", q"{Brennero}", q"{Castelbello-Ciardes}", q"{Dobbiaco}", q"{Gais}"
		, q"{Laion}", q"{Luson}", q"{Merano}", q"{Naz-Sciaves}", q"{Plaus}", q"{Rasun-Anterselva}", q"{Scena}"
		, q"{Stelvio}", q"{Tirolo}", q"{Vandoies}", q"{Vipiteno}", q"{Andalo}", q"{Bieno}", q"{Caldes}"
		, q"{Capriana}", q"{Cavareno}", q"{Cis}", q"{Dambel}", q"{Fierozzo}", q"{Giustino}", q"{Lavis}"
		, q"{Massimeno}", q"{Mezzolombardo}", q"{Nogaredo}", q"{Pinzolo}", q"{Ronzone}", q"{Sanzeno}"
		, q"{Sover}", q"{Storo}", q"{Terragnolo}", q"{Trambileno}", q"{Vignola-Falesina}", q"{Altavalle}"
		, q"{Novella}", q"{Belfiore}", q"{Buttapietra}", q"{Concamarise}", q"{Garda}", q"{Legnago}"
		, q"{Oppeano}", q"{Roncà}", q"{Sommacampagna}", q"{Trevenzuolo}", q"{Zevio}", q"{Altissimo}"
		, q"{Breganze}", q"{Caltrano}", q"{Castegnero}", q"{Creazzo}", q"{Gallio}", q"{Longare}", q"{Montegaldella}"
		, q"{Orgiano}", q"{Roana}", q"{Santorso}", q"{Solagna}", q"{Trissino}", q"{Villaverla}", q"{Valbrenta}"
		, q"{Gosaldo}", q"{Sospirolo}", q"{Casier}", q"{Codognè}", q"{Fontanelle}", q"{Loria}", q"{Montebelluna}"
		, q"{Paese}", q"{Preganziol}", q"{Sarmede}", q"{Vedelago}", q"{Cavarzere}", q"{Eraclea}", q"{Martellago}"
		, q"{Pianiga}", q"{Spinea}", q"{Agna}", q"{Barbona}", q"{Campodarsego}", q"{Cartura}", q"{Conselve}"
		, q"{Gazzo}", q"{Loreggia}", q"{Monselice}", q"{Ponso}", q"{Saccolongo}", q"{Stanghella}", q"{Tribano}"
		, q"{Vigonza}", q"{Calto}", q"{Ceneselli}", q"{Gaiba}", q"{Melara}", q"{Rosolina}", q"{Villadose}"
		, q"{Artegna}", q"{Bordano}", q"{Cassacco}", q"{Comeglians}", q"{Enemonzo}", q"{Grimacco}", q"{Mortegliano}"
		, q"{Pagnacco}", q"{Pontebba}", q"{Premariacco}", q"{Ravascletto}", q"{Rigolato}", q"{Sedegliano}"
		, q"{Talmassons}", q"{Torreano}", q"{Varmo}", q"{Sappada}", q"{Monfalcone}", q"{Turriaco}", q"{Brugnera}"
		, q"{Claut}", q"{Fontanafredda}", q"{Porcia}", q"{Spilimbergo}", q"{Airole}", q"{Bajardo}", q"{Castellaro}"
		, q"{Chiusavecchia}", q"{Dolcedo}", q"{Ospedaletti}", q"{Pontedassio}", q"{Sanremo}", q"{Triora}"
		, q"{Vessalico}", q"{Arnasco}", q"{Bormida}", q"{Ceriale}", q"{Giustenice}", q"{Mallare}", q"{Nasino}"
		, q"{Pallare}", q"{Roccavignale}", q"{Stellanello}", q"{Vendone}", q"{Bogliasco}", q"{Carasco}"
		, q"{Cogoleto}", q"{Fontanigorda}", q"{Lorsica}", q"{Mignanego}", q"{Rapallo}", q"{Rovegno}"
		, q"{Torriglia}", q"{Zoagli}", q"{Framura}", q"{Pignone}", q"{Zignago}", q"{Bobbio}", q"{Cerignale}"
		, q"{Gazzola}", q"{Rottofreno}", q"{Zerba}", q"{Bore}", q"{Compiano}", q"{Fontevivo}", q"{Palanzano}"
		, q"{Terenzo}", q"{Varsi}", q"{Brescello}", q"{Castellarano}", q"{Gattatico}", q"{Poviglio}"
		, q"{Toano}", q"{Bomporto}", q"{Fanano}", q"{Maranello}", q"{Montefiorino}", q"{Polinago}", q"{Sestola}"
		, q"{Argelato}", q"{Camugnano}", q"{Fontanelice}", q"{Marzabotto}", q"{Valsamoggia}", q"{Comacchio}"
		, q"{Tresignana}", q"{Conselice}", q"{Cesena}", q"{Modigliana}", q"{Sarsina}", q"{Gemmano}"
		, q"{Saludecio}", q"{Pennabilli}", q"{Comano}", q"{Montignoso}", q"{Zeri}", q"{Capannori}", q"{Massarosa}"
		, q"{Pietrasanta}", q"{Agliana}", q"{Montale}", q"{Uzzano}", q"{Empoli}", q"{Impruneta}", q"{Pelago}"
		, q"{Signa}", q"{Capoliveri}", q"{Piombino}", q"{Bientina}", q"{Cascina}", q"{Montescudaio}"
		, q"{Ponsacco}", q"{Vicopisano}", q"{Bucine}", q"{Lucignano}", q"{Monteriggioni}", q"{Poggibonsi}"
		, q"{Sinalunga}", q"{Campagnatico}", q"{Gavorrano}", q"{Pitigliano}", q"{Montemurlo}", q"{Bettona}"
		, q"{Collazzone}", q"{Gubbio}", q"{Norcia}", q"{Pietralunga}", q"{Sigillo}", q"{Trevi}", q"{Allerona}"
		, q"{Baschi}", q"{Guardea}", q"{Narni}", q"{Porano}", q"{Fermignano}", q"{Lunano}", q"{Montefelcino}"
		, q"{Petriano}", q"{Sassofeltrio}", q"{Vallefoglia}", q"{Camerano}", q"{Corinaldo}", q"{Jesi}"
		, q"{Montemarciano}", q"{Polverigi}", q"{Staffolo}", q"{Caldarola}", q"{Colmurano}", q"{Gagliole}"
		, q"{Montecassiano}", q"{Muccia}", q"{Sarnano}", q"{Urbisaglia}", q"{Castignano}", q"{Force}"
		, q"{Montegallo}", q"{Ripatransone}", q"{Altidona}", q"{Grottazzolina}", q"{Montegranaro}"
		, q"{Ortezzano}", q"{Smerillo}", q"{Bomarzo}", q"{Capranica}", q"{Corchiano}", q"{Graffignano}"
		, q"{Monterosi}", q"{Proceno}", q"{Tuscania}", q"{Vetralla}", q"{Amatrice}", q"{Cantalice}"
		, q"{Collegiove}", q"{Cottanello}", q"{Leonessa}", q"{Montebuono}", q"{Selci}", q"{Vacone}"
		, q"{Ariccia}", q"{Canterano}", q"{Ciciliano}", q"{Formello}", q"{Gorga}", q"{Licenza}", q"{Mentana}"
		, q"{Moricone}", q"{Nettuno}", q"{Pomezia}", q"{Saracinesco}", q"{Vallepietra}", q"{Zagarolo}"
		, q"{Fiumicino}", q"{Pontinia}", q"{Sabaudia}", q"{Terracina}", q"{Alvito}", q"{Arnara}", q"{Casalattico}"
		, q"{Ceccano}", q"{Esperia}", q"{Fontechiari}", q"{Morolo}", q"{Picinisco}", q"{Ripi}", q"{Settefrati}"
		, q"{Terelle}", q"{Vallerotonda}", q"{Aielli}", q"{Barete}", q"{Calascio}", q"{Capistrello}"
		, q"{Castellafiume}", q"{Introdacqua}", q"{Navelli}", q"{Ortucchio}", q"{Pescina}", q"{Rivisondoli}"
		, q"{Scoppito}", q"{Trasacco}", q"{Arsita}", q"{Campli}", q"{Cermignano}", q"{Cortino}", q"{Notaresco}"
		, q"{Alanno}", q"{Civitaquana}", q"{Farindola}", q"{Nocciano}", q"{Picciano}", q"{Salle}", q"{Vicoli}"
		, q"{Atessa}", q"{Casacanditella}", q"{Castelguidone}", q"{Crecchio}", q"{Fraine}", q"{Gessopalena}"
		, q"{Lentella}", q"{Monteferrante}", q"{Orsogna}", q"{Palombaro}", q"{Poggiofiorito}", q"{Roccamontepiano}"
		, q"{Tollo}", q"{Vacri}", q"{Fallo}", q"{Casacalenda}", q"{Guardiaregia}", q"{Lucito}", q"{Monacilioni}"
		, q"{Oratino}", q"{Portocannone}", q"{Roccavivara}", q"{Tavenna}", q"{Ururi}", q"{Filignano}"
		, q"{Macchiagodena}", q"{Pescolanciano}", q"{Roccamandolfi}", q"{Venafro}", q"{Aversa}", q"{Capodrise}"
		, q"{Casaluce}", q"{Ciorlano}", q"{Francolise}", q"{Liberi}", q"{Parete}", q"{Pratella}", q"{Succivo}"
		, q"{Casapesenna}", q"{Arpaia}", q"{Bucciano}", q"{Castelpagano}", q"{Circello}", q"{Forchia}"
		, q"{Montesarchio}", q"{Paupisi}", q"{Puglianello}", q"{Vitulano}", q"{Arzano}", q"{Caivano}"
		, q"{Casamarciano}", q"{Cicciano}", q"{Frattamaggiore}", q"{Liveri}", q"{Nola}", q"{Portici}"
		, q"{Ercolano}", q"{Saviano}", q"{Andretta}", q"{Baiano}", q"{Calitri}", q"{Castelfranci}", q"{Domicella}"
		, q"{Gesualdo}", q"{Lapio}", q"{Mercogliano}", q"{Montella}", q"{Nusco}", q"{Quadrelle}", q"{Senerchia}"
		, q"{Sturno}", q"{Torrioni}", q"{Venticano}", q"{Agropoli}", q"{Aquara}", q"{Battipaglia}", q"{Caggiano}"
		, q"{Cannalonga}", q"{Ceraso}", q"{Corbara}", q"{Futani}", q"{Laurito}", q"{Montecorice}", q"{Padula}"
		, q"{Perito}", q"{Polla}", q"{Ravello}", q"{Rofrano}", q"{Sapri}", q"{Serramezzana}", q"{Torchiara}"
		, q"{Valva}", q"{Apricena}", q"{Carlantino}", q"{Faeto}", q"{Manfredonia}", q"{Serracapriola}"
		, q"{Vieste}", q"{Alberobello}", q"{Bitonto}", q"{Conversano}", q"{Molfetta}", q"{Putignano}"
		, q"{Turi}", q"{Crispiano}", q"{Laterza}", q"{Massafra}", q"{Palagianello}", q"{Cisternino}"
		, q"{Oria}", q"{Alliste}", q"{Collepasso}", q"{Diso}", q"{Giurdignano}", q"{Lizzanello}", q"{Melendugno}"
		, q"{Neviano}", q"{Palmariggi}", q"{Ruffano}", q"{Seclì}", q"{Sternatia}", q"{Taviano}", q"{Ugento}"
		, q"{Presicce-Acquarica}", q"{Trani}", q"{Armento}", q"{Baragiano}", q"{Calvera}", q"{Castelmezzano}"
		, q"{Fardella}", q"{Latronico}", q"{Marsicovetere}", q"{Montemilone}", q"{Picerno}", q"{Rapolla}"
		, q"{Rotonda}", q"{Spinoso}", q"{Trecchina}", q"{Ginestra}", q"{Calciano}", q"{Garaguso}", q"{Pomarico}"
		, q"{Tursi}", q"{Aieta}", q"{Amendolara}", q"{Bocchigliero}", q"{Campana}", q"{Castrolibero}"
		, q"{Cerisano}", q"{Cleto}", q"{Diamante}", q"{Fuscaldo}", q"{Lattarico}", q"{Maierà}", q"{Marzi}"
		, q"{Mottafollone}", q"{Panettieri}", q"{Pietrafitta}", q"{Rose}", q"{Scigliano}", q"{Verbicaro}"
		, q"{Amaroni}", q"{Belcastro}", q"{Conflenti}", q"{Decollatura}", q"{Girifalco}", q"{Maida}"
		, q"{Montauro}", q"{Petrizzi}", q"{Squillace}", q"{Zagarise}", q"{Bagaladi}", q"{Bovalino}"
		, q"{Canolo}", q"{Ciminà}", q"{Delianuova}", q"{Giffone}", q"{Maropati}", q"{Monasterace}"
		, q"{Platì}", q"{Roghudi}", q"{Seminara}", q"{Stignano}", q"{Carfizzi}", q"{Mesoraca}", q"{Strongoli}"
		, q"{Briatico}", q"{Dinami}", q"{Filogaso}", q"{Limbadi}", q"{Nicotera}", q"{Ricadi}", q"{Spadola}"
		, q"{Vazzano}", q"{Calatafimi-Segesta}", q"{Gibellina}", q"{Poggioreale}", q"{Vita}", q"{Aliminusa}"
		, q"{Bisacquino}", q"{Caltavuturo}", q"{Castelbuono}", q"{Cinisi}", q"{Lascari}", q"{Montelepre}"
		, q"{Roccamena}", q"{Trabia}", q"{Villabate}", q"{Antillo}", q"{Castell'Umberto}", q"{Falcone}"
		, q"{Frazzanò}", q"{Graniti}", q"{Limina}", q"{Mandanici}", q"{Mistretta}", q"{Patti}", q"{Roccafiorita}"
		, q"{Savoca}", q"{Tortorici}", q"{Venetico}", q"{Bivona}", q"{Cammarata}", q"{Comitini}", q"{Montallegro}"
		, q"{Ravanusa}", q"{Bompensiere}", q"{Gela}", q"{Mussomeli}", q"{Sommatino}", q"{Assoro}", q"{Cerami}"
		, q"{Pietraperzia}", q"{Calatabiano}", q"{Linguaglossa}", q"{Mineo}", q"{Pedara}", q"{Sant'Alfio}"
		, q"{Vizzini}", q"{Comiso}", q"{Buccheri}", q"{Floridia}", q"{Pachino}", q"{Aggius}", q"{Banari}"
		, q"{Bono}", q"{Buddusò}", q"{Cargeghe}", q"{Cossoine}", q"{Ittireddu}", q"{Mara}", q"{Nule}"
		, q"{Osilo}", q"{Pattada}", q"{Romana}", q"{Sennori}", q"{Torralba}", q"{Telti}", q"{Stintino}"
		, q"{Atzara}", q"{Bitti}", q"{Dorgali}", q"{Gairo}", q"{Irgoli}", q"{Loculi}", q"{Mamoiada}", q"{Olzai}"
		, q"{Orgosolo}", q"{Osidda}", q"{Posada}", q"{Sorgono}", q"{Tonara}", q"{Urzulei}", q"{Quartucciu}"
		, q"{Albagiara}", q"{Assolo}", q"{Bidonì}", q"{Cuglieri}", q"{Gonnostramatza}", q"{Mogoro}"
		, q"{Nurachi}", q"{Paulilatino}", q"{Seneghe}", q"{Simala}", q"{Sorradile}", q"{Uras}", q"{Siapiccia}"
		, q"{Laconi}", q"{Suni}", q"{Barrali}", q"{Carbonia}", q"{Dolianova}", q"{Esterzili}", q"{Gergei}"
		, q"{Gonnesa}", q"{Iglesias}", q"{Monastir}", q"{Nurallao}", q"{Ortacesus}", q"{Portoscuso}"
		, q"{Santadi}", q"{Senorbì}", q"{Setzu}", q"{Silius}", q"{Tuili}", q"{Villacidro}", q"{Villaperuccio}"
		, q"{Villaspeciosa}" ];

		return choice(strs, this.rnd);
	}

	override string locationCityPattern() {
		final switch(uniform(0, 5, this.rnd)) {
			case 0: return locationCityPrefix() ~ " " ~ personFirstName() ~ " " ~ locationCitySuffix();
			case 1: return locationCityPrefix() ~ " " ~ personFirstName();
			case 2: return personFirstName() ~ " " ~ locationCitySuffix();
			case 3: return personLastName() ~ " " ~ locationCitySuffix();
			case 4: return locationCityName();
		}
		return "";
	}

	override string locationCityPrefix() {
		const string[] strs =
		[ q"{San}", q"{Borgo}", q"{Sesto}", q"{Quarto}", q"{Settimo}" ];

		return choice(strs, this.rnd);
	}

	override string locationCitySuffix() {
		const string[] strs =
		[ q"{a mare}", q"{lido}", q"{ligure}", q"{del friuli}", q"{salentino}", q"{calabro}", q"{veneto}"
		, q"{nell'emilia}", q"{umbro}", q"{laziale}", q"{terme}", q"{sardo}" ];

		return choice(strs, this.rnd);
	}

	override string locationCountry() {
		const string[] strs =
		[ q"{Afghanistan}", q"{Albania}", q"{Algeria}", q"{American Samoa}", q"{Andorra}", q"{Angola}"
		, q"{Anguilla}", q"{Antartide (territori a sud del 60° parallelo)}", q"{Antigua e Barbuda}"
		, q"{Argentina}", q"{Armenia}", q"{Aruba}", q"{Australia}", q"{Austria}", q"{Azerbaijan}", q"{Bahamas}"
		, q"{Bahrain}", q"{Bangladesh}", q"{Barbados}", q"{Bielorussia}", q"{Belgio}", q"{Belize}", q"{Benin}"
		, q"{Bermuda}", q"{Bhutan}", q"{Bolivia}", q"{Bosnia e Herzegovina}", q"{Botswana}", q"{Bouvet Island (Bouvetoya)}"
		, q"{Brasile}", q"{Territorio dell'arcipelago indiano}", q"{Isole Vergini Britanniche}"
		, q"{Brunei Darussalam}", q"{Bulgaria}", q"{Burkina Faso}", q"{Burundi}", q"{Cambogia}", q"{Cameroon}"
		, q"{Canada}", q"{Capo Verde}", q"{Isole Cayman}", q"{Repubblica Centrale Africana}", q"{Chad}"
		, q"{Cile}", q"{Cina}", q"{Isola di Pasqua}", q"{Isola di Cocos (Keeling)}", q"{Colombia}"
		, q"{Comoros}", q"{Congo}", q"{Isole Cook}", q"{Costa Rica}", q"{Costa d'Avorio}", q"{Croazia}"
		, q"{Cuba}", q"{Cipro}", q"{Repubblica Ceca}", q"{Danimarca}", q"{Gibuti}", q"{Repubblica Dominicana}"
		, q"{Equador}", q"{Egitto}", q"{El Salvador}", q"{Guinea Equatoriale}", q"{Eritrea}", q"{Estonia}"
		, q"{Etiopia}", q"{Isole Faroe}", q"{Isole Falkland (Malvinas)}", q"{Fiji}", q"{Finlandia}"
		, q"{Francia}", q"{Guyana Francese}", q"{Polinesia Francese}", q"{Territori Francesi del sud}"
		, q"{Gabon}", q"{Gambia}", q"{Georgia}", q"{Germania}", q"{Ghana}", q"{Gibilterra}", q"{Grecia}"
		, q"{Groenlandia}", q"{Grenada}", q"{Guadalupa}", q"{Guam}", q"{Guatemala}", q"{Guernsey}", q"{Guinea}"
		, q"{Guinea-Bissau}", q"{Guyana}", q"{Haiti}", q"{Heard Island and McDonald Islands}"
		, q"{Città del Vaticano}", q"{Honduras}", q"{Hong Kong}", q"{Ungheria}", q"{Islanda}", q"{India}"
		, q"{Indonesia}", q"{Iran}", q"{Iraq}", q"{Irlanda}", q"{Isola di Man}", q"{Israele}", q"{Italia}"
		, q"{Giamaica}", q"{Giappone}", q"{Jersey}", q"{Giordania}", q"{Kazakhstan}", q"{Kenya}", q"{Kiribati}"
		, q"{Korea}", q"{Kuwait}", q"{Republicca Kirgiza}", q"{Repubblica del Laos}", q"{Latvia}"
		, q"{Libano}", q"{Lesotho}", q"{Liberia}", q"{Libyan Arab Jamahiriya}", q"{Liechtenstein}"
		, q"{Lituania}", q"{Lussemburgo}", q"{Macao}", q"{Macedonia}", q"{Madagascar}", q"{Malawi}"
		, q"{Malesia}", q"{Maldive}", q"{Mali}", q"{Malta}", q"{Isole Marshall}", q"{Martinica}", q"{Mauritania}"
		, q"{Mauritius}", q"{Mayotte}", q"{Messico}", q"{Micronesia}", q"{Moldova}", q"{Principato di Monaco}"
		, q"{Mongolia}", q"{Montenegro}", q"{Montserrat}", q"{Marocco}", q"{Mozambico}", q"{Myanmar}"
		, q"{Namibia}", q"{Nauru}", q"{Nepal}", q"{Antille Olandesi}", q"{Olanda}", q"{Nuova Caledonia}"
		, q"{Nuova Zelanda}", q"{Nicaragua}", q"{Niger}", q"{Nigeria}", q"{Niue}", q"{Isole Norfolk}"
		, q"{Northern Mariana Islands}", q"{Norvegia}", q"{Oman}", q"{Pakistan}", q"{Palau}", q"{Palestina}"
		, q"{Panama}", q"{Papua Nuova Guinea}", q"{Paraguay}", q"{Peru}", q"{Filippine}", q"{Pitcairn Islands}"
		, q"{Polonia}", q"{Portogallo}", q"{Porto Rico}", q"{Qatar}", q"{Reunion}", q"{Romania}", q"{Russia}"
		, q"{Rwanda}", q"{San Bartolomeo}", q"{Sant'Elena}", q"{Saint Kitts and Nevis}", q"{Saint Lucia}"
		, q"{Saint Martin}", q"{Saint Pierre and Miquelon}", q"{Saint Vincent and the Grenadines}"
		, q"{Samoa}", q"{San Marino}", q"{Sao Tome and Principe}", q"{Arabia Saudita}", q"{Senegal}"
		, q"{Serbia}", q"{Seychelles}", q"{Sierra Leone}", q"{Singapore}", q"{Slovenia}", q"{Isole Solomon}"
		, q"{Somalia}", q"{Sud Africa}", q"{Georgia del sud e South Sandwich Islands}", q"{Spagna}"
		, q"{Sri Lanka}", q"{Sudan}", q"{Suriname}", q"{Svalbard & Jan Mayen Islands}", q"{Swaziland}"
		, q"{Svezia}", q"{Svizzera}", q"{Siria}", q"{Taiwan}", q"{Tajikistan}", q"{Tanzania}", q"{Tailandia}"
		, q"{Timor-Leste}", q"{Togo}", q"{Tokelau}", q"{Tonga}", q"{Trinidad e Tobago}", q"{Tunisia}"
		, q"{Turchia}", q"{Turkmenistan}", q"{Isole di Turks and Caicos}", q"{Tuvalu}", q"{Uganda}"
		, q"{Ucraina}", q"{Emirati Arabi Uniti}", q"{Regno Unito}", q"{Stati Uniti d'America}"
		, q"{United States Minor Outlying Islands}", q"{Isole Vergini Statunitensi}", q"{Uruguay}"
		, q"{Uzbekistan}", q"{Vanuatu}", q"{Venezuela}", q"{Vietnam}", q"{Wallis and Futuna}", q"{Western Sahara}"
		, q"{Yemen}", q"{Zambia}", q"{Zimbabwe}" ];

		return choice(strs, this.rnd);
	}

	override string locationDefaultCountry() {
		const string[] strs =
		[ q"{Italia}" ];

		return choice(strs, this.rnd);
	}

	override string locationPostcode() {
		const string[] strs =
		[ q"{#####}" ];

		return numberBuild(choice(strs, this.rnd));
	}

	override string locationSecondaryAddress() {
		const string[] strs =
		[ q"{Appartamento ##}", q"{Piano #}" ];

		return numberBuild(choice(strs, this.rnd));
	}

	override string locationState() {
		const string[] strs =
		[ q"{Agrigento}", q"{Alessandria}", q"{Ancona}", q"{Aosta}", q"{Arezzo}", q"{Ascoli Piceno}", q"{Asti}"
		, q"{Avellino}", q"{Bari}", q"{Barletta-Andria-Trani}", q"{Belluno}", q"{Benevento}", q"{Bergamo}"
		, q"{Biella}", q"{Bologna}", q"{Bolzano}", q"{Brescia}", q"{Brindisi}", q"{Cagliari}", q"{Caltanissetta}"
		, q"{Campobasso}", q"{Carbonia-Iglesias}", q"{Caserta}", q"{Catania}", q"{Catanzaro}", q"{Chieti}"
		, q"{Como}", q"{Cosenza}", q"{Cremona}", q"{Crotone}", q"{Cuneo}", q"{Enna}", q"{Fermo}", q"{Ferrara}"
		, q"{Firenze}", q"{Foggia}", q"{Forlì-Cesena}", q"{Frosinone}", q"{Genova}", q"{Gorizia}", q"{Grosseto}"
		, q"{Imperia}", q"{Isernia}", q"{La Spezia}", q"{L'Aquila}", q"{Latina}", q"{Lecce}", q"{Lecco}"
		, q"{Livorno}", q"{Lodi}", q"{Lucca}", q"{Macerata}", q"{Mantova}", q"{Massa-Carrara}", q"{Matera}"
		, q"{Messina}", q"{Milano}", q"{Modena}", q"{Monza e della Brianza}", q"{Napoli}", q"{Novara}"
		, q"{Nuoro}", q"{Olbia-Tempio}", q"{Oristano}", q"{Padova}", q"{Palermo}", q"{Parma}", q"{Pavia}"
		, q"{Perugia}", q"{Pesaro e Urbino}", q"{Pescara}", q"{Piacenza}", q"{Pisa}", q"{Pistoia}", q"{Pordenone}"
		, q"{Potenza}", q"{Prato}", q"{Ragusa}", q"{Ravenna}", q"{Reggio Calabria}", q"{Reggio Emilia}"
		, q"{Rieti}", q"{Rimini}", q"{Roma}", q"{Rovigo}", q"{Salerno}", q"{Medio Campidano}", q"{Sassari}"
		, q"{Savona}", q"{Siena}", q"{Siracusa}", q"{Sondrio}", q"{Taranto}", q"{Teramo}", q"{Terni}", q"{Torino}"
		, q"{Ogliastra}", q"{Trapani}", q"{Trento}", q"{Treviso}", q"{Trieste}", q"{Udine}", q"{Varese}"
		, q"{Venezia}", q"{Verbano-Cusio-Ossola}", q"{Vercelli}", q"{Verona}", q"{Vibo Valentia}"
		, q"{Vicenza}", q"{Viterbo}" ];

		return choice(strs, this.rnd);
	}

	override string locationStateAbbr() {
		const string[] strs =
		[ q"{AG}", q"{AL}", q"{AN}", q"{AO}", q"{AR}", q"{AP}", q"{AT}", q"{AV}", q"{BA}", q"{BT}", q"{BL}", q"{BN}", q"{BG}"
		, q"{BI}", q"{BO}", q"{BZ}", q"{BS}", q"{BR}", q"{CA}", q"{CL}", q"{CB}", q"{CI}", q"{CE}", q"{CT}", q"{CZ}", q"{CH}"
		, q"{CO}", q"{CS}", q"{CR}", q"{KR}", q"{CN}", q"{EN}", q"{FM}", q"{FE}", q"{FI}", q"{FG}", q"{FC}", q"{FR}", q"{GE}"
		, q"{GO}", q"{GR}", q"{IM}", q"{IS}", q"{SP}", q"{AQ}", q"{LT}", q"{LE}", q"{LC}", q"{LI}", q"{LO}", q"{LU}", q"{MC}"
		, q"{MN}", q"{MS}", q"{MT}", q"{ME}", q"{MI}", q"{MO}", q"{MB}", q"{NA}", q"{NO}", q"{NU}", q"{OT}", q"{OR}", q"{PD}"
		, q"{PA}", q"{PR}", q"{PV}", q"{PG}", q"{PU}", q"{PE}", q"{PC}", q"{PI}", q"{PT}", q"{PN}", q"{PZ}", q"{PO}", q"{RG}"
		, q"{RA}", q"{RC}", q"{RE}", q"{RI}", q"{RN}", q"{RM}", q"{RO}", q"{SA}", q"{VS}", q"{SS}", q"{SV}", q"{SI}", q"{SR}"
		, q"{SO}", q"{TA}", q"{TE}", q"{TR}", q"{TO}", q"{OG}", q"{TP}", q"{TN}", q"{TV}", q"{TS}", q"{UD}", q"{VA}", q"{VE}"
		, q"{VB}", q"{VC}", q"{VR}", q"{VV}", q"{VI}", q"{VT}" ];

		return choice(strs, this.rnd);
	}

	override string locationStreetAddress() {
		const LocationStreetAddressEnum[] enums = [ LocationStreetAddressEnum.normal, LocationStreetAddressEnum.full ];
		return locationStreetAddress(choice(enums, this.rnd));
	}

	override string locationStreetAddress(LocationStreetAddressEnum which) {
		final switch(which) {
			case LocationStreetAddressEnum.normal: return locationStreet() ~ " " ~ locationBuildingNumber();
			case LocationStreetAddressEnum.full: return locationStreet() ~ " " ~ locationBuildingNumber() ~ ", " ~ locationSecondaryAddress();
		}
		return "";
	}

	override string locationStreetPattern() {
		final switch(uniform(0, 2, this.rnd)) {
			case 0: return locationStreetSuffix() ~ " " ~ personFirstName();
			case 1: return locationStreetSuffix() ~ " " ~ personLastName();
		}
		return "";
	}

	override string locationStreetSuffix() {
		const string[] strs =
		[ q"{Piazza}", q"{Strada}", q"{Via}", q"{Borgo}", q"{Contrada}", q"{Rotonda}", q"{Incrocio}" ];

		return choice(strs, this.rnd);
	}

	override string personFemaleFirstName() {
		const string[] strs =
		[ q"{Abbondanza}", q"{Acilia}", q"{Ada}", q"{Adalberta}", q"{Adalgisa}", q"{Addolorata}", q"{Adelaide}"
		, q"{Adelasia}", q"{Adele}", q"{Adelina}", q"{Adina}", q"{Adria}", q"{Adriana}", q"{Agape}", q"{Agata}"
		, q"{Agnese}", q"{Agostina}", q"{Aida}", q"{Alba}", q"{Alberta}", q"{Albina}", q"{Alcina}", q"{Alda}"
		, q"{Alessandra}", q"{Alessia}", q"{Alfonsa}", q"{Alfreda}", q"{Alice}", q"{Alida}", q"{Alina}"
		, q"{Allegra}", q"{Alma}", q"{Altea}", q"{Amalia}", q"{Amanda}", q"{Amata}", q"{Ambra}", q"{Amelia}"
		, q"{Amina}", q"{Anastasia}", q"{Anatolia}", q"{Ancilla}", q"{Andromeda}", q"{Angela}", q"{Angelica}"
		, q"{Anita}", q"{Anna}", q"{Annabella}", q"{Annagrazia}", q"{Annamaria}", q"{Annunziata}", q"{Antea}"
		, q"{Antigone}", q"{Antonella}", q"{Antonia}", q"{Apollina}", q"{Apollonia}", q"{Appia}", q"{Arabella}"
		, q"{Argelia}", q"{Arianna}", q"{Armida}", q"{Artemisa}", q"{Asella}", q"{Asia}", q"{Assunta}"
		, q"{Astrid}", q"{Atanasia}", q"{Aurelia}", q"{Aurora}", q"{Ausilia}", q"{Ausiliatrice}", q"{Ave}"
		, q"{Aza}", q"{Azelia}", q"{Azzurra}", q"{Babila}", q"{Bambina}", q"{Barbara}", q"{Bartolomea}"
		, q"{Basilia}", q"{Bassilla}", q"{Batilda}", q"{Beata}", q"{Beatrice}", q"{Belina}", q"{Benedetta}"
		, q"{Beniamina}", q"{Benigna}", q"{Benvenuta}", q"{Berenice}", q"{Bernadetta}", q"{Betta}", q"{Bianca}"
		, q"{Bibiana}", q"{Bice}", q"{Brigida}", q"{Brigitta}", q"{Bruna}", q"{Brunilde}", q"{Calogera}"
		, q"{Calpurnia}", q"{Camelia}", q"{Camilla}", q"{Candida}", q"{Capitolina}", q"{Carina}", q"{Carla}"
		, q"{Carlotta}", q"{Carmela}", q"{Carmen}", q"{Carola}", q"{Carolina}", q"{Casilda}", q"{Casimira}"
		, q"{Cassandra}", q"{Cassiopea}", q"{Catena}", q"{Caterina}", q"{Cecilia}", q"{Celeste}", q"{Celinia}"
		, q"{Chiara}", q"{Cinzia}", q"{Cirilla}", q"{Clara}", q"{Claudia}", q"{Clelia}", q"{Clemenzia}"
		, q"{Cleo}", q"{Cleofe}", q"{Cleopatra}", q"{Cloe}", q"{Clorinda}", q"{Cointa}", q"{Colomba}", q"{Concetta}"
		, q"{Consolata}", q"{Cora}", q"{Cordelia}", q"{Corinna}", q"{Cornelia}", q"{Cosima}", q"{Costanza}"
		, q"{Crescenzia}", q"{Cristiana}", q"{Cristina}", q"{Crocefissa}", q"{Cronida}", q"{Cunegonda}"
		, q"{Cuzia}", q"{Dafne}", q"{Dalida}", q"{Dalila}", q"{Damiana}", q"{Daniela}", q"{Daria}", q"{Deanna}"
		, q"{Debora}", q"{Degna}", q"{Delfina}", q"{Delia}", q"{Delinda}", q"{Delizia}", q"{Demetria}"
		, q"{Deodata}", q"{Desdemona}", q"{Desiderata}", q"{Devota}", q"{Diamante}", q"{Diana}", q"{Dianora}"
		, q"{Diletta}", q"{Dina}", q"{Diodata}", q"{Dionisia}", q"{Doda}", q"{Dolores}", q"{Domenica}"
		, q"{Donata}", q"{Donatella}", q"{Donna}", q"{Dora}", q"{Dorotea}", q"{Druina}", q"{Dulina}", q"{Ebe}"
		, q"{Edda}", q"{Edelberga}", q"{Editta}", q"{Edvige}", q"{Egizia}", q"{Egle}", q"{Elaide}", q"{Elda}"
		, q"{Elena}", q"{Eleonora}", q"{Elettra}", q"{Eliana}", q"{Elide}", q"{Elimena}", q"{Elisa}", q"{Elisabetta}"
		, q"{Elisea}", q"{Ella}", q"{Eloisa}", q"{Elsa}", q"{Elvia}", q"{Elvira}", q"{Emanuela}", q"{Emilia}"
		, q"{Emiliana}", q"{Emma}", q"{Enimia}", q"{Enrica}", q"{Eracla}", q"{Ermelinda}", q"{Ermenegarda}"
		, q"{Ermenegilda}", q"{Erminia}", q"{Ernesta}", q"{Ersilia}", q"{Esmeralda}", q"{Estella}", q"{Ester}"
		, q"{Esterina}", q"{Eufemia}", q"{Eufrasia}", q"{Eugenia}", q"{Eulalia}", q"{Euridice}", q"{Eusebia}"
		, q"{Eutalia}", q"{Eva}", q"{Evangelina}", q"{Evelina}", q"{Fabiana}", q"{Fabiola}", q"{Fatima}"
		, q"{Fausta}", q"{Federica}", q"{Fedora}", q"{Felicia}", q"{Felicita}", q"{Fernanda}", q"{Fiammetta}"
		, q"{Filippa}", q"{Filomena}", q"{Fiordaliso}", q"{Fiore}", q"{Fiorella}", q"{Fiorenza}", q"{Flaminia}"
		, q"{Flavia}", q"{Flaviana}", q"{Flora}", q"{Floriana}", q"{Floridia}", q"{Florina}", q"{Foca}"
		, q"{Fortunata}", q"{Fosca}", q"{Franca}", q"{Francesca}", q"{Fulvia}", q"{Gabriella}", q"{Gaia}"
		, q"{Galatea}", q"{Gaudenzia}", q"{Gelsomina}", q"{Geltrude}", q"{Gemma}", q"{Generosa}", q"{Genesia}"
		, q"{Genoveffa}", q"{Germana}", q"{Gertrude}", q"{Ghita}", q"{Giacinta}", q"{Giada}", q"{Gigliola}"
		, q"{Gilda}", q"{Giliola}", q"{Ginevra}", q"{Gioacchina}", q"{Gioconda}", q"{Gioia}", q"{Giorgia}"
		, q"{Giovanna}", q"{Gisella}", q"{Giuditta}", q"{Giulia}", q"{Giuliana}", q"{Giulitta}", q"{Giuseppa}"
		, q"{Giuseppina}", q"{Giusta}", q"{Glenda}", q"{Gloria}", q"{Godeberta}", q"{Godiva}", q"{Grazia}"
		, q"{Graziana}", q"{Graziella}", q"{Greta}", q"{Griselda}", q"{Guenda}", q"{Guendalina}", q"{Gundelinda}"
		, q"{Ianira}", q"{Ida}", q"{Idea}", q"{Iginia}", q"{Ilaria}", q"{Ilda}", q"{Ildegarda}", q"{Ildegonda}"
		, q"{Ileana}", q"{Ilenia}", q"{Ilia}", q"{Ilva}", q"{Imelda}", q"{Immacolata}", q"{Incoronata}"
		, q"{Ines}", q"{Innocenza}", q"{Iolanda}", q"{Iole}", q"{Iona}", q"{Ione}", q"{Ionne}", q"{Irene}"
		, q"{Iride}", q"{Iris}", q"{Irma}", q"{Irmina}", q"{Isa}", q"{Isabella}", q"{Iside}", q"{Isidora}"
		, q"{Isotta}", q"{Italia}", q"{Ivetta}", q"{Lara}", q"{Laura}", q"{Lavinia}", q"{Lea}", q"{Leda}"
		, q"{Lelia}", q"{Lena}", q"{Leonia}", q"{Leonilda}", q"{Leontina}", q"{Letizia}", q"{Lia}", q"{Liana}"
		, q"{Liberata}", q"{Liboria}", q"{Licia}", q"{Lidania}", q"{Lidia}", q"{Liliana}", q"{Linda}", q"{Lisa}"
		, q"{Livia}", q"{Liviana}", q"{Lodovica}", q"{Loredana}", q"{Lorella}", q"{Lorena}", q"{Lorenza}"
		, q"{Loretta}", q"{Loriana}", q"{Luana}", q"{Luce}", q"{Lucia}", q"{Luciana}", q"{Lucilla}", q"{Lucrezia}"
		, q"{Ludovica}", q"{Luigia}", q"{Luisa}", q"{Luminosa}", q"{Luna}", q"{Macaria}", q"{Maddalena}"
		, q"{Mafalda}", q"{Magda}", q"{Maida}", q"{Manuela}", q"{Mara}", q"{Marana}", q"{Marcella}", q"{Mareta}"
		, q"{Margherita}", q"{Maria}", q"{Marianna}", q"{Marica}", q"{Mariella}", q"{Marilena}", q"{Marina}"
		, q"{Marinella}", q"{Marinetta}", q"{Marisa}", q"{Marita}", q"{Marta}", q"{Martina}", q"{Maruta}"
		, q"{Marzia}", q"{Massima}", q"{Matilde}", q"{Maura}", q"{Melania}", q"{Melissa}", q"{Melitina}"
		, q"{Menodora}", q"{Mercede}", q"{Messalina}", q"{Mia}", q"{Michela}", q"{Milena}", q"{Mimma}"
		, q"{Mina}", q"{Minerva}", q"{Minervina}", q"{Miranda}", q"{Mirella}", q"{Miriam}", q"{Mirta}"
		, q"{Moira}", q"{Monica}", q"{Morena}", q"{Morgana}", q"{Nadia}", q"{Natalia}", q"{Natalina}", q"{Neiva}"
		, q"{Nerea}", q"{Nicla}", q"{Nicoletta}", q"{Nilde}", q"{Nina}", q"{Ninfa}", q"{Nives}", q"{Noemi}"
		, q"{Norina}", q"{Norma}", q"{Novella}", q"{Nuccia}", q"{Nunziata}", q"{Odetta}", q"{Odilia}", q"{Ofelia}"
		, q"{Olga}", q"{Olimpia}", q"{Olinda}", q"{Olivia}", q"{Oliviera}", q"{Ombretta}", q"{Ondina}"
		, q"{Onesta}", q"{Onorata}", q"{Onorina}", q"{Orchidea}", q"{Oriana}", q"{Orietta}", q"{Ornella}"
		, q"{Orsola}", q"{Orsolina}", q"{Ortensia}", q"{Osanna}", q"{Otilia}", q"{Ottilia}", q"{Palladia}"
		, q"{Palmazio}", q"{Palmira}", q"{Pamela}", q"{Paola}", q"{Patrizia}", q"{Pelagia}", q"{Penelope}"
		, q"{Perla}", q"{Petronilla}", q"{Pia}", q"{Piera}", q"{Placida}", q"{Polissena}", q"{Porzia}"
		, q"{Prisca}", q"{Priscilla}", q"{Proserpina}", q"{Prospera}", q"{Prudenzia}", q"{Quartilla}"
		, q"{Quieta}", q"{Quiteria}", q"{Rachele}", q"{Raffaella}", q"{Rainelda}", q"{Rebecca}", q"{Regina}"
		, q"{Renata}", q"{Riccarda}", q"{Rina}", q"{Rita}", q"{Roberta}", q"{Romana}", q"{Romilda}", q"{Romina}"
		, q"{Romola}", q"{Rosa}", q"{Rosalia}", q"{Rosalinda}", q"{Rosamunda}", q"{Rosanna}", q"{Rosita}"
		, q"{Rosmunda}", q"{Rossana}", q"{Rossella}", q"{Rufina}", q"{Saba}", q"{Sabina}", q"{Sabrina}"
		, q"{Samanta}", q"{Samona}", q"{Sandra}", q"{Santina}", q"{Sara}", q"{Savina}", q"{Scolastica}"
		, q"{Sebastiana}", q"{Seconda}", q"{Secondina}", q"{Sefora}", q"{Selene}", q"{Selvaggia}", q"{Semiramide}"
		, q"{Serafina}", q"{Serena}", q"{Severa}", q"{Sibilla}", q"{Sidonia}", q"{Silvana}", q"{Silvia}"
		, q"{Simona}", q"{Simonetta}", q"{Siria}", q"{Smeralda}", q"{Soave}", q"{Sofia}", q"{Sofronia}"
		, q"{Solange}", q"{Sonia}", q"{Speranza}", q"{Stefania}", q"{Stella}", q"{Susanna}", q"{Sveva}"
		, q"{Tabita}", q"{Tamara}", q"{Tarquinia}", q"{Tarsilla}", q"{Taziana}", q"{Tea}", q"{Tecla}", q"{Telica}"
		, q"{Teodata}", q"{Teodolinda}", q"{Teodora}", q"{Teresa}", q"{Teudosia}", q"{Tina}", q"{Tiziana}"
		, q"{Tosca}", q"{Trasea}", q"{Tullia}", q"{Ugolina}", q"{Ulfa}", q"{Uliva}", q"{Unna}", q"{Vala}"
		, q"{Valentina}", q"{Valeria}", q"{Valeriana}", q"{Vanda}", q"{Vanessa}", q"{Vanna}", q"{Venera}"
		, q"{Veneranda}", q"{Venere}", q"{Venusta}", q"{Vera}", q"{Verdiana}", q"{Verena}", q"{Veriana}"
		, q"{Veridiana}", q"{Veronica}", q"{Viliana}", q"{Vilma}", q"{Vincenza}", q"{Viola}", q"{Violante}"
		, q"{Virginia}", q"{Vissia}", q"{Vittoria}", q"{Viviana}", q"{Wanda}", q"{Zabina}", q"{Zaira}"
		, q"{Zama}", q"{Zanita}", q"{Zarina}", q"{Zelinda}", q"{Zenobia}", q"{Zita}", q"{Zoe}", q"{Zosima}" ];

		return choice(strs, this.rnd);
	}

	override string personFemalePrefix() {
		const string[] strs =
		[ q"{Sig.}", q"{Dott.}", q"{Dr.}", q"{Ing.}" ];

		return choice(strs, this.rnd);
	}

	override string personFirstName() {
		const string[] strs =
		[ q"{Abaco}", q"{Abbondanzio}", q"{Abbondio}", q"{Abdone}", q"{Abelardo}", q"{Abele}", q"{Abenzio}"
		, q"{Abibo}", q"{Abramio}", q"{Abramo}", q"{Acacio}", q"{Acario}", q"{Accursio}", q"{Achille}"
		, q"{Acilio}", q"{Aciscolo}", q"{Acrisio}", q"{Adalardo}", q"{Adalberto}", q"{Adalfredo}", q"{Adalgiso}"
		, q"{Adalrico}", q"{Adamo}", q"{Addo}", q"{Adelardo}", q"{Adelberto}", q"{Adelchi}", q"{Adelfo}"
		, q"{Adelgardo}", q"{Adelmo}", q"{Adeodato}", q"{Adolfo}", q"{Adone}", q"{Adriano}", q"{Adrione}"
		, q"{Afro}", q"{Agabio}", q"{Agamennone}", q"{Agapito}", q"{Agazio}", q"{Agenore}", q"{Agesilao}"
		, q"{Agostino}", q"{Agrippa}", q"{Aiace}", q"{Aidano}", q"{Aimone}", q"{Aladino}", q"{Alamanno}"
		, q"{Alano}", q"{Alarico}", q"{Albano}", q"{Alberico}", q"{Alberto}", q"{Albino}", q"{Alboino}"
		, q"{Albrico}", q"{Alceo}", q"{Alceste}", q"{Alcibiade}", q"{Alcide}", q"{Alcino}", q"{Aldo}", q"{Aldobrando}"
		, q"{Aleandro}", q"{Aleardo}", q"{Aleramo}", q"{Alessandro}", q"{Alessio}", q"{Alfio}", q"{Alfonso}"
		, q"{Alfredo}", q"{Algiso}", q"{Alighiero}", q"{Almerigo}", q"{Almiro}", q"{Aloisio}", q"{Alvaro}"
		, q"{Alviero}", q"{Alvise}", q"{Amabile}", q"{Amadeo}", q"{Amando}", q"{Amanzio}", q"{Amaranto}"
		, q"{Amato}", q"{Amatore}", q"{Amauri}", q"{Ambrogio}", q"{Ambrosiano}", q"{Amedeo}", q"{Amelio}"
		, q"{Amerigo}", q"{Amico}", q"{Amilcare}", q"{Amintore}", q"{Amleto}", q"{Amone}", q"{Amore}", q"{Amos}"
		, q"{Ampelio}", q"{Anacleto}", q"{Andrea}", q"{Angelo}", q"{Aniceto}", q"{Aniello}", q"{Annibale}"
		, q"{Ansaldo}", q"{Anselmo}", q"{Ansovino}", q"{Antelmo}", q"{Antero}", q"{Antimo}", q"{Antino}"
		, q"{Antioco}", q"{Antonello}", q"{Antonio}", q"{Apollinare}", q"{Apollo}", q"{Apuleio}", q"{Aquilino}"
		, q"{Araldo}", q"{Aratone}", q"{Arcadio}", q"{Archimede}", q"{Archippo}", q"{Arcibaldo}", q"{Ardito}"
		, q"{Arduino}", q"{Aresio}", q"{Argimiro}", q"{Argo}", q"{Arialdo}", q"{Ariberto}", q"{Ariele}"
		, q"{Ariosto}", q"{Aris}", q"{Aristarco}", q"{Aristeo}", q"{Aristide}", q"{Aristione}", q"{Aristo}"
		, q"{Aristofane}", q"{Aristotele}", q"{Armando}", q"{Arminio}", q"{Arnaldo}", q"{Aronne}", q"{Arrigo}"
		, q"{Arturo}", q"{Ascanio}", q"{Asdrubale}", q"{Asimodeo}", q"{Assunto}", q"{Asterio}", q"{Astianatte}"
		, q"{Ataleo}", q"{Atanasio}", q"{Athos}", q"{Attila}", q"{Attilano}", q"{Attilio}", q"{Auberto}"
		, q"{Audace}", q"{Augusto}", q"{Aureliano}", q"{Aurelio}", q"{Auro}", q"{Ausilio}", q"{Averardo}"
		, q"{Azeglio}", q"{Azelio}", q"{Bacco}", q"{Baldassarre}", q"{Balderico}", q"{Baldo}", q"{Baldomero}"
		, q"{Baldovino}", q"{Barbarigo}", q"{Bardo}", q"{Bardomiano}", q"{Barnaba}", q"{Barsaba}", q"{Barsimeo}"
		, q"{Bartolo}", q"{Bartolomeo}", q"{Basileo}", q"{Basilio}", q"{Bassiano}", q"{Bastiano}", q"{Battista}"
		, q"{Beato}", q"{Bellino}", q"{Beltramo}", q"{Benedetto}", q"{Beniamino}", q"{Benigno}", q"{Benito}"
		, q"{Benvenuto}", q"{Berardo}", q"{Berengario}", q"{Bernardo}", q"{Beronico}", q"{Bertoldo}"
		, q"{Bertolfo}", q"{Biagio}", q"{Bibiano}", q"{Bindo}", q"{Bino}", q"{Birino}", q"{Bonagiunta}"
		, q"{Bonaldo}", q"{Bonaventura}", q"{Bonavita}", q"{Bonifacio}", q"{Bonito}", q"{Boris}", q"{Bortolo}"
		, q"{Brancaleone}", q"{Brando}", q"{Bruno}", q"{Bruto}", q"{Caino}", q"{Caio}", q"{Calanico}", q"{Calcedonio}"
		, q"{Callisto}", q"{Calogero}", q"{Camillo}", q"{Candido}", q"{Cantidio}", q"{Canziano}", q"{Carlo}"
		, q"{Carmelo}", q"{Carmine}", q"{Caronte}", q"{Carponio}", q"{Casimiro}", q"{Cassiano}", q"{Cassio}"
		, q"{Casto}", q"{Cataldo}", q"{Catullo}", q"{Cecco}", q"{Cecilio}", q"{Celso}", q"{Cesare}", q"{Cesario}"
		, q"{Cherubino}", q"{Chiaffredo}", q"{Cino}", q"{Cipriano}", q"{Cirano}", q"{Ciriaco}", q"{Cirillo}"
		, q"{Cirino}", q"{Ciro}", q"{Clarenzio}", q"{Claudio}", q"{Cleandro}", q"{Clemente}", q"{Cleonico}"
		, q"{Climaco}", q"{Clinio}", q"{Clodomiro}", q"{Clodoveo}", q"{Colmanno}", q"{Colmazio}", q"{Colombano}"
		, q"{Colombo}", q"{Concetto}", q"{Concordio}", q"{Corbiniano}", q"{Coreno}", q"{Coriolano}"
		, q"{Cornelio}", q"{Coronato}", q"{Corrado}", q"{Cosimo}", q"{Cosma}", q"{Costante}", q"{Costantino}"
		, q"{Costanzo}", q"{Cremenzio}", q"{Crescente}", q"{Crescenzio}", q"{Crespignano}", q"{Crispino}"
		, q"{Cristaldo}", q"{Cristiano}", q"{Cristoforo}", q"{Crocefisso}", q"{Cuniberto}", q"{Cupido}"
		, q"{Daciano}", q"{Dacio}", q"{Dagoberto}", q"{Dalmazio}", q"{Damaso}", q"{Damiano}", q"{Damocle}"
		, q"{Daniele}", q"{Danilo}", q"{Danio}", q"{Dante}", q"{Dario}", q"{Davide}", q"{Davino}", q"{Decimo}"
		, q"{Delfino}", q"{Demetrio}", q"{Democrito}", q"{Demostene}", q"{Deodato}", q"{Desiderato}"
		, q"{Desiderio}", q"{Didimo}", q"{Diego}", q"{Dino}", q"{Diocleziano}", q"{Diodoro}", q"{Diogene}"
		, q"{Diomede}", q"{Dione}", q"{Dionigi}", q"{Dionisio}", q"{Divo}", q"{Dodato}", q"{Domenico}"
		, q"{Domezio}", q"{Domiziano}", q"{Donatello}", q"{Donato}", q"{Doriano}", q"{Doroteo}", q"{Duccio}"
		, q"{Duilio}", q"{Durante}", q"{Eberardo}", q"{Ecclesio}", q"{Edgardo}", q"{Edilberto}", q"{Edmondo}"
		, q"{Edoardo}", q"{Efisio}", q"{Efrem}", q"{Egeo}", q"{Egidio}", q"{Eginardo}", q"{Egisto}", q"{Eleuterio}"
		, q"{Elia}", q"{Eliano}", q"{Elifio}", q"{Eligio}", q"{Elio}", q"{Eliodoro}", q"{Eliseo}", q"{Elita}"
		, q"{Elmo}", q"{Elogio}", q"{Elpidio}", q"{Elvezio}", q"{Elvino}", q"{Emanuele}", q"{Emidio}", q"{Emiliano}"
		, q"{Emilio}", q"{Emmerico}", q"{Empirio}", q"{Endrigo}", q"{Enea}", q"{Enecone}", q"{Ennio}", q"{Enrico}"
		, q"{Enzo}", q"{Eraclide}", q"{Eraldo}", q"{Erardo}", q"{Erasmo}", q"{Erberto}", q"{Ercolano}"
		, q"{Ercole}", q"{Erenia}", q"{Eriberto}", q"{Erico}", q"{Ermanno}", q"{Ermenegildo}", q"{Ermes}"
		, q"{Ermete}", q"{Ermilo}", q"{Erminio}", q"{Ernesto}", q"{Eros}", q"{Esa�}", q"{Esuperio}", q"{Eterie}"
		, q"{Ettore}", q"{Euclide}", q"{Eufebio}", q"{Eufemio}", q"{Eufronio}", q"{Eugenio}", q"{Eusebio}"
		, q"{Euseo}", q"{Eustorgio}", q"{Eustosio}", q"{Eutalio}", q"{Evaldo}", q"{Evandro}", q"{Evaristo}"
		, q"{Evasio}", q"{Everardo}", q"{Evidio}", q"{Evodio}", q"{Evremondo}", q"{Ezechiele}", q"{Ezio}"
		, q"{Fabiano}", q"{Fabio}", q"{Fabrizio}", q"{Famiano}", q"{Fausto}", q"{Fazio}", q"{Fedele}", q"{Federico}"
		, q"{Fedro}", q"{Felice}", q"{Feliciano}", q"{Ferdinando}", q"{Fermiano}", q"{Fermo}", q"{Fernando}"
		, q"{Ferruccio}", q"{Festo}", q"{Fidenziano}", q"{Fidenzio}", q"{Filiberto}", q"{Filippo}", q"{Filomeno}"
		, q"{Fiorenziano}", q"{Fiorenzo}", q"{Flaviano}", q"{Flavio}", q"{Fleano}", q"{Floriano}", q"{Folco}"
		, q"{Fortunato}", q"{Fosco}", q"{Francesco}", q"{Franco}", q"{Frido}", q"{Frontiniano}", q"{Fulberto}"
		, q"{Fulgenzio}", q"{Fulvio}", q"{Furio}", q"{Furseo}", q"{Fuscolo}", q"{Gabino}", q"{Gabriele}"
		, q"{Gaetano}", q"{Gaglioffo}", q"{Gaio}", q"{Galdino}", q"{Galeazzo}", q"{Galileo}", q"{Gallicano}"
		, q"{Gandolfo}", q"{Garimberto}", q"{Gaspare}", q"{Gastone}", q"{Gaudenzio}", q"{Gaudino}", q"{Gautiero}"
		, q"{Gavino}", q"{Gedeone}", q"{Geminiano}", q"{Generoso}", q"{Genesio}", q"{Gennaro}", q"{Gentile}"
		, q"{Genziano}", q"{Gerardo}", q"{Gerasimo}", q"{Geremia}", q"{Gerino}", q"{Germano}", q"{Gerolamo}"
		, q"{Geronimo}", q"{Geronzio}", q"{Gervasio}", q"{Gesualdo}", q"{Gherardo}", q"{Giacinto}", q"{Giacobbe}"
		, q"{Giacomo}", q"{Giadero}", q"{Giambattista}", q"{Gianbattista}", q"{Giancarlo}", q"{Giandomenico}"
		, q"{Gianfranco}", q"{Gianluca}", q"{Gianluigi}", q"{Gianmarco}", q"{Gianmaria}", q"{Gianmario}"
		, q"{Gianni}", q"{Gianpaolo}", q"{Gianpiero}", q"{Gianpietro}", q"{Gianuario}", q"{Giasone}"
		, q"{Gilberto}", q"{Gildo}", q"{Gillo}", q"{Gineto}", q"{Gino}", q"{Gioacchino}", q"{Giobbe}", q"{Gioberto}"
		, q"{Giocondo}", q"{Gioele}", q"{Giona}", q"{Gionata}", q"{Giordano}", q"{Giorgio}", q"{Giosu�}"
		, q"{Giosuele}", q"{Giotto}", q"{Giovanni}", q"{Giove}", q"{Gioventino}", q"{Giovenzio}", q"{Girardo}"
		, q"{Girolamo}", q"{Giuda}", q"{Giuliano}", q"{Giulio}", q"{Giuseppe}", q"{Giustiniano}", q"{Giusto}"
		, q"{Glauco}", q"{Goffredo}", q"{Golia}", q"{Gomberto}", q"{Gondulfo}", q"{Gonerio}", q"{Gonzaga}"
		, q"{Gordiano}", q"{Gosto}", q"{Gottardo}", q"{Graciliano}", q"{Grato}", q"{Graziano}", q"{Gregorio}"
		, q"{Grimaldo}", q"{Gualberto}", q"{Gualtiero}", q"{Guelfo}", q"{Guerrino}", q"{Guglielmo}"
		, q"{Guiberto}", q"{Guido}", q"{Guiscardo}", q"{Gumesindo}", q"{Gustavo}", q"{Iacopo}", q"{Iacopone}"
		, q"{Iago}", q"{Icaro}", q"{Icilio}", q"{Ido}", q"{Iginio}", q"{Igino}", q"{Ignazio}", q"{Igor}", q"{Ilario}"
		, q"{Ildebrando}", q"{Ildefonso}", q"{Illidio}", q"{Illuminato}", q"{Immacolato}", q"{Indro}"
		, q"{Innocente}", q"{Innocenzo}", q"{Iorio}", q"{Ippocrate}", q"{Ippolito}", q"{Ireneo}", q"{Isacco}"
		, q"{Isaia}", q"{Ischirione}", q"{Isidoro}", q"{Ismaele}", q"{Italo}", q"{Ivan}", q"{Ivano}", q"{Ivanoe}"
		, q"{Ivo}", q"{Ivone}", q"{Ladislao}", q"{Lamberto}", q"{Lancilotto}", q"{Landolfo}", q"{Lanfranco}"
		, q"{Lapo}", q"{Laurentino}", q"{Lauriano}", q"{Lautone}", q"{Lavinio}", q"{Lazzaro}", q"{Leandro}"
		, q"{Leo}", q"{Leonardo}", q"{Leone}", q"{Leonida}", q"{Leonio}", q"{Leonzio}", q"{Leopardo}", q"{Leopoldo}"
		, q"{Letterio}", q"{Liberato}", q"{Liberatore}", q"{Liberio}", q"{Libero}", q"{Liberto}", q"{Liborio}"
		, q"{Lidio}", q"{Lieto}", q"{Lino}", q"{Lisandro}", q"{Livino}", q"{Livio}", q"{Lodovico}", q"{Loreno}"
		, q"{Lorenzo}", q"{Loris}", q"{Luca}", q"{Luciano}", q"{Lucio}", q"{Ludano}", q"{Ludovico}", q"{Luigi}"
		, q"{Macario}", q"{Maccabeo}", q"{Maffeo}", q"{Maggiorino}", q"{Magno}", q"{Maiorico}", q"{Malco}"
		, q"{Mamante}", q"{Mancio}", q"{Manetto}", q"{Manfredo}", q"{Manilio}", q"{Manlio}", q"{Mansueto}"
		, q"{Manuele}", q"{Marcello}", q"{Marciano}", q"{Marco}", q"{Mariano}", q"{Marino}", q"{Mario}"
		, q"{Marolo}", q"{Martino}", q"{Marzio}", q"{Massimiliano}", q"{Massimo}", q"{Matroniano}", q"{Matteo}"
		, q"{Mattia}", q"{Maurilio}", q"{Maurizio}", q"{Mauro}", q"{Medardo}", q"{Medoro}", q"{Melanio}"
		, q"{Melchiade}", q"{Melchiorre}", q"{Melezio}", q"{Menardo}", q"{Menelao}", q"{Meneo}", q"{Mennone}"
		, q"{Mercurio}", q"{Metello}", q"{Metrofane}", q"{Michelangelo}", q"{Michele}", q"{Milo}", q"{Minervino}"
		, q"{Mirco}", q"{Mirko}", q"{Mirocleto}", q"{Misaele}", q"{Modesto}", q"{Monaldo}", q"{Monitore}"
		, q"{Moreno}", q"{Mos�}", q"{Muziano}", q"{Namazio}", q"{Napoleone}", q"{Narciso}", q"{Narseo}"
		, q"{Narsete}", q"{Natale}", q"{Nazario}", q"{Nazzareno}", q"{Nazzaro}", q"{Neopolo}", q"{Neoterio}"
		, q"{Nereo}", q"{Neri}", q"{Nestore}", q"{Nicarete}", q"{Nicea}", q"{Niceforo}", q"{Niceto}", q"{Nicezio}"
		, q"{Nico}", q"{Nicodemo}", q"{Nicola}", q"{Nicol�}", q"{Niniano}", q"{Nino}", q"{No�}", q"{Norberto}"
		, q"{Nostriano}", q"{Nunzio}", q"{Oddone}", q"{Oderico}", q"{Odidone}", q"{Odorico}", q"{Olimpio}"
		, q"{Olindo}", q"{Oliviero}", q"{Omar}", q"{Omero}", q"{Onesto}", q"{Onofrio}", q"{Onorino}", q"{Onorio}"
		, q"{Orazio}", q"{Orenzio}", q"{Oreste}", q"{Orfeo}", q"{Orio}", q"{Orlando}", q"{Oronzo}", q"{Orsino}"
		, q"{Orso}", q"{Ortensio}", q"{Oscar}", q"{Osmondo}", q"{Osvaldo}", q"{Otello}", q"{Ottaviano}"
		, q"{Ottavio}", q"{Ottone}", q"{Ovidio}", q"{Paciano}", q"{Pacifico}", q"{Pacomio}", q"{Palatino}"
		, q"{Palladio}", q"{Pammachio}", q"{Pancario}", q"{Pancrazio}", q"{Panfilo}", q"{Pantaleo}"
		, q"{Pantaleone}", q"{Paolo}", q"{Pardo}", q"{Paride}", q"{Parmenio}", q"{Pasquale}", q"{Paterniano}"
		, q"{Patrizio}", q"{Patroclo}", q"{Pauside}", q"{Peleo}", q"{Pellegrino}", q"{Pericle}", q"{Perseo}"
		, q"{Petronio}", q"{Pierangelo}", q"{Piergiorgio}", q"{Pierluigi}", q"{Piermarco}", q"{Piero}"
		, q"{Piersilvio}", q"{Pietro}", q"{Pio}", q"{Pippo}", q"{Placido}", q"{Platone}", q"{Plinio}", q"{Plutarco}"
		, q"{Polidoro}", q"{Polifemo}", q"{Pollione}", q"{Pompeo}", q"{Pomponio}", q"{Ponziano}", q"{Ponzio}"
		, q"{Porfirio}", q"{Porziano}", q"{Postumio}", q"{Prassede}", q"{Priamo}", q"{Primo}", q"{Prisco}"
		, q"{Privato}", q"{Procopio}", q"{Prospero}", q"{Protasio}", q"{Proteo}", q"{Prudenzio}", q"{Publio}"
		, q"{Pupolo}", q"{Pusicio}", q"{Quarto}", q"{Quasimodo}", q"{Querano}", q"{Quintiliano}", q"{Quintilio}"
		, q"{Quintino}", q"{Quinziano}", q"{Quinzio}", q"{Quirino}", q"{Radolfo}", q"{Raffaele}", q"{Raide}"
		, q"{Raimondo}", q"{Rainaldo}", q"{Ramiro}", q"{Raniero}", q"{Ranolfo}", q"{Reginaldo}", q"{Regolo}"
		, q"{Remigio}", q"{Remo}", q"{Remondo}", q"{Renato}", q"{Renzo}", q"{Respicio}", q"{Ricario}", q"{Riccardo}"
		, q"{Richelmo}", q"{Rinaldo}", q"{Rino}", q"{Robaldo}", q"{Roberto}", q"{Rocco}", q"{Rodiano}"
		, q"{Rodolfo}", q"{Rodrigo}", q"{Rolando}", q"{Rolfo}", q"{Romano}", q"{Romeo}", q"{Romero}", q"{Romoaldo}"
		, q"{Romolo}", q"{Romualdo}", q"{Rosario}", q"{Rubiano}", q"{Rufino}", q"{Rufo}", q"{Ruggero}"
		, q"{Ruperto}", q"{Rutilo}", q"{Sabato}", q"{Sabazio}", q"{Sabele}", q"{Sabino}", q"{Saffiro}"
		, q"{Saffo}", q"{Saladino}", q"{Salom�}", q"{Salomone}", q"{Salustio}", q"{Salvatore}", q"{Salvo}"
		, q"{Samuele}", q"{Sandro}", q"{Sansone}", q"{Sante}", q"{Santo}", q"{Sapiente}", q"{Sarbello}"
		, q"{Saturniano}", q"{Saturnino}", q"{Saul}", q"{Saverio}", q"{Savino}", q"{Sebastiano}", q"{Secondiano}"
		, q"{Secondo}", q"{Semplicio}", q"{Sempronio}", q"{Senesio}", q"{Senofonte}", q"{Serafino}"
		, q"{Serapione}", q"{Sergio}", q"{Servidio}", q"{Serviliano}", q"{Sesto}", q"{Settimio}", q"{Settimo}"
		, q"{Severiano}", q"{Severino}", q"{Severo}", q"{Sico}", q"{Sicuro}", q"{Sidonio}", q"{Sigfrido}"
		, q"{Sigismondo}", q"{Silvano}", q"{Silverio}", q"{Silvestro}", q"{Silvio}", q"{Simeone}", q"{Simone}"
		, q"{Sinesio}", q"{Sinfronio}", q"{Sireno}", q"{Siriano}", q"{Siricio}", q"{Sirio}", q"{Siro}"
		, q"{Sisto}", q"{Soccorso}", q"{Socrate}", q"{Solocone}", q"{Sostene}", q"{Sosteneo}", q"{Sostrato}"
		, q"{Spano}", q"{Spartaco}", q"{Speranzio}", q"{Stanislao}", q"{Stefano}", q"{Stiliano}", q"{Stiriaco}"
		, q"{Surano}", q"{Sviturno}", q"{Taddeo}", q"{Taide}", q"{Tammaro}", q"{Tancredi}", q"{Tarcisio}"
		, q"{Tarso}", q"{Taziano}", q"{Tazio}", q"{Telchide}", q"{Telemaco}", q"{Temistocle}", q"{Teobaldo}"
		, q"{Teodoro}", q"{Teodosio}", q"{Teodoto}", q"{Teogene}", q"{Terenzio}", q"{Terzo}", q"{Tesauro}"
		, q"{Tesifonte}", q"{Tibaldo}", q"{Tiberio}", q"{Tiburzio}", q"{Ticone}", q"{Timoteo}", q"{Tirone}"
		, q"{Tito}", q"{Tiziano}", q"{Tizio}", q"{Tobia}", q"{Tolomeo}", q"{Tommaso}", q"{Torquato}", q"{Tosco}"
		, q"{Tranquillo}", q"{Tristano}", q"{Tulliano}", q"{Tullio}", q"{Turi}", q"{Turibio}", q"{Tussio}"
		, q"{Ubaldo}", q"{Ubertino}", q"{Uberto}", q"{Ugo}", q"{Ugolino}", q"{Uguccione}", q"{Ulberto}"
		, q"{Ulderico}", q"{Ulfo}", q"{Ulisse}", q"{Ulpiano}", q"{Ulrico}", q"{Ulstano}", q"{Ultimo}", q"{Umberto}"
		, q"{Umile}", q"{Uranio}", q"{Urbano}", q"{Urdino}", q"{Uriele}", q"{Ursicio}", q"{Ursino}", q"{Ursmaro}"
		, q"{Valente}", q"{Valentino}", q"{Valeriano}", q"{Valerico}", q"{Valerio}", q"{Valfredo}", q"{Valfrido}"
		, q"{Valtena}", q"{Valter}", q"{Varo}", q"{Vasco}", q"{Vedasto}", q"{Velio}", q"{Venanzio}", q"{Venceslao}"
		, q"{Venerando}", q"{Venerio}", q"{Ventura}", q"{Venustiano}", q"{Venusto}", q"{Verano}", q"{Verecondo}"
		, q"{Verenzio}", q"{Verulo}", q"{Vespasiano}", q"{Vezio}", q"{Vidiano}", q"{Vidone}", q"{Vilfredo}"
		, q"{Viliberto}", q"{Vincenzo}", q"{Vindonio}", q"{Vinebaldo}", q"{Vinfrido}", q"{Vinicio}"
		, q"{Virgilio}", q"{Virginio}", q"{Virone}", q"{Viscardo}", q"{Vitale}", q"{Vitalico}", q"{Vito}"
		, q"{Vittore}", q"{Vittoriano}", q"{Vittorio}", q"{Vivaldo}", q"{Viviano}", q"{Vladimiro}", q"{Vodingo}"
		, q"{Volfango}", q"{Vulmaro}", q"{Vulpiano}", q"{Walter}", q"{Zabedeo}", q"{Zaccaria}", q"{Zaccheo}"
		, q"{Zanobi}", q"{Zefiro}", q"{Zena}", q"{Zenaide}", q"{Zenebio}", q"{Zeno}", q"{Zenobio}", q"{Zenone}"
		, q"{Zetico}", q"{Zoilo}", q"{Zosimo}", q"{Abbondanza}", q"{Acilia}", q"{Ada}", q"{Adalberta}"
		, q"{Adalgisa}", q"{Addolorata}", q"{Adelaide}", q"{Adelasia}", q"{Adele}", q"{Adelina}", q"{Adina}"
		, q"{Adria}", q"{Adriana}", q"{Agape}", q"{Agata}", q"{Agnese}", q"{Agostina}", q"{Aida}", q"{Alba}"
		, q"{Alberta}", q"{Albina}", q"{Alcina}", q"{Alda}", q"{Alessandra}", q"{Alessia}", q"{Alfonsa}"
		, q"{Alfreda}", q"{Alice}", q"{Alida}", q"{Alina}", q"{Allegra}", q"{Alma}", q"{Altea}", q"{Amalia}"
		, q"{Amanda}", q"{Amata}", q"{Ambra}", q"{Amelia}", q"{Amina}", q"{Anastasia}", q"{Anatolia}", q"{Ancilla}"
		, q"{Andromeda}", q"{Angela}", q"{Angelica}", q"{Anita}", q"{Anna}", q"{Annabella}", q"{Annagrazia}"
		, q"{Annamaria}", q"{Annunziata}", q"{Antea}", q"{Antigone}", q"{Antonella}", q"{Antonia}", q"{Apollina}"
		, q"{Apollonia}", q"{Appia}", q"{Arabella}", q"{Argelia}", q"{Arianna}", q"{Armida}", q"{Artemisa}"
		, q"{Asella}", q"{Asia}", q"{Assunta}", q"{Astrid}", q"{Atanasia}", q"{Aurelia}", q"{Aurora}", q"{Ausilia}"
		, q"{Ausiliatrice}", q"{Ave}", q"{Aza}", q"{Azelia}", q"{Azzurra}", q"{Babila}", q"{Bambina}", q"{Barbara}"
		, q"{Bartolomea}", q"{Basilia}", q"{Bassilla}", q"{Batilda}", q"{Beata}", q"{Beatrice}", q"{Belina}"
		, q"{Benedetta}", q"{Beniamina}", q"{Benigna}", q"{Benvenuta}", q"{Berenice}", q"{Bernadetta}"
		, q"{Betta}", q"{Bianca}", q"{Bibiana}", q"{Bice}", q"{Brigida}", q"{Brigitta}", q"{Bruna}", q"{Brunilde}"
		, q"{Calogera}", q"{Calpurnia}", q"{Camelia}", q"{Camilla}", q"{Candida}", q"{Capitolina}", q"{Carina}"
		, q"{Carla}", q"{Carlotta}", q"{Carmela}", q"{Carmen}", q"{Carola}", q"{Carolina}", q"{Casilda}"
		, q"{Casimira}", q"{Cassandra}", q"{Cassiopea}", q"{Catena}", q"{Caterina}", q"{Cecilia}", q"{Celeste}"
		, q"{Celinia}", q"{Chiara}", q"{Cinzia}", q"{Cirilla}", q"{Clara}", q"{Claudia}", q"{Clelia}", q"{Clemenzia}"
		, q"{Cleo}", q"{Cleofe}", q"{Cleopatra}", q"{Cloe}", q"{Clorinda}", q"{Cointa}", q"{Colomba}", q"{Concetta}"
		, q"{Consolata}", q"{Cora}", q"{Cordelia}", q"{Corinna}", q"{Cornelia}", q"{Cosima}", q"{Costanza}"
		, q"{Crescenzia}", q"{Cristiana}", q"{Cristina}", q"{Crocefissa}", q"{Cronida}", q"{Cunegonda}"
		, q"{Cuzia}", q"{Dafne}", q"{Dalida}", q"{Dalila}", q"{Damiana}", q"{Daniela}", q"{Daria}", q"{Deanna}"
		, q"{Debora}", q"{Degna}", q"{Delfina}", q"{Delia}", q"{Delinda}", q"{Delizia}", q"{Demetria}"
		, q"{Deodata}", q"{Desdemona}", q"{Desiderata}", q"{Devota}", q"{Diamante}", q"{Diana}", q"{Dianora}"
		, q"{Diletta}", q"{Dina}", q"{Diodata}", q"{Dionisia}", q"{Doda}", q"{Dolores}", q"{Domenica}"
		, q"{Donata}", q"{Donatella}", q"{Donna}", q"{Dora}", q"{Dorotea}", q"{Druina}", q"{Dulina}", q"{Ebe}"
		, q"{Edda}", q"{Edelberga}", q"{Editta}", q"{Edvige}", q"{Egizia}", q"{Egle}", q"{Elaide}", q"{Elda}"
		, q"{Elena}", q"{Eleonora}", q"{Elettra}", q"{Eliana}", q"{Elide}", q"{Elimena}", q"{Elisa}", q"{Elisabetta}"
		, q"{Elisea}", q"{Ella}", q"{Eloisa}", q"{Elsa}", q"{Elvia}", q"{Elvira}", q"{Emanuela}", q"{Emilia}"
		, q"{Emiliana}", q"{Emma}", q"{Enimia}", q"{Enrica}", q"{Eracla}", q"{Ermelinda}", q"{Ermenegarda}"
		, q"{Ermenegilda}", q"{Erminia}", q"{Ernesta}", q"{Ersilia}", q"{Esmeralda}", q"{Estella}", q"{Ester}"
		, q"{Esterina}", q"{Eufemia}", q"{Eufrasia}", q"{Eugenia}", q"{Eulalia}", q"{Euridice}", q"{Eusebia}"
		, q"{Eutalia}", q"{Eva}", q"{Evangelina}", q"{Evelina}", q"{Fabiana}", q"{Fabiola}", q"{Fatima}"
		, q"{Fausta}", q"{Federica}", q"{Fedora}", q"{Felicia}", q"{Felicita}", q"{Fernanda}", q"{Fiammetta}"
		, q"{Filippa}", q"{Filomena}", q"{Fiordaliso}", q"{Fiore}", q"{Fiorella}", q"{Fiorenza}", q"{Flaminia}"
		, q"{Flavia}", q"{Flaviana}", q"{Flora}", q"{Floriana}", q"{Floridia}", q"{Florina}", q"{Foca}"
		, q"{Fortunata}", q"{Fosca}", q"{Franca}", q"{Francesca}", q"{Fulvia}", q"{Gabriella}", q"{Gaia}"
		, q"{Galatea}", q"{Gaudenzia}", q"{Gelsomina}", q"{Geltrude}", q"{Gemma}", q"{Generosa}", q"{Genesia}"
		, q"{Genoveffa}", q"{Germana}", q"{Gertrude}", q"{Ghita}", q"{Giacinta}", q"{Giada}", q"{Gigliola}"
		, q"{Gilda}", q"{Giliola}", q"{Ginevra}", q"{Gioacchina}", q"{Gioconda}", q"{Gioia}", q"{Giorgia}"
		, q"{Giovanna}", q"{Gisella}", q"{Giuditta}", q"{Giulia}", q"{Giuliana}", q"{Giulitta}", q"{Giuseppa}"
		, q"{Giuseppina}", q"{Giusta}", q"{Glenda}", q"{Gloria}", q"{Godeberta}", q"{Godiva}", q"{Grazia}"
		, q"{Graziana}", q"{Graziella}", q"{Greta}", q"{Griselda}", q"{Guenda}", q"{Guendalina}", q"{Gundelinda}"
		, q"{Ianira}", q"{Ida}", q"{Idea}", q"{Iginia}", q"{Ilaria}", q"{Ilda}", q"{Ildegarda}", q"{Ildegonda}"
		, q"{Ileana}", q"{Ilenia}", q"{Ilia}", q"{Ilva}", q"{Imelda}", q"{Immacolata}", q"{Incoronata}"
		, q"{Ines}", q"{Innocenza}", q"{Iolanda}", q"{Iole}", q"{Iona}", q"{Ione}", q"{Ionne}", q"{Irene}"
		, q"{Iride}", q"{Iris}", q"{Irma}", q"{Irmina}", q"{Isa}", q"{Isabella}", q"{Iside}", q"{Isidora}"
		, q"{Isotta}", q"{Italia}", q"{Ivetta}", q"{Lara}", q"{Laura}", q"{Lavinia}", q"{Lea}", q"{Leda}"
		, q"{Lelia}", q"{Lena}", q"{Leonia}", q"{Leonilda}", q"{Leontina}", q"{Letizia}", q"{Lia}", q"{Liana}"
		, q"{Liberata}", q"{Liboria}", q"{Licia}", q"{Lidania}", q"{Lidia}", q"{Liliana}", q"{Linda}", q"{Lisa}"
		, q"{Livia}", q"{Liviana}", q"{Lodovica}", q"{Loredana}", q"{Lorella}", q"{Lorena}", q"{Lorenza}"
		, q"{Loretta}", q"{Loriana}", q"{Luana}", q"{Luce}", q"{Lucia}", q"{Luciana}", q"{Lucilla}", q"{Lucrezia}"
		, q"{Ludovica}", q"{Luigia}", q"{Luisa}", q"{Luminosa}", q"{Luna}", q"{Macaria}", q"{Maddalena}"
		, q"{Mafalda}", q"{Magda}", q"{Maida}", q"{Manuela}", q"{Mara}", q"{Marana}", q"{Marcella}", q"{Mareta}"
		, q"{Margherita}", q"{Maria}", q"{Marianna}", q"{Marica}", q"{Mariella}", q"{Marilena}", q"{Marina}"
		, q"{Marinella}", q"{Marinetta}", q"{Marisa}", q"{Marita}", q"{Marta}", q"{Martina}", q"{Maruta}"
		, q"{Marzia}", q"{Massima}", q"{Matilde}", q"{Maura}", q"{Melania}", q"{Melissa}", q"{Melitina}"
		, q"{Menodora}", q"{Mercede}", q"{Messalina}", q"{Mia}", q"{Michela}", q"{Milena}", q"{Mimma}"
		, q"{Mina}", q"{Minerva}", q"{Minervina}", q"{Miranda}", q"{Mirella}", q"{Miriam}", q"{Mirta}"
		, q"{Moira}", q"{Monica}", q"{Morena}", q"{Morgana}", q"{Nadia}", q"{Natalia}", q"{Natalina}", q"{Neiva}"
		, q"{Nerea}", q"{Nicla}", q"{Nicoletta}", q"{Nilde}", q"{Nina}", q"{Ninfa}", q"{Nives}", q"{Noemi}"
		, q"{Norina}", q"{Norma}", q"{Novella}", q"{Nuccia}", q"{Nunziata}", q"{Odetta}", q"{Odilia}", q"{Ofelia}"
		, q"{Olga}", q"{Olimpia}", q"{Olinda}", q"{Olivia}", q"{Oliviera}", q"{Ombretta}", q"{Ondina}"
		, q"{Onesta}", q"{Onorata}", q"{Onorina}", q"{Orchidea}", q"{Oriana}", q"{Orietta}", q"{Ornella}"
		, q"{Orsola}", q"{Orsolina}", q"{Ortensia}", q"{Osanna}", q"{Otilia}", q"{Ottilia}", q"{Palladia}"
		, q"{Palmazio}", q"{Palmira}", q"{Pamela}", q"{Paola}", q"{Patrizia}", q"{Pelagia}", q"{Penelope}"
		, q"{Perla}", q"{Petronilla}", q"{Pia}", q"{Piera}", q"{Placida}", q"{Polissena}", q"{Porzia}"
		, q"{Prisca}", q"{Priscilla}", q"{Proserpina}", q"{Prospera}", q"{Prudenzia}", q"{Quartilla}"
		, q"{Quieta}", q"{Quiteria}", q"{Rachele}", q"{Raffaella}", q"{Rainelda}", q"{Rebecca}", q"{Regina}"
		, q"{Renata}", q"{Riccarda}", q"{Rina}", q"{Rita}", q"{Roberta}", q"{Romana}", q"{Romilda}", q"{Romina}"
		, q"{Romola}", q"{Rosa}", q"{Rosalia}", q"{Rosalinda}", q"{Rosamunda}", q"{Rosanna}", q"{Rosita}"
		, q"{Rosmunda}", q"{Rossana}", q"{Rossella}", q"{Rufina}", q"{Saba}", q"{Sabina}", q"{Sabrina}"
		, q"{Samanta}", q"{Samona}", q"{Sandra}", q"{Santina}", q"{Sara}", q"{Savina}", q"{Scolastica}"
		, q"{Sebastiana}", q"{Seconda}", q"{Secondina}", q"{Sefora}", q"{Selene}", q"{Selvaggia}", q"{Semiramide}"
		, q"{Serafina}", q"{Serena}", q"{Severa}", q"{Sibilla}", q"{Sidonia}", q"{Silvana}", q"{Silvia}"
		, q"{Simona}", q"{Simonetta}", q"{Siria}", q"{Smeralda}", q"{Soave}", q"{Sofia}", q"{Sofronia}"
		, q"{Solange}", q"{Sonia}", q"{Speranza}", q"{Stefania}", q"{Stella}", q"{Susanna}", q"{Sveva}"
		, q"{Tabita}", q"{Tamara}", q"{Tarquinia}", q"{Tarsilla}", q"{Taziana}", q"{Tea}", q"{Tecla}", q"{Telica}"
		, q"{Teodata}", q"{Teodolinda}", q"{Teodora}", q"{Teresa}", q"{Teudosia}", q"{Tina}", q"{Tiziana}"
		, q"{Tosca}", q"{Trasea}", q"{Tullia}", q"{Ugolina}", q"{Ulfa}", q"{Uliva}", q"{Unna}", q"{Vala}"
		, q"{Valentina}", q"{Valeria}", q"{Valeriana}", q"{Vanda}", q"{Vanessa}", q"{Vanna}", q"{Venera}"
		, q"{Veneranda}", q"{Venere}", q"{Venusta}", q"{Vera}", q"{Verdiana}", q"{Verena}", q"{Veriana}"
		, q"{Veridiana}", q"{Veronica}", q"{Viliana}", q"{Vilma}", q"{Vincenza}", q"{Viola}", q"{Violante}"
		, q"{Virginia}", q"{Vissia}", q"{Vittoria}", q"{Viviana}", q"{Wanda}", q"{Zabina}", q"{Zaira}"
		, q"{Zama}", q"{Zanita}", q"{Zarina}", q"{Zelinda}", q"{Zenobia}", q"{Zita}", q"{Zoe}", q"{Zosima}" ];

		return choice(strs, this.rnd);
	}

	override string personLastName() {
		const string[] strs =
		[ q"{Abate}", q"{Abbate}", q"{Abbondanza}", q"{Abbrescia}", q"{Accardi}", q"{Accardo}", q"{Accurso}"
		, q"{Aceto}", q"{Acquadro}", q"{Acquaviva}", q"{Acquistapace}", q"{Adami}", q"{Adamo}", q"{Addari}"
		, q"{Addis}", q"{Adragna}", q"{Affinito}", q"{Agnello}", q"{Agostinelli}", q"{Agostini}", q"{Agresta}"
		, q"{Aiello}", q"{Alaimo}", q"{Albanese}", q"{Albano}", q"{Alberti}", q"{Alcamo}", q"{Alessandrini}"
		, q"{Alessi}", q"{Alfano}", q"{Alfieri}", q"{Alivernini}", q"{Allegretti}", q"{Aloi}", q"{Altieri}"
		, q"{Amabile}", q"{Amadori}", q"{Amato}", q"{Ambrosini}", q"{Ambrosino}", q"{Ambrosio}", q"{Amendola}"
		, q"{Amerio}", q"{Amici}", q"{Amico}", q"{Ammoscato}", q"{Amoroso}", q"{Amoruso}", q"{Ancona}"
		, q"{Andreoli}", q"{Andrisani}", q"{Anelli}", q"{Angeletti}", q"{Angeli}", q"{Angelini}", q"{Angeloni}"
		, q"{Angelucci}", q"{Annunziata}", q"{Anselmi}", q"{Anselmo}", q"{Antenucci}", q"{Antezza}"
		, q"{Antonacci}", q"{Antonelli}", q"{Antonini}", q"{Antonucci}", q"{Anzalone}", q"{Apicella}"
		, q"{Aprile}", q"{Aquino}", q"{Aramini}", q"{Arcangeli}", q"{Arena}", q"{Argenio}", q"{Argento}"
		, q"{Argiolas}", q"{Artioli}", q"{Asaro}", q"{Ascione}", q"{Astolfi}", q"{Atzeni}", q"{Atzori}"
		, q"{Avallone}", q"{Avola}", q"{Azara}", q"{Babini}", q"{Bacci}", q"{Baggio}", q"{Baiocco}", q"{Balboni}"
		, q"{Baldacci}", q"{Baldassarre}", q"{Baldi}", q"{Baldini}", q"{Baldo}", q"{Balducci}", q"{Balestra}"
		, q"{Balistreri}", q"{Ballarin}", q"{Balsamo}", q"{Balzano}", q"{Bandini}", q"{Bani}", q"{Baraldi}"
		, q"{Barbagallo}", q"{Barbarossa}", q"{Barbarulo}", q"{Barbato}", q"{Barbera}", q"{Barberi}"
		, q"{Barberis}", q"{Barbero}", q"{Barbieri}", q"{Barbiero}", q"{Barile}", q"{Barillà}", q"{Barletta}"
		, q"{Barone}", q"{Baroni}", q"{Barra}", q"{Barreca}", q"{Barresi}", q"{Barretta}", q"{Barsotti}"
		, q"{Bartoli}", q"{Bartolini}", q"{Bartolomei}", q"{Bartolucci}", q"{Basile}", q"{Bassani}"
		, q"{Bassi}", q"{Basso}", q"{Battaglia}", q"{Battista}", q"{Battisti}", q"{Battistini}", q"{Bedini}"
		, q"{Belli}", q"{Bellini}", q"{Bellomo}", q"{Bellotti}", q"{Bellucci}", q"{Belmonte}", q"{Belotti}"
		, q"{Beltrame}", q"{Beltrami}", q"{Belvisi}", q"{Benatti}", q"{Benedetti}", q"{Benedetto}", q"{Benetti}"
		, q"{Benigni}", q"{Benini}", q"{Bennardo}", q"{Bentivoglio}", q"{Benvenuti}", q"{Benvenuto}"
		, q"{Berardi}", q"{Beretta}", q"{Bergamasco}", q"{Bergamini}", q"{Bernabei}", q"{Bernardi}"
		, q"{Bernardini}", q"{Bernasconi}", q"{Bertaccini}", q"{Bertani}", q"{Bertelli}", q"{Berti}"
		, q"{Bertini}", q"{Berto}", q"{Bertolini}", q"{Bertolussi}", q"{Beso}", q"{Betti}", q"{Bevilacqua}"
		, q"{Biagetti}", q"{Biagi}", q"{Biagini}", q"{Bianc}", q"{Biancheri}", q"{Bianchetti}", q"{Bianchi}"
		, q"{Bianchini}", q"{Bianco}", q"{Biasci}", q"{Biccari}", q"{Biggi}", q"{Bindi}", q"{Bini}", q"{Bionaz}"
		, q"{Biondi}", q"{Bisconti}", q"{Bisio}", q"{Bizzarri}", q"{Blanc}", q"{Blasi}", q"{Bocchi}", q"{Boccia}"
		, q"{Bodini}", q"{Boffa}", q"{Boi}", q"{Bologna}", q"{Bonanni}", q"{Bonanno}", q"{Bonato}", q"{Bonazzi}"
		, q"{Bonelli}", q"{Bonetti}", q"{Bongiorno}", q"{Bongiovanni}", q"{Boni}", q"{Bonifazi}", q"{Bonini}"
		, q"{Bono}", q"{Bonomi}", q"{Bonomo}", q"{Bordoni}", q"{Borelli}", q"{Borghi}", q"{Borgia}", q"{Borrelli}"
		, q"{Bortolin}", q"{Bortoluzzi}", q"{Bortot}", q"{Boscaino}", q"{Boschetti}", q"{Boschi}", q"{Bosco}"
		, q"{Boscolo}", q"{Bosi}", q"{Botta}", q"{Bove}", q"{Bovolenta}", q"{Bozzi}", q"{Bozzo}", q"{Braia}"
		, q"{Brambilla}", q"{Branca}", q"{Brandi}", q"{Bresciani}", q"{Bressan}", q"{Briano}", q"{Brigandì}"
		, q"{Brignone}", q"{Brizzi}", q"{Brogi}", q"{Brumat}", q"{Brunelli}", q"{Brunetti}", q"{Bruni}"
		, q"{Bruno}", q"{Bruschi}", q"{Bruzzone}", q"{Buccheri}", q"{Bucci}", q"{Bulgarelli}", q"{Buongiorno}"
		, q"{Buonomo}", q"{Burgio}", q"{Butera}", q"{Buzzi}", q"{Cabras}", q"{Caccamo}", q"{Caccavo}", q"{Cacciapuoti}"
		, q"{Cacciatore}", q"{Cadoni}", q"{Caforio}", q"{Caggiano}", q"{Caiazza}", q"{Caiazzo}", q"{Calabrese}"
		, q"{Calabria}", q"{Calabrò}", q"{Calafiore}", q"{Calandro}", q"{Calì}", q"{Califano}", q"{Callegari}"
		, q"{Calligaris}", q"{Calò}", q"{Camilli}", q"{Cammarata}", q"{Cammisa}", q"{Campagna}", q"{Campana}"
		, q"{Campanella}", q"{Campanile}", q"{Campanini}", q"{Campisi}", q"{Campo}", q"{Campoli}", q"{Campus}"
		, q"{Canale}", q"{Cancelliere}", q"{Cancellieri}", q"{Candela}", q"{Candido}", q"{Canepa}", q"{Cangiano}"
		, q"{Canino}", q"{Cannas}", q"{Cannata}", q"{Cannella}", q"{Cannone}", q"{Canova}", q"{Cantagallo}"
		, q"{Cantoni}", q"{Canu}", q"{Capannolo}", q"{Capasso}", q"{Capecchi}", q"{Capelli}", q"{Capitani}"
		, q"{Capizzi}", q"{Capoccia}", q"{Capocotta}", q"{Capogna}", q"{Capone}", q"{Caporaso}", q"{Cappai}"
		, q"{Cappelletti}", q"{Cappelli}", q"{Cappello}", q"{Cappiello}", q"{Capponi}", q"{Capraro}"
		, q"{Capriotti}", q"{Capuano}", q"{Caputo}", q"{Cara}", q"{Caracciolo}", q"{Caradonna}", q"{Carbon}"
		, q"{Carbone}", q"{Carboni}", q"{Cardella}", q"{Cardia}", q"{Cardinale}", q"{Cardinali}", q"{Cardini}"
		, q"{Cardone}", q"{Carè}", q"{Careddu}", q"{Carella}", q"{Caretti}", q"{Caricari}", q"{Carini}"
		, q"{Carletti}", q"{Carli}", q"{Carlini}", q"{Carlino}", q"{Carloni}", q"{Carlotti}", q"{Carlucci}"
		, q"{Carminati}", q"{Carnevale}", q"{Carnovale}", q"{Carollo}", q"{Carosi}", q"{Carrara}", q"{Carraro}"
		, q"{Carrieri}", q"{Carriero}", q"{Carrozza}", q"{Carrozzo}", q"{Carrus}", q"{Carta}", q"{Caruso}"
		, q"{Carvelli}", q"{Casadei}", q"{Casadio}", q"{Casagrande}", q"{Casale}", q"{Casali}", q"{Casano}"
		, q"{Casavecchia}", q"{Cascio}", q"{Cascone}", q"{Casella}", q"{Caselli}", q"{Caserta}", q"{Casini}"
		, q"{Casolaro}", q"{Cassano}", q"{Castagna}", q"{Castaldi}", q"{Castaldo}", q"{Castellana}"
		, q"{Castellani}", q"{Castellano}", q"{Castelli}", q"{Castiello}", q"{Castiglioni}", q"{Casu}"
		, q"{Casula}", q"{Catalano}", q"{Cataldi}", q"{Cataldo}", q"{Catania}", q"{Catanzaro}", q"{Catarsi}"
		, q"{Catellani}", q"{Caterino}", q"{Cattaneo}", q"{Cattani}", q"{Cavaliere}", q"{Cavalieri}"
		, q"{Cavallari}", q"{Cavallaro}", q"{Cavalli}", q"{Cavallini}", q"{Cavallo}", q"{Cavriani}"
		, q"{Ceccarelli}", q"{Ceccarini}", q"{Cecchetti}", q"{Cecchi}", q"{Cecchini}", q"{Cecere}", q"{Celano}"
		, q"{Celentano}", q"{Celeste}", q"{Celi}", q"{Celli}", q"{Cellini}", q"{Cenni}", q"{Centofanti}"
		, q"{Cerise}", q"{Cerrani}", q"{Cerrato}", q"{Cerri}", q"{Cerullo}", q"{Cerutti}", q"{Cesaretti}"
		, q"{Cherchi}", q"{Cherubini}", q"{Chessa}", q"{Chessari}", q"{Chiacchio}", q"{Chianese}", q"{Chiaravalle}"
		, q"{Chiavacci}", q"{Chilà}", q"{Chimenti}", q"{Chiodi}", q"{Chirico}", q"{Ciaccio}", q"{Ciacio}"
		, q"{Ciampa}", q"{Cianci}", q"{Ciani}", q"{Ciavarella}", q"{Cicala}", q"{Cicatiello}", q"{Ciccarelli}"
		, q"{Cicchetti}", q"{Ciccone}", q"{Cifarelli}", q"{Cilli}", q"{Cimmino}", q"{Cinelli}", q"{Cingolani}"
		, q"{Cini}", q"{Cioffi}", q"{Cioni}", q"{Ciotola}", q"{Ciotti}", q"{Cipolla}", q"{Cipollaro}", q"{Cipolletta}"
		, q"{Cipriani}", q"{Cipriano}", q"{Cirelli}", q"{Cirillo}", q"{Citro}", q"{Cittadino}", q"{Ciuffetelli}"
		, q"{Ciuffreda}", q"{Ciulla}", q"{Clemente}", q"{Coccia}", q"{Cocco}", q"{Cola}", q"{Colangelo}"
		, q"{Colantuono}", q"{Colella}", q"{Coletta}", q"{Colombo}", q"{Colonna}", q"{Colucci}", q"{Comito}"
		, q"{Como}", q"{Concas}", q"{Conforti}", q"{Congiu}", q"{Coniglio}", q"{Consiglio}", q"{Cont}"
		, q"{Conte}", q"{Conti}", q"{Contini}", q"{Contu}", q"{Coppola}", q"{Corazza}", q"{Cordioli}", q"{Coretti}"
		, q"{Corona}", q"{Corradi}", q"{Corradini}", q"{Corrado}", q"{Corrao}", q"{Correale}", q"{Corridori}"
		, q"{Corsi}", q"{Corsini}", q"{Corso}", q"{Cortese}", q"{Cortesi}", q"{Corti}", q"{Cortinovis}"
		, q"{Cosentino}", q"{Coslovich}", q"{Cossu}", q"{Costa}", q"{Costantin}", q"{Costantini}", q"{Costantino}"
		, q"{Costanza}", q"{Costanzo}", q"{Cottone}", q"{Coviello}", q"{Cozzani}", q"{Cozzi}", q"{Cozzolino}"
		, q"{Crea}", q"{Cremona}", q"{Cremonesi}", q"{Crepaldi}", q"{Crescenzi}", q"{Crespi}", q"{Crevatin}"
		, q"{Crimi}", q"{Crippa}", q"{Crisafulli}", q"{Criscenti}", q"{Crisci}", q"{Criscione}", q"{Crispino}"
		, q"{Cristiano}", q"{Cristofaro}", q"{Critelli}", q"{Croce}", q"{Cruciani}", q"{Cruciata}", q"{Cucchiara}"
		, q"{Cucciniello}", q"{Cuomo}", q"{Curci}", q"{Curcio}", q"{Curreli}", q"{Cusimano}", q"{Cusumano}"
		, q"{Cuzzocrea}", q"{D'Agostino}", q"{D'Aleo}", q"{D'Alessandro}", q"{D'Alessio}", q"{D'Amato}"
		, q"{D'Ambrosio}", q"{D'Amico}", q"{D'Amore}", q"{D'Andrea}", q"{D'Angeli}", q"{D'Angelo}", q"{D'Anna}"
		, q"{D'Argenio}", q"{D'Avino}", q"{D'Elia}", q"{D'Errico}", q"{D'Incà}", q"{D'Ippolito}", q"{D'Onofrio}"
		, q"{D'Orazio}", q"{D'Urso}", q"{Da Rold}", q"{Daidone}", q"{Dal Farra}", q"{Dalmasso}", q"{Damiani}"
		, q"{Damiano}", q"{Damico}", q"{Daniele}", q"{Dante}", q"{Dattilo}", q"{Davoli}", q"{De Angelis}"
		, q"{De Biase}", q"{De Blasi}", q"{De Bona}", q"{De Bonis}", q"{De Candido}", q"{De Carlo}"
		, q"{De Carolis}", q"{De Chiara}", q"{De Cicco}", q"{De Col}", q"{De Cristofaro}", q"{De Falco}"
		, q"{De Fazio}", q"{De Feo}", q"{De Filippis}", q"{De Filippo}", q"{De Giorgi}", q"{De Giorgio}"
		, q"{De Gregorio}", q"{De Lorenzo}", q"{De Luca}", q"{De Lucia}", q"{De Maio}", q"{De Marco}"
		, q"{De Maria}", q"{De Martino}", q"{De Masi}", q"{De Meo}", q"{De Napoli}", q"{De Palma}", q"{De Rosa}"
		, q"{De Rossi}", q"{De Salvo}", q"{De Sanctis}", q"{De Santis}", q"{De Simone}", q"{De Stefano}"
		, q"{De Vita}", q"{De Vito}", q"{Degano}", q"{Degrassi}", q"{Deiana}", q"{Del Bianco}", q"{Del Gaudio}"
		, q"{Del Monte}", q"{Del Prete}", q"{Del Vecchio}", q"{Delfino}", q"{Dell'Amico}", q"{Delle Monache}"
		, q"{Delogu}", q"{Demontis}", q"{Demurtas}", q"{Denaro}", q"{Denti}", q"{Deriu}", q"{Desiderio}"
		, q"{Desogus}", q"{Destro}", q"{Di Bari}", q"{Di Battista}", q"{Di Bella}", q"{Di Benedetto}"
		, q"{Di Biase}", q"{Di Blasi}", q"{Di Caccamo}", q"{Di Carlo}", q"{Di Cesare}", q"{Di Ciocco}"
		, q"{Di Costanzo}", q"{Di Dio}", q"{Di Domenico}", q"{Di Donato}", q"{Di Fazio}", q"{Di Felice}"
		, q"{Di Fiore}", q"{Di Francesco}", q"{Di Franco}", q"{Di Gaetano}", q"{Di Gennaro}", q"{Di Giacomo}"
		, q"{Di Giorgio}", q"{Di Giovanni}", q"{Di Girolamo}", q"{Di Giuseppe}", q"{Di Gregorio}"
		, q"{Di Grezia}", q"{Di Iorio}", q"{Di Lascio}", q"{Di Lecce}", q"{Di Liberto}", q"{Di Lorenzo}"
		, q"{Di Luca}", q"{Di Maggio}", q"{Di Maio}", q"{Di Marco}", q"{Di Maria}", q"{Di Marino}", q"{Di Maro}"
		, q"{Di Martino}", q"{Di Marzio}", q"{Di Matteo}", q"{Di Mauro}", q"{Di Michele}", q"{Di Nardo}"
		, q"{Di Natale}", q"{Di Palma}", q"{Di Paola}", q"{Di Paolo}", q"{Di Pasquale}", q"{Di Pede}"
		, q"{Di Pietro}", q"{Di Rocco}", q"{Di Salvo}", q"{Di Santo}", q"{Di Sarno}", q"{Di Somma}"
		, q"{Di Stefano}", q"{Di Tommaso}", q"{Di Tullio}", q"{Di Vita}", q"{Diamanti}", q"{Diana}"
		, q"{Dini}", q"{Dionisi}", q"{Distefano}", q"{Dodaro}", q"{Dolce}", q"{Dolci}", q"{Dominici}", q"{Donati}"
		, q"{Donato}", q"{Donda}", q"{Doria}", q"{Doro}", q"{Doronzo}", q"{Drago}", q"{Dragone}", q"{Dragoni}"
		, q"{Duca}", q"{Ducci}", q"{Durante}", q"{Dutto}", q"{Egger}", q"{Elia}", q"{Eligibile}", q"{Epifani}"
		, q"{Ercoli}", q"{Ermini}", q"{Errante}", q"{Errera}", q"{Errichiello}", q"{Errico}", q"{Esposito}"
		, q"{Evangelista}", q"{Evangelisti}", q"{Evola}", q"{Fabbri}", q"{Fabbricatore}", q"{Fabbro}"
		, q"{Fabiani}", q"{Fabiano}", q"{Fabris}", q"{Fabrizi}", q"{Fabrizio}", q"{Fadda}", q"{Falbo}"
		, q"{Falchi}", q"{Falcioni}", q"{Falco}", q"{Falcone}", q"{Falzone}", q"{Fanara}", q"{Fancello}"
		, q"{Fanelli}", q"{Fantini}", q"{Fantozzi}", q"{Faraci}", q"{Faraone}", q"{Farella}", q"{Farin}"
		, q"{Farina}", q"{Farris}", q"{Fasano}", q"{Fasoli}", q"{Fava}", q"{Favara}", q"{Favaro}", q"{Favero}"
		, q"{Favre}", q"{Fazio}", q"{Fedele}", q"{Federici}", q"{Federico}", q"{Feleppa}", q"{Felici}"
		, q"{Feliziani}", q"{Femina}", q"{Ferilli}", q"{Ferluga}", q"{Ferracuti}", q"{Ferraiuolo}", q"{Ferrando}"
		, q"{Ferrante}", q"{Ferranti}", q"{Ferrara}", q"{Ferrari}", q"{Ferrarini}", q"{Ferrario}", q"{Ferraris}"
		, q"{Ferraro}", q"{Ferrarotti}", q"{Ferreri}", q"{Ferrero}", q"{Ferretti}", q"{Ferri}", q"{Ferrigno}"
		, q"{Ferrini}", q"{Ferro}", q"{Ferroni}", q"{Festa}", q"{Festuccia}", q"{Fichera}", q"{Fierro}"
		, q"{Filice}", q"{Filippi}", q"{Filippini}", q"{Filipponi}", q"{Fini}", q"{Finocchiaro}", q"{Finotti}"
		, q"{Fior}", q"{Fioravanti}", q"{Fiore}", q"{Fiorelli}", q"{Fiorentini}", q"{Fiorentino}", q"{Fiorenza}"
		, q"{Fioretti}", q"{Fiori}", q"{Fiorillo}", q"{Fiorini}", q"{Fiorucci}", q"{Fischetti}", q"{Flacco}"
		, q"{Flore}", q"{Floridia}", q"{Florio}", q"{Floris}", q"{Foglia}", q"{Fois}", q"{Fonda}", q"{Fontana}"
		, q"{Fonti}", q"{Forconi}", q"{Forgione}", q"{Forlani}", q"{Formica}", q"{Fornara}", q"{Forte}"
		, q"{Fortugno}", q"{Fortunato}", q"{Foschi}", q"{Foti}", q"{Francesca}", q"{Franceschi}", q"{Franceschini}"
		, q"{Francesconi}", q"{Francese}", q"{Franchi}", q"{Franchini}", q"{Franco}", q"{Franzè}", q"{Franzoni}"
		, q"{Frasca}", q"{Fratello}", q"{Fratti}", q"{Frau}", q"{Frezza}", q"{Frigerio}", q"{Frigo}", q"{Fucci}"
		, q"{Fumagalli}", q"{Fumarola}", q"{Fuoco}", q"{Furlan}", q"{Furno}", q"{Fusaro}", q"{Fusco}", q"{Gabriele}"
		, q"{Gabrielli}", q"{Gaddini}", q"{Gagliano}", q"{Gagliardi}", q"{Galante}", q"{Galasso}", q"{Galati}"
		, q"{Galeazzi}", q"{Galli}", q"{Gallo}", q"{Galluzzo}", q"{Gamba}", q"{Gamberini}", q"{Gambino}"
		, q"{Gamper}", q"{Gandolfo}", q"{Gangemi}", q"{Garau}", q"{Garavaglia}", q"{Gargiulo}", q"{Garifo}"
		, q"{Garofalo}", q"{Gaspari}", q"{Gasparini}", q"{Gasser}", q"{Gatta}", q"{Gatti}", q"{Gatto}"
		, q"{Gaudiano}", q"{Gazzola}", q"{Gemma}", q"{Genchi}", q"{Genna}", q"{Gennaro}", q"{Genovese}"
		, q"{Gentile}", q"{Gentili}", q"{Gerace}", q"{Geraci}", q"{Germani}", q"{Gervasi}", q"{Ghilardi}"
		, q"{Giacalone}", q"{Giaccio}", q"{Giachi}", q"{Giacomelli}", q"{Giampaoli}", q"{Giampaolo}"
		, q"{Giannelli}", q"{Giannetti}", q"{Gianni}", q"{Giannini}", q"{Giannone}", q"{Giannotti}"
		, q"{Gianotti}", q"{Giansante}", q"{Giardina}", q"{Giardini}", q"{Gigli}", q"{Giglio}", q"{Gigliotti}"
		, q"{Gioacchini}", q"{Gioia}", q"{Giordani}", q"{Giordano}", q"{Giorgetti}", q"{Giorgi}", q"{Giorgio}"
		, q"{Giovannelli}", q"{Giovannetti}", q"{Giovannini}", q"{Giovinazzo}", q"{Girardi}", q"{Giraudo}"
		, q"{Girone}", q"{Giudice}", q"{Giuffrida}", q"{Giugliano}", q"{Giuliani}", q"{Giuliano}", q"{Giunta}"
		, q"{Giusti}", q"{Giustra}", q"{Gobbi}", q"{Golinelli}", q"{Gori}", q"{Govoni}", q"{Granà}", q"{Granata}"
		, q"{Granato}", q"{Grande}", q"{Grandi}", q"{Grange}", q"{Grassi}", q"{Grasso}", q"{Gravina}", q"{Graziani}"
		, q"{Graziano}", q"{Greco}", q"{Gregori}", q"{Greppi}", q"{Grieco}", q"{Grilli}", q"{Grillo}", q"{Grimaldi}"
		, q"{Grossi}", q"{Grosso}", q"{Gruber}", q"{Gruppuso}", q"{Gualtieri}", q"{Guarino}", q"{Guarneri}"
		, q"{Guarnieri}", q"{Guastella}", q"{Guastone}", q"{Guerra}", q"{Guerrieri}", q"{Guerriero}"
		, q"{Guerrini}", q"{Guglielmi}", q"{Guida}", q"{Guidetti}", q"{Guidi}", q"{Guido}", q"{Guidotti}"
		, q"{Gulino}", q"{Gullì}", q"{Gurrieri}", q"{Gusmeroli}", q"{Hofer}", q"{Huber}", q"{Iacolare}"
		, q"{Iacono}", q"{Iacovino}", q"{Iacovone}", q"{Iandolo}", q"{Iannaccone}", q"{Iannello}", q"{Ianni}"
		, q"{Iannone}", q"{Iannucci}", q"{Iaria}", q"{Iazzetta}", q"{Ierardi}", q"{Iezzi}", q"{Impellizzeri}"
		, q"{Improta}", q"{Indelicato}", q"{Ingrassia}", q"{Ingrosso}", q"{Innocenti}", q"{Inzerillo}"
		, q"{Iodice}", q"{Iorio}", q"{Iotti}", q"{Iovino}", q"{Ippoliti}", q"{Ippolito}", q"{Iuliano}"
		, q"{Izzi}", q"{Izzo}", q"{Kofler}", q"{La Barbera}", q"{La Malfa}", q"{La Manna}", q"{La Monaca}"
		, q"{La Monica}", q"{La Porta}", q"{La Rocca}", q"{La Rosa}", q"{La Sala}", q"{La Torre}", q"{Labate}"
		, q"{Laezza}", q"{Laganà}", q"{Lai}", q"{Lamacchia}", q"{Lamberti}", q"{Lana}", q"{Landi}", q"{Lanteri}"
		, q"{Lanza}", q"{Lari}", q"{Latini}", q"{Latorre}", q"{Lattanzi}", q"{Lauri}", q"{Lavecchia}", q"{Lazzari}"
		, q"{Lazzarini}", q"{Lazzaro}", q"{Leale}", q"{Lecca}", q"{Ledda}", q"{Leggio}", q"{Lelli}", q"{Lentini}"
		, q"{Lenzi}", q"{Leo}", q"{Leonardi}", q"{Leoncini}", q"{Leone}", q"{Leonetti}", q"{Leoni}", q"{Leopardi}"
		, q"{Lepore}", q"{Lezzi}", q"{Liberati}", q"{Librizzi}", q"{Licata}", q"{Liccardo}", q"{Licciardello}"
		, q"{Licitra}", q"{Ligorio}", q"{Liguori}", q"{Liotta}", q"{Lipari}", q"{Lippi}", q"{Lippolis}"
		, q"{Lisi}", q"{Litterio}", q"{Liuzzi}", q"{Liverani}", q"{Lo Bianco}", q"{Lo Cascio}", q"{Lo Giudice}"
		, q"{Lo Iacono}", q"{Lo Piccolo}", q"{Lo Pinto}", q"{Lo Presti}", q"{Locatelli}", q"{Locci}"
		, q"{Loddo}", q"{Lodi}", q"{Loffredo}", q"{Loi}", q"{Loiacono}", q"{Lolli}", q"{Lombardi}", q"{Lombardini}"
		, q"{Lombardo}", q"{Lonardi}", q"{Longhi}", q"{Longo}", q"{Longobardi}", q"{Lopez}", q"{Lorenzini}"
		, q"{Loreti}", q"{Loreto}", q"{Lori}", q"{Lorusso}", q"{Lotito}", q"{Lotti}", q"{Lovato}", q"{Luca}"
		, q"{Lucarelli}", q"{Lucarini}", q"{Lucchese}", q"{Lucchesi}", q"{Luchetti}", q"{Luchini}", q"{Lucia}"
		, q"{Luciani}", q"{Luciano}", q"{Lucidi}", q"{Luconi}", q"{Lugli}", q"{Luise}", q"{Luongo}", q"{Lupi}"
		, q"{Lupica}", q"{Lupo}", q"{Luppi}", q"{Luppino}", q"{Luzi}", q"{Luzzi}", q"{Macaluso}", q"{Macchi}"
		, q"{Macchia}", q"{Macrì}", q"{Madonna}", q"{Maffei}", q"{Maggi}", q"{Maggiani}", q"{Maggio}"
		, q"{Maggiore}", q"{Magi}", q"{Magliocco}", q"{Magnani}", q"{Magno}", q"{Maiello}", q"{Mainardi}"
		, q"{Maio}", q"{Maione}", q"{Mair}", q"{Malagoli}", q"{Malaspina}", q"{Malatesta}", q"{Malavasi}"
		, q"{Malerba}", q"{Malizia}", q"{Maltese}", q"{Manca}", q"{Mancinelli}", q"{Mancini}", q"{Mancino}"
		, q"{Mancuso}", q"{Manetti}", q"{Manfredi}", q"{Mangano}", q"{Mangione}", q"{Manica}", q"{Manicone}"
		, q"{Maniscalco}", q"{Manna}", q"{Mannino}", q"{Manno}", q"{Manti}", q"{Mantovani}", q"{Manzella}"
		, q"{Manzi}", q"{Manzo}", q"{Maragno}", q"{Marangi}", q"{Marangon}", q"{Marangoni}", q"{Marani}"
		, q"{Marano}", q"{Marcelli}", q"{Marcello}", q"{Marchesan}", q"{Marchese}", q"{Marchesi}", q"{Marchesini}"
		, q"{Marchetti}", q"{Marchetto}", q"{Marchi}", q"{Marchini}", q"{Marciano}", q"{Marcianò}"
		, q"{Marcon}", q"{Marconi}", q"{Marcovecchio}", q"{Marcucci}", q"{Marega}", q"{Marelli}", q"{Maresca}"
		, q"{Margiotta}", q"{Mari}", q"{Marian}", q"{Mariani}", q"{Mariano}", q"{Marinelli}", q"{Marini}"
		, q"{Marino}", q"{Marinucci}", q"{Mariotti}", q"{Mariucci}", q"{Marone}", q"{Marongiu}", q"{Marotta}"
		, q"{Marra}", q"{Marras}", q"{Marrazzo}", q"{Marrone}", q"{Marsella}", q"{Marsili}", q"{Martelli}"
		, q"{Martellucci}", q"{Martina}", q"{Martinelli}", q"{Martines}", q"{Martini}", q"{Martino}"
		, q"{Martorana}", q"{Martucci}", q"{Marzano}", q"{Marzi}", q"{Marziali}", q"{Marzocchi}", q"{Masala}"
		, q"{Mascia}", q"{Masciandaro}", q"{Mascolo}", q"{Masi}", q"{Masia}", q"{Masiero}", q"{Massa}"
		, q"{Massari}", q"{Massaro}", q"{Massimi}", q"{Mastrogiacomo}", q"{Mastroianni}", q"{Mastronardi}"
		, q"{Mastropietro}", q"{Masucci}", q"{Matarazzo}", q"{Matera}", q"{Matranga}", q"{Matta}", q"{Mattei}"
		, q"{Matteucci}", q"{Mattia}", q"{Mattioli}", q"{Maugeri}", q"{Mauri}", q"{Maurizi}", q"{Mauro}"
		, q"{Mautone}", q"{Mazza}", q"{Mazzanti}", q"{Mazzarella}", q"{Mazzaro}", q"{Mazzei}", q"{Mazzeo}"
		, q"{Mazzi}", q"{Mazzini}", q"{Mazzocchi}", q"{Mazzola}", q"{Mazzoleno}", q"{Mazzone}", q"{Mazzoni}"
		, q"{Mazzotta}", q"{Mazzotti}", q"{Mecca}", q"{Medeot}", q"{Medici}", q"{Medugno}", q"{Megna}"
		, q"{Melandri}", q"{Mele}", q"{Meli}", q"{Melillo}", q"{Melis}", q"{Meloni}", q"{Memoli}", q"{Mencarelli}"
		, q"{Menconi}", q"{Menegatti}", q"{Mengoni}", q"{Menna}", q"{Menozzi}", q"{Meo}", q"{Mercuri}"
		, q"{Mercurio}", q"{Mereu}", q"{Merli}", q"{Merlo}", q"{Merola}", q"{Messana}", q"{Messina}", q"{Micco}"
		, q"{Miccoli}", q"{Miceli}", q"{Micheletti}", q"{Michelucci}", q"{Micillo}", q"{Migliaccio}"
		, q"{Miglio}", q"{Migliore}", q"{Mignogna}", q"{Milan}", q"{Milani}", q"{Milano}", q"{Milazzo}"
		, q"{Milella}", q"{Militello}", q"{Minelli}", q"{Mingarelli}", q"{Minniti}", q"{Miotto}", q"{Mirabella}"
		, q"{Mistretta}", q"{Moccia}", q"{Modica}", q"{Moffa}", q"{Molinari}", q"{Molinaro}", q"{Mollica}"
		, q"{Molteni}", q"{Monaci}", q"{Monaco}", q"{Monni}", q"{Montagna}", q"{Montagner}", q"{Montalbano}"
		, q"{Montalto}", q"{Montanari}", q"{Montanaro}", q"{Montefusco}", q"{Monteleone}", q"{Montemurro}"
		, q"{Monterosso}", q"{Montesano}", q"{Monti}", q"{Monticelli}", q"{Mora}", q"{Morabito}", q"{Morandi}"
		, q"{Moras}", q"{Mordenti}", q"{Morelli}", q"{Morello}", q"{Moretti}", q"{Moretto}", q"{Morgante}"
		, q"{Mori}", q"{Moriconi}", q"{Morini}", q"{Moro}", q"{Moroni}", q"{Morra}", q"{Morreale}", q"{Morri}"
		, q"{Morrone}", q"{Mosca}", q"{Moscato}", q"{Moser}", q"{Mosti}", q"{Motisi}", q"{Motta}", q"{Mottola}"
		, q"{Mulas}", q"{Mulè}", q"{Munaro}", q"{Mura}", q"{Muratore}", q"{Murgia}", q"{Murolo}", q"{Murru}"
		, q"{Murtas}", q"{Musella}", q"{Musso}", q"{Musumeci}", q"{Nanni}", q"{Napoletano}", q"{Napoli}"
		, q"{Napolitano}", q"{Nappi}", q"{Narcisi}", q"{Narciso}", q"{Nardi}", q"{Natale}", q"{Natali}"
		, q"{Nava}", q"{Navarra}", q"{Nazzaro}", q"{Negri}", q"{Neri}", q"{Nesti}", q"{Nicastro}", q"{Niccolai}"
		, q"{Nicoletti}", q"{Nicolini}", q"{Nicolò}", q"{Nicolosi}", q"{Nicosia}", q"{Nicotra}", q"{Nieddu}"
		, q"{Nigro}", q"{Nobile}", q"{Nobili}", q"{Nocentini}", q"{Nocera}", q"{Nocerino}", q"{Nota}", q"{Notaro}"
		, q"{Noto}", q"{Novelli}", q"{Novello}", q"{Nucci}", q"{Nucera}", q"{Nuzzo}", q"{Occhipinti}", q"{Oggiano}"
		, q"{Oliva}", q"{Oliveri}", q"{Olivi}", q"{Olivieri}", q"{Oliviero}", q"{Olla}", q"{Orefice}", q"{Orlandi}"
		, q"{Orlando}", q"{Orrù}", q"{Orsini}", q"{Ortenzi}", q"{Ortolani}", q"{Ostuni}", q"{Ottaviani}"
		, q"{Ottaviano}", q"{Ottonello}", q"{Pace}", q"{Paci}", q"{Pacifici}", q"{Pacifico}", q"{Pacini}"
		, q"{Padovan}", q"{Padula}", q"{Paganelli}", q"{Pagani}", q"{Pagano}", q"{Pagliai}", q"{Pagliuca}"
		, q"{Pala}", q"{Paladini}", q"{Palano}", q"{Palazzi}", q"{Palazzo}", q"{Palazzolo}", q"{Palermo}"
		, q"{Palla}", q"{Palladino}", q"{Pallotta}", q"{Palma}", q"{Palmeri}", q"{Palmieri}", q"{Palmisani}"
		, q"{Palmisano}", q"{Palombi}", q"{Palombo}", q"{Palumbo}", q"{Panaro}", q"{Pandolfi}", q"{Panetta}"
		, q"{Pani}", q"{Panico}", q"{Pantano}", q"{Panza}", q"{Panzeri}", q"{Paola}", q"{Paolella}", q"{Paoletti}"
		, q"{Paoli}", q"{Paolicelli}", q"{Paolillo}", q"{Paolini}", q"{Paolino}", q"{Paolucci}", q"{Paone}"
		, q"{Paonessa}", q"{Papa}", q"{Papaleo}", q"{Papapietro}", q"{Papini}", q"{Pappalardo}", q"{Paradiso}"
		, q"{Pardini}", q"{Parente}", q"{Pariggiano}", q"{Paris}", q"{Parise}", q"{Parisi}", q"{Parodi}"
		, q"{Parrinello}", q"{Parrino}", q"{Pascale}", q"{Pascali}", q"{Pascarella}", q"{Pascucci}"
		, q"{Pasini}", q"{Pasqua}", q"{Pasquali}", q"{Pasquini}", q"{Passarelli}", q"{Passeri}", q"{Passero}"
		, q"{Passuello}", q"{Pastore}", q"{Pastorelli}", q"{Pastorino}", q"{Patanè}", q"{Patriarca}"
		, q"{Patrone}", q"{Patruno}", q"{Patti}", q"{Pau}", q"{Pavan}", q"{Pavani}", q"{Pavone}", q"{Peaquin}"
		, q"{Pece}", q"{Pecora}", q"{Pecoraro}", q"{Pecorella}", q"{Pedone}", q"{Pedrazzini}", q"{Pedroni}"
		, q"{Pedrotti}", q"{Pellecchia}", q"{Pellegrini}", q"{Pellegrino}", q"{Pellicano}", q"{Pellicanò}"
		, q"{Pellitteri}", q"{Peluso}", q"{Penna}", q"{Pennestrì}", q"{Penzo}", q"{Pepe}", q"{Perego}"
		, q"{Perilli}", q"{Perin}", q"{Perini}", q"{Perna}", q"{Peroni}", q"{Perotti}", q"{Perra}", q"{Perri}"
		, q"{Perrini}", q"{Perrone}", q"{Perrotta}", q"{Perugini}", q"{Peruzzi}", q"{Pesaresi}", q"{Pesce}"
		, q"{Pession}", q"{Petito}", q"{Petralia}", q"{Petrarca}", q"{Petrella}", q"{Petrelli}", q"{Petrini}"
		, q"{Petrone}", q"{Petronio}", q"{Petrucci}", q"{Pezzella}", q"{Pezzi}", q"{Piacentini}", q"{Piana}"
		, q"{Pianese}", q"{Pianigiani}", q"{Piazza}", q"{Piazzolla}", q"{Pibiri}", q"{Pica}", q"{Picariello}"
		, q"{Picchi}", q"{Piccinini}", q"{Piccione}", q"{Picco}", q"{Piccoli}", q"{Piccolo}", q"{Pichler}"
		, q"{Pieri}", q"{Pierini}", q"{Pierro}", q"{Piga}", q"{Pignatelli}", q"{Pilato}", q"{Pili}", q"{Pillitteri}"
		, q"{Pinardi}", q"{Pini}", q"{Pinna}", q"{Pinto}", q"{Pintus}", q"{Pipitone}", q"{Piras}", q"{Pircher}"
		, q"{Piredda}", q"{Pirone}", q"{Pirrello}", q"{Pirrone}", q"{Pisani}", q"{Pisano}", q"{Pischedda}"
		, q"{Pisciotta}", q"{Piscitelli}", q"{Piscopo}", q"{Pisu}", q"{Pittalis}", q"{Pitzalis}", q"{Piva}"
		, q"{Pivetta}", q"{Pizzi}", q"{Pizzimenti}", q"{Pizzitola}", q"{Pizzo}", q"{Pizzuti}", q"{Platania}"
		, q"{Poggi}", q"{Poggio}", q"{Polese}", q"{Poletti}", q"{Poli}", q"{Polidori}", q"{Polimeno}", q"{Politi}"
		, q"{Polito}", q"{Polizzi}", q"{Pollina}", q"{Polverino}", q"{Pompei}", q"{Pompili}", q"{Pompilio}"
		, q"{Ponti}", q"{Porcari}", q"{Porcu}", q"{Postiglione}", q"{Potenza}", q"{Pozzi}", q"{Pozzo}"
		, q"{Pratesi}", q"{Praticò}", q"{Prato}", q"{Prencipe}", q"{Prete}", q"{Preziosi}", q"{Principato}"
		, q"{Prisco}", q"{Privitera}", q"{Procopio}", q"{Proietti}", q"{Provenzano}", q"{Puca}", q"{Pucci}"
		, q"{Puccio}", q"{Puddu}", q"{Puggioni}", q"{Pugliese}", q"{Pugliesi}", q"{Puglisi}", q"{Puleo}"
		, q"{Putzolu}", q"{Quaglia}", q"{Quaranta}", q"{Quarta}", q"{Quinto}", q"{Raffa}", q"{Rago}", q"{Ragone}"
		, q"{Ragusa}", q"{Raimondi}", q"{Raimondo}", q"{Rallo}", q"{Rambaldi}", q"{Ramella}", q"{Rampazzo}"
		, q"{Randazzo}", q"{Raneri}", q"{Ranieri}", q"{Raniolo}", q"{Ranucci}", q"{Rapisarda}", q"{Rapuano}"
		, q"{Ratti}", q"{Rauso}", q"{Ravaioli}", q"{Re}", q"{Rea}", q"{Reale}", q"{Recchia}", q"{Redaelli}"
		, q"{Reina}", q"{Renda}", q"{Renna}", q"{Renzi}", q"{Repetto}", q"{Restivo}", q"{Riccardi}", q"{Ricci}"
		, q"{Ricciardi}", q"{Riccio}", q"{Riccobono}", q"{Ridolfi}", q"{Riggi}", q"{Riggio}", q"{Righetti}"
		, q"{Righi}", q"{Rigoni}", q"{Rinaldi}", q"{Riolo}", q"{Riparbelli}", q"{Riva}", q"{Rizza}", q"{Rizzi}"
		, q"{Rizzo}", q"{Roberti}", q"{Rocca}", q"{Rocchi}", q"{Rocco}", q"{Rodigari}", q"{Rogolino}", q"{Rollo}"
		, q"{Romagnoli}", q"{Romanelli}", q"{Romani}", q"{Romaniello}", q"{Romanini}", q"{Romano}", q"{Romeo}"
		, q"{Rondinone}", q"{Rondoni}", q"{Rosa}", q"{Rosati}", q"{Rosi}", q"{Ross}", q"{Rosselli}", q"{Rosset}"
		, q"{Rossetti}", q"{Rossi}", q"{Rossini}", q"{Rosso}", q"{Rota}", q"{Rotolo}", q"{Rotondo}", q"{Rotundo}"
		, q"{Ruberto}", q"{Rubino}", q"{Rucco}", q"{Ruggeri}", q"{Ruggieri}", q"{Ruggiero}", q"{Ruotolo}"
		, q"{Rusciano}", q"{Russo}", q"{Saba}", q"{Sabatini}", q"{Sabatino}", q"{Sabato}", q"{Sabbatini}"
		, q"{Sabia}", q"{Sabino}", q"{Sacchet}", q"{Sacchetti}", q"{Sacchi}", q"{Sacco}", q"{Saccone}"
		, q"{Saia}", q"{Sala}", q"{Saladino}", q"{Salamone}", q"{Salatiello}", q"{Salemi}", q"{Salemme}"
		, q"{Salerno}", q"{Salierno}", q"{Salis}", q"{Salomone}", q"{Salvadori}", q"{Salvati}", q"{Salvatore}"
		, q"{Salvatori}", q"{Salvi}", q"{Salvucci}", q"{Salzano}", q"{Sammartano}", q"{Sammartino}"
		, q"{Sanfilippo}", q"{Sanna}", q"{Sannino}", q"{Sansone}", q"{Santamaria}", q"{Santangelo}"
		, q"{Santarelli}", q"{Santarossa}", q"{Santarsia}", q"{Santarsiero}", q"{Santi}", q"{Santilli}"
		, q"{Santinelli}", q"{Santini}", q"{Santo}", q"{Santoni}", q"{Santori}", q"{Santoro}", q"{Santucci}"
		, q"{Sapienza}", q"{Saponaro}", q"{Saporito}", q"{Saracino}", q"{Sardella}", q"{Sardina}", q"{Sarnataro}"
		, q"{Sarti}", q"{Sartor}", q"{Sartori}", q"{Sassano}", q"{Sassi}", q"{Sasso}", q"{Satta}", q"{Savini}"
		, q"{Savoca}", q"{Savoia}", q"{Sbrana}", q"{Scaglione}", q"{Scala}", q"{Scalia}", q"{Scalise}"
		, q"{Scalzo}", q"{Scano}", q"{Scanu}", q"{Scarano}", q"{Scardino}", q"{Scarpa}", q"{Scarpellini}"
		, q"{Scherini}", q"{Schettino}", q"{Schiavi}", q"{Schiavo}", q"{Schiavon}", q"{Schiavone}", q"{Schifano}"
		, q"{Schillaci}", q"{Schirru}", q"{Sciacca}", q"{Scocco}", q"{Scognamiglio}", q"{Scopece}", q"{Scorza}"
		, q"{Scotti}", q"{Scrofani}", q"{Scuderi}", q"{Sebastiani}", q"{Secchi}", q"{Secci}", q"{Sechi}"
		, q"{Semeraro}", q"{Semprini}", q"{Senatore}", q"{Sepe}", q"{Serafini}", q"{Serafino}", q"{Serena}"
		, q"{Sergi}", q"{Serpa}", q"{Serr}", q"{Serra}", q"{Sessa}", q"{Sestito}", q"{Severi}", q"{Severino}"
		, q"{Sevi}", q"{Sforza}", q"{Siciliano}", q"{Signorelli}", q"{Signorile}", q"{Signorini}", q"{Siino}"
		, q"{Silenzi}", q"{Silvestri}", q"{Silvestrini}", q"{Silvestro}", q"{Simeoli}", q"{Simeone}"
		, q"{Simeoni}", q"{Simeti}", q"{Simoncelli}", q"{Simone}", q"{Simonetti}", q"{Simoni}", q"{Simonini}"
		, q"{Simula}", q"{Sini}", q"{Sinopoli}", q"{Siracusa}", q"{Siragusa}", q"{Siri}", q"{Soccorsi}"
		, q"{Sodano}", q"{Soldati}", q"{Solinas}", q"{Sorbello}", q"{Sorce}", q"{Soro}", q"{Sorrentino}"
		, q"{Sottile}", q"{Spada}", q"{Spadafora}", q"{Spadaro}", q"{Spadoni}", q"{Spagnolo}", q"{Spagnuolo}"
		, q"{Spano}", q"{Spanò}", q"{Spanu}", q"{Sparacino}", q"{Spataro}", q"{Speranza}", q"{Spiga}"
		, q"{Spina}", q"{Spinelli}", q"{Spizzirri}", q"{Stabile}", q"{Staffieri}", q"{Stanzione}", q"{Stefani}"
		, q"{Stella}", q"{Stigliano}", q"{Storti}", q"{Strano}", q"{Sucameli}", q"{Sucera}", q"{Surace}"
		, q"{Suriano}", q"{Tacconi}", q"{Taddei}", q"{Tagliabue}", q"{Tagliaferri}", q"{Talarico}", q"{Tallarico}"
		, q"{Tallone}", q"{Tamburini}", q"{Tammaro}", q"{Tanzi}", q"{Taormina}", q"{Tarantino}", q"{Tarquini}"
		, q"{Tartamella}", q"{Tassi}", q"{Tassinari}", q"{Tasso}", q"{Tassone}", q"{Tataranni}", q"{Tavani}"
		, q"{Tedde}", q"{Tedeschi}", q"{Tedesco}", q"{Telesca}", q"{Terenzi}", q"{Teresi}", q"{Terlizzi}"
		, q"{Termine}", q"{Terzi}", q"{Terzo}", q"{Tesi}", q"{Testa}", q"{Tiano}", q"{Tiberti}", q"{Tilotta}"
		, q"{Tiozzo}", q"{Tirelli}", q"{Tirri}", q"{Todaro}", q"{Tofani}", q"{Toldo}", q"{Tolomeo}", q"{Tolu}"
		, q"{Tomaselli}", q"{Tomasello}", q"{Tomasi}", q"{Tomassoni}", q"{Tomei}", q"{Tommasi}", q"{Tonelli}"
		, q"{Tonini}", q"{Torchia}", q"{Torchio}", q"{Tornatore}", q"{Torre}", q"{Torresi}", q"{Torri}"
		, q"{Torrisi}", q"{Tortora}", q"{Tortorici}", q"{Toscano}", q"{Tosi}", q"{Totaro}", q"{Toti}", q"{Toto}"
		, q"{Traini}", q"{Tralli}", q"{Trapani}", q"{Travaglini}", q"{Traverso}", q"{Tretola}", q"{Trevisan}"
		, q"{Triolo}", q"{Tripodi}", q"{Troisi}", q"{Trombetta}", q"{Trovato}", q"{Tucci}", q"{Tuccillo}"
		, q"{Tufano}", q"{Tufo}", q"{Tumbarello}", q"{Tumino}", q"{Turchi}", q"{Turco}", q"{Ugolini}", q"{Urbano}"
		, q"{Urso}", q"{Usai}", q"{Vacca}", q"{Vaccari}", q"{Vaccaro}", q"{Vailati}", q"{Valente}", q"{Valenti}"
		, q"{Valentini}", q"{Valentino}", q"{Valenza}", q"{Valeri}", q"{Valle}", q"{Valletta}", q"{Valli}"
		, q"{Vallone}", q"{Valsecchi}", q"{Vanni}", q"{Vannini}", q"{Varriale}", q"{Vascotto}", q"{Vassallo}"
		, q"{Vecchi}", q"{Vella}", q"{Venezia}", q"{Ventimiglia}", q"{Ventura}", q"{Venturelli}", q"{Venturi}"
		, q"{Venturini}", q"{Vercesi}", q"{Verde}", q"{Verme}", q"{Veronese}", q"{Vezzoli}", q"{Viale}"
		, q"{Vianello}", q"{Vicari}", q"{Vichi}", q"{Vicinanza}", q"{Vicini}", q"{Vierin}", q"{Villa}"
		, q"{Villani}", q"{Villari}", q"{Vincenzi}", q"{Vinci}", q"{Viola}", q"{Violante}", q"{Violi}"
		, q"{Virgilio}", q"{Visani}", q"{Viscò}", q"{Visconti}", q"{Visentin}", q"{Visintin}", q"{Vita}"
		, q"{Vitale}", q"{Vitali}", q"{Viti}", q"{Vitiello}", q"{Vittori}", q"{Viviani}", q"{Vizziello}"
		, q"{Volpe}", q"{Volpi}", q"{Vuillermoz}", q"{Zaccaria}", q"{Zaccaro}", q"{Zagaria}", q"{Zago}"
		, q"{Zambon}", q"{Zamboni}", q"{Zambuto}", q"{Zampieri}", q"{Zanatta}", q"{Zanella}", q"{Zanelli}"
		, q"{Zanetta}", q"{Zanetti}", q"{Zani}", q"{Zanon}", q"{Zanotti}", q"{Zappacosta}", q"{Zappalà}"
		, q"{Zappia}", q"{Zedda}", q"{Zeni}", q"{Zennaro}", q"{Zingaretti}", q"{Zito}", q"{Zollo}", q"{Zordan}"
		, q"{Zotti}", q"{Zucca}", q"{Zuliani}", q"{Zullo}", q"{Zumbo}", q"{Zunino}" ];

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
		[ q"{Abaco}", q"{Abbondanzio}", q"{Abbondio}", q"{Abdone}", q"{Abelardo}", q"{Abele}", q"{Abenzio}"
		, q"{Abibo}", q"{Abramio}", q"{Abramo}", q"{Acacio}", q"{Acario}", q"{Accursio}", q"{Achille}"
		, q"{Acilio}", q"{Aciscolo}", q"{Acrisio}", q"{Adalardo}", q"{Adalberto}", q"{Adalfredo}", q"{Adalgiso}"
		, q"{Adalrico}", q"{Adamo}", q"{Addo}", q"{Adelardo}", q"{Adelberto}", q"{Adelchi}", q"{Adelfo}"
		, q"{Adelgardo}", q"{Adelmo}", q"{Adeodato}", q"{Adolfo}", q"{Adone}", q"{Adriano}", q"{Adrione}"
		, q"{Afro}", q"{Agabio}", q"{Agamennone}", q"{Agapito}", q"{Agazio}", q"{Agenore}", q"{Agesilao}"
		, q"{Agostino}", q"{Agrippa}", q"{Aiace}", q"{Aidano}", q"{Aimone}", q"{Aladino}", q"{Alamanno}"
		, q"{Alano}", q"{Alarico}", q"{Albano}", q"{Alberico}", q"{Alberto}", q"{Albino}", q"{Alboino}"
		, q"{Albrico}", q"{Alceo}", q"{Alceste}", q"{Alcibiade}", q"{Alcide}", q"{Alcino}", q"{Aldo}", q"{Aldobrando}"
		, q"{Aleandro}", q"{Aleardo}", q"{Aleramo}", q"{Alessandro}", q"{Alessio}", q"{Alfio}", q"{Alfonso}"
		, q"{Alfredo}", q"{Algiso}", q"{Alighiero}", q"{Almerigo}", q"{Almiro}", q"{Aloisio}", q"{Alvaro}"
		, q"{Alviero}", q"{Alvise}", q"{Amabile}", q"{Amadeo}", q"{Amando}", q"{Amanzio}", q"{Amaranto}"
		, q"{Amato}", q"{Amatore}", q"{Amauri}", q"{Ambrogio}", q"{Ambrosiano}", q"{Amedeo}", q"{Amelio}"
		, q"{Amerigo}", q"{Amico}", q"{Amilcare}", q"{Amintore}", q"{Amleto}", q"{Amone}", q"{Amore}", q"{Amos}"
		, q"{Ampelio}", q"{Anacleto}", q"{Andrea}", q"{Angelo}", q"{Aniceto}", q"{Aniello}", q"{Annibale}"
		, q"{Ansaldo}", q"{Anselmo}", q"{Ansovino}", q"{Antelmo}", q"{Antero}", q"{Antimo}", q"{Antino}"
		, q"{Antioco}", q"{Antonello}", q"{Antonio}", q"{Apollinare}", q"{Apollo}", q"{Apuleio}", q"{Aquilino}"
		, q"{Araldo}", q"{Aratone}", q"{Arcadio}", q"{Archimede}", q"{Archippo}", q"{Arcibaldo}", q"{Ardito}"
		, q"{Arduino}", q"{Aresio}", q"{Argimiro}", q"{Argo}", q"{Arialdo}", q"{Ariberto}", q"{Ariele}"
		, q"{Ariosto}", q"{Aris}", q"{Aristarco}", q"{Aristeo}", q"{Aristide}", q"{Aristione}", q"{Aristo}"
		, q"{Aristofane}", q"{Aristotele}", q"{Armando}", q"{Arminio}", q"{Arnaldo}", q"{Aronne}", q"{Arrigo}"
		, q"{Arturo}", q"{Ascanio}", q"{Asdrubale}", q"{Asimodeo}", q"{Assunto}", q"{Asterio}", q"{Astianatte}"
		, q"{Ataleo}", q"{Atanasio}", q"{Athos}", q"{Attila}", q"{Attilano}", q"{Attilio}", q"{Auberto}"
		, q"{Audace}", q"{Augusto}", q"{Aureliano}", q"{Aurelio}", q"{Auro}", q"{Ausilio}", q"{Averardo}"
		, q"{Azeglio}", q"{Azelio}", q"{Bacco}", q"{Baldassarre}", q"{Balderico}", q"{Baldo}", q"{Baldomero}"
		, q"{Baldovino}", q"{Barbarigo}", q"{Bardo}", q"{Bardomiano}", q"{Barnaba}", q"{Barsaba}", q"{Barsimeo}"
		, q"{Bartolo}", q"{Bartolomeo}", q"{Basileo}", q"{Basilio}", q"{Bassiano}", q"{Bastiano}", q"{Battista}"
		, q"{Beato}", q"{Bellino}", q"{Beltramo}", q"{Benedetto}", q"{Beniamino}", q"{Benigno}", q"{Benito}"
		, q"{Benvenuto}", q"{Berardo}", q"{Berengario}", q"{Bernardo}", q"{Beronico}", q"{Bertoldo}"
		, q"{Bertolfo}", q"{Biagio}", q"{Bibiano}", q"{Bindo}", q"{Bino}", q"{Birino}", q"{Bonagiunta}"
		, q"{Bonaldo}", q"{Bonaventura}", q"{Bonavita}", q"{Bonifacio}", q"{Bonito}", q"{Boris}", q"{Bortolo}"
		, q"{Brancaleone}", q"{Brando}", q"{Bruno}", q"{Bruto}", q"{Caino}", q"{Caio}", q"{Calanico}", q"{Calcedonio}"
		, q"{Callisto}", q"{Calogero}", q"{Camillo}", q"{Candido}", q"{Cantidio}", q"{Canziano}", q"{Carlo}"
		, q"{Carmelo}", q"{Carmine}", q"{Caronte}", q"{Carponio}", q"{Casimiro}", q"{Cassiano}", q"{Cassio}"
		, q"{Casto}", q"{Cataldo}", q"{Catullo}", q"{Cecco}", q"{Cecilio}", q"{Celso}", q"{Cesare}", q"{Cesario}"
		, q"{Cherubino}", q"{Chiaffredo}", q"{Cino}", q"{Cipriano}", q"{Cirano}", q"{Ciriaco}", q"{Cirillo}"
		, q"{Cirino}", q"{Ciro}", q"{Clarenzio}", q"{Claudio}", q"{Cleandro}", q"{Clemente}", q"{Cleonico}"
		, q"{Climaco}", q"{Clinio}", q"{Clodomiro}", q"{Clodoveo}", q"{Colmanno}", q"{Colmazio}", q"{Colombano}"
		, q"{Colombo}", q"{Concetto}", q"{Concordio}", q"{Corbiniano}", q"{Coreno}", q"{Coriolano}"
		, q"{Cornelio}", q"{Coronato}", q"{Corrado}", q"{Cosimo}", q"{Cosma}", q"{Costante}", q"{Costantino}"
		, q"{Costanzo}", q"{Cremenzio}", q"{Crescente}", q"{Crescenzio}", q"{Crespignano}", q"{Crispino}"
		, q"{Cristaldo}", q"{Cristiano}", q"{Cristoforo}", q"{Crocefisso}", q"{Cuniberto}", q"{Cupido}"
		, q"{Daciano}", q"{Dacio}", q"{Dagoberto}", q"{Dalmazio}", q"{Damaso}", q"{Damiano}", q"{Damocle}"
		, q"{Daniele}", q"{Danilo}", q"{Danio}", q"{Dante}", q"{Dario}", q"{Davide}", q"{Davino}", q"{Decimo}"
		, q"{Delfino}", q"{Demetrio}", q"{Democrito}", q"{Demostene}", q"{Deodato}", q"{Desiderato}"
		, q"{Desiderio}", q"{Didimo}", q"{Diego}", q"{Dino}", q"{Diocleziano}", q"{Diodoro}", q"{Diogene}"
		, q"{Diomede}", q"{Dione}", q"{Dionigi}", q"{Dionisio}", q"{Divo}", q"{Dodato}", q"{Domenico}"
		, q"{Domezio}", q"{Domiziano}", q"{Donatello}", q"{Donato}", q"{Doriano}", q"{Doroteo}", q"{Duccio}"
		, q"{Duilio}", q"{Durante}", q"{Eberardo}", q"{Ecclesio}", q"{Edgardo}", q"{Edilberto}", q"{Edmondo}"
		, q"{Edoardo}", q"{Efisio}", q"{Efrem}", q"{Egeo}", q"{Egidio}", q"{Eginardo}", q"{Egisto}", q"{Eleuterio}"
		, q"{Elia}", q"{Eliano}", q"{Elifio}", q"{Eligio}", q"{Elio}", q"{Eliodoro}", q"{Eliseo}", q"{Elita}"
		, q"{Elmo}", q"{Elogio}", q"{Elpidio}", q"{Elvezio}", q"{Elvino}", q"{Emanuele}", q"{Emidio}", q"{Emiliano}"
		, q"{Emilio}", q"{Emmerico}", q"{Empirio}", q"{Endrigo}", q"{Enea}", q"{Enecone}", q"{Ennio}", q"{Enrico}"
		, q"{Enzo}", q"{Eraclide}", q"{Eraldo}", q"{Erardo}", q"{Erasmo}", q"{Erberto}", q"{Ercolano}"
		, q"{Ercole}", q"{Erenia}", q"{Eriberto}", q"{Erico}", q"{Ermanno}", q"{Ermenegildo}", q"{Ermes}"
		, q"{Ermete}", q"{Ermilo}", q"{Erminio}", q"{Ernesto}", q"{Eros}", q"{Esaù}", q"{Esuperio}", q"{Eterie}"
		, q"{Ettore}", q"{Euclide}", q"{Eufebio}", q"{Eufemio}", q"{Eufronio}", q"{Eugenio}", q"{Eusebio}"
		, q"{Euseo}", q"{Eustorgio}", q"{Eustosio}", q"{Eutalio}", q"{Evaldo}", q"{Evandro}", q"{Evaristo}"
		, q"{Evasio}", q"{Everardo}", q"{Evidio}", q"{Evodio}", q"{Evremondo}", q"{Ezechiele}", q"{Ezio}"
		, q"{Fabiano}", q"{Fabio}", q"{Fabrizio}", q"{Famiano}", q"{Fausto}", q"{Fazio}", q"{Fedele}", q"{Federico}"
		, q"{Fedro}", q"{Felice}", q"{Feliciano}", q"{Ferdinando}", q"{Fermiano}", q"{Fermo}", q"{Fernando}"
		, q"{Ferruccio}", q"{Festo}", q"{Fidenziano}", q"{Fidenzio}", q"{Filiberto}", q"{Filippo}", q"{Filomeno}"
		, q"{Fiorenziano}", q"{Fiorenzo}", q"{Flaviano}", q"{Flavio}", q"{Fleano}", q"{Floriano}", q"{Folco}"
		, q"{Fortunato}", q"{Fosco}", q"{Francesco}", q"{Franco}", q"{Frido}", q"{Frontiniano}", q"{Fulberto}"
		, q"{Fulgenzio}", q"{Fulvio}", q"{Furio}", q"{Furseo}", q"{Fuscolo}", q"{Gabino}", q"{Gabriele}"
		, q"{Gaetano}", q"{Gaglioffo}", q"{Gaio}", q"{Galdino}", q"{Galeazzo}", q"{Galileo}", q"{Gallicano}"
		, q"{Gandolfo}", q"{Garimberto}", q"{Gaspare}", q"{Gastone}", q"{Gaudenzio}", q"{Gaudino}", q"{Gautiero}"
		, q"{Gavino}", q"{Gedeone}", q"{Geminiano}", q"{Generoso}", q"{Genesio}", q"{Gennaro}", q"{Gentile}"
		, q"{Genziano}", q"{Gerardo}", q"{Gerasimo}", q"{Geremia}", q"{Gerino}", q"{Germano}", q"{Gerolamo}"
		, q"{Geronimo}", q"{Geronzio}", q"{Gervasio}", q"{Gesualdo}", q"{Gherardo}", q"{Giacinto}", q"{Giacobbe}"
		, q"{Giacomo}", q"{Giadero}", q"{Giambattista}", q"{Gianbattista}", q"{Giancarlo}", q"{Giandomenico}"
		, q"{Gianfranco}", q"{Gianluca}", q"{Gianluigi}", q"{Gianmarco}", q"{Gianmaria}", q"{Gianmario}"
		, q"{Gianni}", q"{Gianpaolo}", q"{Gianpiero}", q"{Gianpietro}", q"{Gianuario}", q"{Giasone}"
		, q"{Gilberto}", q"{Gildo}", q"{Gillo}", q"{Gineto}", q"{Gino}", q"{Gioacchino}", q"{Giobbe}", q"{Gioberto}"
		, q"{Giocondo}", q"{Gioele}", q"{Giona}", q"{Gionata}", q"{Giordano}", q"{Giorgio}", q"{Giosuè}"
		, q"{Giosuele}", q"{Giotto}", q"{Giovanni}", q"{Giove}", q"{Gioventino}", q"{Giovenzio}", q"{Girardo}"
		, q"{Girolamo}", q"{Giuda}", q"{Giuliano}", q"{Giulio}", q"{Giuseppe}", q"{Giustiniano}", q"{Giusto}"
		, q"{Glauco}", q"{Goffredo}", q"{Golia}", q"{Gomberto}", q"{Gondulfo}", q"{Gonerio}", q"{Gonzaga}"
		, q"{Gordiano}", q"{Gosto}", q"{Gottardo}", q"{Graciliano}", q"{Grato}", q"{Graziano}", q"{Gregorio}"
		, q"{Grimaldo}", q"{Gualberto}", q"{Gualtiero}", q"{Guelfo}", q"{Guerrino}", q"{Guglielmo}"
		, q"{Guiberto}", q"{Guido}", q"{Guiscardo}", q"{Gumesindo}", q"{Gustavo}", q"{Iacopo}", q"{Iacopone}"
		, q"{Iago}", q"{Icaro}", q"{Icilio}", q"{Ido}", q"{Iginio}", q"{Igino}", q"{Ignazio}", q"{Igor}", q"{Ilario}"
		, q"{Ildebrando}", q"{Ildefonso}", q"{Illidio}", q"{Illuminato}", q"{Immacolato}", q"{Indro}"
		, q"{Innocente}", q"{Innocenzo}", q"{Iorio}", q"{Ippocrate}", q"{Ippolito}", q"{Ireneo}", q"{Isacco}"
		, q"{Isaia}", q"{Ischirione}", q"{Isidoro}", q"{Ismaele}", q"{Italo}", q"{Ivan}", q"{Ivano}", q"{Ivanoe}"
		, q"{Ivo}", q"{Ivone}", q"{Ladislao}", q"{Lamberto}", q"{Lancilotto}", q"{Landolfo}", q"{Lanfranco}"
		, q"{Lapo}", q"{Laurentino}", q"{Lauriano}", q"{Lautone}", q"{Lavinio}", q"{Lazzaro}", q"{Leandro}"
		, q"{Leo}", q"{Leonardo}", q"{Leone}", q"{Leonida}", q"{Leonio}", q"{Leonzio}", q"{Leopardo}", q"{Leopoldo}"
		, q"{Letterio}", q"{Liberato}", q"{Liberatore}", q"{Liberio}", q"{Libero}", q"{Liberto}", q"{Liborio}"
		, q"{Lidio}", q"{Lieto}", q"{Lino}", q"{Lisandro}", q"{Livino}", q"{Livio}", q"{Lodovico}", q"{Loreno}"
		, q"{Lorenzo}", q"{Loris}", q"{Luca}", q"{Luciano}", q"{Lucio}", q"{Ludano}", q"{Ludovico}", q"{Luigi}"
		, q"{Macario}", q"{Maccabeo}", q"{Maffeo}", q"{Maggiorino}", q"{Magno}", q"{Maiorico}", q"{Malco}"
		, q"{Mamante}", q"{Mancio}", q"{Manetto}", q"{Manfredo}", q"{Manilio}", q"{Manlio}", q"{Mansueto}"
		, q"{Manuele}", q"{Marcello}", q"{Marciano}", q"{Marco}", q"{Mariano}", q"{Marino}", q"{Mario}"
		, q"{Marolo}", q"{Martino}", q"{Marzio}", q"{Massimiliano}", q"{Massimo}", q"{Matroniano}", q"{Matteo}"
		, q"{Mattia}", q"{Maurilio}", q"{Maurizio}", q"{Mauro}", q"{Medardo}", q"{Medoro}", q"{Melanio}"
		, q"{Melchiade}", q"{Melchiorre}", q"{Melezio}", q"{Menardo}", q"{Menelao}", q"{Meneo}", q"{Mennone}"
		, q"{Mercurio}", q"{Metello}", q"{Metrofane}", q"{Michelangelo}", q"{Michele}", q"{Milo}", q"{Minervino}"
		, q"{Mirco}", q"{Mirko}", q"{Mirocleto}", q"{Misaele}", q"{Modesto}", q"{Monaldo}", q"{Monitore}"
		, q"{Moreno}", q"{Mosè}", q"{Muziano}", q"{Namazio}", q"{Napoleone}", q"{Narciso}", q"{Narseo}"
		, q"{Narsete}", q"{Natale}", q"{Nazario}", q"{Nazzareno}", q"{Nazzaro}", q"{Neopolo}", q"{Neoterio}"
		, q"{Nereo}", q"{Neri}", q"{Nestore}", q"{Nicarete}", q"{Nicea}", q"{Niceforo}", q"{Niceto}", q"{Nicezio}"
		, q"{Nico}", q"{Nicodemo}", q"{Nicola}", q"{Nicolò}", q"{Niniano}", q"{Nino}", q"{Noè}", q"{Norberto}"
		, q"{Nostriano}", q"{Nunzio}", q"{Oddone}", q"{Oderico}", q"{Odidone}", q"{Odorico}", q"{Olimpio}"
		, q"{Olindo}", q"{Oliviero}", q"{Omar}", q"{Omero}", q"{Onesto}", q"{Onofrio}", q"{Onorino}", q"{Onorio}"
		, q"{Orazio}", q"{Orenzio}", q"{Oreste}", q"{Orfeo}", q"{Orio}", q"{Orlando}", q"{Oronzo}", q"{Orsino}"
		, q"{Orso}", q"{Ortensio}", q"{Oscar}", q"{Osmondo}", q"{Osvaldo}", q"{Otello}", q"{Ottaviano}"
		, q"{Ottavio}", q"{Ottone}", q"{Ovidio}", q"{Paciano}", q"{Pacifico}", q"{Pacomio}", q"{Palatino}"
		, q"{Palladio}", q"{Pammachio}", q"{Pancario}", q"{Pancrazio}", q"{Panfilo}", q"{Pantaleo}"
		, q"{Pantaleone}", q"{Paolo}", q"{Pardo}", q"{Paride}", q"{Parmenio}", q"{Pasquale}", q"{Paterniano}"
		, q"{Patrizio}", q"{Patroclo}", q"{Pauside}", q"{Peleo}", q"{Pellegrino}", q"{Pericle}", q"{Perseo}"
		, q"{Petronio}", q"{Pierangelo}", q"{Piergiorgio}", q"{Pierluigi}", q"{Piermarco}", q"{Piero}"
		, q"{Piersilvio}", q"{Pietro}", q"{Pio}", q"{Pippo}", q"{Placido}", q"{Platone}", q"{Plinio}", q"{Plutarco}"
		, q"{Polidoro}", q"{Polifemo}", q"{Pollione}", q"{Pompeo}", q"{Pomponio}", q"{Ponziano}", q"{Ponzio}"
		, q"{Porfirio}", q"{Porziano}", q"{Postumio}", q"{Prassede}", q"{Priamo}", q"{Primo}", q"{Prisco}"
		, q"{Privato}", q"{Procopio}", q"{Prospero}", q"{Protasio}", q"{Proteo}", q"{Prudenzio}", q"{Publio}"
		, q"{Pupolo}", q"{Pusicio}", q"{Quarto}", q"{Quasimodo}", q"{Querano}", q"{Quintiliano}", q"{Quintilio}"
		, q"{Quintino}", q"{Quinziano}", q"{Quinzio}", q"{Quirino}", q"{Radolfo}", q"{Raffaele}", q"{Raide}"
		, q"{Raimondo}", q"{Rainaldo}", q"{Ramiro}", q"{Raniero}", q"{Ranolfo}", q"{Reginaldo}", q"{Regolo}"
		, q"{Remigio}", q"{Remo}", q"{Remondo}", q"{Renato}", q"{Renzo}", q"{Respicio}", q"{Ricario}", q"{Riccardo}"
		, q"{Richelmo}", q"{Rinaldo}", q"{Rino}", q"{Robaldo}", q"{Roberto}", q"{Rocco}", q"{Rodiano}"
		, q"{Rodolfo}", q"{Rodrigo}", q"{Rolando}", q"{Rolfo}", q"{Romano}", q"{Romeo}", q"{Romero}", q"{Romoaldo}"
		, q"{Romolo}", q"{Romualdo}", q"{Rosario}", q"{Rubiano}", q"{Rufino}", q"{Rufo}", q"{Ruggero}"
		, q"{Ruperto}", q"{Rutilo}", q"{Sabato}", q"{Sabazio}", q"{Sabele}", q"{Sabino}", q"{Saffiro}"
		, q"{Saffo}", q"{Saladino}", q"{Salomè}", q"{Salomone}", q"{Salustio}", q"{Salvatore}", q"{Salvo}"
		, q"{Samuele}", q"{Sandro}", q"{Sansone}", q"{Sante}", q"{Santo}", q"{Sapiente}", q"{Sarbello}"
		, q"{Saturniano}", q"{Saturnino}", q"{Saul}", q"{Saverio}", q"{Savino}", q"{Sebastiano}", q"{Secondiano}"
		, q"{Secondo}", q"{Semplicio}", q"{Sempronio}", q"{Senesio}", q"{Senofonte}", q"{Serafino}"
		, q"{Serapione}", q"{Sergio}", q"{Servidio}", q"{Serviliano}", q"{Sesto}", q"{Settimio}", q"{Settimo}"
		, q"{Severiano}", q"{Severino}", q"{Severo}", q"{Sico}", q"{Sicuro}", q"{Sidonio}", q"{Sigfrido}"
		, q"{Sigismondo}", q"{Silvano}", q"{Silverio}", q"{Silvestro}", q"{Silvio}", q"{Simeone}", q"{Simone}"
		, q"{Sinesio}", q"{Sinfronio}", q"{Sireno}", q"{Siriano}", q"{Siricio}", q"{Sirio}", q"{Siro}"
		, q"{Sisto}", q"{Soccorso}", q"{Socrate}", q"{Solocone}", q"{Sostene}", q"{Sosteneo}", q"{Sostrato}"
		, q"{Spano}", q"{Spartaco}", q"{Speranzio}", q"{Stanislao}", q"{Stefano}", q"{Stiliano}", q"{Stiriaco}"
		, q"{Surano}", q"{Sviturno}", q"{Taddeo}", q"{Taide}", q"{Tammaro}", q"{Tancredi}", q"{Tarcisio}"
		, q"{Tarso}", q"{Taziano}", q"{Tazio}", q"{Telchide}", q"{Telemaco}", q"{Temistocle}", q"{Teobaldo}"
		, q"{Teodoro}", q"{Teodosio}", q"{Teodoto}", q"{Teogene}", q"{Terenzio}", q"{Terzo}", q"{Tesauro}"
		, q"{Tesifonte}", q"{Tibaldo}", q"{Tiberio}", q"{Tiburzio}", q"{Ticone}", q"{Timoteo}", q"{Tirone}"
		, q"{Tito}", q"{Tiziano}", q"{Tizio}", q"{Tobia}", q"{Tolomeo}", q"{Tommaso}", q"{Torquato}", q"{Tosco}"
		, q"{Tranquillo}", q"{Tristano}", q"{Tulliano}", q"{Tullio}", q"{Turi}", q"{Turibio}", q"{Tussio}"
		, q"{Ubaldo}", q"{Ubertino}", q"{Uberto}", q"{Ugo}", q"{Ugolino}", q"{Uguccione}", q"{Ulberto}"
		, q"{Ulderico}", q"{Ulfo}", q"{Ulisse}", q"{Ulpiano}", q"{Ulrico}", q"{Ulstano}", q"{Ultimo}", q"{Umberto}"
		, q"{Umile}", q"{Uranio}", q"{Urbano}", q"{Urdino}", q"{Uriele}", q"{Ursicio}", q"{Ursino}", q"{Ursmaro}"
		, q"{Valente}", q"{Valentino}", q"{Valeriano}", q"{Valerico}", q"{Valerio}", q"{Valfredo}", q"{Valfrido}"
		, q"{Valtena}", q"{Valter}", q"{Varo}", q"{Vasco}", q"{Vedasto}", q"{Velio}", q"{Venanzio}", q"{Venceslao}"
		, q"{Venerando}", q"{Venerio}", q"{Ventura}", q"{Venustiano}", q"{Venusto}", q"{Verano}", q"{Verecondo}"
		, q"{Verenzio}", q"{Verulo}", q"{Vespasiano}", q"{Vezio}", q"{Vidiano}", q"{Vidone}", q"{Vilfredo}"
		, q"{Viliberto}", q"{Vincenzo}", q"{Vindonio}", q"{Vinebaldo}", q"{Vinfrido}", q"{Vinicio}"
		, q"{Virgilio}", q"{Virginio}", q"{Virone}", q"{Viscardo}", q"{Vitale}", q"{Vitalico}", q"{Vito}"
		, q"{Vittore}", q"{Vittoriano}", q"{Vittorio}", q"{Vivaldo}", q"{Viviano}", q"{Vladimiro}", q"{Vodingo}"
		, q"{Volfango}", q"{Vulmaro}", q"{Vulpiano}", q"{Walter}", q"{Zabedeo}", q"{Zaccaria}", q"{Zaccheo}"
		, q"{Zanobi}", q"{Zefiro}", q"{Zena}", q"{Zenaide}", q"{Zenebio}", q"{Zeno}", q"{Zenobio}", q"{Zenone}"
		, q"{Zetico}", q"{Zoilo}", q"{Zosimo}" ];

		return choice(strs, this.rnd);
	}

	override string personMalePrefix() {
		const string[] strs =
		[ q"{Sig.}", q"{Dott.}", q"{Dr.}", q"{Ing.}" ];

		return choice(strs, this.rnd);
	}

	override string personName() {
		const int rndInt = uniform(0, 10, this.rnd);

		if(rndInt >= 0 && rndInt < 1) {
			return personPrefix() ~ " " ~ personFirstName() ~ " " ~ personLastName();
		}
		if(rndInt >= 1 && rndInt < 10) {
			return personFirstName() ~ " " ~ personLastName();
		}

		return "";
	}

	override string personPrefix() {
		const string[] strs =
		[ q"{Dott.}", q"{Dr.}", q"{Ing.}", q"{Sig.}" ];

		return choice(strs, this.rnd);
	}

	override string phoneNumberFormats() {
		const string[] strs =
		[ q"{+## ### ## ## ####}", q"{+## ## #######}", q"{+## ## ########}", q"{+## ### #######}"
		, q"{+## ### ########}", q"{+## #### #######}", q"{+## #### ########}", q"{0## ### ####}"
		, q"{+39 0## ### ###}", q"{3## ### ###}", q"{+39 3## ### ###}" ];

		return numberBuild(choice(strs, this.rnd));
	}

}

module faked.faker_nl;

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

class Faker_nl : Faker_en {
@safe:
	this(int seed) {
		super(seed);
	}

	override string commerceProductDescription() {
		const string[] strs =
		[ q"{Ergonomische directiestoel bekleed met zwart leer en een met pvc gevoerde zitting en rugleuning voor comfort en ondersteuning de hele dag door}"
		, q"{De indeling van de auto bestaat uit een ontwerp met voorin geplaatste motor, met transmissies van het transaxle-type achter de motor en vierwielaandrijving}", q"{Nieuwe ABC 13 9370, 13.3, 5e Gen CoreA5-8250U, 8GB RAM, 256GB SSD, krachtige UHD Graphics, OS 10 Home, OS Office A & J 2016}"
		, q"{Het slanke en eenvoudige Maple Gaming-toetsenbord van Dev Byte wordt geleverd met een gestroomlijnde behuizing en 7-kleuren RGB LED-achtergrondverlichting met slimme functionaliteit}", q"{De Apollotech B340 is een betaalbare draadloze muis met betrouwbare connectiviteit, een batterijlevensduur van 12 maanden en een modern ontwerp}"
		, q"{De Nagasaki Lander is de merknaam van verschillende series Nagasaki-sportmotoren, die begon met de ABC800J uit 1984}", q"{De voetbal is goed voor trainings- en recreatiedoeleinden}"
		, q"{De keepershandschoenen van Carbonite Web zijn ergonomisch ontworpen voor een goede pasvorm}", q"{De meest geavanceerde compressietechnologie van Boston verhoogt de zuurstoftoevoer naar de spieren en stabiliseert actieve spieren}"
		, q"{Het nieuwe assortiment formele overhemden is ontworpen met u in gedachten. Met pasvormen en stijlen waarmee u opvalt}", q"{Het prachtige assortiment van Apple Naturalé met een spannende mix van natuurlijke ingrediënten. Met het goede van 100% natuurlijke ingrediënten}"
		, q"{Andy-schoenen zijn ontworpen om zowel duurzaamheid als trends in gedachten te houden, het meest stijlvolle assortiment schoenen en sandalen}" ];

		return choice(strs, this.rnd);
	}

	override string commerceProductNameAdjective() {
		const string[] strs =
		[ q"{ambachtelijke}", q"{artistieke}", q"{coole}", q"{elegante}", q"{elektrische}", q"{ergonomische}"
		, q"{fantastische}", q"{geschikte}", q"{geweldige}", q"{gewone}", q"{goede}", q"{handgemaakte}"
		, q"{handige}", q"{intelligente}", q"{kleine}", q"{luxe}", q"{merkloze}", q"{moderne}", q"{mooie}"
		, q"{ongelofelijke}", q"{populaire}", q"{prachtige}", q"{praktische}", q"{rustieke}", q"{slanke}"
		, q"{slimme}", q"{smakelijke}", q"{toffe}", q"{uitgekiende}", q"{unieke}", q"{verantwoorde}"
		, q"{verbazingwekkende}", q"{verfijnde}", q"{zeldzame}" ];

		return choice(strs, this.rnd);
	}

	override string commerceProductNameMaterial() {
		const string[] strs =
		[ q"{betonnen}", q"{bevroren}", q"{bronzen}", q"{glazen}", q"{granieten}", q"{houten}", q"{ijzeren}"
		, q"{kartonnen}", q"{katoenen}", q"{metalen}", q"{plastic}", q"{rubberen}", q"{stalen}", q"{verse}"
		, q"{wollen}", q"{zachte}" ];

		return choice(strs, this.rnd);
	}

	override string commerceProductNameProduct() {
		const string[] strs =
		[ q"{auto}", q"{bacon}", q"{bal}", q"{bijzettafel}", q"{boekenkast}", q"{broek}", q"{camera}", q"{chips}"
		, q"{computer}", q"{fiets}", q"{handdoeken}", q"{handschoenen}", q"{hangmat}", q"{hoed}", q"{kaas}"
		, q"{kaasschaaf}", q"{kip}", q"{koffer}", q"{leunstoel}", q"{muis}", q"{pizza}", q"{poef}", q"{salade}"
		, q"{schoenen}", q"{stoel}", q"{tafel}", q"{tonijn}", q"{trui}", q"{vis}", q"{vlag}", q"{worstjes}"
		, q"{zak}", q"{zeep}" ];

		return choice(strs, this.rnd);
	}

	override string commerceDepartment() {
		const string[] strs =
		[ q"{Boeken}", q"{Films}", q"{Muziek}", q"{Spelletjes}", q"{Elektronica}", q"{Computers}", q"{Huis}"
		, q"{Tuin}", q"{Gereedschap}", q"{Kruiden}", q"{Gezondheid}", q"{Beauty}", q"{Speelgoed}", q"{Kinderen}"
		, q"{Baby}", q"{Kleding}", q"{Schoenen}", q"{Sieraden}", q"{Sport}", q"{Verzorging}", q"{Auto}"
		, q"{Industrieel}" ];

		return choice(strs, this.rnd);
	}

	override string companySuffix() {
		const string[] strs =
		[ q"{BV}", q"{V.O.F.}", q"{Groep}", q"{NV}", q"{Bedrijf}", q"{en Zonen}", q"{Combinatie}" ];

		return choice(strs, this.rnd);
	}

	override string dateMonthWide() {
		const string[] strs =
		[ q"{januari}", q"{februari}", q"{maart}", q"{april}", q"{mei}", q"{juni}", q"{juli}", q"{augustus}"
		, q"{september}", q"{oktober}", q"{november}", q"{december}" ];

		return choice(strs, this.rnd);
	}

	override string dateMonthAbbr() {
		const string[] strs =
		[ q"{jan}", q"{feb}", q"{mrt}", q"{apr}", q"{mei}", q"{jun}", q"{jul}", q"{aug}", q"{sep}", q"{okt}", q"{nov}"
		, q"{dec}" ];

		return choice(strs, this.rnd);
	}

	override string dateWeekdayWide() {
		const string[] strs =
		[ q"{zondag}", q"{maandag}", q"{dinsdag}", q"{woensdag}", q"{donderdag}", q"{vrijdag}", q"{zaterdag}" ];

		return choice(strs, this.rnd);
	}

	override string dateWeekdayAbbr() {
		const string[] strs =
		[ q"{zo}", q"{ma}", q"{di}", q"{wo}", q"{do}", q"{vr}", q"{za}" ];

		return choice(strs, this.rnd);
	}

	override string hackerAdjective() {
		const string[] strs =
		[ q"{ondersteunende}", q"{primaire}", q"{onderliggende}", q"{digitale}", q"{open source}", q"{virtuele}"
		, q"{cross-platform}", q"{overtollige}", q"{online}", q"{haptische}", q"{multi-byte}", q"{Bluetooth}"
		, q"{draadloze}", q"{minuscule}", q"{neurale}", q"{optische}", q"{solid state}", q"{mobiele}"
		, q"{cruciale}", q"{kostbare}", q"{verwaarloosde}", q"{smakelijke}" ];

		return choice(strs, this.rnd);
	}

	override string hackerNoun() {
		const string[] strs =
		[ q"{driver}", q"{protocol}", q"{bandbreedte}", q"{paneel}", q"{microchip}", q"{programma}", q"{port}"
		, q"{kaart}", q"{array}", q"{verbinding}", q"{draad}", q"{stekker}", q"{systeem}", q"{sensor}"
		, q"{firewall}", q"{harde schijf}", q"{pixel}", q"{alarm}", q"{voeding}", q"{monitor}", q"{toepassing}"
		, q"{zender}", q"{bus}", q"{stroomkring}", q"{condensator}", q"{matrix}" ];

		return choice(strs, this.rnd);
	}

	override string hackerPhrase() {
		final switch(uniform(0, 8, this.rnd)) {
			case 0: return "Als we de " ~ hackerNoun() ~ " " ~ hackerVerb() ~ ", dan kunnen we naar de " ~ hackerAbbreviation() ~ " " ~ hackerNoun() ~ " via de " ~ hackerAdjective() ~ " " ~ hackerAbbreviation() ~ " " ~ hackerNoun() ~ "!";
			case 1: return "We moeten de " ~ hackerAdjective() ~ " " ~ hackerAbbreviation() ~ " " ~ hackerNoun() ~ " " ~ hackerVerb() ~ "!";
			case 2: return "Probeer om de " ~ hackerAbbreviation() ~ " " ~ hackerNoun() ~ " te " ~ hackerVerb() ~ ", misschien gaat dat de " ~ hackerAdjective() ~ " " ~ hackerNoun() ~ " " ~ hackerVerb() ~ "!";
			case 3: return "Je kan de " ~ hackerNoun() ~ " niet " ~ hackerVerb() ~ " zonder de " ~ hackerAdjective() ~ " " ~ hackerAbbreviation() ~ " " ~ hackerNoun() ~ " te " ~ hackerVerb() ~ "!";
			case 4: return "Gebruik de " ~ hackerAdjective() ~ " " ~ hackerAbbreviation() ~ " " ~ hackerNoun() ~ ", dan kan je de " ~ hackerAdjective() ~ " " ~ hackerNoun() ~ " " ~ hackerVerb() ~ "!";
			case 5: return "De " ~ hackerAbbreviation() ~ " " ~ hackerNoun() ~ " ligt eruit, jullie moeten de " ~ hackerAdjective() ~ " " ~ hackerNoun() ~ " " ~ hackerVerb() ~ " zodat we de " ~ hackerAbbreviation() ~ " " ~ hackerNoun() ~ " kunnen " ~ hackerVerb() ~ "!";
			case 6: return "Het maakt niet uit of we de " ~ hackerNoun() ~ " " ~ hackerVerb() ~ ", we moeten de " ~ hackerAdjective() ~ " " ~ hackerAbbreviation() ~ " " ~ hackerNoun() ~ " " ~ hackerVerb() ~ "!";
			case 7: return "Ik ga de " ~ hackerAdjective() ~ " " ~ hackerAbbreviation() ~ " " ~ hackerNoun() ~ " " ~ hackerVerb() ~ ", dat zou de " ~ hackerNoun() ~ " moeten " ~ hackerVerb() ~ "!";
		}
		return "";
	}

	override string hackerVerb() {
		const string[] strs =
		[ q"{back-uppen}", q"{omzeilen}", q"{hacken}", q"{overschrijven}", q"{samenpersen}", q"{kopiëren}"
		, q"{navigeren}", q"{indexeren}", q"{aansluiten}", q"{genereren}", q"{kwantificeren}", q"{berekenen}"
		, q"{samenstellen}", q"{invoeren}", q"{verzenden}", q"{programmeren}", q"{herstarten}", q"{ontleden}"
		, q"{in stukjes snijden}", q"{analyseren}" ];

		return choice(strs, this.rnd);
	}

	override string internetDomainSuffix() {
		const string[] strs =
		[ q"{nl}", q"{frl}", q"{amsterdam}", q"{com}", q"{net}", q"{org}", q"{eu}" ];

		return choice(strs, this.rnd);
	}

	override string internetFreeEmail() {
		const string[] strs =
		[ q"{gmail.com}", q"{yahoo.com}", q"{hotmail.com}" ];

		return choice(strs, this.rnd);
	}

	override string locationBuildingNumber() {
		const string[] strs =
		[ q"{#}", q"{##}", q"{###}", q"{###a}", q"{###b}", q"{###c}", q"{### I}", q"{### II}", q"{### III}" ];

		return numberBuild(choice(strs, this.rnd));
	}

	override string locationCityPattern() {
		final switch(uniform(0, 2, this.rnd)) {
			case 0: return locationCityPrefix() ~ locationCitySuffix();
			case 1: return locationCityPrefix();
		}
		return "";
	}

	override string locationCityPrefix() {
		const string[] strs =
		[ q"{Aagte}", q"{Aal}", q"{Aalden}", q"{Aals}", q"{Aalst}", q"{Aalsum}", q"{Aanschot}", q"{Aarden}"
		, q"{Aarle}", q"{Abbe}", q"{Abbegea}", q"{Abben}", q"{Abbestede}", q"{Abcoven}", q"{Absdale}", q"{Abts}"
		, q"{Acht}", q"{Achter}", q"{Achterste}", q"{Achtmaal}", q"{Achttien}", q"{Acquoy}", q"{Aduard}"
		, q"{Aduarder}", q"{Aekinga}", q"{Aerde}", q"{Aerden}", q"{Aerdt}", q"{Afferden}", q"{Aijen}", q"{Akersloot}"
		, q"{Akker}", q"{Akkerput}", q"{Akkrun}", q"{Akmarijp}", q"{Aldeboarn}", q"{Aldegae}", q"{Aldtsjerk}"
		, q"{Aling}", q"{Alkmaar}", q"{Allersma}", q"{Allinga}", q"{Almere}", q"{Alphen}", q"{Altena}"
		, q"{Alteveer}", q"{Alting}", q"{Altweert}", q"{Alverna}", q"{Ameide}", q"{Amerika}", q"{Amerongen}"
		, q"{Ammerstol}", q"{Ams}", q"{Amster}", q"{Andel}", q"{Angeren}", q"{Anholt}", q"{Anjum}", q"{Anke}"
		, q"{Ankum}", q"{Anna}", q"{Annendaal}", q"{Anneville}", q"{Anreep}", q"{Ansen}", q"{Apeldoorn}"
		, q"{Apen}", q"{Appel}", q"{Appen}", q"{Arcen}", q"{Archem}", q"{Arendnest}", q"{Arensge}", q"{Arkens}"
		, q"{Armweide}", q"{Arnhem}", q"{Arnoud}", q"{Arriën}", q"{Arriër}", q"{Arum}", q"{Arwerd}", q"{Asch}"
		, q"{Asenray}", q"{Asperen}", q"{Asschat}", q"{Assel}", q"{Asselt}", q"{Assen}", q"{Asten}", q"{Atze}"
		, q"{Augs}", q"{Averlo}", q"{Avest}", q"{Azelo}", q"{Azewijn}", q"{Ba}", q"{Baaium}", q"{Baak}", q"{Baaks}"
		, q"{Baal}", q"{Baamsum}", q"{Baan}", q"{Baard}", q"{Baarder}", q"{Baarle}", q"{Baarlo}", q"{Baars}"
		, q"{Baarschot}", q"{Baexem}", q"{Baflo}", q"{Bahr}", q"{Bakel}", q"{Bakelse}", q"{Bakertand}"
		, q"{Bakke}", q"{Bakkerom}", q"{Balgoij}", q"{Balinge}", q"{Ballast}", q"{Balleman}", q"{Ballum}"
		, q"{Balma}", q"{Bane}", q"{Bankert}", q"{Bantega}", q"{Bare}", q"{Bargebek}", q"{Barlage}", q"{Barlaque}"
		, q"{Barlo}", q"{Barnflair}", q"{Barrier}", q"{Bars}", q"{Basse}", q"{Basser}", q"{Baten}", q"{Bath}"
		, q"{Bathmen}", q"{Bavinkel}", q"{Bazuin}", q"{Bears}", q"{Beckum}", q"{Bedaf}", q"{Bedum}", q"{Beekb}"
		, q"{Beekkant}", q"{Beemdkant}", q"{Beemte}", q"{Beertsen}", q"{Beerze}", q"{Beerzer}", q"{Beesd}"
		, q"{Beetgum}", q"{Beetgumer}", q"{Behelp}", q"{Beilen}", q"{Beinum}", q"{Beke}", q"{Beldert}"
		, q"{Belgen}", q"{Belgeren}", q"{Belt}", q"{Belvert}", q"{Bemmel}", q"{Bemmer}", q"{Benderse}"
		, q"{Beneden}", q"{Benne}", q"{Bennekom}", q"{Bent}", q"{Bente}", q"{Benthem}", q"{Berg}", q"{Bergakker}"
		, q"{Bergen}", q"{Bergens}", q"{Bergerden}", q"{Bergharen}", q"{Berghem}", q"{Berghum}", q"{Bergstoep}"
		, q"{Berik}", q"{Beringe}", q"{Berk}", q"{Berke}", q"{Berken}", q"{Berkt}", q"{Berlicum}", q"{Bern}"
		, q"{Besse}", q"{Besthmen}", q"{Beswerd}", q"{Bethlehem}", q"{Beugt}", q"{Beuke}", q"{Beun}", q"{Beusb}"
		, q"{Beusichem}", q"{Bever}", q"{Bidding}", q"{Biert}", q"{Bierum}", q"{Biessum}", q"{Biest}", q"{Biezen}"
		, q"{Bigge}", q"{Bijster}", q"{Bijsteren}", q"{Billing}", q"{Bilt}", q"{Bingerden}", q"{Bisselt}"
		, q"{Bissen}", q"{Blaker}", q"{Blaricum}", q"{Blauhûs}", q"{Blauw}", q"{Blauwe}", q"{Blauwen}"
		, q"{Bleijen}", q"{Bleijs}", q"{Blekslage}", q"{Blenkert}", q"{Blerick}", q"{Blessum}", q"{Blije}"
		, q"{Blijham}", q"{Blijnse}", q"{Blok}", q"{Blokken}", q"{Blokum}", q"{Boazum}", q"{Boberden}"
		, q"{Bocholtz}", q"{Bocht}", q"{Boeiink}", q"{Boek}", q"{Boekel}", q"{Boekelo}", q"{Boekelte}"
		, q"{Boekend}", q"{Boer}", q"{Boerakker}", q"{Boerelaan}", q"{Boeren}", q"{Boerengat}", q"{Boerenhol}"
		, q"{Boerhaar}", q"{Boijl}", q"{Boks}", q"{Boksum}", q"{Bokt}", q"{Bollinga}", q"{Bols}", q"{Bolst}"
		, q"{Bolt}", q"{Bommerig}", q"{Bong}", q"{Bonkwert}", q"{Bonner}", q"{Bonrepas}", q"{Bontebok}"
		, q"{Boomen}", q"{Boord}", q"{Borger}", q"{Borgharen}", q"{Borgs}", q"{Borgweg}", q"{Borkel}", q"{Borkeld}"
		, q"{Born}", q"{Borne}", q"{Borneo}", q"{Bornwird}", q"{Bos}", q"{Boschkens}", q"{Bosje}", q"{Bosjes}"
		, q"{Boskamp}", q"{Boskant}", q"{Boskoop}", q"{Boslust}", q"{Bosschen}", q"{Bosscher}", q"{Bosven}"
		, q"{Boter}", q"{Botshoofd}", q"{Boukoul}", q"{Bourtange}", q"{Boven}", q"{Bovenstad}", q"{Boxtel}"
		, q"{Braak}", q"{Braamt}", q"{Brabander}", q"{Brakel}", q"{Brand}", q"{Brande}", q"{Brandt}", q"{Brantgum}"
		, q"{Breda}", q"{Brede}", q"{Bree}", q"{Breede}", q"{Breedeweg}", q"{Breehees}", q"{Breezand}"
		, q"{Brem}", q"{Breskens}", q"{Breugel}", q"{Breukele}", q"{Breyvin}", q"{Brielle}", q"{Brigdamme}"
		, q"{Brij}", q"{Brillerij}", q"{Briltil}", q"{Brinkmans}", q"{Britsum}", q"{Britswert}", q"{Broek}"
		, q"{Broekens}", q"{Broekkant}", q"{Brommelen}", q"{Brons}", q"{Bruchem}", q"{Bruggen}", q"{Brugger}"
		, q"{Bruil}", q"{Bruinisse}", q"{Bruister}", q"{Brumhold}", q"{Brunssum}", q"{Brunsting}", q"{Bruntinge}"
		, q"{Buchten}", q"{Buggenum}", q"{Buis}", q"{Buiten}", q"{Bulkenaar}", q"{Bult}", q"{Bultinge}"
		, q"{Bunne}", q"{Bunnik}", q"{Burdaard}", q"{Burger}", q"{Burgh}", q"{Burgt}", q"{Burgum}", q"{Burgwerd}"
		, q"{Burstum}", q"{Burum}", q"{Bussel}", q"{Busselte}", q"{Busser}", q"{Buttinge}", q"{Buurtje}"
		, q"{Cadier}", q"{Cadzand}", q"{Calfven}", q"{Calslagen}", q"{Caluna}", q"{Camerig}", q"{Capelle}"
		, q"{Carnisse}", q"{Cartils}", q"{Castelré}", q"{Castenray}", q"{Castert}", q"{Castricum}"
		, q"{Catsop}", q"{Chaam}", q"{Clinge}", q"{Coevorden}", q"{Colmont}", q"{Cornjum}", q"{Cornwerd}"
		, q"{Cottessen}", q"{Crapoel}", q"{Crau}", q"{Crix}", q"{Crob}", q"{Croy}", q"{Culemborg}", q"{Daarle}"
		, q"{Dale}", q"{Dalem}", q"{Dalen}", q"{Daler}", q"{Dalerend}", q"{Dalerpeel}", q"{Dallinge}", q"{Damwâld}"
		, q"{Daniken}", q"{Darp}", q"{Dassemus}", q"{Dearsum}", q"{Dedgum}", q"{Deelen}", q"{Deelse}", q"{Deelshurk}"
		, q"{Deense}", q"{Deest}", q"{Deil}", q"{Deinum}", q"{Dekes}", q"{Dekkers}", q"{Del}", q"{Delden}"
		, q"{Delf}", q"{Delft}", q"{Dellen}", q"{Delwijnen}", q"{Demen}", q"{Den }", q"{Deursen}", q"{Deuteren}"
		, q"{Deventer}", q"{Dieden}", q"{Diemen}", q"{Diepen}", q"{Diependal}", q"{Diepswal}", q"{Diermen}"
		, q"{Dieskant}", q"{Dieteren}", q"{Diever}", q"{Dijken}", q"{Dijker}", q"{Dijkster}", q"{Dijkwel}"
		, q"{Dintelsas}", q"{Dinther}", q"{Dintherse}", q"{Diphoorn}", q"{Dirkshorn}", q"{Dis}", q"{Diunt}"
		, q"{Doenrade}", q"{Does}", q"{Doeveren}", q"{Doezum}", q"{Doijum}", q"{Dokkum}", q"{Doldersum}"
		, q"{Dom}", q"{Dommelen}", q"{Donderen}", q"{Dongen}", q"{Donia}", q"{Doniaga}", q"{Donzel}", q"{Dood}"
		, q"{Doodstil}", q"{Doon}", q"{Doorn}", q"{Doornen}", q"{Doornik}", q"{Doorning}", q"{Doorwerth}"
		, q"{Doosje}", q"{Dorkwerd}", q"{Dorst}", q"{Dorther}", q"{Douverge}", q"{Douwen}", q"{Draai}"
		, q"{Drachten}", q"{Dreischor}", q"{Drie}", q"{Drieboere}", q"{Driehuis}", q"{Driene}", q"{Dries}"
		, q"{Driewegen}", q"{Driezum}", q"{Drieën}", q"{Drijber}", q"{Drimmelen}", q"{Drogeham}", q"{Drogt}"
		, q"{Dronrijp}", q"{Dronten}", q"{Druif}", q"{Drunen}", q"{Druten}", q"{Drylts}", q"{Duifhuis}"
		, q"{Duinen}", q"{Duiven}", q"{Duizel}", q"{Duizend}", q"{Dulder}", q"{Dunsborg}", q"{Dussen}"
		, q"{Duur}", q"{Duurends}", q"{Eagum}", q"{Earnewâld}", q"{Easterein}", q"{Eastermar}", q"{Easthim}"
		, q"{Echt}", q"{Echten}", q"{Echtener}", q"{Echter}", q"{Eder}", q"{Eede}", q"{Eefsele}", q"{Eekt}"
		, q"{Eekwerd}", q"{Eelde}", q"{Eelen}", q"{Eems}", q"{Eemster}", q"{Eemten}", q"{Een}", q"{Eenigen}"
		, q"{Eenrum}", q"{Eenum}", q"{Eerde}", q"{Eersel}", q"{Eerste}", q"{Ees}", q"{Eesterga}", q"{Effen}"
		, q"{Egchel}", q"{Egede}", q"{Egmond}", q"{Egypte}", q"{Eikelen}", q"{Eikelhof}", q"{Eimeren}"
		, q"{Eindewege}", q"{Eindje}", q"{Ekamp}", q"{Elde}", q"{Elden}", q"{Eldik}", q"{Eldrik}", q"{Elft}"
		, q"{Elkerzee}", q"{Ellemeet}", q"{Eller}", q"{Ellerhei}", q"{Ellersing}", q"{Elsen}", q"{Elshof}"
		, q"{Elspeet}", q"{Elst}", q"{Elsteren}", q"{Elzet}", q"{Emmeloord}", q"{Emmen}", q"{Empel}", q"{Endepoel}"
		, q"{Eng}", q"{Enge}", q"{Engel}", q"{Engelbert}", q"{Engelen}", q"{Engelum}", q"{Englum}", q"{Engwegen}"
		, q"{Engwierum}", q"{Enk}", q"{Enschedé}", q"{Enspijk}", q"{Enumatil}", q"{Enzelens}", q"{Eper}"
		, q"{Eppen}", q"{Erichem}", q"{Erlecom}", q"{Ermelo}", q"{Ermer}", q"{Escharen}", q"{Eschoten}"
		, q"{Espelo}", q"{Essen}", q"{Etenaken}", q"{Etzenrade}", q"{Eursing}", q"{Eursinge}", q"{Euverem}"
		, q"{Ever}", q"{Everd}", q"{Everlo}", q"{Everse}", q"{Ewer}", q"{Ewinkel}", q"{Exmorra}", q"{Eygels}"
		, q"{Eyser}", q"{Ezinge}", q"{Ezuma}", q"{Faan}", q"{Falom}", q"{Farmsum}", q"{Fatum}", q"{Feerwerd}"
		, q"{Fel}", q"{Ferwert}", q"{Fiemel}", q"{Fijfhûs}", q"{Finke}", q"{Finkum}", q"{Flieren}", q"{Flânsum}"
		, q"{Fokkers}", q"{Follega}", q"{Folsgeare}", q"{Formerum}", q"{Fort}", q"{Fortmond}", q"{Foudgum}"
		, q"{Fraamklap}", q"{Frankhuis}", q"{Frankrijk}", q"{Fransum}", q"{Friens}", q"{Frytum}", q"{Fûns}"
		, q"{Gaag}", q"{Gaanderen}", q"{Gaar}", q"{Gaast}", q"{Gaasten}", q"{Gaastmar}", q"{Gaete}", q"{Gagel}"
		, q"{Galder}", q"{Gameren}", q"{Gammelke}", q"{Ganzert}", q"{Gapinge}", q"{Garminge}", q"{Garnwerd}"
		, q"{Garre}", q"{Garrels}", q"{Garst}", q"{Garyp}", q"{Gassel}", q"{Gasthuis}", q"{Gawege}", q"{Gebergte}"
		, q"{Geefs}", q"{Geen}", q"{Geer}", q"{Gees}", q"{Geeuwen}", q"{Geffen}", q"{Gelders}", q"{Gelderse}"
		, q"{Geleen}", q"{Gelkenes}", q"{Gellicum}", q"{Gemaal}", q"{Gement}", q"{Gemert}", q"{Gemonde}"
		, q"{Gendt}", q"{Geneijgen}", q"{Genen}", q"{Gening}", q"{Genne}", q"{Gennep}", q"{Genooi}", q"{Gerheggen}"
		, q"{Gerner}", q"{Gersloot}", q"{Gerven}", q"{Gerwen}", q"{Geulhem}", q"{Gever}", q"{Geverik}"
		, q"{Gewande}", q"{Giers}", q"{Giessen}", q"{Gietelo}", q"{Giethmen}", q"{Giethoorn}", q"{Gijbe}"
		, q"{Gijsselte}", q"{Gijzel}", q"{Gilze}", q"{Ginkel}", q"{Ginnum}", q"{Glaner}", q"{Goaiïngea}"
		, q"{Godlinze}", q"{Goes}", q"{Goilberd}", q"{Goirle}", q"{Goldhoorn}", q"{Gooium}", q"{Goor}"
		, q"{Gorinchem}", q"{Gorp}", q"{Gortel}", q"{Gouda}", q"{Gouderak}", q"{Goudseweg}", q"{Goënga}"
		, q"{Graaf}", q"{Graauw}", q"{Gracht}", q"{Graet}", q"{Graf}", q"{Grafwegen}", q"{Gras}", q"{Graspeel}"
		, q"{Graszode}", q"{Grathem}", q"{Grauwe}", q"{Grave}", q"{Grazen}", q"{Greonterp}", q"{Greup}"
		, q"{Griete}", q"{Grijps}", q"{Grits}", q"{Groe}", q"{Groede}", q"{Groen}", q"{Groenekan}", q"{Groeneweg}"
		, q"{Groenlo}", q"{Groep}", q"{Groes}", q"{Groessen}", q"{Groet}", q"{Groeve}", q"{Groeze}", q"{Gron}"
		, q"{Groot}", q"{Groote}", q"{Grote}", q"{Grotel}", q"{Grou}", q"{Gytsjerk}", q"{Haaften}", q"{Haag}"
		, q"{Haagje}", q"{Haaks}", q"{Haakswold}", q"{Haalderen}", q"{Haalweide}", q"{Haamstede}", q"{Haandrik}"
		, q"{Haar}", q"{Haarlem}", q"{Haarsteeg}", q"{Haart}", q"{Haelen}", q"{Haerst}", q"{Hagestein}"
		, q"{Haiink}", q"{Halder}", q"{Haler}", q"{Half}", q"{Halfmijl}", q"{Halfweg}", q"{Halle}", q"{Haller}"
		, q"{Hallum}", q"{Halte}", q"{Halvink}", q"{Hamrik}", q"{Hamshorn}", q"{Handel}", q"{Hane}", q"{Hank}"
		, q"{Hankate}", q"{Hansweert}", q"{Hantum}", q"{Hantumer}", q"{Harculo}", q"{Harde}", q"{Hardinx}"
		, q"{Haren}", q"{Harener}", q"{Haring}", q"{Harke}", q"{Harkema}", q"{Harl}", q"{Harles}", q"{Harpel}"
		, q"{Harre}", q"{Harse}", q"{Harskamp}", q"{Harssens}", q"{Hartwerd}", q"{Haspel}", q"{Hasselt}"
		, q"{Hasselter}", q"{Hatte}", q"{Hattem}", q"{Hauwert}", q"{Havelt}", q"{Havelte}", q"{Hayum}"
		, q"{Haze}", q"{Hazenhurk}", q"{Hazennest}", q"{Heaburgen}", q"{Hedel}", q"{Hedik}", q"{Heech}"
		, q"{Heegher}", q"{Heek}", q"{Heelsum}", q"{Heems}", q"{Heemstede}", q"{Heenweg}", q"{Heer}", q"{Heerde}"
		, q"{Heere}", q"{Heeren}", q"{Heers}", q"{Hees}", q"{Heesakker}", q"{Heesbeen}", q"{Heesboom}"
		, q"{Heesch}", q"{Heesselt}", q"{Heet}", q"{Heezeren}", q"{Hefswal}", q"{Hegge}", q"{Hei}", q"{Heiakker}"
		, q"{Heibloem}", q"{Heid}", q"{Heide}", q"{Heidekant}", q"{Heiden}", q"{Heier}", q"{Heihoefke}"
		, q"{Heij}", q"{Heijen}", q"{Heikant}", q"{Heikantse}", q"{Heille}", q"{Heine}", q"{Heioord}", q"{Heister}"
		, q"{Heitrak}", q"{Hekel}", q"{Hekkum}", q"{Hel}", q"{Helden}", q"{Helkant}", q"{Hell}", q"{Helle}"
		, q"{Hellegat}", q"{Hellen}", q"{Hellevoet}", q"{Helling}", q"{Hellouw}", q"{Helwerd}", q"{Hemert}"
		, q"{Hemrik}", q"{Hendrik}", q"{Henge}", q"{Herfte}", q"{Herike}", q"{Herk}", q"{Herken}", q"{Hermalen}"
		, q"{Hernen}", q"{Herpen}", q"{Herpt}", q"{Hersel}", q"{Hersend}", q"{Hert}", q"{Herten}", q"{Hertme}"
		, q"{Herveld}", q"{Herwen}", q"{Herwijnen}", q"{Herxen}", q"{Hesens}", q"{Hespe}", q"{Hessum}"
		, q"{Heugde}", q"{Heukelom}", q"{Heukelum}", q"{Heult}", q"{Heumen}", q"{Heure}", q"{Heurne}", q"{Heusden}"
		, q"{Heuvel}", q"{Heuvels}", q"{Heuveltje}", q"{Hexel}", q"{Heze}", q"{Hiaure}", q"{Hichtum}", q"{Hidaard}"
		, q"{Hien}", q"{Hierden}", q"{Hieslum}", q"{Hijken}", q"{Hijum}", q"{Hilaard}", q"{Hilakker}", q"{Hild}"
		, q"{Hill}", q"{Hilte}", q"{Hilversum}", q"{Hinnaard}", q"{Hintham}", q"{Hitsertse}", q"{Hodenpijl}"
		, q"{Hoef}", q"{Hoefkens}", q"{Hoek}", q"{Hoekdries}", q"{Hoekelum}", q"{Hoekens}", q"{Hoekje}"
		, q"{Hoeks}", q"{Hoekske}", q"{Hoetmans}", q"{Hoeve}", q"{Hoeven}", q"{Hoeves}", q"{Hoge}", q"{Hogert}"
		, q"{Hogeweg}", q"{Holker}", q"{Hollum}", q"{Holm}", q"{Holset}", q"{Holsloot}", q"{Holst}", q"{Holt}"
		, q"{Holte}", q"{Holten}", q"{Holter}", q"{Holthe}", q"{Holtien}", q"{Holtinge}", q"{Holtum}", q"{Holwerd}"
		, q"{Holwierde}", q"{Holwinde}", q"{Hommelse}", q"{Hommert}", q"{Hommerts}", q"{Honderd}", q"{Honds}"
		, q"{Hondsrug}", q"{Hongerige}", q"{Honthem}", q"{Hoog}", q"{Hoogcruts}", q"{Hooge}", q"{Hoogehaar}"
		, q"{Hoogen}", q"{Hoogeweg}", q"{Hooghalen}", q"{Hoogmade}", q"{Hoogmeien}", q"{Hoogwatum}"
		, q"{Hool}", q"{Hoon}", q"{Hoonte}", q"{Hoorn}", q"{Hoornder}", q"{Hoptille}", q"{Horck}", q"{Horick}"
		, q"{Horn}", q"{Horssen}", q"{Horsten}", q"{Horzik}", q"{Hout}", q"{Houterd}", q"{Houtgoor}", q"{Houthei}"
		, q"{Houthem}", q"{Houw}", q"{Houwer}", q"{Hugten}", q"{Huij}", q"{Huinen}", q"{Huinerwal}", q"{Huis}"
		, q"{Huissen}", q"{Huize}", q"{Huizinge}", q"{Hul}", q"{Huls}", q"{Hulsen}", q"{Hulst}", q"{Hulten}"
		, q"{Hultje}", q"{Humcoven}", q"{Hunnecum}", q"{Hunsel}", q"{Hupsel}", q"{Hurkske}", q"{Hurpesch}"
		, q"{Hutten}", q"{Huurne}", q"{Höchte}", q"{Höfke}", q"{Húns}", q"{Idaerd}", q"{Idserda}", q"{Idsken}"
		, q"{Idzegea}", q"{Iens}", q"{IJmuiden}", q"{IJpe}", q"{IJpelo}", q"{IJsselham}", q"{IJzen}", q"{IJzeren}"
		, q"{IJzerlo}", q"{Illik}", q"{Indoornik}", q"{Ingwert}", q"{Inia}", q"{Itens}", q"{Itteren}", q"{Jaars}"
		, q"{Jammer}", q"{Jannum}", q"{Jellum}", q"{Jelsum}", q"{Jeth}", q"{Jipsing}", q"{Jirnsum}", q"{Jislum}"
		, q"{Jisp}", q"{Jistrum}", q"{Jonas}", q"{Jonen}", q"{Jonkers}", q"{Jorwert}", q"{Joure}", q"{Jous}"
		, q"{Jousterp}", q"{Jouswerd}", q"{Jouwer}", q"{Jubbega}", q"{Jukwerd}", q"{Junne}", q"{Jutryp}"
		, q"{Kaag}", q"{Kaakhorn}", q"{Kaard}", q"{Kaarschot}", q"{Kaat}", q"{Kade}", q"{Kadoelen}", q"{Kalis}"
		, q"{Kalteren}", q"{Kameren}", q"{Kamp}", q"{Kampen}", q"{Kamper}", q"{Kamperei}", q"{Kampers}"
		, q"{Kamperzee}", q"{Kantens}", q"{Kantje}", q"{Kapel}", q"{Kapelle}", q"{Kapolder}", q"{Kappert}"
		, q"{Karre}", q"{Kasen}", q"{Kasteren}", q"{Kater}", q"{Katerveer}", q"{Kathagen}", q"{Katlijk}"
		, q"{Kats}", q"{Katwijk}", q"{Kaumes}", q"{Kavel}", q"{Kaweide}", q"{Kedichem}", q"{Keegen}", q"{Keent}"
		, q"{Keersop}", q"{Keinsmer}", q"{Keizers}", q"{Kekerdom}", q"{Kelmond}", q"{Kelpen}", q"{Kempkens}"
		, q"{Kerk}", q"{Kerken}", q"{Kerkhof}", q"{Kerkrade}", q"{Kerkwerve}", q"{Keske}", q"{Kessel}"
		, q"{Kesseleik}", q"{Ketting}", q"{Keulse}", q"{Keunen}", q"{Keup}", q"{Keuter}", q"{Kibbel}", q"{Kiel}"
		, q"{Kiester}", q"{Kievit}", q"{Kijf}", q"{Kijfwaard}", q"{Kijkuit}", q"{Kilder}", q"{Kille}", q"{Kimswerd}"
		, q"{Kinderbos}", q"{Kink}", q"{Kinnum}", q"{Kipper}", q"{Klaaswaal}", q"{Kladde}", q"{Klaren}"
		, q"{Klatering}", q"{Klef}", q"{Klei}", q"{Klein}", q"{Kleinder}", q"{Kleine}", q"{Kleinge}", q"{Klem}"
		, q"{Kletter}", q"{Klevers}", q"{Klispoel}", q"{Klomp}", q"{Klooster}", q"{Klosse}", q"{Klösse}"
		, q"{Knaphof}", q"{Knegsel}", q"{Knipe}", q"{Knol}", q"{Knolle}", q"{Knuiters}", q"{Koedood}", q"{Koehool}"
		, q"{Koekange}", q"{Koekanger}", q"{Koekoek}", q"{Koel}", q"{Koevering}", q"{Kokkelert}", q"{Kolder}"
		, q"{Kolhol}", q"{Kolhorn}", q"{Kolk}", q"{Kollum}", q"{Kolonie}", q"{Kommer}", q"{Konings}", q"{Koog}"
		, q"{Kooi}", q"{Kooldert}", q"{Kopaf}", q"{Korhorn}", q"{Korn}", q"{Kornhorn}", q"{Kort}", q"{Korte}"
		, q"{Korteraar}", q"{Korteven}", q"{Kortgene}", q"{Kostvlies}", q"{Koude}", q"{Kouden}", q"{Koudhoorn}"
		, q"{Koulen}", q"{Kraan}", q"{Kraanven}", q"{Kraats}", q"{Krabben}", q"{Krachtig}", q"{Kranen}"
		, q"{Krassum}", q"{Kreek}", q"{Kreielt}", q"{Kreijel}", q"{Kreijl}", q"{Krewerd}", q"{Krim}", q"{Krimpen}"
		, q"{Krol}", q"{Kruin}", q"{Kruishaar}", q"{Kruispunt}", q"{Kruisweg}", q"{Kuikhorne}", q"{Kuiks}"
		, q"{Kuinre}", q"{Kuitaart}", q"{Kuivezand}", q"{Kulert}", q"{Kulsdom}", q"{Kunrade}", q"{Kutt}"
		, q"{Kuundert}", q"{Kuzemer}", q"{Kwaal}", q"{Kwakel}", q"{Kwakkel}", q"{Kwartier}", q"{Kûkherne}"
		, q"{Laag}", q"{Laaghalen}", q"{Laaghaler}", q"{Laak}", q"{Laaksum}", q"{Laan}", q"{Lage}", q"{Lagekant}"
		, q"{Lageweg}", q"{Lakei}", q"{Laker}", q"{Lalle}", q"{Lammer}", q"{Lammerweg}", q"{Lamperen}"
		, q"{Landerum}", q"{Landsrade}", q"{Lang}", q"{Lange}", q"{Langeraar}", q"{Langerak}", q"{Langereit}"
		, q"{Lank}", q"{Lankes}", q"{Laren}", q"{Laskwerd}", q"{Lattrop}", q"{Laude}", q"{Lauwer}", q"{Ledeacker}"
		, q"{Leeg}", q"{Leegte}", q"{Leek}", q"{Leem}", q"{Leen}", q"{Leens}", q"{Leensel}", q"{Leermens}"
		, q"{Leersum}", q"{Leeuw}", q"{Leeuwerik}", q"{Leeuwte}", q"{Lege}", q"{Legert}", q"{Leiden}", q"{Leimuiden}"
		, q"{Leker}", q"{Lekker}", q"{Lelystad}", q"{Lemel}", q"{Lemele}", q"{Lemmer}", q"{Lemselo}", q"{Lengel}"
		, q"{Lent}", q"{Lenthe}", q"{Leons}", q"{Lerop}", q"{Lethe}", q"{Lettele}", q"{Leuke}", q"{Leunen}"
		, q"{Leur}", q"{Leusden}", q"{Leutes}", q"{Leuth}", q"{Leuven}", q"{Leuvenum}", q"{Leveroy}", q"{Lexmond}"
		, q"{Lhee}", q"{Lichtaard}", q"{Lichtmis}", q"{Liefkens}", q"{Liempde}", q"{Lienden}", q"{Lier}"
		, q"{Lieren}", q"{Lierop}", q"{Lies}", q"{Lievelde}", q"{Lieving}", q"{Lijnden}", q"{Limbricht}"
		, q"{Limmen}", q"{Linde}", q"{Lingsfort}", q"{Lintelo}", q"{Lintvelde}", q"{Lioessens}", q"{Lippen}"
		, q"{Lith}", q"{Lithoijen}", q"{Lobith}", q"{Loc}", q"{Locht}", q"{Loenen}", q"{Loer}", q"{Loete}"
		, q"{Logt}", q"{Loil}", q"{Lollum}", q"{Lomm}", q"{Lonneker}", q"{Loo}", q"{Loobrink}", q"{Loofaert}"
		, q"{Looi}", q"{Looien}", q"{Look}", q"{Loon}", q"{Loons}", q"{Loonse}", q"{Looveer}", q"{Loppersum}"
		, q"{Lovendaal}", q"{Loveren}", q"{Loënga}", q"{Lubbinge}", q"{Luchen}", q"{Luchten}", q"{Luissel}"
		, q"{Luitert}", q"{Lula}", q"{Lunen}", q"{Lunteren}", q"{Lunters}", q"{Lutjegast}", q"{Lutjerijp}"
		, q"{Lutke}", q"{Lutkepost}", q"{Lutten}", q"{Lutter}", q"{Lytse}", q"{Lytshuzen}", q"{Maagd}"
		, q"{Maaijkant}", q"{Maalb}", q"{Maaldrift}", q"{Maalstede}", q"{Maar}", q"{Maarn}", q"{Maars}"
		, q"{Maarssen}", q"{Maasband}", q"{Maasbree}", q"{Maaskant}", q"{Maat}", q"{Maatsehei}", q"{Macharen}"
		, q"{Made}", q"{Magele}", q"{Magrette}", q"{Makkum}", q"{Mal}", q"{Malden}", q"{Mallem}", q"{Mamelis}"
		, q"{Manen}", q"{Mantgum}", q"{Mantinge}", q"{Maren}", q"{Maria}", q"{Maris}", q"{Mark}", q"{Markvelde}"
		, q"{Marle}", q"{Marrum}", q"{Mars}", q"{Marssum}", q"{Marsum}", q"{Martens}", q"{Marum}", q"{Mataram}"
		, q"{Maten}", q"{Mathijs}", q"{Maurik}", q"{Maxet}", q"{Medemblik}", q"{Medevoort}", q"{Medler}"
		, q"{Meed}", q"{Meeden}", q"{Meele}", q"{Meemortel}", q"{Meene}", q"{Meer}", q"{Meeren}", q"{Meern}"
		, q"{Meerten}", q"{Meerven}", q"{Meerwijck}", q"{Megelsum}", q"{Megen}", q"{Meije}", q"{Meijel}"
		, q"{Melick}", q"{Melis}", q"{Melissant}", q"{Menaldum}", q"{Mensinge}", q"{Menzel}", q"{Meppen}"
		, q"{Merkel}", q"{Merm}", q"{Merselo}", q"{Merum}", q"{Mesch}", q"{Meteren}", q"{Metsla}", q"{Midbuul}"
		, q"{Midde}", q"{Middel}", q"{Middelijk}", q"{Midden}", q"{Middenhof}", q"{Midlaren}", q"{Midlum}"
		, q"{Mids}", q"{Midwolde}", q"{Miedum}", q"{Mildert}", q"{Milheeze}", q"{Mill}", q"{Mils}", q"{Milschot}"
		, q"{Minkeloos}", q"{Mispel}", q"{Moddergat}", q"{Moer}", q"{Moeren}", q"{Moerslag}", q"{Moespot}"
		, q"{Molembaix}", q"{Molenbaan}", q"{Molenbelt}", q"{Molengat}", q"{Molenhof}", q"{Molenperk}"
		, q"{Molenrij}", q"{Molenstad}", q"{Molkwar}", q"{Monster}", q"{Montfort}", q"{Mook}", q"{Moord}"
		, q"{Moorsel}", q"{Morige}", q"{Morra}", q"{Mortel}", q"{Mosbulten}", q"{Mosik}", q"{Moskou}", q"{Mosse}"
		, q"{Mossel}", q"{Most}", q"{Muggenhol}", q"{Muis}", q"{Muizenhol}", q"{Mulderij}", q"{Mullegen}"
		, q"{Munneke}", q"{Munnekens}", q"{Munniken}", q"{Munte}", q"{Murns}", q"{Mussel}", q"{Mûnein}"
		, q"{Naarder}", q"{Nabbegat}", q"{Nagel}", q"{Nansum}", q"{Napels}", q"{Natten}", q"{Neder}", q"{Nederbiel}"
		, q"{Neer}", q"{Neerijnen}", q"{Neeritter}", q"{Neerloon}", q"{Neerst}", q"{Negen}", q"{Nekke}"
		, q"{Nergena}", q"{Nia}", q"{Nie}", q"{Niebert}", q"{Niehove}", q"{Nier}", q"{Niersen}", q"{Niesoord}"
		, q"{Nieuw}", q"{Nieuwaal}", q"{Nieuwe}", q"{Nieuwer}", q"{Nieuwklap}", q"{Nieuwkoop}", q"{Nieuwolda}"
		, q"{Nieuwstad}", q"{Niftrik}", q"{Nijega}", q"{Nijehaske}", q"{Nijesyl}", q"{Nijken}", q"{Nijkerker}"
		, q"{Nijlân}", q"{Nijmegen}", q"{Nijnsel}", q"{Nijrees}", q"{Nijstad}", q"{Nijve}", q"{Nispense}"
		, q"{Noardein}", q"{Noenes}", q"{Nolde}", q"{Noord}", q"{Noorden}", q"{Noorder}", q"{Noordhorn}"
		, q"{Noordink}", q"{Noordkant}", q"{Noordse}", q"{Notendaal}", q"{Notsel}", q"{Noukoop}", q"{Nuenen}"
		, q"{Nuijen}", q"{Nuil}", q"{Nuis}", q"{Nunhem}", q"{Nunspeet}", q"{Nuth}", q"{Obbicht}", q"{Ock}"
		, q"{Oegst}", q"{Oekel}", q"{Oeken}", q"{Oele}", q"{Oensel}", q"{Oentsjerk}", q"{Oerle}", q"{Oete}"
		, q"{Oever}", q"{Offinga}", q"{Ofwegen}", q"{Ohé;}", q"{Oijen}", q"{Oirlo}", q"{Oirs}", q"{Okswerd}"
		, q"{Olde}", q"{Oldehove}", q"{Oldemarkt}", q"{Olden}", q"{Oldeneel}", q"{Oldenhave}", q"{Oldeouwer}"
		, q"{Oldörp}", q"{Olen}", q"{Oler}", q"{Oling}", q"{Olterterp}", q"{Ommel}", q"{Ommen}", q"{Ommeren}"
		, q"{Onder}", q"{Onna}", q"{Onsenoort}", q"{Onstwedde}", q"{Ooij}", q"{Ooijen}", q"{Oost}", q"{Oostappen}"
		, q"{Ooste}", q"{Ooster}", q"{Oosterend}", q"{Oosterens}", q"{Oosterhof}", q"{Oosterik}", q"{Oosternie}"
		, q"{Oosternij}", q"{Oosterse}", q"{Oosterzee}", q"{Oosthem}", q"{Oostindië}", q"{Oostrum}"
		, q"{Oostum}", q"{Oostwold}", q"{Oostzaan}", q"{Op}", q"{Opende}", q"{Ophemert}", q"{Ophuis}", q"{Opijnen}"
		, q"{Opmeeden}", q"{Opper}", q"{Opperdoes}", q"{Opperduit}", q"{Opwetten}", q"{Opwierde}", q"{Oranje}"
		, q"{Orvelte}", q"{Osen}", q"{Oshaar}", q"{Ospel}", q"{Ossen}", q"{Ossenisse}", q"{Ostaaijen}"
		, q"{Osterbos}", q"{Othene}", q"{Otterlo}", q"{Ottersum}", q"{Ou}", q"{OuBildt}", q"{Oude}", q"{Oudega}"
		, q"{Oudehaske}", q"{Oudehorne}", q"{Ouden}", q"{Oudenrijn}", q"{Ouder}", q"{Oudeschip}", q"{Oudleusen}"
		, q"{Oukoop}", q"{OuLeede}", q"{OuLeije}", q"{OuPolder}", q"{OuSchouw}", q"{OuStaten}", q"{OuStee}"
		, q"{OuStoof}", q"{OuStrumpt}", q"{OuWaranda}", q"{Ouwer}", q"{OuWillem}", q"{Ouwster}", q"{Oventje}"
		, q"{Over}", q"{Overa}", q"{Overakker}", q"{Overbiel}", q"{Overeys}", q"{Overgeul}", q"{Overheek}"
		, q"{Overschot}", q"{Overval}", q"{Overwater}", q"{Paal}", q"{Paarde}", q"{Paarlo}", q"{Paauwen}"
		, q"{Paddepoel}", q"{Padhuis}", q"{Paesens}", q"{Palestina}", q"{Pallert}", q"{Pandgat}", q"{Panheel}"
		, q"{Pann}", q"{Pannerden}", q"{Papen}", q"{Papenveer}", q"{Park}", q"{Parrega}", q"{Partij}", q"{Pasop}"
		, q"{Patrijzen}", q"{Peebos}", q"{Peelkant}", q"{Peij}", q"{Peizerweg}", q"{Pelikaan}", q"{Pepinus}"
		, q"{Pernis}", q"{Pers}", q"{Pesaken}", q"{Peters}", q"{Petten}", q"{Piaam}", q"{Pieperij}", q"{Piepert}"
		, q"{Piershil}", q"{Pieter}", q"{Pikesyl}", q"{Piksen}", q"{Pingjum}", q"{Pinkeveer}", q"{Pitteperk}"
		, q"{Plaat}", q"{Plaats}", q"{Plak}", q"{Plantage}", q"{Plas}", q"{Plat}", q"{Plein}", q"{Poffert}"
		, q"{Polen}", q"{Polle}", q"{Pollen}", q"{Ponte}", q"{Poonhaven}", q"{Poppen}", q"{Posterenk}"
		, q"{Posthoorn}", q"{Pot}", q"{Praets}", q"{Prickart}", q"{Puiflijk}", q"{Punt}", q"{Purmer}", q"{Purmerend}"
		, q"{Puth}", q"{Putse}", q"{Putten}", q"{Putters}", q"{Pyramide}", q"{Raai}", q"{Raak}", q"{Raam}"
		, q"{Raar}", q"{Raard}", q"{Raayen}", q"{Raerd}", q"{Rakens}", q"{Rakt}", q"{Rand}", q"{Rande}", q"{Randen}"
		, q"{Ranum}", q"{Raren}", q"{Rasquert}", q"{Ratte}", q"{Ravensgat}", q"{Reahûs}", q"{Rechteren}"
		, q"{Rectum}", q"{Reduzum}", q"{Reeth}", q"{Reidswal}", q"{Reitsum}", q"{Remswerd}", q"{Renesse}"
		, q"{Renkum}", q"{Renneborg}", q"{Rens}", q"{Respel}", q"{Ressen}", q"{Reters}", q"{Reth}", q"{Reuth}"
		, q"{Reutje}", q"{Reuzen}", q"{Rewert}", q"{Rhaan}", q"{Rheder}", q"{Rhee}", q"{Rhenoy}", q"{Rhoon}"
		, q"{Ridder}", q"{Riel}", q"{Rien}", q"{Riet}", q"{Rietven}", q"{Rijckholt}", q"{Rijen}", q"{Rijke}"
		, q"{Rijkel}", q"{Rijker}", q"{Rijlst}", q"{Rijnsater}", q"{Rijsb}", q"{Rijsoord}", q"{Rijt}", q"{Rijtjes}"
		, q"{Ril}", q"{Rimpelt}", q"{Rink}", q"{Rips}", q"{Rith}", q"{Ritsuma}", q"{Roeke}", q"{Roekel}", q"{Roelage}"
		, q"{Roels}", q"{Roermond}", q"{Roeven}", q"{Roggel}", q"{Rohel}", q"{Rolaf}", q"{Roligt}", q"{Rollecate}"
		, q"{Rolpaal}", q"{Rome}", q"{Rond}", q"{Ronduite}", q"{Rood}", q"{Roodehaan}", q"{Rooden}", q"{Roond}"
		, q"{Roosteren}", q"{Rooth}", q"{Ropta}", q"{Roskam}", q"{Rothem}", q"{Rott}", q"{Rotte}", q"{Rotter}"
		, q"{Rotting}", q"{Rottum}", q"{Rozendaal}", q"{Rucphen}", q"{Ruif}", q"{Ruigen}", q"{Ruigezand}"
		, q"{Ruimel}", q"{Ruinen}", q"{Ruischer}", q"{Ruiten}", q"{Rukven}", q"{Rullen}", q"{Rumpt}", q"{Rund}"
		, q"{Rusven}", q"{Rut}", q"{Ryptsjerk}", q"{Rytseterp}", q"{Saaksum}", q"{Saaxum}", q"{Salverd}"
		, q"{Sandebuur}", q"{Santfort}", q"{Santpoort}", q"{Sasput}", q"{Sauwerd}", q"{Schaa}", q"{Schaaphok}"
		, q"{Schaaps}", q"{Schadron}", q"{Schafelt}", q"{Schaft}", q"{Schagen}", q"{Schager}", q"{Schandelo}"
		, q"{Schans}", q"{Schapers}", q"{Scharen}", q"{Scharne}", q"{Scharster}", q"{Schatkuil}", q"{Schaveren}"
		, q"{Scheemder}", q"{Schelf}", q"{Schellach}", q"{Schelm}", q"{Schettens}", q"{Schey}", q"{Schieven}"
		, q"{Schijf}", q"{Schijndel}", q"{Schillers}", q"{Schimmert}", q"{Schin}", q"{Schinnen}", q"{Schippers}"
		, q"{School}", q"{Schoon}", q"{Schoonen}", q"{Schoor}", q"{Schoorl}", q"{Schoot}", q"{Schore}"
		, q"{Schoter}", q"{Schotters}", q"{Schouw}", q"{Schouwen}", q"{Schouwer}", q"{Schraard}", q"{Schrap}"
		, q"{Schuilen}", q"{Schuring}", q"{Schuwacht}", q"{Sebalde}", q"{Seerijp}", q"{Sell}", q"{Selmien}"
		, q"{Selwerd}", q"{Seroos}", q"{Seters}", q"{Sibbe}", q"{Siberië}", q"{Siegers}", q"{Simpel}"
		, q"{Sinouts}", q"{Sinsel}", q"{Sint}", q"{Sion}", q"{Sittard}", q"{Sjunga}", q"{Skarl}", q"{Skillaerd}"
		, q"{Skou}", q"{Skrins}", q"{Skyldum}", q"{Slee}", q"{Sleen}", q"{Slegge}", q"{Slek}", q"{Slichten}"
		, q"{Sliffert}", q"{Slijkwell}", q"{Slikken}", q"{Sloot}", q"{Sluis}", q"{Smakt}", q"{Smal}", q"{Smalle}"
		, q"{Smeerling}", q"{Smelbrêge}", q"{Smele}", q"{Smilde}", q"{Smits}", q"{Sneek}", q"{Sneiders}"
		, q"{Snelle}", q"{Sneps}", q"{Snikzwaag}", q"{Snipperij}", q"{Snoden}", q"{Soeter}", q"{Solwerd}"
		, q"{Someren}", q"{Sopsum}", q"{Spaanrijt}", q"{Spaanse}", q"{Spaken}", q"{Spannen}", q"{Spannum}"
		, q"{Spears}", q"{Spek}", q"{Spekklef}", q"{Spekt}", q"{Speuld}", q"{Speurgt}", q"{Spier}", q"{Spijk}"
		, q"{Spik}", q"{Spits}", q"{Spoolde}", q"{Spoor}", q"{Sprang}", q"{Sprundel}", q"{Spurkt}", q"{Stad}"
		, q"{Stadterij}", q"{Starten}", q"{Stations}", q"{Staverden}", q"{Stedum}", q"{Steeg}", q"{Steegh}"
		, q"{Steel}", q"{Steen}", q"{Steenkamp}", q"{Steenoven}", q"{Steenpaal}", q"{Steensel}", q"{Steenvak}"
		, q"{Stegen}", q"{Steger}", q"{Stegeren}", q"{Stein}", q"{Sterken}", q"{Sterre}", q"{Steurgat}"
		, q"{Stevens}", q"{Stevert}", q"{Stiem}", q"{Stiens}", q"{Stitswerd}", q"{Stobben}", q"{Stokhem}"
		, q"{Stokkelen}", q"{Stokkum}", q"{Stokske}", q"{Stokt}", q"{Stolpen}", q"{Stomme}", q"{Stoof}"
		, q"{Stork}", q"{Stouten}", q"{Stox}", q"{Strand}", q"{Straten}", q"{Strateris}", q"{Streek}", q"{Strepen}"
		, q"{Streukel}", q"{Strij}", q"{Strijen}", q"{Strijp}", q"{Stroet}", q"{Stroo}", q"{Stroopuit}"
		, q"{Strubben}", q"{Strucht}", q"{Strype}", q"{Stuw}", q"{Sumar}", q"{Sumarre}", q"{Surhuizum}"
		, q"{Susteren}", q"{Suttum}", q"{Suwâld}", q"{Swaenwert}", q"{Swalmen}", q"{Sweik}", q"{Syt}"
		, q"{Sânfurd}", q"{Taarlo}", q"{Teeffelen}", q"{Teije}", q"{Teijl}", q"{Telgt}", q"{Tempel}", q"{Ter}"
		, q"{Terband}", q"{Terblijt}", q"{Terdiek}", q"{Tereyken}", q"{Tergêft}", q"{Terhagen}", q"{Terheijl}"
		, q"{Terherne}", q"{Terkaple}", q"{Terlet}", q"{Terlinden}", q"{Termaar}", q"{Termoors}", q"{Termunten}"
		, q"{Termunter}", q"{Ternaard}", q"{Teroele}", q"{Terover}", q"{Tersoal}", q"{Tervaten}", q"{Tervoorst}"
		, q"{Tervoort}", q"{Terwispel}", q"{Terwolde}", q"{Terziet}", q"{Teuge}", q"{Theetuin}", q"{Themaat}"
		, q"{Tholen}", q"{Thull}", q"{Thuserhof}", q"{Tibma}", q"{Tiel}", q"{Tielse}", q"{Tiggelt}", q"{Tijnje}"
		, q"{Tike}", q"{Til}", q"{Timmer}", q"{Tippe}", q"{Tjaard}", q"{Tjams}", q"{Tjerkwerd}", q"{Tjoene}"
		, q"{Tolbert}", q"{Tolkamer}", q"{Tommel}", q"{Tongeren}", q"{Tongerlo}", q"{Tonsel}", q"{Toom}"
		, q"{Toornwerd}", q"{Top}", q"{Toren}", q"{Toterfout}", q"{Toven}", q"{Tragel}", q"{Tranendal}"
		, q"{Trege}", q"{Trent}", q"{Tricht}", q"{Triemen}", q"{Trimpert}", q"{Trintelen}", q"{Tritzum}"
		, q"{Tronde}", q"{Trophorne}", q"{Trutjes}", q"{Tuil}", q"{Tull}", q"{Tungelroy}", q"{Turns}", q"{Tusschen}"
		, q"{Tuut}", q"{Tuuthees}", q"{Twee}", q"{Tweedeweg}", q"{TweeTol}", q"{Twekkelo}", q"{Twello}"
		, q"{Twijzel}", q"{Twijzeler}", q"{Twisk}", q"{Tynaarlo}", q"{Tytsjerk}", q"{Ubach}", q"{Ubbena}"
		, q"{Ubber}", q"{Uddel}", q"{Uffelsen}", q"{Uffelte}", q"{Uit}", q"{Uiter}", q"{Uithoorn}", q"{Uitwierde}"
		, q"{Ulfter}", q"{Ulicoten}", q"{Ulrum}", q"{Ulsda}", q"{Ulvend}", q"{Unga}", q"{Uppel}", q"{Usquert}"
		, q"{Usselo}", q"{Vaals}", q"{Vaar}", q"{Vaarle}", q"{Vaart}", q"{Vaesrade}", q"{Valk}", q"{Valken}"
		, q"{Valom}", q"{Valsteeg}", q"{Varik}", q"{Varsen}", q"{Varssel}", q"{Vebenabos}", q"{Vecht}"
		, q"{Veecaten}", q"{Veele}", q"{Veeler}", q"{Veen}", q"{Veenhof}", q"{Veenhoop}", q"{Veenhuis}"
		, q"{Veere}", q"{Veessen}", q"{Veghel}", q"{Veld}", q"{Veldbraak}", q"{Velde}", q"{Velden}", q"{Veldhuis}"
		, q"{Veldzicht}", q"{Velp}", q"{Velsen}", q"{Veluwe}", q"{Vemde}", q"{Ven}", q"{Venbe}", q"{Vene}"
		, q"{Venekoten}", q"{Venlo}", q"{Venne}", q"{Venray}", q"{Venweg}", q"{Vergelt}", q"{Verloren}"
		, q"{Vessem}", q"{Vestjens}", q"{Vet}", q"{Vetterik}", q"{Veulen}", q"{Vianen}", q"{Viel}", q"{Vier}"
		, q"{Vierhuis}", q"{Vijcie}", q"{Vijf}", q"{Vilgert}", q"{Vilsteren}", q"{Vilt}", q"{Vink}", q"{Vinkel}"
		, q"{Vinken}", q"{Vinkepas}", q"{Vis}", q"{Visschers}", q"{Vissers}", q"{Vlaas}", q"{Vlake}", q"{Vlas}"
		, q"{Vledder}", q"{Vleet}", q"{Vleuten}", q"{Vlie}", q"{Vliegert}", q"{Vlieghuis}", q"{Vlijmen}"
		, q"{Vliss}", q"{Vlist}", q"{Vlodrop}", q"{Vloei}", q"{Vloet}", q"{Vlootkant}", q"{Vogelfort}"
		, q"{Volthe}", q"{Voor}", q"{Voorne}", q"{Voorrijp}", q"{Voorst}", q"{Voorstad}", q"{Voorste}"
		, q"{Voorster}", q"{Voort}", q"{Voortje}", q"{Voorweg}", q"{Vorchten}", q"{Vorst}", q"{Vorsten}"
		, q"{Voske}", q"{Voskuil}", q"{Vosse}", q"{Vossebelt}", q"{Vosselen}", q"{Vossen}", q"{Voulwames}"
		, q"{Vrachelen}", q"{Vragender}", q"{Vredepeel}", q"{Vree}", q"{Vries}", q"{Vriezen}", q"{Vrij}"
		, q"{Vrijhoeve}", q"{Vrilk}", q"{Vroe}", q"{Vroelen}", q"{Vuile}", q"{Vuilpan}", q"{Vuren}", q"{Waaksens}"
		, q"{Waal}", q"{Waar}", q"{Waard}", q"{Waarde}", q"{Waarden}", q"{Waarder}", q"{Waatskamp}", q"{Wachtum}"
		, q"{Waddinx}", q"{Wadway}", q"{Wadwerd}", q"{Wagen}", q"{Waije}", q"{Walder}", q"{Walik}", q"{Walsert}"
		, q"{Wammert}", q"{Wanneper}", q"{Wanroij}", q"{Wapen}", q"{Wapse}", q"{Wapser}", q"{Warf}", q"{Warffum}"
		, q"{Warfster}", q"{Warmen}", q"{Warmond}", q"{Warnia}", q"{Warstiens}", q"{Warten}", q"{Waspik}"
		, q"{Water}", q"{Wateren}", q"{Waterkant}", q"{Waterop}", q"{Waterval}", q"{Waver}", q"{Weakens}"
		, q"{Wedde}", q"{Wedder}", q"{Wee}", q"{Weeg}", q"{Weende}", q"{Weerd}", q"{Weerdinge}", q"{Weere}"
		, q"{Weert}", q"{Weerwille}", q"{Wehe}", q"{Wehl}", q"{Weidum}", q"{Weij}", q"{Weijer}", q"{Weijpoort}"
		, q"{Weilens}", q"{Weimeren}", q"{Weipoort}", q"{Weite}", q"{Weitemans}", q"{Weiwerd}", q"{Wekerom}"
		, q"{Wele}", q"{Wells}", q"{Welsum}", q"{Wely}", q"{Wenum}", q"{Weper}", q"{Wercheren}", q"{Weren}"
		, q"{Wergea}", q"{Werk}", q"{Wernhouts}", q"{Wesch}", q"{Wessing}", q"{Wessinge}", q"{West}", q"{Westeneng}"
		, q"{Wester}", q"{Westerein}", q"{Westerlee}", q"{Westernie}", q"{Westerse}", q"{Westhim}", q"{Westlaren}"
		, q"{Westmaas}", q"{Westrik}", q"{Wetering}", q"{Wetsens}", q"{Weurt}", q"{Wevers}", q"{Weverslo}"
		, q"{Wezel}", q"{Wezep}", q"{Wezup}", q"{Wezuper}", q"{Wielder}", q"{Wieler}", q"{Wielse}", q"{Wiene}"
		, q"{Wierren}", q"{Wierum}", q"{Wiesel}", q"{Wieuwens}", q"{Wijchen}", q"{Wijnaldum}", q"{Wijnb}"
		, q"{Wijnje}", q"{Wijster}", q"{Wijthmen}", q"{Wijzend}", q"{Wilderhof}", q"{Wildert}", q"{Wilgen}"
		, q"{Wilp}", q"{Wils}", q"{Wilsum}", q"{Winde}", q"{Windraak}", q"{Winkel}", q"{Winkels}", q"{Winssen}"
		, q"{Winsum}", q"{Wintelre}", q"{Winthagen}", q"{Wirdum}", q"{Wisse}", q"{Wissel}", q"{Wissen}"
		, q"{Witharen}", q"{Withuis}", q"{Witman}", q"{Witmarsum}", q"{Witrijt}", q"{Witte}", q"{Wittelte}"
		, q"{Witten}", q"{Wiuwert}", q"{Wjelsryp}", q"{Woerd}", q"{Woerdense}", q"{Woezik}", q"{Wognum}"
		, q"{Wolfers}", q"{Wolfhaag}", q"{Wolfhagen}", q"{Wolfheze}", q"{Wolfs}", q"{Wolfshuis}", q"{Wolling}"
		, q"{Wolsum}", q"{Wommels}", q"{Wonne}", q"{Wons}", q"{Woord}", q"{Wopereis}", q"{Wordragen}", q"{Wormer}"
		, q"{Worsum}", q"{Woubrugge}", q"{Wouwse}", q"{Wulpenbek}", q"{Wyns}", q"{Wytgaard}", q"{Wâldsein}"
		, q"{Wânswert}", q"{Yerseke}", q"{Yndyk}", q"{Zaamslag}", q"{Zaarvlaas}", q"{Zalk}", q"{Zand}"
		, q"{Zande}", q"{Zandfort}", q"{Zandkant}", q"{Zandoerle}", q"{Zandplaat}", q"{Zandpol}", q"{Zandput}"
		, q"{Zandvoort}", q"{Zee}", q"{Zeegat}", q"{Zeegse}", q"{Zeerijp}", q"{Zeesse}", q"{Zegge}", q"{Zeijen}"
		, q"{Zeijer}", q"{Zeist}", q"{Zelder}", q"{Zelen}", q"{Zelt}", q"{Zenderen}", q"{Zethuis}", q"{Zeven}"
		, q"{Zevenhuis}", q"{Zierikzee}", q"{Zieuwent}", q"{Zijder}", q"{Zijdewind}", q"{Zijp}", q"{Zijper}"
		, q"{Zijtaart}", q"{Zilven}", q"{Zinkweg}", q"{Zittard}", q"{Zoeke}", q"{Zoelen}", q"{Zoelmond}"
		, q"{Zoerte}", q"{Zoeter}", q"{Zoggel}", q"{Zomerven}", q"{Zond}", q"{Zorgvlied}", q"{Zoutkamp}"
		, q"{Zuid}", q"{Zuider}", q"{Zuidhorn}", q"{Zuidlaren}", q"{Zuidwolde}", q"{Zuidzande}", q"{Zuidzijde}"
		, q"{Zuilichem}", q"{Zundert}", q"{Zurich}", q"{Zutphen}", q"{Zuuk}", q"{Zwaag}", q"{Zwager}", q"{Zwanegat}"
		, q"{Zwart}", q"{Zwarte}", q"{Zweek}", q"{Zwiggelte}", q"{Zwijn}", q"{Zwinderen}", q"{Zwolle}" ];

		return choice(strs, this.rnd);
	}

	override string locationCitySuffix() {
		const string[] strs =
		[ q"{ aan de IJssel}", q"{ aan de Rijn}", q"{ambacht}", q"{beek}", q"{berg}", q"{bergen}", q"{bosch}"
		, q"{broek}", q"{brug}", q"{buren}", q"{burg}", q"{buurt}", q"{dam}", q"{dijk}", q"{dijke}", q"{donk}"
		, q"{dorp}", q"{eind}", q"{enmaes}", q"{gat}", q"{geest}", q"{heide}", q"{hoek}", q"{horst}", q"{hout}"
		, q"{hoven}", q"{huizen}", q"{ingen}", q"{kerk}", q"{laar}", q"{land}", q"{meer}", q"{recht}", q"{schoten}"
		, q"{sluis}", q"{stroom}", q"{swaerd}", q"{veen}", q"{veld}", q"{vliet}", q"{weer}", q"{wier}", q"{wijk}"
		, q"{woud}", q"{woude}", q"{zijl}", q"{}" ];

		return choice(strs, this.rnd);
	}

	override string locationCountry() {
		const string[] strs =
		[ q"{Afghanistan}", q"{Akrotiri}", q"{Albanië}", q"{Algerije}", q"{Amerikaanse Maagdeneilanden}"
		, q"{Amerikaans-Samoa}", q"{Andorra}", q"{Angola}", q"{Anguilla}", q"{Antarctica}", q"{Antigua en Barbuda}"
		, q"{Argentinië}", q"{Armenië}", q"{Aruba}", q"{Ashmore and Cartier Islands}", q"{Atlantic Ocean}"
		, q"{Australië}", q"{Azerbeidzjan}", q"{Bahama's}", q"{Bahrein}", q"{Bangladesh}", q"{Barbados}"
		, q"{Belarus}", q"{België}", q"{Belize}", q"{Benin}", q"{Bermuda}", q"{Bhutan}", q"{Bolivië}"
		, q"{Bosnië-Herzegovina}", q"{Botswana}", q"{Bouvet Island}", q"{Brazilië}", q"{British Indian Ocean Territory}"
		, q"{Britse Maagdeneilanden}", q"{Brunei}", q"{Bulgarije}", q"{Burkina Faso}", q"{Burundi}"
		, q"{Cambodja}", q"{Canada}", q"{Caymaneilanden}", q"{Centraal-Afrikaanse Republiek}"
		, q"{Chili}", q"{China}", q"{Christmas Island}", q"{Clipperton Island}", q"{Cocos (Keeling) Islands}"
		, q"{Colombia}", q"{Comoren (Unie)}", q"{Congo (Democratische Republiek)}", q"{Congo (Volksrepubliek)}"
		, q"{Cook}", q"{Coral Sea Islands}", q"{Costa Rica}", q"{Cuba}", q"{Cyprus}", q"{Denemarken}"
		, q"{Dhekelia}", q"{Djibouti}", q"{Dominica}", q"{Dominicaanse Republiek}", q"{Duitsland}"
		, q"{Ecuador}", q"{Egypte}", q"{El Salvador}", q"{Equatoriaal-Guinea}", q"{Eritrea}", q"{Estland}"
		, q"{Ethiopië}", q"{European Union}", q"{Falkland}", q"{Faroe Islands}", q"{Fiji}", q"{Filipijnen}"
		, q"{Finland}", q"{Frankrijk}", q"{Frans-Polynesië}", q"{Gabon}", q"{Gambia}", q"{Gaza Strip}"
		, q"{Georgië}", q"{Ghana}", q"{Gibraltar}", q"{Grenada}", q"{Griekenland}", q"{Groenland}"
		, q"{Guam}", q"{Guatemala}", q"{Guernsey}", q"{Guinea}", q"{Guinee-Bissau}", q"{Guyana}", q"{Haïti}"
		, q"{Heard Island and McDonald Islands}", q"{Vaticaanstad}", q"{Honduras}", q"{Hongarije}"
		, q"{Hongkong}", q"{Ierland}", q"{IJsland}", q"{India}", q"{Indonesië}", q"{Irak}", q"{Iran}"
		, q"{Isle of Man}", q"{Israël}", q"{Italië}", q"{Ivoorkust}", q"{Jamaica}", q"{Jan Mayen}"
		, q"{Japan}", q"{Jemen}", q"{Jersey}", q"{Jordanië}", q"{Kaapverdië}", q"{Kameroen}", q"{Kazachstan}"
		, q"{Kenia}", q"{Kirgizstan}", q"{Kiribati}", q"{Koeweit}", q"{Kroatië}", q"{Laos}", q"{Lesotho}"
		, q"{Letland}", q"{Libanon}", q"{Liberia}", q"{Libië}", q"{Liechtenstein}", q"{Litouwen}", q"{Luxemburg}"
		, q"{Macao}", q"{Macedonië}", q"{Madagaskar}", q"{Malawi}", q"{Maldiven}", q"{Maleisië}", q"{Mali}"
		, q"{Malta}", q"{Marokko}", q"{Marshall Islands}", q"{Mauritanië}", q"{Mauritius}", q"{Mayotte}"
		, q"{Mexico}", q"{Micronesië}", q"{Moldavië}", q"{Monaco}", q"{Mongolië}", q"{Montenegro}"
		, q"{Montserrat}", q"{Mozambique}", q"{Myanmar}", q"{Namibië}", q"{Nauru}", q"{Navassa Island}"
		, q"{Nederland}", q"{St. Maarten}", q"{Curacao}", q"{Nepal}", q"{Ngwane}", q"{Nicaragua}", q"{Nieuw-Caledonië}"
		, q"{Nieuw-Zeeland}", q"{Niger}", q"{Nigeria}", q"{Niue}", q"{Noordelijke Marianen}", q"{Noord-Korea}"
		, q"{Noorwegen}", q"{Norfolk Island}", q"{Oekraïne}", q"{Oezbekistan}", q"{Oman}", q"{Oostenrijk}"
		, q"{Pakistan}", q"{Palau}", q"{Panama}", q"{Papoea-Nieuw-Guinea}", q"{Paracel Islands}"
		, q"{Paraguay}", q"{Peru}", q"{Pitcairn}", q"{Polen}", q"{Portugal}", q"{Puerto Rico}", q"{Qatar}"
		, q"{Roemenië}", q"{Rusland}", q"{Rwanda}", q"{Saint Helena}", q"{Saint Lucia}", q"{Saint Vincent en de Grenadines}"
		, q"{Saint-Pierre en Miquelon}", q"{Salomon}", q"{Samoa}", q"{San Marino}", q"{São Tomé en Principe}"
		, q"{Saudi-Arabië}", q"{Senegal}", q"{Servië}", q"{Seychellen}", q"{Sierra Leone}", q"{Singapore}"
		, q"{Sint-Kitts en Nevis}", q"{Slovenië}", q"{Slowakije}", q"{Soedan}", q"{Somalië}", q"{South Georgia and the South Sandwich Islands}"
		, q"{Southern Ocean}", q"{Spanje}", q"{Spratly Islands}", q"{Sri Lanka}", q"{Suriname}", q"{Svalbard}"
		, q"{Syrië}", q"{Tadzjikistan}", q"{Taiwan}", q"{Tanzania}", q"{Thailand}", q"{Timor Leste}"
		, q"{Togo}", q"{Tokelau}", q"{Tonga}", q"{Trinidad en Tobago}", q"{Tsjaad}", q"{Tsjechië}"
		, q"{Tunesië}", q"{Turkije}", q"{Turkmenistan}", q"{Turks-en Caicoseilanden}", q"{Tuvalu}"
		, q"{Uganda}", q"{Uruguay}", q"{Vanuatu}", q"{Venezuela}", q"{Verenigd Koninkrijk}", q"{Verenigde Arabische Emiraten}"
		, q"{Verenigde Staten van Amerika}", q"{Vietnam}", q"{Wake Island}", q"{Wallis en Futuna}"
		, q"{Wereld}", q"{West Bank}", q"{Westelijke Sahara}", q"{Zambia}", q"{Zimbabwe}", q"{Zuid-Afrika}"
		, q"{Zuid-Korea}", q"{Zweden}", q"{Zwitserland}" ];

		return choice(strs, this.rnd);
	}

	override string locationDefaultCountry() {
		const string[] strs =
		[ q"{Nederland}" ];

		return choice(strs, this.rnd);
	}

	override string locationPostcode() {
		const string[] strs =
		[ q"{1### ??}", q"{2### ??}", q"{3### ??}", q"{4### ??}", q"{5### ??}", q"{6### ??}", q"{7### ??}"
		, q"{8### ??}", q"{9### ??}" ];

		return numberBuild(choice(strs, this.rnd));
	}

	override string locationSecondaryAddress() {
		const string[] strs =
		[ q"{1 hoog}", q"{2 hoog}", q"{3 hoog}", q"{3 hoog achter}" ];

		return numberBuild(choice(strs, this.rnd));
	}

	override string locationState() {
		const string[] strs =
		[ q"{Drenthe}", q"{Flevoland}", q"{Friesland}", q"{Gelderland}", q"{Groningen}", q"{Limburg}"
		, q"{Noord-Brabant}", q"{Noord-Holland}", q"{Overijssel}", q"{Utrecht}", q"{Zeeland}", q"{Zuid-Holland}" ];

		return choice(strs, this.rnd);
	}

	override string locationStateAbbr() {
		const string[] strs =
		[ q"{DR}", q"{FL}", q"{FR}", q"{GE}", q"{GR}", q"{LI}", q"{NB}", q"{NH}", q"{OV}", q"{UT}", q"{ZE}", q"{ZH}" ];

		return choice(strs, this.rnd);
	}

	override string locationStreetAddress() {
		const LocationStreetAddressEnum[] enums = [ LocationStreetAddressEnum.normal, LocationStreetAddressEnum.full ];
		return locationStreetAddress(choice(enums, this.rnd));
	}

	override string locationStreetAddress(LocationStreetAddressEnum which) {
		final switch(which) {
			case LocationStreetAddressEnum.normal: return locationStreet() ~ " " ~ locationBuildingNumber();
			case LocationStreetAddressEnum.full: return locationStreet() ~ " " ~ locationBuildingNumber() ~ " " ~ locationSecondaryAddress();
		}
		return "";
	}

	override string locationStreetPattern() {
		final switch(uniform(0, 2, this.rnd)) {
			case 0: return personFirstName() ~ locationStreetSuffix();
			case 1: return personLastName() ~ locationStreetSuffix();
		}
		return "";
	}

	override string locationStreetSuffix() {
		const string[] strs =
		[ q"{straat}", q"{laan}", q"{weg}", q"{plantsoen}", q"{park}", q"{gracht}", q"{dijk}" ];

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
		[ q"{Yarah}", q"{Vere}", q"{Siënna}", q"{Sanna}", q"{Salomë}", q"{Roxy}", q"{Nela}", q"{Myra}", q"{Liene}"
		, q"{Lia}", q"{Kayleigh}", q"{Kaylee}", q"{Kato}", q"{Florence}", q"{Eefje}", q"{Dieke}", q"{Zeyneb}"
		, q"{Wende}", q"{Vienna}", q"{Melisa}", q"{Maaike}", q"{Lova}", q"{Lilian}", q"{Juno}", q"{Joanna}"
		, q"{Jesslyn}", q"{Jaelynn}", q"{Gioia}", q"{Claire}", q"{Alma}", q"{Aliya}", q"{Alisa}", q"{Zofia}"
		, q"{Vivian}", q"{Nowi}", q"{Noami}", q"{Milana}", q"{Marlie}", q"{Macy}", q"{Maan}", q"{Lorena}"
		, q"{Liselotte}", q"{Lien}", q"{Laure}", q"{Laila}", q"{Kim}", q"{Khadija}", q"{Joya}", q"{Jacoba}"
		, q"{Gigi}", q"{Wilhelmina}", q"{Vivienne}", q"{Rose}", q"{Rana}", q"{Milly}", q"{Michelle}", q"{Marrit}"
		, q"{Malou}", q"{Jaimy}", q"{Gaia}", q"{Fayen}", q"{Fabiënne}", q"{Eveline}", q"{Daisy}", q"{Babette}"
		, q"{Aaltje}", q"{Scottie}", q"{Nomi}", q"{Mathilde}", q"{Linne}", q"{Laurie}", q"{Kyara}", q"{Jalou}"
		, q"{Iva}", q"{Inara}", q"{Grace}", q"{Emmy}", q"{Elle}", q"{Diana}", q"{Céline}", q"{Selena}", q"{Safiya}"
		, q"{Quinty}", q"{Oliwia}", q"{Nadine}", q"{Meghan}", q"{Marwa}", q"{Jada}", q"{Ines}", q"{Fardau}"
		, q"{Eliana}", q"{Carmen}", q"{Ayana}", q"{Asya}", q"{Annabel}", q"{Amara}", q"{Alexandra}", q"{Rachel}"
		, q"{Melissa}", q"{Melina}", q"{Luus}", q"{Jayda}", q"{Jacky}", q"{Eleonora}", q"{Asiya}", q"{Annemijn}"
		, q"{Sare}", q"{Ninthe}", q"{Nena}", q"{Melody}", q"{Kira}", q"{Jasmine}", q"{Imani}", q"{Hira}", q"{Elynn}"
		, q"{Dominique}", q"{Ashley}", q"{Aleyna}", q"{Pola}", q"{Noë}", q"{Lisanne}", q"{Lilou}", q"{Kiara}"
		, q"{Jette}", q"{Jess}", q"{Isabeau}", q"{Floortje}", q"{Fiep}", q"{Fieke}", q"{Femm}", q"{Famke}"
		, q"{Chelsey}", q"{Amelie}", q"{Vanessa}", q"{Skye}", q"{Sienna}", q"{Safa}", q"{Lydia}", q"{Esma}"
		, q"{Daantje}", q"{Catharina}", q"{Carlijn}", q"{Asel}", q"{Amaya}", q"{Amalia}", q"{Ada}", q"{Zahra}"
		, q"{Tirza}", q"{Nikkie}", q"{Mirre}", q"{Mayra}", q"{Lenne}", q"{Jule}", q"{Jana}", q"{Farah}", q"{Defne}"
		, q"{Ariana}", q"{Yenthe}", q"{Renske}", q"{Medina}", q"{Liliana}", q"{Kenza}", q"{Jazz}", q"{Esra}"
		, q"{Emilie}", q"{Dua}", q"{Chloe}", q"{Abby}", q"{Selma}", q"{Maren}", q"{Jolijn}", q"{Febe}", q"{Elodie}"
		, q"{Djenna}", q"{Diede}", q"{Cataleya}", q"{Aliyah}", q"{Aisha}", q"{Teddy}", q"{Nika}", q"{Myla}"
		, q"{Izzy}", q"{Dewi}", q"{Mirte}", q"{Mikki}", q"{Kensi}", q"{Karlijn}", q"{Jazzlynn}", q"{Imke}"
		, q"{Eleanor}", q"{Wies}", q"{Thirza}", q"{Safae}", q"{Meyra}", q"{Lune}", q"{Jazzlyn}", q"{Faya}"
		, q"{Arya}", q"{Nadia}", q"{Puk}", q"{Oumayra}", q"{Lois}", q"{Josefien}", q"{Vive}", q"{Fayenne}"
		, q"{Celine}", q"{Nynke}", q"{Loes}", q"{Danique}", q"{Aurora}", q"{Angelina}", q"{Alya}", q"{Abigail}"
		, q"{Tara}", q"{Quinn}", q"{Meike}", q"{Maartje}", q"{Jolien}", q"{Selina}", q"{Phileine}", q"{Miley}"
		, q"{Lexie}", q"{Florine}", q"{Coco}", q"{Britt}", q"{Alyssa}", q"{Yasmine}", q"{Sammie}", q"{Nila}"
		, q"{Lucie}", q"{Eef}", q"{Bella}", q"{Aylin}", q"{Ziva}", q"{Neeltje}", q"{Jesslynn}", q"{Jente}"
		, q"{Jara}", q"{Bobbie}", q"{Yinthe}", q"{Megan}", q"{Freya}", q"{Donna}", q"{Alice}", q"{Milena}"
		, q"{Joëlle}", q"{Jenna}", q"{Evelien}", q"{Nisa}", q"{Lott}", q"{Loa}", q"{Daphne}", q"{Dani}", q"{Maysa}"
		, q"{Hidaya}", q"{Hayley}", q"{Gwen}", q"{Esther}", q"{Elize}", q"{Dana}", q"{Maxime}", q"{Madelief}"
		, q"{Keet}", q"{Jip}", q"{Ize}", q"{Noëlla}", q"{Layla}", q"{Hendrika}", q"{Hafsa}", q"{Giulia}"
		, q"{Eliza}", q"{Bowie}", q"{Marly}", q"{Linn}", q"{Jane}", q"{Filou}", q"{Zuzanna}", q"{Leyla}", q"{Fatima}"
		, q"{Evie}", q"{Marley}", q"{Kyra}", q"{Hanne}", q"{Jailey}", q"{Ise}", q"{Adriana}", q"{Liza}", q"{Doris}"
		, q"{Dina}", q"{Amina}", q"{Mina}", q"{Aaliyah}", q"{Romee}", q"{Pippa}", q"{Juliette}", q"{Alicia}"
		, q"{Merle}", q"{Lea}", q"{Elina}", q"{Sena}", q"{Flore}", q"{Riley}", q"{Nour}", q"{Lizz}", q"{Jessie}"
		, q"{Cornelia}", q"{Beau}", q"{Valerie}", q"{Silke}", q"{Valentina}", q"{Loua}", q"{Vieve}", q"{Vesper}"
		, q"{Ruby}", q"{Nienke}", q"{Jula}", q"{Azra}", q"{Myrthe}", q"{Soof}", q"{Juliëtte}", q"{Lexi}"
		, q"{Davina}", q"{Liya}", q"{Yasmin}", q"{Esmée}", q"{Amelia}", q"{Niene}", q"{Mette}", q"{Ela}"
		, q"{Aimée}", q"{Joy}", q"{Ilse}", q"{Zeynep}", q"{Yfke}", q"{Elizabeth}", q"{Mare}", q"{Isra}", q"{Helena}"
		, q"{Stella}", q"{Jinthe}", q"{Meryem}", q"{Janna}", q"{Isabelle}", q"{Maja}", q"{Lieve}", q"{Yuna}"
		, q"{Pien}", q"{Faye}", q"{Pleun}", q"{Noortje}", q"{Janne}", q"{Novi}", q"{Ava}", q"{Sterre}", q"{Maeve}"
		, q"{Elisabeth}", q"{Bibi}", q"{Ayla}", q"{Liyana}", q"{Mae}", q"{Leah}", q"{Marie}", q"{Juna}", q"{Lucy}"
		, q"{Josephine}", q"{Victoria}", q"{Indy}", q"{Maryam}", q"{Jaylinn}", q"{Zoey}", q"{Rosie}", q"{Mira}"
		, q"{Nore}", q"{Jinte}", q"{Zara}", q"{Bente}", q"{Senna}", q"{Pip}", q"{Alina}", q"{Féline}", q"{Aya}"
		, q"{Anouk}", q"{Amélie}", q"{Lou}", q"{Nine}", q"{Jet}", q"{Robin}", q"{Nikki}", q"{June}", q"{Fem}"
		, q"{Demi}", q"{Mirthe}", q"{Lana}", q"{Noëlle}", q"{Lise}", q"{Lilly}", q"{Jackie}", q"{Benthe}"
		, q"{Bobbi}", q"{Fiene}", q"{Elisa}", q"{Maya}", q"{Jade}", q"{Emilia}", q"{Elif}", q"{Romy}", q"{Lot}"
		, q"{Jolie}", q"{Guusje}", q"{Mara}", q"{Kate}", q"{Marit}", q"{Nola}", q"{Louise}", q"{Lola}", q"{Laura}"
		, q"{Iris}", q"{Philou}", q"{Tessa}", q"{Inaya}", q"{Elise}", q"{Eline}", q"{Sam}", q"{Evy}", q"{Johanna}"
		, q"{Femke}", q"{Charlie}", q"{Livia}", q"{Rosalie}", q"{Suus}", q"{Sanne}", q"{Fay}", q"{Fenne}"
		, q"{Linde}", q"{Isabel}", q"{Puck}", q"{Lize}", q"{Rosa}", q"{Amira}", q"{Lily}", q"{Naomi}", q"{Lizzy}"
		, q"{Liva}", q"{Juul}", q"{Jill}", q"{Hanna}", q"{Floor}", q"{Amber}", q"{Suze}", q"{Veerle}", q"{Merel}"
		, q"{Anne}", q"{Cato}", q"{Charlotte}", q"{Kiki}", q"{Lena}", q"{Ivy}", q"{Feline}", q"{Jasmijn}"
		, q"{Liz}", q"{Elena}", q"{Maria}", q"{Norah}", q"{Lara}", q"{Fien}", q"{Isabella}", q"{Luna}", q"{Amy}"
		, q"{Sophia}", q"{Hailey}", q"{Bo}", q"{Vera}", q"{Julie}", q"{Lisa}", q"{Esmee}", q"{Noa}", q"{Ella}"
		, q"{Lina}", q"{Mia}", q"{Sofia}", q"{Loïs}", q"{Hannah}", q"{Roos}", q"{Emily}", q"{Isa}", q"{Fenna}"
		, q"{Elin}", q"{Fleur}", q"{Lynn}", q"{Sarah}", q"{Nova}", q"{Nina}", q"{Maud}", q"{Sofie}", q"{Milou}"
		, q"{Lauren}", q"{Lotte}", q"{Eva}", q"{Noor}", q"{Liv}", q"{Yara}", q"{Olivia}", q"{Lieke}", q"{Nora}"
		, q"{Saar}", q"{Evi}", q"{Anna}", q"{Sara}", q"{Tess}", q"{Julia}", q"{Zoë}", q"{Sophie}", q"{Mila}"
		, q"{Emma}" ];

		return choice(strs, this.rnd);
	}

	override string personFemalePrefix() {
		const string[] strs =
		[ q"{Mevr.}", q"{Bsc}", q"{Msc}", q"{Prof.}", q"{Ir.}", q"{Drs.}", q"{Dr.}" ];

		return choice(strs, this.rnd);
	}

	override string personFirstName() {
		const string[] strs =
		[ q"{Amber}", q"{Anna}", q"{Anne}", q"{Anouk}", q"{Bas}", q"{Bram}", q"{Britt}", q"{Daan}", q"{Emma}", q"{Eva}"
		, q"{Femke}", q"{Finn}", q"{Fleur}", q"{Iris}", q"{Isa}", q"{Jan}", q"{Jasper}", q"{Jayden}", q"{Jesse}"
		, q"{Johannes}", q"{Julia}", q"{Julian}", q"{Kevin}", q"{Lars}", q"{Lieke}", q"{Lisa}", q"{Lotte}"
		, q"{Lucas}", q"{Luuk}", q"{Maud}", q"{Max}", q"{Mike}", q"{Milan}", q"{Nick}", q"{Niels}", q"{Noa}"
		, q"{Rick}", q"{Roos}", q"{Ruben}", q"{Sander}", q"{Sanne}", q"{Sem}", q"{Sophie}", q"{Stijn}", q"{Sven}"
		, q"{Thijs}", q"{Thomas}", q"{Tim}", q"{Tom}" ];

		return choice(strs, this.rnd);
	}

	override string personLastName() {
		const string[] strs =
		[ q"{Aalbers}", q"{Bakker}", q"{Bijl}", q"{Blom}", q"{Boer}", q"{Bos}", q"{Bosch}", q"{Bosman}", q"{Brouwer}"
		, q"{Cornelissen}", q"{Corsten}", q"{de Boer}", q"{de Bruijn}", q"{de Bruyn}", q"{de Corte}"
		, q"{de Graaf}", q"{de Groot}", q"{de Haan}", q"{de Jong}", q"{de Jonge}", q"{de Koning}", q"{de Lange}"
		, q"{de Leeuw}", q"{de Nijs}", q"{de Ruiter}", q"{de Vos}", q"{de Vries}", q"{de Wit}", q"{Dekker}"
		, q"{den Adel}", q"{Dijkstra}", q"{Driessen}", q"{Evers}", q"{Freriks}", q"{Gerritsen}", q"{Groen}"
		, q"{Groothuizen}", q"{Hartman}", q"{Hazes}", q"{Hendriks}", q"{Hermans}", q"{Hofman}", q"{Huisman}"
		, q"{Jacobs}", q"{Jansen}", q"{Janssen}", q"{Jonker}", q"{Klein}", q"{Kok}", q"{Koning}", q"{Kramer}"
		, q"{Kuijpers}", q"{Kuiper}", q"{Kuypers}", q"{Lubbers}", q"{Maas}", q"{Martens}", q"{Meeuwis}"
		, q"{Meijer}", q"{Meyer}", q"{Mol}", q"{Molenaar}", q"{Moors}", q"{Mulder}", q"{Nijland}", q"{Oosterhuis}"
		, q"{Peeters}", q"{Poels}", q"{Post}", q"{Postma}", q"{Prinsen}", q"{Rietman}", q"{Ritsma}", q"{Sanders}"
		, q"{Schipper}", q"{Scholten}", q"{Smeets}", q"{Terlouw}", q"{Timmermans}", q"{van Beek}", q"{van Dam}"
		, q"{van de Berg}", q"{van de Brink}", q"{van de Meer}", q"{van de Pol}", q"{van de Veen}"
		, q"{van de Velden}", q"{van de Ven}", q"{van de Wal}", q"{van den Berg}", q"{van den Bosch}"
		, q"{van den Broek}", q"{van den Heuvel}", q"{van den Pol}", q"{van den Velde}", q"{van der Berg}"
		, q"{van der Heijden}", q"{van der Heyden}", q"{van der Horst}", q"{van der Laan}", q"{van der Linden}"
		, q"{van der Meer}", q"{van der Meulen}", q"{van der Pol}", q"{van der Velde}", q"{van der Velden}"
		, q"{van der Ven}", q"{van der Wal}", q"{van Dijk}", q"{van Dongen}", q"{van Doorn}", q"{van Ginneken}"
		, q"{van Iersel}", q"{van Leeuwen}", q"{van Loon}", q"{van Veen}", q"{van Vliet}", q"{van Wijk}"
		, q"{Veenstra}", q"{Verbeek}", q"{Verhoeven}", q"{Vermeulen}", q"{Vink}", q"{Visser}", q"{Vos}"
		, q"{Wagenaar}", q"{Willems}", q"{Willemsen}", q"{Wolters}", q"{Zijlstra}", q"{Zuiderveld}" ];

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
		[ q"{Tymon}", q"{Steven}", q"{Semih}", q"{Seff}", q"{Sabir}", q"{Nico}", q"{Naoufal}", q"{Nadir}", q"{Mirza}"
		, q"{Miguel}", q"{Manoah}", q"{Kenji}", q"{Kenan}", q"{Joseph}", q"{Jordy}", q"{Jeppe}", q"{Diego}"
		, q"{Coen}", q"{Can}", q"{Bentley}", q"{Yasin}", q"{Tomas}", q"{Sjoerd}", q"{Savi}", q"{Safouane}"
		, q"{Raphaël}", q"{Mas}", q"{Maes}", q"{Louie}", q"{Karam}", q"{John}", q"{Jelmer}", q"{Jayvano}"
		, q"{Hein}", q"{Giel}", q"{Emin}", q"{Deen}", q"{Badr}", q"{Arda}", q"{Umut}", q"{Teunis}", q"{Silas}"
		, q"{Rayen}", q"{Nikodem}", q"{Mex}", q"{Marius}", q"{Kayden}", q"{Jidde}", q"{Glenn}", q"{Frederik}"
		, q"{Foss}", q"{Finnley}", q"{Ensar}", q"{Duco}", q"{Dies}", q"{Brenn}", q"{Yousef}", q"{Siep}", q"{Rohan}"
		, q"{Osman}", q"{Nox}", q"{Natan}", q"{Mathijs}", q"{Marley}", q"{Jaxon}", q"{Jairo}", q"{Jaimy}"
		, q"{Eray}", q"{Don}", q"{Chase}", q"{Bruno}", q"{Brian}", q"{Anton}", q"{Xander}", q"{Senne}", q"{Reza}"
		, q"{Oliwier}", q"{Mitch}", q"{Krijn}", q"{Jorrit}", q"{Jimi}", q"{Dominik}", q"{Devin}", q"{Tobin}"
		, q"{Stefan}", q"{Jakob}", q"{Igor}", q"{Giovanni}", q"{Dylano}", q"{Armin}", q"{Adrian}", q"{Youp}"
		, q"{Sebas}", q"{Sander}", q"{Robert}", q"{Nils}", q"{Mozes}", q"{Micah}", q"{Menno}", q"{Jaylano}"
		, q"{Ilias}", q"{Freek}", q"{Flip}", q"{Dion}", q"{Christopher}", q"{Ahmet}", q"{Yassir}", q"{Yannick}"
		, q"{Valentino}", q"{Samuël}", q"{Noam}", q"{Mylan}", q"{Kenzo}", q"{Jona}", q"{Danilo}", q"{Bowie}"
		, q"{Zain}", q"{Wolf}", q"{Thije}", q"{Theo}", q"{Mylo}", q"{Matz}", q"{Lieuwe}", q"{Joes}", q"{Jacobus}"
		, q"{Idris}", q"{Gideon}", q"{Bruce}", q"{Abdullah}", q"{Zef}", q"{Viktor}", q"{Seb}", q"{Rover}"
		, q"{Raphael}", q"{Kacper}", q"{Josh}", q"{Jeremiah}", q"{Deniz}", q"{Aleksander}", q"{Zev}", q"{Yves}"
		, q"{Viggo}", q"{Naoufel}", q"{Matthew}", q"{Keano}", q"{Jaylen}", q"{Bo}", q"{Bjorn}", q"{Anouar}"
		, q"{Abraham}", q"{Storm}", q"{Martin}", q"{Manu}", q"{Jefta}", q"{Djayden}", q"{Benyamin}", q"{Benja}"
		, q"{Ahmad}", q"{Nino}", q"{Malik}", q"{Junayd}", q"{Isa}", q"{Finley}", q"{Ayman}", q"{Zeyd}", q"{Yassine}"
		, q"{Sev}", q"{Rico}", q"{Mels}", q"{Maximilian}", q"{Leendert}", q"{Kick}", q"{Enzo}", q"{Sjors}"
		, q"{Silvan}", q"{Peter}", q"{Otto}", q"{Milano}", q"{Marijn}", q"{Javi}", q"{Yahya}", q"{Wes}", q"{Toon}"
		, q"{Tommy}", q"{Loet}", q"{Leonardo}", q"{Len}", q"{Kaan}", q"{Dax}", q"{Davy}", q"{Adriaan}", q"{Thiago}"
		, q"{Mustafa}", q"{Merijn}", q"{Kerem}", q"{Johan}", q"{Isaiah}", q"{Bryan}", q"{Bastiaan}", q"{Axel}"
		, q"{Toby}", q"{Thom}", q"{Noan}", q"{Marcus}", q"{Ismail}", q"{Davi}", q"{Bodi}", q"{Tieme}", q"{Ole}"
		, q"{Nout}", q"{Musa}", q"{Moussa}", q"{Luciano}", q"{Liyam}", q"{Kyano}", q"{Dorian}", q"{Bradley}"
		, q"{Wouter}", q"{Siebe}", q"{Ralph}", q"{Quin}", q"{Fender}", q"{Arie}", q"{Albert}", q"{Zion}", q"{Wessel}"
		, q"{Rick}", q"{Miles}", q"{Mahir}", q"{Mads}", q"{Klaas}", q"{Flynn}", q"{Dexx}", q"{Anthony}", q"{Tristan}"
		, q"{Mink}", q"{Mehmet}", q"{Maas}", q"{Lyam}", q"{Jorn}", q"{Joost}", q"{Christian}", q"{Alparslan}"
		, q"{Tyler}", q"{Maher}", q"{Jakub}", q"{Alan}", q"{William}", q"{Rafaël}", q"{Jur}", q"{Jimmy}"
		, q"{George}", q"{Christiaan}", q"{Brandon}", q"{Ace}", q"{Tibbe}", q"{Sebastian}", q"{Lorenzo}"
		, q"{Bilal}", q"{Teije}", q"{Joe}", q"{Michael}", q"{Louay}", q"{Lou}", q"{Levy}", q"{Kevin}", q"{Isaac}"
		, q"{Ilay}", q"{Harvey}", q"{Davey}", q"{Younes}", q"{Xem}", q"{Tycho}", q"{Seppe}", q"{Riv}", q"{Marinus}"
		, q"{Maarten}", q"{Ayoub}", q"{Ahmed}", q"{Tuur}", q"{Tijmen}", q"{Kjeld}", q"{Fynn}", q"{Frenkie}"
		, q"{Dante}", q"{Ayaz}", q"{Abe}", q"{Jackson}", q"{Bart}", q"{Xavier}", q"{Ted}", q"{Sebastiaan}"
		, q"{Safouan}", q"{Midas}", q"{Gabriël}", q"{Fos}", q"{Douwe}", q"{Boet}", q"{Berend}", q"{Yassin}"
		, q"{Rowan}", q"{Revi}", q"{Maurits}", q"{Marcel}", q"{Ivo}", q"{Eli}", q"{Shane}", q"{Rein}", q"{Muhammad}"
		, q"{Lennox}", q"{Ivar}", q"{Huub}", q"{Tijs}", q"{Matthias}", q"{Juda}", q"{Dave}", q"{Antoni}", q"{Damin}"
		, q"{Colin}", q"{Zakaria}", q"{Vincent}", q"{Sverre}", q"{Mik}", q"{Lennon}", q"{Donny}", q"{Thijn}"
		, q"{Novan}", q"{Mart}", q"{Bob}", q"{Senna}", q"{Olaf}", q"{Mohammad}", q"{Julan}", q"{Riff}", q"{Jaivey}"
		, q"{Collin}", q"{Nouri}", q"{Noël}", q"{Ferre}", q"{Mert}", q"{Boas}", q"{Sten}", q"{Gabriel}", q"{Pelle}"
		, q"{Mark}", q"{Leo}", q"{Rafael}", q"{Oskar}", q"{Naud}", q"{Aras}", q"{Sami}", q"{Kasper}", q"{Jop}"
		, q"{Ethan}", q"{Dirk}", q"{Bodhi}", q"{Eden}", q"{Bobby}", q"{Jordan}", q"{Ivan}", q"{Vinz}", q"{Twan}"
		, q"{Odin}", q"{Manuel}", q"{Jesper}", q"{Scott}", q"{Raff}", q"{Luke}", q"{Brent}", q"{Zayd}", q"{Sil}"
		, q"{Miran}", q"{Charlie}", q"{Amin}", q"{Valentijn}", q"{Eymen}", q"{Jules}", q"{Kees}", q"{Jayce}"
		, q"{Matteo}", q"{Chris}", q"{Quinten}", q"{Mateo}", q"{Lux}", q"{Justin}", q"{Joey}", q"{Jay}", q"{Ayden}"
		, q"{Laurens}", q"{Luka}", q"{Joah}", q"{Gerrit}", q"{Evan}", q"{Ben}", q"{Jari}", q"{Mika}", q"{Kian}"
		, q"{Ian}", q"{Ilyas}", q"{Jort}", q"{Mike}", q"{Maxim}", q"{Ibrahim}", q"{Vigo}", q"{Victor}", q"{Louis}"
		, q"{Jayson}", q"{Florian}", q"{Youssef}", q"{Vic}", q"{Raf}", q"{Filip}", q"{Yusuf}", q"{Timo}", q"{Vik}"
		, q"{Micha}", q"{Matthijs}", q"{Lasse}", q"{Faas}", q"{Riley}", q"{Mace}", q"{Daniel}", q"{Jamie}"
		, q"{Fabian}", q"{Nick}", q"{Muhammed}", q"{Luc}", q"{Imran}", q"{Joël}", q"{Niels}", q"{Philip}"
		, q"{Milo}", q"{Lewis}", q"{Wout}", q"{Leon}", q"{Joas}", q"{Jasper}", q"{Seth}", q"{Omar}", q"{Koen}"
		, q"{Julius}", q"{Beau}", q"{Rens}", q"{Mayson}", q"{Kay}", q"{Hamza}", q"{Daley}", q"{Robin}", q"{Nolan}"
		, q"{Cornelis}", q"{Bas}", q"{Lukas}", q"{Jonathan}", q"{Jonas}", q"{Ali}", q"{Ravi}", q"{Hendrik}"
		, q"{Sef}", q"{Lex}", q"{Thijmen}", q"{Damian}", q"{Arthur}", q"{Aron}", q"{Emir}", q"{Jonah}", q"{Jelte}"
		, q"{Melle}", q"{Jacob}", q"{Alex}", q"{Jim}", q"{Elijah}", q"{Stef}", q"{Kaj}", q"{Johannes}", q"{Jelle}"
		, q"{Joris}", q"{Jip}", q"{Aaron}", q"{Loek}", q"{Logan}", q"{Lev}", q"{Dylan}", q"{Simon}", q"{Kyan}"
		, q"{Sep}", q"{Moos}", q"{Felix}", q"{Job}", q"{Elias}", q"{Ezra}", q"{Oscar}", q"{Casper}", q"{Duuk}"
		, q"{Sepp}", q"{Pieter}", q"{Rayan}", q"{Aiden}", q"{Joshua}", q"{Dean}", q"{Niek}", q"{Lenn}", q"{Tygo}"
		, q"{Jake}", q"{Stan}", q"{Kai}", q"{Roan}", q"{Mick}", q"{Mohammed}", q"{Dani}", q"{Nathan}", q"{Oliver}"
		, q"{Alexander}", q"{Mohamed}", q"{Hidde}", q"{Samuel}", q"{Zayn}", q"{Amir}", q"{Xavi}", q"{Jurre}"
		, q"{Boris}", q"{Senn}", q"{Jason}", q"{Pepijn}", q"{Quinn}", q"{Pim}", q"{Jace}", q"{Jax}", q"{Tijn}"
		, q"{Tim}", q"{Willem}", q"{Jaxx}", q"{Otis}", q"{Fedde}", q"{Tom}", q"{Owen}", q"{Ryan}", q"{Tobias}"
		, q"{Floris}", q"{Abel}", q"{Jayden}", q"{Sven}", q"{Morris}", q"{Cas}", q"{Ties}", q"{Daniël}", q"{Joep}"
		, q"{Jan}", q"{Jens}", q"{Vince}", q"{Dex}", q"{Ruben}", q"{Olivier}", q"{Guus}", q"{Thijs}", q"{Stijn}"
		, q"{Jack}", q"{David}", q"{Teun}", q"{Hugo}", q"{Mats}", q"{Gijs}", q"{Lars}", q"{Luca}", q"{Siem}"
		, q"{Mason}", q"{Julian}", q"{Boaz}", q"{Benjamin}", q"{Thomas}", q"{Max}", q"{Adam}", q"{Jesse}"
		, q"{Mees}", q"{Sam}", q"{Noud}", q"{Bram}", q"{Luuk}", q"{Milan}", q"{James}", q"{Liam}", q"{Finn}"
		, q"{Sem}", q"{Levi}", q"{Lucas}", q"{Daan}", q"{Noah}" ];

		return choice(strs, this.rnd);
	}

	override string personMalePrefix() {
		const string[] strs =
		[ q"{Dhr.}", q"{Bsc}", q"{Msc}", q"{Prof.}", q"{Ir.}", q"{Drs.}", q"{Dr.}" ];

		return choice(strs, this.rnd);
	}

	override string personName() {
		const int rndInt = uniform(0, 10, this.rnd);

		if(rndInt >= 0 && rndInt < 1) {
			return personPrefix() ~ " " ~ personFirstName() ~ " " ~ personLastName();
		}
		if(rndInt >= 1 && rndInt < 2) {
			return personFirstName() ~ " " ~ personLastName() ~ " " ~ personSuffix();
		}
		if(rndInt >= 2 && rndInt < 10) {
			return personFirstName() ~ " " ~ personLastName();
		}

		return "";
	}

	override string personPrefix() {
		const string[] strs =
		[ q"{Bsc}", q"{Dhr.}", q"{Dr.}", q"{Drs.}", q"{Ir.}", q"{Mevr.}", q"{Msc}", q"{Prof.}" ];

		return choice(strs, this.rnd);
	}

	override string personSuffix() {
		const string[] strs =
		[ q"{Jr.}", q"{Sr.}" ];

		return choice(strs, this.rnd);
	}

	override string phoneNumberFormats() {
		const string[] strs =
		[ q"{(0###) ######}", q"{06 #### ####}", q"{0#########}", q"{06########}", q"{+31#########}"
		, q"{+316########}" ];

		return numberBuild(choice(strs, this.rnd));
	}

}

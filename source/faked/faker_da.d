module faked.faker_da;

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

class Faker_da : Faker_en {
@safe:
	this(int seed) {
		super(seed);
	}

	override string commerceProductDescription() {
		const string[] strs =
		[ q"{Apollotech B340 er en prisbillig trådløs mus med pålidelig forbindelse, 12 måneders batterilevetid og moderne design}"
		, q"{Bilens design består af aerodynamiske linjer og moderne detaljer, der kombinerer stilfuld æstetik med effektiv brændstoføkonomi}", q"{Bogen "Eventyrets Veje" er en medrivende roman, der væver magi og virkelighed sammen i en tankevækkende fortælling, som appellerer til læsere på tværs af aldre}"
		, q"{Denne klassiske og tidløse ring er en perfekt tilføjelse til enhver smykkesamling og kan bæres til enhver lejlighed}", q"{Denne smukke og elegante halskæde er designet med en enkelt, glitrende diamant, der er indkapslet i en klassisk 18 karat guldfatning}"
		, q"{Det slanke og enkle Maple Gaming Keyboard byder på responsiv mekanisk feedback, RGB-belysning og en robust konstruktion, der sikrer en optimal spiloplevelse}", q"{Dobbeltsengen er konstrueret med robust træramme og en blød, støttende madras, der sikrer en behagelig nattesøvn, og dens elegante design passer perfekt ind i ethvert moderne soveværelse}"
		, q"{Ergonomisk ledersæde polstret med luksuriøs hukommelsesskum giver optimal støtte og komfort gennem hele arbejdsdagen}", q"{Fodbolden er designet til professionel spil med dens holdbare materialer, optimal vægtfordeling og præcise syninger, der sikrer en ensartet ydeevne på alle typer spilleflader}"
		, q"{Målmandshandskerne er udstyret med en skridsikker polstring og fleksibel pasform, der giver en exceptionel greb og bevægelsesfrihed, hvilket gør dem til et uundværligt redskab for enhver seriøs målmand}", q"{Nagasaki Lander er en motorcykel designet med en kraftfuld motor, slanke linjer og avancerede sikkerhedsfunktioner, der tilbyder en spændende og samtidig sikker køreoplevelse}"
		, q"{Ny ABC 13 tommer bærbar computer leverer imponerende ydeevne med sin nyeste generation processor, højopløselig skærm og slankt, letvægtsdesign, ideel til både arbejde og underholdning}", q"{Ny kollektion af formelle skjorter er designet med dig i tankerne. Med pasform og styling, der vil få dig til at skille dig ud}"
		, q"{Osten Gamle Morten er kendt for sin skarpe og markante smag, en rig tekstur, og dens unikke modningsproces, der gør den til et yndet valg blandt feinschmeckere og ostekendere}", q"{Papirflyet er et simpelt og fascinerende legetøj, der kombinerer let tilgængelige materialer med aerodynamiske principper, og som kan bringe timevis af kreativ underholdning for børn og voksne}"
		, q"{Perfumen er sammensat af en unik blanding af blomster-, citrus- og trænoter, der resulterer i en sofistikeret og forførende duft, som appellerer til både daglig brug og specielle lejligheder}", q"{Sejlbåden Molly er en smukt håndbygget fartøj, udstyret med avancerede navigationsinstrumenter og et rummeligt dæk, der kombinerer klassisk elegance med moderne bekvemmeligheder for en uforglemmelig sejladsoplevelse}"
		, q"{Skarp er en køkkenkniv fremstillet af høj-kvalitets stål, designet med en ergonomisk håndtag og præcisions-slebet blad, der garanterer en uovertruffen skæreoplevelse i madlavningen}", q"{Super Sandaler er behagelige og stilfulde fodtøj, designet med en polstret sål og justerbare stropper, der passer til enhver fodform og giver ultimativ komfort gennem hele dagen}" ];

		return choice(strs, this.rnd);
	}

	override string commerceProductNameAdjective() {
		const string[] strs =
		[ q"{Elegant}", q"{Elektronisk}", q"{Ergonomisk}", q"{Fantastisk}", q"{Forfinet}", q"{Genbrugt}"
		, q"{Generisk}", q"{Hjemmelavet}", q"{Håndlavet}", q"{Intelligent}", q"{Licenseret}", q"{Lille}"
		, q"{Luksuriøs}", q"{Lækker}", q"{Moderne}", q"{Orientalsk}", q"{Praktisk}", q"{Primitiv}"
		, q"{Skræddersyet}", q"{Slank}", q"{Smuk}", q"{Ubranded}", q"{Utrolig}" ];

		return choice(strs, this.rnd);
	}

	override string commerceProductNameMaterial() {
		const string[] strs =
		[ q"{Beton}", q"{Blød}", q"{Bomuld}", q"{Bronze}", q"{Fersk}", q"{Frossen}", q"{Granit}", q"{Gummi}"
		, q"{Metal}", q"{Plastik}", q"{Stål}", q"{Træ}" ];

		return choice(strs, this.rnd);
	}

	override string commerceProductNameProduct() {
		const string[] strs =
		[ q"{Bacon}", q"{Bil}", q"{Bold}", q"{Bord}", q"{Computer}", q"{Cykel}", q"{Fisk}", q"{Handske}", q"{Hat}"
		, q"{Håndklæde}", q"{Kylling}", q"{Lysestage}", q"{Mus}", q"{Ost}", q"{Pizza}", q"{Pølse}", q"{Salat}"
		, q"{Skjorte}", q"{Sko}", q"{Slips}", q"{Stol}", q"{Sæbe}", q"{Tastatur}", q"{Tun}" ];

		return choice(strs, this.rnd);
	}

	override string commerceDepartment() {
		const string[] strs =
		[ q"{Baby}", q"{Bil}", q"{Bolig}", q"{Bøger}", q"{Dagligvarer}", q"{Elektronik}", q"{Film}", q"{Fritid}"
		, q"{Have}", q"{Hvidevarer}", q"{Legetøj}", q"{Musik}", q"{Personlig pleje}", q"{Sko}", q"{Smykker}"
		, q"{Spil}", q"{Sport}", q"{Sundhed}", q"{Tasker}", q"{Tøj}", q"{Værktøj}" ];

		return choice(strs, this.rnd);
	}

	override string companyAdjective() {
		const string[] strs =
		[ q"{Adaptiv}", q"{Alsidig}", q"{Automatiseret}", q"{Avanceret}", q"{Balanceret}", q"{Brugercentreret}"
		, q"{Brugervenlig}", q"{Centraliseret}", q"{Cross-platform}", q"{Decentraliseret}", q"{Delbar}"
		, q"{Digitaliseret}", q"{Distribueret}", q"{Eksklusiv}", q"{Ergonomisk}", q"{Face-to-face}"
		, q"{Fokuseret}", q"{Forbedret}", q"{Forebyggende}", q"{Forretningsfokuseret}", q"{Forstærket}"
		, q"{Fremtidssikret}", q"{Fundamental}", q"{Horisontal}", q"{Implementeret}", q"{Innovativ}"
		, q"{Integreret}", q"{Intuitiv}", q"{Klonet}", q"{Kompatibel}", q"{Konfigurerbar}", q"{Kundefokuseret}"
		, q"{Kvalitetsfokuseret}", q"{Multi-kanal}", q"{Multilateral}", q"{Nedskaleret}", q"{Netværket}"
		, q"{Objektbaseret}", q"{Obligatorisk}", q"{Open-source}", q"{Operativ}", q"{Opgraderbar}"
		, q"{Opjusteret}", q"{Optimeret}", q"{Organiseret}", q"{Organisk}", q"{Overvåget}", q"{Proaktiv}"
		, q"{Profitfokuseret}", q"{Programmerbar}", q"{Progressiv}", q"{Re-kontekstualiseret}"
		, q"{Reaktiv}", q"{Reduceret}", q"{Robust}", q"{Selvaktiverende}", q"{Selvstændig}", q"{Sikret}"
		, q"{Strømlinet}", q"{Styret}", q"{Synergetisk}", q"{Synkroniseret}", q"{Sømløs}", q"{Teamorienteret}"
		, q"{Total}", q"{Udskiftelig}", q"{Udvidet}", q"{Universal}", q"{Valgfri}", q"{Vedvarende}"
		, q"{Virksomhedsomspændende}", q"{Virtuel}", q"{Visionær}", q"{Åben arkitektur}" ];

		return choice(strs, this.rnd);
	}

	override string companyBuzzAdjective() {
		const string[] strs =
		[ q"{24/365}", q"{24/7}", q"{allestedsnærværende}", q"{B2B}", q"{B2C}", q"{back-end}", q"{bedst-i-klassen}"
		, q"{brugercentrerede}", q"{cutting-edge}", q"{detaljerede}", q"{distribuerede}", q"{dynamiske}"
		, q"{effektfulde}", q"{effektive}", q"{en-til-en}", q"{end-to-end}", q"{enterprise}", q"{fremtidsorienterede}"
		, q"{front-end}", q"{førende}", q"{globale}", q"{gnidningsfri}", q"{helhedsorienterede}"
		, q"{innovative}", q"{integrerede}", q"{interaktive}", q"{intuitive}", q"{krydsplatforme}"
		, q"{magnetiske}", q"{mission-kritiske}", q"{nøglefærdige}", q"{open-source}", q"{out-of-the-box}"
		, q"{plug-and-play}", q"{proaktive}", q"{real-time}", q"{revolutionerende}", q"{robuste}"
		, q"{samarbejdende}", q"{skalerbare}", q"{strategiske}", q"{synergistiske}", q"{sømløse}"
		, q"{tilpassede}", q"{tiltrækkende}", q"{transparente}", q"{trådløse}", q"{udvidelige}"
		, q"{vertikale}", q"{virale}", q"{virtuelle}", q"{visionære}" ];

		return choice(strs, this.rnd);
	}

	override string companyBuzzNoun() {
		const string[] strs =
		[ q"{applikationer}", q"{arkitektur}", q"{blockchains}", q"{brugere}", q"{båndbredde}", q"{e-commerce}"
		, q"{e-markeder}", q"{forsyningskæder}", q"{funktionaliteter}", q"{fællesskaber}", q"{grænseflader}"
		, q"{handlingspunkter}", q"{indhold}", q"{infrastrukturer}", q"{initiativer}", q"{kanaler}"
		, q"{konvergens}", q"{leverancer}", q"{livstidsværdier}", q"{løsninger}", q"{markeder}"
		, q"{metodologier}", q"{modeller}", q"{målinger}", q"{netværk}", q"{nicher}", q"{oplevelser}"
		, q"{paradigmer}", q"{partnerskaber}", q"{platforme}", q"{portaler}", q"{relationer}", q"{ROI}"
		, q"{skemaer}", q"{synergier}", q"{systemer}", q"{teknologier}", q"{webtjenester}" ];

		return choice(strs, this.rnd);
	}

	override string companyBuzzVerb() {
		const string[] strs =
		[ q"{aggregerer}", q"{aktiverer}", q"{bemyndiger}", q"{brander}", q"{digitaliserer}", q"{driver}"
		, q"{dyrker}", q"{engagerer}", q"{faciliterer}", q"{forbedrer}", q"{fremskynder}", q"{frigiver}"
		, q"{genererer}", q"{genformidler}", q"{genopfinder}", q"{gentager}", q"{griber}", q"{implementerer}"
		, q"{inkuberer}", q"{innoverer}", q"{integrerer}", q"{konstruerer}", q"{leverer}", q"{maksimerer}"
		, q"{monetiserer}", q"{motiverer}", q"{målretter}", q"{omdefinerer}", q"{omfavner}", q"{omformer}"
		, q"{optimerer}", q"{orkestrerer}", q"{overgår}", q"{produktificerer}", q"{rekontekstualiserer}"
		, q"{revolutionerer}", q"{sammenligner}", q"{sammenvæver}", q"{skalerer}", q"{strømliner}"
		, q"{syndikerer}", q"{synergiserer}", q"{syntetiserer}", q"{transformerer}", q"{udnytter}"
		, q"{udruller}", q"{udvider}", q"{udvikler}", q"{visualiserer}", q"{vækster}", q"{ændrer}" ];

		return choice(strs, this.rnd);
	}

	override string companyDescriptor() {
		const string[] strs =
		[ q"{24 timer}", q"{24/7}", q"{3. generation}", q"{4. generation}", q"{5. generation}", q"{6. generation}"
		, q"{administrationsfri}", q"{afbalanceret}", q"{aktiverende}", q"{analyserende}", q"{asymmetrisk}"
		, q"{asynkron}", q"{baggrund}", q"{behovsbaseret}", q"{bemyndigende}", q"{brugervendt}", q"{bundlinje}"
		, q"{båndbreddeovervåget}", q"{client-server}", q"{dedikeret}", q"{didaktisk}", q"{diskret}"
		, q"{dynamisk}", q"{effektfuld}", q"{efterspørgselsdrevet}", q"{eksplicit}", q"{ensartet}"
		, q"{fejltolerant}", q"{forgrund}", q"{frisktænkende}", q"{fuldt dækkende}", q"{førende}"
		, q"{gensidig}", q"{global}", q"{helhedsorienteret}", q"{heuristisk}", q"{holdningsorienteret}"
		, q"{homogen}", q"{hybrid}", q"{højniveau}", q"{håndgribelig}", q"{indholdsbaseret}", q"{inkremental}"
		, q"{interaktiv}", q"{klartænkende}", q"{klientdrevet}", q"{kontekstbaseret}", q"{kontekstfølsom}"
		, q"{ledelsesmæssig}", q"{logistisk}", q"{lokal}", q"{løsningsorienteret}", q"{maksimeret}"
		, q"{mellemstation}", q"{metodisk}", q"{middleware}", q"{missionskritisk}", q"{mobil}", q"{modulær}"
		, q"{motiverende}", q"{multimedie}", q"{multitasking}", q"{national}", q"{neutral}", q"{objektorienteret}"
		, q"{omfavnende}", q"{optimal}", q"{optimerende}", q"{overgang}", q"{radikal}", q"{realtid}"
		, q"{receptiv}", q"{regional}", q"{retningsbestemt}", q"{sammenhængende}", q"{sammenkoblet}"
		, q"{sammensat}", q"{sekundær}", q"{skalerbar}", q"{stabil}", q"{statisk}", q"{systematisk}"
		, q"{systemisk}", q"{systemværdig}", q"{tertiær}", q"{tovejs}", q"{udstrålende}", q"{uforanderlig}"
		, q"{velmoduleret}", q"{vækstende}", q"{værditilføjet}", q"{webunderstøttet}", q"{øko-centrisk}" ];

		return choice(strs, this.rnd);
	}

	override string companyNamePattern() {
		switch(uniform(0, 2, this.rnd)) {
			case 0: return companyCompanyName();
			case 1: return personLastName() ~ " " ~ commerceDepartment() ~ " " ~ companySuffix();
		}
		return "";
	}

	override string companyNoun() {
		const string[] strs =
		[ q"{adapter}", q"{adgang}", q"{algoritme}", q"{alliance}", q"{analysator}", q"{applikation}"
		, q"{arkitektur}", q"{arkiv}", q"{benchmark}", q"{budgetstyring}", q"{data-lager}", q"{database}"
		, q"{definition}", q"{ekstranet}", q"{emulering}", q"{evne}", q"{firmware}", q"{fleksibilitet}"
		, q"{fokusgruppe}", q"{framework}", q"{funktion}", q"{gennemstrømning}", q"{grafisk brugergrænseflade}"
		, q"{groupware}", q"{grænseflade}", q"{hardware}", q"{helpdesk}", q"{hierarki}", q"{hub}", q"{implementering}"
		, q"{infrastruktur}", q"{initiativ}", q"{installation}", q"{instruktionssæt}", q"{internetløsning}"
		, q"{intranet}", q"{kapacitet}", q"{kerne}", q"{kodning}", q"{kompleksitet}", q"{koncept}", q"{konglomerat}"
		, q"{kontingens}", q"{kredsløb}", q"{kryptering}", q"{kundeloyalitet}", q"{kunstig intelligens}"
		, q"{lokalt netværk}", q"{løsning}", q"{matrix}", q"{metodologi}", q"{middleware}", q"{migration}"
		, q"{model}", q"{moderator}", q"{moratorium}", q"{neural-netværk}", q"{orkestrering}", q"{overvågning}"
		, q"{paradigme}", q"{parallelitet}", q"{politik}", q"{portal}", q"{prisstruktur}", q"{procesforbedring}"
		, q"{produkt}", q"{produktivitet}", q"{prognose}", q"{projekt}", q"{projektion}", q"{protokol}"
		, q"{samarbejde}", q"{service-desk}", q"{sikker linje}", q"{software}", q"{standardisering}"
		, q"{strategi}", q"{struktur}", q"{succes}", q"{superstruktur}", q"{support}", q"{synergi}"
		, q"{systemmotor}", q"{task-force}", q"{tidsramme}", q"{tilgang}", q"{udfordring}", q"{udnyttelse}"
		, q"{vidensbase}", q"{vidensbruger}", q"{værktøjssæt}", q"{websted}", q"{åben arkitektur}"
		, q"{åbent system}" ];

		return choice(strs, this.rnd);
	}

	override string companySuffix() {
		const string[] strs =
		[ q"{ApS}", q"{A/S}" ];

		return choice(strs, this.rnd);
	}

	string companyCompanyName() {
		const string[] strs =
		[ q"{Albertslund Aluminium}", q"{Albertslund App}", q"{Allerød Akustik}", q"{Allerød Analyse}"
		, q"{Assens Apparater}", q"{Assens Arkitektur}", q"{Ballerup Beton}", q"{Ballerup Bolig}"
		, q"{Baltic Biotek}", q"{Billund Badehotel}", q"{Billund Byg}", q"{Birkerød Bageri}"
		, q"{Birkerød Biotek}", q"{Borgen Byg}", q"{Bornholm Biler}", q"{Bornholm Bygninger}"
		, q"{Bornholm Bæredygtighed}", q"{Brøndby Branding}", q"{Brøndby Bøger}", q"{Brønderslev Bryg}"
		, q"{Brønderslev Byggeri}", q"{DaneBryg Bryggerier}", q"{Danmark Digital}", q"{Dansk SundhedsFusion}"
		, q"{Djursland Design}", q"{Dragør Design}", q"{Dragør Drift}", q"{DynaDanmark Industri}"
		, q"{Egedal E-handel}", q"{Egedal Elektronik}", q"{Egedal Erhverv}", q"{Esbjerg Elektronik}"
		, q"{Esbjerg Energi}", q"{Falster Farmaceuter}", q"{Fanø Fartøj}", q"{Fanø Forsikring}"
		, q"{Favrskov Fjernsyn}", q"{Favrskov Fritid}", q"{Favrskov Fødevarer}", q"{Faxe Farmaceuter}"
		, q"{Faxe Fjernkøling}", q"{Fjerritslev Fjernvarme}", q"{FjordBank Investering}", q"{Fredensborg Frisør}"
		, q"{Fredensborg Fritid}", q"{Fredericia Fragt}", q"{Frederiksberg Finans}", q"{Frederiksberg Forsyning}"
		, q"{Frederikshavn Frugt}", q"{Frederikssund Fisk}", q"{Frederikssund Forskning}", q"{Furesø Fisk}"
		, q"{Fyn Fiskeri}", q"{Fynske Fødevarer}", q"{Faaborg-Midtfyn Film}", q"{Gentofte Genbrug}"
		, q"{Gladsaxe Glas}", q"{Glostrup Gaming}", q"{Greve Grafik}", q"{Greve Grønt}", q"{Gribskov Græs}"
		, q"{GrønBølge Energi}", q"{Grønland Gourmet}", q"{Guldborgsund Gas}", q"{Guldborgsund Guld}"
		, q"{GuldHornet Mode}", q"{Haderslev Haver}", q"{Haderslev Håndværk}", q"{Halsnæs Halvleder}"
		, q"{Hedensted Handel}", q"{Helsingør Hotel}", q"{Herlev Hospital}", q"{Herning Helbred}"
		, q"{Hilleroed Helikopter}", q"{Himmerland Håndværk}", q"{Hjørring Handel}", q"{Hjørring Helse}"
		, q"{Hobro Hjem}", q"{Holstebro Heste}", q"{Hovedstad Helse}", q"{Hvidovre Have}", q"{HyggeHjem Interiør}"
		, q"{Høje-Taastrup Hotel}", q"{Hørsholm Helse}", q"{Ikast Innovation}", q"{Ishøj IT}"
		, q"{Jammerbugt Jagt}", q"{Kalundborg Kaffe}", q"{Kerteminde Keramik}", q"{Kolding Kultur}"
		, q"{KongeKabel Telekom}", q"{KystTilKyst Turisme}", q"{København TransportLøsninger}"
		, q"{Køge Korn}", q"{Lejre Lys}", q"{Lemvig Landbrug}", q"{Lemvig Luft}", q"{Lillebælt Logistik}"
		, q"{Lolland Landbrug}", q"{Lyngby Lys}", q"{Læsø Læder}", q"{Mariagerfjord Mad}", q"{Middelfart Maskiner}"
		, q"{Midtjylland Maskiner}", q"{Mors Møbler}", q"{Morsø Maling}", q"{NaturLinjen Kosmetik}"
		, q"{Norddjurs Naturlig}", q"{Nordfyn Næringsstoffer}", q"{NordHavn Teknologier}"
		, q"{Nordisk NanoLab}", q"{Nordlys Finans}", q"{Nyborg Nytte}", q"{Næstved Netværk}"
		, q"{Odder Olie}", q"{Odense Online}", q"{Odsherred Optik}", q"{Randers Robotter}", q"{Rebild Radio}"
		, q"{Ribe Robotteknologi}", q"{Ringkøbing Rengøring}", q"{Ringsted Renovering}", q"{Roskilde Rejser}"
		, q"{Rødovre Reklame}", q"{Samsø Salt}", q"{Samsø Solenergi}", q"{Scandia Software}"
		, q"{Silkeborg Sundhed}", q"{Sjælland SkyTek}", q"{Skagen Software}", q"{Skive Skov}"
		, q"{SkovHaven Møbler}", q"{Slagelse Software}", q"{Stevns Sten}", q"{Struer Stål}"
		, q"{SundBro Byggeri}", q"{Svendborg Søfart}", q"{Sydfyn Sko}", q"{SynergiSport Udstyr}"
		, q"{Sønderborg Sol}", q"{Thisted Tjenester}", q"{Thy Teknik}", q"{Trekroner Forsikring}"
		, q"{Tønder Tekstil}", q"{Tårnby Tekstiler}", q"{Taastrup Transport}", q"{Valby VandTek}"
		, q"{Varde Varehandel}", q"{Vejen Vand}", q"{Vejle Visioner}", q"{Vesterhav Vindkraft}"
		, q"{Viborg Video}", q"{VikingNetværk}", q"{Vordingborg Vind}", q"{Øresund MarineTek}"
		, q"{ØstVind Innovation}", q"{Aabenraa Anlæg}", q"{Aabenraa Automater}", q"{Aalborg Aqua}"
		, q"{Aarhus Automatik}", q"{Århus Robotik}" ];

		return choice(strs, this.rnd);
	}

	override string dateMonthWide() {
		const string[] strs =
		[ q"{januar}", q"{februar}", q"{marts}", q"{april}", q"{maj}", q"{juni}", q"{juli}", q"{august}", q"{september}"
		, q"{oktober}", q"{november}", q"{december}" ];

		return choice(strs, this.rnd);
	}

	override string dateMonthAbbr() {
		const string[] strs =
		[ q"{jan.}", q"{feb.}", q"{mar.}", q"{apr.}", q"{maj}", q"{jun.}", q"{jul.}", q"{aug.}", q"{sep.}", q"{okt.}"
		, q"{nov.}", q"{dec.}" ];

		return choice(strs, this.rnd);
	}

	override string dateWeekdayWide() {
		const string[] strs =
		[ q"{søndag}", q"{mandag}", q"{tirsdag}", q"{onsdag}", q"{torsdag}", q"{fredag}", q"{lørdag}" ];

		return choice(strs, this.rnd);
	}

	override string dateWeekdayAbbr() {
		const string[] strs =
		[ q"{søn.}", q"{man.}", q"{tir.}", q"{ons.}", q"{tor.}", q"{fre.}", q"{lør.}" ];

		return choice(strs, this.rnd);
	}

	override string internetDomainSuffix() {
		const string[] strs =
		[ q"{com}", q"{info}", q"{name}", q"{net}", q"{org}", q"{dk}" ];

		return choice(strs, this.rnd);
	}

	override string internetFreeEmail() {
		const string[] strs =
		[ q"{gmail.com}", q"{hotmail.com}", q"{live.dk}", q"{outlook.dk}", q"{yahoo.dk}" ];

		return choice(strs, this.rnd);
	}

	override string locationBuildingNumber() {
		const string[] strs =
		[ q"{#}", q"{##}", q"{###}", q"{##A}", q"{##B}" ];

		return numberBuild(choice(strs, this.rnd));
	}

	override string locationCityName() {
		const string[] strs =
		[ q"{Albertslund}", q"{Arden}", q"{Asnæs}", q"{Assentoft}", q"{Augustenborg}", q"{Aulum}", q"{Auning}"
		, q"{Ballerup}", q"{Beder-Malling}", q"{Bellinge}", q"{Birkerød}", q"{Bjæverskov}", q"{Bogense}"
		, q"{Borup}", q"{Brejning}", q"{Broager}", q"{Brovst}", q"{Brædstrup}", q"{Brøndby}", q"{Brønderslev}"
		, q"{Brørup}", q"{Christiansfeld}", q"{Dianalund}", q"{Dragør}", q"{Dronninglund}", q"{Ejby}"
		, q"{Esbjerg}", q"{Farsø}", q"{Farum}", q"{Faxe Ladeplads}", q"{Faxe}", q"{Fensmark}", q"{Fjerritslev}"
		, q"{Fredensborg}", q"{Fredericia}", q"{Frederiksberg}", q"{Frederikshavn}", q"{Frederikssund}"
		, q"{Frederiksværk}", q"{Frejlev}", q"{Galten}", q"{Ganløse}", q"{Gentofte}", q"{Gistrup}"
		, q"{Give}", q"{Gladsaxe}", q"{Glamsbjerg}", q"{Glostrup}", q"{Grenaa}", q"{Greve Strand}", q"{Grindsted}"
		, q"{Græsted}", q"{Gråsten}", q"{Guderup}", q"{Haderslev}", q"{Hadsten}", q"{Hadsund}", q"{Harlev}"
		, q"{Haslev}", q"{Havdrup}", q"{Hedehusene}", q"{Hedensted}", q"{Helsinge}", q"{Helsingør}"
		, q"{Herlev}", q"{Herning}", q"{Hillerød}", q"{Hinnerup}", q"{Hjallerup}", q"{Hjortshøj}"
		, q"{Hjørring}", q"{Hobro}", q"{Holbæk}", q"{Holstebro}", q"{Holsted}", q"{Horsens}", q"{Humlebæk}"
		, q"{Hundested}", q"{Hurup}", q"{Hvide Sande}", q"{Hvidovre}", q"{Højslev Stationsby}", q"{Høng}"
		, q"{Hørning}", q"{Hørsholm}", q"{Høruphav}", q"{Ikast}", q"{Ishøj}", q"{Jelling}", q"{Juelsminde}"
		, q"{Jyderup}", q"{Jyllinge}", q"{Jægerspris}", q"{Kalundborg}", q"{Kibæk}", q"{Kirke Hvalsø}"
		, q"{Kjellerup}", q"{Klarup}", q"{Kolding}", q"{Korsør}", q"{København}", q"{Køge}", q"{Kås}"
		, q"{Langeskov}", q"{Langå}", q"{Lillerød}", q"{Liseleje}", q"{Lunderskov}", q"{Lyngby}", q"{Lynge-Uggeløse}"
		, q"{Lystrup}", q"{Løgstør}", q"{Løgten}", q"{Løgumkloster}", q"{Mariager}", q"{Middelfart}"
		, q"{Mårslet}", q"{Nakskov}", q"{Nexø}", q"{Nivå}", q"{Nordby}", q"{Nyborg}", q"{Nykøbing F}"
		, q"{Nykøbing M}", q"{Næstved}", q"{Nørre Åby}", q"{Nørresundby}", q"{Odder}", q"{Odense}"
		, q"{Oksbøl}", q"{Otterup}", q"{Padborg}", q"{Pandrup}", q"{Præstø}", q"{Randers}", q"{Ribe}"
		, q"{Ringkøbing}", q"{Ringsted}", q"{Roskilde}", q"{Rudersdal}", q"{Rudkøbing}", q"{Rødding}"
		, q"{Rødovre}", q"{Rønde}", q"{Rønne}", q"{Sabro}", q"{Sakskøbing}", q"{Sankt Klemens}"
		, q"{Silkeborg}", q"{Sindal}", q"{Skanderborg}", q"{Skibby}", q"{Skive}", q"{Skærbæk}", q"{Skævinge}"
		, q"{Skørping}", q"{Slagelse}", q"{Smørumnedre}", q"{Solbjerg}", q"{Solrød Strand}", q"{Sorø}"
		, q"{Stege}", q"{Stenløse}", q"{Stoholm}", q"{Store Heddinge}", q"{Storvorde}", q"{Strib}"
		, q"{Struer}", q"{Strøby Egede}", q"{Støvring}", q"{Sundby}", q"{Sunds}", q"{Svejbæk}", q"{Svendborg}"
		, q"{Svinninge}", q"{Svogerslev}", q"{Sæby}", q"{Søften}", q"{Sønderborg}", q"{Søndersø}"
		, q"{Tarm}", q"{Taulov}", q"{Thisted}", q"{Thurø By}", q"{Tinglev}", q"{Tjæreborg}", q"{Toftlund}"
		, q"{Trige}", q"{Tune}", q"{Tølløse}", q"{Tørring}", q"{Taarbæk}", q"{Tårnby}", q"{Taastrup}"
		, q"{Ullerslev}", q"{Vallensbæk}", q"{Vamdrup}", q"{Varde}", q"{Vejen}", q"{Vejle}", q"{Vestbjerg}"
		, q"{Vester Hassing}", q"{Viborg}", q"{Viby S}", q"{Videbæk}", q"{Vildbjerg}", q"{Vinderup}"
		, q"{Virklund}", q"{Vissenbjerg}", q"{Vodskov}", q"{Vordingborg}", q"{Værløse}", q"{Ølgod}"
		, q"{Ølstykke}", q"{Aabenraa}", q"{Aalborg}", q"{Aalestrup}", q"{Aarhus}", q"{Aars}", q"{Årslev}"
		, q"{Aarup}" ];

		return choice(strs, this.rnd);
	}

	override string locationCityPattern() {
		switch(uniform(0, 1, this.rnd)) {
			case 0: return locationCityName();
		}
		return "";
	}

	override string locationCountry() {
		const string[] strs =
		[ q"{Afghanistan}", q"{Albania}", q"{Algeria}", q"{Amerikansk Samoa}", q"{Amerikas mindre øer}"
		, q"{Andorra}", q"{Angola}", q"{Anguilla}", q"{Antarktis}", q"{Antigua og Barbuda}", q"{Argentina}"
		, q"{Armenien}", q"{Aruba}", q"{Aserbajdsjan}", q"{Australien}", q"{Bahamas}", q"{Bahrain}"
		, q"{Bangladesh}", q"{Barbados}", q"{Belgien}", q"{Belize}", q"{Benin}", q"{Bermuda}", q"{Bhutan}"
		, q"{Bolivia}", q"{Bonaire, Sint Eustatius og Saba}", q"{Bosnien-Hercegovina}", q"{Botswana}"
		, q"{Bouvetøen}", q"{Brasilien}", q"{Brunei}", q"{Bulgarien}", q"{Burkina Faso}", q"{Burundi}"
		, q"{Cambodja}", q"{Cameroun}", q"{Canada}", q"{Caymanøerne}", q"{Chile}", q"{Cocosøerne}"
		, q"{Colombia}", q"{Comorerne}", q"{Congo}", q"{Cookøerne}", q"{Costa Rica}", q"{Cuba}", q"{Curaçao}"
		, q"{Cypern}", q"{Danmark}", q"{Den Centralafrikanske Republik}", q"{Den Demokratiske Republik Congo}"
		, q"{Den Dominikanske Republik}", q"{Det Britiske Territorium i Det Indiske Ocean}"
		, q"{Djibouti}", q"{Dominica}", q"{Ecuador}", q"{Egypten}", q"{El Salvador}", q"{Elfenbenskysten}"
		, q"{Eritrea}", q"{Estland}", q"{Eswatini}", q"{Etiopien}", q"{Falklandsøerne}", q"{Fiji}"
		, q"{Filippinerne}", q"{Finland}", q"{Forenede Arabiske Emirater}", q"{Frankrig}", q"{Fransk Guyana}"
		, q"{Fransk Polynesien}", q"{Franske Sydlige Territorier}", q"{Færøerne}", q"{Gabon}"
		, q"{Gambia}", q"{Georgien}", q"{Ghana}", q"{Gibraltar}", q"{Grenada}", q"{Grækenland}", q"{Grønland}"
		, q"{Guadeloupe}", q"{Guam}", q"{Guatemala}", q"{Guernsey}", q"{Guinea-Bissau}", q"{Guinea}"
		, q"{Guyana}", q"{Haiti}", q"{Heard- og McDonald-øerne}", q"{Holland}", q"{Honduras}", q"{Hongkong}"
		, q"{Hviderusland}", q"{Indien}", q"{Indonesien}", q"{Irak}", q"{Iran}", q"{Irland}", q"{Island}"
		, q"{Isle of Man}", q"{Israel}", q"{Italien}", q"{Jamaica}", q"{Japan}", q"{Jersey}", q"{Jomfruøerne (Britiske)}"
		, q"{Jomfruøerne (USA)}", q"{Jordan}", q"{Juleøen}", q"{Kap Verde}", q"{Kasakhstan}", q"{Kenya}"
		, q"{Kina}", q"{Kirgisistan}", q"{Kiribati}", q"{Kroatien}", q"{Kuwait}", q"{Laos}", q"{Lesotho}"
		, q"{Letland}", q"{Libanon}", q"{Liberia}", q"{Libyen}", q"{Liechtenstein}", q"{Litauen}", q"{Luxembourg}"
		, q"{Macao}", q"{Madagaskar}", q"{Malawi}", q"{Malaysia}", q"{Maldiverne}", q"{Mali}", q"{Malta}"
		, q"{Marokko}", q"{Marshalløerne}", q"{Martinique}", q"{Mauretanien}", q"{Mauritius}", q"{Mayotte}"
		, q"{Mexico}", q"{Mikronesien}", q"{Moldova}", q"{Monaco}", q"{Mongoliet}", q"{Montenegro}"
		, q"{Montserrat}", q"{Mozambique}", q"{Myanmar}", q"{Namibia}", q"{Nauru}", q"{Nepal}", q"{New Zealand}"
		, q"{Nicaragua}", q"{Niger}", q"{Nigeria}", q"{Niue}", q"{Nordkorea}", q"{Nordmakedonien}", q"{Nordmarianerne}"
		, q"{Norfolkøen}", q"{Norge}", q"{Ny Kaledonien}", q"{Oman}", q"{Pakistan}", q"{Palau}", q"{Palæstina}"
		, q"{Panama}", q"{Papua Ny Guinea}", q"{Paraguay}", q"{Peru}", q"{Pitcairnøerne}", q"{Polen}"
		, q"{Portugal}", q"{Puerto Rico}", q"{Qatar}", q"{Réunion}", q"{Rumænien}", q"{Rusland}", q"{Rwanda}"
		, q"{Saint Barthélemy}", q"{Saint Pierre og Miquelon}", q"{Saint Vincent og Grenadinerne}"
		, q"{Salomonøerne}", q"{Samoa}", q"{San Marino}", q"{Sankt Helena}", q"{Sankt Kitts og Nevis}"
		, q"{Sankt Lucia}", q"{Sankt Martin}", q"{São Tomé og Príncipe}", q"{Saudi-Arabien}"
		, q"{Schweiz}", q"{Senegal}", q"{Serbien}", q"{Seychellerne}", q"{Sierra Leone}", q"{Singapore}"
		, q"{Sint Maarten}", q"{Slovakiet}", q"{Slovenien}", q"{Somalia}", q"{South Georgia og South Sandwich Islands}"
		, q"{Spanien}", q"{Sri Lanka}", q"{Storbritannien}", q"{Sudan}", q"{Surinam}", q"{Svalbard og Jan Mayen}"
		, q"{Sverige}", q"{Sydafrika}", q"{Sydkorea}", q"{Sydsudan}", q"{Syrien}", q"{Tadsjikistan}"
		, q"{Taiwan}", q"{Tanzania}", q"{Tchad}", q"{Thailand}", q"{Timor-Leste}", q"{Tjekkiet}", q"{Togo}"
		, q"{Tokelau}", q"{Tonga}", q"{Trinidad og Tobago}", q"{Tunesien}", q"{Turkmenistan}", q"{Turks- og Caicosøerne}"
		, q"{Tuvalu}", q"{Tyrkiet}", q"{Tyskland}", q"{Uganda}", q"{Ukraine}", q"{Ungarn}", q"{Uruguay}"
		, q"{USA}", q"{Usbekistan}", q"{Vanuatu}", q"{Vatikanstaten}", q"{Venezuela}", q"{Vestsahara}"
		, q"{Vietnam}", q"{Wallis og Futuna}", q"{Yemen}", q"{Zambia}", q"{Zimbabwe}", q"{Ækvatorialguinea}"
		, q"{Østrig}", q"{Åland}" ];

		return choice(strs, this.rnd);
	}

	override string locationDefaultCountry() {
		const string[] strs =
		[ q"{Danmark}" ];

		return choice(strs, this.rnd);
	}

	override string locationDirection() {
		const string[] strs =
		[ q"{Nord}", q"{Øst}", q"{Syd}", q"{Vest}", q"{Nordøst}", q"{Nordvest}", q"{Sydøst}", q"{Sydvest}" ];

		return choice(strs, this.rnd);
	}

	override string locationDirectionAbbr() {
		const string[] strs =
		[ q"{N}", q"{Ø}", q"{S}", q"{V}", q"{NØ}", q"{NV}", q"{SØ}", q"{SV}" ];

		return choice(strs, this.rnd);
	}

	override string locationPostcode() {
		const string[] strs =
		[ q"{####}" ];

		return numberBuild(choice(strs, this.rnd));
	}

	override string locationSecondaryAddress() {
		const string[] strs =
		[ q"{#. tv}", q"{#. th}" ];

		return numberBuild(choice(strs, this.rnd));
	}

	override string locationStreetAddress() {
		const LocationStreetAddressEnum[] enums = [ LocationStreetAddressEnum.normal, LocationStreetAddressEnum.full ];
		return locationStreetAddress(choice(enums, this.rnd));
	}

	override string locationStreetAddress(LocationStreetAddressEnum which) {
		switch(which) {
			case LocationStreetAddressEnum.normal: return locationStreet() ~ " " ~ locationBuildingNumber();
			case LocationStreetAddressEnum.full: return locationStreet() ~ " " ~ locationBuildingNumber() ~ ", " ~ locationSecondaryAddress();
		}
		return "";
	}

	override string locationStreetName() {
		const string[] strs =
		[ q"{Agervej}", q"{Askevej}", q"{Bakkedraget}", q"{Bakkegårdsvej}", q"{Bakkevej}", q"{Banevænget}"
		, q"{Birkealle}", q"{Birkeparken}", q"{Birkevej}", q"{Bjergvej}", q"{Bredgade}", q"{Carlsmindevej}"
		, q"{Cedervej}", q"{Chr. Winthersvej}", q"{Clematisvej}", q"{Cypresvej}", q"{Cypresvænget}"
		, q"{Dalevej}", q"{Dalgas Boulevard}", q"{Dalsvinget}", q"{Damvej}", q"{Dronningensgade}"
		, q"{Dybdalsvej}", q"{Dyrskuevej}", q"{Egevej}", q"{Egholmvej}", q"{Ejstrupvej}", q"{Ellevej}"
		, q"{Elmevej}", q"{Enevej}", q"{Engvej}", q"{Eskebjergvej}", q"{Fasanvej}", q"{Fjordvej}", q"{Fuglevangsvej}"
		, q"{Fuglevej}", q"{Fuglsangsvej}", q"{Fyrretræsvej}", q"{Fyrrevej}", q"{Fyrvej}", q"{Gadekæret}"
		, q"{Galgebjergvej}", q"{Gammel Kongevej}", q"{Gartnervej}", q"{Gl. Kongevej}", q"{Granvej}"
		, q"{Havnevej}", q"{Hedelundvej}", q"{Hejrevej}", q"{Hestehavevej}", q"{Hovedgaden}", q"{Højagervej}"
		, q"{Højvej}", q"{Idrætsvej}", q"{Ildervej}", q"{Industrigade}", q"{Industrivej}", q"{Irisvej}"
		, q"{Islandsvej}", q"{Jagtvej}", q"{Jernbanegade}", q"{Jernbanevej}", q"{Jupitervej}", q"{Jydevej}"
		, q"{Jægergårdsvej}", q"{Jægervej}", q"{Kastanievej}", q"{Kirkegade}", q"{Klostermarken}"
		, q"{Klostervej}", q"{Kornmarken}", q"{Kærbyvej}", q"{Kærparken}", q"{Kærvej}", q"{Liljens Kvarter}"
		, q"{Liljevej}", q"{Lindevej}", q"{Lunden}", q"{Lundevej}", q"{Lyngvej}", q"{Lærkevej}", q"{Markvej}"
		, q"{Mosevej}", q"{Munkevej}", q"{Mælkevejen}", q"{Møllebækvej}", q"{Møllegade}", q"{Møllevænget}"
		, q"{Mågevej}", q"{Nedre Gade}", q"{Nordre Strandvej}", q"{Nordvestpassagen}", q"{Nygade}"
		, q"{Nytorv}", q"{Nyvej}", q"{Nørrebrogade}", q"{Nørregade}", q"{Overgaden}", q"{Parkvej}"
		, q"{Pilestræde}", q"{Pilevej}", q"{Plantagevej}", q"{Poppelvej}", q"{Præstegårdsvej}"
		, q"{Præstevænget}", q"{Ravnevej}", q"{Rosenhaven}", q"{Rosenvej}", q"{Rugårdsvej}", q"{Ryttervej}"
		, q"{Rævevej}", q"{Rådhusvej}", q"{Skolegade}", q"{Skolestræde}", q"{Skolevej}", q"{Skovbrynet}"
		, q"{Skovvej}", q"{Slotsvej}", q"{Solbakken}", q"{Strandgade}", q"{Sydvej}", q"{Sølvgade}"
		, q"{Søndergade}", q"{Teglværksvej}", q"{Tjørnevej}", q"{Torvet}", q"{Tranevej}", q"{Trekanten}"
		, q"{Troldhøjvej}", q"{Tulipanvej}", q"{Tværgade}", q"{Udsigten}", q"{Udsigtsbakken}", q"{Udsigtsvej}"
		, q"{Ullevej}", q"{Ulstrupvej}", q"{Ulvevej}", q"{Uplandsvej}", q"{Valmuevej}", q"{Valnøddevej}"
		, q"{Vandtårnsvej}", q"{Ved Stranden}", q"{Vestergade}", q"{Vestergårdsvej}", q"{Vibevej}"
		, q"{Viborgvej}", q"{Ørnevej}", q"{Østerbrogade}", q"{Østergade}", q"{Østervang}", q"{Østre Alle}"
		, q"{Østre Stationsvej}", q"{Åbjergvej}", q"{Åboulevarden}", q"{Ådalsvej}", q"{Ågade}"
		, q"{Åstrupvej}", q"{Åvænget}" ];

		return choice(strs, this.rnd);
	}

	override string locationStreetPattern() {
		switch(uniform(0, 1, this.rnd)) {
			case 0: return locationStreetName();
		}
		return "";
	}

	override string personFemaleFirstName() {
		const string[] strs =
		[ q"{Agnes}", q"{Alberte}", q"{Alexandrea}", q"{Alice}", q"{Alma}", q"{Amanda}", q"{Anita}", q"{Anna}"
		, q"{Anne}", q"{Annette}", q"{Astrid}", q"{Bente}", q"{Betina}", q"{Birgitte}", q"{Britt}", q"{Camilla}"
		, q"{Caroline}", q"{Cecilie}", q"{Charlotte}", q"{Christina}", q"{Clara}", q"{Ditte-Marie}"
		, q"{Dorit}", q"{Dorthe}", q"{Ea}", q"{Elisabeth}", q"{Elise}", q"{Ella}", q"{Ellen-Margrethe}"
		, q"{Else}", q"{Emilie}", q"{Emma}", q"{Eva}", q"{Fatima}", q"{Freja}", q"{Frida}", q"{Gitte}", q"{Gry}"
		, q"{Hanne}", q"{Hedvig}", q"{Helene}", q"{Helle}", q"{Hilda}", q"{Ida}", q"{Ingrid}", q"{Isabella}"
		, q"{Janni}", q"{Jeanette}", q"{Jette}", q"{Johanne}", q"{Josefine}", q"{Julie}", q"{Karen}", q"{Karla}"
		, q"{Kathrine}", q"{Katrine}", q"{Kirsten}", q"{Laila}", q"{Lene}", q"{Lillian}", q"{Line}", q"{Lis}"
		, q"{Lisa}", q"{Lisbeth}", q"{Liv}", q"{Lone}", q"{Louise}", q"{Luna}", q"{Lykke}", q"{Maja}", q"{Malene}"
		, q"{Maren}", q"{Maria}", q"{Marianne}", q"{Mathilde}", q"{Merete}", q"{Mette}", q"{Mia}", q"{Mille}"
		, q"{Mona}", q"{Nadia}", q"{Nanna}", q"{Nicoline}", q"{Nina}", q"{Pia}", q"{Rebecca}", q"{Regitze}"
		, q"{Rikke}", q"{Rosa-Maria}", q"{Ruth}", q"{Sabrina}", q"{Sandra}", q"{Sanne}", q"{Sara}", q"{Sarah}"
		, q"{Signe}", q"{Silje}", q"{Simone}", q"{Sofie}", q"{Stine}", q"{Susanne}", q"{Therese}", q"{Tina}"
		, q"{Tine}", q"{Trine}", q"{Vibeke}", q"{Viktoria}", q"{Yasmin}", q"{Zara}" ];

		return choice(strs, this.rnd);
	}

	override string personFemaleMiddleName() {
		const string[] strs =
		[ q"{Birk}", q"{Bjerg}", q"{Bjerre}", q"{Bundgaard}", q"{Dahl}", q"{Dal}", q"{Dam}", q"{Feldt}", q"{Frost}"
		, q"{Grøn}", q"{Hald}", q"{Hjorth}", q"{Holm}", q"{Husum}", q"{Jul}", q"{Kjær}", q"{Klit}", q"{Koch}"
		, q"{Krog}", q"{Linde}", q"{Lund}", q"{Mose}", q"{Mølgaard}", q"{Nord}", q"{Præst}", q"{Rosen}"
		, q"{Skov}", q"{Smed}", q"{Vestergaard}", q"{Østergaard}" ];

		return choice(strs, this.rnd);
	}

	override string personFemalePrefix() {
		const string[] strs =
		[ q"{fr.}" ];

		return choice(strs, this.rnd);
	}

	override string personFirstName() {
		const string[] strs =
		[ q"{Adam}", q"{Adrian}", q"{Agnes}", q"{Ahmad}", q"{Aksel}", q"{Albert}", q"{Alberte}", q"{Alexander}"
		, q"{Alexandrea}", q"{Alfred}", q"{Ali}", q"{Alice}", q"{Alma}", q"{Amanda}", q"{Anders}", q"{Andreas}"
		, q"{Anita}", q"{Anna}", q"{Anne}", q"{Annette}", q"{Anton}", q"{Arthur}", q"{Arunthavanathan}"
		, q"{Astrid}", q"{August}", q"{Benjamin}", q"{Bente}", q"{Betina}", q"{Birgitte}", q"{Bjørn}"
		, q"{Brian}", q"{Britt}", q"{Camilla}", q"{Carl}", q"{Caroline}", q"{Cecilie}", q"{Charlotte}"
		, q"{Christian}", q"{Christina}", q"{Christopher}", q"{Clara}", q"{Claus}", q"{Daniel}", q"{David}"
		, q"{Ditte-Marie}", q"{Dorit}", q"{Dorthe}", q"{Ea}", q"{Elias}", q"{Elisabeth}", q"{Elise}", q"{Ella}"
		, q"{Ellen-Margrethe}", q"{Elliot}", q"{Else}", q"{Emil}", q"{Emilie}", q"{Emma}", q"{Erik}", q"{Esben}"
		, q"{Eva}", q"{Fatima}", q"{Felix}", q"{Frank}", q"{Frederik}", q"{Freja}", q"{Frida}", q"{Georg}"
		, q"{Gitte}", q"{Gry}", q"{Hakim}", q"{Hanne}", q"{Hans}", q"{Harald}", q"{Hedvig}", q"{Helene}", q"{Helle}"
		, q"{Henrik}", q"{Hilda}", q"{Ib}", q"{Ida}", q"{Ingrid}", q"{Isabella}", q"{Ivan}", q"{Jacob}", q"{Jakob}"
		, q"{Jan}", q"{Janni}", q"{Jeanette}", q"{Jens}", q"{Jeppe}", q"{Jesper}", q"{Jette}", q"{Johan}"
		, q"{Johanne}", q"{John}", q"{Jonas}", q"{Jonathan}", q"{Josefine}", q"{Julie}", q"{Jørgen}", q"{Kaj}"
		, q"{Karen}", q"{Karl}", q"{Karl-Emil}", q"{Karl-Johan}", q"{Karla}", q"{Kasper}", q"{Kathrine}"
		, q"{Katrine}", q"{Kevin}", q"{Kim}", q"{Kirsten}", q"{Kurt}", q"{Laila}", q"{Lars}", q"{Lasse}", q"{Leif}"
		, q"{Lene}", q"{Leo}", q"{Lillian}", q"{Line}", q"{Linus}", q"{Lis}", q"{Lisa}", q"{Lisbeth}", q"{Liv}"
		, q"{Lone}", q"{Louise}", q"{Lucas}", q"{Lukas}", q"{Luna}", q"{Lykke}", q"{Mads}", q"{Magnus}", q"{Maja}"
		, q"{Malene}", q"{Malthe}", q"{Maren}", q"{Maria}", q"{Marianne}", q"{Mark}", q"{Martin}", q"{Mathias}"
		, q"{Mathilde}", q"{Mathis}", q"{Max}", q"{Merete}", q"{Mette}", q"{Mia}", q"{Michael}", q"{Mikkel}"
		, q"{Mille}", q"{Mohammad}", q"{Mona}", q"{Morten}", q"{Nadia}", q"{Nanna}", q"{Nicklas}", q"{Nicoline}"
		, q"{Niels}", q"{Niels-Christian}", q"{Niklas}", q"{Nina}", q"{Noah}", q"{Ole}", q"{Oliver}", q"{Oscar}"
		, q"{Otto}", q"{Patrick}", q"{Per}", q"{Peter}", q"{Philip}", q"{Pia}", q"{Poul}", q"{Rasmus}", q"{Rebecca}"
		, q"{Regitze}", q"{Rikke}", q"{Robert}", q"{Rosa-Maria}", q"{Ruth}", q"{Sabrina}", q"{Samuel}"
		, q"{Sandra}", q"{Sanne}", q"{Sara}", q"{Sarah}", q"{Sebastian}", q"{Signe}", q"{Sigurd}", q"{Silje}"
		, q"{Simon}", q"{Simone}", q"{Sofie}", q"{Steen}", q"{Stefan}", q"{Stig}", q"{Stine}", q"{Sune}", q"{Susanne}"
		, q"{Svend}", q"{Søren}", q"{Theo}", q"{Therese}", q"{Thomas}", q"{Tim}", q"{Tina}", q"{Tine}", q"{Tobias}"
		, q"{Trine}", q"{Troels}", q"{Uffe}", q"{Ulrik}", q"{Vagn}", q"{Valdemar}", q"{Vibeke}", q"{Victor}"
		, q"{Viggo}", q"{Viktor}", q"{Viktoria}", q"{Vilhelm}", q"{Villy}", q"{Vincent}", q"{William}"
		, q"{Yasmin}", q"{Zara}" ];

		return choice(strs, this.rnd);
	}

	override string personLastName() {
		const string[] strs =
		[ q"{Abbas}", q"{Abdi}", q"{Andersen}", q"{Andresen}", q"{Bak}", q"{Bang}", q"{Bech}", q"{Beckmann}"
		, q"{Berg}", q"{Bertelsen}", q"{Bisgaard}", q"{Bjerregaard}", q"{Blom}", q"{Bonde}", q"{Brandt}"
		, q"{Brix}", q"{Bruun}", q"{Buch}", q"{Buhl}", q"{Bundgaard}", q"{Carlsen}", q"{Christensen}", q"{Christiansen}"
		, q"{Clausen}", q"{Dahl}", q"{Dalgaard}", q"{Dam}", q"{Damm}", q"{Davidsen}", q"{Dupont}", q"{Esbensen}"
		, q"{Fischer}", q"{Foged}", q"{Frandsen}", q"{Frederiksen}", q"{Gade}", q"{Garcia}", q"{Gregersen}"
		, q"{Hald}", q"{Hansen}", q"{Haugaard}", q"{Hedegaard}", q"{Henriksen}", q"{Hermansen}", q"{Hjort}"
		, q"{Hjorth}", q"{Holm}", q"{Iversen}", q"{Jakobsen}", q"{Jensen}", q"{Jeppesen}", q"{Jespersen}"
		, q"{Johannessen}", q"{Johannsen}", q"{Johansen}", q"{Juhl}", q"{Justesen}", q"{Jørgensen}"
		, q"{Karlsen}", q"{Khan}", q"{Kjeldsen}", q"{Kjær}", q"{Klausen}", q"{Knudsen}", q"{Kristensen}"
		, q"{Krogh}", q"{Larsen}", q"{Lauridsen}", q"{Laursen}", q"{Lorentzen}", q"{Lund}", q"{Madsen}"
		, q"{Magnussen}", q"{Marcussen}", q"{Mortensen}", q"{Munch}", q"{Munk}", q"{Møller}", q"{Nguyen}"
		, q"{Nielsen}", q"{Nissen}", q"{Nygaard}", q"{Olsen}", q"{Pallesen}", q"{Pedersen}", q"{Petersen}"
		, q"{Pham}", q"{Poulsen}", q"{Rasmussen}", q"{Ravn}", q"{Richter}", q"{Schmidt}", q"{Schrøder}"
		, q"{Simonsen}", q"{Skov}", q"{Steffensen}", q"{Storm}", q"{Svendsen}", q"{Svensson}", q"{Sørensen}"
		, q"{Thomsen}", q"{Toft}", q"{Vestergaard}", q"{Villadsen}", q"{Vinther}", q"{Winther}" ];

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
		[ q"{Adam}", q"{Adrian}", q"{Ahmad}", q"{Aksel}", q"{Albert}", q"{Alexander}", q"{Alfred}", q"{Ali}"
		, q"{Anders}", q"{Andreas}", q"{Anton}", q"{Arthur}", q"{Arunthavanathan}", q"{August}", q"{Benjamin}"
		, q"{Bjørn}", q"{Brian}", q"{Carl}", q"{Christian}", q"{Christopher}", q"{Claus}", q"{Daniel}"
		, q"{David}", q"{Elias}", q"{Elliot}", q"{Emil}", q"{Erik}", q"{Esben}", q"{Felix}", q"{Frank}", q"{Frederik}"
		, q"{Georg}", q"{Hakim}", q"{Hans}", q"{Harald}", q"{Henrik}", q"{Ib}", q"{Ivan}", q"{Jacob}", q"{Jakob}"
		, q"{Jan}", q"{Jens}", q"{Jeppe}", q"{Jesper}", q"{Johan}", q"{John}", q"{Jonas}", q"{Jonathan}", q"{Jørgen}"
		, q"{Kaj}", q"{Karl-Emil}", q"{Karl-Johan}", q"{Karl}", q"{Kasper}", q"{Kevin}", q"{Kim}", q"{Kurt}"
		, q"{Lars}", q"{Lasse}", q"{Leif}", q"{Leo}", q"{Linus}", q"{Lucas}", q"{Lukas}", q"{Mads}", q"{Magnus}"
		, q"{Malthe}", q"{Mark}", q"{Martin}", q"{Mathias}", q"{Mathis}", q"{Max}", q"{Michael}", q"{Mikkel}"
		, q"{Mohammad}", q"{Morten}", q"{Nicklas}", q"{Niels-Christian}", q"{Niels}", q"{Niklas}", q"{Noah}"
		, q"{Ole}", q"{Oliver}", q"{Oscar}", q"{Otto}", q"{Patrick}", q"{Per}", q"{Peter}", q"{Philip}", q"{Poul}"
		, q"{Rasmus}", q"{Robert}", q"{Samuel}", q"{Sebastian}", q"{Sigurd}", q"{Simon}", q"{Steen}", q"{Stefan}"
		, q"{Stig}", q"{Sune}", q"{Svend}", q"{Søren}", q"{Theo}", q"{Thomas}", q"{Tim}", q"{Tobias}", q"{Troels}"
		, q"{Uffe}", q"{Ulrik}", q"{Vagn}", q"{Valdemar}", q"{Victor}", q"{Viggo}", q"{Viktor}", q"{Vilhelm}"
		, q"{Villy}", q"{Vincent}", q"{William}" ];

		return choice(strs, this.rnd);
	}

	override string personMaleMiddleName() {
		const string[] strs =
		[ q"{Birk}", q"{Bjerg}", q"{Bjerre}", q"{Bundgaard}", q"{Dahl}", q"{Dal}", q"{Dam}", q"{Feldt}", q"{Frost}"
		, q"{Grøn}", q"{Hald}", q"{Hjorth}", q"{Holm}", q"{Husum}", q"{Jul}", q"{Kjær}", q"{Klit}", q"{Koch}"
		, q"{Krog}", q"{Linde}", q"{Lund}", q"{Mose}", q"{Mølgaard}", q"{Nord}", q"{Præst}", q"{Rosen}"
		, q"{Skov}", q"{Smed}", q"{Vestergaard}", q"{Østergaard}" ];

		return choice(strs, this.rnd);
	}

	override string personMalePrefix() {
		const string[] strs =
		[ q"{hr.}" ];

		return choice(strs, this.rnd);
	}

	override string personMiddleName() {
		const string[] strs =
		[ q"{Birk}", q"{Bjerg}", q"{Bjerre}", q"{Bundgaard}", q"{Dahl}", q"{Dal}", q"{Dam}", q"{Feldt}", q"{Frost}"
		, q"{Grøn}", q"{Hald}", q"{Hjorth}", q"{Holm}", q"{Husum}", q"{Jul}", q"{Kjær}", q"{Klit}", q"{Koch}"
		, q"{Krog}", q"{Linde}", q"{Lund}", q"{Mose}", q"{Mølgaard}", q"{Nord}", q"{Præst}", q"{Rosen}"
		, q"{Skov}", q"{Smed}", q"{Vestergaard}", q"{Østergaard}" ];

		return choice(strs, this.rnd);
	}

	override string personName() {
		const int rndInt = uniform(0, 100, this.rnd);

		if(rndInt >= 0 && rndInt < 50) {
			return personFirstName() ~ " " ~ personLastName();
		}
		if(rndInt >= 50 && rndInt < 100) {
			return personFirstName() ~ " " ~ personMiddleName() ~ " " ~ personLastName();
		}

		return "";
	}

	override string personPrefix() {
		const string[] strs =
		[ q"{fr.}", q"{hr.}" ];

		return choice(strs, this.rnd);
	}

	override string personSex() {
		const string[] strs =
		[ q"{mand}", q"{kvinde}" ];

		return choice(strs, this.rnd);
	}

	override string phoneNumberFormats() {
		const string[] strs =
		[ q"{!# ## ## ##}", q"{!### ####}", q"{!#######}", q"{+45 !# ## ## ##}", q"{+45 !### ####}"
		, q"{+45 !#######}" ];

		return numberBuild(choice(strs, this.rnd));
	}

	override string wordAdjective() {
		const string[] strs =
		[ q"{aktiv}", q"{akut}", q"{alvorlig}", q"{anderledes}", q"{ansvarlig}", q"{automatisk}", q"{bekymret}"
		, q"{beslutsom}", q"{betagende}", q"{betydelig}", q"{bevidst}", q"{billig}", q"{blød}", q"{bred}"
		, q"{charmerende}", q"{dynamisk}", q"{dyr}", q"{dårlig}", q"{effektiv}", q"{elegant}", q"{energisk}"
		, q"{enestående}", q"{enkel}", q"{entusiastisk}", q"{fantastisk}", q"{farlig}", q"{farverig}"
		, q"{fattig}", q"{fleksibel}", q"{flittig}", q"{flydende}", q"{forbløffende}", q"{fordelagtig}"
		, q"{forfærdelig}", q"{fornuftig}", q"{forstående}", q"{fremragende}", q"{frisk}", q"{frodig}"
		, q"{frugtbar}", q"{fuldstændig}", q"{følsom}", q"{førsteklasses}", q"{glad}", q"{glamourøs}"
		, q"{grundig}", q"{grusom}", q"{gæv}", q"{gådefuld}", q"{hastig}", q"{hensynsfuld}", q"{hjertelig}"
		, q"{hurtig}", q"{hård}", q"{imponerende}", q"{intelligent}", q"{intens}", q"{interessant}"
		, q"{ivrig}", q"{kendt}", q"{klog}", q"{kold}", q"{komfortabel}", q"{kompleks}", q"{konkurrencedygtig}"
		, q"{kraftfuld}", q"{kreativ}", q"{krydret}", q"{kærlig}", q"{larmende}", q"{lav}", q"{ledig}"
		, q"{let}", q"{loyal}", q"{lun}", q"{lækker}", q"{mager}", q"{magtfuld}", q"{meget}", q"{mild}", q"{modig}"
		, q"{mærkelig}", q"{møjsommelig}", q"{naturtro}", q"{nyttig}", q"{nødvendig}", q"{nøjagtig}"
		, q"{omhyggelig}", q"{omtænksom}", q"{original}", q"{overraskende}", q"{parat}", q"{positiv}"
		, q"{praktisk}", q"{præcis}", q"{rask}", q"{rimelig}", q"{rolig}", q"{rund}", q"{rå}", q"{sammenhængende}"
		, q"{selvsikker}", q"{sikker}", q"{simpel}", q"{sjov}", q"{skarp}", q"{skræmmende}", q"{skøn}"
		, q"{slank}", q"{smagfuld}", q"{smuk}", q"{snedig}", q"{solid}", q"{spændende}", q"{stille}", q"{stolt}"
		, q"{strålende}", q"{stærk}", q"{sund}", q"{svag}", q"{sød}", q"{tapper}", q"{tilfreds}", q"{tilgængelig}"
		, q"{trofast}", q"{trænet}", q"{tydelig}", q"{tålmodig}", q"{uafhængig}", q"{ubegrænset}"
		, q"{ubekymret}", q"{uenig}", q"{uformel}", q"{uhindret}", q"{uhøflig}", q"{ulige}", q"{ulykkelig}"
		, q"{umiddelbar}", q"{umulig}", q"{unik}", q"{unnaturlig}", q"{usædvanlig}", q"{utrolig}", q"{utålmodig}"
		, q"{varm}", q"{venlig}", q"{vigtig}", q"{vild}", q"{virkelig}", q"{vis}", q"{vittig}", q"{ægte}"
		, q"{ærgerlig}", q"{øm}", q"{ønskelig}", q"{åben}", q"{åbenhjertig}" ];

		return choice(strs, this.rnd);
	}

	override string wordAdverb() {
		const string[] strs =
		[ q"{aldrig}", q"{allerede}", q"{altid}", q"{andensteds}", q"{baglæns}", q"{bestemt}", q"{derefter}"
		, q"{endelig}", q"{forbi}", q"{forgæves}", q"{først}", q"{hastigt}", q"{heldigvis}", q"{her}"
		, q"{igen}", q"{imidlertid}", q"{imorgen}", q"{indimellem}", q"{jo}", q"{kun}", q"{lige}", q"{meget}"
		, q"{måske}", q"{næppe}", q"{næsten}", q"{ofte}", q"{også}", q"{omhyggeligt}", q"{overalt}"
		, q"{pludselig}", q"{sammen}", q"{sandsynligvis}", q"{selvfølgelig}", q"{snart}", q"{stadig}"
		, q"{straks}", q"{tit}", q"{udenfor}", q"{undervejs}", q"{uskadt}", q"{vanligvis}" ];

		return choice(strs, this.rnd);
	}

	override string wordConjunction() {
		const string[] strs =
		[ q"{altså}", q"{at}", q"{da}", q"{der}", q"{dog}", q"{efter}", q"{efterhånden}", q"{eller}", q"{end}"
		, q"{enten}", q"{for}", q"{fordi}", q"{før}", q"{hvad}", q"{hvem}", q"{hvis}", q"{hvor}", q"{hvordan}"
		, q"{hvorfor}", q"{hvorvidt}", q"{idet}", q"{imens}", q"{indtil}", q"{ligesom}", q"{men}", q"{mens}"
		, q"{når}", q"{og}", q"{om}", q"{selvom}", q"{siden}", q"{skønt}", q"{som}", q"{så}" ];

		return choice(strs, this.rnd);
	}

	override string wordInterjection() {
		const string[] strs =
		[ q"{ah}", q"{av}", q"{haha}", q"{hallo}", q"{hej}", q"{hov}", q"{hurra}", q"{ih}", q"{ja}", q"{nej}", q"{oh}"
		, q"{pyha}", q"{tja}", q"{uf}", q"{uh}", q"{wow}", q"{æv}", q"{øv}" ];

		return choice(strs, this.rnd);
	}

	override string wordNoun() {
		const string[] strs =
		[ q"{afsnit}", q"{afstand}", q"{aften}", q"{alderdom}", q"{antal}", q"{arbejde}", q"{artikel}", q"{avis}"
		, q"{bad}", q"{balkon}", q"{bank}", q"{bar}", q"{barn}", q"{beslutning}", q"{betydning}", q"{bibliotek}"
		, q"{bil}", q"{billede}", q"{billet}", q"{bjerg}", q"{blomst}", q"{blyant}", q"{bog}", q"{bord}", q"{bredde}"
		, q"{brev}", q"{bro}", q"{bund}", q"{butik}", q"{by}", q"{bygning}", q"{børnehave}", q"{cafe}", q"{center}"
		, q"{chance}", q"{computer}", q"{cykel}", q"{dag}", q"{dal}", q"{del}", q"{dybde}", q"{dør}", q"{effekt}"
		, q"{efterår}", q"{elevator}", q"{erhverv}", q"{farve}", q"{fase}", q"{ferie}", q"{fest}", q"{film}"
		, q"{fisk}", q"{fjernsyn}", q"{flade}", q"{flod}", q"{folk}", q"{forår}", q"{fugl}", q"{funktion}"
		, q"{fødsel}", q"{gade}", q"{galakse}", q"{grund}", q"{gruppe}", q"{gulv}", q"{hav}", q"{have}", q"{havn}"
		, q"{historie}", q"{hjørne}", q"{hospital}", q"{hotel}", q"{hund}", q"{hus}", q"{højde}", q"{indhold}"
		, q"{institution}", q"{job}", q"{kant}", q"{kapitel}", q"{karriere}", q"{kat}", q"{kategori}", q"{kilde}"
		, q"{kirke}", q"{klasse}", q"{klima}", q"{klub}", q"{konsekvens}", q"{konto}", q"{kort}", q"{kredit}"
		, q"{kulde}", q"{kultur}", q"{kunst}", q"{kælder}", q"{køkken}", q"{land}", q"{lejlighed}", q"{linje}"
		, q"{liv}", q"{lufthavn}", q"{lyn}", q"{længde}", q"{løsning}", q"{lån}", q"{magasin}", q"{maleri}"
		, q"{metode}", q"{middag}", q"{miljø}", q"{minut}", q"{morgen}", q"{moske}", q"{mulighed}", q"{museum}"
		, q"{musik}", q"{myndighed}", q"{mængde}", q"{mønt}", q"{mål}", q"{måne}", q"{måned}", q"{nat}"
		, q"{nation}", q"{natur}", q"{ord}", q"{organisation}", q"{papir}", q"{park}", q"{pen}", q"{penge}"
		, q"{planet}", q"{pris}", q"{problem}", q"{proces}", q"{profession}", q"{punkt}", q"{radio}", q"{regering}"
		, q"{regn}", q"{restaurant}", q"{resultat}", q"{retning}", q"{risiko}", q"{rolle}", q"{rum}", q"{samfund}"
		, q"{scene}", q"{seddel}", q"{sekund}", q"{selskab}", q"{serie}", q"{side}", q"{skole}", q"{skov}"
		, q"{skulptur}", q"{sky}", q"{sne}", q"{sol}", q"{sommer}", q"{soveværelse}", q"{spil}", q"{spørgsmål}"
		, q"{stat}", q"{station}", q"{stjerne}", q"{stol}", q"{storm}", q"{strand}", q"{stue}", q"{størrelse}"
		, q"{supermarked}", q"{svar}", q"{synagoge}", q"{system}", q"{sætning}", q"{sø}", q"{tag}", q"{teater}"
		, q"{tegning}", q"{tempel}", q"{temperatur}", q"{terrasse}", q"{tid}", q"{time}", q"{top}", q"{torden}"
		, q"{tradition}", q"{trappe}", q"{trin}", q"{træ}", q"{tunnel}", q"{type}", q"{udstilling}", q"{uge}"
		, q"{ungdom}", q"{univers}", q"{universitet}", q"{valg}", q"{varme}", q"{vej}", q"{vejr}", q"{video}"
		, q"{vind}", q"{vindue}", q"{vinter}", q"{virksomhed}", q"{voksen}", q"{væg}", q"{vægt}", q"{værdi}"
		, q"{ø}", q"{år}", q"{årsag}", q"{årstid}" ];

		return choice(strs, this.rnd);
	}

	override string wordPreposition() {
		const string[] strs =
		[ q"{ad}", q"{af}", q"{bag}", q"{efter}", q"{for}", q"{fra}", q"{før}", q"{gennem}", q"{henover}", q"{hos}"
		, q"{i}", q"{imod}", q"{langs}", q"{med}", q"{mellem}", q"{mod}", q"{om}", q"{omkring}", q"{over}", q"{på}"
		, q"{til}", q"{tværs}", q"{uden}", q"{under}", q"{ved}" ];

		return choice(strs, this.rnd);
	}

	override string wordVerb() {
		const string[] strs =
		[ q"{absorbere}", q"{acceptere}", q"{anbefale}", q"{anerkende}", q"{anmelde}", q"{anmode}", q"{anvende}"
		, q"{arbejde}", q"{besøge}", q"{betale}", q"{bo}", q"{bruge}", q"{brænde}", q"{bygge}", q"{bære}"
		, q"{bøje}", q"{cykle}", q"{danne}", q"{danse}", q"{deltage}", q"{diskutere}", q"{drikke}", q"{drive}"
		, q"{drømme}", q"{dykke}", q"{elske}", q"{estimere}", q"{etablere}", q"{falde}", q"{fange}", q"{finde}"
		, q"{fjerne}", q"{forstå}", q"{forsøge}", q"{føle}", q"{få}", q"{gemme}", q"{gide}", q"{give}"
		, q"{gnide}", q"{gøgle}", q"{gøre}", q"{gå}", q"{have}", q"{hjælpe}", q"{holde}", q"{høre}", q"{kalde}"
		, q"{knipse}", q"{koge}", q"{komme}", q"{kunne}", q"{købe}", q"{lave}", q"{leve}", q"{lytte}", q"{lære}"
		, q"{læse}", q"{løbe}", q"{løfte}", q"{male}", q"{mene}", q"{miste}", q"{motivere}", q"{møde}"
		, q"{måle}", q"{nive}", q"{nyde}", q"{nægte}", q"{nævne}", q"{pege}", q"{pjække}", q"{plante}"
		, q"{plukke}", q"{prøve}", q"{pynte}", q"{rejse}", q"{ringe}", q"{rive}", q"{se}", q"{sige}", q"{skrive}"
		, q"{sove}", q"{spille}", q"{spise}", q"{spørge}", q"{starte}", q"{svømme}", q"{synes}", q"{synge}"
		, q"{sætte}", q"{søge}", q"{tage}", q"{tale}", q"{tjene}", q"{træne}", q"{tænke}", q"{udforske}"
		, q"{udføre}", q"{udgive}", q"{udleje}", q"{undervise}", q"{vandre}", q"{vide}", q"{ville}", q"{vise}"
		, q"{vokse}", q"{vælge}", q"{være}", q"{ønske}" ];

		return choice(strs, this.rnd);
	}

}

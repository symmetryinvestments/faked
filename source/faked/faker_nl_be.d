module faked.faker_nl_be;

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

import faked.faker_nl;

class Faker_nl_be : Faker_nl {
@safe:
	this(int seed) {
		super(seed);
	}

	override string companySuffix() {
		const string[] strs =
		[ q"{NV}", q"{BVBA}", q"{CVBA}", q"{VZW}" ];

		return choice(strs, this.rnd);
	}

	override string internetDomainSuffix() {
		const string[] strs =
		[ q"{be}", q"{brussels}", q"{vlaanderen}", q"{com}", q"{net}", q"{org}" ];

		return choice(strs, this.rnd);
	}

	override string internetFreeEmail() {
		const string[] strs =
		[ q"{gmail.com}", q"{yahoo.com}", q"{hotmail.com}", q"{skynet.be}" ];

		return choice(strs, this.rnd);
	}

	override string locationBuildingNumber() {
		const string[] strs =
		[ q"{#}", q"{##}", q"{###}", q"{###a}", q"{###b}", q"{###c}" ];

		return numberBuild(choice(strs, this.rnd));
	}

	override string locationCityPattern() {
		final switch(uniform(0, 2, this.rnd)) {
			case 0: return locationCityPrefix();
			case 1: return locationCityPrefix() ~ locationCitySuffix();
		}
		return "";
	}

	override string locationCityPrefix() {
		const string[] strs =
		[ q"{'s Herenelderen}", q"{'s-Gravenvoeren}", q"{'s-Gravenwezel}", q"{Aaigem}", q"{Aalbeke}"
		, q"{Aalst}", q"{Aalter}", q"{Aarschot}", q"{Aarsele}", q"{Aartrijke}", q"{Aartselaar}", q"{Achel}"
		, q"{Adegem}", q"{Adinkerke}", q"{Afsnee}", q"{Alken}", q"{Alsemberg}", q"{Alveringem}", q"{Antwerpen}"
		, q"{Anzegem}", q"{Appels}", q"{Appelterre-Eichem}", q"{Ardooie}", q"{Arendonk}", q"{As}", q"{Aspelare}"
		, q"{Asper}", q"{Asse}", q"{Assebroek}", q"{Assenede}", q"{Assent}", q"{Astene}", q"{Attenhoven}"
		, q"{Attenrode-Wever}", q"{Avekapelle}", q"{Avelgem}", q"{Averbode}", q"{Baaigem}", q"{Baal}"
		, q"{Baardegem}", q"{Baarle-Hertog}", q"{Baasrode}", q"{Bachte-Maria-Leerne}", q"{Balegem}"
		, q"{Balen}", q"{Bambrugge}", q"{Bassevelde}", q"{Batsheers}", q"{Bavegem}", q"{Bavikhove}"
		, q"{Bazel}", q"{Beek}", q"{Beerlegem}", q"{Beernem}", q"{Beerse}", q"{Beersel}", q"{Beerst}", q"{Beert}"
		, q"{Beervelde}", q"{Beerzel}", q"{Begijnendijk}", q"{Beigem}", q"{Bekegem}", q"{Bekkerzeel}"
		, q"{Bekkevoort}", q"{Bellegem}", q"{Bellem}", q"{Bellingen}", q"{Belsele}", q"{Berbroek}", q"{Berchem}"
		, q"{Berendrecht-Zandvliet-Lillo}", q"{Berg}", q"{Beringen}", q"{Berlaar}", q"{Berlare}"
		, q"{Berlingen}", q"{Bertem}", q"{Beselare}", q"{Betekom}", q"{Bevel}", q"{Bever}", q"{Bevere}"
		, q"{Beveren}", q"{Beverlo}", q"{Beverst}", q"{Bierbeek}", q"{Bikschote}", q"{Bilzen}", q"{Binderveld}"
		, q"{Binkom}", q"{Bissegem}", q"{Blaasveld}", q"{Blanden}", q"{Blankenberge}", q"{Bocholt}"
		, q"{Boechout}", q"{Boekhout}", q"{Boekhoute}", q"{Boezinge}", q"{Bogaarden}", q"{Bommershoven}"
		, q"{Bonheiden}", q"{Booischot}", q"{Booitshoeke}", q"{Boom}", q"{Boorsem}", q"{Boortmeerbeek}"
		, q"{Borchtlombeek}", q"{Borgerhout}", q"{Borgloon}", q"{Borlo}", q"{Bornem}", q"{Borsbeek}"
		, q"{Borsbeke}", q"{Bossuit}", q"{Bost}", q"{Bottelare}", q"{Boutersem}", q"{Bouwel}", q"{Bovekerke}"
		, q"{Brasschaat}", q"{Brecht}", q"{Bredene}", q"{Bree}", q"{Breendonk}", q"{Brielen}", q"{Broechem}"
		, q"{Broekom}", q"{Brugge}", q"{Brussegem}", q"{Brustem}", q"{Budingen}", q"{Buggenhout}", q"{Buizingen}"
		, q"{Buken}", q"{Bulskamp}", q"{Bunsbeek}", q"{Burcht}", q"{Burst}", q"{Buvingen}", q"{Dadizele}"
		, q"{Daknam}", q"{Damme}", q"{De Klinge}", q"{De Moeren}", q"{De Panne}", q"{De Pinte}", q"{Deerlijk}"
		, q"{Deftinge}", q"{Deinze}", q"{Denderbelle}", q"{Denderhoutem}", q"{Denderleeuw}", q"{Dendermonde}"
		, q"{Denderwindeke}", q"{Dentergem}", q"{Dessel}", q"{Desselgem}", q"{Destelbergen}", q"{Desteldonk}"
		, q"{Deurle}", q"{Deurne}", q"{Diegem}", q"{Diepenbeek}", q"{Diest}", q"{Diets-Heur}", q"{Dikkebus}"
		, q"{Dikkele}", q"{Dikkelvenne}", q"{Diksmuide}", q"{Dilbeek}", q"{Dilsen}", q"{Doel}", q"{Donk}"
		, q"{Dormaal}", q"{Dranouter}", q"{Drieslinter}", q"{Drogenbos}", q"{Drongen}", q"{Dudzele}"
		, q"{Duffel}", q"{Duisburg}", q"{Duras}", q"{Dworp}", q"{Edegem}", q"{Edelare}", q"{Eeklo}", q"{Eernegem}"
		, q"{Egem}", q"{Eggewaartskapelle}", q"{Eigenbilzen}", q"{Eindhout}", q"{Eine}", q"{Eisden}"
		, q"{Eke}", q"{Ekeren}", q"{Eksaarde}", q"{Eksel}", q"{Elen}", q"{Elene}", q"{Elewijt}", q"{Eliksem}"
		, q"{Elingen}", q"{Ellikom}", q"{Elsegem}", q"{Elst}", q"{Elverdinge}", q"{Elversele}", q"{Emblem}"
		, q"{Emelgem}", q"{Ename}", q"{Engelmanshoven}", q"{Eppegem}", q"{Erembodegem}", q"{Erondegem}"
		, q"{Erpe}", q"{Erps-Kwerps}", q"{Ertvelde}", q"{Erwetegem}", q"{Esen}", q"{Essen}", q"{Essene}"
		, q"{Etikhove}", q"{Ettelgem}", q"{Everbeek}", q"{Everberg}", q"{Evergem}", q"{Ezemaal}", q"{Gaasbeek}"
		, q"{Galmaarden}", q"{Gavere}", q"{Geel}", q"{Geetbets}", q"{Gelinden}", q"{Gellik}", q"{Gelrode}"
		, q"{Geluveld}", q"{Geluwe}", q"{Genk}", q"{Genoelselderen}", q"{Gent}", q"{Gentbrugge}", q"{Geraardsbergen}"
		, q"{Gerdingen}", q"{Gestel}", q"{Gierle}", q"{Gijverinkhove}", q"{Gijzegem}", q"{Gijzelbrechtegem}"
		, q"{Gijzenzele}", q"{Gingelom}", q"{Gistel}", q"{Gits}", q"{Glabbeek-Zuurbemde}", q"{Godveerdegem}"
		, q"{Goeferdinge}", q"{Goetsenhoven}", q"{Gontrode}", q"{Gooik}", q"{Gors-Opleeuw}", q"{Gorsem}"
		, q"{Gotem}", q"{Gottem}", q"{Grammene}", q"{Grazen}", q"{Grembergen}", q"{Grimbergen}", q"{Grimminge}"
		, q"{Grobbendonk}", q"{Groot-Bijgaarden}", q"{Groot-Gelmen}", q"{Groot-Loon}", q"{Grote-Brogel}"
		, q"{Grote-Spouwen}", q"{Grotenberge}", q"{Gruitrode}", q"{Guigoven}", q"{Gullegem}", q"{Gutschoven}"
		, q"{Haacht}", q"{Haaltert}", q"{Haasdonk}", q"{Haasrode}", q"{Hakendover}", q"{Halen}", q"{Hallaar}"
		, q"{Halle}", q"{Halle-Booienhoven}", q"{Halmaal}", q"{Hamme}", q"{Hamont}", q"{Handzame}", q"{Hansbeke}"
		, q"{Harelbeke}", q"{Hasselt}", q"{Hechtel}", q"{Heers}", q"{Hees}", q"{Heestert}", q"{Heffen}"
		, q"{Heikruis}", q"{Heindonk}", q"{Heist}", q"{Heist-op-den-Berg}", q"{Hekelgem}", q"{Heks}"
		, q"{Helchteren}", q"{Heldergem}", q"{Helen-Bos}", q"{Helkijn}", q"{Hemelveerdegem}", q"{Hemiksem}"
		, q"{Hendrieken}", q"{Henis}", q"{Heppen}", q"{Herderen}", q"{Herdersem}", q"{Herent}", q"{Herentals}"
		, q"{Herenthout}", q"{Herfelingen}", q"{Herk-de-Stad}", q"{Herne}", q"{Herselt}", q"{Herstappe}"
		, q"{Herten}", q"{Hertsberge}", q"{Herzele}", q"{Heule}", q"{Heurne}", q"{Heusden}", q"{Hever}"
		, q"{Heverlee}", q"{Hillegem}", q"{Hingene}", q"{Hoboken}", q"{Hoegaarden}", q"{Hoeilaart}"
		, q"{Hoeke}", q"{Hoelbeek}", q"{Hoeleden}", q"{Hoepertingen}", q"{Hoeselt}", q"{Hoevenen}", q"{Hofstade}"
		, q"{Hollebeke}", q"{Holsbeek}", q"{Hombeek}", q"{Hooglede}", q"{Hoogstade}", q"{Hoogstraten}"
		, q"{Horpmaal}", q"{Houtave}", q"{Houtem}", q"{Houthalen}", q"{Houthulst}", q"{Houtvenne}", q"{Houwaart}"
		, q"{Hove}", q"{Huise}", q"{Huizingen}", q"{Huldenberg}", q"{Hulshout}", q"{Hulste}", q"{Humbeek}"
		, q"{Hundelgem}", q"{Ichtegem}", q"{Iddergem}", q"{Idegem}", q"{Ieper}", q"{Impe}", q"{Ingelmunster}"
		, q"{Ingooigem}", q"{Itegem}", q"{Itterbeek}", q"{Izegem}", q"{Izenberge}", q"{Jabbeke}", q"{Jesseren}"
		, q"{Jeuk}", q"{Kaaskerke}", q"{Kachtem}", q"{Kaggevinne}", q"{Kalken}", q"{Kallo}", q"{Kalmthout}"
		, q"{Kampenhout}", q"{Kanegem}", q"{Kanne}", q"{Kapelle-op-den-Bos}", q"{Kapellen}", q"{Kaprijke}"
		, q"{Kaster}", q"{Kasterlee}", q"{Kaulille}", q"{Keerbergen}", q"{Keiem}", q"{Kemmel}", q"{Kemzeke}"
		, q"{Kerkhove}", q"{Kerkom}", q"{Kerkom-bij-Sint-Truiden}", q"{Kerksken}", q"{Kermt}", q"{Kerniel}"
		, q"{Kersbeek-Miskom}", q"{Kessel}", q"{Kessel-Lo}", q"{Kessenich}", q"{Kester}", q"{Kieldrecht}"
		, q"{Kinrooi}", q"{Klein-Gelmen}", q"{Kleine-Brogel}", q"{Kleine-Spouwen}", q"{Klemskerke}"
		, q"{Klerken}", q"{Kluizen}", q"{Knesselare}", q"{Knokke}", q"{Kobbegem}", q"{Koekelare}", q"{Koersel}"
		, q"{Koksijde}", q"{Koningshooikt}", q"{Koninksem}", q"{Kontich}", q"{Kooigem}", q"{Koolkerke}"
		, q"{Koolskamp}", q"{Korbeek-Dijle}", q"{Korbeek-Lo}", q"{Kortemark}", q"{Kortenaken}", q"{Kortenberg}"
		, q"{Kortessem}", q"{Kortijs}", q"{Kortrijk}", q"{Kortrijk-Dutsel}", q"{Kozen}", q"{Kraainem}"
		, q"{Krombeke}", q"{Kruibeke}", q"{Kruishoutem}", q"{Kumtich}", q"{Kuringen}", q"{Kuttekoven}"
		, q"{Kuurne}", q"{Kwaadmechelen}", q"{Kwaremont}", q"{Laar}", q"{Laarne}", q"{Lampernisse}"
		, q"{Lanaken}", q"{Landegem}", q"{Landen}", q"{Landskouter}", q"{Langdorp}", q"{Langemark}"
		, q"{Lanklaar}", q"{Lapscheure}", q"{Lauw}", q"{Lauwe}", q"{Lebbeke}", q"{Lede}", q"{Ledeberg}"
		, q"{Ledegem}", q"{Leefdaal}", q"{Leerbeek}", q"{Leest}", q"{Leeuwergem}", q"{Leffinge}", q"{Leisele}"
		, q"{Leke}", q"{Lembeek}", q"{Lembeke}", q"{Lemberge}", q"{Lendelede}", q"{Leopoldsburg}", q"{Letterhoutem}"
		, q"{Leupegem}", q"{Leut}", q"{Leuven}", q"{Lichtaart}", q"{Lichtervelde}", q"{Liedekerke}"
		, q"{Lieferinge}", q"{Lier}", q"{Liezele}", q"{Lille}", q"{Linden}", q"{Linkebeek}", q"{Linkhout}"
		, q"{Lint}", q"{Lippelo}", q"{Lissewege}", q"{Lo}", q"{Lochristi}", q"{Loenhout}", q"{Loker}", q"{Lokeren}"
		, q"{Loksbergen}", q"{Lombardsijde}", q"{Lommel}", q"{Londerzeel}", q"{Loonbeek}", q"{Loppem}"
		, q"{Lot}", q"{Lotenhulle}", q"{Lovendegem}", q"{Lovenjoel}", q"{Lubbeek}", q"{Lummen}", q"{Maarke-Kerkem}"
		, q"{Maaseik}", q"{Machelen}", q"{Mal}", q"{Maldegem}", q"{Malderen}", q"{Mannekensvere}", q"{Mariakerke}"
		, q"{Mariekerke}", q"{Marke}", q"{Markegem}", q"{Martenslinde}", q"{Massemen}", q"{Massenhoven}"
		, q"{Mater}", q"{Mazenzele}", q"{Mechelen}", q"{Mechelen-Bovelingen}", q"{Mechelen-aan-de-Maas}"
		, q"{Meensel-Kiezegem}", q"{Meer}", q"{Meerbeek}", q"{Meerbeke}", q"{Meerdonk}", q"{Meerhout}"
		, q"{Meerle}", q"{Meeswijk}", q"{Meetkerke}", q"{Meeuwen}", q"{Meigem}", q"{Meilegem}", q"{Meise}"
		, q"{Melden}", q"{Meldert}", q"{Melkwezer}", q"{Melle}", q"{Melsbroek}", q"{Melsele}", q"{Melsen}"
		, q"{Membruggen}", q"{Mendonk}", q"{Menen}", q"{Merchtem}", q"{Mere}", q"{Merelbeke}", q"{Merendree}"
		, q"{Merkem}", q"{Merksem}", q"{Merksplas}", q"{Mesen}", q"{Mespelare}", q"{Messelbroek}", q"{Mettekoven}"
		, q"{Meulebeke}", q"{Michelbeke}", q"{Middelburg}", q"{Middelkerke}", q"{Mielen-boven-Aalst}"
		, q"{Millen}", q"{Minderhout}", q"{Moelingen}", q"{Moen}", q"{Moerbeke}", q"{Moere}", q"{Moerkerke}"
		, q"{Moerzeke}", q"{Mol}", q"{Molenbeek-Wersbeek}", q"{Molenbeersel}", q"{Molenstede}", q"{Mollem}"
		, q"{Montenaken}", q"{Moorsel}", q"{Moorsele}", q"{Moorslede}", q"{Moortsele}", q"{Mopertingen}"
		, q"{Moregem}", q"{Morkhoven}", q"{Mortsel}", q"{Muizen}", q"{Mullem}", q"{Munkzwalm}", q"{Munsterbilzen}"
		, q"{Munte}", q"{Nazareth}", q"{Nederboelare}", q"{Nederbrakel}", q"{Nederename}", q"{Nederhasselt}"
		, q"{Nederokkerzeel}", q"{Nederzwalm-Hermelgem}", q"{Neerglabbeek}", q"{Neerharen}", q"{Neerhespen}"
		, q"{Neerijse}", q"{Neerlanden}", q"{Neerlinter}", q"{Neeroeteren}", q"{Neerpelt}", q"{Neerrepen}"
		, q"{Neervelp}", q"{Neerwinden}", q"{Neigem}", q"{Nerem}", q"{Nevele}", q"{Niel}", q"{Niel-bij-As}"
		, q"{Niel-bij-Sint-Truiden}", q"{Nieuwenhove}", q"{Nieuwenrode}", q"{Nieuwerkerken}", q"{Nieuwkapelle}"
		, q"{Nieuwkerke}", q"{Nieuwkerken-Waas}", q"{Nieuwmunster}", q"{Nieuwpoort}", q"{Nieuwrode}"
		, q"{Nijlen}", q"{Ninove}", q"{Nokere}", q"{Noorderwijk}", q"{Noordschote}", q"{Nossegem}", q"{Nukerke}"
		, q"{Oedelem}", q"{Oekene}", q"{Oelegem}", q"{Oeren}", q"{Oeselgem}", q"{Oetingen}", q"{Oevel}"
		, q"{Okegem}", q"{Olen}", q"{Olmen}", q"{Olsene}", q"{Onkerzele}", q"{Onze-Lieve-Vrouw-Lombeek}"
		, q"{Onze-Lieve-Vrouw-Waver}", q"{Ooigem}", q"{Ooike}", q"{Oombergen}", q"{Oorbeek}", q"{Oordegem}"
		, q"{Oostakker}", q"{Oostduinkerke}", q"{Oosteeklo}", q"{Oostende}", q"{Oosterzele}", q"{Oostham}"
		, q"{Oostkamp}", q"{Oostkerke}", q"{Oostmalle}", q"{Oostnieuwkerke}", q"{Oostrozebeke}", q"{Oostvleteren}"
		, q"{Oostwinkel}", q"{Opbrakel}", q"{Opdorp}", q"{Opglabbeek}", q"{Opgrimbie}", q"{Ophasselt}"
		, q"{Opheers}", q"{Ophoven}", q"{Opitter}", q"{Oplinter}", q"{Opoeteren}", q"{Oppuurs}", q"{Opvelp}"
		, q"{Opwijk}", q"{Ordingen}", q"{Orsmaal-Gussenhoven}", q"{Otegem}", q"{Ottenburg}", q"{Ottergem}"
		, q"{Oud-Heverlee}", q"{Oud-Turnhout}", q"{Oudegem}", q"{Oudekapelle}", q"{Oudenaarde}", q"{Oudenaken}"
		, q"{Oudenburg}", q"{Outer}", q"{Outgaarden}", q"{Outrijve}", q"{Ouwegem}", q"{Overboelare}"
		, q"{Overhespen}", q"{Overijse}", q"{Overmere}", q"{Overpelt}", q"{Overrepen}", q"{Overwinden}"
		, q"{Paal}", q"{Pamel}", q"{Parike}", q"{Passendale}", q"{Paulatem}", q"{Peer}", q"{Pellenberg}"
		, q"{Pepingen}", q"{Perk}", q"{Pervijze}", q"{Petegem-aan-de-Leie}", q"{Petegem-aan-de-Schelde}"
		, q"{Peutie}", q"{Piringen}", q"{Pittem}", q"{Poederlee}", q"{Poeke}", q"{Poelkapelle}", q"{Poesele}"
		, q"{Pollare}", q"{Pollinkhove}", q"{Poperinge}", q"{Poppel}", q"{Proven}", q"{Pulderbos}", q"{Pulle}"
		, q"{Putte}", q"{Puurs}", q"{Ramsdonk}", q"{Ramsel}", q"{Ramskapelle}", q"{Ransberg}", q"{Ranst}"
		, q"{Ravels}", q"{Reet}", q"{Rekem}", q"{Rekkem}", q"{Relegem}", q"{Remersdaal}", q"{Reninge}"
		, q"{Reningelst}", q"{Reppel}", q"{Ressegem}", q"{Retie}", q"{Riemst}", q"{Rijkel}", q"{Rijkevorsel}"
		, q"{Rijkhoven}", q"{Rijmenam}", q"{Riksingen}", q"{Rillaar}", q"{Roborst}", q"{Roesbrugge-Haringe}"
		, q"{Roeselare}", q"{Roksem}", q"{Rollegem}", q"{Rollegem-Kapelle}", q"{Romershoven}", q"{Ronse}"
		, q"{Ronsele}", q"{Roosbeek}", q"{Rosmeer}", q"{Rotem}", q"{Rotselaar}", q"{Rozebeke}", q"{Ruddervoorde}"
		, q"{Ruien}", q"{Ruisbroek}", q"{Ruiselede}", q"{Rukkelingen-Loon}", q"{Rumbeke}", q"{Rummen}"
		, q"{Rumsdorp}", q"{Rumst}", q"{Runkelen}", q"{Rupelmonde}", q"{Rutten}", q"{Schaffen}", q"{Schalkhoven}"
		, q"{Schelderode}", q"{Scheldewindeke}", q"{Schelle}", q"{Schellebelle}", q"{Schendelbeke}"
		, q"{Schepdaal}", q"{Scherpenheuvel}", q"{Schilde}", q"{Schoonaarde}", q"{Schore}", q"{Schorisse}"
		, q"{Schoten}", q"{Schriek}", q"{Schuiferskapelle}", q"{Schulen}", q"{Semmerzake}", q"{Serskamp}"
		, q"{Sijsele}", q"{Sinaai}", q"{Sint-Agatha-Rode}", q"{Sint-Amands}", q"{Sint-Amandsberg}"
		, q"{Sint-Andries}", q"{Sint-Antelinks}", q"{Sint-Baafs-Vijve}", q"{Sint-Blasius-Boekel}"
		, q"{Sint-Denijs}", q"{Sint-Denijs-Boekel}", q"{Sint-Denijs-Westrem}", q"{Sint-Eloois-Vijve}"
		, q"{Sint-Eloois-Winkel}", q"{Sint-Genesius-Rode}", q"{Sint-Gillis-Waas}", q"{Sint-Gillis-bij-Dendermonde}"
		, q"{Sint-Goriks-Oudenhove}", q"{Sint-Huibrechts-Hern}", q"{Sint-Huibrechts-Lille}"
		, q"{Sint-Jacobskapelle}", q"{Sint-Jan}", q"{Sint-Jan-in-Eremo}", q"{Sint-Job-in-'t-Goor}"
		, q"{Sint-Joris}", q"{Sint-Joris-Weert}", q"{Sint-Joris-Winge}", q"{Sint-Katelijne-Waver}"
		, q"{Sint-Katherina-Lombeek}", q"{Sint-Kornelis-Horebeke}", q"{Sint-Kruis}", q"{Sint-Kruis-Winkel}"
		, q"{Sint-Kwintens-Lennik}", q"{Sint-Lambrechts-Herk}", q"{Sint-Laureins}", q"{Sint-Laureins-Berchem}"
		, q"{Sint-Lenaarts}", q"{Sint-Lievens-Esse}", q"{Sint-Lievens-Houtem}", q"{Sint-Margriete}"
		, q"{Sint-Margriete-Houtem}", q"{Sint-Maria-Horebeke}", q"{Sint-Maria-Latem}", q"{Sint-Maria-Lierde}"
		, q"{Sint-Maria-Oudenhove}", q"{Sint-Martens-Bodegem}", q"{Sint-Martens-Latem}", q"{Sint-Martens-Leerne}"
		, q"{Sint-Martens-Lennik}", q"{Sint-Martens-Lierde}", q"{Sint-Martens-Voeren}", q"{Sint-Michiels}"
		, q"{Sint-Niklaas}", q"{Sint-Pauwels}", q"{Sint-Pieters-Kapelle}", q"{Sint-Pieters-Leeuw}"
		, q"{Sint-Pieters-Rode}", q"{Sint-Pieters-Voeren}", q"{Sint-Rijkers}", q"{Sint-Stevens-Woluwe}"
		, q"{Sint-Truiden}", q"{Sint-Ulriks-Kapelle}", q"{Sleidinge}", q"{Slijpe}", q"{Sluizen}"
		, q"{Smeerebbe-Vloerzegem}", q"{Smetlede}", q"{Snaaskerke}", q"{Snellegem}", q"{Spalbeek}"
		, q"{Spiere}", q"{Stabroek}", q"{Staden}", q"{Stalhille}", q"{Stavele}", q"{Steendorp}", q"{Steenhuffel}"
		, q"{Steenhuize-Wijnhuize}", q"{Steenkerke}", q"{Steenokkerzeel}", q"{Stekene}", q"{Stene}"
		, q"{Sterrebeek}", q"{Stevoort}", q"{Stokkem}", q"{Stokrooie}", q"{Strijpen}", q"{Strijtem}"
		, q"{Strombeek-Bever}", q"{Stuivekenskerke}", q"{Temse}", q"{Teralfene}", q"{Terhagen}", q"{Ternat}"
		, q"{Tervuren}", q"{Tessenderlo}", q"{Testelt}", q"{Teuven}", q"{Tiegem}", q"{Tielen}", q"{Tielrode}"
		, q"{Tielt}", q"{Tienen}", q"{Tildonk}", q"{Tisselt}", q"{Tollembeek}", q"{Tongeren}", q"{Tongerlo}"
		, q"{Torhout}", q"{Tremelo}", q"{Turnhout}", q"{Uikhoven}", q"{Uitbergen}", q"{Uitkerke}", q"{Ulbeek}"
		, q"{Ursel}", q"{Vaalbeek}", q"{Val-Meer}", q"{Varendonk}", q"{Varsenare}", q"{Vechmaal}", q"{Veerle}"
		, q"{Veldegem}", q"{Veldwezelt}", q"{Velm}", q"{Veltem-Beisem}", q"{Velzeke-Ruddershove}"
		, q"{Verrebroek}", q"{Vertrijk}", q"{Veulen}", q"{Veurne}", q"{Viane}", q"{Vichte}", q"{Viersel}"
		, q"{Vilvoorde}", q"{Vinderhoute}", q"{Vinkem}", q"{Vinkt}", q"{Vissenaken}", q"{Vladslo}", q"{Vlamertinge}"
		, q"{Vlekkem}", q"{Vlezenbeek}", q"{Vliermaal}", q"{Vliermaalroot}", q"{Vlierzele}", q"{Vlijtingen}"
		, q"{Vlimmeren}", q"{Vlissegem}", q"{Volkegem}", q"{Vollezele}", q"{Voorde}", q"{Voormezele}"
		, q"{Voort}", q"{Vorselaar}", q"{Vorsen}", q"{Vorst}", q"{Vosselaar}", q"{Vosselare}", q"{Vossem}"
		, q"{Vrasene}", q"{Vremde}", q"{Vreren}", q"{Vroenhoven}", q"{Vucht}", q"{Vurste}", q"{Waanrode}"
		, q"{Waarbeke}", q"{Waardamme}", q"{Waarloos}", q"{Waarmaarde}", q"{Waarschoot}", q"{Waasmont}"
		, q"{Waasmunster}", q"{Wachtebeke}", q"{Wakken}", q"{Walem}", q"{Walsbets}", q"{Walshoutem}"
		, q"{Waltwilder}", q"{Wambeek}", q"{Wange}", q"{Wannegem-Lede}", q"{Wanzele}", q"{Waregem}"
		, q"{Waterland-Oudeman}", q"{Watervliet}", q"{Watou}", q"{Webbekom}", q"{Wechelderzande}"
		, q"{Weelde}", q"{Weerde}", q"{Weert}", q"{Welden}", q"{Welle}", q"{Wellen}", q"{Wemmel}", q"{Wenduine}"
		, q"{Werchter}", q"{Werken}", q"{Werm}", q"{Wervik}", q"{Wespelaar}", q"{Westende}", q"{Westerlo}"
		, q"{Westkapelle}", q"{Westkerke}", q"{Westmalle}", q"{Westmeerbeek}", q"{Westouter}", q"{Westrem}"
		, q"{Westrozebeke}", q"{Westvleteren}", q"{Wetteren}", q"{Wevelgem}", q"{Wezemaal}", q"{Wezembeek-Oppem}"
		, q"{Wezeren}", q"{Wichelen}", q"{Widooie}", q"{Wiekevorst}", q"{Wielsbeke}", q"{Wieze}", q"{Wijchmaal}"
		, q"{Wijer}", q"{Wijgmaal}", q"{Wijnegem}", q"{Wijshagen}", q"{Wijtschate}", q"{Wilderen}", q"{Willebringen}"
		, q"{Willebroek}", q"{Wilrijk}", q"{Wilsele}", q"{Wilskerke}", q"{Wimmertingen}", q"{Wingene}"
		, q"{Winksele}", q"{Wintershoven}", q"{Woesten}", q"{Wolvertem}", q"{Wommelgem}", q"{Wommersom}"
		, q"{Wondelgem}", q"{Wontergem}", q"{Wortegem}", q"{Wortel}", q"{Woubrechtegem}", q"{Woumen}"
		, q"{Wulpen}", q"{Wulvergem}", q"{Wulveringem}", q"{Wuustwezel}", q"{Zaffelare}", q"{Zandbergen}"
		, q"{Zande}", q"{Zandhoven}", q"{Zandvoorde}", q"{Zarlardinge}", q"{Zarren}", q"{Zaventem}"
		, q"{Zedelgem}", q"{Zegelsem}", q"{Zele}", q"{Zelem}", q"{Zellik}", q"{Zelzate}", q"{Zemst}", q"{Zepperen}"
		, q"{Zerkegem}", q"{Zevekote}", q"{Zeveneken}", q"{Zeveren}", q"{Zevergem}", q"{Zichem}", q"{Zichen-Zussen-Bolder}"
		, q"{Zillebeke}", q"{Zingem}", q"{Zoerle-Parwijs}", q"{Zoersel}", q"{Zolder}", q"{Zomergem}"
		, q"{Zonhoven}", q"{Zonnebeke}", q"{Zonnegem}", q"{Zottegem}", q"{Zoutenaaie}", q"{Zoutleeuw}"
		, q"{Zuidschote}", q"{Zuienkerke}", q"{Zulte}", q"{Zulzeke}", q"{Zutendaal}", q"{Zwevegem}"
		, q"{Zwevezele}", q"{Zwijnaarde}", q"{Zwijndrecht}" ];

		return choice(strs, this.rnd);
	}

	override string locationCitySuffix() {
		const string[] strs =
		[ q"{gem}", q"{tem}", q"{vijve}", q"{zele}" ];

		return choice(strs, this.rnd);
	}

	override string locationDefaultCountry() {
		const string[] strs =
		[ q"{België}" ];

		return choice(strs, this.rnd);
	}

	override string locationPostcode() {
		const string[] strs =
		[ q"{####}" ];

		return numberBuild(choice(strs, this.rnd));
	}

	override string locationSecondaryAddress() {
		const string[] strs =
		[ q"{1e verdieping}", q"{2e verdieping}", q"{3e verdieping}" ];

		return numberBuild(choice(strs, this.rnd));
	}

	override string locationState() {
		const string[] strs =
		[ q"{West-Vlaanderen}", q"{Oost-Vlaanderen}", q"{Vlaams-Brabant}", q"{Antwerpen}", q"{Limburg}"
		, q"{Brussel}" ];

		return choice(strs, this.rnd);
	}

	override string locationStateAbbr() {
		const string[] strs =
		[ q"{WVL}", q"{OVL}", q"{VBR}", q"{ANT}", q"{LIM}", q"{BRU}" ];

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
		[ q"{straat}", q"{laan}", q"{weg}", q"{dreef}", q"{plein}", q"{park}" ];

		return choice(strs, this.rnd);
	}

	override string personFemaleFirstName() {
		const string[] strs =
		[ q"{Emma}", q"{Louise}", q"{Marie}", q"{Elise}", q"{Noor}", q"{Ella}", q"{Julie}", q"{Lotte}", q"{Lore}"
		, q"{Fien}", q"{Lena}", q"{Mila}", q"{Olivia}", q"{Amber}", q"{Anna}", q"{Elena}", q"{Hanne}", q"{Laura}"
		, q"{Charlotte}", q"{Lina}", q"{Nina}", q"{Fleur}", q"{Lisa}", q"{Nora}", q"{Juliette}", q"{Luna}"
		, q"{Amelie}", q"{Kato}", q"{Sara}", q"{Febe}", q"{Axelle}", q"{Janne}", q"{Eline}", q"{Helena}", q"{Noa}"
		, q"{Camille}", q"{Roos}", q"{Lily}", q"{Jade}", q"{Nore}", q"{Jana}", q"{Manon}", q"{Sarah}", q"{Liv}"
		, q"{Amélie}", q"{Lara}", q"{Mona}", q"{Alice}", q"{Tess}", q"{Kaat}", q"{Femke}", q"{Aya}", q"{Eva}"
		, q"{Lien}", q"{Bo}", q"{Zoe}", q"{Oona}", q"{Sofia}", q"{Leonie}", q"{Linde}", q"{Jolien}", q"{Fran}"
		, q"{Pauline}", q"{Laure}", q"{Merel}", q"{Marthe}", q"{Yana}", q"{Renée}", q"{Paulien}", q"{Margot}"
		, q"{Yasmine}", q"{Ines}", q"{Elisa}", q"{Emily}", q"{Maya}", q"{Floor}", q"{Amy}", q"{Lize}", q"{Amina}"
		, q"{Lucie}", q"{Julia}", q"{Lise}", q"{Hailey}", q"{Hannah}", q"{Alicia}", q"{Norah}", q"{Margaux}"
		, q"{Lieze}", q"{Sien}", q"{Zoë}", q"{Inaya}", q"{Aline}", q"{Amira}", q"{Victoria}", q"{Flore}"
		, q"{Lana}", q"{Sterre}", q"{Maud}", q"{Chloe}" ];

		return choice(strs, this.rnd);
	}

	override string personFemalePrefix() {
		const string[] strs =
		[ q"{Dr.}", q"{Ir.}", q"{Ing.}", q"{Prof.}" ];

		return choice(strs, this.rnd);
	}

	override string personFirstName() {
		const string[] strs =
		[ q"{Aaron}", q"{Adam}", q"{Alex}", q"{Alexander}", q"{Alice}", q"{Alicia}", q"{Aline}", q"{Amber}"
		, q"{Amelie}", q"{Amina}", q"{Amira}", q"{Amy}", q"{Amélie}", q"{Anna}", q"{Arne}", q"{Arthur}", q"{Axel}"
		, q"{Axelle}", q"{Aya}", q"{Bas}", q"{Bent}", q"{Bo}", q"{Bram}", q"{Brent}", q"{Camille}", q"{Cas}"
		, q"{Charlotte}", q"{Chloe}", q"{Daan}", q"{David}", q"{Dries}", q"{Elena}", q"{Elias}", q"{Eline}"
		, q"{Elisa}", q"{Elise}", q"{Ella}", q"{Emiel}", q"{Emile}", q"{Emily}", q"{Emma}", q"{Eva}", q"{Febe}"
		, q"{Felix}", q"{Femke}", q"{Ferre}", q"{Fien}", q"{Finn}", q"{Fleur}", q"{Floor}", q"{Flore}", q"{Fran}"
		, q"{Gabriel}", q"{Gilles}", q"{Gust}", q"{Hailey}", q"{Hamza}", q"{Hannah}", q"{Hanne}", q"{Helena}"
		, q"{Ilias}", q"{Ilyas}", q"{Imran}", q"{Inaya}", q"{Ines}", q"{Jack}", q"{Jade}", q"{Jana}", q"{Janne}"
		, q"{Jarne}", q"{Jasper}", q"{Jayden}", q"{Jef}", q"{Jelle}", q"{Jens}", q"{Jesse}", q"{Jolien}", q"{Jonas}"
		, q"{Jules}", q"{Julia}", q"{Julie}", q"{Juliette}", q"{Juul}", q"{Kaat}", q"{Kasper}", q"{Kato}"
		, q"{Kobe}", q"{Lana}", q"{Lander}", q"{Lara}", q"{Lars}", q"{Laura}", q"{Laure}", q"{Lena}", q"{Lenn}"
		, q"{Lennert}", q"{Leon}", q"{Leonie}", q"{Lewis}", q"{Liam}", q"{Lien}", q"{Lieze}", q"{Lily}", q"{Lina}"
		, q"{Linde}", q"{Lisa}", q"{Lise}", q"{Liv}", q"{Lize}", q"{Lore}", q"{Lotte}", q"{Lou}", q"{Louis}"
		, q"{Louise}", q"{Lowie}", q"{Luca}", q"{Lucas}", q"{Lucie}", q"{Lukas}", q"{Luna}", q"{Manon}", q"{Margaux}"
		, q"{Margot}", q"{Marie}", q"{Marthe}", q"{Mathias}", q"{Mathis}", q"{Mats}", q"{Matteo}", q"{Matthias}"
		, q"{Maud}", q"{Maurice}", q"{Mauro}", q"{Maxim}", q"{Maxime}", q"{Maya}", q"{Merel}", q"{Miel}", q"{Mila}"
		, q"{Milan}", q"{Milo}", q"{Mohamed}", q"{Mona}", q"{Nand}", q"{Nathan}", q"{Nicolas}", q"{Niels}"
		, q"{Nina}", q"{Noa}", q"{Noah}", q"{Noor}", q"{Nora}", q"{Norah}", q"{Nore}", q"{Olivia}", q"{Oona}"
		, q"{Oscar}", q"{Paulien}", q"{Pauline}", q"{Quinten}", q"{Rayan}", q"{Renée}", q"{Robbe}", q"{Robin}"
		, q"{Roos}", q"{Ruben}", q"{Rune}", q"{Sam}", q"{Sander}", q"{Sara}", q"{Sarah}", q"{Sem}", q"{Senne}"
		, q"{Seppe}", q"{Siebe}", q"{Sien}", q"{Simon}", q"{Sofia}", q"{Stan}", q"{Sterre}", q"{Tess}", q"{Thibo}"
		, q"{Thomas}", q"{Tibo}", q"{Tristan}", q"{Tuur}", q"{Vic}", q"{Victor}", q"{Victoria}", q"{Viktor}"
		, q"{Vince}", q"{Wannes}", q"{Warre}", q"{Wout}", q"{Xander}", q"{Yana}", q"{Yasmine}", q"{Zoe}", q"{Zoë}" ];

		return choice(strs, this.rnd);
	}

	override string personLastName() {
		const string[] strs =
		[ q"{Claes}", q"{Claeys}", q"{Declerck}", q"{Declercq}", q"{Decock}", q"{Decoster}", q"{Desmet}"
		, q"{Devos}", q"{Dewilde}", q"{Gielen}", q"{Goossens}", q"{Hermans}", q"{Jacobs}", q"{Janssen}"
		, q"{Janssens}", q"{Lemmens}", q"{Maes}", q"{Martens}", q"{Mertens}", q"{Michiels}", q"{Peeters}"
		, q"{Smet}", q"{Smets}", q"{Thijs}", q"{Vandamme}", q"{Vandenberghe}", q"{Vandenbroeck}", q"{Vandevelde}"
		, q"{Verhaeghe}", q"{Verstraete}", q"{Willems}", q"{Wouters}" ];

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
		[ q"{Lucas}", q"{Liam}", q"{Louis}", q"{Noah}", q"{Lars}", q"{Arthur}", q"{Mathis}", q"{Kobe}", q"{Wout}"
		, q"{Milan}", q"{Alexander}", q"{Daan}", q"{Adam}", q"{Vince}", q"{Jules}", q"{Victor}", q"{Finn}"
		, q"{Stan}", q"{Leon}", q"{Seppe}", q"{Senne}", q"{Thomas}", q"{Mats}", q"{Robbe}", q"{Matteo}", q"{Ferre}"
		, q"{Nathan}", q"{Warre}", q"{Jasper}", q"{Vic}", q"{Elias}", q"{Tuur}", q"{Lowie}", q"{Mauro}", q"{Maxim}"
		, q"{Ruben}", q"{Rune}", q"{Mohamed}", q"{Simon}", q"{Rayan}", q"{Lukas}", q"{Lander}", q"{Xander}"
		, q"{Emiel}", q"{Siebe}", q"{Jonas}", q"{Sam}", q"{Luca}", q"{Arne}", q"{Cas}", q"{Felix}", q"{Jack}"
		, q"{Mathias}", q"{Jayden}", q"{Quinten}", q"{Tibo}", q"{Lewis}", q"{Sem}", q"{Maxime}", q"{Viktor}"
		, q"{Emile}", q"{Sander}", q"{Aaron}", q"{Oscar}", q"{Bas}", q"{Niels}", q"{Jef}", q"{Nand}", q"{Lou}"
		, q"{Tristan}", q"{Gust}", q"{David}", q"{Brent}", q"{Jelle}", q"{Lenn}", q"{Miel}", q"{Wannes}", q"{Gilles}"
		, q"{Jarne}", q"{Alex}", q"{Imran}", q"{Lennert}", q"{Milo}", q"{Jens}", q"{Matthias}", q"{Dries}"
		, q"{Axel}", q"{Juul}", q"{Hamza}", q"{Ilias}", q"{Thibo}", q"{Nicolas}", q"{Bent}", q"{Jesse}", q"{Bram}"
		, q"{Maurice}", q"{Ilyas}", q"{Gabriel}", q"{Robin}", q"{Kasper}" ];

		return choice(strs, this.rnd);
	}

	override string personMalePrefix() {
		const string[] strs =
		[ q"{Dr.}", q"{Ir.}", q"{Ing.}", q"{Prof.}" ];

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
		[ q"{Dr.}", q"{Ing.}", q"{Ir.}", q"{Prof.}" ];

		return choice(strs, this.rnd);
	}

	override string personSuffix() {
		const string[] strs =
		[ q"{MBA}", q"{Phd.}" ];

		return choice(strs, this.rnd);
	}

	override string phoneNumberFormats() {
		const string[] strs =
		[ q"{###/######}", q"{###/## ## ##}", q"{### ## ## ##}", q"{###/### ###}", q"{##########}"
		, q"{04##/### ###}", q"{04## ## ## ##}", q"{00324 ## ## ##}", q"{+324 ## ## ## ##}" ];

		return numberBuild(choice(strs, this.rnd));
	}

}

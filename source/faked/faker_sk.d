module faked.faker_sk;

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

class Faker_sk : Faker_en {
@safe:
	this(int seed) {
		super(seed);
	}

	override string companyNamePattern() {
		switch(uniform(0, 2, this.rnd)) {
			case 0: return personLastName() ~ " " ~ companySuffix();
			case 1: return personMaleLastName() ~ " a " ~ personMaleLastName() ~ " " ~ companySuffix();
		}
		return "";
	}

	override string companySuffix() {
		const string[] strs =
		[ q"{s.r.o.}", q"{a.s.}", q"{v.o.s.}" ];

		return choice(strs, this.rnd);
	}

	override string internetDomainSuffix() {
		const string[] strs =
		[ q"{sk}", q"{com}", q"{net}", q"{eu}", q"{org}" ];

		return choice(strs, this.rnd);
	}

	override string internetFreeEmail() {
		const string[] strs =
		[ q"{gmail.com}", q"{zoznam.sk}", q"{azet.sk}" ];

		return choice(strs, this.rnd);
	}

	override string locationBuildingNumber() {
		const string[] strs =
		[ q"{#}", q"{##}", q"{###}" ];

		return numberBuild(choice(strs, this.rnd));
	}

	override string locationCityName() {
		const string[] strs =
		[ q"{Bánovce nad Bebravou}", q"{Banská Bystrica}", q"{Banská Štiavnica}", q"{Bardejov}"
		, q"{Bratislava I}", q"{Bratislava II}", q"{Bratislava III}", q"{Bratislava IV}", q"{Bratislava V}"
		, q"{Brezno}", q"{Bytča}", q"{Čadca}", q"{Detva}", q"{Dolný Kubín}", q"{Dunajská Streda}"
		, q"{Galanta}", q"{Gelnica}", q"{Hlohovec}", q"{Humenné}", q"{Ilava}", q"{Kežmarok}", q"{Komárno}"
		, q"{Košice I}", q"{Košice II}", q"{Košice III}", q"{Košice IV}", q"{Košice-okolie}"
		, q"{Krupina}", q"{Kysucké Nové Mesto}", q"{Levice}", q"{Levoča}", q"{Liptovský Mikuláš}"
		, q"{Lučenec}", q"{Malacky}", q"{Martin}", q"{Medzilaborce}", q"{Michalovce}", q"{Myjava}"
		, q"{Námestovo}", q"{Nitra}", q"{Nové Mesto n.Váhom}", q"{Nové Zámky}", q"{Partizánske}"
		, q"{Pezinok}", q"{Piešťany}", q"{Poltár}", q"{Poprad}", q"{Považská Bystrica}", q"{Prešov}"
		, q"{Prievidza}", q"{Púchov}", q"{Revúca}", q"{Rimavská Sobota}", q"{Rožňava}", q"{Ružomberok}"
		, q"{Sabinov}", q"{Šaľa}", q"{Senec}", q"{Senica}", q"{Skalica}", q"{Snina}", q"{Sobrance}", q"{Spišská Nová Ves}"
		, q"{Stará Ľubovňa}", q"{Stropkov}", q"{Svidník}", q"{Topoľčany}", q"{Trebišov}", q"{Trenčín}"
		, q"{Trnava}", q"{Turčianske Teplice}", q"{Tvrdošín}", q"{Veľký Krtíš}", q"{Vranov nad Topľou}"
		, q"{Žarnovica}", q"{Žiar nad Hronom}", q"{Žilina}", q"{Zlaté Moravce}", q"{Zvolen}" ];

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
		[ q"{Afganistan}", q"{Afgánsky islamský štát}", q"{Albánsko}", q"{Albánska republika}"
		, q"{Alžírsko}", q"{Alžírska demokratická ľudová republika}", q"{Andorra}", q"{Andorrské kniežatsvo}"
		, q"{Angola}", q"{Angolská republika}", q"{Antigua a Barbuda}", q"{Argentína}", q"{Argentínska republika}"
		, q"{Arménsko}", q"{Arménska republika}", q"{Austrália}", q"{Austrálsky zväz}", q"{Azerbajdžan}"
		, q"{Azerbajdžanská republika}", q"{Bahamy}", q"{Bahamské spoločenstvo}", q"{Bahrajn}"
		, q"{Bahrajnské kráľovstvo}", q"{Bangladéš}", q"{Bangladéšska ľudová republika}"
		, q"{Barbados}", q"{Belgicko}", q"{Belgické kráľovstvo}", q"{Belize}", q"{Benin}", q"{Beninská republika}"
		, q"{Bhután}", q"{Bhutánske kráľovstvo}", q"{Bielorusko}", q"{Bieloruská republika}"
		, q"{Bolívia}", q"{Bolívijská republika}", q"{Bosna a Hercegovina}", q"{Republika Bosny a Hercegoviny}"
		, q"{Botswana}", q"{Botswanská republika}", q"{Brazília}", q"{Brazílska federatívna republika}"
		, q"{Brunej}", q"{Brunejský sultanát}", q"{Bulharsko}", q"{Bulharská republika}", q"{Burkina Faso}"
		, q"{Burundi}", q"{Burundská republika}", q"{Cyprus}", q"{Cyperská republika}", q"{Čad}"
		, q"{Republika Čad}", q"{Česko}", q"{Česká republika}", q"{Čína}", q"{Čínska ľudová republika}"
		, q"{Dánsko}", q"{Dánsko kráľovstvo}", q"{Dominika}", q"{Spoločenstvo Dominika}"
		, q"{Dominikánska republika}", q"{Džibutsko}", q"{Džibutská republika}", q"{Egypt}"
		, q"{Egyptská arabská republika}", q"{Ekvádor}", q"{Ekvádorská republika}", q"{Eritrea}"
		, q"{Eritrejský štát}", q"{Estónsko}", q"{Estónska republika}", q"{Etiópia}", q"{Etiópska federatívna demokratická republika}"
		, q"{Fidži}", q"{Republika ostrovy Fidži}", q"{Filipíny}", q"{Filipínska republika}"
		, q"{Fínsko}", q"{Fínska republika}", q"{Francúzsko}", q"{Francúzska republika}", q"{Gabon}"
		, q"{Gabonská republika}", q"{Gambia}", q"{Gambijská republika}", q"{Ghana}", q"{Ghanská republika}"
		, q"{Grécko}", q"{Helénska republika}", q"{Grenada}", q"{Gruzínsko}", q"{Guatemala}", q"{Guatemalská republika}"
		, q"{Guinea}", q"{Guinejská republika}", q"{Guinea-Bissau}", q"{Republika Guinea-Bissau}"
		, q"{Guayana}", q"{Guayanská republika}", q"{Haiti}", q"{Republika Haiti}", q"{Holandsko}"
		, q"{Holandské kráľovstvo}", q"{Honduras}", q"{Honduraská republika}", q"{Chile}"
		, q"{Čílska republika}", q"{Chorvátsko}", q"{Chorvátska republika}", q"{India}", q"{Indická republika}"
		, q"{Indonézia}", q"{Indonézska republika}", q"{Irak}", q"{Iracká republika}", q"{Irán}"
		, q"{Iránska islamská republika}", q"{Island}", q"{Islandská republika}", q"{Izrael}"
		, q"{Štát Izrael}", q"{Írsko}", q"{Írska republika}", q"{Jamajka}", q"{Japonsko}", q"{Jemen}"
		, q"{Jemenská republika}", q"{Jordánsko}", q"{Jordánske hášimovské kráľovstvo}"
		, q"{Južná Afrika}", q"{Juhoafrická republika}", q"{Kambodža}", q"{Kambodžské kráľovstvo}"
		, q"{Kamerun}", q"{Kamerunská republika}", q"{Kanada}", q"{Kapverdy}", q"{Kapverdská republika}"
		, q"{Katar}", q"{Štát Katar}", q"{Kazachstan}", q"{Kazašská republika}", q"{Keňa}", q"{Kenská republika}"
		, q"{Kirgizsko}", q"{Kirgizská republika}", q"{Kiribati}", q"{Kiribatská republika}"
		, q"{Kolumbia}", q"{Kolumbijská republika}", q"{Komory}", q"{Komorská únia}", q"{Kongo}"
		, q"{Konžská demokratická republika}", q"{Kongo ("Brazzaville")}", q"{Konžská republika}"
		, q"{Kórea ("Južná")}", q"{Kórejská republika}", q"{Kórea ("Severná")}", q"{Kórejská ľudovodemokratická republika}"
		, q"{Kostarika}", q"{Kostarická republika}", q"{Kuba}", q"{Kubánska republika}", q"{Kuvajt}"
		, q"{Kuvajtský štát}", q"{Laos}", q"{Laoská ľudovodemokratická republika}", q"{Lesotho}"
		, q"{Lesothské kráľovstvo}", q"{Libanon}", q"{Libanonská republika}", q"{Libéria}"
		, q"{Libérijská republika}", q"{Líbya}", q"{Líbyjská arabská ľudová socialistická džamáhírija}"
		, q"{Lichtenštajnsko}", q"{Lichtenštajnské kniežatstvo}", q"{Litva}", q"{Litovská republika}"
		, q"{Lotyšsko}", q"{Lotyšská republika}", q"{Luxembursko}", q"{Luxemburské veľkovojvodstvo}"
		, q"{Macedónsko}", q"{Macedónska republika}", q"{Madagaskar}", q"{Madagaskarská republika}"
		, q"{Maďarsko}", q"{Maďarská republika}", q"{Malajzia}", q"{Malawi}", q"{Malawijská republika}"
		, q"{Maldivy}", q"{Maldivská republika}", q"{Mali}", q"{Malijská republika}", q"{Malta}"
		, q"{Maroko}", q"{Marocké kráľovstvo}", q"{Marshallove ostrovy}", q"{Republika Marshallových ostrovy}"
		, q"{Mauritánia}", q"{Mauritánska islamská republika}", q"{Maurícius}", q"{Maurícijská republika}"
		, q"{Mexiko}", q"{Spojené štáty mexické}", q"{Mikronézia}", q"{Mikronézske federatívne štáty}"
		, q"{Mjanmarsko}", q"{Mjanmarský zväz}", q"{Moldavsko}", q"{Moldavská republika}", q"{Monako}"
		, q"{Monacké kniežatstvo}", q"{Mongolsko}", q"{Mozambik}", q"{Mozambická republika}"
		, q"{Namíbia}", q"{Namíbijská republika}", q"{Nauru}", q"{Naurská republika}", q"{Nemecko}"
		, q"{Nemecká spolková republika}", q"{Nepál}", q"{Nepálske kráľovstvo}", q"{Niger}"
		, q"{Nigerská republika}", q"{Nigéria}", q"{Nigérijská federatívna republika}"
		, q"{Nikaragua}", q"{Nikaragujská republika}", q"{Nový Zéland}", q"{Nórsko}", q"{Nórske kráľovstvo}"
		, q"{Omán}", q"{Ománsky sultanát}", q"{Pakistan}", q"{Pakistanská islamská republika}"
		, q"{Palau}", q"{Palauská republika}", q"{Panama}", q"{Panamská republika}", q"{Papua-Nová Guinea}"
		, q"{Nezávislý štát Papua-Nová Guinea}", q"{Paraguaj}", q"{Paraguajská republika}"
		, q"{Peru}", q"{Peruánska republika}", q"{Pobrežie Slonoviny}", q"{Republika Pobrežie Slonoviny}"
		, q"{Poľsko}", q"{Poľská republika}", q"{Portugalsko}", q"{Portugalská republika}"
		, q"{Rakúsko}", q"{Rakúska republika}", q"{Rovníková Guinea}", q"{Republika Rovníková Guinea}"
		, q"{Rumunsko}", q"{Rusko}", q"{Ruská federácia}", q"{Rwanda}", q"{Rwandská republika}"
		, q"{Salvádor}", q"{Salvádorská republika}", q"{Samoa}", q"{Nezávislý štát Samoa}"
		, q"{San Maríno}", q"{Sanmarínska republika}", q"{Saudská Arábia}", q"{Kráľovstvo Saudskej Arábie}"
		, q"{Senegal}", q"{Senegalská republika}", q"{Seychely}", q"{Seychelská republika}"
		, q"{Sierra Leone}", q"{Republika Sierra Leone}", q"{Singapur}", q"{Singapurska republika}"
		, q"{Slovensko}", q"{Slovenská republika}", q"{Slovinsko}", q"{Slovinská republika}"
		, q"{Somálsko}", q"{Somálska demokratická republika}", q"{Spojené arabské emiráty}"
		, q"{Spojené štáty americké}", q"{Srbsko a Čierna Hora}", q"{Srí Lanka}", q"{Demokratická socialistická republika Srí Lanka}"
		, q"{Stredoafrická republika}", q"{Sudán}", q"{Sudánska republika}", q"{Surinam}", q"{Surinamská republika}"
		, q"{Svazijsko}", q"{Svazijské kráľovstvo}", q"{Svätá Lucia}", q"{Svätý Krištof a Nevis}"
		, q"{Federácia Svätý Krištof a Nevis}", q"{Sv. Tomáš a Princov Ostrov}", q"{Demokratická republika Svätý Tomáš a Princov Ostrov}"
		, q"{Sv. Vincent a Grenadíny}", q"{Svätý Vincent a Grenadíny}", q"{Sýria}", q"{Sýrska arabská republika}"
		, q"{Šalamúnove ostrovy}", q"{Španielsko}", q"{Španielske kráľovstvo}", q"{Švajčiarsko}"
		, q"{Švajčiarska konfederácia}", q"{Švédsko}", q"{Švédske kráľovstvo}", q"{Tadžikistan}"
		, q"{Tadžická republika}", q"{Taliansko}", q"{Talianska republika}", q"{Tanzánia}"
		, q"{Tanzánijská zjednotená republika}", q"{Thajsko}", q"{Thajské kráľovstvo}"
		, q"{Togo}", q"{Tožská republika}", q"{Tonga}", q"{Tonžské kráľovstvo}", q"{Trinidad a Tobago}"
		, q"{Republika Trinidad a Tobago}", q"{Tunisko}", q"{Tuniská republika}", q"{Turecko}"
		, q"{Turecká republika}", q"{Turkménsko}", q"{Tuvalu}", q"{Uganda}", q"{Ugandská republika}"
		, q"{Ukrajina}", q"{Uruguaj}", q"{Uruguajská východná republika}", q"{Uzbekistan}"
		, q"{Vanuatu}", q"{Vanuatská republika}", q"{Vatikán}", q"{Svätá Stolica}", q"{Veľká Británia}"
		, q"{Spojené kráľovstvo Veľkej Británie a Severného Írska}", q"{Venezuela}"
		, q"{Venezuelská bolívarovská republika}", q"{Vietnam}", q"{Vietnamská socialistická republika}"
		, q"{Východný Timor}", q"{Demokratická republika Východný Timor}", q"{Zambia}"
		, q"{Zambijská republika}", q"{Zimbabwe}", q"{Zimbabwianska republika}" ];

		return choice(strs, this.rnd);
	}

	override string locationDefaultCountry() {
		const string[] strs =
		[ q"{Slovensko}" ];

		return choice(strs, this.rnd);
	}

	override string locationPostcode() {
		const string[] strs =
		[ q"{#####}", q"{### ##}", q"{## ###}" ];

		return numberBuild(choice(strs, this.rnd));
	}

	override string locationSecondaryAddress() {
		const string[] strs =
		[ q"{Apt. ###}", q"{Suite ###}" ];

		return numberBuild(choice(strs, this.rnd));
	}

	override string locationStreetAddress() {
		const LocationStreetAddressEnum[] enums = [ LocationStreetAddressEnum.normal, LocationStreetAddressEnum.full ];
		return locationStreetAddress(choice(enums, this.rnd));
	}

	override string locationStreetAddress(LocationStreetAddressEnum which) {
		switch(which) {
			case LocationStreetAddressEnum.normal: return locationStreet() ~ " " ~ locationBuildingNumber();
			case LocationStreetAddressEnum.full: return locationStreet() ~ " " ~ locationBuildingNumber() ~ " " ~ locationSecondaryAddress();
		}
		return "";
	}

	override string locationStreetName() {
		const string[] strs =
		[ q"{Adámiho}", q"{Ahoj}", q"{Albína Brunovského}", q"{Albrechtova}", q"{Alejová}", q"{Alešova}"
		, q"{Alibernetová}", q"{Alžbetínska}", q"{Alžbety Gwerkovej}", q"{Ambroseho}", q"{Ambrušova}"
		, q"{Americká}", q"{Americké námestie}", q"{Andreja Mráza}", q"{Andreja Plávku}"
		, q"{Andrusovova}", q"{Anenská}", q"{Antolská}", q"{Astronomická}", q"{Astrová}", q"{Azalková}"
		, q"{Azovská}", q"{Babuškova}", q"{Bachova}", q"{Bajkalská}", q"{Bajzova}", q"{Bancíkovej}"
		, q"{Banícka}", q"{Baníkova}", q"{Banskobystrická}", q"{Banšelova}", q"{Bardejovská}"
		, q"{Bartókova}", q"{Bartoňova}", q"{Bartoškova}", q"{Baštová}", q"{Bazová}", q"{Bažantia}"
		, q"{Beblavého}", q"{Beckovská}", q"{Bedľová}", q"{Belániková}", q"{Belehradská}"
		, q"{Belinského}", q"{Belopotockého}", q"{Beňadická}", q"{Bencúrova}", q"{Benediktiho}"
		, q"{Beniakova}", q"{Bernolákova}", q"{Beskydská}", q"{Betliarska}", q"{Bezručova}", q"{Biela}"
		, q"{Bielkova}", q"{Björnsonova}", q"{Blagoevova}", q"{Blatnická}", q"{Blumentálska}"
		, q"{Blyskáčová}", q"{Bočná}", q"{Bohrova}", q"{Bohúňova}", q"{Bojnická}", q"{Borodáčova}"
		, q"{Borská}", q"{Bosákova}", q"{Botanická}", q"{Bottova}", q"{Boženy Němcovej}", q"{Bôrik}"
		, q"{Bradáčova}", q"{Bradlianska}", q"{Brančská}", q"{Bratská}", q"{Brestová}", q"{Brezovská}"
		, q"{Briežky}", q"{Brnianska}", q"{Brodná}", q"{Brodská}", q"{Broskyňová}", q"{Břeclavská}"
		, q"{Budatínska}", q"{Búdkova  cesta}", q"{Budovateľská}", q"{Budyšínska}", q"{Buková}"
		, q"{Bukureštská}", q"{Bulharská}", q"{Bulíkova}", q"{Bystrého}", q"{Bzovícka}", q"{Cablkova}"
		, q"{Cesta na Červený most}", q"{Cesta na Senec}", q"{Cikkerova}", q"{Cintorínska}"
		, q"{Cintulova}", q"{Cukrová}", q"{Cyrilova}", q"{Čajakova}", q"{Čajkovského}", q"{Čaklovská}"
		, q"{Čalovská}", q"{Čapajevova}", q"{Čapkova}", q"{Čárskeho}", q"{Čavojského}", q"{Čečinová}"
		, q"{Čelakovského}", q"{Čerešňová}", q"{Černyševského}", q"{Červeňova}", q"{Česká}"
		, q"{Československých par}", q"{Čipkárska}", q"{Čmelíkova}", q"{Čmeľovec}", q"{Čulenova}"
		, q"{Daliborovo námestie}", q"{Dankovského}", q"{Dargovská}", q"{Ďatelinová}", q"{Daxnerovo námestie}"
		, q"{Devínska cesta}", q"{Dlhé diely I.}", q"{Dlhé diely II.}", q"{Dlhé diely III.}"
		, q"{Dobrovičova}", q"{Dobrovského}", q"{Dobšinského}", q"{Dohnalova}", q"{Dohnányho}"
		, q"{Doležalova}", q"{Dolná}", q"{Dolnozemská cesta}", q"{Domkárska}", q"{Domové role}"
		, q"{Donnerova}", q"{Donovalova}", q"{Dostojevského rad}", q"{Dr. Vladimíra Clemen}"
		, q"{Drevená}", q"{Drieňová}", q"{Drotárska cesta}", q"{Družicová}", q"{Družstevná}"
		, q"{Dubnická}", q"{Dubová}", q"{Dúbravská cesta}", q"{Dudova}", q"{Dulovo námestie}"
		, q"{Dunajská}", q"{Dvořákovo nábrežie}", q"{Edisonova}", q"{Einsteinova}", q"{Elektrárenská}"
		, q"{Exnárova}", q"{F. Kostku}", q"{Fadruszova}", q"{Fajnorovo nábrežie}", q"{Fándlyho}"
		, q"{Farebná}", q"{Farská}", q"{Farského}", q"{Fazuľová}", q"{Fedinova}", q"{Ferienčíkova}"
		, q"{Fialkové údolie}", q"{Fibichova}", q"{Filiálne nádražie}", q"{Flöglova}", q"{Floriánske námestie}"
		, q"{Fraňa Kráľa}", q"{Francisciho}", q"{Francúzskych partizá}", q"{Františkánska}"
		, q"{Františkánske námest}", q"{Furdekova}", q"{Gabčíkova}", q"{Gagarinova}", q"{Gajova}"
		, q"{Galaktická}", q"{Galandova}", q"{Gallova}", q"{Galvaniho}", q"{Gašparíkova}", q"{Gaštanová}"
		, q"{Gavlovičova}", q"{Gemerská}", q"{Gercenova}", q"{Gessayova}", q"{Gettingová}", q"{Godrova}"
		, q"{Gogoľova}", q"{Goláňova}", q"{Gondova}", q"{Goralská}", q"{Gorazdova}", q"{Gorkého}"
		, q"{Gregorovej}", q"{Grösslingova}", q"{Gruzínska}", q"{Gunduličova}", q"{Gusevova}"
		, q"{Haanova}", q"{Haburská}", q"{Halašova}", q"{Hálkova}", q"{Hálova}", q"{Hamuliakova}"
		, q"{Hanácka}", q"{Handlovská}", q"{Hany Meličkovej}", q"{Harmanecká}", q"{Hasičská}"
		, q"{Hattalova}", q"{Havlíčkova}", q"{Havrania}", q"{Haydnova}", q"{Herlianska}", q"{Heydukova}"
		, q"{Hlaváčikova}", q"{Hlavatého}", q"{Hlavné námestie}", q"{Hlboká cesta}", q"{Hlivová}"
		, q"{Hlučínska}", q"{Hodálova}", q"{Hodžovo námestie}", q"{Holekova}", q"{Holíčska}"
		, q"{Hollého}", q"{Holubyho}", q"{Hontianska}", q"{Horárska}", q"{Horné Židiny}", q"{Horská}"
		, q"{Hrad}", q"{Hradné údolie}", q"{Hrachová}", q"{Hraničná}", q"{Hrebendova}", q"{Hríbová}"
		, q"{Hriňovská}", q"{Hrobákova}", q"{Hrobárska}", q"{Hroboňova}", q"{Hudecova}", q"{Humenské námestie}"
		, q"{Hummelova}", q"{Hurbanovo námestie}", q"{Hviezdoslavovo námes}", q"{Hýrošova}"
		, q"{Chalupkova}", q"{Chemická}", q"{Chlumeckého}", q"{Chorvátska}", q"{Iľjušinova}"
		, q"{Ilkovičova}", q"{Inovecká}", q"{Iskerníková}", q"{Ivana Horvátha}", q"{Ivánska cesta}"
		, q"{J.C.Hronského}", q"{Jabloňová}", q"{Jadrová}", q"{Jakabova}", q"{Jakubovo námestie}"
		, q"{Jamnického}", q"{Jána Stanislava}", q"{Janáčkova}", q"{Jančova}", q"{Janíkove role}"
		, q"{Jankolova}", q"{Jánošíkova}", q"{Jánoškova}", q"{Janotova}", q"{Jánska}", q"{Jantárová cesta}"
		, q"{Jarabinková}", q"{Jarná}", q"{Jaroslavova}", q"{Jarošova}", q"{Jaseňová}", q"{Jasná}"
		, q"{Jasovská}", q"{Jastrabia}", q"{Jašíkova}", q"{Javorinská}", q"{Javorová}", q"{Jazdecká}"
		, q"{Jedlíkova}", q"{Jégého}", q"{Jelačičova}", q"{Jelenia}", q"{Jesenná}", q"{Jesenského}"
		, q"{Jiráskova}", q"{Jiskrova}", q"{Jozefská}", q"{Junácka}", q"{Jungmannova}", q"{Jurigovo námestie}"
		, q"{Jurovského}", q"{Jurská}", q"{Justičná}", q"{K lomu}", q"{K Železnej studienke}"
		, q"{Kalinčiakova}", q"{Kamenárska}", q"{Kamenné námestie}", q"{Kapicova}", q"{Kapitulská}"
		, q"{Kapitulský dvor}", q"{Kapucínska}", q"{Kapušianska}", q"{Karadžičova}", q"{Karloveská}"
		, q"{Karloveské rameno}", q"{Karpatská}", q"{Kašmírska}", q"{Kaštielska}", q"{Kaukazská}"
		, q"{Kempelenova}", q"{Kežmarské námestie}", q"{Kladnianska}", q"{Klariská}", q"{Kláštorská}"
		, q"{Klatovská}", q"{Klemensova}", q"{Klincová}", q"{Klobučnícka}", q"{Klokočova}", q"{Kľukatá}"
		, q"{Kmeťovo námestie}", q"{Koceľova}", q"{Kočánkova}", q"{Kohútova}", q"{Kolárska}"
		, q"{Kolískova}", q"{Kollárovo námestie}", q"{Kolmá}", q"{Komárňanská}", q"{Komárnická}"
		, q"{Komenského námestie}", q"{Kominárska}", q"{Komonicová}", q"{Konopná}", q"{Konvalinková}"
		, q"{Konventná}", q"{Kopanice}", q"{Kopčianska}", q"{Koperníkova}", q"{Korabinského}"
		, q"{Koreničova}", q"{Kostlivého}", q"{Kostolná}", q"{Košická}", q"{Kováčska}", q"{Kovorobotnícka}"
		, q"{Kozia}", q"{Koziarka}", q"{Kozmonautická}", q"{Krajná}", q"{Krakovská}", q"{Kráľovské údolie}"
		, q"{Krasinského}", q"{Kraskova}", q"{Krásna}", q"{Krásnohorská}", q"{Krasovského}"
		, q"{Krátka}", q"{Krčméryho}", q"{Kremnická}", q"{Kresánkova}", q"{Krivá}", q"{Križkova}"
		, q"{Krížna}", q"{Krmanova}", q"{Krompašská}", q"{Krupinská}", q"{Krupkova}", q"{Kubániho}"
		, q"{Kubínska}", q"{Kuklovská}", q"{Kukučínova}", q"{Kukuričná}", q"{Kulíškova}"
		, q"{Kultúrna}", q"{Kupeckého}", q"{Kúpeľná}", q"{Kutlíkova}", q"{Kutuzovova}", q"{Kuzmányho}"
		, q"{Kvačalova}", q"{Kvetná}", q"{Kýčerského}", q"{Kyjevská}", q"{Kysucká}", q"{Laborecká}"
		, q"{Lackova}", q"{Ladislava Sáru}", q"{Ľadová}", q"{Lachova}", q"{Ľaliová}", q"{Lamačská cesta}"
		, q"{Lamanského}", q"{Landererova}", q"{Langsfeldova}", q"{Ľanová}", q"{Laskomerského}"
		, q"{Laučekova}", q"{Laurinská}", q"{Lazaretská}", q"{Legerského}", q"{Legionárska}"
		, q"{Lehockého}", q"{Lenardova}", q"{Lermontovova}", q"{Lesná}", q"{Leškova}", q"{Letecká}"
		, q"{Letisko M.R.Štefánik}", q"{Letná}", q"{Levárska}", q"{Levická}", q"{Levočská}"
		, q"{Lidická}", q"{Lietavská}", q"{Lichardova}", q"{Lipová}", q"{Lipovinová}", q"{Liptovská}"
		, q"{Listová}", q"{Líščie nivy}", q"{Líščie údolie}", q"{Litovská}", q"{Lodná}"
		, q"{Lombardiniho}", q"{Lomonosovova}", q"{Lopenícka}", q"{Lovinského}", q"{Ľubietovská}"
		, q"{Ľubinská}", q"{Ľubľanská}", q"{Ľubochnianska}", q"{Ľubovnianska}", q"{Lúčna}"
		, q"{Ľudové námestie}", q"{Ľudovíta Fullu}", q"{Luhačovická}", q"{Lužická}", q"{Lužná}"
		, q"{Lýcejná}", q"{Lykovcová}", q"{M. Hella}", q"{Magnetová}", q"{Macharova}", q"{Majakovského}"
		, q"{Majerníkova}", q"{Májkova}", q"{Májová}", q"{Makovického}", q"{Malá}", q"{Malé pálenisko}"
		, q"{Malinová}", q"{Malý Draždiak}", q"{Malý trh}", q"{Mamateyova}", q"{Mánesovo námestie}"
		, q"{Mariánska}", q"{Marie Curie-Sklodows}", q"{Márie Medveďovej}", q"{Markova}", q"{Marótyho}"
		, q"{Martákovej}", q"{Martinčekova}", q"{Martinengova}", q"{Martinská}", q"{Mateja Bela}"
		, q"{Matejkova}", q"{Matičná}", q"{Matúšova}", q"{Medená}", q"{Medzierka}", q"{Medzilaborecká}"
		, q"{Merlotová}", q"{Mesačná}", q"{Mestská}", q"{Meteorová}", q"{Metodova}", q"{Mickiewiczova}"
		, q"{Mierová}", q"{Michalská}", q"{Mikovíniho}", q"{Mikulášska}", q"{Miletičova}", q"{Mišíkova}"
		, q"{Mliekárenská}", q"{Mlynarovičova}", q"{Mlynská dolina}", q"{Mlynské luhy}", q"{Mlynské nivy}"
		, q"{Mlyny}", q"{Modranská}", q"{Mojmírova}", q"{Mokráň záhon}", q"{Mokrohájska cesta}"
		, q"{Moldavská}", q"{Molecova}", q"{Moravská}", q"{Moskovská}", q"{Most SNP}", q"{Mostová}"
		, q"{Mošovského}", q"{Motýlia}", q"{Moyzesova}", q"{Mozartova}", q"{Mraziarenská}", q"{Mudroňova}"
		, q"{Muchovo námestie}", q"{Murgašova}", q"{Muškátová}", q"{Muštová}", q"{Múzejná}"
		, q"{Myjavská}", q"{Mýtna}", q"{Na Baránku}", q"{Na Brezinách}", q"{Na Hrebienku}", q"{Na Kalvárii}"
		, q"{Na Kampárke}", q"{Na kopci}", q"{Na križovatkách}", q"{Na lánoch}", q"{Na paši}"
		, q"{Na piesku}", q"{Na Riviére}", q"{Na Sitine}", q"{Na Slavíne}", q"{Na stráni}", q"{Na Štyridsiatku}"
		, q"{Na úvrati}", q"{Na vŕšku}", q"{Na výslní}", q"{Nábělkova}", q"{Nábrežie arm. gen. L}"
		, q"{Nábrežná}", q"{Nad Dunajom}", q"{Nad lomom}", q"{Nad lúčkami}", q"{Nad ostrovom}"
		, q"{Nad Sihoťou}", q"{Námestie 1. mája}", q"{Námestie Alexandra D}", q"{Námestie Biely kríž}"
		, q"{Námestie Hraničiarov}", q"{Námestie Jána Pavla}", q"{Námestie Ľudovíta Št}"
		, q"{Námestie Martina Ben}", q"{Nám. M.R.Štefánika}", q"{Námestie slobody}", q"{Námestie SNP}"
		, q"{Námestie sv. Františ}", q"{Narcisová}", q"{Nedbalova}", q"{Nekrasovova}", q"{Neronetová}"
		, q"{Nerudova}", q"{Nevädzová}", q"{Nezábudková}", q"{Niťová}", q"{Nitrianska}", q"{Nížinná}"
		, q"{Nobelova}", q"{Nobelovo námestie}", q"{Nová}", q"{Nová Rožňavská}", q"{Novackého}"
		, q"{Nové pálenisko}", q"{Nové záhrady I}", q"{Nové záhrady II}", q"{Nové záhrady III}"
		, q"{Nové záhrady IV}", q"{Nové záhrady V}", q"{Nové záhrady VI}", q"{Nové záhrady VII}"
		, q"{Novinárska}", q"{Novobanská}", q"{Novohradská}", q"{Novosvetská}", q"{Obežná}"
		, q"{Obchodná}", q"{Očovská}", q"{Odbojárov}", q"{Odborárska}", q"{Odborárske námestie}"
		, q"{Ohnicová}", q"{Okánikova}", q"{Okružná}", q"{Olbrachtova}", q"{Olejkárska}", q"{Ondavská}"
		, q"{Ondrejovova}", q"{Oravská}", q"{Orechová cesta}", q"{Orechový rad}", q"{Oriešková}"
		, q"{Ormisova}", q"{Osadná}", q"{Ostravská}", q"{Ostredková}", q"{Osuského}", q"{Osvetová}"
		, q"{Otonelská}", q"{Ovručská}", q"{Ovsištské námestie}", q"{Pajštúnska}", q"{Palackého}"
		, q"{Palárikova}", q"{Pálavská}", q"{Palisády}", q"{Palkovičova}", q"{Panenská}", q"{Pankúchova}"
		, q"{Panónska cesta}", q"{Panská}", q"{Papánkovo námestie}", q"{Papraďová}", q"{Páričkova}"
		, q"{Parková}", q"{Partizánska}", q"{Pasienky}", q"{Paulínyho}", q"{Pavlovičova}", q"{Pavlovova}"
		, q"{Pavlovská}", q"{Pažického}", q"{Pažítková}", q"{Pečnianska}", q"{Pernecká}"
		, q"{Pestovateľská}", q"{Peterská}", q"{Petzvalova}", q"{Pezinská}", q"{Piesočná}"
		, q"{Piešťanská}", q"{Pifflova}", q"{Pilárikova}", q"{Pionierska}", q"{Pivoňková}"
		, q"{Planckova}", q"{Planét}", q"{Plátenícka}", q"{Pluhová}", q"{Plynárenská}", q"{Plzenská}"
		, q"{Pobrežná}", q"{Pod Bôrikom}", q"{Pod Kalváriou}", q"{Pod lesom}", q"{Pod Rovnicami}"
		, q"{Pod vinicami}", q"{Podhorského}", q"{Podjavorinskej}", q"{Podlučinského}", q"{Podniková}"
		, q"{Podtatranského}", q"{Pohronská}", q"{Polárna}", q"{Poloreckého}", q"{Poľná}", q"{Poľská}"
		, q"{Poludníková}", q"{Porubského}", q"{Poštová}", q"{Považská}", q"{Povraznícka}"
		, q"{Pražská}", q"{Predstaničné námesti}", q"{Prepoštská}", q"{Prešernova}", q"{Prešovská}"
		, q"{Pri Bielom kríži}", q"{Pri dvore}", q"{Pri Dynamitke}", q"{Pri Habánskom mlyne}"
		, q"{Pri hradnej studni}", q"{Pri seči}", q"{Pri Starej Prachárni}", q"{Pri Starom háji}"
		, q"{Pri Starom Mýte}", q"{Pri strelnici}", q"{Pri Suchom mlyne}", q"{Pri zvonici}", q"{Pribinova}"
		, q"{Pribišova}", q"{Pribylinská}", q"{Priečna}", q"{Priekopy}", q"{Priemyselná}", q"{Prievozská}"
		, q"{Príkopova}", q"{Primaciálne námestie}", q"{Prístav}", q"{Prístavná}", q"{Prokofievova}"
		, q"{Prokopa Veľkého}", q"{Prokopova}", q"{Prúdová}", q"{Prvosienková}", q"{Púpavová}"
		, q"{Pustá}", q"{Puškinova}", q"{Račianska}", q"{Račianske mýto}", q"{Radarová}", q"{Rádiová}"
		, q"{Radlinského}", q"{Radničná}", q"{Radničné námestie}", q"{Radvanská}", q"{Rajská}"
		, q"{Raketová}", q"{Rákosová}", q"{Rastislavova}", q"{Rázusovo nábrežie}", q"{Repná}"
		, q"{Rešetkova}", q"{Revolučná}", q"{Révová}", q"{Revúcka}", q"{Rezedová}", q"{Riazanská}"
		, q"{Ribayová}", q"{Riečna}", q"{Rigeleho}", q"{Rízlingová}", q"{Riznerova}", q"{Robotnícka}"
		, q"{Romanova}", q"{Röntgenova}", q"{Rosná}", q"{Rovná}", q"{Rovniankova}", q"{Rovníková}"
		, q"{Rozmarínová}", q"{Rožňavská}", q"{Rubinsteinova}", q"{Rudnayovo námestie}"
		, q"{Rumančeková}", q"{Rusovská cesta}", q"{Ružičková}", q"{Ružinovská}", q"{Ružomberská}"
		, q"{Ružová dolina}", q"{Rybárska brána}", q"{Rybné námestie}", q"{Rýdziková}"
		, q"{Sabinovská}", q"{Sad Janka Kráľa}", q"{Sadová}", q"{Sartorisova}", q"{Sasinkova}"
		, q"{Seberíniho}", q"{Sečovská}", q"{Sedlárska}", q"{Sedmokrásková}", q"{Segnerova}"
		, q"{Sekulská}", q"{Semianova}", q"{Senická}", q"{Senná}", q"{Schillerova}", q"{Schody pri starej vo}"
		, q"{Sibírska}", q"{Sienkiewiczova}", q"{Silvánska}", q"{Sinokvetná}", q"{Skalická cesta}"
		, q"{Skalná}", q"{Sklenárova}", q"{Sklenárska}", q"{Sládkovičova}", q"{Sladová}", q"{Slávičie údolie}"
		, q"{Slavín}", q"{Slepá}", q"{Sliačska}", q"{Sliezska}", q"{Slivková}", q"{Slnečná}", q"{Slovanská}"
		, q"{Slovinská}", q"{Slovnaftská}", q"{Slowackého}", q"{Smetanova}", q"{Smikova}", q"{Smolenická}"
		, q"{Smolnícka}", q"{Smrečianska}", q"{Soferove schody}", q"{Socháňova}", q"{Sokolská}"
		, q"{Solivarská}", q"{Sološnická}", q"{Somolického}", q"{Sosnová}", q"{Spišská}", q"{Spojná}"
		, q"{Spoločenská}", q"{Sputniková}", q"{Sreznevského}", q"{Srnčia}", q"{Stachanovská}"
		, q"{Stálicová}", q"{Staničná}", q"{Stará Černicová}", q"{Stará Ivánska cesta}"
		, q"{Stará Prievozská}", q"{Stará Vajnorská}", q"{Stará vinárska}", q"{Staré Grunty}"
		, q"{Staré ihrisko}", q"{Staré záhrady}", q"{Starhradská}", q"{Starohájska}", q"{Staromestská}"
		, q"{Staroturský chodník}", q"{Staviteľská}", q"{Stodolova}", q"{Stoklasová}", q"{Strakova}"
		, q"{Strážnická}", q"{Strážny dom}", q"{Strečnianska}", q"{Stredná}", q"{Strelecká}"
		, q"{Strmá cesta}", q"{Strojnícka}", q"{Stropkovská}", q"{Struková}", q"{Studená}", q"{Stuhová}"
		, q"{Súbežná}", q"{Súhvezdná}", q"{Suché mýto}", q"{Suchohradská}", q"{Súkennícka}"
		, q"{Súľovská}", q"{Sumbalova}", q"{Súmračná}", q"{Súťažná}", q"{Svätého Vincenta}"
		, q"{Svätoplukova}", q"{Svätovojtešská}", q"{Svetlá}", q"{Svíbová}", q"{Svidnícka}"
		, q"{Svoradova}", q"{Svrčia}", q"{Syslia}", q"{Šafárikovo námestie}", q"{Šafránová}"
		, q"{Šagátova}", q"{Šalviová}", q"{Šancová}", q"{Šándorova}", q"{Šarišská}", q"{Šášovská}"
		, q"{Šaštínska}", q"{Ševčenkova}", q"{Šintavská}", q"{Šípková}", q"{Škarniclova}"
		, q"{Školská}", q"{Škovránčia}", q"{Škultétyho}", q"{Šoltésovej}", q"{Špieszova}"
		, q"{Špitálska}", q"{Športová}", q"{Šrobárovo námestie}", q"{Šťastná}", q"{Štedrá}"
		, q"{Štefánikova}", q"{Štefanovičova}", q"{Štefunkova}", q"{Štetinova}", q"{Štiavnická}"
		, q"{Štúrova}", q"{Štyndlova}", q"{Šulekova}", q"{Šumavská}", q"{Šuňavcova}", q"{Šustekova}"
		, q"{Švabinského}", q"{Tabaková}", q"{Tablicova}", q"{Táborská}", q"{Tajovského}", q"{Tallerova}"
		, q"{Tehelná}", q"{Technická}", q"{Tekovská}", q"{Telocvičná}", q"{Tematínska}", q"{Teplická}"
		, q"{Terchovská}", q"{Teslova}", q"{Tetmayerova}", q"{Thurzova}", q"{Tichá}", q"{Tilgnerova}"
		, q"{Timravina}", q"{Tobrucká}", q"{Tokajícka}", q"{Tolstého}", q"{Tománkova}", q"{Tomášikova}"
		, q"{Topoľčianska}", q"{Topoľová}", q"{Továrenská}", q"{Trebišovská}", q"{Trenčianska}"
		, q"{Treskoňova}", q"{Trnavská cesta}", q"{Trnavské mýto}", q"{Tŕňová}", q"{Trojdomy}"
		, q"{Tučkova}", q"{Tupolevova}", q"{Turbínova}", q"{Turčianska}", q"{Turnianska}", q"{Tvarožkova}"
		, q"{Tylova}", q"{Tyršovo nábrežie}", q"{Údernícka}", q"{Údolná}", q"{Uhorková}"
		, q"{Ukrajinská}", q"{Ulica 29. augusta}", q"{Ulica Imricha Karvaš}", q"{Ulica Jozefa Krónera}"
		, q"{Ulica Viktora Tegelh}", q"{Úprkova}", q"{Úradnícka}", q"{Uránová}", q"{Urbánkova}"
		, q"{Ursínyho}", q"{Uršulínska}", q"{Úzka}", q"{V záhradách}", q"{Vajanského nábrežie}"
		, q"{Vajnorská}", q"{Valašská}", q"{Valchárska}", q"{Vansovej}", q"{Vápenná}", q"{Varínska}"
		, q"{Varšavská}", q"{Vavilovova}", q"{Vavrínova}", q"{Vazovova}", q"{Včelárska}", q"{Velehradská}"
		, q"{Veltlínska}", q"{Ventúrska}", q"{Veterná}", q"{Veternicová}", q"{Vetvová}", q"{Viedenská cesta}"
		, q"{Vietnamská}", q"{Vígľašská}", q"{Vihorlatská}", q"{Viktorínova}", q"{Vilová}"
		, q"{Vincenta Hložníka}", q"{Vínna}", q"{Vlastenecké námestie}", q"{Vlčkova}", q"{Vodný vrch}"
		, q"{Votrubova}", q"{Vrábeľská}", q"{Vrakunská cesta}", q"{Vranovská}", q"{Vretenová}"
		, q"{Vrchná}", q"{Vrútocká}", q"{Vyhliadka}", q"{Vyhnianska cesta}", q"{Vysoká}", q"{Vyšehradská}"
		, q"{Vyšná}", q"{Wattova}", q"{Wilsonova}", q"{Wolkrova}", q"{Za Kasárňou}", q"{Za sokolovňou}"
		, q"{Za Stanicou}", q"{Za tehelňou}", q"{Záborského}", q"{Zadunajská cesta}", q"{Záhorácka}"
		, q"{Záhradnícka}", q"{Záhrebská}", q"{Zálužická}", q"{Zámocká}", q"{Zámocké schody}"
		, q"{Zámočnícka}", q"{Západná}", q"{Západný rad}", q"{Záporožská}", q"{Zátišie}"
		, q"{Závodníkova}", q"{Zelená}", q"{Zelinárska}", q"{Zimná}", q"{Zlaté piesky}", q"{Zlaté schody}"
		, q"{Znievska}", q"{Zohorská}", q"{Zochova}", q"{Zrinského}", q"{Zvolenská}", q"{Žabí majer}"
		, q"{Žabotova}", q"{Žehrianska}", q"{Železná}", q"{Železničiarska}", q"{Žellova}"
		, q"{Žiarska}", q"{Židovská}", q"{Žilinská}", q"{Živnostenská}", q"{Žižkova}", q"{Župné námestie}" ];

		return choice(strs, this.rnd);
	}

	override string locationStreetPattern() {
		switch(uniform(0, 1, this.rnd)) {
			case 0: return locationStreetName();
		}
		return "";
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
		[ q"{Alexandra}", q"{Karina}", q"{Daniela}", q"{Andrea}", q"{Antónia}", q"{Bohuslava}", q"{Dáša}"
		, q"{Malvína}", q"{Kristína}", q"{Nataša}", q"{Bohdana}", q"{Drahomíra}", q"{Sára}", q"{Zora}"
		, q"{Tamara}", q"{Ema}", q"{Tatiana}", q"{Erika}", q"{Veronika}", q"{Agáta}", q"{Dorota}", q"{Vanda}"
		, q"{Zoja}", q"{Gabriela}", q"{Perla}", q"{Ida}", q"{Liana}", q"{Miloslava}", q"{Vlasta}", q"{Lívia}"
		, q"{Eleonóra}", q"{Etela}", q"{Romana}", q"{Zlatica}", q"{Anežka}", q"{Bohumila}", q"{Františka}"
		, q"{Angela}", q"{Matilda}", q"{Svetlana}", q"{Ľubica}", q"{Alena}", q"{Soňa}", q"{Vieroslava}"
		, q"{Zita}", q"{Miroslava}", q"{Irena}", q"{Milena}", q"{Estera}", q"{Justína}", q"{Dana}", q"{Danica}"
		, q"{Jela}", q"{Jaroslava}", q"{Jarmila}", q"{Lea}", q"{Anastázia}", q"{Galina}", q"{Lesana}"
		, q"{Hermína}", q"{Monika}", q"{Ingrida}", q"{Viktória}", q"{Blažena}", q"{Žofia}", q"{Sofia}"
		, q"{Gizela}", q"{Viola}", q"{Gertrúda}", q"{Zina}", q"{Júlia}", q"{Juliana}", q"{Želmíra}"
		, q"{Ela}", q"{Vanesa}", q"{Iveta}", q"{Vilma}", q"{Petronela}", q"{Žaneta}", q"{Xénia}", q"{Karolína}"
		, q"{Lenka}", q"{Laura}", q"{Stanislava}", q"{Margaréta}", q"{Dobroslava}", q"{Blanka}", q"{Valéria}"
		, q"{Paulína}", q"{Sidónia}", q"{Adriána}", q"{Beáta}", q"{Petra}", q"{Melánia}", q"{Diana}"
		, q"{Berta}", q"{Patrícia}", q"{Lujza}", q"{Amália}", q"{Milota}", q"{Nina}", q"{Margita}", q"{Kamila}"
		, q"{Dušana}", q"{Magdaléna}", q"{Oľga}", q"{Anna}", q"{Hana}", q"{Božena}", q"{Marta}", q"{Libuša}"
		, q"{Božidara}", q"{Dominika}", q"{Hortenzia}", q"{Jozefína}", q"{Štefánia}", q"{Ľubomíra}"
		, q"{Zuzana}", q"{Darina}", q"{Marcela}", q"{Milica}", q"{Elena}", q"{Helena}", q"{Lýdia}", q"{Anabela}"
		, q"{Jana}", q"{Silvia}", q"{Nikola}", q"{Ružena}", q"{Nora}", q"{Drahoslava}", q"{Linda}", q"{Melinda}"
		, q"{Rebeka}", q"{Rozália}", q"{Regína}", q"{Alica}", q"{Marianna}", q"{Miriama}", q"{Martina}"
		, q"{Mária}", q"{Jolana}", q"{Ľudomila}", q"{Ľudmila}", q"{Olympia}", q"{Eugénia}", q"{Ľuboslava}"
		, q"{Zdenka}", q"{Edita}", q"{Michaela}", q"{Stela}", q"{Viera}", q"{Natália}", q"{Eliška}", q"{Brigita}"
		, q"{Valentína}", q"{Terézia}", q"{Vladimíra}", q"{Hedviga}", q"{Uršuľa}", q"{Alojza}"
		, q"{Kvetoslava}", q"{Sabína}", q"{Dobromila}", q"{Klára}", q"{Simona}", q"{Aurélia}", q"{Denisa}"
		, q"{Renáta}", q"{Irma}", q"{Agnesa}", q"{Klaudia}", q"{Alžbeta}", q"{Elvíra}", q"{Cecília}"
		, q"{Emília}", q"{Katarína}", q"{Henrieta}", q"{Bibiána}", q"{Barbora}", q"{Marína}", q"{Izabela}"
		, q"{Hilda}", q"{Otília}", q"{Lucia}", q"{Branislava}", q"{Bronislava}", q"{Ivica}", q"{Albína}"
		, q"{Kornélia}", q"{Sláva}", q"{Slávka}", q"{Judita}", q"{Dagmara}", q"{Adela}", q"{Nadežda}"
		, q"{Eva}", q"{Filoména}", q"{Ivana}", q"{Milada}" ];

		return choice(strs, this.rnd);
	}

	string personFemaleLastName() {
		const string[] strs =
		[ q"{Antalová}", q"{Babková}", q"{Bahnová}", q"{Balážová}", q"{Baranová}", q"{Baranková}"
		, q"{Bartovičová}", q"{Bartošová}", q"{Bačová}", q"{Bernoláková}", q"{Beňová}"
		, q"{Biceková}", q"{Bieliková}", q"{Blahová}", q"{Bondrová}", q"{Bosáková}", q"{Bošková}"
		, q"{Brezinová}", q"{Bukovská}", q"{Chalupková}", q"{Chudíková}", q"{Cibulová}", q"{Cibulková}"
		, q"{Cyprichová}", q"{Cígerová}", q"{Danková}", q"{Daňková}", q"{Daňová}", q"{Debnárová}"
		, q"{Dejová}", q"{Dekýšová}", q"{Doležalová}", q"{Dočolomanská}", q"{Droppová}"
		, q"{Dubovská}", q"{Dudeková}", q"{Dulová}", q"{Dullová}", q"{Dusíková}", q"{Dvončová}"
		, q"{Dzurjaninová}", q"{Dávidová}", q"{Fabianová}", q"{Fabiánová}", q"{Fajnorová}"
		, q"{Farkašovská}", q"{Ficová}", q"{Filcová}", q"{Filipová}", q"{Finková}", q"{Ftoreková}"
		, q"{Gašparová}", q"{Gašparovičová}", q"{Gocníková}", q"{Gregorová}", q"{Gregušová}"
		, q"{Grznárová}", q"{Habláková}", q"{Habšudová}", q"{Haldová}", q"{Halušková}", q"{Haláková}"
		, q"{Hanková}", q"{Hanzalová}", q"{Haščáková}", q"{Heretiková}", q"{Hečková}", q"{Hlaváčeková}"
		, q"{Hlinková}", q"{Holubová}", q"{Holubyová}", q"{Hossová}", q"{Hozová}", q"{Hrašková}"
		, q"{Hricová}", q"{Hrmová}", q"{Hrušovská}", q"{Hubová}", q"{Ihnačáková}", q"{Janečeková}"
		, q"{Janošková}", q"{Jantošovičová}", q"{Janíková}", q"{Jančeková}", q"{Jedľovská}"
		, q"{Jendeková}", q"{Jonatová}", q"{Jurinová}", q"{Jurkovičová}", q"{Juríková}", q"{Jánošíková}"
		, q"{Kafendová}", q"{Kaliská}", q"{Karulová}", q"{Kenížová}", q"{Klapková}", q"{Kmeťová}"
		, q"{Kolesárová}", q"{Kollárová}", q"{Kolniková}", q"{Kolníková}", q"{Kolárová}"
		, q"{Korecová}", q"{Kostkaová}", q"{Kostrecová}", q"{Kováčová}", q"{Kováčiková}"
		, q"{Kozová}", q"{Kočišová}", q"{Krajíčeková}", q"{Krajčová}", q"{Krajčovičová}"
		, q"{Krajčírová}", q"{Králiková}", q"{Krúpová}", q"{Kubíková}", q"{Kyseľová}"
		, q"{Kállayová}", q"{Labudová}", q"{Lepšíková}", q"{Liptáková}", q"{Lisická}", q"{Lubinová}"
		, q"{Lukáčová}", q"{Luptáková}", q"{Líšková}", q"{Madejová}", q"{Majeská}", q"{Malachovská}"
		, q"{Malíšeková}", q"{Mamojková}", q"{Marcinková}", q"{Mariánová}", q"{Masaryková}"
		, q"{Maslová}", q"{Matiašková}", q"{Medveďová}", q"{Melcerová}", q"{Mečiarová}", q"{Michalíková}"
		, q"{Mihaliková}", q"{Mihálová}", q"{Miháliková}", q"{Miklošková}", q"{Mikulíková}"
		, q"{Mikušová}", q"{Mikúšová}", q"{Milotová}", q"{Mináčová}", q"{Mišíková}", q"{Mojžišová}"
		, q"{Mokrošová}", q"{Morová}", q"{Moravčíková}", q"{Mydlová}", q"{Nemcová}", q"{Nováková}"
		, q"{Obšutová}", q"{Ondrušová}", q"{Otčenášová}", q"{Pauková}", q"{Pavlikovská}"
		, q"{Pavúková}", q"{Pašeková}", q"{Pašková}", q"{Pelikánová}", q"{Petrovická}", q"{Petrušková}"
		, q"{Pešková}", q"{Plchová}", q"{Plekanecová}", q"{Podhradská}", q"{Podkonická}", q"{Poliaková}"
		, q"{Pupáková}", q"{Raková}", q"{Repiská}", q"{Romančíková}", q"{Rusová}", q"{Ružičková}"
		, q"{Rybníčeková}", q"{Rybárová}", q"{Rybáriková}", q"{Samsonová}", q"{Sedliaková}"
		, q"{Senková}", q"{Sklenková}", q"{Skokanová}", q"{Skutecká}", q"{Slašťanová}", q"{Slobodová}"
		, q"{Slobodníková}", q"{Slotová}", q"{Slováková}", q"{Smreková}", q"{Stodolová}", q"{Straková}"
		, q"{Strnisková}", q"{Svrbíková}", q"{Sámelová}", q"{Sýkorová}", q"{Tatarová}", q"{Tatarková}"
		, q"{Tatárová}", q"{Tatárkaová}", q"{Thomková}", q"{Tomečeková}", q"{Tomková}", q"{Trubenová}"
		, q"{Turčoková}", q"{Uramová}", q"{Urblíková}", q"{Vajcíková}", q"{Vajdová}", q"{Valachová}"
		, q"{Valachovičová}", q"{Valentová}", q"{Valušková}", q"{Vaneková}", q"{Veselová}"
		, q"{Vicenová}", q"{Višňovská}", q"{Vlachová}", q"{Vojteková}", q"{Vydarená}", q"{Zajacová}"
		, q"{Zimová}", q"{Zimková}", q"{Záborská}", q"{Zúbriková}", q"{Čapkovičová}", q"{Čaplovičová}"
		, q"{Čarnogurská}", q"{Čierná}", q"{Čobrdová}", q"{Ďaďová}", q"{Ďuricová}", q"{Ďurišová}"
		, q"{Šidlová}", q"{Šimonovičová}", q"{Škriniarová}", q"{Škultétyová}", q"{Šmajdová}"
		, q"{Šoltésová}", q"{Šoltýsová}", q"{Štefanová}", q"{Štefanková}", q"{Šulcová}"
		, q"{Šurková}", q"{Švehlová}", q"{Šťastná}" ];

		return choice(strs, this.rnd);
	}

	override string personFemalePrefix() {
		const string[] strs =
		[ q"{Ing.}", q"{Mgr.}", q"{JUDr.}", q"{MUDr.}" ];

		return choice(strs, this.rnd);
	}

	override string personFirstName() {
		const string[] strs =
		[ q"{Adam}", q"{Adela}", q"{Adolf}", q"{Adrián}", q"{Adriána}", q"{Agnesa}", q"{Agáta}", q"{Alan}"
		, q"{Albert}", q"{Albín}", q"{Albína}", q"{Alena}", q"{Alexander}", q"{Alexandra}", q"{Alexej}"
		, q"{Aleš}", q"{Alfonz}", q"{Alfréd}", q"{Alica}", q"{Alojz}", q"{Alojza}", q"{Alžbeta}", q"{Ambróz}"
		, q"{Amália}", q"{Anabela}", q"{Anastázia}", q"{Andrea}", q"{Andrej}", q"{Anežka}", q"{Angela}"
		, q"{Anna}", q"{Anton}", q"{Antónia}", q"{Arnold}", q"{Arpád}", q"{Augustín}", q"{Aurel}", q"{Aurélia}"
		, q"{Barbora}", q"{Bartolomej}", q"{Belo}", q"{Benjamín}", q"{Bernard}", q"{Berta}", q"{Beáta}"
		, q"{Beňadik}", q"{Bibiána}", q"{Blahoslav}", q"{Blanka}", q"{Blažej}", q"{Blažena}", q"{Bohdan}"
		, q"{Bohdana}", q"{Bohumil}", q"{Bohumila}", q"{Bohumír}", q"{Bohuslav}", q"{Bohuslava}", q"{Bohuš}"
		, q"{Boleslav}", q"{Bonifác}", q"{Boris}", q"{Božena}", q"{Božidara}", q"{Branislav}", q"{Branislava}"
		, q"{Brigita}", q"{Bronislava}", q"{Bruno}", q"{Bystrík}", q"{Cecília}", q"{Ctibor}", q"{Cyprián}"
		, q"{Cyril}", q"{Dagmara}", q"{Dalibor}", q"{Dana}", q"{Danica}", q"{Daniel}", q"{Daniela}", q"{Darina}"
		, q"{Demeter}", q"{Denis}", q"{Denisa}", q"{Dezider}", q"{Diana}", q"{Dionýz}", q"{Dobromila}"
		, q"{Dobroslav}", q"{Dobroslava}", q"{Dominik}", q"{Dominika}", q"{Dorota}", q"{Drahomír}"
		, q"{Drahomíra}", q"{Drahoslav}", q"{Drahoslava}", q"{Dušan}", q"{Dušana}", q"{Dávid}", q"{Dáša}"
		, q"{Edita}", q"{Edmund}", q"{Eduard}", q"{Ela}", q"{Elena}", q"{Eleonóra}", q"{Eliška}", q"{Elvíra}"
		, q"{Ema}", q"{Emanuel}", q"{Emil}", q"{Emília}", q"{Erik}", q"{Erika}", q"{Ernest}", q"{Ervín}"
		, q"{Estera}", q"{Etela}", q"{Eugen}", q"{Eugénia}", q"{Eva}", q"{Fedor}", q"{Ferdinand}", q"{Filip}"
		, q"{Filoména}", q"{Florián}", q"{František}", q"{Františka}", q"{Frederik}", q"{Fridrich}"
		, q"{Félix}", q"{Gabriel}", q"{Gabriela}", q"{Galina}", q"{Gašpar}", q"{Gejza}", q"{Gertrúda}"
		, q"{Gizela}", q"{Gregor}", q"{Gustáv}", q"{Hana}", q"{Hedviga}", q"{Helena}", q"{Henrich}", q"{Henrieta}"
		, q"{Hermína}", q"{Hilda}", q"{Hortenzia}", q"{Hubert}", q"{Hugo}", q"{Ida}", q"{Ignác}", q"{Igor}"
		, q"{Imrich}", q"{Ingrida}", q"{Irena}", q"{Irma}", q"{Ivan}", q"{Ivana}", q"{Iveta}", q"{Ivica}"
		, q"{Izabela}", q"{Izidor}", q"{Iľja}", q"{Jakub}", q"{Jana}", q"{Jarmila}", q"{Jarolím}", q"{Jaromír}"
		, q"{Jaroslav}", q"{Jaroslava}", q"{Jela}", q"{Jerguš}", q"{Jolana}", q"{Jozef}", q"{Jozefína}"
		, q"{Judita}", q"{Juliana}", q"{Juraj}", q"{Justína}", q"{Ján}", q"{Júlia}", q"{Július}", q"{Kamil}"
		, q"{Kamila}", q"{Karina}", q"{Karol}", q"{Karolína}", q"{Katarína}", q"{Kazimír}", q"{Klaudia}"
		, q"{Klement}", q"{Klára}", q"{Koloman}", q"{Konštantín}", q"{Kornel}", q"{Kornélia}", q"{Kristián}"
		, q"{Kristína}", q"{Krištof}", q"{Kvetoslava}", q"{Ladislav}", q"{Laura}", q"{Lea}", q"{Lenka}"
		, q"{Leonard}", q"{Leopold}", q"{Lesana}", q"{Levoslav}", q"{Liana}", q"{Libuša}", q"{Linda}"
		, q"{Lucia}", q"{Lujza}", q"{Lukáš}", q"{Lívia}", q"{Lýdia}", q"{Magdaléna}", q"{Malvína}"
		, q"{Marcel}", q"{Marcela}", q"{Marek}", q"{Margaréta}", q"{Margita}", q"{Marianna}", q"{Marián}"
		, q"{Maroš}", q"{Marta}", q"{Martin}", q"{Martina}", q"{Marína}", q"{Matej}", q"{Matilda}", q"{Matúš}"
		, q"{Maximilián}", q"{Medard}", q"{Melinda}", q"{Melánia}", q"{Metod}", q"{Michaela}", q"{Michal}"
		, q"{Mikuláš}", q"{Milada}", q"{Milan}", q"{Milena}", q"{Milica}", q"{Miloslav}", q"{Miloslava}"
		, q"{Milota}", q"{Miloš}", q"{Miriama}", q"{Miroslav}", q"{Miroslava}", q"{Mojmír}", q"{Monika}"
		, q"{Mária}", q"{Móric}", q"{Nadežda}", q"{Nataša}", q"{Natália}", q"{Nikola}", q"{Nina}"
		, q"{Nora}", q"{Norbert}", q"{Oldrich}", q"{Oleg}", q"{Oliver}", q"{Olympia}", q"{Ondrej}", q"{Oskar}"
		, q"{Oto}", q"{Otília}", q"{Oľga}", q"{Pankrác}", q"{Patrik}", q"{Patrícia}", q"{Paulína}"
		, q"{Pavol}", q"{Perla}", q"{Peter}", q"{Petra}", q"{Petronela}", q"{Pravoslav}", q"{Prokop}", q"{Radomír}"
		, q"{Radoslav}", q"{Radovan}", q"{Radúz}", q"{Rastislav}", q"{Rebeka}", q"{Regína}", q"{Renáta}"
		, q"{René}", q"{Richard}", q"{Roland}", q"{Roman}", q"{Romana}", q"{Rozália}", q"{Rudolf}", q"{Ružena}"
		, q"{Róbert}", q"{Sabína}", q"{Samuel}", q"{Sergej}", q"{Servác}", q"{Severín}", q"{Sidónia}"
		, q"{Silvester}", q"{Silvia}", q"{Simona}", q"{Slavomír}", q"{Sláva}", q"{Slávka}", q"{Sofia}"
		, q"{Soňa}", q"{Stanislav}", q"{Stanislava}", q"{Stela}", q"{Svetlana}", q"{Svetozár}", q"{Svätopluk}"
		, q"{Sára}", q"{Tadeáš}", q"{Tamara}", q"{Tatiana}", q"{Teodor}", q"{Terézia}", q"{Tibor}"
		, q"{Tichomír}", q"{Timotej}", q"{Tomáš}", q"{Urban}", q"{Uršuľa}", q"{Valentín}", q"{Valentína}"
		, q"{Valér}", q"{Valéria}", q"{Vanda}", q"{Vanesa}", q"{Vasil}", q"{Vavrinec}", q"{Vendelín}"
		, q"{Veronika}", q"{Viera}", q"{Vieroslava}", q"{Viktor}", q"{Viktória}", q"{Viliam}", q"{Vilma}"
		, q"{Vincent}", q"{Viola}", q"{Vladimír}", q"{Vladimíra}", q"{Vladislav}", q"{Vlasta}", q"{Vlastimil}"
		, q"{Vojtech}", q"{Vratislav}", q"{Vratko}", q"{Václav}", q"{Vít}", q"{Víťazoslav}", q"{Xénia}"
		, q"{Zdenka}", q"{Zdenko}", q"{Zina}", q"{Zita}", q"{Zlatica}", q"{Zlatko}", q"{Zoja}", q"{Zoltán}"
		, q"{Zora}", q"{Zuzana}", q"{Ľubica}", q"{Ľubomír}", q"{Ľubomíra}", q"{Ľubor}", q"{Ľuboslav}"
		, q"{Ľuboslava}", q"{Ľuboš}", q"{Ľudmila}", q"{Ľudomil}", q"{Ľudomila}", q"{Ľudovít}"
		, q"{Štefan}", q"{Štefánia}", q"{Žaneta}", q"{Želmíra}", q"{Žigmund}", q"{Žofia}" ];

		return choice(strs, this.rnd);
	}

	override string personMaleFirstName() {
		const string[] strs =
		[ q"{Drahoslav}", q"{Severín}", q"{Alexej}", q"{Ernest}", q"{Rastislav}", q"{Radovan}", q"{Dobroslav}"
		, q"{Dalibor}", q"{Vincent}", q"{Miloš}", q"{Timotej}", q"{Gejza}", q"{Bohuš}", q"{Alfonz}", q"{Gašpar}"
		, q"{Emil}", q"{Erik}", q"{Blažej}", q"{Zdenko}", q"{Dezider}", q"{Arpád}", q"{Valentín}", q"{Pravoslav}"
		, q"{Jaromír}", q"{Roman}", q"{Matej}", q"{Frederik}", q"{Viktor}", q"{Alexander}", q"{Radomír}"
		, q"{Albín}", q"{Bohumil}", q"{Kazimír}", q"{Fridrich}", q"{Radoslav}", q"{Tomáš}", q"{Alan}"
		, q"{Branislav}", q"{Bruno}", q"{Gregor}", q"{Vlastimil}", q"{Boleslav}", q"{Eduard}", q"{Jozef}"
		, q"{Víťazoslav}", q"{Blahoslav}", q"{Beňadik}", q"{Adrián}", q"{Gabriel}", q"{Marián}"
		, q"{Emanuel}", q"{Miroslav}", q"{Benjamín}", q"{Hugo}", q"{Richard}", q"{Izidor}", q"{Zoltán}"
		, q"{Albert}", q"{Igor}", q"{Július}", q"{Aleš}", q"{Fedor}", q"{Rudolf}", q"{Valér}", q"{Marcel}"
		, q"{Ervín}", q"{Slavomír}", q"{Vojtech}", q"{Juraj}", q"{Marek}", q"{Jaroslav}", q"{Žigmund}"
		, q"{Florián}", q"{Roland}", q"{Pankrác}", q"{Servác}", q"{Bonifác}", q"{Svetozár}", q"{Bernard}"
		, q"{Júlia}", q"{Urban}", q"{Dušan}", q"{Viliam}", q"{Ferdinand}", q"{Norbert}", q"{Róbert}"
		, q"{Medard}", q"{Zlatko}", q"{Anton}", q"{Vasil}", q"{Vít}", q"{Adolf}", q"{Vratislav}", q"{Alfréd}"
		, q"{Alojz}", q"{Ján}", q"{Tadeáš}", q"{Ladislav}", q"{Peter}", q"{Pavol}", q"{Miloslav}", q"{Prokop}"
		, q"{Cyril}", q"{Metod}", q"{Patrik}", q"{Oliver}", q"{Ivan}", q"{Kamil}", q"{Henrich}", q"{Drahomír}"
		, q"{Bohuslav}", q"{Iľja}", q"{Daniel}", q"{Vladimír}", q"{Jakub}", q"{Krištof}", q"{Ignác}"
		, q"{Gustáv}", q"{Jerguš}", q"{Dominik}", q"{Oskar}", q"{Vavrinec}", q"{Ľubomír}", q"{Mojmír}"
		, q"{Leonard}", q"{Tichomír}", q"{Filip}", q"{Bartolomej}", q"{Ľudovít}", q"{Samuel}", q"{Augustín}"
		, q"{Belo}", q"{Oleg}", q"{Bystrík}", q"{Ctibor}", q"{Ľudomil}", q"{Konštantín}", q"{Ľuboslav}"
		, q"{Matúš}", q"{Móric}", q"{Ľuboš}", q"{Ľubor}", q"{Vladislav}", q"{Cyprián}", q"{Václav}"
		, q"{Michal}", q"{Jarolím}", q"{Arnold}", q"{Levoslav}", q"{František}", q"{Dionýz}", q"{Maximilián}"
		, q"{Koloman}", q"{Boris}", q"{Lukáš}", q"{Kristián}", q"{Vendelín}", q"{Sergej}", q"{Aurel}"
		, q"{Demeter}", q"{Denis}", q"{Hubert}", q"{Karol}", q"{Imrich}", q"{René}", q"{Bohumír}", q"{Teodor}"
		, q"{Tibor}", q"{Maroš}", q"{Martin}", q"{Svätopluk}", q"{Stanislav}", q"{Leopold}", q"{Eugen}"
		, q"{Félix}", q"{Klement}", q"{Kornel}", q"{Milan}", q"{Vratko}", q"{Ondrej}", q"{Andrej}", q"{Edmund}"
		, q"{Oldrich}", q"{Oto}", q"{Mikuláš}", q"{Ambróz}", q"{Radúz}", q"{Bohdan}", q"{Adam}", q"{Štefan}"
		, q"{Dávid}", q"{Silvester}" ];

		return choice(strs, this.rnd);
	}

	string personMaleLastName() {
		const string[] strs =
		[ q"{Antal}", q"{Babka}", q"{Bahna}", q"{Bahno}", q"{Baláž}", q"{Baran}", q"{Baranka}", q"{Bartovič}"
		, q"{Bartoš}", q"{Bača}", q"{Bernolák}", q"{Beňo}", q"{Bicek}", q"{Bielik}", q"{Blaho}", q"{Bondra}"
		, q"{Bosák}", q"{Boška}", q"{Brezina}", q"{Bukovský}", q"{Chalupka}", q"{Chudík}", q"{Cibula}"
		, q"{Cibulka}", q"{Cibuľa}", q"{Cyprich}", q"{Cíger}", q"{Danko}", q"{Daňko}", q"{Daňo}", q"{Debnár}"
		, q"{Dej}", q"{Dekýš}", q"{Doležal}", q"{Dočolomanský}", q"{Droppa}", q"{Dubovský}", q"{Dudek}"
		, q"{Dula}", q"{Dulla}", q"{Dusík}", q"{Dvonč}", q"{Dzurjanin}", q"{Dávid}", q"{Fabian}", q"{Fabián}"
		, q"{Fajnor}", q"{Farkašovský}", q"{Fico}", q"{Filc}", q"{Filip}", q"{Finka}", q"{Ftorek}", q"{Gašpar}"
		, q"{Gašparovič}", q"{Gocník}", q"{Gregor}", q"{Greguš}", q"{Grznár}", q"{Hablák}", q"{Habšuda}"
		, q"{Halda}", q"{Haluška}", q"{Halák}", q"{Hanko}", q"{Hanzal}", q"{Haščák}", q"{Heretik}"
		, q"{Hečko}", q"{Hlaváček}", q"{Hlinka}", q"{Holub}", q"{Holuby}", q"{Hossa}", q"{Hoza}", q"{Hraško}"
		, q"{Hric}", q"{Hrmo}", q"{Hrušovský}", q"{Huba}", q"{Ihnačák}", q"{Janeček}", q"{Janoška}"
		, q"{Jantošovič}", q"{Janík}", q"{Janček}", q"{Jedľovský}", q"{Jendek}", q"{Jonata}", q"{Jurina}"
		, q"{Jurkovič}", q"{Jurík}", q"{Jánošík}", q"{Kafenda}", q"{Kaliský}", q"{Karul}", q"{Keníž}"
		, q"{Klapka}", q"{Kmeť}", q"{Kolesár}", q"{Kollár}", q"{Kolnik}", q"{Kolník}", q"{Kolár}"
		, q"{Korec}", q"{Kostka}", q"{Kostrec}", q"{Kováč}", q"{Kováčik}", q"{Koza}", q"{Kočiš}"
		, q"{Krajíček}", q"{Krajči}", q"{Krajčo}", q"{Krajčovič}", q"{Krajčír}", q"{Králik}"
		, q"{Krúpa}", q"{Kubík}", q"{Kyseľ}", q"{Kállay}", q"{Labuda}", q"{Lepšík}", q"{Lipták}"
		, q"{Lisický}", q"{Lubina}", q"{Lukáč}", q"{Lupták}", q"{Líška}", q"{Madej}", q"{Majeský}"
		, q"{Malachovský}", q"{Malíšek}", q"{Mamojka}", q"{Marcinko}", q"{Marián}", q"{Masaryk}"
		, q"{Maslo}", q"{Matiaško}", q"{Medveď}", q"{Melcer}", q"{Mečiar}", q"{Michalík}", q"{Mihalik}"
		, q"{Mihál}", q"{Mihálik}", q"{Mikloško}", q"{Mikulík}", q"{Mikuš}", q"{Mikúš}", q"{Milota}"
		, q"{Mináč}", q"{Mišík}", q"{Mojžiš}", q"{Mokroš}", q"{Mora}", q"{Moravčík}", q"{Mydlo}"
		, q"{Nemec}", q"{Nitra}", q"{Novák}", q"{Obšut}", q"{Ondruš}", q"{Otčenáš}", q"{Pauko}", q"{Pavlikovský}"
		, q"{Pavúk}", q"{Pašek}", q"{Paška}", q"{Paško}", q"{Pelikán}", q"{Petrovický}", q"{Petruška}"
		, q"{Peško}", q"{Plch}", q"{Plekanec}", q"{Podhradský}", q"{Podkonický}", q"{Poliak}", q"{Pupák}"
		, q"{Rak}", q"{Repiský}", q"{Romančík}", q"{Rus}", q"{Ružička}", q"{Rybníček}", q"{Rybár}"
		, q"{Rybárik}", q"{Samson}", q"{Sedliak}", q"{Senko}", q"{Sklenka}", q"{Skokan}", q"{Skutecký}"
		, q"{Slašťan}", q"{Sloboda}", q"{Slobodník}", q"{Slota}", q"{Slovák}", q"{Smrek}", q"{Stodola}"
		, q"{Straka}", q"{Strnisko}", q"{Svrbík}", q"{Sámel}", q"{Sýkora}", q"{Tatar}", q"{Tatarka}"
		, q"{Tatár}", q"{Tatárka}", q"{Thomka}", q"{Tomeček}", q"{Tomka}", q"{Tomko}", q"{Truben}", q"{Turčok}"
		, q"{Uram}", q"{Urblík}", q"{Vajcík}", q"{Vajda}", q"{Valach}", q"{Valachovič}", q"{Valent}"
		, q"{Valuška}", q"{Vanek}", q"{Vesel}", q"{Vicen}", q"{Višňovský}", q"{Vlach}", q"{Vojtek}"
		, q"{Vydarený}", q"{Zajac}", q"{Zima}", q"{Zimka}", q"{Záborský}", q"{Zúbrik}", q"{Čapkovič}"
		, q"{Čaplovič}", q"{Čarnogurský}", q"{Čierny}", q"{Čobrda}", q"{Ďaďo}", q"{Ďurica}"
		, q"{Ďuriš}", q"{Šidlo}", q"{Šimonovič}", q"{Škriniar}", q"{Škultéty}", q"{Šmajda}"
		, q"{Šoltés}", q"{Šoltýs}", q"{Štefan}", q"{Štefanka}", q"{Šulc}", q"{Šurka}", q"{Švehla}"
		, q"{Šťastný}" ];

		return choice(strs, this.rnd);
	}

	override string personMalePrefix() {
		const string[] strs =
		[ q"{Ing.}", q"{Mgr.}", q"{JUDr.}", q"{MUDr.}" ];

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
		[ q"{Ing.}", q"{JUDr.}", q"{MUDr.}", q"{Mgr.}" ];

		return choice(strs, this.rnd);
	}

	override string personSuffix() {
		const string[] strs =
		[ q"{Phd.}" ];

		return choice(strs, this.rnd);
	}

	override string phoneNumberFormats() {
		const string[] strs =
		[ q"{09## ### ###}", q"{0## #### ####}", q"{0# #### ####}", q"{+421 ### ### ###}" ];

		return numberBuild(choice(strs, this.rnd));
	}

}

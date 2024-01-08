module faked.faker_pt_pt;

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

class Faker_pt_pt : Faker_en {
@safe:
	this(int seed) {
		super(seed);
	}

	override string cellPhoneFormats() {
		const string[] strs =
		[ q"{+351 91#######}", q"{+351 93#######}", q"{+351 96#######}" ];

		return numberBuild(choice(strs, this.rnd));
	}

	override string commerceProductNameAdjective() {
		const string[] strs =
		[ q"{Pequeno}", q"{Ergonómico}", q"{Rústico}", q"{Inteligente}", q"{Linda}", q"{Incrível}"
		, q"{Fantástico}", q"{Prático}", q"{Lustroso}", q"{Impressionante}", q"{Genérico}", q"{Artesanal}"
		, q"{Feito à Mão}", q"{Licenciado}", q"{Refinado}", q"{Sem Marca}", q"{Saboroso}" ];

		return choice(strs, this.rnd);
	}

	override string commerceProductNameMaterial() {
		const string[] strs =
		[ q"{Aço}", q"{Madeira}", q"{Betão}", q"{Plástico}", q"{Algodão}", q"{Granito}", q"{Borracha}"
		, q"{Metal}", q"{Suave}", q"{Fresco}", q"{Congelado}" ];

		return choice(strs, this.rnd);
	}

	override string commerceProductNameProduct() {
		const string[] strs =
		[ q"{Cadeira}", q"{Carro}", q"{Computador}", q"{Teclado}", q"{Rato}", q"{Bicicleta}", q"{Bola}", q"{Luvas}"
		, q"{Calças}", q"{Camisa}", q"{Mesa}", q"{Sapatos}", q"{Chapéu}", q"{Toalhas}", q"{Sabonete}"
		, q"{Atum}", q"{Frango}", q"{Peixe}", q"{Queijo}", q"{Bacon}", q"{Pizza}", q"{Salada}", q"{Salsichas}"
		, q"{Batatas Fritas}" ];

		return choice(strs, this.rnd);
	}

	override string dateMonthWide() {
		const string[] strs =
		[ q"{Janeiro}", q"{Fevereiro}", q"{Março}", q"{Abril}", q"{Maio}", q"{Junho}", q"{Julho}", q"{Agosto}"
		, q"{Setembro}", q"{Outubro}", q"{Novembro}", q"{Dezembro}" ];

		return choice(strs, this.rnd);
	}

	override string dateMonthAbbr() {
		const string[] strs =
		[ q"{Jan}", q"{Fev}", q"{Mar}", q"{Abr}", q"{Mai}", q"{Jun}", q"{Jul}", q"{Ago}", q"{Set}", q"{Out}", q"{Nov}"
		, q"{Dez}" ];

		return choice(strs, this.rnd);
	}

	override string dateWeekdayWide() {
		const string[] strs =
		[ q"{Segunda}", q"{Terça}", q"{Quarta}", q"{Quinta}", q"{Sexta}", q"{Sábado}", q"{Domingo}" ];

		return choice(strs, this.rnd);
	}

	override string dateWeekdayAbbr() {
		const string[] strs =
		[ q"{Seg}", q"{Ter}", q"{Qua}", q"{Qui}", q"{Sex}", q"{Sáb}", q"{Dom}" ];

		return choice(strs, this.rnd);
	}

	override string internetDomainSuffix() {
		const string[] strs =
		[ q"{pt}", q"{gov.pt}", q"{com.pt}", q"{org.pt}", q"{eu}", q"{com}", q"{biz}", q"{info}", q"{name}", q"{net}"
		, q"{org}" ];

		return choice(strs, this.rnd);
	}

	override string internetFreeEmail() {
		const string[] strs =
		[ q"{gmail.com}", q"{yahoo.com}", q"{hotmail.com}", q"{outlook.com}", q"{live.com}", q"{portugalmail.pt}"
		, q"{mail.pt}", q"{sapo.pt}", q"{aeiou.pt}" ];

		return choice(strs, this.rnd);
	}

	override string locationBuildingNumber() {
		const string[] strs =
		[ q"{####}", q"{###}", q"{##}", q"{#}" ];

		return numberBuild(choice(strs, this.rnd));
	}

	override string locationCityName() {
		const string[] strs =
		[ q"{Abrantes}", q"{Agualva-Cacém}", q"{Águeda}", q"{Albufeira}", q"{Alcácer do Sal}", q"{Alcobaça}"
		, q"{Alfena}", q"{Almada}", q"{Almeirim}", q"{Amadora}", q"{Amarante}", q"{Amora}", q"{Anadia}"
		, q"{Angra do Heroísmo}", q"{Aveiro}", q"{Barcelos}", q"{Barreiro}", q"{Beja}", q"{Braga}"
		, q"{Bragança}", q"{Caldas da Rainha}", q"{Câmara de Lobos}", q"{Caniço}", q"{Cantanhede}"
		, q"{Cartaxo}", q"{Castelo Branco}", q"{Chaves}", q"{Coimbra}", q"{Costa da Caparica}", q"{Covilhã}"
		, q"{Elvas}", q"{Entroncamento}", q"{Ermesinde}", q"{Esmoriz}", q"{Espinho}", q"{Esposende}"
		, q"{Estarreja}", q"{Estremoz}", q"{Évora}", q"{Fafe}", q"{Faro}", q"{Fátima}", q"{Felgueiras}"
		, q"{Fiães}", q"{Figueira da Foz}", q"{Freamunde}", q"{Funchal}", q"{Fundão}", q"{Gafanha da Nazaré}"
		, q"{Gandra}", q"{Gondomar}", q"{Gouveia}", q"{Guarda}", q"{Guimarães}", q"{Horta}", q"{Ílhavo}"
		, q"{Lagoa}", q"{Lagos}", q"{Lamego}", q"{Leiria}", q"{Lisbon}", q"{Lixa}", q"{Loulé}", q"{Loures}"
		, q"{Lourosa}", q"{Macedo de Cavaleiros}", q"{Machico}", q"{Maia}", q"{Mangualde}", q"{Marco de Canaveses}"
		, q"{Marinha Grande}", q"{Matosinhos}", q"{Mealhada}", q"{Mêda}", q"{Miranda do Douro}"
		, q"{Mirandela}", q"{Montemor-o-Novo}", q"{Montijo}", q"{Moura}", q"{Odivelas}", q"{Olhão da Restauração}"
		, q"{Oliveira de Azeméis}", q"{Oliveira do Bairro}", q"{Oliveira do Hospital}", q"{Ourém}"
		, q"{Ovar}", q"{Paços de Ferreira}", q"{Paredes}", q"{Penafiel}", q"{Peniche}", q"{Peso da Régua}"
		, q"{Pinhel}", q"{Pombal}", q"{Ponta Delgada}", q"{Ponte de Sor}", q"{Portalegre}", q"{Portimão}"
		, q"{Porto}", q"{Póvoa de Santa Iria}", q"{Póvoa de Varzim}", q"{Praia da Vitória}"
		, q"{Quarteira}", q"{Queluz}", q"{Rebordosa}", q"{Reguengos de Monsaraz}", q"{Ribeira Grande}"
		, q"{Rio Maior}", q"{Rio Tinto}", q"{Sabugal}", q"{Sacavém}", q"{Santa Comba Dão}", q"{Santa Cruz}"
		, q"{Santa Maria da Feira}", q"{Santana}", q"{Santarém}", q"{Santiago do Cacém}", q"{Santo Tirso}"
		, q"{São João da Madeira}", q"{São Mamede de Infesta}", q"{São Salvador de Lordelo}"
		, q"{Seia}", q"{Seixal}", q"{Serpa}", q"{Setúbal}", q"{Silves}", q"{Sines}", q"{Tarouca}", q"{Tavira}"
		, q"{Tomar}", q"{Tondela}", q"{Torres Novas}", q"{Torres Vedras}", q"{Trancoso}", q"{Trofa}"
		, q"{Valbom}", q"{Vale de Cambra}", q"{Valongo}", q"{Valpaços}", q"{Vendas Novas}", q"{Viana do Castelo}"
		, q"{Vila Baleira (a.k.a. Porto Santo)}", q"{Vila do Conde}", q"{Vila Franca de Xira}"
		, q"{Vila Nova de Famalicão}", q"{Vila Nova de Foz Côa}", q"{Vila Nova de Gaia}"
		, q"{Vila Nova de Santo André}", q"{Vila Real}", q"{Vila Real de Santo António}"
		, q"{Viseu}", q"{Vizela}" ];

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
		[ q"{África do Sul}", q"{Áustria}", q"{Índia}", q"{Afeganistão}", q"{Albânia}", q"{Alemanha}"
		, q"{Andorra}", q"{Angola}", q"{Anguila}", q"{Antárctida}", q"{Antígua e Barbuda}", q"{Antilhas Neerlandesas}"
		, q"{Arábia Saudita}", q"{Argélia}", q"{Argentina}", q"{Arménia}", q"{Aruba}", q"{Austrália}"
		, q"{Azerbaijão}", q"{Bélgica}", q"{Bósnia e Herzegovina}", q"{Baamas}", q"{Bangladeche}"
		, q"{Barém}", q"{Barbados}", q"{Belize}", q"{Benim}", q"{Bermudas}", q"{Bielorrússia}", q"{Birmânia}"
		, q"{Bolívia}", q"{Botsuana}", q"{Brasil}", q"{Brunei}", q"{Bulgária}", q"{Burúndi}", q"{Burquina Faso}"
		, q"{Butão}", q"{Cabo Verde}", q"{Camarões}", q"{Camboja}", q"{Canadá}", q"{Catar}", q"{Cazaquistão}"
		, q"{Chade}", q"{Chile}", q"{China}", q"{Chipre}", q"{Colômbia}", q"{Comores}", q"{Congo-Brazzaville}"
		, q"{Congo-Kinshasa}", q"{Coreia do Norte}", q"{Coreia do Sul}", q"{Costa Rica}", q"{Costa do Marfim}"
		, q"{Croácia}", q"{Cuba}", q"{Dinamarca}", q"{Domínica}", q"{Egipto}", q"{Emiratos Árabes Unidos}"
		, q"{Equador}", q"{Eritreia}", q"{Eslováquia}", q"{Eslovénia}", q"{Espanha}", q"{Estónia}"
		, q"{Estados Unidos}", q"{Etiópia}", q"{Faroé}", q"{Fiji}", q"{Filipinas}", q"{Finlândia}"
		, q"{França}", q"{Gâmbia}", q"{Gabão}", q"{Gana}", q"{Geórgia}", q"{Geórgia do Sul e Sandwich do Sul}"
		, q"{Gibraltar}", q"{Grécia}", q"{Granada}", q"{Gronelândia}", q"{Guadalupe}", q"{Guame}"
		, q"{Guatemala}", q"{Guiana}", q"{Guiana Francesa}", q"{Guiné}", q"{Guiné Equatorial}"
		, q"{Guiné-Bissau}", q"{Haiti}", q"{Honduras}", q"{Hong Kong}", q"{Hungria}", q"{Iémen}", q"{Ilha Bouvet}"
		, q"{Ilha Norfolk}", q"{Ilha do Natal}", q"{Ilhas Caimão}", q"{Ilhas Cook}", q"{Ilhas Falkland}"
		, q"{Ilhas Heard e McDonald}", q"{Ilhas Marshall}", q"{Ilhas Menores Distantes dos Estados Unidos}"
		, q"{Ilhas Salomão}", q"{Ilhas Turcas e Caicos}", q"{Ilhas Virgens Americanas}", q"{Ilhas Virgens Britânicas}"
		, q"{Ilhas dos Cocos}", q"{Indonésia}", q"{Irão}", q"{Iraque}", q"{Irlanda}", q"{Islândia}"
		, q"{Israel}", q"{Itália}", q"{Jamaica}", q"{Japão}", q"{Jibuti}", q"{Jordânia}", q"{Jugoslávia}"
		, q"{Kuwait}", q"{Líbano}", q"{Líbia}", q"{Laos}", q"{Lesoto}", q"{Letónia}", q"{Libéria}"
		, q"{Listenstaine}", q"{Lituânia}", q"{Luxemburgo}", q"{México}", q"{Mónaco}", q"{Macau}"
		, q"{Macedónia}", q"{Madagáscar}", q"{Malásia}", q"{Malávi}", q"{Maldivas}", q"{Mali}", q"{Malta}"
		, q"{Marianas do Norte}", q"{Marrocos}", q"{Martinica}", q"{Maurícia}", q"{Mauritânia}"
		, q"{Mayotte}", q"{Micronésia}", q"{Moçambique}", q"{Moldávia}", q"{Mongólia}", q"{Monserrate}"
		, q"{Níger}", q"{Namíbia}", q"{Nauru}", q"{Nepal}", q"{Nicarágua}", q"{Nigéria}", q"{Niue}"
		, q"{Noruega}", q"{Nova Caledónia}", q"{Nova Zelândia}", q"{Omã}", q"{Países Baixos}"
		, q"{Palau}", q"{Panamá}", q"{Papua-Nova Guiné}", q"{Paquistão}", q"{Paraguai}", q"{Peru}"
		, q"{Pitcairn}", q"{Polónia}", q"{Polinésia Francesa}", q"{Porto Rico}", q"{Portugal}"
		, q"{Quénia}", q"{Quirguizistão}", q"{Quiribáti}", q"{Rússia}", q"{Reino Unido}", q"{República Centro-Africana}"
		, q"{República Checa}", q"{República Dominicana}", q"{Reunião}", q"{Roménia}", q"{Ruanda}"
		, q"{São Cristóvão e Neves}", q"{São Marinho}", q"{São Pedro e Miquelon}", q"{São Tomé e Príncipe}"
		, q"{São Vicente e Granadinas}", q"{Síria}", q"{Salvador}", q"{Samoa}", q"{Samoa Americana}"
		, q"{Santa Helena}", q"{Santa Lúcia}", q"{Sara Ocidental}", q"{Seicheles}", q"{Senegal}"
		, q"{Serra Leoa}", q"{Singapura}", q"{Somália}", q"{Sri Lanca}", q"{Suécia}", q"{Suíça}"
		, q"{Suazilândia}", q"{Sudão}", q"{Suriname}", q"{Svalbard e Jan Mayen}", q"{Tailândia}"
		, q"{Taiwan}", q"{Tajiquistão}", q"{Tanzânia}", q"{Território Britânico do Oceano Índico}"
		, q"{Territórios Austrais Franceses}", q"{Timor Leste}", q"{Togo}", q"{Tokelau}", q"{Tonga}"
		, q"{Trindade e Tobago}", q"{Tunísia}", q"{Turquemenistão}", q"{Turquia}", q"{Tuvalu}"
		, q"{Ucrânia}", q"{Uganda}", q"{Uruguai}", q"{Usbequistão}", q"{Vanuatu}", q"{Vaticano}", q"{Venezuela}"
		, q"{Vietname}", q"{Wallis e Futuna}", q"{Zâmbia}", q"{Zimbabué}" ];

		return choice(strs, this.rnd);
	}

	override string locationDefaultCountry() {
		const string[] strs =
		[ q"{Portugal}" ];

		return choice(strs, this.rnd);
	}

	override string locationDirection() {
		const string[] strs =
		[ q"{Norte}", q"{Este}", q"{Sul}", q"{Oeste}", q"{Nordeste}", q"{Noroeste}", q"{Sudeste}", q"{Sodoeste}" ];

		return choice(strs, this.rnd);
	}

	override string locationPostcode() {
		const string[] strs =
		[ q"{####-###}" ];

		return numberBuild(choice(strs, this.rnd));
	}

	override string locationSecondaryAddress() {
		const string[] strs =
		[ q"{#Drt.}", q"{#Esq.}", q"{#Frt}", q"{R/C}", q"{Cv}", q"{#A}", q"{#B}", q"{#C}" ];

		return numberBuild(choice(strs, this.rnd));
	}

	override string locationState() {
		const string[] strs =
		[ q"{Azores}", q"{Aveiro}", q"{Beja}", q"{Braga}", q"{Bragança}", q"{Castelo Branco}", q"{Coimbra}"
		, q"{Évora}", q"{Faro}", q"{Guarda}", q"{Leiria}", q"{Lisbon}", q"{Madeira}", q"{Portalegre}"
		, q"{Porto}", q"{Santarém}", q"{Setúbal}", q"{Viana do Castelo}", q"{Vila Real}", q"{Viseu}" ];

		return choice(strs, this.rnd);
	}

	override string locationStreetAddress() {
		const LocationStreetAddressEnum[] enums = [ LocationStreetAddressEnum.normal, LocationStreetAddressEnum.full ];
		return locationStreetAddress(choice(enums, this.rnd));
	}

	override string locationStreetAddress(LocationStreetAddressEnum which) {
		final switch(which) {
			case LocationStreetAddressEnum.normal: return locationStreet() ~ " " ~ locationBuildingNumber();
			case LocationStreetAddressEnum.full: return locationStreet() ~ " " ~ locationBuildingNumber() ~ "-" ~ locationSecondaryAddress();
		}
		return "";
	}

	override string locationStreetPattern() {
		final switch(uniform(0, 1, this.rnd)) {
			case 0: return locationStreetPrefix() ~ " " ~ personFirstName() ~ " " ~ personLastName();
		}
		return "";
	}

	override string personFemaleFirstName() {
		const string[] strs =
		[ q"{Adriana}", q"{Alexandra}", q"{Alice}", q"{Amélia}", q"{Ana}", q"{Ariana}", q"{Áurea}", q"{Aurora}"
		, q"{Bárbara}", q"{Beatriz}", q"{Benedita}", q"{Bruna}", q"{Caetana}", q"{Camila}", q"{Carla}"
		, q"{Carlota}", q"{Carminho}", q"{Carmo}", q"{Carolina}", q"{Catarina}", q"{Cecília}", q"{Célia}"
		, q"{Clara}", q"{Constança}", q"{Daniela}", q"{Débora}", q"{Diana}", q"{Eduarda}", q"{Elisa}"
		, q"{Ema}", q"{Emília}", q"{Érica}", q"{Eva}", q"{Fabiana}", q"{Filipa}", q"{Flor}", q"{Francisca}"
		, q"{Frederica}", q"{Gabriela}", q"{Helena}", q"{Inês}", q"{Irina}", q"{Íris}", q"{Isabel}", q"{Jéssica}"
		, q"{Joana}", q"{Júlia}", q"{Juliana}", q"{Julieta}", q"{Lara}", q"{Laura}", q"{Leonor}", q"{Letícia}"
		, q"{Lia}", q"{Lorena}", q"{Luana}", q"{Luena}", q"{Luísa}", q"{Luna}", q"{Madalena}", q"{Mafalda}"
		, q"{Mara}", q"{Márcia}", q"{Margarida}", q"{Maria}", q"{Mariana}", q"{Marta}", q"{Matilde}", q"{Melissa}"
		, q"{Mia}", q"{Miriam}", q"{Natália}", q"{Nicole}", q"{Núria}", q"{Ofélia}", q"{Olívia}", q"{Paula}"
		, q"{Pilar}", q"{Rafaela}", q"{Raquel}", q"{Rita}", q"{Rosa}", q"{Safira}", q"{Sara}", q"{Sílvia}"
		, q"{Sofia}", q"{Soraia}", q"{Tatiana}", q"{Teresa}", q"{Valentina}", q"{Vânia}", q"{Vera}", q"{Vitória}" ];

		return choice(strs, this.rnd);
	}

	override string personFemalePrefix() {
		const string[] strs =
		[ q"{Sra.}", q"{Dra.}", q"{Prof.ª}", q"{Eng.ª}" ];

		return choice(strs, this.rnd);
	}

	override string personFirstName() {
		const string[] strs =
		[ q"{Adriana}", q"{Afonso}", q"{Alexandra}", q"{Alexandre}", q"{Alice}", q"{Amélia}", q"{Ana}", q"{André}"
		, q"{Ângelo}", q"{António}", q"{Ariana}", q"{Artur}", q"{Áurea}", q"{Aurora}", q"{Bárbara}"
		, q"{Beatriz}", q"{Benedita}", q"{Benjamim}", q"{Bernardo}", q"{Bruna}", q"{Bruno}", q"{Caetana}"
		, q"{Camila}", q"{Carla}", q"{Carlos}", q"{Carlota}", q"{Carminho}", q"{Carmo}", q"{Carolina}"
		, q"{Catarina}", q"{Cecília}", q"{Célia}", q"{César}", q"{Clara}", q"{Constança}", q"{Cristiano}"
		, q"{Daniel}", q"{Daniela}", q"{David}", q"{Débora}", q"{Diana}", q"{Dinis}", q"{Diogo}", q"{Duarte}"
		, q"{Edgar}", q"{Eduarda}", q"{Eduardo}", q"{Elias}", q"{Elisa}", q"{Ema}", q"{Emanuel}", q"{Emília}"
		, q"{Érica}", q"{Eva}", q"{Fabiana}", q"{Fábio}", q"{Feliciano}", q"{Fernando}", q"{Filipa}"
		, q"{Filipe}", q"{Flor}", q"{Francisca}", q"{Francisco}", q"{Frederica}", q"{Frederico}", q"{Gabriel}"
		, q"{Gabriela}", q"{Gaspar}", q"{Gil}", q"{Gonçalo}", q"{Guilherme}", q"{Gustavo}", q"{Helena}"
		, q"{Hélio}", q"{Henrique}", q"{Hugo}", q"{Igor}", q"{Ígor}", q"{Inês}", q"{Irina}", q"{Íris}"
		, q"{Isabel}", q"{Isac}", q"{Ivan}", q"{Ivo}", q"{Jaime}", q"{Jéssica}", q"{Joana}", q"{João}", q"{Joaquim}"
		, q"{Jorge}", q"{José}", q"{Josué}", q"{Júlia}", q"{Juliana}", q"{Julieta}", q"{Júlio}", q"{Lara}"
		, q"{Laura}", q"{Leandro}", q"{Leonardo}", q"{Leonor}", q"{Letícia}", q"{Lia}", q"{Lorena}", q"{Lourenço}"
		, q"{Luana}", q"{Lucas}", q"{Luena}", q"{Luís}", q"{Luísa}", q"{Luna}", q"{Madalena}", q"{Mafalda}"
		, q"{Manel}", q"{Manuel}", q"{Mara}", q"{Marcelo}", q"{Márcia}", q"{Marco}", q"{Marcos}", q"{Margarida}"
		, q"{Maria}", q"{Mariana}", q"{Mário}", q"{Marta}", q"{Martim}", q"{Mateus}", q"{Matias}", q"{Matilde}"
		, q"{Mauro}", q"{Melissa}", q"{Mia}", q"{Micael}", q"{Miguel}", q"{Miriam}", q"{Moisés}", q"{Natália}"
		, q"{Nicole}", q"{Norberto}", q"{Nuno}", q"{Núria}", q"{Ofélia}", q"{Olívia}", q"{Paula}", q"{Paulo}"
		, q"{Pedro}", q"{Pilar}", q"{Rafael}", q"{Rafaela}", q"{Raquel}", q"{Raul}", q"{Renato}", q"{Ricardo}"
		, q"{Rita}", q"{Roberto}", q"{Rodrigo}", q"{Romeu}", q"{Rosa}", q"{Rúben}", q"{Rui}", q"{Safira}"
		, q"{Salvador}", q"{Samuel}", q"{Sandro}", q"{Santiago}", q"{Sara}", q"{Sebastião}", q"{Sérgio}"
		, q"{Sílvia}", q"{Simão}", q"{Sofia}", q"{Soraia}", q"{Tatiana}", q"{Teresa}", q"{Tiago}", q"{Tomás}"
		, q"{Tomé}", q"{Valentim}", q"{Valentina}", q"{Valter}", q"{Vânia}", q"{Vasco}", q"{Vera}", q"{Vicente}"
		, q"{Vítor}", q"{Vitória}", q"{Xavier}" ];

		return choice(strs, this.rnd);
	}

	override string personLastName() {
		const string[] strs =
		[ q"{Abreu}", q"{Albuquerque}", q"{Almeida}", q"{Alves}", q"{Amaral}", q"{Amorim}", q"{Andrade}"
		, q"{Anjos}", q"{Antunes}", q"{Araújo}", q"{Assunção}", q"{Azevedo}", q"{Baptista}", q"{Barbosa}"
		, q"{Barros}", q"{Batista}", q"{Borges}", q"{Braga}", q"{Branco}", q"{Brito}", q"{Campos}", q"{Cardoso}"
		, q"{Carneiro}", q"{Carvalho}", q"{Castro}", q"{Coelho}", q"{Correia}", q"{Costa}", q"{Cruz}", q"{Cunha}"
		, q"{Domingues}", q"{Esteves}", q"{Faria}", q"{Fernandes}", q"{Ferreira}", q"{Figueiredo}", q"{Fonseca}"
		, q"{Freitas}", q"{Garcia}", q"{Gaspar}", q"{Gomes}", q"{Gonçalves}", q"{Guerreiro}", q"{Henriques}"
		, q"{Jesus}", q"{Leal}", q"{Leite}", q"{Lima}", q"{Lopes}", q"{Loureiro}", q"{Lourenço}", q"{Macedo}"
		, q"{Machado}", q"{Magalhães}", q"{Maia}", q"{Marques}", q"{Martins}", q"{Matias}", q"{Matos}"
		, q"{Melo}", q"{Mendes}", q"{Miranda}", q"{Monteiro}", q"{Morais}", q"{Moreira}", q"{Mota}", q"{Moura}"
		, q"{Nascimento}", q"{Neto}", q"{Neves}", q"{Nobre}", q"{Nogueira}", q"{Nunes}", q"{Oliveira}"
		, q"{Pacheco}", q"{Paiva}", q"{Pereira}", q"{Pinheiro}", q"{Pinho}", q"{Pinto}", q"{Pires}", q"{Ramos}"
		, q"{Raposo}", q"{Reis}", q"{Ribeiro}", q"{Rocha}", q"{Rodrigues}", q"{Santos}", q"{Saraiva}", q"{Silva}"
		, q"{Simões}", q"{Soares}", q"{Sousa}", q"{Sá}", q"{Tavares}", q"{Teixeira}", q"{Torres}", q"{Valente}"
		, q"{Vaz}", q"{Vicente}", q"{Vieira}" ];

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
		[ q"{Afonso}", q"{Alexandre}", q"{André}", q"{Ângelo}", q"{António}", q"{Artur}", q"{Benjamim}"
		, q"{Bernardo}", q"{Bruno}", q"{Carlos}", q"{César}", q"{Cristiano}", q"{Daniel}", q"{David}"
		, q"{Dinis}", q"{Diogo}", q"{Duarte}", q"{Edgar}", q"{Eduardo}", q"{Elias}", q"{Emanuel}", q"{Fábio}"
		, q"{Feliciano}", q"{Fernando}", q"{Filipe}", q"{Francisco}", q"{Frederico}", q"{Gabriel}", q"{Gaspar}"
		, q"{Gil}", q"{Gonçalo}", q"{Guilherme}", q"{Gustavo}", q"{Hélio}", q"{Henrique}", q"{Hugo}"
		, q"{Igor}", q"{Ígor}", q"{Isac}", q"{Ivan}", q"{Ivo}", q"{Jaime}", q"{João}", q"{Joaquim}", q"{Jorge}"
		, q"{José}", q"{Josué}", q"{Júlio}", q"{Leandro}", q"{Leonardo}", q"{Lourenço}", q"{Lucas}"
		, q"{Luís}", q"{Manel}", q"{Manuel}", q"{Marcelo}", q"{Marco}", q"{Marcos}", q"{Mário}", q"{Martim}"
		, q"{Mateus}", q"{Matias}", q"{Mauro}", q"{Micael}", q"{Miguel}", q"{Moisés}", q"{Norberto}", q"{Nuno}"
		, q"{Paulo}", q"{Pedro}", q"{Rafael}", q"{Raul}", q"{Renato}", q"{Ricardo}", q"{Roberto}", q"{Rodrigo}"
		, q"{Romeu}", q"{Rúben}", q"{Rui}", q"{Salvador}", q"{Samuel}", q"{Sandro}", q"{Santiago}", q"{Sebastião}"
		, q"{Sérgio}", q"{Simão}", q"{Tiago}", q"{Tomás}", q"{Tomé}", q"{Valentim}", q"{Valter}", q"{Vasco}"
		, q"{Vicente}", q"{Vítor}", q"{Xavier}" ];

		return choice(strs, this.rnd);
	}

	override string personMalePrefix() {
		const string[] strs =
		[ q"{Sr.}", q"{Dr.}", q"{Prof.}", q"{Eng.º}" ];

		return choice(strs, this.rnd);
	}

	override string personName() {
		const int rndInt = uniform(0, 10, this.rnd);

		if(rndInt >= 0 && rndInt < 9) {
			return personFirstName() ~ " " ~ personLastName();
		}
		if(rndInt >= 9 && rndInt < 10) {
			return personPrefix() ~ " " ~ personFirstName() ~ " " ~ personLastName();
		}

		return "";
	}

	override string personPrefix() {
		const string[] strs =
		[ q"{Dr.}", q"{Dra.}", q"{Eng.ª}", q"{Eng.º}", q"{Prof.}", q"{Prof.ª}", q"{Sr.}", q"{Sra.}" ];

		return choice(strs, this.rnd);
	}

	override string phoneNumberFormats() {
		const string[] strs =
		[ q"{+351 2########}", q"{+351 91#######}", q"{+351 92#######}", q"{+351 93#######}", q"{+351 96#######}" ];

		return numberBuild(choice(strs, this.rnd));
	}

}

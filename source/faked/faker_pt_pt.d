// generated by fakerjsgenerator
///
module faked.faker_pt_pt;

import faked.base;


///
class Faker_pt_pt : Faker {
@safe:
	import std.random;
	import std.array;
	import std.format;
	import std.conv : to;

	///
	this(int seed) {
        super(seed);
	}

	///
	string nameMalePrefix() {
		auto data = [
		"Sr.', 'Dr.', 'Prof.', 'Eng.º'"
		];
		return choice(data, this.rnd);
	}

	///
	string nameFemalePrefix() {
		auto data = [
		"Sra.', 'Dra.', 'Prof.ª', 'Eng.ª'"
		];
		return choice(data, this.rnd);
	}

	///
	override string nameMaleFirstName() {
		auto data = [
		"Afonso",
		"Alexandre",
		"André",
		"Ângelo",
		"António",
		"Artur",
		"Benjamim",
		"Bernardo",
		"Bruno",
		"Carlos",
		"César",
		"Cristiano",
		"Daniel",
		"David",
		"Dinis",
		"Diogo",
		"Duarte",
		"Edgar",
		"Eduardo",
		"Elias",
		"Emanuel",
		"Fábio",
		"Feliciano",
		"Fernando",
		"Filipe",
		"Francisco",
		"Frederico",
		"Gabriel",
		"Gaspar",
		"Gil",
		"Gonçalo",
		"Guilherme",
		"Gustavo",
		"Hélio",
		"Henrique",
		"Hugo",
		"Igor",
		"Ígor",
		"Isac",
		"Ivan",
		"Ivo",
		"Jaime",
		"João",
		"Joaquim",
		"Jorge",
		"José",
		"Josué",
		"Júlio",
		"Leandro",
		"Leonardo",
		"Lourenço",
		"Lucas",
		"Luís",
		"Manel",
		"Manuel",
		"Marcelo",
		"Marco",
		"Marcos",
		"Mário",
		"Martim",
		"Mateus",
		"Matias",
		"Mauro",
		"Micael",
		"Miguel",
		"Moisés",
		"Norberto",
		"Nuno",
		"Paulo",
		"Pedro",
		"Rafael",
		"Raul",
		"Renato",
		"Ricardo",
		"Roberto",
		"Rodrigo",
		"Romeu",
		"Rúben",
		"Rui",
		"Salvador",
		"Samuel",
		"Sandro",
		"Santiago",
		"Sebastião",
		"Sérgio",
		"Simão",
		"Tiago",
		"Tomás",
		"Tomé",
		"Valentim",
		"Valter",
		"Vasco",
		"Vicente",
		"Vítor",
		"Xavier",
		""
		];
		return choice(data, this.rnd);
	}

	///
	override string nameSuffix() {
		auto data = [
		""
		];
		return choice(data, this.rnd);
	}

	///
	override string nameLastName() {
		auto data = [
		"Abreu",
		"Albuquerque",
		"Almeida",
		"Alves",
		"Amaral",
		"Amorim",
		"Andrade",
		"Anjos",
		"Antunes",
		"Araújo",
		"Assunção",
		"Azevedo",
		"Baptista",
		"Barbosa",
		"Barros",
		"Batista",
		"Borges",
		"Braga",
		"Branco",
		"Brito",
		"Campos",
		"Cardoso",
		"Carneiro",
		"Carvalho",
		"Castro",
		"Coelho",
		"Correia",
		"Costa",
		"Cruz",
		"Cunha",
		"Domingues",
		"Esteves",
		"Faria",
		"Fernandes",
		"Ferreira",
		"Figueiredo",
		"Fonseca",
		"Freitas",
		"Garcia",
		"Gaspar",
		"Gomes",
		"Gonçalves",
		"Guerreiro",
		"Henriques",
		"Jesus",
		"Leal",
		"Leite",
		"Lima",
		"Lopes",
		"Loureiro",
		"Lourenço",
		"Macedo",
		"Machado",
		"Magalhães",
		"Maia",
		"Marques",
		"Martins",
		"Matias",
		"Matos",
		"Melo",
		"Mendes",
		"Miranda",
		"Monteiro",
		"Morais",
		"Moreira",
		"Mota",
		"Moura",
		"Nascimento",
		"Neto",
		"Neves",
		"Nobre",
		"Nogueira",
		"Nunes",
		"Oliveira",
		"Pacheco",
		"Paiva",
		"Pereira",
		"Pinheiro",
		"Pinho",
		"Pinto",
		"Pires",
		"Ramos",
		"Raposo",
		"Reis",
		"Ribeiro",
		"Rocha",
		"Rodrigues",
		"Santos",
		"Saraiva",
		"Silva",
		"Simões",
		"Soares",
		"Sousa",
		"Sá",
		"Tavares",
		"Teixeira",
		"Torres",
		"Valente",
		"Vaz",
		"Vicente",
		"Vieira",
		""
		];
		return choice(data, this.rnd);
	}

	///
	override string nameFirstName() {
		auto data = [
		"Adriana",
		"Afonso",
		"Alexandra",
		"Alexandre",
		"Alice",
		"Amélia",
		"Ana",
		"André",
		"Ângelo",
		"António",
		"Ariana",
		"Artur",
		"Áurea",
		"Aurora",
		"Bárbara",
		"Beatriz",
		"Benedita",
		"Benjamim",
		"Bernardo",
		"Bruna",
		"Bruno",
		"Caetana",
		"Camila",
		"Carla",
		"Carlos",
		"Carlota",
		"Carminho",
		"Carmo",
		"Carolina",
		"Catarina",
		"Cecília",
		"Célia",
		"César",
		"Clara",
		"Constança",
		"Cristiano",
		"Daniel",
		"Daniela",
		"David",
		"Débora",
		"Diana",
		"Dinis",
		"Diogo",
		"Duarte",
		"Edgar",
		"Eduarda",
		"Eduardo",
		"Elias",
		"Elisa",
		"Ema",
		"Emanuel",
		"Emília",
		"Érica",
		"Eva",
		"Fabiana",
		"Fábio",
		"Feliciano",
		"Fernando",
		"Filipa",
		"Filipe",
		"Flor",
		"Francisca",
		"Francisco",
		"Frederica",
		"Frederico",
		"Gabriel",
		"Gabriela",
		"Gaspar",
		"Gil",
		"Gonçalo",
		"Guilherme",
		"Gustavo",
		"Helena",
		"Hélio",
		"Henrique",
		"Hugo",
		"Igor",
		"Ígor",
		"Inês",
		"Irina",
		"Íris",
		"Isabel",
		"Isac",
		"Ivan",
		"Ivo",
		"Jaime",
		"Jéssica",
		"Joana",
		"João",
		"Joaquim",
		"Jorge",
		"José",
		"Josué",
		"Júlia",
		"Juliana",
		"Julieta",
		"Júlio",
		"Lara",
		"Laura",
		"Leandro",
		"Leonardo",
		"Leonor",
		"Letícia",
		"Lia",
		"Lorena",
		"Lourenço",
		"Luana",
		"Lucas",
		"Luena",
		"Luís",
		"Luísa",
		"Luna",
		"Madalena",
		"Mafalda",
		"Manel",
		"Manuel",
		"Mara",
		"Marcelo",
		"Márcia",
		"Marco",
		"Marcos",
		"Margarida",
		"Maria",
		"Mariana",
		"Mário",
		"Marta",
		"Martim",
		"Mateus",
		"Matias",
		"Matilde",
		"Mauro",
		"Melissa",
		"Mia",
		"Micael",
		"Miguel",
		"Miriam",
		"Moisés",
		"Natália",
		"Nicole",
		"Norberto",
		"Nuno",
		"Núria",
		"Ofélia",
		"Olívia",
		"Paula",
		"Paulo",
		"Pedro",
		"Pilar",
		"Rafael",
		"Rafaela",
		"Raquel",
		"Raul",
		"Renato",
		"Ricardo",
		"Rita",
		"Roberto",
		"Rodrigo",
		"Romeu",
		"Rosa",
		"Rúben",
		"Rui",
		"Safira",
		"Salvador",
		"Samuel",
		"Sandro",
		"Santiago",
		"Sara",
		"Sebastião",
		"Sérgio",
		"Sílvia",
		"Simão",
		"Sofia",
		"Soraia",
		"Tatiana",
		"Teresa",
		"Tiago",
		"Tomás",
		"Tomé",
		"Valentim",
		"Valentina",
		"Valter",
		"Vânia",
		"Vasco",
		"Vera",
		"Vicente",
		"Vítor",
		"Vitória",
		"Xavier",
		""
		];
		return choice(data, this.rnd);
	}

	///
	override string nameFemaleFirstName() {
		auto data = [
		"Adriana",
		"Alexandra",
		"Alice",
		"Amélia",
		"Ana",
		"Ariana",
		"Áurea",
		"Aurora",
		"Bárbara",
		"Beatriz",
		"Benedita",
		"Bruna",
		"Caetana",
		"Camila",
		"Carla",
		"Carlota",
		"Carminho",
		"Carmo",
		"Carolina",
		"Catarina",
		"Cecília",
		"Célia",
		"Clara",
		"Constança",
		"Daniela",
		"Débora",
		"Diana",
		"Eduarda",
		"Elisa",
		"Ema",
		"Emília",
		"Érica",
		"Eva",
		"Fabiana",
		"Filipa",
		"Flor",
		"Francisca",
		"Frederica",
		"Gabriela",
		"Helena",
		"Inês",
		"Irina",
		"Íris",
		"Isabel",
		"Jéssica",
		"Joana",
		"Júlia",
		"Juliana",
		"Julieta",
		"Lara",
		"Laura",
		"Leonor",
		"Letícia",
		"Lia",
		"Lorena",
		"Luana",
		"Luena",
		"Luísa",
		"Luna",
		"Madalena",
		"Mafalda",
		"Mara",
		"Márcia",
		"Margarida",
		"Maria",
		"Mariana",
		"Marta",
		"Matilde",
		"Melissa",
		"Mia",
		"Miriam",
		"Natália",
		"Nicole",
		"Núria",
		"Ofélia",
		"Olívia",
		"Paula",
		"Pilar",
		"Rafaela",
		"Raquel",
		"Rita",
		"Rosa",
		"Safira",
		"Sara",
		"Sílvia",
		"Sofia",
		"Soraia",
		"Tatiana",
		"Teresa",
		"Valentina",
		"Vânia",
		"Vera",
		"Vitória",
		""
		];
		return choice(data, this.rnd);
	}

	///
	override string commerceDepartment() {
		auto data = [
		"Livros",
		"Filmes",
		"Música",
		"Jogos",
		"Electrónica",
		"Computadores",
		"Casa",
		"Jardim",
		"Ferramentas",
		"Mercearia",
		"Saúde",
		"Beleza",
		"Brinquedos",
		"Crianças",
		"Bebé",
		"Roupas",
		"Sapatos",
		"Jóias",
		"Desporto",
		"Ar Livre",
		"Automóveis",
		"Industrial",
		""
		];
		return choice(data, this.rnd);
	}

	///
	override string addressCityName() {
		auto data = [
		"Abrantes",
		"Agualva-Cacém",
		"Águeda",
		"Albufeira",
		"Alcácer do Sal",
		"Alcobaça",
		"Alfena",
		"Almada",
		"Almeirim",
		"Amadora",
		"Amarante",
		"Amora",
		"Anadia",
		"Angra do Heroísmo",
		"Aveiro",
		"Barcelos",
		"Barreiro",
		"Beja",
		"Braga",
		"Bragança",
		"Caldas da Rainha",
		"Câmara de Lobos",
		"Caniço",
		"Cantanhede",
		"Cartaxo",
		"Castelo Branco",
		"Chaves",
		"Coimbra",
		"Costa da Caparica",
		"Covilhã",
		"Elvas",
		"Entroncamento",
		"Ermesinde",
		"Esmoriz",
		"Espinho",
		"Esposende",
		"Estarreja",
		"Estremoz",
		"Évora",
		"Fafe",
		"Faro",
		"Fátima",
		"Felgueiras",
		"Fiães",
		"Figueira da Foz",
		"Freamunde",
		"Funchal",
		"Fundão",
		"Gafanha da Nazaré",
		"Gandra",
		"Gondomar",
		"Gouveia",
		"Guarda",
		"Guimarães",
		"Horta",
		"Ílhavo",
		"Lagoa",
		"Lagos",
		"Lamego",
		"Leiria",
		"Lisbon",
		"Lixa",
		"Loulé",
		"Loures",
		"Lourosa",
		"Macedo de Cavaleiros",
		"Machico",
		"Maia",
		"Mangualde",
		"Marco de Canaveses",
		"Marinha Grande",
		"Matosinhos",
		"Mealhada",
		"Mêda",
		"Miranda do Douro",
		"Mirandela",
		"Montemor-o-Novo",
		"Montijo",
		"Moura",
		"Odivelas",
		"Olhão da Restauração",
		"Oliveira de Azeméis",
		"Oliveira do Bairro",
		"Oliveira do Hospital",
		"Ourém",
		"Ovar",
		"Paços de Ferreira",
		"Paredes",
		"Penafiel",
		"Peniche",
		"Peso da Régua",
		"Pinhel",
		"Pombal",
		"Ponta Delgada",
		"Ponte de Sor",
		"Portalegre",
		"Portimão",
		"Porto",
		"Póvoa de Santa Iria",
		"Póvoa de Varzim",
		"Praia da Vitória",
		"Quarteira",
		"Queluz",
		"Rebordosa",
		"Reguengos de Monsaraz",
		"Ribeira Grande",
		"Rio Maior",
		"Rio Tinto",
		"Sabugal",
		"Sacavém",
		"Santa Comba Dão",
		"Santa Cruz",
		"Santa Maria da Feira",
		"Santana",
		"Santarém",
		"Santiago do Cacém",
		"Santo Tirso",
		"São João da Madeira",
		"São Mamede de Infesta",
		"São Salvador de Lordelo",
		"Seia",
		"Seixal",
		"Serpa",
		"Setúbal",
		"Silves",
		"Sines",
		"Tarouca",
		"Tavira",
		"Tomar",
		"Tondela",
		"Torres Novas",
		"Torres Vedras",
		"Trancoso",
		"Trofa",
		"Valbom",
		"Vale de Cambra",
		"Valongo",
		"Valpaços",
		"Vendas Novas",
		"Viana do Castelo",
		"Vila Baleira (a.k.a. Porto Santo)",
		"Vila do Conde",
		"Vila Franca de Xira",
		"Vila Nova de Famalicão",
		"Vila Nova de Foz Côa",
		"Vila Nova de Gaia",
		"Vila Nova de Santo André",
		"Vila Real",
		"Vila Real de Santo António",
		"Viseu",
		"Vizela",
		""
		];
		return choice(data, this.rnd);
	}

	///
	override string addressCountry() {
		auto data = [
		"África do Sul",
		"Áustria",
		"Índia",
		"Afeganistão",
		"Albânia",
		"Alemanha",
		"Andorra",
		"Angola",
		"Anguila",
		"Antárctida",
		"Antígua e Barbuda",
		"Antilhas Neerlandesas",
		"Arábia Saudita",
		"Argélia",
		"Argentina",
		"Arménia",
		"Aruba",
		"Austrália",
		"Azerbaijão",
		"Bélgica",
		"Bósnia e Herzegovina",
		"Baamas",
		"Bangladeche",
		"Barém",
		"Barbados",
		"Belize",
		"Benim",
		"Bermudas",
		"Bielorrússia",
		"Birmânia",
		"Bolívia",
		"Botsuana",
		"Brasil",
		"Brunei",
		"Bulgária",
		"Burúndi",
		"Burquina Faso",
		"Butão",
		"Cabo Verde",
		"Camarões",
		"Camboja",
		"Canadá",
		"Catar",
		"Cazaquistão",
		"Chade",
		"Chile",
		"China",
		"Chipre",
		"Colômbia",
		"Comores",
		"Congo-Brazzaville",
		"Congo-Kinshasa",
		"Coreia do Norte",
		"Coreia do Sul",
		"Costa Rica",
		"Costa do Marfim",
		"Croácia",
		"Cuba",
		"Dinamarca",
		"Domínica",
		"Egipto",
		"Emiratos Árabes Unidos",
		"Equador",
		"Eritreia",
		"Eslováquia",
		"Eslovénia",
		"Espanha",
		"Estónia",
		"Estados Unidos",
		"Etiópia",
		"Faroé",
		"Fiji",
		"Filipinas",
		"Finlândia",
		"França",
		"Gâmbia",
		"Gabão",
		"Gana",
		"Geórgia",
		"Geórgia do Sul e Sandwich do Sul",
		"Gibraltar",
		"Grécia",
		"Granada",
		"Gronelândia",
		"Guadalupe",
		"Guame",
		"Guatemala",
		"Guiana",
		"Guiana Francesa",
		"Guiné",
		"Guiné Equatorial",
		"Guiné-Bissau",
		"Haiti",
		"Honduras",
		"Hong Kong",
		"Hungria",
		"Iémen",
		"Ilha Bouvet",
		"Ilha Norfolk",
		"Ilha do Natal",
		"Ilhas Caimão",
		"Ilhas Cook",
		"Ilhas Falkland",
		"Ilhas Heard e McDonald",
		"Ilhas Marshall",
		"Ilhas Menores Distantes dos Estados Unidos",
		"Ilhas Salomão",
		"Ilhas Turcas e Caicos",
		"Ilhas Virgens Americanas",
		"Ilhas Virgens Britânicas",
		"Ilhas dos Cocos",
		"Indonésia",
		"Irão",
		"Iraque",
		"Irlanda",
		"Islândia",
		"Israel",
		"Itália",
		"Jamaica",
		"Japão",
		"Jibuti",
		"Jordânia",
		"Jugoslávia",
		"Kuwait",
		"Líbano",
		"Líbia",
		"Laos",
		"Lesoto",
		"Letónia",
		"Libéria",
		"Listenstaine",
		"Lituânia",
		"Luxemburgo",
		"México",
		"Mónaco",
		"Macau",
		"Macedónia",
		"Madagáscar",
		"Malásia",
		"Malávi",
		"Maldivas",
		"Mali",
		"Malta",
		"Marianas do Norte",
		"Marrocos",
		"Martinica",
		"Maurícia",
		"Mauritânia",
		"Mayotte",
		"Micronésia",
		"Moçambique",
		"Moldávia",
		"Mongólia",
		"Monserrate",
		"Níger",
		"Namíbia",
		"Nauru",
		"Nepal",
		"Nicarágua",
		"Nigéria",
		"Niue",
		"Noruega",
		"Nova Caledónia",
		"Nova Zelândia",
		"Omã",
		"Países Baixos",
		"Palau",
		"Panamá",
		"Papua-Nova Guiné",
		"Paquistão",
		"Paraguai",
		"Peru",
		"Pitcairn",
		"Polónia",
		"Polinésia Francesa",
		"Porto Rico",
		"Portugal",
		"Quénia",
		"Quirguizistão",
		"Quiribáti",
		"Rússia",
		"Reino Unido",
		"República Centro-Africana",
		"República Checa",
		"República Dominicana",
		"Reunião",
		"Roménia",
		"Ruanda",
		"São Cristóvão e Neves",
		"São Marinho",
		"São Pedro e Miquelon",
		"São Tomé e Príncipe",
		"São Vicente e Granadinas",
		"Síria",
		"Salvador",
		"Samoa",
		"Samoa Americana",
		"Santa Helena",
		"Santa Lúcia",
		"Sara Ocidental",
		"Seicheles",
		"Senegal",
		"Serra Leoa",
		"Singapura",
		"Somália",
		"Sri Lanca",
		"Suécia",
		"Suíça",
		"Suazilândia",
		"Sudão",
		"Suriname",
		"Svalbard e Jan Mayen",
		"Tailândia",
		"Taiwan",
		"Tajiquistão",
		"Tanzânia",
		"Território Britânico do Oceano Índico",
		"Territórios Austrais Franceses",
		"Timor Leste",
		"Togo",
		"Tokelau",
		"Tonga",
		"Trindade e Tobago",
		"Tunísia",
		"Turquemenistão",
		"Turquia",
		"Tuvalu",
		"Ucrânia",
		"Uganda",
		"Uruguai",
		"Usbequistão",
		"Vanuatu",
		"Vaticano",
		"Venezuela",
		"Vietname",
		"Wallis e Futuna",
		"Zâmbia",
		"Zimbabué",
		""
		];
		return choice(data, this.rnd);
	}

	///
	override string addressDefaultCountry() {
		auto data = [
		"Portugal'"
		];
		return choice(data, this.rnd);
	}

	///
	override string addressDirection() {
		auto data = [
		"Norte",
		"Este",
		"Sul",
		"Oeste",
		"Nordeste",
		"Noroeste",
		"Sudeste",
		"Sodoeste",
		""
		];
		return choice(data, this.rnd);
	}

	///
	string addressStreetPrefix() {
		auto data = [
		"Acesso",
		"Alameda",
		"Avenida",
		"Azinhaga",
		"Bairro",
		"Beco",
		"Calçada",
		"Caminho",
		"Escadas",
		"Estrada",
		"Jardim",
		"Ladeira",
		"Largo",
		"Praça",
		"Praceta",
		"Quinta",
		"Rua",
		"Travessa",
		"Urbanização",
		"Viela",
		""
		];
		return choice(data, this.rnd);
	}

	///
	override string addressCitySuffix() {
		auto data = [
		""
		];
		return choice(data, this.rnd);
	}

	///
	override string addressCityPrefix() {
		auto data = [
		""
		];
		return choice(data, this.rnd);
	}

	///
	override string addressBuildingNumber() {
		auto data = [
		"####', '###', '##', '#'"
		];
		return this.digitBuild(choice(data, this.rnd));
	}

	///
	override string addressPostcode() {
		auto data = [
		"####-###'"
		];
		return this.digitBuild(choice(data, this.rnd));
	}

	///
	string dateWeekday() {
		auto data = [
		"wide: ['Segunda', 'Terça', 'Quarta', 'Quinta', 'Sexta', 'Sábado', 'Domingo']",
		"abbr: ['Seg', 'Ter', 'Qua', 'Qui', 'Sex', 'Sáb', 'Dom']",
		""
		];
		return choice(data, this.rnd);
	}

	///
	override string colorHuman() {
		auto data = [
		"vermelho",
		"verde",
		"azul",
		"amarelo",
		"roxo",
		"branco",
		"preto",
		"laranja",
		"rosa",
		"cinzento",
		"castanho",
		"violeta",
		"turquesa",
		"bronzeado",
		"salmão",
		"ameixa",
		"orquídea",
		"magenta",
		"lima",
		"marfim",
		"índigo",
		"ouro",
		"fúcsia",
		"ciano",
		"azure",
		"lavanda",
		"prata",
		""
		];
		return choice(data, this.rnd);
	}

	///
	string cellPhoneFormats() {
		auto data = [
		"+351 91#######', '+351 93#######', '+351 96#######'"
		];
		return this.digitBuild(choice(data, this.rnd));
	}

	///
	override string internetFreeEmail() {
		auto data = [
		"gmail.com",
		"yahoo.com",
		"hotmail.com",
		"outlook.com",
		"live.com",
		"portugalmail.pt",
		"mail.pt",
		"sapo.pt",
		"aeiou.pt",
		""
		];
		return choice(data, this.rnd);
	}

	///
	override string internetDomainSuffix() {
		auto data = [
		"pt",
		"gov.pt",
		"com.pt",
		"org.pt",
		"eu",
		"com",
		"biz",
		"info",
		"name",
		"net",
		"org",
		""
		];
		return choice(data, this.rnd);
	}

}

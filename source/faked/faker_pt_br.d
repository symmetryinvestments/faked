module faked.faker_pt_br;

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

class Faker_pt_br : Faker_en {
@safe:
	this(int seed) {
		super(seed);
	}

	override string commerceProductNameAdjective() {
		const string[] strs =
		[ q"{Pequeno}", q"{Ergonômico}", q"{Rústico}", q"{Inteligente}", q"{Lindo}", q"{Incrível}"
		, q"{Fantástico}", q"{Prático}", q"{Lustroso}", q"{Impressionante}", q"{Genérico}", q"{Feito à mão}"
		, q"{Licenciado}", q"{Refinado}", q"{Sem marca}", q"{Gostoso}" ];

		return choice(strs, this.rnd);
	}

	override string commerceProductNameMaterial() {
		const string[] strs =
		[ q"{Aço}", q"{Madeira}", q"{Concreto}", q"{Plástico}", q"{Algodão}", q"{Granito}", q"{Borracha}"
		, q"{Metal}", q"{Macio}", q"{Fresco}", q"{Congelado}" ];

		return choice(strs, this.rnd);
	}

	override string commerceProductNameProduct() {
		const string[] strs =
		[ q"{Cadeira}", q"{Carro}", q"{Computador}", q"{Teclado}", q"{Mouse}", q"{Bicicleta}", q"{Bola}"
		, q"{Luvas}", q"{Calças}", q"{Camiseta}", q"{Mesa}", q"{Sapatos}", q"{Chapéu}", q"{Toalhas}"
		, q"{Sabonete}", q"{Atum}", q"{Frango}", q"{Peixe}", q"{Queijo}", q"{Bacon}", q"{Pizza}", q"{Salada}"
		, q"{Salsicha}", q"{Salgadinhos}" ];

		return choice(strs, this.rnd);
	}

	override string companyNamePattern() {
		final switch(uniform(0, 3, this.rnd)) {
			case 0: return personLastName() ~ " " ~ companySuffix();
			case 1: return personLastName() ~ "-" ~ personLastName();
			case 2: return personLastName() ~ ", " ~ personLastName() ~ " e " ~ personLastName();
		}
		return "";
	}

	override string companySuffix() {
		const string[] strs =
		[ q"{S.A.}", q"{LTDA}", q"{EIRELI}", q"{e Associados}", q"{Comércio}" ];

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
		[ q"{Domingo}", q"{Segunda}", q"{Terça}", q"{Quarta}", q"{Quinta}", q"{Sexta}", q"{Sábado}" ];

		return choice(strs, this.rnd);
	}

	override string dateWeekdayAbbr() {
		const string[] strs =
		[ q"{Dom}", q"{Seg}", q"{Ter}", q"{Qua}", q"{Qui}", q"{Sex}", q"{Sáb}" ];

		return choice(strs, this.rnd);
	}

	override string internetDomainSuffix() {
		const string[] strs =
		[ q"{br}", q"{com}", q"{biz}", q"{info}", q"{name}", q"{net}", q"{org}" ];

		return choice(strs, this.rnd);
	}

	override string internetFreeEmail() {
		const string[] strs =
		[ q"{gmail.com}", q"{yahoo.com}", q"{hotmail.com}", q"{live.com}", q"{bol.com.br}" ];

		return choice(strs, this.rnd);
	}

	override string locationBuildingNumber() {
		const string[] strs =
		[ q"{#####}", q"{####}", q"{###}" ];

		return numberBuild(choice(strs, this.rnd));
	}

	override string locationCityPattern() {
		final switch(uniform(0, 2, this.rnd)) {
			case 0: return personFirstName() ~ locationCitySuffix();
			case 1: return personLastName() ~ locationCitySuffix();
		}
		return "";
	}

	override string locationCitySuffix() {
		const string[] strs =
		[ q"{ do Descoberto}", q"{ de Nossa Senhora}", q"{ do Norte}", q"{ do Sul}" ];

		return choice(strs, this.rnd);
	}

	override string locationCountry() {
		const string[] strs =
		[ q"{Afeganistão}", q"{Albânia}", q"{Algéria}", q"{Samoa}", q"{Andorra}", q"{Angola}", q"{Anguila}"
		, q"{Antigua and Barbada}", q"{Argentina}", q"{Armênia}", q"{Aruba}", q"{Austrália}", q"{Áustria}"
		, q"{Azerbaijão}", q"{Bahamas}", q"{Barém}", q"{Bangladesh}", q"{Barbados}", q"{Bélgica}"
		, q"{Belize}", q"{Benin}", q"{Bermuda}", q"{Butão}", q"{Bolívia}", q"{Bôsnia}", q"{Botsuana}"
		, q"{Ilha Bouvet}", q"{Brasil}", q"{Arquipélago de Chagos}", q"{Ilhas Virgens}", q"{Brunei}"
		, q"{Bulgária}", q"{Burkina Faso}", q"{Burundi}", q"{Camboja}", q"{Camarões}", q"{Canadá}"
		, q"{Cabo Verde}", q"{Ilhas Caiman}", q"{República da África Central}", q"{Chade}", q"{Chile}"
		, q"{China}", q"{Ilha do Natal}", q"{Ilhas Cocos}", q"{Colômbia}", q"{Comores}", q"{Congo}"
		, q"{Ilhas Cook}", q"{Costa Rica}", q"{Costa do Marfim}", q"{Croácia}", q"{Cuba}", q"{Chipre}"
		, q"{República Tcheca}", q"{Dinamarca}", q"{Jibuti}", q"{Dominica}", q"{República Dominicana}"
		, q"{Equador}", q"{Egito}", q"{El Salvador}", q"{Guiné Equatorial}", q"{Eritreia}", q"{Estônia}"
		, q"{Etiópia}", q"{Ilhas Faroe}", q"{Malvinas}", q"{Fiji}", q"{Finlândia}", q"{França}", q"{Guiné Francesa}"
		, q"{Polinésia Francesa}", q"{Gabão}", q"{Gâmbia}", q"{Georgia}", q"{Alemanha}", q"{Gana}"
		, q"{Gibraltar}", q"{Grécia}", q"{Groelândia}", q"{Granada}", q"{Guadalupe}", q"{Guatemala}"
		, q"{Guernesey}", q"{Guiné}", q"{Guiné-Bissau}", q"{Guiana}", q"{Haiti}", q"{Ilhas Heard e McDonald}"
		, q"{Vaticano}", q"{Honduras}", q"{Hong Kong}", q"{Hungria}", q"{Islândia}", q"{Índia}", q"{Indonésia}"
		, q"{Irã}", q"{Iraque}", q"{Irlanda}", q"{Ilha de Man}", q"{Israel}", q"{Itália}", q"{Jamaica}"
		, q"{Japão}", q"{Jersey}", q"{Jordânia}", q"{Cazaquistão}", q"{Quênia}", q"{Quiribati}"
		, q"{Coreia do Norte}", q"{Coreia do Sul}", q"{Kuwait}", q"{Quirguistão}", q"{Laos}", q"{Latvia}"
		, q"{Líbano}", q"{Lesoto}", q"{Libéria}", q"{Líbia}", q"{Liechtenstein}", q"{Lituânia}"
		, q"{Luxemburgo}", q"{Macao}", q"{Macedônia}", q"{Madagascar}", q"{Malawi}", q"{Malásia}"
		, q"{Maldives}", q"{Mali}", q"{Malta}", q"{Ilhas Marshall}", q"{Martinica}", q"{Mauritânia}"
		, q"{Maurícia}", q"{Maiote}", q"{México}", q"{Micronésia}", q"{Moldávia}", q"{Mônaco}"
		, q"{Mongólia}", q"{Montenegro}", q"{Montserrat}", q"{Marrocos}", q"{Moçambique}", q"{Myanmar}"
		, q"{Namibia}", q"{Nauru}", q"{Nepal}", q"{Antilhas Holandesas}", q"{Países Baixos}", q"{Nova Caledonia}"
		, q"{Nova Zelândia}", q"{Nicarágua}", q"{Nigéria}", q"{Niue}", q"{Ilha Norfolk}", q"{Marianas Setentrionais}"
		, q"{Noruega}", q"{Omã}", q"{Paquistão}", q"{Palau}", q"{Território da Palestina}", q"{Panamá}"
		, q"{Papua-Nova Guiné}", q"{Paraguai}", q"{Peru}", q"{Filipinas}", q"{Polônia}", q"{Portugal}"
		, q"{Porto Rico}", q"{Qatar}", q"{Romênia}", q"{Rússia}", q"{Ruanda}", q"{São Bartolomeu}"
		, q"{Santa Helena}", q"{Santa Lúcia}", q"{São Martinho}", q"{São Pedro e Miquelão}"
		, q"{São Vicente e Granadinas}", q"{San Marino}", q"{Sao Tomé e Príncipe}", q"{Arábia Saudita}"
		, q"{Senegal}", q"{Sérvia}", q"{Seicheles}", q"{Serra Leoa}", q"{Singapura}", q"{Eslováquia}"
		, q"{Eslovênia}", q"{Ilhas Salomão}", q"{Somália}", q"{África do Sul}", q"{Ilhas Geórgia do Sul e Sandwich do Sul}"
		, q"{Espanha}", q"{Sri Lanka}", q"{Sudão}", q"{Suriname}", q"{Ilhas Svalbard & Jan Mayen}"
		, q"{Suazilândia}", q"{Suécia}", q"{Suíça}", q"{Síria}", q"{Taiwan}", q"{Tajiquistão}"
		, q"{Tanzânia}", q"{Tailândia}", q"{Timor-Leste}", q"{Togo}", q"{Toquelau}", q"{Tonga}", q"{Trinidad e Tobago}"
		, q"{Tunísia}", q"{Turquia}", q"{Turcomenistão}", q"{Turcas e Caicos}", q"{Tuvalu}", q"{Uganda}"
		, q"{Ucrânia}", q"{Emirados Árabes Unidos}", q"{Reino Unido}", q"{Estados Unidos da América}"
		, q"{Estados Unidos das Ilhas Virgens}", q"{Uruguai}", q"{Uzbequistão}", q"{Vanuatu}"
		, q"{Venezuela}", q"{Vietnã}", q"{Wallis e Futuna}", q"{Iêmen}", q"{Zâmbia}", q"{Zimbábue}" ];

		return choice(strs, this.rnd);
	}

	override string locationDefaultCountry() {
		const string[] strs =
		[ q"{Brasil}" ];

		return choice(strs, this.rnd);
	}

	override string locationPostcode() {
		const string[] strs =
		[ q"{#####-###}" ];

		return numberBuild(choice(strs, this.rnd));
	}

	override string locationSecondaryAddress() {
		const string[] strs =
		[ q"{Apto. ###}", q"{Sobrado ##}", q"{Casa #}", q"{Lote ##}", q"{Quadra ##}" ];

		return numberBuild(choice(strs, this.rnd));
	}

	override string locationState() {
		const string[] strs =
		[ q"{Acre}", q"{Alagoas}", q"{Amapá}", q"{Amazonas}", q"{Bahia}", q"{Ceará}", q"{Distrito Federal}"
		, q"{Espírito Santo}", q"{Goiás}", q"{Maranhão}", q"{Mato Grosso}", q"{Mato Grosso do Sul}"
		, q"{Minas Gerais}", q"{Pará}", q"{Paraíba}", q"{Paraná}", q"{Pernambuco}", q"{Piauí}", q"{Rio de Janeiro}"
		, q"{Rio Grande do Norte}", q"{Rio Grande do Sul}", q"{Rondônia}", q"{Roraima}", q"{Santa Catarina}"
		, q"{São Paulo}", q"{Sergipe}", q"{Tocantins}" ];

		return choice(strs, this.rnd);
	}

	override string locationStateAbbr() {
		const string[] strs =
		[ q"{AC}", q"{AL}", q"{AP}", q"{AM}", q"{BA}", q"{CE}", q"{DF}", q"{ES}", q"{GO}", q"{MA}", q"{MT}", q"{MS}", q"{MG}"
		, q"{PA}", q"{PB}", q"{PR}", q"{PE}", q"{PI}", q"{RJ}", q"{RN}", q"{RS}", q"{RO}", q"{RR}", q"{SC}", q"{SP}", q"{SE}"
		, q"{TO}" ];

		return choice(strs, this.rnd);
	}

	override string locationStreetPattern() {
		final switch(uniform(0, 2, this.rnd)) {
			case 0: return personFirstName() ~ " " ~ locationStreetSuffix();
			case 1: return personLastName() ~ " " ~ locationStreetSuffix();
		}
		return "";
	}

	override string locationStreetSuffix() {
		const string[] strs =
		[ q"{Rua}", q"{Avenida}", q"{Travessa}", q"{Alameda}", q"{Marginal}", q"{Rodovia}" ];

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
		[ q"{Alessandra}", q"{Alice}", q"{Aline}", q"{Alícia}", q"{Ana Clara}", q"{Ana Júlia}", q"{Ana Laura}"
		, q"{Ana Luiza}", q"{Antonella}", q"{Beatriz}", q"{Bruna}", q"{Carla}", q"{Cecília}", q"{Clara}"
		, q"{Célia}", q"{Dalila}", q"{Eduarda}", q"{Elisa}", q"{Eloá}", q"{Emanuelly}", q"{Esther}", q"{Fabrícia}"
		, q"{Felícia}", q"{Giovanna}", q"{Helena}", q"{Heloísa}", q"{Isabel}", q"{Isabela}", q"{Isabella}"
		, q"{Isabelly}", q"{Isis}", q"{Janaína}", q"{Joana}", q"{Júlia}", q"{Karla}", q"{Lara}", q"{Larissa}"
		, q"{Laura}", q"{Lavínia}", q"{Liz}", q"{Lorena}", q"{Lorraine}", q"{Luiza}", q"{Lívia}", q"{Maitê}"
		, q"{Manuela}", q"{Marcela}", q"{Margarida}", q"{Maria}", q"{Maria Alice}", q"{Maria Cecília}"
		, q"{Maria Clara}", q"{Maria Eduarda}", q"{Maria Helena}", q"{Maria Júlia}", q"{Maria Luiza}"
		, q"{Mariana}", q"{Marina}", q"{Marli}", q"{Meire}", q"{Melissa}", q"{Morgana}", q"{Márcia}", q"{Mércia}"
		, q"{Natália}", q"{Núbia}", q"{Ofélia}", q"{Paula}", q"{Rafaela}", q"{Rebeca}", q"{Roberta}"
		, q"{Sara}", q"{Sarah}", q"{Sophia}", q"{Suélen}", q"{Sílvia}", q"{Talita}", q"{Valentina}", q"{Vitória}"
		, q"{Yasmin}" ];

		return choice(strs, this.rnd);
	}

	override string personFemalePrefix() {
		const string[] strs =
		[ q"{Sra.}", q"{Srta.}", q"{Dra.}" ];

		return choice(strs, this.rnd);
	}

	override string personFirstName() {
		const string[] strs =
		[ q"{Alessandra}", q"{Alessandro}", q"{Alexandre}", q"{Alice}", q"{Aline}", q"{Alícia}", q"{Ana Clara}"
		, q"{Ana Júlia}", q"{Ana Laura}", q"{Ana Luiza}", q"{Anthony}", q"{Antonella}", q"{Antônio}"
		, q"{Arthur}", q"{Beatriz}", q"{Benjamin}", q"{Benício}", q"{Bernardo}", q"{Breno}", q"{Bruna}"
		, q"{Bryan}", q"{Caio}", q"{Calebe}", q"{Carla}", q"{Carlos}", q"{Cauã}", q"{Cecília}", q"{Clara}"
		, q"{Célia}", q"{César}", q"{Dalila}", q"{Daniel}", q"{Danilo}", q"{Davi}", q"{Davi Lucca}", q"{Deneval}"
		, q"{Eduarda}", q"{Eduardo}", q"{Elisa}", q"{Eloá}", q"{Elísio}", q"{Emanuel}", q"{Emanuelly}"
		, q"{Enzo}", q"{Enzo Gabriel}", q"{Esther}", q"{Fabiano}", q"{Fabrícia}", q"{Fabrício}", q"{Feliciano}"
		, q"{Felipe}", q"{Felícia}", q"{Frederico}", q"{Fábio}", q"{Félix}", q"{Gabriel}", q"{Gael}"
		, q"{Giovanna}", q"{Guilherme}", q"{Gustavo}", q"{Gúbio}", q"{Heitor}", q"{Helena}", q"{Heloísa}"
		, q"{Henrique}", q"{Hugo}", q"{Hélio}", q"{Isaac}", q"{Isabel}", q"{Isabela}", q"{Isabella}", q"{Isabelly}"
		, q"{Isadora}", q"{Isis}", q"{Janaína}", q"{Joana}", q"{Joaquim}", q"{João}", q"{João Lucas}"
		, q"{João Miguel}", q"{João Pedro}", q"{Júlia}", q"{Júlio}", q"{Júlio César}", q"{Karla}"
		, q"{Kléber}", q"{Ladislau}", q"{Lara}", q"{Larissa}", q"{Laura}", q"{Lavínia}", q"{Leonardo}"
		, q"{Liz}", q"{Lorena}", q"{Lorenzo}", q"{Lorraine}", q"{Lucas}", q"{Lucca}", q"{Luiza}", q"{Lívia}"
		, q"{Maitê}", q"{Manuela}", q"{Marcela}", q"{Marcelo}", q"{Marcos}", q"{Margarida}", q"{Maria}"
		, q"{Maria Alice}", q"{Maria Cecília}", q"{Maria Clara}", q"{Maria Eduarda}", q"{Maria Helena}"
		, q"{Maria Júlia}", q"{Maria Luiza}", q"{Mariana}", q"{Marina}", q"{Marli}", q"{Matheus}", q"{Meire}"
		, q"{Melissa}", q"{Miguel}", q"{Morgana}", q"{Murilo}", q"{Márcia}", q"{Mércia}", q"{Nataniel}"
		, q"{Natália}", q"{Nicolas}", q"{Noah}", q"{Norberto}", q"{Núbia}", q"{Ofélia}", q"{Pablo}"
		, q"{Paula}", q"{Paulo}", q"{Pedro}", q"{Pedro Henrique}", q"{Pietro}", q"{Rafael}", q"{Rafaela}"
		, q"{Raul}", q"{Rebeca}", q"{Ricardo}", q"{Roberta}", q"{Roberto}", q"{Salvador}", q"{Samuel}"
		, q"{Sara}", q"{Sarah}", q"{Silas}", q"{Sirineu}", q"{Sophia}", q"{Suélen}", q"{Sílvia}", q"{Talita}"
		, q"{Tertuliano}", q"{Théo}", q"{Valentina}", q"{Vicente}", q"{Vitor}", q"{Vitória}", q"{Víctor}"
		, q"{Warley}", q"{Washington}", q"{Yago}", q"{Yango}", q"{Yasmin}", q"{Yuri}", q"{Ígor}" ];

		return choice(strs, this.rnd);
	}

	override string personLastName() {
		const string[] strs =
		[ q"{Silva}", q"{Souza}", q"{Carvalho}", q"{Santos}", q"{Reis}", q"{Xavier}", q"{Franco}", q"{Braga}"
		, q"{Macedo}", q"{Batista}", q"{Barros}", q"{Moraes}", q"{Costa}", q"{Pereira}", q"{Melo}", q"{Saraiva}"
		, q"{Nogueira}", q"{Oliveira}", q"{Martins}", q"{Moreira}", q"{Albuquerque}" ];

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
		[ q"{Alessandro}", q"{Alexandre}", q"{Anthony}", q"{Antônio}", q"{Arthur}", q"{Benjamin}", q"{Benício}"
		, q"{Bernardo}", q"{Breno}", q"{Bryan}", q"{Caio}", q"{Calebe}", q"{Carlos}", q"{Cauã}", q"{César}"
		, q"{Daniel}", q"{Danilo}", q"{Davi}", q"{Davi Lucca}", q"{Deneval}", q"{Eduardo}", q"{Elísio}"
		, q"{Emanuel}", q"{Enzo}", q"{Enzo Gabriel}", q"{Fabiano}", q"{Fabrício}", q"{Feliciano}", q"{Felipe}"
		, q"{Frederico}", q"{Fábio}", q"{Félix}", q"{Gabriel}", q"{Gael}", q"{Guilherme}", q"{Gustavo}"
		, q"{Gúbio}", q"{Heitor}", q"{Henrique}", q"{Hugo}", q"{Hélio}", q"{Isaac}", q"{Joaquim}", q"{João}"
		, q"{João Lucas}", q"{João Miguel}", q"{João Pedro}", q"{Júlio}", q"{Júlio César}"
		, q"{Kléber}", q"{Ladislau}", q"{Leonardo}", q"{Lorenzo}", q"{Lucas}", q"{Lucca}", q"{Marcelo}"
		, q"{Marcos}", q"{Matheus}", q"{Miguel}", q"{Murilo}", q"{Nataniel}", q"{Nicolas}", q"{Noah}", q"{Norberto}"
		, q"{Pablo}", q"{Paulo}", q"{Pedro}", q"{Pedro Henrique}", q"{Pietro}", q"{Rafael}", q"{Raul}"
		, q"{Ricardo}", q"{Roberto}", q"{Salvador}", q"{Samuel}", q"{Silas}", q"{Sirineu}", q"{Tertuliano}"
		, q"{Théo}", q"{Vicente}", q"{Vitor}", q"{Víctor}", q"{Warley}", q"{Washington}", q"{Yago}", q"{Yango}"
		, q"{Yuri}", q"{Ígor}" ];

		return choice(strs, this.rnd);
	}

	override string personMalePrefix() {
		const string[] strs =
		[ q"{Sr.}", q"{Dr.}" ];

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
		[ q"{Dr.}", q"{Dra.}", q"{Sr.}", q"{Sra.}", q"{Srta.}" ];

		return choice(strs, this.rnd);
	}

	override string personSex() {
		const string[] strs =
		[ q"{Feminino}", q"{Masculino}" ];

		return choice(strs, this.rnd);
	}

	override string personSuffix() {
		const string[] strs =
		[ q"{Jr.}", q"{Neto}", q"{Filho}" ];

		return choice(strs, this.rnd);
	}

	override string personTitleDescriptor() {
		const string[] strs =
		[ q"{Líder}", q"{Senior}", q"{Direto}", q"{Corporativo}", q"{Dinâmico}", q"{Futuro}", q"{Produto}"
		, q"{Nacional}", q"{Regional}", q"{Distrito}", q"{Central}", q"{Global}", q"{Cliente}", q"{Investidor}"
		, q"{International}", q"{Legado}", q"{Avançar}", q"{Interno}", q"{Humano}", q"{Chefe}", q"{Principal}" ];

		return choice(strs, this.rnd);
	}

	override string personTitleLevel() {
		const string[] strs =
		[ q"{Soluções}", q"{Programa}", q"{Marca}", q"{Segurança}", q"{Pesquisar}", q"{Marketing}"
		, q"{Diretivas}", q"{Implementation}", q"{Implementação}", q"{Funcionalidade}", q"{Resposta}"
		, q"{Paradigma}", q"{Táticas}", q"{Identidade}", q"{Mercados}", q"{Grupo}", q"{Divisão}", q"{Aplicações}"
		, q"{Otimização}", q"{Operações}", q"{Infraestrutura}", q"{Intranet}", q"{Comunicações}"
		, q"{Web}", q"{Branding}", q"{Qualidade}", q"{Assurance}", q"{Mobilidade}", q"{Contas}", q"{Dados}"
		, q"{Criativo}", q"{Configuration}", q"{Prestação de contas}", q"{Interações}", q"{Fatores}"
		, q"{Usabilidade}", q"{Métricas}" ];

		return choice(strs, this.rnd);
	}

	override string personTitleJob() {
		const string[] strs =
		[ q"{Supervisor}", q"{Associado}", q"{Executivo}", q"{Atentende}", q"{Policial}", q"{Gerente}"
		, q"{Engenheiro}", q"{Especialista}", q"{Diretor}", q"{Coordenador}", q"{Administrador}"
		, q"{Arquiteto}", q"{Analista}", q"{Designer}", q"{Planejador}", q"{Orquestrador}", q"{Técnico}"
		, q"{Desenvolvedor}", q"{Produtor}", q"{Consultor}", q"{Assistente}", q"{Facilitador}", q"{Agente}"
		, q"{Representante}", q"{Estrategista}" ];

		return choice(strs, this.rnd);
	}

	override string personWesternZodiacSign() {
		const string[] strs =
		[ q"{Aquário}", q"{Peixes}", q"{Áries}", q"{Touro}", q"{Gêmeos}", q"{Câncer}", q"{Leão}", q"{Virgem}"
		, q"{Libra}", q"{Escorpião}", q"{Sagitário}", q"{Capricórnio}" ];

		return choice(strs, this.rnd);
	}

	override string phoneNumberFormats() {
		const string[] strs =
		[ q"{(##) ####-####}", q"{+55 (##) ####-####}", q"{(##) #####-####}" ];

		return numberBuild(choice(strs, this.rnd));
	}

}

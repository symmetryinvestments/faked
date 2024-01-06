module faker.faker_es;

import std.random;
import std.array;
import std.format;
import std.conv : to;
import std.string : toUpper;
import std.range : iota, take, repeat;
import std.algorithm : map, joiner;
import faker.base;

class Faker_es : Faker {
@safe:
	this(int seed) {
		super(seed);
	}

	override string commerceProductNameAdjective() {
		const string[] strs =
		[ q"{Pequeño}", q"{Ergonómico}", q"{Rústico}", q"{Inteligente}", q"{Increible}", q"{Fantástico}"
		, q"{Práctico}", q"{Sorprendente}", q"{Genérico}", q"{Artesanal}", q"{Hecho a mano}", q"{Guapo}"
		, q"{Guapa}", q"{Refinado}", q"{Sabroso}" ];

		return choice(strs, this.rnd);
	}

	override string commerceProductNameMaterial() {
		const string[] strs =
		[ q"{Acero}", q"{Madera}", q"{Plástico}", q"{Algodón}", q"{Granito}", q"{Metal}", q"{Ladrillo}"
		, q"{Hormigon}" ];

		return choice(strs, this.rnd);
	}

	override string commerceProductNameProduct() {
		const string[] strs =
		[ q"{Silla}", q"{Coche}", q"{Ordenador}", q"{Teclado}", q"{Raton}", q"{Bicicleta}", q"{Pelota}", q"{Guantes}"
		, q"{Pantalones}", q"{Camiseta}", q"{Mesa}", q"{Zapatos}", q"{Gorro}", q"{Toallas}", q"{Sopa}"
		, q"{Atún}", q"{Pollo}", q"{Pescado}", q"{Queso}", q"{Bacon}", q"{Pizza}", q"{Ensalada}", q"{Salchichas}"
		, q"{Patatas fritas}" ];

		return choice(strs, this.rnd);
	}

	override string companyAdjective() {
		const string[] strs =
		[ q"{Adaptativo}", q"{Avanzado}", q"{Asimilado}", q"{Automatizado}", q"{Equilibrado}", q"{Centrado en el negocio}"
		, q"{Centralizado}", q"{Clonado}", q"{Compatible}", q"{Configurable}", q"{Multi grupo}", q"{Multi plataforma}"
		, q"{Centrado en el usuario}", q"{Descentralizado}", q"{Digitalizado}", q"{Distribuido}"
		, q"{Diverso}", q"{Reducido}", q"{Mejorado}", q"{Para toda la empresa}", q"{Ergonómico}"
		, q"{Exclusivo}", q"{Expandido}", q"{Extendido}", q"{Cara a cara}", q"{Enfocado}", q"{Totalmente configurable}"
		, q"{Fundamental}", q"{Orígenes}", q"{Horizontal}", q"{Implementado}", q"{Innovador}", q"{Integrado}"
		, q"{Intuitivo}", q"{Inverso}", q"{Gestionado}", q"{Obligatorio}", q"{Monitorizado}", q"{Multi canal}"
		, q"{Multi lateral}", q"{Multi capa}", q"{En red}", q"{Orientado a objetos}", q"{Open-source}"
		, q"{Operativo}", q"{Optimizado}", q"{Opcional}", q"{Orgánico}", q"{Organizado}", q"{Perseverando}"
		, q"{Persistente}", q"{en fases}", q"{Polarizado}", q"{Pre-emptivo}", q"{Proactivo}", q"{Enfocado a benficios}"
		, q"{Profundo}", q"{Programable}", q"{Progresivo}", q"{Public-key}", q"{Enfocado en la calidad}"
		, q"{Reactivo}", q"{Realineado}", q"{Re-contextualizado}", q"{Re-implementado}", q"{Ingeniería inversa}"
		, q"{Robusto}", q"{Fácil}", q"{Seguro}", q"{Auto proporciona}", q"{Compartible}", q"{Intercambiable}"
		, q"{Sincronizado}", q"{Orientado a equipos}", q"{Total}", q"{Universal}", q"{Actualizable}"
		, q"{Amigable}", q"{Versatil}", q"{Virtual}", q"{Visionario}" ];

		return choice(strs, this.rnd);
	}

	override string companyDescriptor() {
		const string[] strs =
		[ q"{24 horas}", q"{24/7}", q"{3rd generación}", q"{4th generación}", q"{5th generación}"
		, q"{6th generación}", q"{analizada}", q"{asimétrica}", q"{asíncrona}", q"{monitorizada por red}"
		, q"{bidireccional}", q"{bifurcada}", q"{generada por el cliente}", q"{cliente servidor}"
		, q"{coherente}", q"{cohesiva}", q"{compuesto}", q"{sensible al contexto}", q"{basado en el contexto}"
		, q"{basado en contenido}", q"{dedicada}", q"{generado por la demanda}", q"{didactica}"
		, q"{direccional}", q"{discreta}", q"{dinámica}", q"{potenciada}", q"{acompasada}", q"{ejecutiva}"
		, q"{explícita}", q"{tolerante a fallos}", q"{innovadora}", q"{amplio ábanico}", q"{global}"
		, q"{heurística}", q"{alto nivel}", q"{holística}", q"{homogénea}", q"{hibrida}", q"{incremental}"
		, q"{intangible}", q"{interactiva}", q"{intermedia}", q"{local}", q"{logística}", q"{maximizada}"
		, q"{metódica}", q"{misión crítica}", q"{móbil}", q"{modular}", q"{motivadora}", q"{multimedia}"
		, q"{multiestado}", q"{multitarea}", q"{nacional}", q"{basado en necesidades}", q"{neutral}"
		, q"{nueva generación}", q"{no-volátil}", q"{orientado a objetos}", q"{óptima}", q"{optimizada}"
		, q"{radical}", q"{tiempo real}", q"{recíproca}", q"{regional}", q"{escalable}", q"{secundaria}"
		, q"{orientada a soluciones}", q"{estable}", q"{estatica}", q"{sistemática}", q"{sistémica}"
		, q"{tangible}", q"{terciaria}", q"{transicional}", q"{uniforme}", q"{valor añadido}", q"{vía web}"
		, q"{defectos cero}", q"{tolerancia cero}" ];

		return choice(strs, this.rnd);
	}

	override string companyNamePattern() {
		assert(false);
	}

	override string companyNoun() {
		const string[] strs =
		[ q"{habilidad}", q"{acceso}", q"{adaptador}", q"{algoritmo}", q"{alianza}", q"{analista}", q"{aplicación}"
		, q"{enfoque}", q"{arquitectura}", q"{archivo}", q"{inteligencia artificial}", q"{array}"
		, q"{actitud}", q"{medición}", q"{gestión presupuestaria}", q"{capacidad}", q"{desafío}"
		, q"{circuito}", q"{colaboración}", q"{complejidad}", q"{concepto}", q"{conglomeración}"
		, q"{contingencia}", q"{núcleo}", q"{fidelidad}", q"{base de datos}", q"{data-warehouse}"
		, q"{definición}", q"{emulación}", q"{codificar}", q"{encriptar}", q"{extranet}", q"{firmware}"
		, q"{flexibilidad}", q"{focus group}", q"{previsión}", q"{base de trabajo}", q"{función}"
		, q"{funcionalidad}", q"{Interfaz Gráfica}", q"{groupware}", q"{Interfaz gráfico de usuario}"
		, q"{hardware}", q"{Soporte}", q"{jerarquía}", q"{conjunto}", q"{implementación}", q"{infraestructura}"
		, q"{iniciativa}", q"{instalación}", q"{conjunto de instrucciones}", q"{interfaz}", q"{intranet}"
		, q"{base del conocimiento}", q"{red de area local}", q"{aprovechar}", q"{matrices}", q"{metodologías}"
		, q"{middleware}", q"{migración}", q"{modelo}", q"{moderador}", q"{monitorizar}", q"{arquitectura abierta}"
		, q"{sistema abierto}", q"{orquestar}", q"{paradigma}", q"{paralelismo}", q"{política}"
		, q"{portal}", q"{estructura de precios}", q"{proceso de mejora}", q"{producto}", q"{productividad}"
		, q"{proyecto}", q"{proyección}", q"{protocolo}", q"{línea segura}", q"{software}", q"{solución}"
		, q"{estandardización}", q"{estrategia}", q"{estructura}", q"{éxito}", q"{superestructura}"
		, q"{soporte}", q"{sinergia}", q"{mediante}", q"{marco de tiempo}", q"{caja de herramientas}"
		, q"{utilización}", q"{website}", q"{fuerza de trabajo}" ];

		return choice(strs, this.rnd);
	}

	override string companySuffix() {
		const string[] strs =
		[ q"{S.L.}", q"{e Hijos}", q"{S.A.}", q"{Hermanos}" ];

		return choice(strs, this.rnd);
	}

	override string dateMonthWide() {
		const string[] strs =
		[ q"{enero}", q"{febrero}", q"{marzo}", q"{abril}", q"{mayo}", q"{junio}", q"{julio}", q"{agosto}", q"{septiembre}"
		, q"{octubre}", q"{noviembre}", q"{diciembre}" ];

		return choice(strs, this.rnd);
	}

	override string dateMonthAbbr() {
		const string[] strs =
		[ q"{ene}", q"{feb}", q"{mar}", q"{abr}", q"{may}", q"{jun}", q"{jul}", q"{ago}", q"{sep}", q"{oct}", q"{nov}"
		, q"{dic}" ];

		return choice(strs, this.rnd);
	}

	override string dateWeekdayWide() {
		const string[] strs =
		[ q"{domingo}", q"{lunes}", q"{martes}", q"{miércoles}", q"{jueves}", q"{viernes}", q"{sábado}" ];

		return choice(strs, this.rnd);
	}

	override string dateWeekdayAbbr() {
		const string[] strs =
		[ q"{dom}", q"{lun}", q"{mar}", q"{mié}", q"{jue}", q"{vie}", q"{sáb}" ];

		return choice(strs, this.rnd);
	}

	override string internetDomainSuffix() {
		const string[] strs =
		[ q"{com}", q"{es}", q"{info}", q"{com.es}", q"{org}", q"{eus}", q"{cat}" ];

		return choice(strs, this.rnd);
	}

	override string internetFreeEmail() {
		const string[] strs =
		[ q"{gmail.com}", q"{yahoo.com}", q"{hotmail.com}" ];

		return choice(strs, this.rnd);
	}

	override string locationCityName() {
		const string[] strs =
		[ q"{Parla}", q"{Telde}", q"{Baracaldo}", q"{San Fernando}", q"{Torrevieja}", q"{Lugo}", q"{Santiago de Compostela}"
		, q"{Gerona}", q"{Cáceres}", q"{Lorca}", q"{Coslada}", q"{Talavera de la Reina}", q"{El Puerto de Santa María}"
		, q"{Cornellá de Llobregat}", q"{Avilés}", q"{Palencia}", q"{Gecho}", q"{Orihuela}", q"{Pontevedra}"
		, q"{Pozuelo de Alarcón}", q"{Toledo}", q"{El Ejido}", q"{Guadalajara}", q"{Gandía}", q"{Ceuta}"
		, q"{Ferrol}", q"{Chiclana de la Frontera}", q"{Manresa}", q"{Roquetas de Mar}", q"{Ciudad Real}"
		, q"{Rubí}", q"{Benidorm}", q"{San Sebastían de los Reyes}", q"{Ponferrada}", q"{Zamora}"
		, q"{Alcalá de Guadaira}", q"{Fuengirola}", q"{Mijas}", q"{Sanlúcar de Barrameda}", q"{La Línea de la Concepción}"
		, q"{Majadahonda}", q"{Sagunto}", q"{El Prat de LLobregat}", q"{Viladecans}", q"{Linares}"
		, q"{Alcoy}", q"{Irún}", q"{Estepona}", q"{Torremolinos}", q"{Rivas-Vaciamadrid}", q"{Molina de Segura}"
		, q"{Paterna}", q"{Granollers}", q"{Santa Lucía de Tirajana}", q"{Motril}", q"{Cerdañola del Vallés}"
		, q"{Arrecife}", q"{Segovia}", q"{Torrelavega}", q"{Elda}", q"{Mérida}", q"{Ávila}", q"{Valdemoro}"
		, q"{Cuenta}", q"{Collado Villalba}", q"{Benalmádena}", q"{Mollet del Vallés}", q"{Puertollano}"
		, q"{Madrid}", q"{Barcelona}", q"{Valencia}", q"{Sevilla}", q"{Zaragoza}", q"{Málaga}", q"{Murcia}"
		, q"{Palma de Mallorca}", q"{Las Palmas de Gran Canaria}", q"{Bilbao}", q"{Córdoba}"
		, q"{Alicante}", q"{Valladolid}", q"{Vigo}", q"{Gijón}", q"{Hospitalet de LLobregat}", q"{La Coruña}"
		, q"{Granada}", q"{Vitoria}", q"{Elche}", q"{Santa Cruz de Tenerife}", q"{Oviedo}", q"{Badalona}"
		, q"{Cartagena}", q"{Móstoles}", q"{Jerez de la Frontera}", q"{Tarrasa}", q"{Sabadell}"
		, q"{Alcalá de Henares}", q"{Pamplona}", q"{Fuenlabrada}", q"{Almería}", q"{San Sebastián}"
		, q"{Leganés}", q"{Santander}", q"{Burgos}", q"{Castellón de la Plana}", q"{Alcorcón}"
		, q"{Albacete}", q"{Getafe}", q"{Salamanca}", q"{Huelva}", q"{Logroño}", q"{Badajoz}", q"{San Cristróbal de la Laguna}"
		, q"{León}", q"{Tarragona}", q"{Cádiz}", q"{Lérida}", q"{Marbella}", q"{Mataró}", q"{Dos Hermanas}"
		, q"{Santa Coloma de Gramanet}", q"{Jaén}", q"{Algeciras}", q"{Torrejón de Ardoz}", q"{Orense}"
		, q"{Alcobendas}", q"{Reus}", q"{Calahorra}", q"{Inca}", q"{Aýna}" ];

		return choice(strs, this.rnd);
	}

	override string locationCityPattern() {
		assert(false);
	}

	override string locationCountry() {
		const string[] strs =
		[ q"{Afganistán}", q"{Albania}", q"{Argelia}", q"{Andorra}", q"{Angola}", q"{Argentina}", q"{Armenia}"
		, q"{Aruba}", q"{Australia}", q"{Austria}", q"{Azerbayán}", q"{Bahamas}", q"{Barein}", q"{Bangladesh}"
		, q"{Barbados}", q"{Bielorusia}", q"{Bélgica}", q"{Belice}", q"{Bermuda}", q"{Bután}", q"{Bolivia}"
		, q"{Bosnia Herzegovina}", q"{Botswana}", q"{Brasil}", q"{Bulgaria}", q"{Burkina Faso}", q"{Burundi}"
		, q"{Camboya}", q"{Camerún}", q"{Canada}", q"{Cabo Verde}", q"{Islas Caimán}", q"{Chad}", q"{Chile}"
		, q"{China}", q"{Isla de Navidad}", q"{Colombia}", q"{Comodos}", q"{Congo}", q"{Costa Rica}"
		, q"{Costa de Marfil}", q"{Croacia}", q"{Cuba}", q"{Chipre}", q"{República Checa}", q"{Dinamarca}"
		, q"{Dominica}", q"{República Dominicana}", q"{Ecuador}", q"{Egipto}", q"{El Salvador}"
		, q"{Guinea Ecuatorial}", q"{Eritrea}", q"{Estonia}", q"{Etiopía}", q"{Islas Faro}", q"{Fiji}"
		, q"{Finlandia}", q"{Francia}", q"{Gabón}", q"{Gambia}", q"{Georgia}", q"{Alemania}", q"{Ghana}"
		, q"{Grecia}", q"{Groenlandia}", q"{Granada}", q"{Guadalupe}", q"{Guam}", q"{Guatemala}", q"{Guinea}"
		, q"{Guinea-Bisau}", q"{Guayana}", q"{Haiti}", q"{Honduras}", q"{Hong Kong}", q"{Hungria}", q"{Islandia}"
		, q"{India}", q"{Indonesia}", q"{Iran}", q"{Irak}", q"{Irlanda}", q"{Italia}", q"{Jamaica}", q"{Japón}"
		, q"{Jordania}", q"{Kazajistan}", q"{Kenia}", q"{Kiribati}", q"{Corea}", q"{Kuwait}", q"{Letonia}"
		, q"{Líbano}", q"{Liberia}", q"{Liechtenstein}", q"{Lituania}", q"{Luxemburgo}", q"{Macao}"
		, q"{Macedonia}", q"{Madagascar}", q"{Malawi}", q"{Malasia}", q"{Maldivas}", q"{Mali}", q"{Malta}"
		, q"{Martinica}", q"{Mauritania}", q"{Méjico}", q"{Micronesia}", q"{Moldavia}", q"{Mónaco}"
		, q"{Mongolia}", q"{Montenegro}", q"{Montserrat}", q"{Marruecos}", q"{Mozambique}", q"{Namibia}"
		, q"{Nauru}", q"{Nepal}", q"{Países Bajos}", q"{Nueva Zelanda}", q"{Nicaragua}", q"{Niger}"
		, q"{Nigeria}", q"{Noruega}", q"{Omán}", q"{Pakistan}", q"{Panamá}", q"{Papúa Nueva Guinea}"
		, q"{Paraguay}", q"{Perú}", q"{Filipinas}", q"{Poland}", q"{Portugal}", q"{Puerto Rico}", q"{Rusia}"
		, q"{Ruanda}", q"{Samoa}", q"{San Marino}", q"{Santo Tomé y Principe}", q"{Arabia Saudí}"
		, q"{Senegal}", q"{Serbia}", q"{Seychelles}", q"{Sierra Leona}", q"{Singapur}", q"{Eslovaquia}"
		, q"{Eslovenia}", q"{Somalia}", q"{España}", q"{Sri Lanka}", q"{Sudán}", q"{Suriname}", q"{Suecia}"
		, q"{Suiza}", q"{Siria}", q"{Taiwan}", q"{Tajikistan}", q"{Tanzania}", q"{Tailandia}", q"{Timor-Leste}"
		, q"{Togo}", q"{Tonga}", q"{Trinidad y Tobago}", q"{Tunez}", q"{Turquia}", q"{Uganda}", q"{Ucrania}"
		, q"{Emiratos Árabes Unidos}", q"{Reino Unido}", q"{Estados Unidos de América}", q"{Uruguay}"
		, q"{Uzbekistan}", q"{Vanuatu}", q"{Venezuela}", q"{Vietnam}", q"{Yemen}", q"{Zambia}", q"{Zimbabwe}" ];

		return choice(strs, this.rnd);
	}

	override string locationCounty() {
		const string[] strs =
		[ q"{Álava}", q"{Albacete}", q"{Alicante}", q"{Almería}", q"{Asturias}", q"{Ávila}", q"{Badajoz}"
		, q"{Barcelona}", q"{Burgos}", q"{Cantabria}", q"{Castellón}", q"{Ciudad Real}", q"{Cuenca}"
		, q"{Cáceres}", q"{Cádiz}", q"{Córdoba}", q"{Gerona}", q"{Granada}", q"{Guadalajara}", q"{Guipúzcoa}"
		, q"{Huelva}", q"{Huesca}", q"{Islas Baleares}", q"{Jaén}", q"{La Coruña}", q"{La Rioja}"
		, q"{Las Palmas}", q"{León}", q"{Lugo}", q"{lérida}", q"{Madrid}", q"{Murcia}", q"{Málaga}"
		, q"{Navarra}", q"{Orense}", q"{Palencia}", q"{Pontevedra}", q"{Salamanca}", q"{Santa Cruz de Tenerife}"
		, q"{Segovia}", q"{Sevilla}", q"{Soria}", q"{Tarragona}", q"{Teruel}", q"{Toledo}", q"{Valencia}"
		, q"{Valladolid}", q"{Vizcaya}", q"{Zamora}", q"{Zaragoza}" ];

		return choice(strs, this.rnd);
	}

	override string locationDefaultCountry() {
		const string[] strs =
		[ q"{España}" ];

		return choice(strs, this.rnd);
	}

	override string locationState() {
		const string[] strs =
		[ q"{Andalucía}", q"{Aragón}", q"{Principado de Asturias}", q"{Baleares}", q"{Canarias}"
		, q"{Cantabria}", q"{Castilla-La Mancha}", q"{Castilla y León}", q"{Cataluña}", q"{Comunidad Valenciana}"
		, q"{Extremadura}", q"{Galicia}", q"{La Rioja}", q"{Comunidad de Madrid}", q"{Navarra}", q"{País Vasco}"
		, q"{Región de Murcia}" ];

		return choice(strs, this.rnd);
	}

	override string locationStateAbbr() {
		const string[] strs =
		[ q"{And}", q"{Ara}", q"{Ast}", q"{Bal}", q"{Can}", q"{Cbr}", q"{Man}", q"{Leo}", q"{Cat}", q"{Com}", q"{Ext}"
		, q"{Gal}", q"{Rio}", q"{Mad}", q"{Nav}", q"{Vas}", q"{Mur}" ];

		return choice(strs, this.rnd);
	}

	override string locationStreetPattern() {
		assert(false);
	}

	override string locationStreetSuffix() {
		const string[] strs =
		[ q"{Aldea}", q"{Apartamento}", q"{Arrabal}", q"{Arroyo}", q"{Avenida}", q"{Bajada}", q"{Barranco}"
		, q"{Barrio}", q"{Bloque}", q"{Calle}", q"{Calleja}", q"{Camino}", q"{Carretera}", q"{Caserio}"
		, q"{Colegio}", q"{Colonia}", q"{Conjunto}", q"{Cuesta}", q"{Chalet}", q"{Edificio}", q"{Entrada}"
		, q"{Escalinata}", q"{Explanada}", q"{Extramuros}", q"{Extrarradio}", q"{Ferrocarril}", q"{Glorieta}"
		, q"{Gran Subida}", q"{Grupo}", q"{Huerta}", q"{Jardines}", q"{Lado}", q"{Lugar}", q"{Manzana}"
		, q"{Masía}", q"{Mercado}", q"{Monte}", q"{Muelle}", q"{Municipio}", q"{Parcela}", q"{Parque}"
		, q"{Partida}", q"{Pasaje}", q"{Paseo}", q"{Plaza}", q"{Poblado}", q"{Polígono}", q"{Prolongación}"
		, q"{Puente}", q"{Puerta}", q"{Quinta}", q"{Ramal}", q"{Rambla}", q"{Rampa}", q"{Riera}", q"{Rincón}"
		, q"{Ronda}", q"{Rua}", q"{Salida}", q"{Sector}", q"{Sección}", q"{Senda}", q"{Solar}", q"{Subida}"
		, q"{Terrenos}", q"{Torrente}", q"{Travesía}", q"{Urbanización}", q"{Vía}", q"{Vía Pública}" ];

		return choice(strs, this.rnd);
	}

	override string personFemaleFirstName() {
		const string[] strs =
		[ q"{Marta}", q"{Andrea}", q"{Ana}", q"{Anni}", q"{Laura}", q"{Maica}", q"{Lorena}", q"{Matilde}", q"{Jennifer}"
		, q"{Roser}", q"{María de los Ángeles}" ];

		return choice(strs, this.rnd);
	}

	override string personFemalePrefix() {
		const string[] strs =
		[ q"{Sra.}", q"{Sta.}" ];

		return choice(strs, this.rnd);
	}

	override string personFirstName() {
		const string[] strs =
		[ q"{Adán}", q"{Agustín}", q"{Alberto}", q"{Alejandro}", q"{Alfonso}", q"{Alfredo}", q"{Andrés}"
		, q"{Antonio}", q"{Armando}", q"{Arturo}", q"{Benito}", q"{Benjamín}", q"{Bernardo}", q"{Carlos}"
		, q"{César}", q"{Claudio}", q"{Clemente}", q"{Cristián}", q"{Cristóbal}", q"{Daniel}", q"{David}"
		, q"{Diego}", q"{Eduardo}", q"{Emilio}", q"{Enrique}", q"{Ernesto}", q"{Esteban}", q"{Federico}"
		, q"{Felipe}", q"{Fernando}", q"{Francisco}", q"{Gabriel}", q"{Gerardo}", q"{Germán}", q"{Gilberto}"
		, q"{Gonzalo}", q"{Gregorio}", q"{Guillermo}", q"{Gustavo}", q"{Hernán}", q"{Homero}", q"{Horacio}"
		, q"{Hugo}", q"{Ignacio}", q"{Jacobo}", q"{Jaime}", q"{Javier}", q"{Jerónimo}", q"{Jesús}", q"{Joaquín}"
		, q"{Jorge}", q"{Jorge Luis}", q"{José}", q"{José Eduardo}", q"{José Emilio}", q"{José Luis}"
		, q"{José María}", q"{Juan}", q"{Juan Carlos}", q"{Julio}", q"{Julio César}", q"{Lorenzo}"
		, q"{Lucas}", q"{Luis}", q"{Luis Miguel}", q"{Manuel}", q"{Marco Antonio}", q"{Marcos}", q"{Mariano}"
		, q"{Mario}", q"{Martín}", q"{Mateo}", q"{Miguel}", q"{Miguel Ángel}", q"{Nicolás}", q"{Octavio}"
		, q"{Óscar}", q"{Pablo}", q"{Patricio}", q"{Pedro}", q"{Rafael}", q"{Ramiro}", q"{Ramón}", q"{Raúl}"
		, q"{Ricardo}", q"{Roberto}", q"{Rodrigo}", q"{Rubén}", q"{Salvador}", q"{Samuel}", q"{Sancho}"
		, q"{Santiago}", q"{Sergio}", q"{Teodoro}", q"{Timoteo}", q"{Tomás}", q"{Vicente}", q"{Víctor}"
		, q"{Adela}", q"{Adriana}", q"{Alejandra}", q"{Alicia}", q"{Amalia}", q"{Ana}", q"{Ana Luisa}"
		, q"{Ana María}", q"{Andrea}", q"{Anita}", q"{Ángela}", q"{Antonia}", q"{Ariadna}", q"{Barbara}"
		, q"{Beatriz}", q"{Berta}", q"{Blanca}", q"{Caridad}", q"{Carla}", q"{Carlota}", q"{Carmen}", q"{Carolina}"
		, q"{Catalina}", q"{Cecilia}", q"{Clara}", q"{Claudia}", q"{Concepción}", q"{Conchita}", q"{Cristina}"
		, q"{Daniela}", q"{Débora}", q"{Diana}", q"{Dolores}", q"{Lola}", q"{Dorotea}", q"{Elena}", q"{Elisa}"
		, q"{Eloisa}", q"{Elsa}", q"{Elvira}", q"{Emilia}", q"{Esperanza}", q"{Estela}", q"{Ester}", q"{Eva}"
		, q"{Florencia}", q"{Francisca}", q"{Gabriela}", q"{Gloria}", q"{Graciela}", q"{Guadalupe}"
		, q"{Guillermina}", q"{Inés}", q"{Irene}", q"{Isabel}", q"{Isabela}", q"{Josefina}", q"{Juana}"
		, q"{Julia}", q"{Laura}", q"{Leonor}", q"{Leticia}", q"{Lilia}", q"{Lorena}", q"{Lourdes}", q"{Lucía}"
		, q"{Luisa}", q"{Luz}", q"{Magdalena}", q"{Manuela}", q"{Marcela}", q"{Margarita}", q"{María}"
		, q"{María del Carmen}", q"{María de los Ángeles}", q"{María Cristina}", q"{María Elena}"
		, q"{María Eugenia}", q"{María José}", q"{María Luisa}", q"{María Soledad}", q"{María Teresa}"
		, q"{Mariana}", q"{Maricarmen}", q"{Marilú}", q"{Marisol}", q"{Marta}", q"{Mayte}", q"{Mercedes}"
		, q"{Micaela}", q"{Mónica}", q"{Natalia}", q"{Norma}", q"{Olivia}", q"{Patricia}", q"{Pilar}"
		, q"{Ramona}", q"{Raquel}", q"{Rebeca}", q"{Reina}", q"{Rocío}", q"{Rosa}", q"{Rosalia}", q"{Rosario}"
		, q"{Sara}", q"{Silvia}", q"{Sofía}", q"{Soledad}", q"{Sonia}", q"{Susana}", q"{Teresa}", q"{Verónica}"
		, q"{Victoria}", q"{Virginia}", q"{Yolanda}" ];

		return choice(strs, this.rnd);
	}

	override string personJobTitlePattern() {
		assert(false);
	}

	override string personLastName() {
		const string[] strs =
		[ q"{Abeyta}", q"{Abrego}", q"{Abreu}", q"{Acevedo}", q"{Acosta}", q"{Acuña}", q"{Adame}", q"{Adorno}"
		, q"{Agosto}", q"{Aguayo}", q"{Aguilar}", q"{Aguilera}", q"{Aguirre}", q"{Alanis}", q"{Alaníz}"
		, q"{Alarcón}", q"{Alba}", q"{Alcalá}", q"{Alcántar}", q"{Alcaraz}", q"{Alejandro}", q"{Alemán}"
		, q"{Alfaro}", q"{Alicea}", q"{Almanza}", q"{Almaráz}", q"{Almonte}", q"{Alonso}", q"{Alonzo}"
		, q"{Altamirano}", q"{Alva}", q"{Alvarado}", q"{Álvarez}", q"{Amador}", q"{Amaya}", q"{Anaya}"
		, q"{Anguiano}", q"{Angulo}", q"{Aparicio}", q"{Apodaca}", q"{Aponte}", q"{Aragón}", q"{Araña}"
		, q"{Aranda}", q"{Arce}", q"{Archuleta}", q"{Arellano}", q"{Arenas}", q"{Arevalo}", q"{Argüello}"
		, q"{Arias}", q"{Armas}", q"{Armendáriz}", q"{Armenta}", q"{Armijo}", q"{Arredondo}", q"{Arreola}"
		, q"{Arriaga}", q"{Arroyo}", q"{Arteaga}", q"{Atencio}", q"{Ávalos}", q"{Ávila}", q"{Avilés}"
		, q"{Ayala}", q"{Baca}", q"{Badillo}", q"{Báez}", q"{Baeza}", q"{Bahena}", q"{Balderas}", q"{Ballesteros}"
		, q"{Banda}", q"{Bañuelos}", q"{Barajas}", q"{Barela}", q"{Barragán}", q"{Barraza}", q"{Barrera}"
		, q"{Barreto}", q"{Barrientos}", q"{Barrios}", q"{Batista}", q"{Becerra}", q"{Beltrán}", q"{Benavides}"
		, q"{Benavídez}", q"{Benítez}", q"{Bermúdez}", q"{Bernal}", q"{Berríos}", q"{Betancourt}"
		, q"{Blanco}", q"{Bonilla}", q"{Borrego}", q"{Botello}", q"{Bravo}", q"{Briones}", q"{Briseño}"
		, q"{Brito}", q"{Bueno}", q"{Burgos}", q"{Bustamante}", q"{Bustos}", q"{Caballero}", q"{Cabán}"
		, q"{Cabrera}", q"{Cadena}", q"{Caldera}", q"{Calderón}", q"{Calvillo}", q"{Camacho}", q"{Camarillo}"
		, q"{Campos}", q"{Canales}", q"{Candelaria}", q"{Cano}", q"{Cantú}", q"{Caraballo}", q"{Carbajal}"
		, q"{Cárdenas}", q"{Cardona}", q"{Carmona}", q"{Carranza}", q"{Carrasco}", q"{Carrasquillo}"
		, q"{Carreón}", q"{Carrera}", q"{Carrero}", q"{Carrillo}", q"{Carrión}", q"{Carvajal}", q"{Casanova}"
		, q"{Casares}", q"{Casarez}", q"{Casas}", q"{Casillas}", q"{Castañeda}", q"{Castellanos}", q"{Castillo}"
		, q"{Castro}", q"{Cavazos}", q"{Cazares}", q"{Ceballos}", q"{Cedillo}", q"{Ceja}", q"{Centeno}"
		, q"{Cepeda}", q"{Cerda}", q"{Cervantes}", q"{Cervántez}", q"{Chacón}", q"{Chapa}", q"{Chavarría}"
		, q"{Chávez}", q"{Cintrón}", q"{Cisneros}", q"{Collado}", q"{Collazo}", q"{Colón}", q"{Colunga}"
		, q"{Concepción}", q"{Contreras}", q"{Cordero}", q"{Córdova}", q"{Cornejo}", q"{Corona}", q"{Coronado}"
		, q"{Corral}", q"{Corrales}", q"{Correa}", q"{Cortés}", q"{Cortéz}", q"{Cotto}", q"{Covarrubias}"
		, q"{Crespo}", q"{Cruz}", q"{Cuellar}", q"{Curiel}", q"{Dávila}", q"{de Anda}", q"{de Jesús}"
		, q"{Delacrúz}", q"{Delafuente}", q"{Delagarza}", q"{Delao}", q"{Delapaz}", q"{Delarosa}", q"{Delatorre}"
		, q"{Deleón}", q"{Delgadillo}", q"{Delgado}", q"{Delrío}", q"{Delvalle}", q"{Díaz}", q"{Domínguez}"
		, q"{Duarte}", q"{Dueñas}", q"{Durán}", q"{Echevarría}", q"{Elizondo}", q"{Enríquez}", q"{Escalante}"
		, q"{Escamilla}", q"{Escobar}", q"{Escobedo}", q"{Esparza}", q"{Espinal}", q"{Espino}", q"{Espinosa}"
		, q"{Espinosa de los Monteros}", q"{Espinoza}", q"{Esquibel}", q"{Esquivel}", q"{Estévez}"
		, q"{Estrada}", q"{Fajardo}", q"{Farías}", q"{Feliciano}", q"{Fernández}", q"{Ferrer}", q"{Fierro}"
		, q"{Figueroa}", q"{Flores}", q"{Flórez}", q"{Fonseca}", q"{Frías}", q"{Fuentes}", q"{Gaitán}"
		, q"{Galarza}", q"{Galindo}", q"{Gallardo}", q"{Gallegos}", q"{Galván}", q"{Gálvez}", q"{Gamboa}"
		, q"{Gámez}", q"{Gaona}", q"{Garay}", q"{García}", q"{Garibay}", q"{Garica}", q"{Garrido}", q"{Garza}"
		, q"{Gastélum}", q"{Gaytán}", q"{Gil}", q"{Girón}", q"{Godínez}", q"{Godoy}", q"{Gómez}", q"{González}"
		, q"{Gracia}", q"{Granado}", q"{Granados}", q"{Griego}", q"{Grijalva}", q"{Guajardo}", q"{Guardado}"
		, q"{Guerra}", q"{Guerrero}", q"{Guevara}", q"{Guillén}", q"{Gurule}", q"{Gutiérrez}", q"{Guzmán}"
		, q"{Haro}", q"{Henríquez}", q"{Heredia}", q"{Hernández}", q"{Herrera}", q"{Hidalgo}", q"{Hinojosa}"
		, q"{Holguín}", q"{Huerta}", q"{Hurtado}", q"{Ibarra}", q"{Iglesias}", q"{Irizarry}", q"{Jaime}"
		, q"{Jaimes}", q"{Jáquez}", q"{Jaramillo}", q"{Jasso}", q"{Jiménez}", q"{Juárez}", q"{Jurado}"
		, q"{Laboy}", q"{Lara}", q"{Laureano}", q"{Leal}", q"{Lebrón}", q"{Ledesma}", q"{Leiva}", q"{Lemus}"
		, q"{León}", q"{Lerma}", q"{Leyva}", q"{Limón}", q"{Linares}", q"{Lira}", q"{Llamas}", q"{Loera}"
		, q"{Lomeli}", q"{Longoria}", q"{López}", q"{Lovato}", q"{Loya}", q"{Lozada}", q"{Lozano}", q"{Lucero}"
		, q"{Lucio}", q"{Luevano}", q"{Lugo}", q"{Luna}", q"{Macías}", q"{Madera}", q"{Madrid}", q"{Madrigal}"
		, q"{Maestas}", q"{Magaña}", q"{Malave}", q"{Maldonado}", q"{Manzanares}", q"{Mares}", q"{Marín}"
		, q"{Márquez}", q"{Marrero}", q"{Marroquín}", q"{Martínez}", q"{Mascareñas}", q"{Mata}"
		, q"{Mateo}", q"{Matías}", q"{Matos}", q"{Maya}", q"{Mayorga}", q"{Medina}", q"{Medrano}", q"{Mejía}"
		, q"{Meléndez}", q"{Melgar}", q"{Mena}", q"{Menchaca}", q"{Méndez}", q"{Mendoza}", q"{Menéndez}"
		, q"{Meraz}", q"{Mercado}", q"{Merino}", q"{Mesa}", q"{Meza}", q"{Miramontes}", q"{Miranda}", q"{Mireles}"
		, q"{Mojica}", q"{Molina}", q"{Mondragón}", q"{Monroy}", q"{Montalvo}", q"{Montañez}", q"{Montaño}"
		, q"{Montemayor}", q"{Montenegro}", q"{Montero}", q"{Montes}", q"{Montéz}", q"{Montoya}", q"{Mora}"
		, q"{Morales}", q"{Moreno}", q"{Mota}", q"{Moya}", q"{Munguía}", q"{Muñiz}", q"{Muñoz}", q"{Murillo}"
		, q"{Muro}", q"{Nájera}", q"{Naranjo}", q"{Narváez}", q"{Nava}", q"{Navarrete}", q"{Navarro}"
		, q"{Nazario}", q"{Negrete}", q"{Negrón}", q"{Nevárez}", q"{Nieto}", q"{Nieves}", q"{Niño}"
		, q"{Noriega}", q"{Núñez}", q"{Ocampo}", q"{Ocasio}", q"{Ochoa}", q"{Ojeda}", q"{Olivares}", q"{Olivárez}"
		, q"{Olivas}", q"{Olivera}", q"{Olivo}", q"{Olmos}", q"{Olvera}", q"{Ontiveros}", q"{Oquendo}"
		, q"{Ordóñez}", q"{Orellana}", q"{Ornelas}", q"{Orosco}", q"{Orozco}", q"{Orta}", q"{Ortega}"
		, q"{Ortiz}", q"{Osorio}", q"{Otero}", q"{Ozuna}", q"{Pabón}", q"{Pacheco}", q"{Padilla}", q"{Padrón}"
		, q"{Páez}", q"{Pagan}", q"{Palacios}", q"{Palomino}", q"{Palomo}", q"{Pantoja}", q"{Paredes}"
		, q"{Parra}", q"{Partida}", q"{Patiño}", q"{Paz}", q"{Pedraza}", q"{Pedroza}", q"{Pelayo}", q"{Peña}"
		, q"{Perales}", q"{Peralta}", q"{Perea}", q"{Pérez}", q"{Pichardo}", q"{Piña}", q"{Pineda}", q"{Pizarro}"
		, q"{Polanco}", q"{Ponce}", q"{Porras}", q"{Portillo}", q"{Posada}", q"{Prado}", q"{Preciado}"
		, q"{Prieto}", q"{Puente}", q"{Puga}", q"{Pulido}", q"{Quesada}", q"{Quezada}", q"{Quiñones}"
		, q"{Quiñónez}", q"{Quintana}", q"{Quintanilla}", q"{Quintero}", q"{Quiróz}", q"{Rael}", q"{Ramírez}"
		, q"{Ramos}", q"{Rangel}", q"{Rascón}", q"{Raya}", q"{Razo}", q"{Regalado}", q"{Rendón}", q"{Rentería}"
		, q"{Reséndez}", q"{Reyes}", q"{Reyna}", q"{Reynoso}", q"{Rico}", q"{Rincón}", q"{Riojas}", q"{Ríos}"
		, q"{Rivas}", q"{Rivera}", q"{Rivero}", q"{Robledo}", q"{Robles}", q"{Rocha}", q"{Rodarte}", q"{Rodríguez}"
		, q"{Rojas}", q"{Rojo}", q"{Roldán}", q"{Rolón}", q"{Romero}", q"{Romo}", q"{Roque}", q"{Rosado}"
		, q"{Rosales}", q"{Rosario}", q"{Rosas}", q"{Roybal}", q"{Rubio}", q"{Ruelas}", q"{Ruíz}", q"{Saavedra}"
		, q"{Sáenz}", q"{Saiz}", q"{Salas}", q"{Salazar}", q"{Salcedo}", q"{Salcido}", q"{Saldaña}", q"{Saldivar}"
		, q"{Salgado}", q"{Salinas}", q"{Samaniego}", q"{Sanabria}", q"{Sánchez}", q"{Sandoval}", q"{Santacruz}"
		, q"{Santana}", q"{Santiago}", q"{Santillán}", q"{Sarabia}", q"{Sauceda}", q"{Saucedo}", q"{Sedillo}"
		, q"{Segovia}", q"{Segura}", q"{Sepúlveda}", q"{Serna}", q"{Serrano}", q"{Serrato}", q"{Sevilla}"
		, q"{Sierra}", q"{Sisneros}", q"{Solano}", q"{Solís}", q"{Soliz}", q"{Solorio}", q"{Solorzano}"
		, q"{Soria}", q"{Sosa}", q"{Sotelo}", q"{Soto}", q"{Suárez}", q"{Tafoya}", q"{Tamayo}", q"{Tamez}"
		, q"{Tapia}", q"{Tejada}", q"{Tejeda}", q"{Téllez}", q"{Tello}", q"{Terán}", q"{Terrazas}", q"{Tijerina}"
		, q"{Tirado}", q"{Toledo}", q"{Toro}", q"{Torres}", q"{Tórrez}", q"{Tovar}", q"{Trejo}", q"{Treviño}"
		, q"{Trujillo}", q"{Ulibarri}", q"{Ulloa}", q"{Urbina}", q"{Ureña}", q"{Urías}", q"{Uribe}", q"{Urrutia}"
		, q"{Vaca}", q"{Valadez}", q"{Valdés}", q"{Valdez}", q"{Valdivia}", q"{Valencia}", q"{Valentín}"
		, q"{Valenzuela}", q"{Valladares}", q"{Valle}", q"{Vallejo}", q"{Valles}", q"{Valverde}", q"{Vanegas}"
		, q"{Varela}", q"{Vargas}", q"{Vázquez}", q"{Vega}", q"{Vela}", q"{Velasco}", q"{Velásquez}"
		, q"{Velázquez}", q"{Vélez}", q"{Véliz}", q"{Venegas}", q"{Vera}", q"{Verdugo}", q"{Verduzco}"
		, q"{Vergara}", q"{Viera}", q"{Vigil}", q"{Villa}", q"{Villagómez}", q"{Villalobos}", q"{Villalpando}"
		, q"{Villanueva}", q"{Villarreal}", q"{Villaseñor}", q"{Villegas}", q"{Yáñez}", q"{Ybarra}"
		, q"{Zambrano}", q"{Zamora}", q"{Zamudio}", q"{Zapata}", q"{Zaragoza}", q"{Zarate}", q"{Zavala}"
		, q"{Zayas}", q"{Zelaya}", q"{Zepeda}", q"{Zúñiga}" ];

		return choice(strs, this.rnd);
	}

	override string personMaleFirstName() {
		const string[] strs =
		[ q"{Josep}", q"{Ángel}", q"{Daniel}", q"{Manuel}", q"{Pedro}", q"{Salvador}", q"{Rubén}", q"{Iván}"
		, q"{Miguel}", q"{Jorge}", q"{Sergi}", q"{Ricardo}", q"{Carles}", q"{Jordi}", q"{Pío}", q"{Pablo}"
		, q"{Juan Ramón}", q"{Hermenegildo}" ];

		return choice(strs, this.rnd);
	}

	override string personMalePrefix() {
		const string[] strs =
		[ q"{Sr.}" ];

		return choice(strs, this.rnd);
	}

	override string personPrefix() {
		const string[] strs =
		[ q"{Sr.}", q"{Sra.}", q"{Sta.}" ];

		return choice(strs, this.rnd);
	}

	override string personSuffix() {
		const string[] strs =
		[ q"{Jr.}", q"{Sr.}", q"{I}", q"{II}", q"{III}", q"{IV}", q"{V}", q"{MD}", q"{DDS}", q"{PhD}", q"{DVM}" ];

		return choice(strs, this.rnd);
	}

	override string personTitleDescriptor() {
		const string[] strs =
		[ q"{Jefe}", q"{Senior}", q"{Directo}", q"{Corporativo}", q"{Dinánmico}", q"{Futuro}", q"{Producto}"
		, q"{Nacional}", q"{Regional}", q"{Distrito}", q"{Central}", q"{Global}", q"{Cliente}", q"{Inversor}"
		, q"{International}", q"{Heredado}", q"{Adelante}", q"{Interno}", q"{Humano}", q"{Gerente}"
		, q"{Director}" ];

		return choice(strs, this.rnd);
	}

	override string personTitleLevel() {
		const string[] strs =
		[ q"{Soluciones}", q"{Programa}", q"{Marca}", q"{Seguridada}", q"{Investigación}", q"{Marketing}"
		, q"{Normas}", q"{Implementación}", q"{Integración}", q"{Funcionalidad}", q"{Respuesta}"
		, q"{Paradigma}", q"{Tácticas}", q"{Identidad}", q"{Mercados}", q"{Grupo}", q"{División}"
		, q"{Aplicaciones}", q"{Optimización}", q"{Operaciones}", q"{Infraestructura}", q"{Intranet}"
		, q"{Comunicaciones}", q"{Web}", q"{Calidad}", q"{Seguro}", q"{Mobilidad}", q"{Cuentas}", q"{Datos}"
		, q"{Creativo}", q"{Configuración}", q"{Contabilidad}", q"{Interacciones}", q"{Factores}"
		, q"{Usabilidad}", q"{Métricas}" ];

		return choice(strs, this.rnd);
	}

	override string personTitleJob() {
		const string[] strs =
		[ q"{Supervisor}", q"{Asociado}", q"{Ejecutivo}", q"{Relacciones}", q"{Oficial}", q"{Gerente}"
		, q"{Ingeniero}", q"{Especialista}", q"{Director}", q"{Coordinador}", q"{Administrador}"
		, q"{Arquitecto}", q"{Analista}", q"{Diseñador}", q"{Planificador}", q"{Técnico}", q"{Funcionario}"
		, q"{Desarrollador}", q"{Productor}", q"{Consultor}", q"{Asistente}", q"{Facilitador}", q"{Agente}"
		, q"{Representante}", q"{Estratega}" ];

		return choice(strs, this.rnd);
	}

}

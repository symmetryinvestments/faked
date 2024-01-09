module faked.faker_es_mx;

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

import faked.faker_es;

class Faker_es_mx : Faker_es {
@safe:
	this(int seed) {
		super(seed);
	}

	override string cellPhoneFormats() {
		const string[] strs =
		[ q"{5##-###-###}", q"{5##.###.###}", q"{5## ### ###}", q"{5########}" ];

		return numberBuild(choice(strs, this.rnd));
	}

	override string commerceProductNameAdjective() {
		const string[] strs =
		[ q"{Pequeño}", q"{Ergonómico}", q"{Rústico}", q"{Inteligente}", q"{Gorgeous}", q"{Increíble}"
		, q"{Fantástico}", q"{Práctica}", q"{Elegante}", q"{Genérica}", q"{Artesanal}", q"{Hecho a mano}"
		, q"{Licencia}", q"{Refinado}", q"{Sin marca}", q"{Sabrosa}" ];

		return choice(strs, this.rnd);
	}

	override string commerceProductNameMaterial() {
		const string[] strs =
		[ q"{Acero}", q"{Madera}", q"{Hormigón}", q"{Plástico}", q"{Cotton}", q"{Granito}", q"{Caucho}"
		, q"{Metal}", q"{Soft}", q"{Fresco}", q"{Frozen}" ];

		return choice(strs, this.rnd);
	}

	override string commerceProductNameProduct() {
		const string[] strs =
		[ q"{Presidente}", q"{Auto}", q"{Computadora}", q"{Teclado}", q"{Ratón}", q"{Bike}", q"{Pelota}"
		, q"{Guantes}", q"{Pantalones}", q"{Camisa}", q"{Mesa}", q"{Zapatos}", q"{Sombrero}", q"{Toallas}"
		, q"{Jabón}", q"{Tuna}", q"{Pollo}", q"{Pescado}", q"{Queso}", q"{Tocino}", q"{Pizza}", q"{Ensalada}"
		, q"{Embutidos}" ];

		return choice(strs, this.rnd);
	}

	override string commerceDepartment() {
		const string[] strs =
		[ q"{Libros}", q"{Películas}", q"{Música}", q"{Juegos}", q"{Electrónica}", q"{Ordenadores}"
		, q"{Hogar}", q"{Jardín}", q"{Herramientas}", q"{Ultramarinos}", q"{Salud}", q"{Belleza}", q"{Juguetes}"
		, q"{Kids}", q"{Baby}", q"{Ropa}", q"{Zapatos}", q"{Joyería}", q"{Deportes}", q"{Aire libre}"
		, q"{Automoción}", q"{Industrial}" ];

		return choice(strs, this.rnd);
	}

	override string companyAdjective() {
		const string[] strs =
		[ q"{Adaptativo}", q"{Avanzado}", q"{Asimilado}", q"{Automatizado}", q"{Equilibrado}", q"{Centrado en el negocio}"
		, q"{Centralizado}", q"{Clonado}", q"{Compatible}", q"{Configurable}", q"{Multi grupo}", q"{Multi plataforma}"
		, q"{Centrado en el usuario}", q"{Descentralizado}", q"{Digitalizado}", q"{Distribuido}"
		, q"{Diverso}", q"{Reducido}", q"{Mejorado}", q"{Para toda la empresa}", q"{Ergonomico}"
		, q"{Exclusivo}", q"{Expandido}", q"{Extendido}", q"{Cara a cara}", q"{Enfocado}", q"{Totalmente configurable}"
		, q"{Fundamental}", q"{Orígenes}", q"{Horizontal}", q"{Implementado}", q"{Innovador}", q"{Integrado}"
		, q"{Intuitivo}", q"{Inverso}", q"{Gestionado}", q"{Obligatorio}", q"{Monitorizado}", q"{Multi canal}"
		, q"{Multi lateral}", q"{Multi capa}", q"{En red}", q"{Orientado a objetos}", q"{Open-source}"
		, q"{Operativo}", q"{Optimizado}", q"{Opcional}", q"{Organico}", q"{Organizado}", q"{Perseverando}"
		, q"{Persistente}", q"{en fases}", q"{Polarizado}", q"{Pre-emptivo}", q"{Proactivo}", q"{Enfocado a benficios}"
		, q"{Profundo}", q"{Programable}", q"{Progresivo}", q"{Public-key}", q"{Enfocado en la calidad}"
		, q"{Reactivo}", q"{Realineado}", q"{Re-contextualizado}", q"{Re-implementado}", q"{Ingenieria inversa}"
		, q"{Robusto}", q"{Fácil}", q"{Seguro}", q"{Auto proporciona}", q"{Compartible}", q"{Intercambiable}"
		, q"{Sincronizado}", q"{Orientado a equipos}", q"{Total}", q"{Universal}", q"{Actualizable}"
		, q"{Amigable}", q"{Versatil}", q"{Virtual}", q"{Visionario}" ];

		return choice(strs, this.rnd);
	}

	override string companyBuzzAdjective() {
		const string[] strs =
		[ q"{Clics y mortero}", q"{Valor añadido}", q"{Vertical}", q"{Proactivo}", q"{Robusto}", q"{Revolucionario}"
		, q"{Escalable}", q"{De vanguardia}", q"{Innovador}", q"{Intuitivo}", q"{Estratégico}", q"{E-business}"
		, q"{Misión crítica}", q"{Pegajosa}", q"{Doce y cincuenta y nueve de la noche}", q"{24/7}"
		, q"{De extremo a extremo}", q"{Global}", q"{B2B}", q"{B2C}", q"{Granular}", q"{Fricción}"
		, q"{Virtual}", q"{Viral}", q"{Dinámico}", q"{24/365}", q"{Mejor de su clase}", q"{Asesino}"
		, q"{Magnética}", q"{Filo sangriento}", q"{Habilitado web}", q"{Interactiva}", q"{Punto com}"
		, q"{Sexy}", q"{Back-end}", q"{Tiempo real}", q"{Eficiente}", q"{Frontal}", q"{Distribuida}"
		, q"{Sin costura}", q"{Extensible}", q"{Llave en mano}", q"{Clase mundial}", q"{Código abierto}"
		, q"{Multiplataforma}", q"{Cross-media}", q"{Sinérgico}", q"{ladrillos y clics}", q"{Fuera de la caja}"
		, q"{Empresa}", q"{Integrado}", q"{Impactante}", q"{Inalámbrico}", q"{Transparente}", q"{Próxima generación}"
		, q"{User-centric}", q"{Visionario}", q"{A medida}", q"{Ubicua}", q"{Enchufa y juega}", q"{Colaboración}"
		, q"{Convincente}", q"{Holístico}", q"{Ricos}" ];

		return choice(strs, this.rnd);
	}

	override string companyBuzzNoun() {
		const string[] strs =
		[ q"{sinergias}", q"{web-readiness}", q"{paradigmas}", q"{mercados}", q"{asociaciones}", q"{infraestructuras}"
		, q"{plataformas}", q"{iniciativas}", q"{canales}", q"{ojos}", q"{comunidades}", q"{ROI}", q"{soluciones}"
		, q"{minoristas electrónicos}", q"{e-servicios}", q"{elementos de acción}", q"{portales}"
		, q"{nichos}", q"{tecnologías}", q"{contenido}", q"{vortales}", q"{cadenas de suministro}"
		, q"{convergencia}", q"{relaciones}", q"{arquitecturas}", q"{interfaces}", q"{mercados electrónicos}"
		, q"{e-commerce}", q"{sistemas}", q"{ancho de banda}", q"{infomediarios}", q"{modelos}", q"{Mindshare}"
		, q"{entregables}", q"{usuarios}", q"{esquemas}", q"{redes}", q"{aplicaciones}", q"{métricas}"
		, q"{e-business}", q"{funcionalidades}", q"{experiencias}", q"{servicios web}", q"{metodologías}" ];

		return choice(strs, this.rnd);
	}

	override string companyBuzzVerb() {
		const string[] strs =
		[ q"{poner en práctica}", q"{utilizar}", q"{integrar}", q"{racionalizar}", q"{optimizar}"
		, q"{evolucionar}", q"{transformar}", q"{abrazar}", q"{habilitar}", q"{orquestar}", q"{apalancamiento}"
		, q"{reinventar}", q"{agregado}", q"{arquitecto}", q"{mejorar}", q"{incentivar}", q"{transformarse}"
		, q"{empoderar}", q"{Envisioneer}", q"{monetizar}", q"{arnés}", q"{facilitar}", q"{aprovechar}"
		, q"{desintermediar}", q"{sinergia}", q"{estrategias}", q"{desplegar}", q"{marca}", q"{crecer}"
		, q"{objetivo}", q"{sindicato}", q"{sintetizar}", q"{entregue}", q"{malla}", q"{incubar}", q"{enganchar}"
		, q"{maximizar}", q"{punto de referencia}", q"{acelerar}", q"{reintermediate}", q"{pizarra}"
		, q"{visualizar}", q"{reutilizar}", q"{innovar}", q"{escala}", q"{desatar}", q"{conducir}", q"{extender}"
		, q"{ingeniero}", q"{revolucionar}", q"{generar}", q"{explotar}", q"{transición}", q"{e-enable}"
		, q"{repetir}", q"{cultivar}", q"{matriz}", q"{productize}", q"{redefinir}", q"{recontextualizar}" ];

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
		final switch(uniform(0, 4, this.rnd)) {
			case 0: return personLastName() ~ " " ~ companySuffix();
			case 1: return personLastName() ~ " y " ~ personLastName();
			case 2: return personLastName() ~ " " ~ personLastName() ~ " " ~ companySuffix();
			case 3: return personLastName() ~ ", " ~ personLastName() ~ " y " ~ personLastName() ~ " Asociados";
		}
		return "";
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

	override string internetDomainSuffix() {
		const string[] strs =
		[ q"{com}", q"{mx}", q"{info}", q"{com.mx}", q"{org}", q"{gob.mx}" ];

		return choice(strs, this.rnd);
	}

	override string internetFreeEmail() {
		const string[] strs =
		[ q"{gmail.com}", q"{yahoo.com}", q"{hotmail.com}", q"{nearbpo.com}", q"{corpfolder.com}" ];

		return choice(strs, this.rnd);
	}

	override string locationBuildingNumber() {
		const string[] strs =
		[ q"{ s/n.}", q"{, #}", q"{, ##}", q"{ #}", q"{ ##}", q"{ ###}", q"{ ####}" ];

		return numberBuild(choice(strs, this.rnd));
	}

	override string locationCityName() {
		const string[] strs =
		[ q"{Aguascalientes}", q"{Apodaca}", q"{Buenavista}", q"{Campeche}", q"{Cancún}", q"{Cárdenas}"
		, q"{Celaya}", q"{Chalco}", q"{Chetumal}", q"{Chicoloapan}", q"{Chignahuapan}", q"{Chihuahua}"
		, q"{Chilpancingo}", q"{Chimalhuacán}", q"{Ciudad Acuña}", q"{Ciudad de México}", q"{Ciudad del Carmen}"
		, q"{Ciudad López Mateos}", q"{Ciudad Madero}", q"{Ciudad Obregón}", q"{Ciudad Valles}"
		, q"{Ciudad Victoria}", q"{Coatzacoalcos}", q"{Colima-Villa de Álvarez}", q"{Comitán de Dominguez}"
		, q"{Córdoba}", q"{Cuautitlán Izcalli}", q"{Cuautla}", q"{Cuernavaca}", q"{Culiacán}"
		, q"{Delicias}", q"{Durango}", q"{Ensenada}", q"{Fresnillo}", q"{General Escobedo}", q"{Gómez Palacio}"
		, q"{Guadalajara}", q"{Guadalupe}", q"{Guanajuato}", q"{Guaymas}", q"{Hermosillo}", q"{Hidalgo del Parral}"
		, q"{Iguala}", q"{Irapuato}", q"{Ixtapaluca}", q"{Jiutepec}", q"{Juárez}", q"{La Laguna}", q"{La Paz}"
		, q"{La Piedad-Pénjamo}", q"{León}", q"{Los Cabos}", q"{Los Mochis}", q"{Manzanillo}", q"{Matamoros}"
		, q"{Mazatlán}", q"{Mérida}", q"{Mexicali}", q"{Minatitlán}", q"{Miramar}", q"{Monclova}"
		, q"{Monclova-Frontera}", q"{Monterrey}", q"{Morelia}", q"{Naucalpan de Juárez}", q"{Navojoa}"
		, q"{Nezahualcóyotl}", q"{Nogales}", q"{Nuevo Laredo}", q"{Oaxaca}", q"{Ocotlán}", q"{Ojo de agua}"
		, q"{Orizaba}", q"{Pachuca}", q"{Piedras Negras}", q"{Poza Rica}", q"{Puebla}", q"{Puerto Vallarta}"
		, q"{Querétaro}", q"{Reynosa-Río Bravo}", q"{Rioverde-Ciudad Fernández}", q"{Salamanca}"
		, q"{Saltillo}", q"{San Cristobal de las Casas}", q"{San Francisco Coacalco}", q"{San Francisco del Rincón}"
		, q"{San Juan Bautista Tuxtepec}", q"{San Juan del Río}", q"{San Luis Potosí-Soledad}"
		, q"{San Luis Río Colorado}", q"{San Nicolás de los Garza}", q"{San Pablo de las Salinas}"
		, q"{San Pedro Garza García}", q"{Santa Catarina}", q"{Soledad de Graciano Sánchez}"
		, q"{Tampico-Pánuco}", q"{Tapachula}", q"{Tecomán}", q"{Tehuacán}", q"{Tehuantepec-Salina Cruz}"
		, q"{Tepexpan}", q"{Tepic}", q"{Tetela de Ocampo}", q"{Texcoco de Mora}", q"{Tijuana}", q"{Tlalnepantla}"
		, q"{Tlaquepaque}", q"{Tlaxcala-Apizaco}", q"{Toluca}", q"{Tonalá}", q"{Torreón}", q"{Tula}"
		, q"{Tulancingo}", q"{Tulancingo de Bravo}", q"{Tuxtla Gutiérrez}", q"{Uruapan}", q"{Uruapan del Progreso}"
		, q"{Valle de México}", q"{Veracruz}", q"{Villa de Álvarez}", q"{Villa Nicolás Romero}"
		, q"{Villahermosa}", q"{Xalapa}", q"{Zacatecas-Guadalupe}", q"{Zacatlan}", q"{Zacatzingo}"
		, q"{Zamora-Jacona}", q"{Zapopan}", q"{Zitacuaro}" ];

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
		, q"{Martinica}", q"{Mauritania}", q"{México}", q"{Micronesia}", q"{Moldavia}", q"{Mónaco}"
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

	override string locationDefaultCountry() {
		const string[] strs =
		[ q"{México}" ];

		return choice(strs, this.rnd);
	}

	override string locationPostcode() {
		const string[] strs =
		[ q"{#####}" ];

		return numberBuild(choice(strs, this.rnd));
	}

	override string locationSecondaryAddress() {
		const string[] strs =
		[ q"{Esc. ###}", q"{Puerta ###}", q"{Edificio #}" ];

		return numberBuild(choice(strs, this.rnd));
	}

	override string locationState() {
		const string[] strs =
		[ q"{Aguascalientes}", q"{Baja California Norte}", q"{Baja California Sur}", q"{Estado de México}"
		, q"{Campeche}", q"{Chiapas}", q"{Chihuahua}", q"{Coahuila}", q"{Colima}", q"{Durango}", q"{Guanajuato}"
		, q"{Guerrero}", q"{Hidalgo}", q"{Jalisco}", q"{Michoacan}", q"{Morelos}", q"{Nayarit}", q"{Nuevo León}"
		, q"{Oaxaca}", q"{Puebla}", q"{Querétaro}", q"{Quintana Roo}", q"{San Luis Potosí}", q"{Sinaloa}"
		, q"{Sonora}", q"{Tabasco}", q"{Tamaulipas}", q"{Tlaxcala}", q"{Veracruz}", q"{Yucatán}", q"{Zacatecas}" ];

		return choice(strs, this.rnd);
	}

	override string locationStateAbbr() {
		const string[] strs =
		[ q"{AS}", q"{BC}", q"{BS}", q"{CC}", q"{CS}", q"{CH}", q"{CL}", q"{CM}", q"{DF}", q"{DG}", q"{GT}", q"{GR}", q"{HG}"
		, q"{JC}", q"{MC}", q"{MN}", q"{MS}", q"{NT}", q"{NL}", q"{OC}", q"{PL}", q"{QT}", q"{QR}", q"{SP}", q"{SL}", q"{SR}"
		, q"{TC}", q"{TS}", q"{TL}", q"{VZ}", q"{YN}", q"{ZS}" ];

		return choice(strs, this.rnd);
	}

	override string locationStreetAddress() {
		const LocationStreetAddressEnum[] enums = [ LocationStreetAddressEnum.normal, LocationStreetAddressEnum.full ];
		return locationStreetAddress(choice(enums, this.rnd));
	}

	override string locationStreetAddress(LocationStreetAddressEnum which) {
		final switch(which) {
			case LocationStreetAddressEnum.normal: return locationStreet() ~ locationBuildingNumber();
			case LocationStreetAddressEnum.full: return locationStreet() ~ locationBuildingNumber() ~ " " ~ locationSecondaryAddress();
		}
		return "";
	}

	override string locationStreetName() {
		const string[] strs =
		[ q"{20 de Noviembre}", q"{Cinco de Mayo}", q"{Cuahutemoc}", q"{Manzanares}", q"{Donceles}"
		, q"{Francisco I. Madero}", q"{Juárez}", q"{Repúplica de Cuba}", q"{Repúplica de Chile}"
		, q"{Repúplica de Argentina}", q"{Repúplica de Uruguay}", q"{Isabel la Católica}"
		, q"{Izazaga}", q"{Eje Central}", q"{Eje 6}", q"{Eje 5}", q"{La viga}", q"{Aniceto Ortega}"
		, q"{Miguel Ángel de Quevedo}", q"{Amores}", q"{Coyoacán}", q"{Coruña}", q"{Batalla de Naco}"
		, q"{La otra banda}", q"{Piedra del Comal}", q"{Balcón de los edecanes}", q"{Barrio la Lonja}"
		, q"{Jicolapa}", q"{Zacatlán}", q"{Zapata}", q"{Polotitlan}", q"{Calimaya}", q"{Flor Marina}"
		, q"{Flor Solvestre}", q"{San Miguel}", q"{Naranjo}", q"{Cedro}", q"{Jalisco}", q"{Avena}" ];

		return choice(strs, this.rnd);
	}

	override string locationStreetPattern() {
		final switch(uniform(0, 3, this.rnd)) {
			case 0: return locationStreetSuffix() ~ " " ~ personFirstName();
			case 1: return locationStreetSuffix() ~ " " ~ personFirstName() ~ " " ~ personLastName();
			case 2: return locationStreetSuffix() ~ " " ~ locationStreetName();
		}
		return "";
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

	override string loremWords() {
		const string[] strs =
		[ q"{Abacalero}", q"{Abacería}", q"{Abacero}", q"{Abacial}", q"{Abaco}", q"{Abacora}", q"{Abacorar}"
		, q"{Abad}", q"{Abada}", q"{Abadejo}", q"{Abadengo}", q"{Abadernar}", q"{Abadesa}", q"{Abadí}"
		, q"{Abadía}", q"{Abadiado}", q"{Abadiato}", q"{Abajadero}", q"{Abajamiento}", q"{Abajar}"
		, q"{Abajeño}", q"{Abajera}", q"{Abajo}", q"{Abalada}", q"{Abalanzar}", q"{Abalar}", q"{Abalaustrado}"
		, q"{Abaldonadamente}", q"{Abaldonamiento}", q"{Bastonada}", q"{Bastonazo}", q"{Bastoncillo}"
		, q"{Bastonear}", q"{Bastonero}", q"{Bástulo}", q"{Basura}", q"{Basural}", q"{Basurear}", q"{Basurero}"
		, q"{Bata}", q"{Batacazo}", q"{Batahola}", q"{Batalán}", q"{Batalla}", q"{Batallador}", q"{Batallar}"
		, q"{Batallaroso}", q"{Batallola}", q"{Batallón}", q"{Batallona}", q"{Batalloso}", q"{Batán}"
		, q"{Batanar}", q"{Batanear}", q"{Batanero}", q"{Batanga}", q"{Bataola}", q"{Batata}", q"{Batatazo}"
		, q"{Batato}", q"{Batavia}", q"{Bátavo}", q"{Batayola}", q"{Batazo}", q"{Bate}", q"{Batea}", q"{Bateador}"
		, q"{Bateaguas}", q"{Cenagar}", q"{Cenagoso}", q"{Cenal}", q"{Cenaoscuras}", q"{Ceñar}", q"{Cenata}"
		, q"{Cenca}", q"{Cencapa}", q"{Cencellada}", q"{Cenceñada}", q"{Cenceño}", q"{Cencero}", q"{Cencerra}"
		, q"{Cencerrada}", q"{Cencerrado}", q"{Cencerrear}", q"{Cencerreo}", q"{Cencerril}", q"{Cencerrillas}"
		, q"{Cencerro}", q"{Cencerrón}", q"{Cencha}", q"{Cencido}", q"{Cencío}", q"{Cencivera}", q"{Cenco}"
		, q"{Cencuate}", q"{Cendal}", q"{Cendalí}", q"{Céndea}", q"{Cendolilla}", q"{Cendra}", q"{Cendrada}"
		, q"{Cendradilla}", q"{Cendrado}", q"{Cendrar}", q"{Cendrazo}", q"{Cenefa}", q"{Cenegar}", q"{Ceneque}"
		, q"{Cenero}", q"{Cenestesia}", q"{Desceñir}", q"{Descensión}", q"{Descenso}", q"{Descentrado}"
		, q"{Descentralización}", q"{Descentralizador}", q"{Descentralizar}", q"{Descentrar}"
		, q"{Descepar}", q"{Descerar}", q"{Descercado}", q"{Descercador}", q"{Descercar}", q"{Descerco}"
		, q"{Descerebración}", q"{Descerebrado}", q"{Descerebrar}", q"{Descerezar}", q"{Descerrajado}"
		, q"{Descerrajadura}", q"{Descerrajar}", q"{Descerrar}", q"{Descerrumarse}", q"{Descervigamiento}"
		, q"{Descervigar}", q"{Deschapar}", q"{Descharchar}", q"{Deschavetado}", q"{Deschavetarse}"
		, q"{Deschuponar}", q"{Descifrable}", q"{Descifrador}", q"{Desciframiento}", q"{Descifrar}"
		, q"{Descifre}", q"{Descimbramiento}", q"{Descimbrar}", q"{Engarbarse}", q"{Engarberar}"
		, q"{Engarbullar}", q"{Engarce}", q"{Engarfiar}", q"{Engargantadura}", q"{Engargantar}", q"{Engargante}"
		, q"{Engargolado}", q"{Engargolar}", q"{Engaritar}", q"{Engarmarse}", q"{Engarnio}", q"{Engarrafador}"
		, q"{Engarrafar}", q"{Engarrar}", q"{Engarro}", q"{Engarronar}", q"{Engarrotar}", q"{Engarzador}"
		, q"{Engarzadura}", q"{Engarzar}", q"{Engasgarse}", q"{Engastador}", q"{Engastadura}", q"{Engastar}"
		, q"{Engaste}", q"{Ficción}", q"{Fice}", q"{Ficha}", q"{Fichaje}", q"{Fichar}", q"{Fichero}", q"{Ficoideo}"
		, q"{Ficticio}", q"{Fidalgo}", q"{Fidecomiso}", q"{Fidedigno}", q"{Fideero}", q"{Fideicomisario}"
		, q"{Fideicomiso}", q"{Fideicomitente}", q"{Fideísmo}", q"{Fidelidad}", q"{Fidelísimo}"
		, q"{Fideo}", q"{Fido}", q"{Fiducia}", q"{Geminación}", q"{Geminado}", q"{Geminar}", q"{Géminis}"
		, q"{Gémino}", q"{Gemíparo}", q"{Gemiquear}", q"{Gemiqueo}", q"{Gemir}", q"{Gemología}", q"{Gemológico}"
		, q"{Gemólogo}", q"{Gemonias}", q"{Gemoso}", q"{Gemoterapia}", q"{Gen}", q"{Genciana}", q"{Gencianáceo}"
		, q"{Gencianeo}", q"{Gendarme}", q"{Gendarmería}", q"{Genealogía}", q"{Genealógico}", q"{Genealogista}"
		, q"{Genearca}", q"{Geneático}", q"{Generable}", q"{Generación}", q"{Generacional}", q"{Generador}"
		, q"{General}", q"{Generala}", q"{Generalato}", q"{Generalidad}", q"{Generalísimo}", q"{Incordio}"
		, q"{Incorporación}", q"{Incorporal}", q"{Incorporalmente}", q"{Incorporar}", q"{Incorporeidad}"
		, q"{Incorpóreo}", q"{Incorporo}", q"{Incorrección}", q"{Incorrectamente}", q"{Incorrecto}"
		, q"{Incorregibilidad}", q"{Incorregible}", q"{Incorregiblemente}", q"{Incorrupción}"
		, q"{Incorruptamente}", q"{Incorruptibilidad}", q"{Incorruptible}", q"{Incorrupto}", q"{Incrasar}"
		, q"{Increado}", q"{Incredibilidad}", q"{Incrédulamente}", q"{Incredulidad}", q"{Incrédulo}"
		, q"{Increíble}", q"{Increíblemente}", q"{Incrementar}", q"{Incremento}", q"{Increpación}"
		, q"{Increpador}", q"{Increpar}", q"{Incriminación}", q"{Incriminar}", q"{Incristalizable}"
		, q"{Incruentamente}", q"{Incruento}", q"{Incrustación}" ];

		return choice(strs, this.rnd);
	}

	override string personFemaleFirstName() {
		const string[] strs =
		[ q"{Abigail}", q"{Abril}", q"{Adela}", q"{Adriana}", q"{Alejandra}", q"{Alexa}", q"{Alicia}", q"{Alondra Romina}"
		, q"{Amalia}", q"{Ana Luisa}", q"{Ana María}", q"{Ana Sofía}", q"{Ana Victoria}", q"{Ana}"
		, q"{Andrea}", q"{Ángela}", q"{Anita}", q"{Antonia}", q"{Araceli}", q"{Ariadna}", q"{Barbara}"
		, q"{Beatriz}", q"{Berta}", q"{Blanca}", q"{Camila}", q"{Caridad}", q"{Carla}", q"{Carlota}", q"{Carmen}"
		, q"{Carolina}", q"{Catalina}", q"{Cecilia}", q"{Clara}", q"{Claudia}", q"{Concepción}", q"{Conchita}"
		, q"{Cristina}", q"{Daniela}", q"{Débora}", q"{Diana}", q"{Dolores}", q"{Dorotea}", q"{Dulce María}"
		, q"{Elena}", q"{Elisa}", q"{Elizabeth}", q"{Eloisa}", q"{Elsa}", q"{Elvira}", q"{Emilia}", q"{Emily}"
		, q"{Esmeralda}", q"{Esperanza}", q"{Estefanía}", q"{Estela}", q"{Ester}", q"{Eva}", q"{Evelyn}"
		, q"{Fatima}", q"{Florencia}", q"{Francisca}", q"{Gabriela}", q"{Gloria}", q"{Graciela}", q"{Guadalupe}"
		, q"{Guillermina}", q"{Inés}", q"{Irene}", q"{Isabel}", q"{Isabela}", q"{Ivanna}", q"{Jazmin}"
		, q"{Jennifer}", q"{Jimena}", q"{Josefina}", q"{Juana}", q"{Julia}", q"{Julieta}", q"{Kimberly}"
		, q"{Laura}", q"{Leonor}", q"{Leticia}", q"{Lilia}", q"{Liliana}", q"{Lizbeth}", q"{Lola}", q"{Lorena}"
		, q"{Lourdes}", q"{Lucia}", q"{Luisa}", q"{Luz}", q"{Magdalena}", q"{Manuela}", q"{Marcela}", q"{Margarita}"
		, q"{María Cristina}", q"{María de Jesús}", q"{María de los Ángeles}", q"{María del Carmen}"
		, q"{María Elena}", q"{María Eugenia}", q"{María Fernanda}", q"{María Guadalupe}"
		, q"{María José}", q"{María Luisa}", q"{María Soledad}", q"{María Teresa}", q"{María}"
		, q"{Mariana}", q"{Maricarmen}", q"{Marilu}", q"{Marisol}", q"{Marta}", q"{Mayte}", q"{Melany}"
		, q"{Melissa}", q"{Mercedes}", q"{Micaela}", q"{Miranda}", q"{Mónica}", q"{Monserrat}", q"{Naomi}"
		, q"{Natalia}", q"{Nicole}", q"{Norma}", q"{Olivia}", q"{Paola}", q"{Patricia}", q"{Paulina}", q"{Pilar}"
		, q"{Ramona}", q"{Raquel}", q"{Rebeca}", q"{Regina}", q"{Reina}", q"{Renata}", q"{Rocio}", q"{Rosa María}"
		, q"{Rosa}", q"{Rosalia}", q"{Rosario}", q"{Sara}", q"{Silvia}", q"{Sofia}", q"{Soledad}", q"{Sonia}"
		, q"{Susana}", q"{Teresa}", q"{Valentina}", q"{Valeria}", q"{Vanessa}", q"{Verónica}", q"{Victoria}"
		, q"{Virginia}", q"{Ximena Guadalupe}", q"{Ximena}", q"{Xochitl}", q"{Yamileth}", q"{Yaretzi}"
		, q"{Yolanda}", q"{Zoe}" ];

		return choice(strs, this.rnd);
	}

	override string personFemalePrefix() {
		const string[] strs =
		[ q"{Sra.}", q"{Sta.}" ];

		return choice(strs, this.rnd);
	}

	override string personFirstName() {
		const string[] strs =
		[ q"{Aarón}", q"{Abigail}", q"{Abraham}", q"{Abril}", q"{Adela}", q"{Adriana}", q"{Adán}", q"{Agustín}"
		, q"{Alan}", q"{Alberto}", q"{Alejandra}", q"{Alejandro}", q"{Alexa}", q"{Alexander}", q"{Alexis}"
		, q"{Alfonso}", q"{Alfredo}", q"{Alicia}", q"{Alondra Romina}", q"{Amalia}", q"{Ana}", q"{Ana Luisa}"
		, q"{Ana María}", q"{Ana Sofía}", q"{Ana Victoria}", q"{Andrea}", q"{Andrés}", q"{Anita}"
		, q"{Antonia}", q"{Antonio}", q"{Araceli}", q"{Ariadna}", q"{Armando}", q"{Arturo}", q"{Axel}"
		, q"{Barbara}", q"{Beatriz}", q"{Benito}", q"{Benjamín}", q"{Bernardo}", q"{Berta}", q"{Blanca}"
		, q"{Brandon}", q"{Brayan}", q"{Camila}", q"{Caridad}", q"{Carla}", q"{Carlos}", q"{Carlota}", q"{Carmen}"
		, q"{Carolina}", q"{Catalina}", q"{Cecilia}", q"{Clara}", q"{Claudia}", q"{Claudio}", q"{Clemente}"
		, q"{Concepción}", q"{Conchita}", q"{Cristian}", q"{Cristina}", q"{Cristobal}", q"{César}"
		, q"{Damián}", q"{Daniel}", q"{Daniela}", q"{David}", q"{Diana}", q"{Diego}", q"{Dolores}", q"{Dorotea}"
		, q"{Dulce María}", q"{Débora}", q"{Eduardo}", q"{Elena}", q"{Elisa}", q"{Elizabeth}", q"{Eloisa}"
		, q"{Elsa}", q"{Elvira}", q"{Elías}", q"{Emilia}", q"{Emiliano}", q"{Emilio}", q"{Emily}", q"{Emmanuel}"
		, q"{Enrique}", q"{Erick}", q"{Ernesto}", q"{Esmeralda}", q"{Esperanza}", q"{Esteban}", q"{Estefanía}"
		, q"{Estela}", q"{Ester}", q"{Eva}", q"{Evelyn}", q"{Fatima}", q"{Federico}", q"{Felipe}", q"{Fernando}"
		, q"{Fernando Javier}", q"{Florencia}", q"{Francisca}", q"{Francisco}", q"{Francisco Javier}"
		, q"{Gabriel}", q"{Gabriela}", q"{Gael}", q"{Gerardo}", q"{Germán}", q"{Gilberto}", q"{Gloria}"
		, q"{Gonzalo}", q"{Graciela}", q"{Gregorio}", q"{Guadalupe}", q"{Guillermina}", q"{Guillermo}"
		, q"{Gustavo}", q"{Hernán}", q"{Homero}", q"{Horacio}", q"{Hugo}", q"{Ignacio}", q"{Iker}", q"{Inés}"
		, q"{Irene}", q"{Isaac}", q"{Isabel}", q"{Isabela}", q"{Isaias}", q"{Israel}", q"{Ivan}", q"{Ivanna}"
		, q"{Jacobo}", q"{Jaime}", q"{Javier}", q"{Jazmin}", q"{Jennifer}", q"{Jerónimo}", q"{Jesús}"
		, q"{Jimena}", q"{Joaquín}", q"{Jorge}", q"{Jorge Luis}", q"{Jose Daniel}", q"{Josefina}", q"{José}"
		, q"{José Antonio}", q"{José Eduardo}", q"{José Emilio}", q"{José Luis}", q"{José María}"
		, q"{José Miguel}", q"{Juan}", q"{Juan Carlos}", q"{Juan Manuel}", q"{Juan Pablo}", q"{Juana}"
		, q"{Julia}", q"{Julieta}", q"{Julio}", q"{Julio César}", q"{Kevin}", q"{Kimberly}", q"{Laura}"
		, q"{Leonardo}", q"{Leonor}", q"{Leticia}", q"{Lilia}", q"{Liliana}", q"{Lizbeth}", q"{Lola}", q"{Lorena}"
		, q"{Lorenzo}", q"{Lourdes}", q"{Lucas}", q"{Lucia}", q"{Luis}", q"{Luis Fernando}", q"{Luis Gabino}"
		, q"{Luis Miguel}", q"{Luis Ángel}", q"{Luisa}", q"{Luz}", q"{Magdalena}", q"{Manuel}", q"{Manuela}"
		, q"{Marcela}", q"{Marco Antonio}", q"{Marcos}", q"{Margarita}", q"{Mariana}", q"{Mariano}"
		, q"{Maricarmen}", q"{Marilu}", q"{Mario}", q"{Marisol}", q"{Marta}", q"{Martín}", q"{María}"
		, q"{María Cristina}", q"{María Elena}", q"{María Eugenia}", q"{María Fernanda}", q"{María Guadalupe}"
		, q"{María José}", q"{María Luisa}", q"{María Soledad}", q"{María Teresa}", q"{María de Jesús}"
		, q"{María de los Ángeles}", q"{María del Carmen}", q"{Mateo}", q"{Matías}", q"{Mauricio}"
		, q"{Maximiliano}", q"{Mayte}", q"{Melany}", q"{Melissa}", q"{Mercedes}", q"{Micaela}", q"{Miguel}"
		, q"{Miguel Ángel}", q"{Miranda}", q"{Monserrat}", q"{Mónica}", q"{Naomi}", q"{Natalia}", q"{Nicole}"
		, q"{Nicolás}", q"{Norma}", q"{Octavio}", q"{Olivia}", q"{Pablo}", q"{Paola}", q"{Patricia}", q"{Patricio}"
		, q"{Paulina}", q"{Pedro}", q"{Pilar}", q"{Rafael}", q"{Ramiro}", q"{Ramona}", q"{Ramón}", q"{Raquel}"
		, q"{Raúl}", q"{Rebeca}", q"{Regina}", q"{Reina}", q"{Renata}", q"{Ricardo}", q"{Roberto}", q"{Rocio}"
		, q"{Rodrigo}", q"{Rosa}", q"{Rosa María}", q"{Rosalia}", q"{Rosario}", q"{Rubén}", q"{Salvador}"
		, q"{Samuel}", q"{Sancho}", q"{Santiago}", q"{Sara}", q"{Saúl}", q"{Sebastian}", q"{Sergio}", q"{Silvia}"
		, q"{Sofia}", q"{Soledad}", q"{Sonia}", q"{Susana}", q"{Tadeo}", q"{Teodoro}", q"{Teresa}", q"{Timoteo}"
		, q"{Tomás}", q"{Uriel}", q"{Valentina}", q"{Valeria}", q"{Vanessa}", q"{Verónica}", q"{Vicente}"
		, q"{Victor Manuel}", q"{Victoria}", q"{Virginia}", q"{Víctor}", q"{Ximena}", q"{Ximena Guadalupe}"
		, q"{Xochitl}", q"{Yamileth}", q"{Yaretzi}", q"{Yolanda}", q"{Zoe}", q"{Ángel Daniel}", q"{Ángel Gabriel}"
		, q"{Ángela}", q"{Óscar}" ];

		return choice(strs, this.rnd);
	}

	override string personLastName() {
		const string[] strs =
		[ q"{Abeyta}", q"{Abrego}", q"{Abreu}", q"{Acevedo}", q"{Acosta}", q"{Acuña}", q"{Adame}", q"{Adorno}"
		, q"{Agosto}", q"{Aguayo}", q"{Águilar}", q"{Aguilera}", q"{Aguirre}", q"{Alanis}", q"{Alaniz}"
		, q"{Alarcón}", q"{Alba}", q"{Alcala}", q"{Alcántar}", q"{Alcaraz}", q"{Alejandro}", q"{Alemán}"
		, q"{Alfaro}", q"{Alicea}", q"{Almanza}", q"{Almaraz}", q"{Almonte}", q"{Alonso}", q"{Alonzo}"
		, q"{Altamirano}", q"{Alva}", q"{Alvarado}", q"{Alvarez}", q"{Amador}", q"{Amaya}", q"{Anaya}"
		, q"{Anguiano}", q"{Angulo}", q"{Aparicio}", q"{Apodaca}", q"{Aponte}", q"{Aragón}", q"{Aranda}"
		, q"{Araña}", q"{Arce}", q"{Archuleta}", q"{Arellano}", q"{Arenas}", q"{Arevalo}", q"{Arguello}"
		, q"{Arias}", q"{Armas}", q"{Armendáriz}", q"{Armenta}", q"{Armijo}", q"{Arredondo}", q"{Arreola}"
		, q"{Arriaga}", q"{Arroyo}", q"{Arteaga}", q"{Atencio}", q"{Ávalos}", q"{Ávila}", q"{Avilés}"
		, q"{Ayala}", q"{Baca}", q"{Badillo}", q"{Báez}", q"{Baeza}", q"{Bahena}", q"{Balderas}", q"{Ballesteros}"
		, q"{Banda}", q"{Bañuelos}", q"{Barajas}", q"{Barela}", q"{Barragán}", q"{Barraza}", q"{Barrera}"
		, q"{Barreto}", q"{Barrientos}", q"{Barrios}", q"{Batista}", q"{Becerra}", q"{Beltrán}", q"{Benavides}"
		, q"{Benavídez}", q"{Benítez}", q"{Bermúdez}", q"{Bernal}", q"{Berríos}", q"{Bétancourt}"
		, q"{Blanco}", q"{Bonilla}", q"{Borrego}", q"{Botello}", q"{Bravo}", q"{Briones}", q"{Briseño}"
		, q"{Brito}", q"{Bueno}", q"{Burgos}", q"{Bustamante}", q"{Bustos}", q"{Caballero}", q"{Cabán}"
		, q"{Cabrera}", q"{Cadena}", q"{Caldera}", q"{Calderón}", q"{Calvillo}", q"{Camacho}", q"{Camarillo}"
		, q"{Campos}", q"{Canales}", q"{Candelaria}", q"{Cano}", q"{Cantú}", q"{Caraballo}", q"{Carbajal}"
		, q"{Cardenas}", q"{Cardona}", q"{Carmona}", q"{Carranza}", q"{Carrasco}", q"{Carrasquillo}"
		, q"{Carreón}", q"{Carrera}", q"{Carrero}", q"{Carrillo}", q"{Carrion}", q"{Carvajal}", q"{Casanova}"
		, q"{Casares}", q"{Casárez}", q"{Casas}", q"{Casillas}", q"{Castañeda}", q"{Castellanos}"
		, q"{Castillo}", q"{Castro}", q"{Cavazos}", q"{Cazares}", q"{Ceballos}", q"{Cedillo}", q"{Ceja}"
		, q"{Centeno}", q"{Cepeda}", q"{Cerda}", q"{Cervantes}", q"{Cervántez}", q"{Chacón}", q"{Chapa}"
		, q"{Chavarría}", q"{Chávez}", q"{Cintrón}", q"{Cisneros}", q"{Collado}", q"{Collazo}", q"{Colón}"
		, q"{Colunga}", q"{Concepción}", q"{Contreras}", q"{Cordero}", q"{Córdova}", q"{Cornejo}"
		, q"{Corona}", q"{Coronado}", q"{Corral}", q"{Corrales}", q"{Correa}", q"{Cortés}", q"{Cortez}"
		, q"{Cotto}", q"{Covarrubias}", q"{Crespo}", q"{Cruz}", q"{Cuellar}", q"{Curiel}", q"{Dávila}"
		, q"{de Anda}", q"{de Jesús}", q"{Delacrúz}", q"{Delafuente}", q"{Delagarza}", q"{Delao}"
		, q"{Delapaz}", q"{Delarosa}", q"{Delatorre}", q"{Deleón}", q"{Delgadillo}", q"{Delgado}", q"{Delrío}"
		, q"{Delvalle}", q"{Díaz}", q"{Domínguez}", q"{Domínquez}", q"{Duarte}", q"{Dueñas}", q"{Duran}"
		, q"{Echevarría}", q"{Elizondo}", q"{Enríquez}", q"{Escalante}", q"{Escamilla}", q"{Escobar}"
		, q"{Escobedo}", q"{Esparza}", q"{Espinal}", q"{Espino}", q"{Espinosa}", q"{Espinoza}", q"{Esquibel}"
		, q"{Esquivel}", q"{Estévez}", q"{Estrada}", q"{Fajardo}", q"{Farías}", q"{Feliciano}", q"{Fernández}"
		, q"{Ferrer}", q"{Fierro}", q"{Figueroa}", q"{Flores}", q"{Flórez}", q"{Fonseca}", q"{Franco}"
		, q"{Frías}", q"{Fuentes}", q"{Gaitán}", q"{Galarza}", q"{Galindo}", q"{Gallardo}", q"{Gallegos}"
		, q"{Galván}", q"{Gálvez}", q"{Gamboa}", q"{Gamez}", q"{Gaona}", q"{Garay}", q"{García}", q"{Garibay}"
		, q"{Garica}", q"{Garrido}", q"{Garza}", q"{Gastélum}", q"{Gaytán}", q"{Gil}", q"{Girón}", q"{Godínez}"
		, q"{Godoy}", q"{Gollum}", q"{Gómez}", q"{Gonzales}", q"{González}", q"{Gracia}", q"{Granado}"
		, q"{Granados}", q"{Griego}", q"{Grijalva}", q"{Guajardo}", q"{Guardado}", q"{Guerra}", q"{Guerrero}"
		, q"{Guevara}", q"{Guillen}", q"{Gurule}", q"{Gutiérrez}", q"{Guzmán}", q"{Haro}", q"{Henríquez}"
		, q"{Heredia}", q"{Hernádez}", q"{Hernandes}", q"{Hernández}", q"{Herrera}", q"{Hidalgo}"
		, q"{Hinojosa}", q"{Holguín}", q"{Huerta}", q"{Huixtlacatl}", q"{Hurtado}", q"{Ibarra}", q"{Iglesias}"
		, q"{Irizarry}", q"{Jaime}", q"{Jaimes}", q"{Jáquez}", q"{Jaramillo}", q"{Jasso}", q"{Jiménez}"
		, q"{Jimínez}", q"{Juárez}", q"{Jurado}", q"{Kadar rodriguez}", q"{Kamal}", q"{Kamat}", q"{Kanaria}"
		, q"{Kanea}", q"{Kanimal}", q"{Kano}", q"{Kanzaki}", q"{Kaplan}", q"{Kara}", q"{Karam}", q"{Karan}"
		, q"{Kardache soto}", q"{Karem}", q"{Karen}", q"{Khalid}", q"{Kindelan}", q"{Koenig}", q"{Korta}"
		, q"{Korta hernandez}", q"{Kortajarena}", q"{Kranz sans}", q"{Krasnova}", q"{Krauel natera}"
		, q"{Kuzmina}", q"{Kyra}", q"{Laboy}", q"{Lara}", q"{Laureano}", q"{Leal}", q"{Lebrón}", q"{Ledesma}"
		, q"{Leiva}", q"{Lemus}", q"{León}", q"{Lerma}", q"{Leyva}", q"{Limón}", q"{Linares}", q"{Lira}"
		, q"{Llamas}", q"{Loera}", q"{Lomeli}", q"{Longoria}", q"{López}", q"{Lovato}", q"{Loya}", q"{Lozada}"
		, q"{Lozano}", q"{Lucero}", q"{Lucio}", q"{Luevano}", q"{Lugo}", q"{Luna}", q"{Macías}", q"{Madera}"
		, q"{Madrid}", q"{Madrigal}", q"{Maestas}", q"{Magaña}", q"{Malave}", q"{Maldonado}", q"{Manzanares}"
		, q"{Mares}", q"{Marín}", q"{Márquez}", q"{Marrero}", q"{Marroquín}", q"{Martínez}", q"{Mascareñas}"
		, q"{Mata}", q"{Mateo}", q"{Matías}", q"{Matos}", q"{Maya}", q"{Mayorga}", q"{Medina}", q"{Medrano}"
		, q"{Mejía}", q"{Meléndez}", q"{Melgar}", q"{Mena}", q"{Menchaca}", q"{Méndez}", q"{Mendoza}"
		, q"{Menéndez}", q"{Meraz}", q"{Mercado}", q"{Merino}", q"{Mesa}", q"{Meza}", q"{Miramontes}"
		, q"{Miranda}", q"{Mireles}", q"{Mojica}", q"{Molina}", q"{Mondragón}", q"{Monroy}", q"{Montalvo}"
		, q"{Montañez}", q"{Montaño}", q"{Montemayor}", q"{Montenegro}", q"{Montero}", q"{Montes}"
		, q"{Montez}", q"{Montoya}", q"{Mora}", q"{Morales}", q"{Moreno}", q"{Mota}", q"{Moya}", q"{Munguía}"
		, q"{Muñiz}", q"{Muñoz}", q"{Murillo}", q"{Muro}", q"{Nájera}", q"{Naranjo}", q"{Narváez}"
		, q"{Nava}", q"{Navarrete}", q"{Navarro}", q"{Nazario}", q"{Negrete}", q"{Negrón}", q"{Nevárez}"
		, q"{Nieto}", q"{Nieves}", q"{Niño}", q"{Noriega}", q"{Núñez}", q"{Ñañez}", q"{Ocampo}", q"{Ocasio}"
		, q"{Ochoa}", q"{Ojeda}", q"{Olivares}", q"{Olivárez}", q"{Olivas}", q"{Olivera}", q"{Olivo}"
		, q"{Olmos}", q"{Olvera}", q"{Ontiveros}", q"{Oquendo}", q"{Ordóñez}", q"{Orellana}", q"{Ornelas}"
		, q"{Orosco}", q"{Orozco}", q"{Orta}", q"{Ortega}", q"{Ortiz}", q"{Osorio}", q"{Otero}", q"{Ozuna}"
		, q"{Pabón}", q"{Pacheco}", q"{Padilla}", q"{Padrón}", q"{Páez}", q"{Pagan}", q"{Palacios}"
		, q"{Palomino}", q"{Palomo}", q"{Pantoja}", q"{Paredes}", q"{Parra}", q"{Partida}", q"{Patiño}"
		, q"{Paz}", q"{Pedraza}", q"{Pedroza}", q"{Pelayo}", q"{Peña}", q"{Perales}", q"{Peralta}", q"{Perea}"
		, q"{Peres}", q"{Pérez}", q"{Pichardo}", q"{Pineda}", q"{Piña}", q"{Pizarro}", q"{Polanco}", q"{Ponce}"
		, q"{Porras}", q"{Portillo}", q"{Posada}", q"{Prado}", q"{Preciado}", q"{Prieto}", q"{Puente}"
		, q"{Puga}", q"{Pulido}", q"{Quesada}", q"{Quevedo}", q"{Quezada}", q"{Quinta}", q"{Quintairos}"
		, q"{Quintana}", q"{Quintanilla}", q"{Quintero}", q"{Quintero cruz}", q"{Quintero de la cruz}"
		, q"{Quiñones}", q"{Quiñónez}", q"{Quiros}", q"{Quiroz}", q"{Rael}", q"{Ramírez}", q"{Ramón}"
		, q"{Ramos}", q"{Rangel}", q"{Rascón}", q"{Raya}", q"{Razo}", q"{Regalado}", q"{Rendón}", q"{Rentería}"
		, q"{Reséndez}", q"{Reyes}", q"{Reyna}", q"{Reynoso}", q"{Rico}", q"{Rincón}", q"{Riojas}", q"{Ríos}"
		, q"{Rivas}", q"{Rivera}", q"{Rivero}", q"{Robledo}", q"{Robles}", q"{Rocha}", q"{Rodarte}", q"{Rodrígez}"
		, q"{Rodríguez}", q"{Rodríquez}", q"{Rojas}", q"{Rojo}", q"{Roldán}", q"{Rolón}", q"{Romero}"
		, q"{Romo}", q"{Roque}", q"{Rosado}", q"{Rosales}", q"{Rosario}", q"{Rosas}", q"{Roybal}", q"{Rubio}"
		, q"{Ruelas}", q"{Ruiz}", q"{Saavedra}", q"{Sáenz}", q"{Saiz}", q"{Salas}", q"{Salazar}", q"{Salcedo}"
		, q"{Salcido}", q"{Saldaña}", q"{Saldivar}", q"{Salgado}", q"{Salinas}", q"{Samaniego}", q"{Sanabria}"
		, q"{Sanches}", q"{Sánchez}", q"{Sandoval}", q"{Santacruz}", q"{Santana}", q"{Santiago}", q"{Santillán}"
		, q"{Sarabia}", q"{Sauceda}", q"{Saucedo}", q"{Sedillo}", q"{Segovia}", q"{Segura}", q"{Sepúlveda}"
		, q"{Serna}", q"{Serrano}", q"{Serrato}", q"{Sevilla}", q"{Sierra}", q"{Sisneros}", q"{Solano}"
		, q"{Solís}", q"{Soliz}", q"{Solorio}", q"{Solorzano}", q"{Soria}", q"{Sosa}", q"{Sotelo}", q"{Soto}"
		, q"{Suárez}", q"{Tafoya}", q"{Tamayo}", q"{Tamez}", q"{Tapia}", q"{Tejada}", q"{Tejeda}", q"{Téllez}"
		, q"{Tello}", q"{Terán}", q"{Terrazas}", q"{Tijerina}", q"{Tirado}", q"{Toledo}", q"{Toro}", q"{Torres}"
		, q"{Tórrez}", q"{Tovar}", q"{Trejo}", q"{Treviño}", q"{Trujillo}", q"{Ulibarri}", q"{Ulloa}"
		, q"{Urbina}", q"{Ureña}", q"{Urías}", q"{Uribe}", q"{Urrutia}", q"{Vaca}", q"{Valadez}", q"{Valdés}"
		, q"{Valdez}", q"{Valdivia}", q"{Valencia}", q"{Valentín}", q"{Valenzuela}", q"{Valladares}"
		, q"{Valle}", q"{Vallejo}", q"{Valles}", q"{Valverde}", q"{Vanegas}", q"{Varela}", q"{Vargas}"
		, q"{Vásquez}", q"{Vázquez}", q"{Vega}", q"{Vela}", q"{Velasco}", q"{Velásquez}", q"{Velázquez}"
		, q"{Vélez}", q"{Véliz}", q"{Venegas}", q"{Vera}", q"{Verdugo}", q"{Verduzco}", q"{Vergara}"
		, q"{Viera}", q"{Vigil}", q"{Villa}", q"{Villagómez}", q"{Villalobos}", q"{Villalpando}", q"{Villanueva}"
		, q"{Villareal}", q"{Villarreal}", q"{Villaseñor}", q"{Villegas}", q"{Xacon}", q"{Xairo Belmonte}"
		, q"{Xana}", q"{Xenia}", q"{Xiana}", q"{Xicoy}", q"{Yago}", q"{Yami}", q"{Yanes}", q"{Yáñez}", q"{Ybarra}"
		, q"{Yebra}", q"{Yunta}", q"{Zabaleta}", q"{Zamarreno}", q"{Zamarripa}", q"{Zambrana}", q"{Zambrano}"
		, q"{Zamora}", q"{Zamudio}", q"{Zapata}", q"{Zaragoza}", q"{Zarate}", q"{Zavala}", q"{Zayas}", q"{Zelaya}"
		, q"{Zepeda}", q"{Zúñiga}" ];

		return choice(strs, this.rnd);
	}

	override string personLastNamePattern() {
		const int rndInt = uniform(0, 6, this.rnd);

		if(rndInt >= 0 && rndInt < 5) {
			return personLastName() ~ " " ~ personLastName();
		}
		if(rndInt >= 5 && rndInt < 6) {
			return personLastName() ~ " de " ~ personLastName();
		}

		return "";
	}

	override string personMaleFirstName() {
		const string[] strs =
		[ q"{Aarón}", q"{Abraham}", q"{Adán}", q"{Agustín}", q"{Alan}", q"{Alberto}", q"{Alejandro}", q"{Alexander}"
		, q"{Alexis}", q"{Alfonso}", q"{Alfredo}", q"{Andrés}", q"{Ángel Daniel}", q"{Ángel Gabriel}"
		, q"{Antonio}", q"{Armando}", q"{Arturo}", q"{Axel}", q"{Benito}", q"{Benjamín}", q"{Bernardo}"
		, q"{Brandon}", q"{Brayan}", q"{Carlos}", q"{César}", q"{Claudio}", q"{Clemente}", q"{Cristian}"
		, q"{Cristobal}", q"{Damián}", q"{Daniel}", q"{David}", q"{Diego}", q"{Eduardo}", q"{Elías}"
		, q"{Emiliano}", q"{Emilio}", q"{Emmanuel}", q"{Enrique}", q"{Erick}", q"{Ernesto}", q"{Esteban}"
		, q"{Federico}", q"{Felipe}", q"{Fernando}", q"{Fernando Javier}", q"{Francisco}", q"{Francisco Javier}"
		, q"{Gabriel}", q"{Gael}", q"{Gerardo}", q"{Germán}", q"{Gilberto}", q"{Gonzalo}", q"{Gregorio}"
		, q"{Guillermo}", q"{Gustavo}", q"{Hernán}", q"{Homero}", q"{Horacio}", q"{Hugo}", q"{Ignacio}"
		, q"{Iker}", q"{Isaac}", q"{Isaias}", q"{Israel}", q"{Ivan}", q"{Jacobo}", q"{Jaime}", q"{Javier}"
		, q"{Jerónimo}", q"{Jesús}", q"{Joaquín}", q"{Jorge}", q"{Jorge Luis}", q"{José}", q"{José Antonio}"
		, q"{Jose Daniel}", q"{José Eduardo}", q"{José Emilio}", q"{José Luis}", q"{José María}"
		, q"{José Miguel}", q"{Juan}", q"{Juan Carlos}", q"{Juan Manuel}", q"{Juan Pablo}", q"{Julio}"
		, q"{Julio César}", q"{Kevin}", q"{Leonardo}", q"{Lorenzo}", q"{Lucas}", q"{Luis}", q"{Luis Ángel}"
		, q"{Luis Fernando}", q"{Luis Gabino}", q"{Luis Miguel}", q"{Manuel}", q"{Marco Antonio}"
		, q"{Marcos}", q"{Mariano}", q"{Mario}", q"{Martín}", q"{Mateo}", q"{Matías}", q"{Mauricio}"
		, q"{Maximiliano}", q"{Miguel}", q"{Miguel Ángel}", q"{Nicolás}", q"{Octavio}", q"{Óscar}"
		, q"{Pablo}", q"{Patricio}", q"{Pedro}", q"{Rafael}", q"{Ramiro}", q"{Ramón}", q"{Raúl}", q"{Ricardo}"
		, q"{Roberto}", q"{Rodrigo}", q"{Rubén}", q"{Salvador}", q"{Samuel}", q"{Sancho}", q"{Santiago}"
		, q"{Saúl}", q"{Sebastian}", q"{Sergio}", q"{Tadeo}", q"{Teodoro}", q"{Timoteo}", q"{Tomás}"
		, q"{Uriel}", q"{Vicente}", q"{Víctor}", q"{Victor Manuel}" ];

		return choice(strs, this.rnd);
	}

	override string personMalePrefix() {
		const string[] strs =
		[ q"{Sr.}" ];

		return choice(strs, this.rnd);
	}

	override string personName() {
		const int rndInt = uniform(0, 10, this.rnd);

		if(rndInt >= 0 && rndInt < 1) {
			return personPrefix() ~ " " ~ personFirstName() ~ " " ~ personLastName();
		}
		if(rndInt >= 1 && rndInt < 9) {
			return personFirstName() ~ " " ~ personLastName();
		}
		if(rndInt >= 9 && rndInt < 10) {
			return personFirstName() ~ " " ~ personLastName() ~ " " ~ personSuffix();
		}

		return "";
	}

	override string personPrefix() {
		const string[] strs =
		[ q"{Sr.}", q"{Sra.}", q"{Sta.}" ];

		return choice(strs, this.rnd);
	}

	override string personSuffix() {
		const string[] strs =
		[ q"{Jr.}", q"{Sr.}", q"{I}", q"{II}", q"{III}", q"{IV}", q"{V}", q"{MD}", q"{DDS}", q"{PhD}", q"{DVM}", q"{Ing.}"
		, q"{Lic.}", q"{Dr.}", q"{Mtro.}" ];

		return choice(strs, this.rnd);
	}

	override string personTitleDescriptor() {
		const string[] strs =
		[ q"{Jefe}", q"{Senior}", q"{Directo}", q"{Corporativo}", q"{Dinánmico}", q"{Futuro}", q"{Producto}"
		, q"{Nacional}", q"{Regional}", q"{Distrito}", q"{Central}", q"{Global}", q"{Cliente}", q"{Inversor}"
		, q"{International}", q"{Heredado}", q"{Adelante}", q"{Interno}", q"{Humano}", q"{Gerente}"
		, q"{SubGerente}", q"{Director}" ];

		return choice(strs, this.rnd);
	}

	override string personTitleLevel() {
		const string[] strs =
		[ q"{Soluciones}", q"{Programa}", q"{Marca}", q"{Seguridad}", q"{Investigación}", q"{Marketing}"
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
		, q"{Representante}", q"{Estratega}", q"{Scrum Master}", q"{Scrum Owner}", q"{Product Owner}"
		, q"{Scrum Developer}" ];

		return choice(strs, this.rnd);
	}

	override string phoneNumberFormats() {
		const string[] strs =
		[ q"{5###-###-###}", q"{5##.###.###}", q"{5## ### ###}", q"{5########}" ];

		return numberBuild(choice(strs, this.rnd));
	}

	override string teamCreature() {
		const string[] strs =
		[ q"{hormigas}", q"{murciélagos}", q"{osos}", q"{abejas}", q"{pájaros}", q"{búfalo}", q"{gatos}"
		, q"{pollos}", q"{ganado}", q"{perros}", q"{delfines}", q"{patos}", q"{elefantes}", q"{peces}"
		, q"{zorros}", q"{ranas}", q"{gansos}", q"{cabras}", q"{caballos}", q"{canguros}", q"{leones}"
		, q"{monos}", q"{búhos}", q"{bueyes}", q"{pingüinos}", q"{pueblo}", q"{cerdos}", q"{conejos}"
		, q"{ovejas}", q"{tigres}", q"{ballenas}", q"{lobos}", q"{cebras}", q"{almas en pena}", q"{cuervos}"
		, q"{gatos negros}", q"{quimeras}", q"{fantasmas}", q"{conspiradores}", q"{dragones}", q"{enanos}"
		, q"{duendes}", q"{encantadores}", q"{exorcistas}", q"{hijos}", q"{enemigos}", q"{gigantes}"
		, q"{gnomos}", q"{grifos}", q"{licántropos}", q"{némesis}", q"{ogros}", q"{oráculos}", q"{profetas}"
		, q"{hechiceros}", q"{arañas}", q"{espíritus}", q"{vampiros}", q"{brujos}", q"{zorras}", q"{hombres lobo}"
		, q"{brujas}", q"{adoradores}", q"{zombies}", q"{druidas}" ];

		return choice(strs, this.rnd);
	}

	override string teamName() {
		final switch(uniform(0, 1, this.rnd)) {
			case 0: return locationState() ~ " " ~ teamCreature();
		}
		return "";
	}

}

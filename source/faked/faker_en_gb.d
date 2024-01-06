module faker.faker_en_gb;

import std.random;
import std.array;
import std.format;
import std.conv : to;
import std.string : toUpper;
import std.range : iota, take, repeat;
import std.algorithm : map, joiner;
import faker.base;

class Faker_en_gb : Faker {
@safe:
	this(int seed) {
		super(seed);
	}

	override string internetDomainSuffix() {
		const string[] strs =
		[ q"{ac.uk}", q"{biz}", q"{co}", q"{co.uk}", q"{com}", q"{cymru}", q"{gov.uk}", q"{info}", q"{london}"
		, q"{ltd.uk}", q"{me.uk}", q"{name}", q"{nhs.uk}", q"{org.uk}", q"{plc.uk}", q"{sch.uk}", q"{scot}"
		, q"{uk}", q"{wales}" ];

		return choice(strs, this.rnd);
	}

	override string locationCityPattern() {
		assert(false);
	}

	override string locationCityPrefix() {
		const string[] strs =
		[ q"{Great}", q"{Little}", q"{St.}", q"{West}", q"{East}", q"{North}", q"{South}", q"{Upper}", q"{Lower}"
		, q"{Old}", q"{Long}", q"{New}", q"{High}", q"{Nether}", q"{Castle}", q"{Upton}", q"{Newton}" ];

		return choice(strs, this.rnd);
	}

	override string locationCitySuffix() {
		const string[] strs =
		[ q"{ton}", q"{ham}", q"{ley}", q"{ington}", q"{ford}", q"{field}", q"{bury}", q"{don}", q"{ing}", q"{worth}"
		, q"{well}", q"{ingham}", q"{wood}", q"{ridge}", q"{borough}", q"{stone}", q"{hill}", q"{thorpe}"
		, q"{hampton}", q"{wick}", q"{ Green}", q"{ Park}", q"{ Hill}", q"{ Court}", q"{ Heath}", q"{ Bridge}"
		, q"{ End}", q"{ Common}", q"{ Place}", q"{ Cross}", q"{ Gardens}" ];

		return choice(strs, this.rnd);
	}

	override string locationCounty() {
		const string[] strs =
		[ q"{Avon}", q"{Bedfordshire}", q"{Berkshire}", q"{Borders}", q"{Buckinghamshire}", q"{Cambridgeshire}"
		, q"{Central}", q"{Cheshire}", q"{Cleveland}", q"{Clwyd}", q"{Cornwall}", q"{County Antrim}"
		, q"{County Armagh}", q"{County Down}", q"{County Fermanagh}", q"{County Londonderry}"
		, q"{County Tyrone}", q"{Cumbria}", q"{Derbyshire}", q"{Devon}", q"{Dorset}", q"{Dumfries and Galloway}"
		, q"{Durham}", q"{Dyfed}", q"{East Sussex}", q"{Essex}", q"{Fife}", q"{Gloucestershire}", q"{Grampian}"
		, q"{Greater Manchester}", q"{Gwent}", q"{Gwynedd County}", q"{Hampshire}", q"{Herefordshire}"
		, q"{Hertfordshire}", q"{Highlands and Islands}", q"{Humberside}", q"{Isle of Wight}"
		, q"{Kent}", q"{Lancashire}", q"{Leicestershire}", q"{Lincolnshire}", q"{Lothian}", q"{Merseyside}"
		, q"{Mid Glamorgan}", q"{Norfolk}", q"{North Yorkshire}", q"{Northamptonshire}", q"{Northumberland}"
		, q"{Nottinghamshire}", q"{Oxfordshire}", q"{Powys}", q"{Rutland}", q"{Shropshire}", q"{Somerset}"
		, q"{South Glamorgan}", q"{South Yorkshire}", q"{Staffordshire}", q"{Strathclyde}", q"{Suffolk}"
		, q"{Surrey}", q"{Tayside}", q"{Tyne and Wear}", q"{Warwickshire}", q"{West Glamorgan}", q"{West Midlands}"
		, q"{West Sussex}", q"{West Yorkshire}", q"{Wiltshire}", q"{Worcestershire}" ];

		return choice(strs, this.rnd);
	}

	override string locationDefaultCountry() {
		const string[] strs =
		[ q"{England}", q"{Scotland}", q"{Wales}", q"{Northern Ireland}" ];

		return choice(strs, this.rnd);
	}

	override string locationState() {
		const string[] strs =
		[ q"{England}", q"{Northern Ireland}", q"{Scotland}", q"{Wales}" ];

		return choice(strs, this.rnd);
	}

	override string locationStateAbbr() {
		const string[] strs =
		[ q"{ENG}", q"{NIR}", q"{SCT}", q"{WLS}" ];

		return choice(strs, this.rnd);
	}

	override string locationStreetName() {
		const string[] strs =
		[ q"{Abbey Road}", q"{Albany Road}", q"{Albert Road}", q"{Albion Street}", q"{Alexandra Road}"
		, q"{Alfred Street}", q"{Alma Street}", q"{Ash Close}", q"{Ash Grove}", q"{Ash Road}", q"{Aspen Close}"
		, q"{Avenue Road}", q"{Back Lane}", q"{Baker Street}", q"{Balmoral Road}", q"{Barn Close}"
		, q"{Barton Road}", q"{Bath Road}", q"{Bath Street}", q"{Beach Road}", q"{Bedford Road}"
		, q"{Beech Close}", q"{Beech Drive}", q"{Beech Grove}", q"{Beech Road}", q"{Beechwood Avenue}"
		, q"{Bell Lane}", q"{Belmont Road}", q"{Birch Avenue}", q"{Birch Close}", q"{Birch Grove}"
		, q"{Birch Road}", q"{Blind Lane}", q"{Bluebell Close}", q"{Boundary Road}", q"{Bramble Close}"
		, q"{Bramley Close}", q"{Broad Lane}", q"{Broad Street}", q"{Broadway}", q"{Brook Lane}"
		, q"{Brook Road}", q"{Brook Street}", q"{Brookside}", q"{Buckingham Road}", q"{Cambridge Street}"
		, q"{Castle Close}", q"{Castle Lane}", q"{Castle Road}", q"{Castle Street}", q"{Cavendish Road}"
		, q"{Cedar Avenue}", q"{Cedar Close}", q"{Cedar Grove}", q"{Cedar Road}", q"{Cemetery Road}"
		, q"{Central Avenue}", q"{Chapel Close}", q"{Chapel Hill}", q"{Chapel Road}", q"{Chapel Street}"
		, q"{Charles Street}", q"{Cherry Close}", q"{Cherry Tree Close}", q"{Chester Road}", q"{Chestnut Close}"
		, q"{Chestnut Drive}", q"{Chestnut Grove}", q"{Church Avenue}", q"{Church Close}", q"{Church Hill}"
		, q"{Church Lane}", q"{Church Path}", q"{Church Road}", q"{Church View}", q"{Church Walk}"
		, q"{Claremont Road}", q"{Clarence Road}", q"{Clarence Street}", q"{Clarendon Road}", q"{Clay Lane}"
		, q"{Cliff Road}", q"{Clifton Road}", q"{Commercial Road}", q"{Commercial Street}", q"{Common Lane}"
		, q"{Coronation Avenue}", q"{Coronation Road}", q"{Cow Lane}", q"{Crescent Road}", q"{Cromwell Road}"
		, q"{Cross Lane}", q"{Cross Street}", q"{Crown Street}", q"{Dale Street}", q"{Dark Lane}"
		, q"{Derby Road}", q"{Derwent Close}", q"{Devonshire Road}", q"{Douglas Road}", q"{Duke Street}"
		, q"{East Avenue}", q"{East Road}", q"{Edward Street}", q"{Elm Close}", q"{Elm Grove}", q"{Elm Road}"
		, q"{Fairfield Road}", q"{Farm Close}", q"{Ferry Road}", q"{Field Close}", q"{Field Lane}"
		, q"{First Avenue}", q"{Fore Street}", q"{Forest Road}", q"{Fourth Avenue}", q"{Front Street}"
		, q"{Garden Close}", q"{Garden Street}", q"{George Street}", q"{Gladstone Road}", q"{Glebe Close}"
		, q"{Gloucester Road}", q"{Gordon Road}", q"{Gordon Street}", q"{Grange Avenue}", q"{Grange Close}"
		, q"{Grange Road}", q"{Green Close}", q"{Green Lane}", q"{Green Street}", q"{Greenway}", q"{Grove Lane}"
		, q"{Grove Road}", q"{Hall Lane}", q"{Hall Street}", q"{Hawthorn Avenue}", q"{Hawthorn Close}"
		, q"{Hazel Close}", q"{Hazel Grove}", q"{Heath Road}", q"{Heather Close}", q"{Henry Street}"
		, q"{Heron Close}", q"{High Road}", q"{High Street}", q"{Highfield Avenue}", q"{Highfield Close}"
		, q"{Highfield Road}", q"{Hill Road}", q"{Hill Street}", q"{Hillside Avenue}", q"{Hillside Close}"
		, q"{Hillside Road}", q"{Hillside}", q"{Holly Close}", q"{Honeysuckle Close}", q"{Howard Road}"
		, q"{James Street}", q"{Jubilee Close}", q"{Juniper Close}", q"{Kent Road}", q"{Kestrel Close}"
		, q"{King Street}", q"{King's Road}", q"{Kingfisher Close}", q"{Kingsway}", q"{Laburnum Grove}"
		, q"{Lancaster Road}", q"{Lansdowne Road}", q"{Larch Close}", q"{Laurel Close}", q"{Lime Grove}"
		, q"{Lincoln Road}", q"{Lodge Close}", q"{Lodge Lane}", q"{London Road}", q"{Long Lane}"
		, q"{Low Road}", q"{Main Road}", q"{Main Street}", q"{Manor Close}", q"{Manor Drive}", q"{Manor Gardens}"
		, q"{Manor Road}", q"{Manor Way}", q"{Maple Close}", q"{Maple Drive}", q"{Maple Road}", q"{Market Place}"
		, q"{Market Square}", q"{Marlborough Road}", q"{Marsh Lane}", q"{Mary Street}", q"{Mayfield Road}"
		, q"{Meadow Close}", q"{Meadow Drive}", q"{Meadow Lane}", q"{Meadow View}", q"{Meadow Way}"
		, q"{Middle Street}", q"{Mill Close}", q"{Mill Lane}", q"{Mill Road}", q"{Mill Street}", q"{Milton Road}"
		, q"{Milton Street}", q"{Moor Lane}", q"{Moss Lane}", q"{Mount Pleasant}", q"{Mount Street}"
		, q"{Nelson Road}", q"{Nelson Street}", q"{New Lane}", q"{New Road}", q"{New Street}", q"{Newton Road}"
		, q"{Nightingale Close}", q"{Norfolk Road}", q"{North Avenue}", q"{North Lane}", q"{North Road}"
		, q"{Northfield Road}", q"{Oak Avenue}", q"{Oak Drive}", q"{Oak Lane}", q"{Oak Road}", q"{Oak Street}"
		, q"{Oakfield Road}", q"{Oaklands}", q"{Old Lane}", q"{Old Military Road}", q"{Old Road}"
		, q"{Orchard Drive}", q"{Orchard Lane}", q"{Orchard Road}", q"{Orchard Street}", q"{Oxford Road}"
		, q"{Oxford Street}", q"{Park Avenue}", q"{Park Crescent}", q"{Park Drive}", q"{Park Lane}"
		, q"{Park Place}", q"{Park Road}", q"{Park Street}", q"{Park View}", q"{Parkside}", q"{Pine Close}"
		, q"{Pine Grove}", q"{Pinfold Lane}", q"{Poplar Avenue}", q"{Poplar Close}", q"{Poplar Road}"
		, q"{Pound Lane}", q"{Princes Street}", q"{Princess Street}", q"{Priory Close}", q"{Priory Road}"
		, q"{Prospect Place}", q"{Prospect Road}", q"{Quarry Lane}", q"{Quarry Road}", q"{Queen's Road}"
		, q"{Railway Street}", q"{Rectory Close}", q"{Rectory Lane}", q"{Richmond Close}", q"{Richmond Road}"
		, q"{Riverside}", q"{Roman Road}", q"{Roman Way}", q"{Rowan Close}", q"{Russell Street}"
		, q"{Salisbury Road}", q"{Sandringham Road}", q"{Sandy Lane}", q"{School Close}", q"{School Lane}"
		, q"{School Road}", q"{Second Avenue}", q"{Silver Street}", q"{Smith Street}", q"{Somerset Road}"
		, q"{South Drive}", q"{South Road}", q"{South Street}", q"{South View}", q"{Spring Gardens}"
		, q"{Springfield Close}", q"{Springfield Road}", q"{St Andrew's Road}", q"{St Andrews Close}"
		, q"{St George's Road}", q"{St John's Road}", q"{St Mary's Close}", q"{St Mary's Road}"
		, q"{Stanley Road}", q"{Stanley Street}", q"{Station Road}", q"{Station Street}", q"{Stoney Lane}"
		, q"{Sycamore Avenue}", q"{Sycamore Close}", q"{Sycamore Drive}", q"{Talbot Road}", q"{Tennyson Road}"
		, q"{The Avenue}", q"{The Beeches}", q"{The Causeway}", q"{The Chase}", q"{The Coppice}"
		, q"{The Copse}", q"{The Crescent}", q"{The Croft}", q"{The Dell}", q"{The Drive}", q"{The Fairway}"
		, q"{The Glebe}", q"{The Grange}", q"{The Green}", q"{The Grove}", q"{The Hawthorns}", q"{The Lane}"
		, q"{The Laurels}", q"{The Limes}", q"{The Maltings}", q"{The Meadows}", q"{The Mews}", q"{The Mount}"
		, q"{The Oaks}", q"{The Orchard}", q"{The Oval}", q"{The Paddock}", q"{The Paddocks}", q"{The Poplars}"
		, q"{The Ridgeway}", q"{The Ridings}", q"{The Rise}", q"{The Sidings}", q"{The Spinney}"
		, q"{The Square}", q"{The Willows}", q"{The Woodlands}", q"{Third Avenue}", q"{Tower Road}"
		, q"{Trinity Road}", q"{Tudor Close}", q"{Union Street}", q"{Valley Road}", q"{Vicarage Close}"
		, q"{Vicarage Lane}", q"{Vicarage Road}", q"{Victoria Place}", q"{Victoria Road}", q"{Victoria Street}"
		, q"{Walnut Close}", q"{Warren Close}", q"{Warren Road}", q"{Water Lane}", q"{Water Street}"
		, q"{Waterloo Road}", q"{Waterside}", q"{Watery Lane}", q"{Waverley Road}", q"{Well Lane}"
		, q"{Wellington Road}", q"{Wellington Street}", q"{West End}", q"{West Lane}", q"{West Street}"
		, q"{West View}", q"{Western Avenue}", q"{Western Road}", q"{Westfield Road}", q"{Westgate}"
		, q"{William Street}", q"{Willow Close}", q"{Willow Drive}", q"{Willow Grove}", q"{Willow Road}"
		, q"{Windermere Road}", q"{Windmill Close}", q"{Windmill Lane}", q"{Windsor Avenue}", q"{Windsor Close}"
		, q"{Windsor Drive}", q"{Wood Lane}", q"{Wood Street}", q"{Woodland Close}", q"{Woodland Road}"
		, q"{Woodlands Avenue}", q"{Woodlands Close}", q"{Woodlands Road}", q"{Woodlands}", q"{Woodside Road}"
		, q"{Woodside}", q"{Wren Close}", q"{Yew Tree Close}", q"{York Road}", q"{York Street}" ];

		return choice(strs, this.rnd);
	}

	override string locationStreetPattern() {
		assert(false);
	}

	override string locationStreetSuffix() {
		const string[] strs =
		[ q"{Road}", q"{Close}", q"{Street}", q"{Lane}", q"{Avenue}", q"{Drive}", q"{Way}", q"{Place}", q"{Court}"
		, q"{Gardens}", q"{Crescent}", q"{Grove}", q"{Terrace}", q"{Hill}", q"{View}", q"{Walk}", q"{Park}"
		, q"{Mews}", q"{Rise}", q"{Green}", q"{Square}", q"{Croft}", q"{Bank}", q"{Row}", q"{Meadow}", q"{Gate}"
		, q"{End}", q"{Drove}", q"{Mead}", q"{Field}", q"{Chase}", q"{Mount}", q"{Meadows}", q"{Orchard}"
		, q"{Fields}", q"{Yard}", q"{Garth}", q"{Fold}", q"{Wynd}", q"{Parade}", q"{Vale}", q"{Brae}", q"{Grange}"
		, q"{Approach}", q"{Wood}", q"{Paddock}", q"{Brow}", q"{Lea}", q"{Path}", q"{Side}", q"{Heights}"
		, q"{Copse}", q"{Corner}", q"{Ridge}", q"{Glade}" ];

		return choice(strs, this.rnd);
	}

}

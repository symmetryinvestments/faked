module faker.faker_ko;

import std.random;
import std.array;
import std.format;
import std.conv : to;
import std.string : toUpper;
import std.range : iota, take, repeat;
import std.algorithm : map, joiner;

import faker.customtypes;
import faker.base;

class Faker_ko : Faker {
@safe:
	this(int seed) {
		super(seed);
	}

	override string companyNamePattern() {
		final switch(uniform(0, 2, this.rnd)) {
			case 0: return companyPrefix() ~ " " ~ personFirstName();
			case 1: return personFirstName() ~ " " ~ companySuffix();
		}
		return "";
	}

	override string companySuffix() {
		const string[] strs =
		[ q"{연구소}", q"{게임즈}", q"{그룹}", q"{전자}", q"{물산}", q"{코리아}", q"{공사}"
		, q"{증권}", q"{은행}", q"{중공업}" ];

		return choice(strs, this.rnd);
	}

	override string dateMonthWide() {
		const string[] strs =
		[ q"{1월}", q"{2월}", q"{3월}", q"{4월}", q"{5월}", q"{6월}", q"{7월}", q"{8월}", q"{9월}", q"{10월}"
		, q"{11월}", q"{12월}" ];

		return choice(strs, this.rnd);
	}

	override string dateMonthAbbr() {
		const string[] strs =
		[ q"{1월}", q"{2월}", q"{3월}", q"{4월}", q"{5월}", q"{6월}", q"{7월}", q"{8월}", q"{9월}", q"{10월}"
		, q"{11월}", q"{12월}" ];

		return choice(strs, this.rnd);
	}

	override string dateWeekdayWide() {
		const string[] strs =
		[ q"{일요일}", q"{월요일}", q"{화요일}", q"{수요일}", q"{목요일}", q"{금요일}"
		, q"{토요일}" ];

		return choice(strs, this.rnd);
	}

	override string dateWeekdayAbbr() {
		const string[] strs =
		[ q"{일}", q"{월}", q"{화}", q"{수}", q"{목}", q"{금}", q"{토}" ];

		return choice(strs, this.rnd);
	}

	override string internetDomainSuffix() {
		const string[] strs =
		[ q"{co.kr}", q"{com}", q"{biz}", q"{info}", q"{ne.kr}", q"{net}", q"{or.kr}", q"{org}" ];

		return choice(strs, this.rnd);
	}

	override string internetFreeEmail() {
		const string[] strs =
		[ q"{gmail.com}", q"{yahoo.co.kr}", q"{hanmail.net}", q"{naver.com}" ];

		return choice(strs, this.rnd);
	}

	override string locationCityName() {
		const string[] strs =
		[ q"{강릉}", q"{양양}", q"{인제}", q"{광주}", q"{구리}", q"{부천}", q"{밀양}", q"{통영}"
		, q"{창원}", q"{거창}", q"{고성}", q"{양산}", q"{김천}", q"{구미}", q"{영주}", q"{광산}"
		, q"{남}", q"{북}", q"{고창}", q"{군산}", q"{남원}", q"{동작}", q"{마포}", q"{송파}"
		, q"{용산}", q"{부평}", q"{강화}", q"{수성}", q"{수원}", q"{속초}", q"{전주}", q"{목포}"
		, q"{분당}", q"{안양}", q"{시흥}" ];

		return choice(strs, this.rnd);
	}

	override string locationCityPattern() {
		final switch(uniform(0, 1, this.rnd)) {
			case 0: return locationCityName() ~ locationCitySuffix();
		}
		return "";
	}

	override string locationCitySuffix() {
		const string[] strs =
		[ q"{구}", q"{시}", q"{군}" ];

		return choice(strs, this.rnd);
	}

	override string locationPostcode() {
		const string[] strs =
		[ q"{###-###}", q"{#####}" ];

		return numberBuild(choice(str, this.rnd));
	}

	override string locationSecondaryAddress() {
		const string[] strs =
		[ q"{아파트 ###동}", q"{###호}" ];

		return numberBuild(choice(str, this.rnd));
	}

	override string locationState() {
		const string[] strs =
		[ q"{강원}", q"{경기}", q"{경남}", q"{경북}", q"{광주}", q"{대구}", q"{대전}", q"{부산}"
		, q"{서울}", q"{울산}", q"{인천}", q"{전남}", q"{전북}", q"{제주}", q"{충남}", q"{충북}"
		, q"{세종}" ];

		return choice(strs, this.rnd);
	}

	override string locationStateAbbr() {
		const string[] strs =
		[ q"{강원}", q"{경기}", q"{경남}", q"{경북}", q"{광주}", q"{대구}", q"{대전}", q"{부산}"
		, q"{서울}", q"{울산}", q"{인천}", q"{전남}", q"{전북}", q"{제주}", q"{충남}", q"{충북}"
		, q"{세종}" ];

		return choice(strs, this.rnd);
	}

	override string locationStreetName() {
		const string[] strs =
		[ q"{상계}", q"{화곡}", q"{신정}", q"{목}", q"{잠실}", q"{면목}", q"{주안}", q"{중}", q"{정왕}"
		, q"{구로}", q"{신월}", q"{연산}", q"{창}", q"{만수}", q"{중계}", q"{검단}", q"{상도}"
		, q"{방배}", q"{장유}", q"{상}", q"{광명}", q"{신길}", q"{행신}", q"{대명}", q"{동탄}"
		, q"{판교}", q"{연무}" ];

		return choice(strs, this.rnd);
	}

	override string locationStreetPattern() {
		final switch(uniform(0, 1, this.rnd)) {
			case 0: return locationStreetName() ~ locationStreetSuffix();
		}
		return "";
	}

	override string locationStreetSuffix() {
		const string[] strs =
		[ q"{읍}", q"{면}", q"{동}" ];

		return choice(strs, this.rnd);
	}

	override string loremWords() {
		const string[] strs =
		[ q"{국가는}", q"{법률이}", q"{정하는}", q"{바에}", q"{의하여}", q"{재외국민을}"
		, q"{보호할}", q"{의무를}", q"{진다.}", q"{모든}", q"{국민은}", q"{신체의}"
		, q"{자유를}", q"{가진다.}", q"{전통문화의}", q"{계승·발전과}", q"{민족문화의}"
		, q"{창달에}", q"{노력하여야}", q"{한다.}", q"{통신·방송의}", q"{시설기준과}"
		, q"{신문의}", q"{기능을}", q"{보장하기}", q"{위하여}", q"{필요한}", q"{사항은}"
		, q"{법률로}", q"{정한다.}", q"{헌법에}", q"{체결·공포된}", q"{조약과}"
		, q"{일반적으로}", q"{승인된}", q"{국제법규는}", q"{국내법과}", q"{같은}"
		, q"{효력을}", q"{다만,}", q"{현행범인인}", q"{경우와}", q"{장기}", q"{3년}"
		, q"{이상의}", q"{형에}", q"{해당하는}", q"{죄를}", q"{범하고}", q"{도피}", q"{또는}"
		, q"{증거인멸의}", q"{염려가}", q"{있을}", q"{때에는}", q"{사후에}", q"{영장을}"
		, q"{청구할}", q"{수}", q"{있다.}", q"{저작자·발명가·과학기술자와}"
		, q"{예술가의}", q"{권리는}", q"{법률로써}", q"{보호한다.}", q"{형사피고인은}"
		, q"{유죄의}", q"{판결이}", q"{확정될}", q"{때까지는}", q"{무죄로}", q"{추정된다.}"
		, q"{행위시의}", q"{법률에}", q"{범죄를}", q"{구성하지}", q"{아니하는}"
		, q"{행위로}", q"{소추되지}", q"{아니하며,}", q"{동일한}", q"{범죄에}", q"{대하여}"
		, q"{거듭}", q"{처벌받지}", q"{아니한다.}", q"{평생교육을}", q"{진흥하여야}"
		, q"{사생활의}", q"{비밀과}", q"{침해받지}", q"{의무교육은}", q"{무상으로}"
		, q"{모성의}", q"{보호를}" ];

		return choice(strs, this.rnd);
	}

	override string personFirstName() {
		const string[] strs =
		[ q"{서연}", q"{민서}", q"{서현}", q"{지우}", q"{서윤}", q"{지민}", q"{수빈}", q"{하은}"
		, q"{예은}", q"{윤서}", q"{민준}", q"{지후}", q"{지훈}", q"{준서}", q"{현우}", q"{예준}"
		, q"{건우}", q"{현준}", q"{민재}", q"{우진}", q"{은주}", q"{서준}", q"{도윤}", q"{시우}"
		, q"{주원}", q"{하준}", q"{지호}", q"{준우}", q"{도현}", q"{선우}", q"{서진}", q"{연우}"
		, q"{유준}", q"{정우}", q"{승우}", q"{승현}", q"{시윤}", q"{준혁}", q"{은우}", q"{지환}"
		, q"{승민}", q"{유찬}", q"{윤우}", q"{민성}", q"{준영}", q"{시후}", q"{진우}", q"{지원}"
		, q"{수현}", q"{재윤}", q"{시현}", q"{동현}", q"{수호}", q"{태윤}", q"{민규}", q"{재원}"
		, q"{한결}", q"{민우}", q"{재민}", q"{은찬}", q"{윤호}", q"{시원}", q"{이준}", q"{민찬}"
		, q"{지안}", q"{시온}", q"{성민}", q"{준호}", q"{승준}", q"{성현}", q"{이안}", q"{현서}"
		, q"{재현}", q"{하율}", q"{지한}", q"{우빈}", q"{태민}", q"{지성}", q"{예성}", q"{민호}"
		, q"{태현}", q"{지율}", q"{민혁}", q"{서우}", q"{성준}", q"{은호}", q"{규민}", q"{정민}"
		, q"{윤성}", q"{윤재}", q"{하람}", q"{하진}", q"{민석}", q"{준수}", q"{은성}", q"{태양}"
		, q"{예찬}", q"{준희}", q"{도훈}", q"{하민}", q"{준성}", q"{지완}", q"{현수}", q"{승원}"
		, q"{강민}", q"{정현}", q"{우주}", q"{태준}", q"{승호}", q"{주호}", q"{성빈}", q"{주안}"
		, q"{도영}", q"{우현}", q"{민수}", q"{건희}", q"{주환}", q"{하랑}", q"{다온}", q"{정훈}"
		, q"{원준}", q"{시율}", q"{시훈}", q"{지오}", q"{민기}", q"{현민}", q"{시완}", q"{경민}"
		, q"{서율}", q"{현성}", q"{승윤}", q"{주영}", q"{동하}", q"{태훈}", q"{민건}", q"{도율}"
		, q"{동건}", q"{재훈}", q"{태영}", q"{호준}", q"{승빈}", q"{가온}", q"{재준}", q"{시환}"
		, q"{세현}", q"{태경}", q"{이현}", q"{도원}", q"{도경}", q"{정후}", q"{현진}", q"{재영}"
		, q"{정원}", q"{서후}", q"{현승}", q"{찬영}", q"{라온}", q"{영준}", q"{상현}", q"{범준}"
		, q"{온유}", q"{승훈}", q"{성윤}", q"{재하}", q"{로운}", q"{주혁}", q"{찬우}", q"{이든}"
		, q"{연준}", q"{하윤}", q"{우성}", q"{동윤}", q"{성훈}", q"{승재}", q"{찬희}", q"{지혁}"
		, q"{건호}", q"{세준}", q"{동욱}", q"{태율}", q"{수민}", q"{태호}", q"{유건}", q"{승찬}"
		, q"{도하}", q"{윤찬}", q"{단우}", q"{태우}", q"{현호}", q"{윤후}", q"{현빈}", q"{시안}"
		, q"{재우}", q"{준석}", q"{지운}", q"{주현}", q"{형준}", q"{연호}", q"{효준}", q"{재혁}"
		, q"{성우}", q"{규빈}", q"{주완}", q"{주한}", q"{동우}", q"{하늘}", q"{수혁}", q"{재희}"
		, q"{시헌}", q"{상윤}", q"{우찬}", q"{유빈}", q"{진호}", q"{유현}", q"{석현}", q"{우영}"
		, q"{준형}", q"{도연}", q"{유진}", q"{서원}", q"{지용}", q"{용준}", q"{규현}", q"{준후}"
		, q"{동준}", q"{은율}", q"{도준}", q"{호진}", q"{강현}", q"{태인}", q"{진혁}", q"{상우}"
		, q"{우준}", q"{은준}", q"{승후}", q"{시호}", q"{지웅}", q"{승환}", q"{은혁}", q"{동훈}"
		, q"{유민}", q"{하온}", q"{성원}", q"{도진}", q"{승주}", q"{영민}", q"{대현}", q"{종현}"
		, q"{세훈}", q"{도겸}", q"{서호}", q"{현석}", q"{신우}", q"{재호}", q"{준현}", q"{원우}"
		, q"{강우}", q"{승유}", q"{상민}", q"{태환}", q"{은수}", q"{선호}", q"{준원}", q"{민결}"
		, q"{정빈}", q"{태오}", q"{동혁}", q"{영우}", q"{아인}", q"{유안}", q"{동규}", q"{진서}"
		, q"{태성}", q"{유성}", q"{혜성}", q"{요한}", q"{성진}", q"{여준}", q"{윤건}", q"{인우}"
		, q"{태건}", q"{주형}", q"{우혁}", q"{희찬}", q"{한율}", q"{하성}", q"{준범}", q"{찬민}"
		, q"{정호}", q"{윤수}", q"{민제}", q"{성호}", q"{인성}", q"{건후}", q"{경준}", q"{희준}"
		, q"{상준}", q"{승혁}", q"{재이}", q"{태원}", q"{준민}", q"{재율}", q"{민승}", q"{태웅}"
		, q"{채민}", q"{한울}", q"{승헌}", q"{재성}", q"{시준}", q"{진영}", q"{환희}", q"{선율}"
		, q"{세윤}", q"{호연}", q"{승기}", q"{세진}", q"{성재}", q"{태하}", q"{주성}", q"{호영}"
		, q"{가람}", q"{다원}", q"{찬율}", q"{현규}", q"{규원}", q"{이한}", q"{연후}", q"{현욱}"
		, q"{준하}", q"{시영}", q"{희성}", q"{정윤}", q"{진욱}", q"{지윤}", q"{창민}", q"{지온}"
		, q"{지섭}", q"{해준}", q"{정환}", q"{건율}", q"{은재}", q"{찬혁}", q"{동연}", q"{유하}"
		, q"{노아}", q"{성찬}", q"{세민}", q"{서빈}", q"{우석}", q"{영훈}", q"{도형}", q"{준기}"
		, q"{윤준}", q"{지석}", q"{로이}", q"{인호}", q"{은후}", q"{명준}", q"{상훈}", q"{기현}"
		, q"{재형}", q"{아준}", q"{해성}", q"{민후}", q"{진성}", q"{주하}", q"{시언}", q"{시형}"
		, q"{상원}", q"{태연}", q"{도건}", q"{재인}", q"{준휘}", q"{동민}", q"{한준}", q"{기범}"
		, q"{다니}", q"{주헌}", q"{재용}", q"{수환}", q"{태규}", q"{선재}", q"{영재}", q"{영진}"
		, q"{주찬}", q"{지수}", q"{동호}", q"{우재}", q"{승범}", q"{동원}", q"{한별}", q"{건영}"
		, q"{승연}", q"{도헌}", q"{한솔}", q"{유담}", q"{예건}", q"{은결}", q"{민율}", q"{민욱}"
		, q"{지헌}", q"{석준}", q"{준모}", q"{현재}", q"{이수}", q"{리안}", q"{재범}", q"{재환}"
		, q"{찬유}", q"{호윤}", q"{해솔}", q"{태희}", q"{건하}", q"{상혁}", q"{성욱}", q"{영찬}"
		, q"{동환}", q"{진원}", q"{하빈}", q"{준환}", q"{재욱}", q"{경훈}", q"{준상}", q"{서하}"
		, q"{연수}", q"{하루}", q"{예담}", q"{수찬}", q"{강준}", q"{도균}", q"{태이}", q"{형우}"
		, q"{승규}", q"{재빈}", q"{종혁}", q"{도운}", q"{근우}", q"{찬호}", q"{윤혁}", q"{유신}"
		, q"{리우}", q"{범수}", q"{동주}", q"{혁준}", q"{찬빈}", q"{한빈}", q"{태빈}", q"{창현}"
		, q"{성주}", q"{지현}", q"{이찬}", q"{유승}", q"{은규}", q"{연재}", q"{희재}", q"{태완}"
		, q"{수영}", q"{병준}", q"{동휘}", q"{세영}", q"{태욱}", q"{의준}", q"{관우}", q"{성환}"
		, q"{재연}", q"{재경}", q"{민영}", q"{윤석}", q"{대한}", q"{선준}", q"{지유}", q"{지욱}"
		, q"{은석}", q"{성연}", q"{경빈}", q"{정욱}", q"{한서}", q"{보겸}", q"{인준}", q"{윤제}"
		, q"{도빈}", q"{준용}", q"{규진}", q"{희원}", q"{주언}", q"{다율}", q"{성하}", q"{영광}"
		, q"{현중}", q"{종윤}", q"{형진}", q"{채훈}", q"{정혁}", q"{태형}", q"{준오}", q"{진수}"
		, q"{승진}", q"{유겸}", q"{찬서}", q"{종민}", q"{영빈}", q"{의찬}", q"{승하}", q"{종우}"
		, q"{유환}", q"{희수}", q"{호성}", q"{태헌}", q"{채우}", q"{재헌}", q"{원재}", q"{석민}"
		, q"{경원}", q"{승리}", q"{강희}", q"{상욱}", q"{민형}", q"{용현}", q"{범진}", q"{민섭}"
		, q"{준이}", q"{서안}", q"{명진}", q"{예훈}", q"{시혁}", q"{상진}", q"{영현}", q"{원석}"
		, q"{승수}", q"{우민}", q"{현태}", q"{도담}", q"{정연}", q"{이삭}", q"{형주}", q"{미르}"
		, q"{대윤}", q"{로하}", q"{정인}", q"{용우}", q"{유호}", q"{태균}", q"{건민}", q"{요셉}"
		, q"{기훈}", q"{영웅}", q"{지홍}", q"{종원}", q"{선후}", q"{동후}", q"{태겸}", q"{종훈}"
		, q"{유한}", q"{제민}", q"{준표}", q"{원빈}", q"{보성}", q"{인서}", q"{동희}", q"{의진}"
		, q"{준규}", q"{리한}", q"{재후}", q"{혜준}", q"{경호}", q"{진현}", q"{현도}", q"{찬솔}"
		, q"{호현}", q"{다현}", q"{동균}", q"{원호}", q"{재웅}", q"{세인}", q"{하겸}", q"{제이}"
		, q"{민겸}", q"{진석}", q"{승욱}", q"{동근}", q"{다훈}", q"{형민}", q"{동영}", q"{대호}"
		, q"{기윤}", q"{지승}", q"{슬우}", q"{해찬}", q"{대영}", q"{강윤}", q"{서한}", q"{동진}"
		, q"{진후}", q"{정진}", q"{윤상}", q"{영서}", q"{민균}", q"{재승}", q"{정준}", q"{세찬}"
		, q"{규태}", q"{민국}", q"{우림}", q"{경환}", q"{우솔}", q"{의현}", q"{대성}", q"{도엽}"
		, q"{근호}", q"{효재}", q"{다민}", q"{효민}", q"{민철}", q"{예승}", q"{준엽}", q"{어진}"
		, q"{승언}", q"{하원}", q"{두현}", q"{지형}", q"{성율}", q"{채운}", q"{진형}", q"{대원}"
		, q"{정수}", q"{시하}", q"{도은}", q"{용진}", q"{주빈}", q"{제현}", q"{태진}", q"{범서}"
		, q"{건형}", q"{해인}", q"{로건}", q"{민교}", q"{혁진}", q"{수인}", q"{슬찬}", q"{영호}"
		, q"{하엘}", q"{정운}", q"{경현}", q"{세환}", q"{태산}", q"{아론}", q"{선민}", q"{준섭}"
		, q"{태후}", q"{은유}", q"{기찬}", q"{승엽}", q"{선규}", q"{다빈}", q"{태주}", q"{기태}"
		, q"{채환}", q"{제윤}", q"{승완}", q"{무진}", q"{정재}", q"{수안}", q"{진규}", q"{시유}"
		, q"{용재}", q"{현웅}", q"{기준}", q"{윤오}", q"{우리}", q"{태은}", q"{수한}", q"{석훈}"
		, q"{석원}", q"{로빈}", q"{다엘}", q"{세원}", q"{채윤}", q"{원진}", q"{태혁}", q"{재아}"
		, q"{규연}", q"{한빛}", q"{필립}", q"{성혁}", q"{재완}", q"{제하}", q"{선빈}", q"{세빈}"
		, q"{윤기}", q"{이레}", q"{인혁}", q"{주훈}", q"{광현}", q"{도혁}", q"{재진}", q"{보민}"
		, q"{진하}", q"{동빈}", q"{병찬}", q"{효성}", q"{성규}", q"{채준}", q"{승효}", q"{시진}"
		, q"{승한}", q"{시운}", q"{원영}", q"{리호}", q"{강빈}", q"{강호}", q"{성운}", q"{유석}"
		, q"{채호}", q"{다겸}", q"{종호}", q"{채원}", q"{이도}", q"{범석}", q"{현종}", q"{성수}"
		, q"{도언}", q"{민하}", q"{석진}", q"{건욱}", q"{상연}", q"{건휘}", q"{한성}", q"{효원}"
		, q"{믿음}", q"{도우}", q"{규호}", q"{선웅}", q"{태유}", q"{강산}", q"{도환}", q"{선유}"
		, q"{형석}", q"{정헌}", q"{현기}", q"{용민}", q"{태수}", q"{하담}", q"{무성}", q"{희승}"
		, q"{리온}", q"{서훈}", q"{용훈}", q"{대훈}", q"{루이}", q"{이환}", q"{동화}", q"{경태}"
		, q"{이담}", q"{강인}", q"{유근}", q"{영후}", q"{찬휘}", q"{래원}", q"{채현}", q"{무빈}"
		, q"{민근}", q"{희우}", q"{하음}", q"{민상}", q"{윤민}", q"{현찬}", q"{경록}", q"{찬웅}"
		, q"{지상}", q"{상호}", q"{서찬}", q"{루다}", q"{하영}", q"{찬형}", q"{효찬}", q"{희윤}"
		, q"{영인}", q"{규성}", q"{예현}", q"{정한}", q"{현율}", q"{지효}", q"{상빈}", q"{채완}"
		, q"{사무}", q"{경찬}", q"{솔민}", q"{서형}", q"{태서}", q"{동율}", q"{재홍}", q"{은기}"
		, q"{승운}", q"{은총}", q"{윤환}", q"{주용}", q"{서환}", q"{용찬}", q"{진환}", q"{세연}"
		, q"{누리}", q"{진율}", q"{원희}", q"{기원}", q"{인후}", q"{태강}", q"{준식}", q"{민권}"
		, q"{세호}", q"{병현}", q"{재서}", q"{윤빈}", q"{인수}", q"{호빈}", q"{세종}", q"{신후}"
		, q"{효빈}", q"{서인}", q"{대연}", q"{우형}", q"{마루}", q"{태용}", q"{주윤}", q"{수완}"
		, q"{보현}", q"{경모}", q"{희건}", q"{영주}", q"{장우}", q"{석우}", q"{강유}", q"{영석}"
		, q"{정안}", q"{동해}", q"{동찬}", q"{휘성}", q"{규범}", q"{영환}", q"{호재}", q"{상헌}"
		, q"{병훈}", q"{현오}", q"{동은}", q"{용하}", q"{광민}", q"{인규}", q"{명재}", q"{인찬}"
		, q"{세웅}", q"{진모}", q"{도한}", q"{성은}", q"{도완}", q"{중현}", q"{대경}", q"{리오}"
		, q"{대환}", q"{해민}", q"{민솔}", q"{민구}", q"{이솔}", q"{윤겸}", q"{다윤}", q"{채율}"
		, q"{인하}", q"{동완}", q"{경수}", q"{수오}", q"{찬욱}", q"{태온}", q"{태운}", q"{리환}"
		, q"{승건}", q"{재석}", q"{재유}", q"{해온}", q"{호민}", q"{용빈}", q"{태한}", q"{연성}"
		, q"{도후}", q"{기주}", q"{다인}", q"{서혁}", q"{예강}", q"{홍준}", q"{지찬}", q"{대희}"
		, q"{강훈}", q"{이건}", q"{현후}", q"{장현}", q"{레오}", q"{호찬}", q"{이서}", q"{주연}"
		, q"{진유}", q"{해원}", q"{동헌}", q"{시찬}", q"{성후}", q"{종하}", q"{근영}", q"{제원}"
		, q"{세혁}", q"{예한}", q"{태랑}", q"{이루}", q"{준명}", q"{무경}", q"{시연}", q"{진웅}"
		, q"{찬규}", q"{은상}", q"{성모}", q"{현동}", q"{원혁}", q"{용호}", q"{동엽}", q"{상후}"
		, q"{규환}", q"{대건}", q"{루하}", q"{재겸}", q"{건웅}", q"{지빈}", q"{해윤}", q"{하운}"
		, q"{호원}", q"{현제}", q"{석빈}", q"{제우}", q"{휘준}", q"{기환}", q"{규담}", q"{경진}"
		, q"{치우}", q"{민환}", q"{세헌}", q"{제훈}", q"{장원}", q"{해담}", q"{서온}", q"{현식}"
		, q"{휘찬}", q"{예환}", q"{동재}", q"{창우}", q"{준아}", q"{해진}", q"{준한}", q"{재휘}"
		, q"{이헌}", q"{준재}", q"{기민}", q"{영욱}", q"{진오}", q"{로한}", q"{윤형}", q"{상율}"
		, q"{강후}", q"{석주}", q"{세율}", q"{하승}", q"{하울}", q"{명훈}", q"{한겸}", q"{창희}"
		, q"{태림}", q"{찬이}", q"{세온}", q"{지범}", q"{성범}", q"{서완}", q"{원찬}", q"{정찬}"
		, q"{민식}", q"{동인}", q"{범규}", q"{영수}", q"{준경}", q"{민용}", q"{유노}", q"{원규}"
		, q"{규하}", q"{창준}", q"{하임}", q"{현섭}", q"{민범}", q"{민종}", q"{도휘}", q"{강율}"
		, q"{현모}", q"{리후}", q"{우경}", q"{규영}", q"{상엽}", q"{은택}", q"{송현}", q"{윤하}"
		, q"{승제}", q"{가을}", q"{다운}", q"{형찬}", q"{혁주}", q"{종찬}", q"{훈민}", q"{윤태}"
		, q"{석영}", q"{윤규}", q"{승휘}", q"{도유}", q"{재찬}", q"{형빈}", q"{찬준}", q"{석호}"
		, q"{우람}", q"{요엘}", q"{태범}", q"{무겸}", q"{희상}", q"{준빈}", q"{은빈}", q"{기성}"
		, q"{다솔}", q"{사랑}", q"{준연}", q"{진명}", q"{세하}", q"{다윗}", q"{형욱}", q"{용주}"
		, q"{종빈}", q"{호수}", q"{윤섭}", q"{진용}", q"{재익}", q"{창빈}", q"{소율}", q"{수원}"
		, q"{지태}", q"{해율}", q"{동운}", q"{재운}", q"{강혁}", q"{권우}", q"{기영}", q"{리원}"
		, q"{창훈}", q"{선욱}", q"{민중}", q"{세한}", q"{재한}", q"{종욱}", q"{윤승}", q"{동한}"
		, q"{성용}", q"{은섭}", q"{라윤}", q"{승희}", q"{종인}", q"{수하}", q"{화랑}", q"{하언}"
		, q"{승표}", q"{소망}", q"{준열}", q"{태휘}", q"{하경}", q"{승용}", q"{유섭}", q"{민강}"
		, q"{래현}", q"{한음}", q"{라현}", q"{한영}", q"{수겸}", q"{석환}", q"{동률}", q"{형규}"
		, q"{예율}", q"{이언}", q"{윤슬}", q"{병우}", q"{연석}", q"{우겸}", q"{수형}", q"{준선}"
		, q"{규찬}", q"{일우}", q"{제영}", q"{제희}", q"{승율}", q"{민주}", q"{태정}", q"{병민}"
		, q"{진헌}", q"{다한}", q"{라엘}", q"{남규}", q"{윤진}", q"{태리}", q"{재상}", q"{정완}"
		, q"{찬수}", q"{진솔}", q"{수연}", q"{운찬}", q"{호경}", q"{주은}", q"{건률}", q"{경윤}"
		, q"{지명}", q"{성제}", q"{로아}", q"{예안}", q"{은오}", q"{준홍}", q"{권율}", q"{지산}"
		, q"{태석}", q"{효승}", q"{병윤}", q"{연서}", q"{유원}", q"{가빈}", q"{보검}", q"{이산}"
		, q"{준승}", q"{건아}", q"{건이}", q"{민진}", q"{용성}", q"{예온}", q"{유상}", q"{범찬}"
		, q"{병호}", q"{명현}", q"{남우}", q"{문성}", q"{동권}", q"{주승}", q"{규혁}", q"{승오}"
		, q"{효석}", q"{병주}", q"{호승}", q"{백호}", q"{유태}", q"{남준}", q"{주엽}", q"{상범}"
		, q"{강찬}", q"{승모}", q"{대겸}", q"{유수}", q"{지언}", q"{원율}", q"{태언}", q"{성균}"
		, q"{승균}", q"{라율}", q"{희민}", q"{예람}", q"{한주}", q"{한선}", q"{무현}", q"{수윤}"
		, q"{정규}", q"{시욱}", q"{찬진}", q"{태섭}", q"{의성}", q"{민현}", q"{승철}", q"{희율}"
		, q"{현택}", q"{유완}", q"{보석}", q"{태승}", q"{별하}", q"{영운}", q"{종환}", q"{이룸}"
		, q"{태근}", q"{지담}", q"{은겸}", q"{찬현}", q"{현채}", q"{해든}", q"{보승}", q"{정율}"
		, q"{찬열}", q"{경률}", q"{찬주}", q"{문수}", q"{은서}", q"{아성}", q"{한민}", q"{현겸}"
		, q"{성일}", q"{신혁}", q"{종연}", q"{바다}", q"{동언}", q"{로윤}", q"{종범}", q"{석찬}"
		, q"{무영}", q"{호석}", q"{루빈}", q"{다호}", q"{아민}", q"{재오}", q"{병욱}", q"{기웅}"
		, q"{하균}", q"{호건}", q"{한희}", q"{형서}", q"{경우}", q"{신유}", q"{은률}", q"{석희}"
		, q"{민유}", q"{에녹}", q"{수범}", q"{유주}", q"{진표}", q"{우승}", q"{보경}", q"{산하}"
		, q"{승태}", q"{담우}", q"{우연}", q"{경서}", q"{주율}", q"{태일}", q"{재은}", q"{수성}"
		, q"{하현}", q"{성헌}", q"{아진}", q"{동수}", q"{현근}", q"{건혁}", q"{준일}", q"{리현}"
		, q"{명규}", q"{아람}", q"{효진}", q"{준태}", q"{한승}", q"{수훈}", q"{채성}", q"{상운}"
		, q"{성태}", q"{부건}", q"{찬용}", q"{하림}", q"{순우}", q"{제준}", q"{병헌}", q"{찬후}"
		, q"{민창}", q"{우정}", q"{명호}", q"{경욱}", q"{이겸}", q"{예하}", q"{이재}", q"{윤도}"
		, q"{현구}", q"{신율}", q"{다올}", q"{루한}", q"{영하}", q"{민관}", q"{정효}", q"{규헌}"
		, q"{나율}", q"{연욱}", q"{기백}", q"{준협}", q"{동유}", q"{형원}", q"{은솔}", q"{수용}"
		, q"{리건}", q"{윤철}", q"{여름}", q"{기호}", q"{상은}", q"{라원}", q"{용수}", q"{철민}"
		, q"{휘서}", q"{재건}", q"{주명}", q"{영원}", q"{모건}", q"{우섭}", q"{성한}", q"{도민}"
		, q"{민오}", q"{근형}", q"{정주}", q"{주열}", q"{태린}", q"{종석}", q"{시열}", q"{예겸}"
		, q"{재정}", q"{윤영}", q"{래오}", q"{채빈}", q"{우인}", q"{지인}", q"{해강}", q"{윤식}"
		, q"{서언}", q"{보근}", q"{준화}", q"{도일}", q"{용희}", q"{건오}", q"{채혁}", q"{희제}"
		, q"{교빈}", q"{부겸}", q"{태관}", q"{명우}", q"{세운}", q"{희태}", q"{시한}", q"{창윤}"
		, q"{희서}", q"{진한}", q"{규한}", q"{대규}", q"{진홍}", q"{기연}", q"{윤결}", q"{윤범}"
		, q"{우제}", q"{율찬}", q"{승화}", q"{병규}", q"{용석}", q"{예호}", q"{정범}", q"{하선}"
		, q"{관호}", q"{명성}", q"{장호}", q"{도아}", q"{기문}", q"{노엘}", q"{태권}", q"{찬슬}"
		, q"{명환}", q"{성엽}", q"{승일}", q"{영윤}", q"{장훈}", q"{창호}", q"{루안}", q"{호림}"
		, q"{준헌}", q"{세중}", q"{문규}", q"{정석}", q"{재선}", q"{건준}", q"{찬윤}", q"{서휘}"
		, q"{주민}", q"{두영}", q"{힘찬}", q"{연승}", q"{정하}", q"{대웅}", q"{효근}", q"{오현}"
		, q"{정희}", q"{용원}", q"{세형}", q"{희철}", q"{한이}", q"{원기}", q"{윤솔}", q"{연오}"
		, q"{종수}", q"{종서}", q"{푸름}", q"{시오}", q"{정모}", q"{동국}", q"{수홍}", q"{유재}"
		, q"{종헌}", q"{승택}", q"{장혁}", q"{다준}", q"{한규}", q"{준겸}", q"{태곤}", q"{동기}"
		, q"{선오}", q"{승안}", q"{영록}", q"{예서}", q"{영제}", q"{선진}", q"{용환}", q"{래온}"
		, q"{성철}", q"{단율}", q"{리암}", q"{현일}", q"{연제}", q"{성근}", q"{혜찬}", q"{병진}"
		, q"{진섭}", q"{남현}", q"{재권}", q"{경석}", q"{정엽}", q"{희범}", q"{수아}", q"{라준}"
		, q"{신욱}", q"{서헌}", q"{윤구}", q"{승열}", q"{해랑}", q"{주석}", q"{명근}", q"{재엽}"
		, q"{원형}", q"{명찬}", q"{명수}", q"{기율}", q"{테오}", q"{유온}", q"{담현}", q"{나단}"
		, q"{준구}", q"{도희}", q"{재강}", q"{하린}", q"{순호}", q"{노을}", q"{우용}", q"{성웅}"
		, q"{찬하}", q"{수헌}", q"{원태}", q"{범주}", q"{종은}", q"{건일}", q"{희도}", q"{예일}"
		, q"{근후}", q"{준의}", q"{명민}", q"{제연}", q"{소명}", q"{은표}", q"{준교}", q"{정웅}"
		, q"{호정}", q"{동관}", q"{우담}", q"{진희}", q"{부경}", q"{이원}", q"{설민}", q"{한진}"
		, q"{가율}", q"{영도}", q"{경재}", q"{현명}", q"{시경}", q"{태선}", q"{치원}", q"{은제}"
		, q"{도규}", q"{용욱}", q"{무준}", q"{현희}", q"{동석}", q"{담율}", q"{정무}", q"{은교}"
		, q"{해승}", q"{소울}", q"{영기}", q"{유비}", q"{현솔}", q"{기우}", q"{원민}", q"{상언}"
		, q"{기쁨}", q"{휘영}", q"{환준}", q"{재효}", q"{다성}", q"{주오}", q"{병건}", q"{예권}"
		, q"{은환}", q"{서로}", q"{남훈}", q"{인환}", q"{상규}", q"{본준}", q"{찬양}", q"{도근}"
		, q"{도욱}", q"{율호}", q"{제호}", q"{두원}", q"{재언}", q"{재명}", q"{범희}", q"{주온}"
		, q"{서범}", q"{석윤}", q"{세범}", q"{우철}", q"{효건}", q"{재근}", q"{백현}", q"{기혁}"
		, q"{혜민}", q"{익현}", q"{덕현}", q"{치훈}", q"{태홍}", q"{현철}", q"{예섭}", q"{선균}"
		, q"{아윤}", q"{은민}", q"{진훈}", q"{철우}", q"{정근}", q"{무건}", q"{영건}", q"{재열}"
		, q"{인석}", q"{홍석}", q"{용화}", q"{현범}", q"{강한}", q"{신영}", q"{채범}", q"{희망}"
		, q"{오성}", q"{명석}", q"{창욱}", q"{영채}", q"{치현}", q"{윤종}", q"{재중}", q"{상희}"
		, q"{대은}", q"{승겸}", q"{연찬}", q"{충현}", q"{현균}", q"{혁민}", q"{승영}", q"{이랑}"
		, q"{예닮}", q"{기량}", q"{광호}", q"{효인}", q"{제아}", q"{인영}", q"{효섭}", q"{경도}"
		, q"{학준}", q"{찬성}", q"{송민}", q"{서유}", q"{원후}", q"{예원}", q"{혁찬}", q"{지음}"
		, q"{민웅}", q"{문기}", q"{규형}", q"{제율}", q"{관영}", q"{인태}", q"{윤채}", q"{상수}"
		, q"{동명}", q"{윤택}", q"{이엘}", q"{영규}", q"{정명}", q"{효우}", q"{기정}", q"{평안}"
		, q"{채헌}", q"{강은}", q"{이완}", q"{정태}", q"{제혁}", q"{종건}", q"{중원}", q"{수종}"
		, q"{한수}", q"{원서}", q"{에이}", q"{정서}", q"{동아}", q"{의겸}", q"{설우}", q"{현담}"
		, q"{서웅}", q"{윤한}", q"{시아}", q"{서영}", q"{종후}", q"{제성}", q"{선혁}", q"{승권}"
		, q"{홍민}", q"{윤현}", q"{연진}", q"{요섭}", q"{세용}", q"{병철}", q"{서겸}", q"{희주}"
		, q"{명원}", q"{성문}", q"{창환}", q"{정섭}", q"{동성}", q"{솔찬}", q"{제형}", q"{유솔}"
		, q"{치호}", q"{선제}", q"{찬홍}", q"{기석}", q"{종진}", q"{다울}", q"{시웅}", q"{승채}"
		, q"{기용}", q"{윤모}", q"{재림}", q"{시은}", q"{태화}", q"{태식}", q"{아율}", q"{강욱}"
		, q"{인재}", q"{재균}", q"{용범}", q"{성휘}", q"{경한}", q"{제후}", q"{바울}", q"{한비}"
		, q"{재백}", q"{가원}", q"{승조}", q"{성록}", q"{주노}", q"{창수}", q"{로원}", q"{하륜}"
		, q"{성완}", q"{산희}", q"{지강}", q"{치윤}", q"{예범}", q"{범기}", q"{율빈}", q"{루오}"
		, q"{종운}", q"{지황}", q"{본우}", q"{상유}", q"{강모}", q"{우열}", q"{예중}", q"{평강}"
		, q"{주상}", q"{영균}", q"{정흠}", q"{석규}", q"{대혁}", q"{규동}", q"{은철}", q"{홍기}"
		, q"{호세}", q"{진구}", q"{성열}", q"{효상}", q"{원일}", q"{여민}", q"{선용}", q"{상명}"
		, q"{상효}", q"{지영}", q"{도협}", q"{용운}", q"{상협}", q"{형근}", q"{현교}", q"{형호}"
		, q"{용규}", q"{이강}", q"{광희}", q"{나엘}", q"{가현}", q"{한슬}", q"{근혁}", q"{병수}"
		, q"{경완}", q"{영범}", q"{택연}", q"{준언}", q"{지건}", q"{우원}", q"{희섭}", q"{유강}"
		, q"{승은}", q"{두연}", q"{반석}", q"{모세}", q"{기완}", q"{경주}", q"{윤권}", q"{리완}"
		, q"{은중}", q"{은산}", q"{규완}", q"{준택}", q"{기욱}", q"{강연}", q"{유범}", q"{호근}"
		, q"{준학}", q"{종화}", q"{율하}", q"{건도}", q"{창혁}", q"{규상}", q"{영성}", q"{용휘}"
		, q"{권희}", q"{요환}", q"{다함}", q"{승학}", q"{무결}", q"{인철}", q"{경인}", q"{부성}"
		, q"{동경}", q"{교현}", q"{새벽}", q"{영태}", q"{루아}", q"{규준}", q"{호율}", q"{용후}"
		, q"{건태}", q"{호용}", q"{성언}", q"{다빛}", q"{백준}", q"{성희}", q"{주경}", q"{관희}"
		, q"{종휘}", q"{은강}", q"{이람}", q"{찬일}", q"{한유}", q"{율희}", q"{찬의}", q"{동섭}"
		, q"{기헌}", q"{휘승}", q"{예후}", q"{호균}", q"{선홍}", q"{지훤}", q"{동일}", q"{현용}"
		, q"{종성}", q"{소원}", q"{유로}", q"{상영}", q"{로현}", q"{윤원}", q"{창진}", q"{이룬}"
		, q"{현상}", q"{교준}", q"{구현}", q"{승구}", q"{문경}", q"{제인}", q"{상화}", q"{윤중}"
		, q"{준효}", q"{준건}", q"{바론}", q"{오윤}", q"{경섭}", q"{무열}", q"{화평}", q"{우창}"
		, q"{나루}", q"{남호}", q"{경율}", q"{산들}", q"{제욱}", q"{예근}", q"{우태}", q"{에릭}"
		, q"{율민}", q"{진휘}", q"{이정}", q"{정음}", q"{준익}", q"{운호}", q"{범근}", q"{중호}"
		, q"{민엽}", q"{효제}", q"{예헌}", q"{강휘}", q"{그루}", q"{승록}", q"{준율}", q"{우신}"
		, q"{현덕}", q"{호인}", q"{건용}", q"{건주}", q"{두호}", q"{택현}", q"{태상}", q"{하주}"
		, q"{규석}", q"{우상}", q"{강건}", q"{천우}", q"{성국}", q"{한얼}", q"{지서}", q"{인욱}"
		, q"{우종}", q"{이선}", q"{현유}", q"{형섭}", q"{상휘}", q"{성오}", q"{도호}", q"{하리}"
		, q"{명서}", q"{도권}", q"{준완}", q"{진운}", q"{현조}", q"{훈석}", q"{명균}", q"{차민}"
		, q"{성식}", q"{찬석}", q"{여찬}", q"{찬울}", q"{종한}", q"{세욱}", q"{환이}", q"{정균}"
		, q"{진민}", q"{앤드}", q"{성인}", q"{은휼}", q"{강원}", q"{현세}", q"{호겸}", q"{은식}"
		, q"{경탁}", q"{해수}", q"{의재}", q"{병관}", q"{하연}", q"{예석}", q"{유인}", q"{효담}"
		, q"{리윤}", q"{병권}", q"{권호}", q"{규선}", q"{동형}", q"{한률}", q"{의연}", q"{재규}"
		, q"{은효}", q"{현탁}", q"{서경}", q"{루민}", q"{휘원}", q"{민태}", q"{건모}", q"{태안}"
		, q"{영일}", q"{현영}", q"{다혁}", q"{성영}", q"{서균}", q"{진건}", q"{율원}", q"{정용}"
		, q"{혁수}", q"{보윤}", q"{환호}", q"{휘윤}", q"{인범}", q"{남윤}", q"{원섭}", q"{대용}"
		, q"{찬승}", q"{효범}", q"{성택}", q"{서담}", q"{호형}", q"{산호}", q"{호선}", q"{의석}"
		, q"{라운}", q"{규인}", q"{형식}", q"{창연}", q"{명섭}", q"{국현}", q"{채진}", q"{예빈}"
		, q"{유철}", q"{준철}", q"{이로}", q"{가민}", q"{호태}", q"{창범}", q"{은범}", q"{호중}"
		, q"{서주}", q"{대헌}", q"{윤근}", q"{인겸}", q"{홍재}", q"{성효}", q"{홍찬}", q"{이진}"
		, q"{솔빈}", q"{건유}", q"{창규}", q"{하솔}", q"{석범}", q"{서욱}", q"{보규}", q"{아현}"
		, q"{승지}", q"{무혁}", q"{동오}", q"{승온}", q"{다건}", q"{진기}", q"{원종}", q"{원겸}"
		, q"{성무}", q"{채하}", q"{희권}", q"{다움}", q"{산이}", q"{혁빈}", q"{환서}", q"{희담}"
		, q"{도열}", q"{광훈}", q"{우수}", q"{지백}", q"{현이}", q"{단유}", q"{휘수}", q"{성유}"
		, q"{라호}", q"{교진}", q"{마음}", q"{나우}", q"{영한}", q"{해일}", q"{민한}", q"{상하}"
		, q"{훈희}", q"{한경}", q"{호범}", q"{용기}", q"{대진}", q"{의담}", q"{예랑}", q"{유영}"
		, q"{명철}", q"{휘재}", q"{찬식}", q"{선엽}", q"{서용}", q"{효신}", q"{혁재}", q"{민세}"
		, q"{해리}", q"{재광}", q"{지솔}", q"{휘건}", q"{의빈}", q"{영헌}", q"{대우}", q"{채영}"
		, q"{한중}", q"{진태}", q"{이연}", q"{두진}", q"{건빈}", q"{제환}", q"{정기}", q"{대휘}"
		, q"{남혁}", q"{경규}", q"{재학}", q"{희온}", q"{성화}", q"{제헌}", q"{영권}", q"{휘상}"
		, q"{래윤}", q"{익준}", q"{성률}", q"{라임}", q"{조이}", q"{기하}", q"{원경}", q"{성권}"
		, q"{규식}", q"{유혁}", q"{태풍}", q"{해건}", q"{주우}", q"{규람}", q"{우린}", q"{재온}"
		, q"{예종}", q"{민선}", q"{유천}", q"{의선}", q"{현무}", q"{유림}", q"{하건}", q"{부민}"
		, q"{다을}", q"{루카}", q"{초원}", q"{재문}", q"{문찬}", q"{대율}", q"{태종}", q"{효중}"
		, q"{용태}", q"{세완}", q"{현선}", q"{태광}", q"{상록}", q"{윤담}", q"{연웅}", q"{도성}"
		, q"{선중}", q"{상인}", q"{한샘}", q"{상재}", q"{경헌}", q"{카이}", q"{상일}", q"{찬오}"
		, q"{성안}", q"{현주}", q"{원식}", q"{의영}", q"{영조}", q"{재화}", q"{광수}", q"{주선}"
		, q"{시엘}", q"{원상}", q"{해밀}", q"{규림}", q"{종율}", q"{차윤}", q"{재관}", q"{관후}"
		, q"{철현}", q"{조슈}", q"{유지}", q"{기담}", q"{의민}", q"{현건}", q"{현창}", q"{로준}"
		, q"{문혁}", q"{교민}", q"{인섭}", q"{규안}", q"{푸른}", q"{대운}", q"{중혁}", q"{동범}"
		, q"{승협}", q"{드림}", q"{류하}", q"{나로}", q"{동효}", q"{무찬}", q"{시울}", q"{동겸}"
		, q"{여훈}", q"{규서}", q"{원중}", q"{여울}", q"{두환}", q"{서홍}", q"{금성}", q"{용건}"
		, q"{경일}", q"{휘민}", q"{리하}", q"{헌재}", q"{상철}", q"{희창}", q"{웅찬}", q"{승관}"
		, q"{의정}", q"{운성}", q"{건규}", q"{용대}", q"{자윤}", q"{지구}", q"{희락}", q"{온율}"
		, q"{상경}", q"{원욱}", q"{경근}", q"{솔우}", q"{휘연}", q"{병재}", q"{찬원}", q"{순혁}"
		, q"{한길}", q"{담희}", q"{예윤}", q"{강석}", q"{철호}", q"{창성}", q"{강률}", q"{문석}"
		, q"{우택}", q"{홍주}", q"{유일}", q"{호산}", q"{명관}", q"{리준}", q"{호열}", q"{동열}"
		, q"{종선}", q"{인기}", q"{치영}", q"{보람}", q"{오름}", q"{찬범}", q"{보담}", q"{순범}"
		, q"{세움}", q"{성광}", q"{서희}", q"{영철}", q"{완희}", q"{성결}", q"{태령}", q"{유엘}"
		, q"{호담}", q"{케빈}", q"{경운}", q"{경택}", q"{호은}", q"{은종}", q"{비오}", q"{성관}"
		, q"{형윤}", q"{한석}", q"{로희}", q"{명건}", q"{승아}", q"{해빈}", q"{영근}", q"{유권}"
		, q"{희강}", q"{은태}", q"{규보}", q"{강이}", q"{형선}", q"{기동}", q"{원용}", q"{나라}"
		, q"{창하}", q"{세주}", q"{이음}", q"{해람}", q"{아빈}", q"{찬기}", q"{제용}", q"{기은}"
		, q"{진교}", q"{류현}", q"{세강}", q"{의윤}", q"{권민}", q"{희웅}", q"{성겸}", q"{형기}"
		, q"{차율}", q"{광재}", q"{광진}", q"{하라}", q"{택민}", q"{대준}", q"{승교}", q"{대욱}"
		, q"{조영}", q"{경덕}", q"{성경}", q"{호철}", q"{희진}", q"{윤동}", q"{견우}", q"{화준}"
		, q"{재안}", q"{대수}", q"{의서}", q"{은현}", q"{세건}", q"{의환}", q"{이우}", q"{근태}"
		, q"{경후}", q"{용선}", q"{경식}", q"{민택}", q"{희영}", q"{정식}", q"{건무}", q"{홍빈}"
		, q"{동협}", q"{순찬}", q"{승보}", q"{제승}", q"{해환}", q"{희석}", q"{라이}", q"{진겸}"
		, q"{민조}", q"{알렉}", q"{두준}", q"{해영}", q"{수진}", q"{라울}", q"{나현}", q"{승인}"
		, q"{태검}", q"{평화}", q"{규언}", q"{창영}", q"{혜강}", q"{휘경}", q"{하유}", q"{대승}"
		, q"{루호}", q"{인선}", q"{벤자}", q"{우식}", q"{상기}", q"{종명}", q"{성보}", q"{창용}"
		, q"{루현}", q"{조은}", q"{성건}", q"{용제}", q"{수웅}", q"{채욱}", q"{조한}", q"{영선}"
		, q"{보건}", q"{은별}", q"{회준}", q"{채웅}", q"{범호}", q"{남기}", q"{수언}", q"{무율}"
		, q"{라일}", q"{준회}", q"{진효}", q"{재국}", q"{근원}", q"{경하}", q"{남경}", q"{진온}"
		, q"{규승}", q"{자운}", q"{진완}", q"{정의}", q"{준안}", q"{제경}", q"{종희}", q"{호제}"
		, q"{원택}", q"{슬옹}", q"{희중}", q"{진선}", q"{건훈}", q"{영승}", q"{헌우}", q"{건효}"
		, q"{정언}", q"{재동}", q"{민훈}", q"{수열}", q"{레이}", q"{우건}", q"{규도}", q"{여원}"
		, q"{규남}", q"{효서}", q"{병서}", q"{로율}", q"{브라}", q"{인율}", q"{대균}", q"{혁규}"
		, q"{남율}", q"{승렬}", q"{유우}", q"{율건}", q"{성배}", q"{윤교}", q"{효영}", q"{민홍}"
		, q"{규은}", q"{대근}", q"{준근}", q"{병국}", q"{영탁}", q"{예완}", q"{수근}", q"{창인}"
		, q"{루리}", q"{이율}", q"{종규}", q"{희훈}", q"{종완}", q"{상건}", q"{현보}", q"{선윤}"
		, q"{대찬}", q"{정택}", q"{휘겸}", q"{관용}", q"{하서}", q"{재일}", q"{자민}", q"{소민}"
		, q"{창석}", q"{윤창}", q"{경무}", q"{조엘}", q"{상오}", q"{희겸}", q"{순민}", q"{이훈}"
		, q"{루원}", q"{준유}", q"{찬종}", q"{대형}", q"{휘진}", q"{기빈}", q"{기수}", q"{경은}"
		, q"{선주}", q"{권준}", q"{승배}", q"{현결}", q"{인교}", q"{채건}", q"{영식}", q"{윤표}"
		, q"{시민}", q"{석재}", q"{효겸}", q"{단후}", q"{동익}", q"{경목}", q"{연태}", q"{나무}"
		, q"{영상}", q"{명기}", q"{정오}", q"{채오}", q"{경오}", q"{이래}", q"{태찬}", q"{예인}"
		, q"{희현}", q"{강운}", q"{주진}", q"{성중}", q"{용은}", q"{바름}", q"{상용}", q"{선하}"
		, q"{선명}", q"{희동}", q"{규온}", q"{유정}", q"{병희}", q"{유창}", q"{택준}", q"{선일}"
		, q"{라함}", q"{다헌}", q"{한호}", q"{진재}", q"{윤학}", q"{영택}", q"{재령}", q"{해우}"
		, q"{재황}", q"{동선}", q"{대엽}", q"{영휘}", q"{찬엽}", q"{레온}", q"{태기}", q"{서강}"
		, q"{찬별}", q"{라훈}", q"{태효}", q"{준세}", q"{나준}", q"{이호}", q"{지광}", q"{설호}"
		, q"{성필}", q"{승필}", q"{은조}", q"{다일}", q"{강일}", q"{근석}", q"{서오}", q"{주엘}"
		, q"{하이}", q"{두희}", q"{우선}", q"{보빈}", q"{창주}", q"{진리}", q"{우중}", q"{성지}"
		, q"{하다}", q"{필준}", q"{훈서}", q"{유래}", q"{라익}", q"{경필}", q"{정제}", q"{권영}"
		, q"{기승}", q"{영대}", q"{나혁}", q"{준보}", q"{원하}", q"{학현}", q"{아서}", q"{장희}"
		, q"{여명}", q"{재신}", q"{래호}", q"{욱진}", q"{경범}", q"{철희}", q"{강진}", q"{유마}"
		, q"{다우}", q"{정휘}", q"{필규}", q"{구윤}", q"{용연}", q"{하을}", q"{치후}", q"{민률}"
		, q"{대인}", q"{운혁}", q"{홍규}", q"{진엽}", q"{병선}", q"{해서}", q"{재덕}", q"{명주}"
		, q"{유은}", q"{선휘}", q"{아랑}", q"{경표}", q"{겨울}", q"{희운}", q"{학윤}", q"{백찬}"
		, q"{병율}", q"{신호}", q"{영완}", q"{유훈}", q"{현윤}", q"{보배}", q"{유종}", q"{용인}"
		, q"{슬기}", q"{찬경}", q"{자현}", q"{중훈}", q"{세담}", q"{경철}", q"{중기}", q"{신원}"
		, q"{근휘}", q"{기명}", q"{성표}", q"{채형}", q"{조셉}", q"{해주}", q"{록희}", q"{찬중}"
		, q"{형록}", q"{수창}", q"{제웅}", q"{미루}", q"{나훈}", q"{건수}", q"{병석}", q"{승종}"
		, q"{천희}", q"{혜승}", q"{리율}", q"{헌준}", q"{종엽}", q"{승비}", q"{범식}", q"{석형}"
		, q"{도흔}", q"{승섭}", q"{명제}", q"{치민}", q"{본율}", q"{정협}", q"{철웅}", q"{예솔}"
		, q"{찬결}", q"{강재}", q"{도안}", q"{남주}", q"{조운}", q"{기륜}", q"{근희}", q"{하일}"
		, q"{현묵}", q"{철환}", q"{준웅}", q"{관형}", q"{현표}", q"{린우}", q"{벼리}", q"{은탁}"
		, q"{영신}", q"{창근}", q"{재담}", q"{저스}", q"{자훈}", q"{진철}", q"{태의}", q"{규희}"
		, q"{기택}", q"{광명}", q"{병후}", q"{선교}", q"{주왕}", q"{초인}", q"{로훈}", q"{진범}"
		, q"{경남}", q"{원정}", q"{준솔}", q"{규섭}", q"{효종}", q"{루희}", q"{노율}", q"{규열}"
		, q"{홍현}", q"{정철}", q"{승석}", q"{민산}", q"{온우}", q"{유택}", q"{아원}", q"{정록}"
		, q"{서백}", q"{택윤}", q"{중민}", q"{근하}", q"{근찬}", q"{용한}", q"{준찬}", q"{성룡}"
		, q"{강륜}", q"{나겸}", q"{라언}", q"{서정}", q"{한웅}", q"{지만}", q"{성온}", q"{두산}"
		, q"{윤강}", q"{성구}", q"{중한}", q"{세창}", q"{늘찬}", q"{문영}", q"{철수}", q"{예우}"
		, q"{경배}", q"{리훈}", q"{성목}", q"{대민}", q"{래인}", q"{태평}", q"{웅빈}", q"{헨리}"
		, q"{이윤}", q"{보준}", q"{로은}", q"{민경}", q"{순율}", q"{현학}", q"{성도}", q"{승룡}"
		, q"{서린}", q"{경대}", q"{형철}", q"{배성}", q"{그린}", q"{영화}", q"{권률}", q"{축복}"
		, q"{단희}", q"{근수}", q"{빛찬}", q"{용혁}", q"{병하}", q"{충민}", q"{소담}", q"{광휘}"
		, q"{진협}", q"{종준}", q"{성익}", q"{인한}", q"{강온}", q"{재의}", q"{유록}", q"{제완}"
		, q"{호서}", q"{환성}", q"{가헌}", q"{재모}", q"{혜율}", q"{의건}", q"{영오}", q"{선기}"
		, q"{휘담}", q"{대유}", q"{충만}", q"{지노}", q"{성렬}", q"{형택}", q"{운서}", q"{장환}"
		, q"{준행}", q"{기선}", q"{성래}", q"{영섭}", q"{대일}", q"{주아}", q"{승익}", q"{송주}"
		, q"{보영}", q"{선형}", q"{기서}", q"{채정}", q"{기남}", q"{홍진}", q"{은엽}", q"{시명}"
		, q"{규정}", q"{원균}", q"{성묵}", q"{보원}", q"{이섭}", q"{현송}", q"{신형}", q"{종오}"
		, q"{순후}", q"{담호}", q"{윤홍}", q"{근민}", q"{태익}", q"{한검}", q"{신웅}", q"{종문}"
		, q"{희용}", q"{태구}", q"{이석}", q"{창휘}", q"{장민}", q"{보권}", q"{유선}", q"{은광}"
		, q"{휼}", q"{희람}", q"{겸희}", q"{의주}", q"{성아}", q"{보명}", q"{회윤}", q"{중우}"
		, q"{래이}", q"{후성}", q"{경연}", q"{부현}", q"{상권}", q"{한열}", q"{희호}", q"{남건}"
		, q"{문호}", q"{인오}", q"{순형}", q"{동렬}", q"{상태}", q"{재필}", q"{광원}", q"{경동}"
		, q"{평온}", q"{신현}", q"{다하}", q"{나온}", q"{성학}", q"{다진}", q"{건화}", q"{시몬}"
		, q"{승곤}", q"{창헌}", q"{형태}", q"{두형}", q"{단하}", q"{창엽}", q"{이룩}", q"{홍윤}"
		, q"{성흠}", q"{아담}", q"{태신}", q"{재륜}", q"{원근}", q"{이빈}", q"{순규}", q"{광준}"
		, q"{세휘}", q"{루니}", q"{하록}", q"{이영}", q"{민설}", q"{새힘}", q"{태중}", q"{세일}"
		, q"{세광}", q"{율기}", q"{정목}", q"{용헌}", q"{이혁}", q"{웅재}", q"{차빈}", q"{오율}"
		, q"{천호}", q"{혜원}", q"{광일}", q"{종태}", q"{영은}", q"{대선}", q"{하석}", q"{송윤}"
		, q"{현률}", q"{은진}", q"{정일}", q"{은한}", q"{승래}", q"{경돈}", q"{윤산}", q"{승서}"
		, q"{연택}", q"{경래}", q"{두경}", q"{효윤}", q"{수일}", q"{민표}", q"{우엽}", q"{지흠}"
		, q"{선모}", q"{우근}", q"{효주}", q"{용근}", q"{정건}", q"{인택}", q"{도명}", q"{회성}"
		, q"{치헌}", q"{광영}", q"{세희}", q"{본혁}", q"{민휘}", q"{에반}", q"{겨운}", q"{구준}"
		, q"{이경}", q"{승명}", q"{보율}", q"{원범}", q"{로휘}", q"{신재}", q"{지휼}", q"{재철}"
		, q"{유단}", q"{한세}", q"{강수}", q"{형훈}", q"{정유}", q"{명선}", q"{하론}", q"{용균}"
		, q"{찬익}", q"{도결}", q"{승형}", q"{아섬}", q"{효식}", q"{인용}", q"{나윤}", q"{진식}"
		, q"{범우}", q"{민곤}", q"{건엽}", q"{경묵}", q"{정겸}", q"{라빈}", q"{승률}", q"{세명}"
		, q"{희종}", q"{리언}", q"{준제}", q"{하훈}", q"{송우}", q"{경선}", q"{세정}", q"{정은}"
		, q"{예주}", q"{우서}", q"{현배}", q"{세은}", q"{송준}", q"{성조}", q"{리찬}", q"{일환}"
		, q"{상목}", q"{율우}", q"{은원}", q"{크리}", q"{완우}", q"{영율}", q"{규화}", q"{차현}"
		, q"{민희}", q"{승회}", q"{유리}", q"{유휘}", q"{이주}", q"{보선}", q"{범모}", q"{겸재}"
		, q"{소중}", q"{욱현}", q"{데이}", q"{찬훈}", q"{주담}", q"{아일}", q"{찬재}", q"{선구}"
		, q"{관율}", q"{근서}", q"{래훈}", q"{학민}", q"{강헌}", q"{대홍}", q"{호동}", q"{관유}"
		, q"{예운}", q"{기열}", q"{보결}", q"{회찬}", q"{성동}", q"{창재}", q"{현목}", q"{정래}"
		, q"{으뜸}", q"{성덕}", q"{래건}", q"{신희}", q"{한들}", q"{중건}", q"{창대}", q"{호령}"
		, q"{상환}", q"{창건}", q"{보훈}", q"{무근}", q"{범성}", q"{창은}", q"{종국}", q"{형건}"
		, q"{경륜}", q"{민광}", q"{슬희}" ];

		return choice(strs, this.rnd);
	}

	override string personLastName() {
		const string[] strs =
		[ q"{김}", q"{이}", q"{박}", q"{최}", q"{정}", q"{강}", q"{조}", q"{윤}", q"{장}", q"{임}", q"{오}"
		, q"{한}", q"{신}", q"{서}", q"{권}", q"{황}", q"{안}", q"{송}", q"{류}", q"{홍}", q"{유}", q"{전}"
		, q"{양}", q"{고}", q"{문}", q"{손}", q"{배}", q"{백}", q"{허}", q"{노}", q"{심}", q"{하}", q"{주}"
		, q"{구}", q"{곽}", q"{성}", q"{차}", q"{우}", q"{진}", q"{민}", q"{나}", q"{지}", q"{엄}", q"{변}"
		, q"{채}", q"{원}", q"{방}", q"{천}", q"{공}", q"{현}", q"{함}", q"{여}", q"{염}", q"{석}", q"{추}"
		, q"{도}", q"{소}", q"{설}", q"{선}", q"{마}", q"{길}", q"{연}", q"{위}", q"{표}", q"{명}", q"{기}"
		, q"{반}", q"{라}", q"{왕}", q"{금}", q"{옥}", q"{육}", q"{인}", q"{맹}", q"{제}", q"{모}", q"{남}"
		, q"{탁}", q"{국}", q"{어}", q"{경}", q"{은}", q"{편}", q"{용}", q"{예}", q"{봉}", q"{사}", q"{부}"
		, q"{가}", q"{복}", q"{태}", q"{목}", q"{형}", q"{피}", q"{두}", q"{감}", q"{호}", q"{음}", q"{빈}"
		, q"{동}", q"{온}", q"{시}", q"{범}", q"{좌}", q"{팽}", q"{승}", q"{간}", q"{상}", q"{갈}", q"{단}"
		, q"{견}", q"{당}" ];

		return choice(strs, this.rnd);
	}

	override string personLastNamePattern() {
		const int rndInt = uniform(0, 1, this.rnd);

		if(rndInt >= 0 && rndInt < 1) {
			return personLastName();
		}

		return "";
	}

	override string personName() {
		const int rndInt = uniform(0, 1, this.rnd);

		if(rndInt >= 0 && rndInt < 1) {
			return personLastName() ~ " " ~ personFirstName();
		}

		return "";
	}

	override string phoneNumberFormats() {
		const string[] strs =
		[ q"{0#-#####-####}", q"{0##-###-####}", q"{0##-####-####}" ];

		return numberBuild(choice(str, this.rnd));
	}

	override string wordAdjective() {
		const string[] strs =
		[ q"{감정적인}", q"{같은}", q"{거대한}", q"{거창한}", q"{건조한}", q"{겁 없는}"
		, q"{격렬한}", q"{결정적인}", q"{경솔한}", q"{경험한}", q"{고귀한}", q"{고급의}"
		, q"{고대의}", q"{공정한}", q"{관심 있는}", q"{굉장한}", q"{교양 있는}"
		, q"{교육받은}", q"{교활한}", q"{구부러진}", q"{굴곡진}", q"{굵은}", q"{권위 있는}"
		, q"{귀여운}", q"{극적인}", q"{금발의}", q"{기민한}", q"{기분 좋은}", q"{기쁜}"
		, q"{기초적인}", q"{깊은}", q"{깨끗한}", q"{깨진}", q"{끊임없는}", q"{끔찍한}"
		, q"{나쁜}", q"{날씬한}", q"{냉담한}", q"{넓은 마음을 가진}", q"{놀라운}"
		, q"{눈부신}", q"{눈이 먼}", q"{늙은}", q"{능숙한}", q"{다른}", q"{단조로운}"
		, q"{단호한}", q"{닫힌}", q"{당황스러운}", q"{대담한}", q"{대량}", q"{더러운}"
		, q"{동굴 같은}", q"{두려운}", q"{뛰어난}", q"{마른}", q"{막대한}", q"{맛있는}"
		, q"{매력적인}", q"{매혹적인}", q"{먹을 수 있는}", q"{먼}", q"{멍든}", q"{메마른}"
		, q"{명확한}", q"{모범적인}", q"{무더운}", q"{무서운}", q"{무심한}", q"{미친}"
		, q"{밀집한}", q"{밝은}", q"{방어}", q"{방음}", q"{버려진}", q"{별개의}", q"{복잡한}"
		, q"{부끄러운}", q"{부담스러운}", q"{부드러운}", q"{부러워하는}", q"{부정한}"
		, q"{부족한}", q"{분명한}", q"{분주한}", q"{불결한}", q"{불룩한}", q"{불안한}"
		, q"{불충실한}", q"{붐비는}", q"{비뚤어진}", q"{비싼}", q"{비어 있는}", q"{비참한}"
		, q"{빠른}", q"{사랑스러운}", q"{사랑하는}", q"{사려 깊은}", q"{사악한}"
		, q"{살아 있는}", q"{상세한}", q"{상쾌한}", q"{생기 있는}", q"{생분해성}"
		, q"{성실한}", q"{세련된}", q"{소름 끼치는}", q"{솔직한}", q"{순수한}", q"{쉬운}"
		, q"{습한}", q"{시원한}", q"{신나는}", q"{신뢰할 수 있는}", q"{싼}", q"{아름다운}"
		, q"{알고 있는}", q"{약간의}", q"{어느}", q"{어두운}", q"{어려운}", q"{어리석은}"
		, q"{어색한}", q"{어설픈}", q"{어지러운}", q"{억센}", q"{엄청난}", q"{역겨운}"
		, q"{열심히}", q"{영리한}", q"{예술적인}", q"{예의 바른}", q"{온화한}", q"{완벽한}"
		, q"{외향적인}", q"{용감한}", q"{용기 있는}", q"{우아한}", q"{원통형}", q"{위독한}"
		, q"{윙윙}", q"{유리한}", q"{유명한}", q"{유익한}", q"{유치한}", q"{윤리적}"
		, q"{음침한}", q"{의기 양양한}", q"{의식하는}", q"{이국적인}", q"{이타적인}"
		, q"{인기 많은}", q"{인정 많은}", q"{일찍}", q"{자신 있는}", q"{잔혹한}"
		, q"{저명한}", q"{저주받은}", q"{적극적인}", q"{적절한}", q"{전통적인}"
		, q"{젊은}", q"{정교한}", q"{정통한}", q"{정확한}", q"{조잡한}", q"{존경하는}"
		, q"{주의 깊은}", q"{죽은}", q"{즐거운}", q"{지루한}", q"{진지한}", q"{짧은}"
		, q"{차가운}", q"{창의적인}", q"{철저한}", q"{추운}", q"{충실한}", q"{치명적인}"
		, q"{친숙한}", q"{친절한}", q"{침착한}", q"{쾌활한}", q"{큰}", q"{타원형의}"
		, q"{탄력 있는}", q"{탈진한}", q"{탐욕스러운}", q"{통통한}", q"{편안한}"
		, q"{품위 있는}", q"{풍부한}", q"{필수적인}", q"{행복한}", q"{향긋한}", q"{혼란스러운}"
		, q"{화난}", q"{화려한}", q"{환상적}", q"{활동적인}", q"{활발한}", q"{훌륭한}"
		, q"{흔한}", q"{흥분한}", q"{희미한}" ];

		return choice(strs, this.rnd);
	}

	override string wordAdverb() {
		const string[] strs =
		[ q"{간단히}", q"{거꾸로}", q"{거만하게}", q"{거의}", q"{고요히}", q"{고의로}"
		, q"{극진히}", q"{깊이}", q"{나중에}", q"{노하여}", q"{다소}", q"{다채롭게}"
		, q"{대담하게}", q"{대체로}", q"{도전적으로}", q"{똑똑하게}", q"{마구}"
		, q"{맹목적으로}", q"{면밀히}", q"{명랑하게}", q"{몹시}", q"{바르게}", q"{바쁘게}"
		, q"{밝게}", q"{분명히}", q"{비정상적으로}", q"{빠르게}", q"{심하게}", q"{아름답게}"
		, q"{어색하게}", q"{언제나}", q"{열심히}", q"{용감하게}", q"{우연히}", q"{유감스럽게}"
		, q"{의심스럽게}", q"{자랑스럽게}", q"{잔인하게}", q"{즐겁게}", q"{지속적으로}"
		, q"{천하게}", q"{쿨하게}", q"{행복하게}", q"{흥미롭게}", q"{희미하게}" ];

		return choice(strs, this.rnd);
	}

	override string wordNoun() {
		const string[] strs =
		[ q"{가입}", q"{경보}", q"{고뇌}", q"{고도}", q"{고문}", q"{골목}", q"{공군}", q"{공기}"
		, q"{공적}", q"{공항}", q"{관리}", q"{관리자}", q"{광고}", q"{구급차}", q"{구실}"
		, q"{나이}", q"{내세}", q"{놀람}", q"{농업}", q"{달력}", q"{대사}", q"{대수학}"
		, q"{대안}", q"{대행사}", q"{도토리}", q"{동맹}", q"{동작}", q"{무정부주의자}"
		, q"{반침}", q"{배당}", q"{배우}", q"{변경}", q"{별명}", q"{보적}", q"{보좌관}"
		, q"{부사}", q"{분석}", q"{분석자}", q"{분위기}", q"{불쌍한}", q"{비행기}", q"{비행사}"
		, q"{비행선}", q"{비행장}", q"{성인}", q"{성취}", q"{성취자}", q"{쇠붙이}", q"{술}"
		, q"{승인}", q"{아드레날린}", q"{아마존}", q"{아몬드}", q"{악어}", q"{안건}"
		, q"{알파벳}", q"{알파카}", q"{애프터셰이브}", q"{앨범}", q"{양}", q"{양자}"
		, q"{어댑터}", q"{에어백}", q"{에이전트}", q"{에일}", q"{여배우}", q"{여진}"
		, q"{여파}", q"{연산}", q"{예의}", q"{오후}", q"{옹호}", q"{외계인}", q"{용돈}"
		, q"{유연}", q"{유추}", q"{음향학}", q"{응집}", q"{이점}", q"{일}", q"{적응}", q"{전능자}"
		, q"{전진}", q"{제단}", q"{조언}", q"{조정}", q"{주소}", q"{즐거움}", q"{지원}"
		, q"{진보}", q"{진술}", q"{진술서}", q"{출현}", q"{침략}", q"{탄약}", q"{탐닉}"
		, q"{특사}", q"{합금}", q"{합의}", q"{항공기}", q"{항공료}", q"{항공편}", q"{해석학}"
		, q"{행동}", q"{형용사}", q"{호박색}", q"{활동}", q"{활동가}", q"{활성화}" ];

		return choice(strs, this.rnd);
	}

}

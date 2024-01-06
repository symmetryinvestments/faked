module faker.faker_en_us;

import std.random;
import std.array;
import std.format;
import std.conv : to;
import std.string : toUpper;
import std.range : iota, take, repeat;
import std.algorithm : map, joiner;
import faker.base;

class Faker_en_us : Faker {
@safe:
	this(int seed) {
		super(seed);
	}

	override string internetDomainSuffix() {
		const string[] strs =
		[ q"{com}", q"{us}", q"{biz}", q"{info}", q"{name}", q"{net}", q"{org}" ];

		return choice(strs, this.rnd);
	}

	override string locationCityPattern() {
		assert(false);
	}

	override string locationCounty() {
		const string[] strs =
		[ q"{Adams County}", q"{Calhoun County}", q"{Carroll County}", q"{Clark County}", q"{Clay County}"
		, q"{Crawford County}", q"{Douglas County}", q"{Fayette County}", q"{Franklin County}"
		, q"{Grant County}", q"{Greene County}", q"{Hamilton County}", q"{Hancock County}", q"{Henry County}"
		, q"{Jackson County}", q"{Jefferson County}", q"{Johnson County}", q"{Lake County}", q"{Lawrence County}"
		, q"{Lee County}", q"{Lincoln County}", q"{Logan County}", q"{Madison County}", q"{Marion County}"
		, q"{Marshall County}", q"{Monroe County}", q"{Montgomery County}", q"{Morgan County}"
		, q"{Perry County}", q"{Pike County}", q"{Polk County}", q"{Scott County}", q"{Union County}"
		, q"{Warren County}", q"{Washington County}", q"{Wayne County}" ];

		return choice(strs, this.rnd);
	}

	override string locationDefaultCountry() {
		const string[] strs =
		[ q"{United States}", q"{United States of America}", q"{USA}" ];

		return choice(strs, this.rnd);
	}

	override string locationStreetName() {
		const string[] strs =
		[ q"{10th Street}", q"{11th Street}", q"{12th Street}", q"{13th Street}", q"{14th Street}"
		, q"{15th Street}", q"{16th Street}", q"{1st Avenue}", q"{1st Street}", q"{2nd Avenue}", q"{2nd Street}"
		, q"{3rd Avenue}", q"{3rd Street}", q"{4th Avenue}", q"{4th Street}", q"{5th Avenue}", q"{5th Street}"
		, q"{6th Avenue}", q"{6th Street}", q"{7th Avenue}", q"{7th Street}", q"{8th Avenue}", q"{8th Street}"
		, q"{9th Street}", q"{A Street}", q"{Adams Avenue}", q"{Adams Street}", q"{Airport Road}"
		, q"{Ash Street}", q"{Atlantic Avenue}", q"{Bay Street}", q"{Bridge Road}", q"{Bridge Street}"
		, q"{Broad Street}", q"{Broadway}", q"{Broadway Avenue}", q"{Broadway Street}", q"{Canal Street}"
		, q"{Cedar Street}", q"{Cemetery Road}", q"{Center Avenue}", q"{Center Road}", q"{Center Street}"
		, q"{Central Avenue}", q"{Central Street}", q"{Charles Street}", q"{Cherry Street}", q"{Chestnut Street}"
		, q"{Church Street}", q"{Clark Street}", q"{Cleveland Street}", q"{Clinton Street}", q"{College Avenue}"
		, q"{College Street}", q"{Columbia Avenue}", q"{Commerce Street}", q"{Commercial Street}"
		, q"{County Line Road}", q"{County Road}", q"{Court Street}", q"{Cross Street}", q"{Cumberland Street}"
		, q"{Davis Street}", q"{Depot Street}", q"{Division Street}", q"{E 10th Street}", q"{E 11th Street}"
		, q"{E 12th Street}", q"{E 14th Street}", q"{E 1st Street}", q"{E 2nd Street}", q"{E 3rd Street}"
		, q"{E 4th Avenue}", q"{E 4th Street}", q"{E 5th Street}", q"{E 6th Avenue}", q"{E 6th Street}"
		, q"{E 7th Street}", q"{E 8th Street}", q"{E 9th Street}", q"{E Bridge Street}", q"{E Broad Street}"
		, q"{E Broadway}", q"{E Broadway Street}", q"{E Cedar Street}", q"{E Center Street}", q"{E Central Avenue}"
		, q"{E Church Street}", q"{E Elm Street}", q"{E Franklin Street}", q"{E Front Street}"
		, q"{E Grand Avenue}", q"{E High Street}", q"{E Jackson Street}", q"{E Jefferson Street}"
		, q"{E Main}", q"{E Main Street}", q"{E Maple Street}", q"{E Market Street}", q"{E North Street}"
		, q"{E Oak Street}", q"{E Park Avenue}", q"{E Pine Street}", q"{E River Road}", q"{E South Street}"
		, q"{E State Street}", q"{E Union Street}", q"{E Walnut Street}", q"{E Washington Avenue}"
		, q"{E Washington Street}", q"{E Water Street}", q"{East Avenue}", q"{East Street}", q"{Elm Street}"
		, q"{Euclid Avenue}", q"{Ferry Road}", q"{First Street}", q"{Forest Avenue}", q"{Franklin Avenue}"
		, q"{Franklin Road}", q"{Franklin Street}", q"{Front Street}", q"{Frontage Road}", q"{Grand Avenue}"
		, q"{Grant Street}", q"{Green Street}", q"{Greenville Road}", q"{Greenwood Road}", q"{Grove Street}"
		, q"{Harrison Avenue}", q"{Harrison Street}", q"{Hickory Street}", q"{High Street}", q"{Highland Avenue}"
		, q"{Hill Street}", q"{Howard Street}", q"{Jackson Avenue}", q"{Jackson Street}", q"{Jefferson Avenue}"
		, q"{Jefferson Street}", q"{Johnson Street}", q"{King Street}", q"{Kings Highway}", q"{Lafayette Street}"
		, q"{Lake Avenue}", q"{Lake Drive}", q"{Lake Road}", q"{Lake Street}", q"{Lawrence Street}"
		, q"{Lee Street}", q"{Liberty Street}", q"{Lincoln Avenue}", q"{Lincoln Highway}", q"{Lincoln Road}"
		, q"{Lincoln Street}", q"{Locust Street}", q"{Madison Avenue}", q"{Madison Street}", q"{Main}"
		, q"{Main Avenue}", q"{Main Road}", q"{Main Street}", q"{Main Street E}", q"{Main Street N}"
		, q"{Main Street S}", q"{Main Street W}", q"{Manchester Road}", q"{Maple Avenue}", q"{Maple Street}"
		, q"{Market Street}", q"{Martin Luther King Boulevard}", q"{Martin Luther King Drive}"
		, q"{Martin Luther King Jr Boulevard}", q"{Memorial Drive}", q"{Middle Street}", q"{Mill Road}"
		, q"{Mill Street}", q"{Monroe Street}", q"{Mulberry Street}", q"{N 1st Street}", q"{N 2nd Street}"
		, q"{N 3rd Street}", q"{N 4th Street}", q"{N 5th Street}", q"{N 6th Street}", q"{N 7th Street}"
		, q"{N 8th Street}", q"{N 9th Street}", q"{N Bridge Street}", q"{N Broad Street}", q"{N Broadway}"
		, q"{N Broadway Street}", q"{N Cedar Street}", q"{N Center Street}", q"{N Central Avenue}"
		, q"{N Chestnut Street}", q"{N Church Street}", q"{N College Street}", q"{N Court Street}"
		, q"{N Division Street}", q"{N East Street}", q"{N Elm Street}", q"{N Franklin Street}"
		, q"{N Front Street}", q"{N Harrison Street}", q"{N High Street}", q"{N Jackson Street}"
		, q"{N Jefferson Street}", q"{N Lincoln Street}", q"{N Locust Street}", q"{N Main}", q"{N Main Avenue}"
		, q"{N Main Street}", q"{N Maple Street}", q"{N Market Street}", q"{N Monroe Street}"
		, q"{N Oak Street}", q"{N Park Street}", q"{N Pearl Street}", q"{N Pine Street}", q"{N Poplar Street}"
		, q"{N Railroad Street}", q"{N State Street}", q"{N Union Street}", q"{N Walnut Street}"
		, q"{N Washington Avenue}", q"{N Washington Street}", q"{N Water Street}", q"{North Avenue}"
		, q"{North Road}", q"{North Street}", q"{Oak Avenue}", q"{Oak Street}", q"{Old State Road}"
		, q"{Park Avenue}", q"{Park Drive}", q"{Park Street}", q"{Pearl Street}", q"{Pennsylvania Avenue}"
		, q"{Pine Street}", q"{Pleasant Street}", q"{Poplar Street}", q"{Post Road}", q"{Prospect Avenue}"
		, q"{Prospect Street}", q"{Railroad Avenue}", q"{Railroad Street}", q"{Ridge Road}", q"{River Road}"
		, q"{River Street}", q"{Riverside Avenue}", q"{Riverside Drive}", q"{S 10th Street}", q"{S 14th Street}"
		, q"{S 1st Avenue}", q"{S 1st Street}", q"{S 2nd Street}", q"{S 3rd Street}", q"{S 4th Street}"
		, q"{S 5th Street}", q"{S 6th Street}", q"{S 7th Street}", q"{S 8th Street}", q"{S 9th Street}"
		, q"{S Bridge Street}", q"{S Broad Street}", q"{S Broadway}", q"{S Broadway Street}", q"{S Center Street}"
		, q"{S Central Avenue}", q"{S Chestnut Street}", q"{S Church Street}", q"{S College Street}"
		, q"{S Division Street}", q"{S East Street}", q"{S Elm Street}", q"{S Franklin Street}"
		, q"{S Front Street}", q"{S Grand Avenue}", q"{S High Street}", q"{S Jackson Street}"
		, q"{S Jefferson Street}", q"{S Lincoln Street}", q"{S Main}", q"{S Main Avenue}", q"{S Main Street}"
		, q"{S Maple Street}", q"{S Market Street}", q"{S Mill Street}", q"{S Monroe Street}"
		, q"{S Oak Street}", q"{S Park Street}", q"{S Pine Street}", q"{S Railroad Street}", q"{S State Street}"
		, q"{S Union Street}", q"{S Walnut Street}", q"{S Washington Avenue}", q"{S Washington Street}"
		, q"{S Water Street}", q"{S West Street}", q"{School Street}", q"{Skyline Drive}", q"{South Avenue}"
		, q"{South Street}", q"{Spring Street}", q"{Springfield Road}", q"{Spruce Street}", q"{State Avenue}"
		, q"{State Line Road}", q"{State Road}", q"{State Street}", q"{Sycamore Street}", q"{Third Street}"
		, q"{Union Avenue}", q"{Union Street}", q"{University Avenue}", q"{University Drive}"
		, q"{Valley Road}", q"{Veterans Memorial Drive}", q"{Veterans Memorial Highway}", q"{Vine Street}"
		, q"{W 10th Street}", q"{W 11th Street}", q"{W 12th Street}", q"{W 14th Street}", q"{W 1st Street}"
		, q"{W 2nd Street}", q"{W 3rd Street}", q"{W 4th Avenue}", q"{W 4th Street}", q"{W 5th Street}"
		, q"{W 6th Avenue}", q"{W 6th Street}", q"{W 7th Street}", q"{W 8th Street}", q"{W 9th Street}"
		, q"{W Bridge Street}", q"{W Broad Street}", q"{W Broadway}", q"{W Broadway Avenue}", q"{W Broadway Street}"
		, q"{W Center Street}", q"{W Central Avenue}", q"{W Chestnut Street}", q"{W Church Street}"
		, q"{W Division Street}", q"{W Elm Street}", q"{W Franklin Street}", q"{W Front Street}"
		, q"{W Grand Avenue}", q"{W High Street}", q"{W Jackson Street}", q"{W Jefferson Street}"
		, q"{W Lake Street}", q"{W Main}", q"{W Main Street}", q"{W Maple Street}", q"{W Market Street}"
		, q"{W Monroe Street}", q"{W North Street}", q"{W Oak Street}", q"{W Park Street}", q"{W Pine Street}"
		, q"{W River Road}", q"{W South Street}", q"{W State Street}", q"{W Union Street}", q"{W Walnut Street}"
		, q"{W Washington Avenue}", q"{W Washington Street}", q"{Walnut Street}", q"{Washington Avenue}"
		, q"{Washington Boulevard}", q"{Washington Road}", q"{Washington Street}", q"{Water Street}"
		, q"{West Avenue}", q"{West Road}", q"{West Street}", q"{Western Avenue}", q"{Willow Street}" ];

		return choice(strs, this.rnd);
	}

	override string locationStreetPattern() {
		assert(false);
	}

}

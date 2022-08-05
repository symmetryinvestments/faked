// generated by fakerjsgenerator
///
module faked.faker_zh_cn;

import faked.base;


///
class Faker_zh_cn : Faker {
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
	string phoneNumberFormats() {
		auto data = [
		"0##-########', '0###-########', '1##########'"
		];
		return this.digitBuild(choice(data, this.rnd));
	}

	///
	override string addressStateAbbr() {
		auto data = [
		"京",
		"沪",
		"津",
		"渝",
		"黑",
		"吉",
		"辽",
		"蒙",
		"冀",
		"新",
		"甘",
		"青",
		"陕",
		"宁",
		"豫",
		"鲁",
		"晋",
		"皖",
		"鄂",
		"湘",
		"苏",
		"川",
		"黔",
		"滇",
		"桂",
		"藏",
		"浙",
		"赣",
		"粤",
		"闽",
		"台",
		"琼",
		"港",
		"澳",
		""
		];
		return choice(data, this.rnd);
	}

	///
	override string addressState() {
		auto data = [
		"北京市",
		"上海市",
		"天津市",
		"重庆市",
		"黑龙江省",
		"吉林省",
		"辽宁省",
		"内蒙古",
		"河北省",
		"新疆",
		"甘肃省",
		"青海省",
		"陕西省",
		"宁夏",
		"河南省",
		"山东省",
		"山西省",
		"安徽省",
		"湖北省",
		"湖南省",
		"江苏省",
		"四川省",
		"贵州省",
		"云南省",
		"广西省",
		"西藏",
		"浙江省",
		"江西省",
		"广东省",
		"福建省",
		"台湾省",
		"海南省",
		"香港",
		"澳门",
		""
		];
		return choice(data, this.rnd);
	}

	///
	override string addressDefaultCountry() {
		auto data = [
		"中国'"
		];
		return choice(data, this.rnd);
	}

	///
	override string addressCitySuffix() {
		auto data = [
		"沙市",
		"京市",
		"宁市",
		"安市",
		"乡县",
		"海市",
		"码市",
		"汉市",
		"阳市",
		"都市",
		"州市",
		"门市",
		"阳市",
		"口市",
		"原市",
		"南市",
		"徽市",
		"林市",
		"头市",
		""
		];
		return choice(data, this.rnd);
	}

	///
	override string addressCityPrefix() {
		auto data = [
		"长",
		"上",
		"南",
		"西",
		"北",
		"诸",
		"宁",
		"珠",
		"武",
		"衡",
		"成",
		"福",
		"厦",
		"贵",
		"吉",
		"海",
		"太",
		"济",
		"安",
		"吉",
		"包",
		""
		];
		return choice(data, this.rnd);
	}

	///
	override string addressBuildingNumber() {
		auto data = [
		"#####', '####', '###', '##', '#'"
		];
		return this.digitBuild(choice(data, this.rnd));
	}

	///
	override string addressPostcode() {
		auto data = [
		"######'"
		];
		return this.digitBuild(choice(data, this.rnd));
	}

	///
	override string addressStreetSuffix() {
		auto data = [
		"巷', '街', '路', '桥', '侬', '旁', '中心', '栋'"
		];
		return choice(data, this.rnd);
	}

	///
	override string nameLastName() {
		auto data = [
		"王",
		"李",
		"张",
		"刘",
		"陈",
		"杨",
		"黄",
		"吴",
		"赵",
		"周",
		"徐",
		"孙",
		"马",
		"朱",
		"胡",
		"林",
		"郭",
		"何",
		"高",
		"罗",
		"郑",
		"梁",
		"谢",
		"宋",
		"唐",
		"许",
		"邓",
		"冯",
		"韩",
		"曹",
		"曾",
		"彭",
		"萧",
		"蔡",
		"潘",
		"田",
		"董",
		"袁",
		"于",
		"余",
		"叶",
		"蒋",
		"杜",
		"苏",
		"魏",
		"程",
		"吕",
		"丁",
		"沈",
		"任",
		"姚",
		"卢",
		"傅",
		"钟",
		"姜",
		"崔",
		"谭",
		"廖",
		"范",
		"汪",
		"陆",
		"金",
		"石",
		"戴",
		"贾",
		"韦",
		"夏",
		"邱",
		"方",
		"侯",
		"邹",
		"熊",
		"孟",
		"秦",
		"白",
		"江",
		"阎",
		"薛",
		"尹",
		"段",
		"雷",
		"黎",
		"史",
		"龙",
		"陶",
		"贺",
		"顾",
		"毛",
		"郝",
		"龚",
		"邵",
		"万",
		"钱",
		"严",
		"赖",
		"覃",
		"洪",
		"武",
		"莫",
		"孔",
		"欧阳",
		"慕容",
		"司马",
		"令狐",
		"仲孙",
		"钟离",
		"长孙",
		"宇文",
		"司徒",
		"鲜于",
		"司空",
		""
		];
		return choice(data, this.rnd);
	}

	///
	override string nameFirstName() {
		auto data = [
		"绍齐",
		"博文",
		"梓晨",
		"胤祥",
		"瑞霖",
		"明哲",
		"天翊",
		"凯瑞",
		"健雄",
		"耀杰",
		"潇然",
		"子涵",
		"越彬",
		"钰轩",
		"智辉",
		"致远",
		"俊驰",
		"雨泽",
		"烨磊",
		"晟睿",
		"文昊",
		"修洁",
		"黎昕",
		"远航",
		"旭尧",
		"鸿涛",
		"伟祺",
		"荣轩",
		"越泽",
		"浩宇",
		"瑾瑜",
		"皓轩",
		"擎苍",
		"擎宇",
		"志泽",
		"子轩",
		"睿渊",
		"弘文",
		"哲瀚",
		"雨泽",
		"楷瑞",
		"建辉",
		"晋鹏",
		"天磊",
		"绍辉",
		"泽洋",
		"鑫磊",
		"鹏煊",
		"昊强",
		"伟宸",
		"博超",
		"君浩",
		"子骞",
		"鹏涛",
		"炎彬",
		"鹤轩",
		"越彬",
		"风华",
		"靖琪",
		"明辉",
		"伟诚",
		"明轩",
		"健柏",
		"修杰",
		"志泽",
		"弘文",
		"峻熙",
		"嘉懿",
		"煜城",
		"懿轩",
		"烨伟",
		"苑博",
		"伟泽",
		"熠彤",
		"鸿煊",
		"博涛",
		"烨霖",
		"烨华",
		"煜祺",
		"智宸",
		"正豪",
		"昊然",
		"明杰",
		"立诚",
		"立轩",
		"立辉",
		"峻熙",
		"弘文",
		"熠彤",
		"鸿煊",
		"烨霖",
		"哲瀚",
		"鑫鹏",
		"昊天",
		"思聪",
		"展鹏",
		"笑愚",
		"志强",
		"炫明",
		"雪松",
		"思源",
		"智渊",
		"思淼",
		"晓啸",
		"天宇",
		"浩然",
		"文轩",
		"鹭洋",
		"振家",
		"乐驹",
		"晓博",
		"文博",
		"昊焱",
		"立果",
		"金鑫",
		"锦程",
		"嘉熙",
		"鹏飞",
		"子默",
		"思远",
		"浩轩",
		"语堂",
		"聪健",
		"明",
		"文",
		"果",
		"思",
		"鹏",
		"驰",
		"涛",
		"琪",
		"浩",
		"航",
		"彬",
		""
		];
		return choice(data, this.rnd);
	}

}

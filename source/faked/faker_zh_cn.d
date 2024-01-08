module faker.faker_zh_cn;

import std.random;
import std.array;
import std.format;
import std.conv : to;
import std.string : toUpper;
import std.range : iota, take, repeat;
import std.algorithm : map, joiner;

import faker.customtypes;
import faker.base;

class Faker_zh_cn : Faker {
@safe:
	this(int seed) {
		super(seed);
	}

	override Airline airlineAirline() {
		final switch(uniform(0, 119, this.rnd)) {
			case 0: return Airline(nullable(q"{爱琴海航空公司}"), nullable(q"{A3}"));
			case 1: return Airline(nullable(q"{俄罗斯航空公司}"), nullable(q"{SU}"));
			case 2: return Airline(nullable(q"{阿根廷航空公司}"), nullable(q"{AR}"));
			case 3: return Airline(nullable(q"{墨西哥国际航空公司}"), nullable(q"{AM}"));
			case 4: return Airline(nullable(q"{阿尔及利亚航空公司}"), nullable(q"{AH}"));
			case 5: return Airline(nullable(q"{阿拉伯航空公司}"), nullable(q"{G9}"));
			case 6: return Airline(nullable(q"{加拿大航空公司}"), nullable(q"{AC}"));
			case 7: return Airline(nullable(q"{中国国际航空公司}"), nullable(q"{CA}"));
			case 8: return Airline(nullable(q"{西班牙欧洲航空公司}"), nullable(q"{UX}"));
			case 9: return Airline(nullable(q"{法航荷航集团}"), nullable(q"{AF}"));
			case 10: return Airline(nullable(q"{印度国际航空公司}"), nullable(q"{AI}"));
			case 11: return Airline(nullable(q"{毛里求斯航空公司}"), nullable(q"{MK}"));
			case 12: return Airline(nullable(q"{新西兰航空公司}"), nullable(q"{NZ}"));
			case 13: return Airline(nullable(q"{新几内亚航空公司}"), nullable(q"{PX}"));
			case 14: return Airline(nullable(q"{塔希提航空公司}"), nullable(q"{VT}"));
			case 15: return Airline(nullable(q"{大溪地航空公司}"), nullable(q"{TN}"));
			case 16: return Airline(nullable(q"{越洋航空公司}"), nullable(q"{TS}"));
			case 17: return Airline(nullable(q"{亚洲航空X公司}"), nullable(q"{D7}"));
			case 18: return Airline(nullable(q"{亚洲航空公司}"), nullable(q"{AK}"));
			case 19: return Airline(nullable(q"{喀里多尼亚国际航空公司}"), nullable(q"{SB}"));
			case 20: return Airline(nullable(q"{阿拉斯加航空公司}"), nullable(q"{AS}"));
			case 21: return Airline(nullable(q"{意大利航空公司}"), nullable(q"{AZ}"));
			case 22: return Airline(nullable(q"{全日空公司}"), nullable(q"{NH}"));
			case 23: return Airline(nullable(q"{忠实航空公司}"), nullable(q"{G4}"));
			case 24: return Airline(nullable(q"{美国航空公司}"), nullable(q"{AA}"));
			case 25: return Airline(nullable(q"{韩亚航空公司}"), nullable(q"{OZ}"));
			case 26: return Airline(nullable(q"{哥伦比亚航空公司}"), nullable(q"{AV}"));
			case 27: return Airline(nullable(q"{巴西蔚蓝航空公司}"), nullable(q"{AD}"));
			case 28: return Airline(nullable(q"{蓝色航空公司}"), nullable(q"{ZF}"));
			case 29: return Airline(nullable(q"{北京首都航空公司}"), nullable(q"{JD}"));
			case 30: return Airline(nullable(q"{玻利维亚航空公司}"), nullable(q"{OB}"));
			case 31: return Airline(nullable(q"{英国航空公司}"), nullable(q"{BA}"));
			case 32: return Airline(nullable(q"{国泰航空公司}"), nullable(q"{CX}"));
			case 33: return Airline(nullable(q"{宿雾太平洋航空公司}"), nullable(q"{5J}"));
			case 34: return Airline(nullable(q"{中华航空公司}"), nullable(q"{CI}"));
			case 35: return Airline(nullable(q"{中国东方航空公司}"), nullable(q"{MU}"));
			case 36: return Airline(nullable(q"{中国南方航空公司}"), nullable(q"{CZ}"));
			case 37: return Airline(nullable(q"{神鹰航空公司}"), nullable(q"{DE}"));
			case 38: return Airline(nullable(q"{巴拿马航空公司}"), nullable(q"{CM}"));
			case 39: return Airline(nullable(q"{达美航空公司}"), nullable(q"{DL}"));
			case 40: return Airline(nullable(q"{易飞航空公司}"), nullable(q"{VE}"));
			case 41: return Airline(nullable(q"{易捷航空公司}"), nullable(q"{U2}"));
			case 42: return Airline(nullable(q"{埃及航空公司}"), nullable(q"{MS}"));
			case 43: return Airline(nullable(q"{以色列艾拉航空公司}"), nullable(q"{LY}"));
			case 44: return Airline(nullable(q"{阿联酋航空公司}"), nullable(q"{EK}"));
			case 45: return Airline(nullable(q"{埃塞俄比亚航空公司}"), nullable(q"{ET}"));
			case 46: return Airline(nullable(q"{阿提哈德航空公司}"), nullable(q"{EY}"));
			case 47: return Airline(nullable(q"{长荣航空公司}"), nullable(q"{BR}"));
			case 48: return Airline(nullable(q"{斐济航空公司}"), nullable(q"{FJ}"));
			case 49: return Airline(nullable(q"{芬兰航空公司}"), nullable(q"{AY}"));
			case 50: return Airline(nullable(q"{迪拜航空公司公司}"), nullable(q"{FZ}"));
			case 51: return Airline(nullable(q"{边疆航空公司}"), nullable(q"{F9}"));
			case 52: return Airline(nullable(q"{印度尼西亚鹰航空公司}"), nullable(q"{GA}"));
			case 53: return Airline(nullable(q"{高尔航空公司}"), nullable(q"{G3}"));
			case 54: return Airline(nullable(q"{海南航空公司}"), nullable(q"{HU}"));
			case 55: return Airline(nullable(q"{夏威夷航空公司}"), nullable(q"{HA}"));
			case 56: return Airline(nullable(q"{靛蓝航空公司}"), nullable(q"{6E}"));
			case 57: return Airline(nullable(q"{日本航空公司}"), nullable(q"{JL}"));
			case 58: return Airline(nullable(q"{济州航空公司}"), nullable(q"{7C}"));
			case 59: return Airline(nullable(q"{捷特二航空公司}"), nullable(q"{LS}"));
			case 60: return Airline(nullable(q"{捷蓝航空公司}"), nullable(q"{B6}"));
			case 61: return Airline(nullable(q"{上海吉祥航空公司}"), nullable(q"{HO}"));
			case 62: return Airline(nullable(q"{肯尼亚航空公司}"), nullable(q"{KQ}"));
			case 63: return Airline(nullable(q"{大韩航空公司}"), nullable(q"{KE}"));
			case 64: return Airline(nullable(q"{酷路拉航空航空公司}"), nullable(q"{MN}"));
			case 65: return Airline(nullable(q"{南美航空公司}"), nullable(q"{LA}"));
			case 66: return Airline(nullable(q"{狮子航空公司}"), nullable(q"{JT}"));
			case 67: return Airline(nullable(q"{波兰航空公司}"), nullable(q"{LO}"));
			case 68: return Airline(nullable(q"{德国汉莎航空公司}"), nullable(q"{LH}"));
			case 69: return Airline(nullable(q"{利比亚阿拉伯航空公司}"), nullable(q"{LN}"));
			case 70: return Airline(nullable(q"{玻利维亚亚马孙航空公司}"), nullable(q"{Z8}"));
			case 71: return Airline(nullable(q"{马来西亚航空公司}"), nullable(q"{MH}"));
			case 72: return Airline(nullable(q"{北风航空公司}"), nullable(q"{N4}"));
			case 73: return Airline(nullable(q"{挪威穿梭航空公司}"), nullable(q"{DY}"));
			case 74: return Airline(nullable(q"{阿曼航空公司}"), nullable(q"{WY}"));
			case 75: return Airline(nullable(q"{巴基斯坦国际航空公司}"), nullable(q"{PK}"));
			case 76: return Airline(nullable(q"{飞马航空公司}"), nullable(q"{PC}"));
			case 77: return Airline(nullable(q"{菲律宾航空公司}"), nullable(q"{PR}"));
			case 78: return Airline(nullable(q"{澳洲航空公司}"), nullable(q"{QF}"));
			case 79: return Airline(nullable(q"{卡塔尔航空公司}"), nullable(q"{QR}"));
			case 80: return Airline(nullable(q"{共和航空公司}"), nullable(q"{YX}"));
			case 81: return Airline(nullable(q"{摩洛哥皇家航空公司}"), nullable(q"{AT}"));
			case 82: return Airline(nullable(q"{瑞安航空公司}"), nullable(q"{FR}"));
			case 83: return Airline(nullable(q"{西伯利亚航空公司}"), nullable(q"{S7}"));
			case 84: return Airline(nullable(q"{北欧航空公司}"), nullable(q"{SK}"));
			case 85: return Airline(nullable(q"{沙特阿拉伯航空公司}"), nullable(q"{SV}"));
			case 86: return Airline(nullable(q"{山东航空公司}"), nullable(q"{SC}"));
			case 87: return Airline(nullable(q"{四川航空公司}"), nullable(q"{3U}"));
			case 88: return Airline(nullable(q"{新加坡航空公司}"), nullable(q"{SQ}"));
			case 89: return Airline(nullable(q"{天空航空公司}"), nullable(q"{H2}"));
			case 90: return Airline(nullable(q"{天西航空公司}"), nullable(q"{OO}"));
			case 91: return Airline(nullable(q"{南非航空公司}"), nullable(q"{SA}"));
			case 92: return Airline(nullable(q"{西南航空公司}"), nullable(q"{WN}"));
			case 93: return Airline(nullable(q"{香料航空公司}"), nullable(q"{SG}"));
			case 94: return Airline(nullable(q"{精神航空公司}"), nullable(q"{NK}"));
			case 95: return Airline(nullable(q"{春秋航空公司}"), nullable(q"{9S}"));
			case 96: return Airline(nullable(q"{斯里兰卡航空公司}"), nullable(q"{UL}"));
			case 97: return Airline(nullable(q"{秘鲁星航空公司}"), nullable(q"{2I}"));
			case 98: return Airline(nullable(q"{太阳城航空公司}"), nullable(q"{SY}"));
			case 99: return Airline(nullable(q"{阳光快运航空}"), nullable(q"{XQ}"));
			case 100: return Airline(nullable(q"{葡萄牙航空公司}"), nullable(q"{TP}"));
			case 101: return Airline(nullable(q"{泰国亚洲航空}"), nullable(q"{FD}"));
			case 102: return Airline(nullable(q"{泰国航空公司}"), nullable(q"{TG}"));
			case 103: return Airline(nullable(q"{途易飞航空}"), nullable(q"{BY}"));
			case 104: return Airline(nullable(q"{突尼斯航空公司}"), nullable(q"{TU}"));
			case 105: return Airline(nullable(q"{土耳其航空公司}"), nullable(q"{TK}"));
			case 106: return Airline(nullable(q"{乌克兰国际航空公司}"), nullable(q"{PS}"));
			case 107: return Airline(nullable(q"{美国联合航空公司}"), nullable(q"{UA}"));
			case 108: return Airline(nullable(q"{乌拉航空公司}"), nullable(q"{U6}"));
			case 109: return Airline(nullable(q"{越南越捷航空公司}"), nullable(q"{VJ}"));
			case 110: return Airline(nullable(q"{越南航空公司}"), nullable(q"{VN}"));
			case 111: return Airline(nullable(q"{维珍航空公司}"), nullable(q"{VS}"));
			case 112: return Airline(nullable(q"{维珍蓝航空公司}"), nullable(q"{VA}"));
			case 113: return Airline(nullable(q"{万岁空中巴士航空公司}"), nullable(q"{VB}"));
			case 114: return Airline(nullable(q"{巴西航空公司}"), nullable(q"{2Z}"));
			case 115: return Airline(nullable(q"{沃拉里斯航空公司}"), nullable(q"{Y4}"));
			case 116: return Airline(nullable(q"{西捷航空公司}"), nullable(q"{WS}"));
			case 117: return Airline(nullable(q"{温戈航空公司}"), nullable(q"{P5}"));
			case 118: return Airline(nullable(q"{维兹航空公司}"), nullable(q"{W6}"));
		}
		return Airline(Nullable!(string).init, Nullable!(string).init);
	}

	override Airplane airlineAirplane() {
		final switch(uniform(0, 155, this.rnd)) {
			case 0: return Airplane(nullable(q"{航天/BAC协和式飞机}"), nullable(q"{SSC}"));
			case 1: return Airplane(nullable(q"{空客A300}"), nullable(q"{AB3}"));
			case 2: return Airplane(nullable(q"{空客A310}"), nullable(q"{310}"));
			case 3: return Airplane(nullable(q"{空客A310-200}"), nullable(q"{312}"));
			case 4: return Airplane(nullable(q"{空客A310-300}"), nullable(q"{313}"));
			case 5: return Airplane(nullable(q"{空客A318}"), nullable(q"{318}"));
			case 6: return Airplane(nullable(q"{空客A319}"), nullable(q"{319}"));
			case 7: return Airplane(nullable(q"{空客A319neo}"), nullable(q"{31N}"));
			case 8: return Airplane(nullable(q"{空客A320}"), nullable(q"{320}"));
			case 9: return Airplane(nullable(q"{空客A320neo}"), nullable(q"{32N}"));
			case 10: return Airplane(nullable(q"{空客A321}"), nullable(q"{321}"));
			case 11: return Airplane(nullable(q"{空客A321neo}"), nullable(q"{32Q}"));
			case 12: return Airplane(nullable(q"{空客A330}"), nullable(q"{330}"));
			case 13: return Airplane(nullable(q"{空客A330-200}"), nullable(q"{332}"));
			case 14: return Airplane(nullable(q"{空客A330-300}"), nullable(q"{333}"));
			case 15: return Airplane(nullable(q"{空客A330-800neo}"), nullable(q"{338}"));
			case 16: return Airplane(nullable(q"{空客A330-900neo}"), nullable(q"{339}"));
			case 17: return Airplane(nullable(q"{空客A340}"), nullable(q"{340}"));
			case 18: return Airplane(nullable(q"{空客A340-200}"), nullable(q"{342}"));
			case 19: return Airplane(nullable(q"{空客A340-300}"), nullable(q"{343}"));
			case 20: return Airplane(nullable(q"{空客A340-500}"), nullable(q"{345}"));
			case 21: return Airplane(nullable(q"{空客A340-600}"), nullable(q"{346}"));
			case 22: return Airplane(nullable(q"{空客A350}"), nullable(q"{350}"));
			case 23: return Airplane(nullable(q"{空客A350-900}"), nullable(q"{359}"));
			case 24: return Airplane(nullable(q"{空客A350-1000}"), nullable(q"{351}"));
			case 25: return Airplane(nullable(q"{空客A380}"), nullable(q"{380}"));
			case 26: return Airplane(nullable(q"{空客A380-800}"), nullable(q"{388}"));
			case 27: return Airplane(nullable(q"{安东诺夫 安-12}"), nullable(q"{ANF}"));
			case 28: return Airplane(nullable(q"{安东诺夫 安-24}"), nullable(q"{AN4}"));
			case 29: return Airplane(nullable(q"{安东诺夫 安-26}"), nullable(q"{A26}"));
			case 30: return Airplane(nullable(q"{安东诺夫 安-28}"), nullable(q"{A28}"));
			case 31: return Airplane(nullable(q"{安东诺夫 安-30}"), nullable(q"{A30}"));
			case 32: return Airplane(nullable(q"{安东诺夫 安-32}"), nullable(q"{A32}"));
			case 33: return Airplane(nullable(q"{安东诺夫 安-72}"), nullable(q"{AN7}"));
			case 34: return Airplane(nullable(q"{安东诺夫 安-124 Ruslan}"), nullable(q"{A4F}"));
			case 35: return Airplane(nullable(q"{安东诺夫 安-140}"), nullable(q"{A40}"));
			case 36: return Airplane(nullable(q"{安东诺夫 安-148}"), nullable(q"{A81}"));
			case 37: return Airplane(nullable(q"{安东诺夫 安-158}"), nullable(q"{A58}"));
			case 38: return Airplane(nullable(q"{安东诺夫 安-225 Mriya}"), nullable(q"{A5F}"));
			case 39: return Airplane(nullable(q"{波音707}"), nullable(q"{703}"));
			case 40: return Airplane(nullable(q"{波音717}"), nullable(q"{717}"));
			case 41: return Airplane(nullable(q"{波音720B}"), nullable(q"{B72}"));
			case 42: return Airplane(nullable(q"{波音727}"), nullable(q"{727}"));
			case 43: return Airplane(nullable(q"{波音727-100}"), nullable(q"{721}"));
			case 44: return Airplane(nullable(q"{波音727-200}"), nullable(q"{722}"));
			case 45: return Airplane(nullable(q"{波音737 MAX 7}"), nullable(q"{7M7}"));
			case 46: return Airplane(nullable(q"{波音737 MAX 8}"), nullable(q"{7M8}"));
			case 47: return Airplane(nullable(q"{波音737 MAX 9}"), nullable(q"{7M9}"));
			case 48: return Airplane(nullable(q"{波音737 MAX 10}"), nullable(q"{7MJ}"));
			case 49: return Airplane(nullable(q"{波音737}"), nullable(q"{737}"));
			case 50: return Airplane(nullable(q"{波音737-100}"), nullable(q"{731}"));
			case 51: return Airplane(nullable(q"{波音737-200}"), nullable(q"{732}"));
			case 52: return Airplane(nullable(q"{波音737-300}"), nullable(q"{733}"));
			case 53: return Airplane(nullable(q"{波音737-400}"), nullable(q"{734}"));
			case 54: return Airplane(nullable(q"{波音737-500}"), nullable(q"{735}"));
			case 55: return Airplane(nullable(q"{波音737-600}"), nullable(q"{736}"));
			case 56: return Airplane(nullable(q"{波音737-700}"), nullable(q"{73G}"));
			case 57: return Airplane(nullable(q"{波音737-800}"), nullable(q"{738}"));
			case 58: return Airplane(nullable(q"{波音737-900}"), nullable(q"{739}"));
			case 59: return Airplane(nullable(q"{波音747}"), nullable(q"{747}"));
			case 60: return Airplane(nullable(q"{波音747-100}"), nullable(q"{741}"));
			case 61: return Airplane(nullable(q"{波音747-200}"), nullable(q"{742}"));
			case 62: return Airplane(nullable(q"{波音747-300}"), nullable(q"{743}"));
			case 63: return Airplane(nullable(q"{波音747-400}"), nullable(q"{744}"));
			case 64: return Airplane(nullable(q"{波音747-400D}"), nullable(q"{74J}"));
			case 65: return Airplane(nullable(q"{波音747-8}"), nullable(q"{748}"));
			case 66: return Airplane(nullable(q"{波音747SP}"), nullable(q"{74L}"));
			case 67: return Airplane(nullable(q"{波音747SR}"), nullable(q"{74R}"));
			case 68: return Airplane(nullable(q"{波音757}"), nullable(q"{757}"));
			case 69: return Airplane(nullable(q"{波音757-200}"), nullable(q"{752}"));
			case 70: return Airplane(nullable(q"{波音757-300}"), nullable(q"{753}"));
			case 71: return Airplane(nullable(q"{波音767}"), nullable(q"{767}"));
			case 72: return Airplane(nullable(q"{波音767-200}"), nullable(q"{762}"));
			case 73: return Airplane(nullable(q"{波音767-300}"), nullable(q"{763}"));
			case 74: return Airplane(nullable(q"{波音767-400}"), nullable(q"{764}"));
			case 75: return Airplane(nullable(q"{波音777}"), nullable(q"{777}"));
			case 76: return Airplane(nullable(q"{波音777-200}"), nullable(q"{772}"));
			case 77: return Airplane(nullable(q"{波音777-200LR}"), nullable(q"{77L}"));
			case 78: return Airplane(nullable(q"{波音777-300}"), nullable(q"{773}"));
			case 79: return Airplane(nullable(q"{波音777-300ER}"), nullable(q"{77W}"));
			case 80: return Airplane(nullable(q"{波音787}"), nullable(q"{787}"));
			case 81: return Airplane(nullable(q"{波音787-8}"), nullable(q"{788}"));
			case 82: return Airplane(nullable(q"{波音787-9}"), nullable(q"{789}"));
			case 83: return Airplane(nullable(q"{波音787-10}"), nullable(q"{781}"));
			case 84: return Airplane(nullable(q"{加拿大挑战者飞机}"), nullable(q"{CCJ}"));
			case 85: return Airplane(nullable(q"{加拿大CL-44}"), nullable(q"{CL4}"));
			case 86: return Airplane(nullable(q"{加拿大支线喷气机100}"), nullable(q"{CR1}"));
			case 87: return Airplane(nullable(q"{加拿大支线喷气机200}"), nullable(q"{CR2}"));
			case 88: return Airplane(nullable(q"{加拿大支线喷气机700}"), nullable(q"{CR7}"));
			case 89: return Airplane(nullable(q"{加拿大支线喷气机705}"), nullable(q"{CRA}"));
			case 90: return Airplane(nullable(q"{加拿大支线喷气机900}"), nullable(q"{CR9}"));
			case 91: return Airplane(nullable(q"{加拿大支线喷气机1000}"), nullable(q"{CRK}"));
			case 92: return Airplane(nullable(q"{加拿大德哈维兰DHC-2 Beaver}"), nullable(q"{DHP}"));
			case 93: return Airplane(nullable(q"{加拿大德哈维兰DHC-2 Turbo-Beaver}"), nullable(q"{DHR}"));
			case 94: return Airplane(nullable(q"{加拿大德哈维兰DHC-3 Otter}"), nullable(q"{DHL}"));
			case 95: return Airplane(nullable(q"{加拿大德哈维兰DHC-4 Caribou}"), nullable(q"{DHC}"));
			case 96: return Airplane(nullable(q"{加拿大德哈维兰DHC-6 Twin Otter}"), nullable(q"{DHT}"));
			case 97: return Airplane(nullable(q"{加拿大德哈维兰DHC-7 Dash 7}"), nullable(q"{DH7}"));
			case 98: return Airplane(nullable(q"{加拿大德哈维兰DHC-8-100 Dash 8 / 8Q}"), nullable(q"{DH1}"));
			case 99: return Airplane(nullable(q"{加拿大德哈维兰DHC-8-200 Dash 8 / 8Q}"), nullable(q"{DH2}"));
			case 100: return Airplane(nullable(q"{加拿大德哈维兰DHC-8-300 Dash 8 / 8Q}"), nullable(q"{DH3}"));
			case 101: return Airplane(nullable(q"{加拿大德哈维兰DHC-8-400 Dash 8Q}"), nullable(q"{DH4}"));
			case 102: return Airplane(nullable(q"{德哈维兰DH.104 Dove}"), nullable(q"{DHD}"));
			case 103: return Airplane(nullable(q"{德哈维兰DH.114 Heron}"), nullable(q"{DHH}"));
			case 104: return Airplane(nullable(q"{道格拉斯DC-3}"), nullable(q"{D3F}"));
			case 105: return Airplane(nullable(q"{道格拉斯DC-6}"), nullable(q"{D6F}"));
			case 106: return Airplane(nullable(q"{道格拉斯DC-8-50}"), nullable(q"{D8T}"));
			case 107: return Airplane(nullable(q"{道格拉斯DC-8-62}"), nullable(q"{D8L}"));
			case 108: return Airplane(nullable(q"{道格拉斯DC-8-72}"), nullable(q"{D8Q}"));
			case 109: return Airplane(nullable(q"{道格拉斯DC-9-10}"), nullable(q"{D91}"));
			case 110: return Airplane(nullable(q"{道格拉斯DC-9-20}"), nullable(q"{D92}"));
			case 111: return Airplane(nullable(q"{道格拉斯DC-9-30}"), nullable(q"{D93}"));
			case 112: return Airplane(nullable(q"{道格拉斯DC-9-40}"), nullable(q"{D94}"));
			case 113: return Airplane(nullable(q"{道格拉斯DC-9-50}"), nullable(q"{D95}"));
			case 114: return Airplane(nullable(q"{道格拉斯DC-10}"), nullable(q"{D10}"));
			case 115: return Airplane(nullable(q"{道格拉斯DC-10-10}"), nullable(q"{D1X}"));
			case 116: return Airplane(nullable(q"{道格拉斯DC-10-30}"), nullable(q"{D1Y}"));
			case 117: return Airplane(nullable(q"{巴西工业航空公司170}"), nullable(q"{E70}"));
			case 118: return Airplane(nullable(q"{巴西工业航空公司175}"), nullable(q"{E75}"));
			case 119: return Airplane(nullable(q"{巴西工业航空公司190}"), nullable(q"{E90}"));
			case 120: return Airplane(nullable(q"{巴西工业航空公司195}"), nullable(q"{E95}"));
			case 121: return Airplane(nullable(q"{巴西工业航空公司E190-E2}"), nullable(q"{290}"));
			case 122: return Airplane(nullable(q"{巴西工业航空公司E195-E2}"), nullable(q"{295}"));
			case 123: return Airplane(nullable(q"{巴西工业航空公司EMB.110 Bandeirante}"), nullable(q"{EMB}"));
			case 124: return Airplane(nullable(q"{巴西工业航空公司EMB.120 Brasilia}"), nullable(q"{EM2}"));
			case 125: return Airplane(nullable(q"{巴西工业航空公司Legacy 600}"), nullable(q"{ER3}"));
			case 126: return Airplane(nullable(q"{巴西工业航空公司Phenom 100}"), nullable(q"{EP1}"));
			case 127: return Airplane(nullable(q"{巴西工业航空公司Phenom 300}"), nullable(q"{EP3}"));
			case 128: return Airplane(nullable(q"{巴西工业航空公司RJ135}"), nullable(q"{ER3}"));
			case 129: return Airplane(nullable(q"{巴西工业航空公司RJ140}"), nullable(q"{ERD}"));
			case 130: return Airplane(nullable(q"{巴西工业航空公司RJ145 Amazon}"), nullable(q"{ER4}"));
			case 131: return Airplane(nullable(q"{伊留申IL18}"), nullable(q"{IL8}"));
			case 132: return Airplane(nullable(q"{伊留申IL62}"), nullable(q"{IL6}"));
			case 133: return Airplane(nullable(q"{伊留申IL76}"), nullable(q"{IL7}"));
			case 134: return Airplane(nullable(q"{伊留申IL86}"), nullable(q"{ILW}"));
			case 135: return Airplane(nullable(q"{伊留申IL96-300}"), nullable(q"{I93}"));
			case 136: return Airplane(nullable(q"{伊留申IL114}"), nullable(q"{I14}"));
			case 137: return Airplane(nullable(q"{洛克希德L-182 / 282 / 382 (L-100) Hercules}"), nullable(q"{LOH}"));
			case 138: return Airplane(nullable(q"{洛克希德L-188 Electra}"), nullable(q"{LOE}"));
			case 139: return Airplane(nullable(q"{洛克希德L-1011 Tristar}"), nullable(q"{L10}"));
			case 140: return Airplane(nullable(q"{洛克希德L-1049 Super Constellation}"), nullable(q"{L49}"));
			case 141: return Airplane(nullable(q"{麦克唐纳道格拉斯MD11}"), nullable(q"{M11}"));
			case 142: return Airplane(nullable(q"{麦克唐纳道格拉斯MD80}"), nullable(q"{M80}"));
			case 143: return Airplane(nullable(q"{麦克唐纳道格拉斯MD81}"), nullable(q"{M81}"));
			case 144: return Airplane(nullable(q"{麦克唐纳道格拉斯MD82}"), nullable(q"{M82}"));
			case 145: return Airplane(nullable(q"{麦克唐纳道格拉斯MD83}"), nullable(q"{M83}"));
			case 146: return Airplane(nullable(q"{麦克唐纳道格拉斯MD87}"), nullable(q"{M87}"));
			case 147: return Airplane(nullable(q"{麦克唐纳道格拉斯MD88}"), nullable(q"{M88}"));
			case 148: return Airplane(nullable(q"{麦克唐纳道格拉斯MD90}"), nullable(q"{M90}"));
			case 149: return Airplane(nullable(q"{苏霍伊超级喷气机100-95}"), nullable(q"{SU9}"));
			case 150: return Airplane(nullable(q"{图波列夫Tu-134}"), nullable(q"{TU3}"));
			case 151: return Airplane(nullable(q"{图波列夫Tu-154}"), nullable(q"{TU5}"));
			case 152: return Airplane(nullable(q"{图波列夫Tu-204}"), nullable(q"{T20}"));
			case 153: return Airplane(nullable(q"{雅科夫列夫Yak-40}"), nullable(q"{YK4}"));
			case 154: return Airplane(nullable(q"{雅科夫列夫Yak-42}"), nullable(q"{YK2}"));
		}
		return Airplane(Nullable!(string).init, Nullable!(string).init);
	}

	override Airport airlineAirport() {
		final switch(uniform(0, 118, this.rnd)) {
			case 0: return Airport(nullable(q"{阿德莱德国际机场}"), nullable(q"{ADL}"));
			case 1: return Airport(nullable(q"{阿道弗·苏亚雷斯马德里-巴拉哈斯机场}"), nullable(q"{MAD}"));
			case 2: return Airport(nullable(q"{豪尔赫纽伯里机场机场}"), nullable(q"{AEP}"));
			case 3: return Airport(nullable(q"{阿方索·佩纳国际机场}"), nullable(q"{CWB}"));
			case 4: return Airport(nullable(q"{阿方索·博尼利亚·阿拉贡国际机场}"), nullable(q"{CLO}"));
			case 5: return Airport(nullable(q"{阿姆斯特丹史基浦机场}"), nullable(q"{AMS}"));
			case 6: return Airport(nullable(q"{阿图罗·梅里诺·贝尼特斯国际机场}"), nullable(q"{SCL}"));
			case 7: return Airport(nullable(q"{奥克兰国际机场}"), nullable(q"{AKL}"));
			case 8: return Airport(nullable(q"{北京首都国际机场}"), nullable(q"{PEK}"));
			case 9: return Airport(nullable(q"{贝伦瓦德坎斯国际机场}"), nullable(q"{BEL}"));
			case 10: return Airport(nullable(q"{贝洛奥里藏特坦克雷多·内维斯国际机场}"), nullable(q"{CNF}"));
			case 11: return Airport(nullable(q"{柏林泰格尔机场}"), nullable(q"{TXL}"));
			case 12: return Airport(nullable(q"{博乐国际机场}"), nullable(q"{ADD}"));
			case 13: return Airport(nullable(q"{巴西利亚儒塞利诺·库比契克总统国际机场}"), nullable(q"{BSB}"));
			case 14: return Airport(nullable(q"{布里斯班国际机场}"), nullable(q"{BNE}"));
			case 15: return Airport(nullable(q"{布里斯班机场}"), nullable(q"{BRU}"));
			case 16: return Airport(nullable(q"{凯恩斯机场}"), nullable(q"{CNS}"));
			case 17: return Airport(nullable(q"{开罗国际机场}"), nullable(q"{CAI}"));
			case 18: return Airport(nullable(q"{堪培拉机场}"), nullable(q"{CBR}"));
			case 19: return Airport(nullable(q"{开普敦国际机场}"), nullable(q"{CPT}"));
			case 20: return Airport(nullable(q"{戴高乐国际机场}"), nullable(q"{CDG}"));
			case 21: return Airport(nullable(q"{夏洛特道格拉斯国际机场}"), nullable(q"{CLT}"));
			case 22: return Airport(nullable(q"{成都双流国际机场}"), nullable(q"{CTU}"));
			case 23: return Airport(nullable(q"{贾特拉帕蒂·希瓦吉国际机场}"), nullable(q"{BOM}"));
			case 24: return Airport(nullable(q"{芝加哥奥黑尔国际机场}"), nullable(q"{ORD}"));
			case 25: return Airport(nullable(q"{重庆江北国际机场}"), nullable(q"{CKG}"));
			case 26: return Airport(nullable(q"{基督城国际机场}"), nullable(q"{CHC}"));
			case 27: return Airport(nullable(q"{哥本哈根卡斯特鲁普机场}"), nullable(q"{CPH}"));
			case 28: return Airport(nullable(q"{达拉斯沃思堡国际机场}"), nullable(q"{DFW}"));
			case 29: return Airport(nullable(q"{丹尼尔·井上国际机场}"), nullable(q"{HNL}"));
			case 30: return Airport(nullable(q"{丹佛国际机场}"), nullable(q"{DEN}"));
			case 31: return Airport(nullable(q"{廊曼国际机场}"), nullable(q"{DMK}"));
			case 32: return Airport(nullable(q"{迪拜国际机场}"), nullable(q"{DXB}"));
			case 33: return Airport(nullable(q"{都柏林机场}"), nullable(q"{DUB}"));
			case 34: return Airport(nullable(q"{杜塞尔多夫机场}"), nullable(q"{DUS}"));
			case 35: return Airport(nullable(q"{埃尔多拉多国际机场}"), nullable(q"{BOG}"));
			case 36: return Airport(nullable(q"{埃莱夫塞里奥斯·韦尼泽洛斯国际机场}"), nullable(q"{ATH}"));
			case 37: return Airport(nullable(q"{法阿国际机场}"), nullable(q"{PPT}"));
			case 38: return Airport(nullable(q"{劳德代尔堡好莱坞国际机场}"), nullable(q"{FLL}"));
			case 39: return Airport(nullable(q"{福塔莱萨平托马丁斯国际机场}"), nullable(q"{FOR}"));
			case 40: return Airport(nullable(q"{美因河畔法兰克福机场}"), nullable(q"{FRA}"));
			case 41: return Airport(nullable(q"{休斯顿机场乔治·布什洲际酒店}"), nullable(q"{IAH}"));
			case 42: return Airport(nullable(q"{黄金海岸机场}"), nullable(q"{OOL}"));
			case 43: return Airport(nullable(q"{瓜鲁柳斯 - 安德烈·佛朗哥·蒙托罗州长国际机场}"), nullable(q"{GRU}"));
			case 44: return Airport(nullable(q"{哈兹菲尔德-杰克逊亚特兰大国际机场}"), nullable(q"{ATL}"));
			case 45: return Airport(nullable(q"{赫尔辛基万塔机场}"), nullable(q"{HEL}"));
			case 46: return Airport(nullable(q"{霍巴特国际机场}"), nullable(q"{HBA}"));
			case 47: return Airport(nullable(q"{香港国际机场}"), nullable(q"{HKG}"));
			case 48: return Airport(nullable(q"{胡阿里·布迈丁机场}"), nullable(q"{ALG}"));
			case 49: return Airport(nullable(q"{赫尔格达国际机场}"), nullable(q"{HRG}"));
			case 50: return Airport(nullable(q"{仁川国际机场}"), nullable(q"{ICN}"));
			case 51: return Airport(nullable(q"{英迪拉·甘地国际机场}"), nullable(q"{DEL}"));
			case 52: return Airport(nullable(q"{伊斯坦布尔机场}"), nullable(q"{IST}"));
			case 53: return Airport(nullable(q"{杰克逊国际机场}"), nullable(q"{POM}"));
			case 54: return Airport(nullable(q"{济州国际机场}"), nullable(q"{CJU}"));
			case 55: return Airport(nullable(q"{约翰肯尼迪国际机场}"), nullable(q"{JFK}"));
			case 56: return Airport(nullable(q"{豪尔赫·查韦斯国际机场}"), nullable(q"{LIM}"));
			case 57: return Airport(nullable(q"{何塞·玛丽亚·科尔多瓦国际机场}"), nullable(q"{MDE}"));
			case 58: return Airport(nullable(q"{何塞普·塔拉德拉斯巴塞罗那埃尔普拉特机场}"), nullable(q"{BCN}"));
			case 59: return Airport(nullable(q"{卡胡卢伊机场}"), nullable(q"{OGG}"));
			case 60: return Airport(nullable(q"{阿卜杜勒阿齐兹国王国际机场}"), nullable(q"{JED}"));
			case 61: return Airport(nullable(q"{吉隆坡国际机场}"), nullable(q"{KUL}"));
			case 62: return Airport(nullable(q"{昆明长水国际机场}"), nullable(q"{KMG}"));
			case 63: return Airport(nullable(q"{拉通图塔国际机场}"), nullable(q"{NOU}"));
			case 64: return Airport(nullable(q"{莱昂纳多达芬奇-菲乌米奇诺机场}"), nullable(q"{FCO}"));
			case 65: return Airport(nullable(q"{伦敦希思罗机场}"), nullable(q"{LHR}"));
			case 66: return Airport(nullable(q"{洛杉矶国际机场}"), nullable(q"{LAX}"));
			case 67: return Airport(nullable(q"{麦卡伦国际机场}"), nullable(q"{LAS}"));
			case 68: return Airport(nullable(q"{墨尔本国际机场}"), nullable(q"{MEL}"));
			case 69: return Airport(nullable(q"{墨西哥城国际机场}"), nullable(q"{MEX}"));
			case 70: return Airport(nullable(q"{迈阿密国际机场}"), nullable(q"{MIA}"));
			case 71: return Airport(nullable(q"{皮斯塔里尼部长国际机场}"), nullable(q"{EZE}"));
			case 72: return Airport(nullable(q"{明尼阿波利斯-圣保罗国际机场/沃尔德-张伯伦机场}"), nullable(q"{MSP}"));
			case 73: return Airport(nullable(q"{穆罕默德五世国际机场}"), nullable(q"{CMN}"));
			case 74: return Airport(nullable(q"{莫斯科多莫杰多沃机场}"), nullable(q"{DME}"));
			case 75: return Airport(nullable(q"{慕尼黑机场}"), nullable(q"{MUC}"));
			case 76: return Airport(nullable(q"{穆尔塔拉穆罕默德国际机场}"), nullable(q"{LOS}"));
			case 77: return Airport(nullable(q"{楠迪国际机场}"), nullable(q"{NAN}"));
			case 78: return Airport(nullable(q"{内罗毕乔莫肯雅塔国际机场}"), nullable(q"{NBO}"));
			case 79: return Airport(nullable(q"{成田国际机场}"), nullable(q"{NRT}"));
			case 80: return Airport(nullable(q"{纽瓦克自由国际机场}"), nullable(q"{EWR}"));
			case 81: return Airport(nullable(q"{尼诺·阿基诺国际机场}"), nullable(q"{MNL}"));
			case 82: return Airport(nullable(q"{努美阿洋红色机场}"), nullable(q"{GEA}"));
			case 83: return Airport(nullable(q"{奥利弗·R·坦博国际机场}"), nullable(q"{JNB}"));
			case 84: return Airport(nullable(q"{奥兰多国际机场}"), nullable(q"{MCO}"));
			case 85: return Airport(nullable(q"{奥斯陆卢夫塔文机场}"), nullable(q"{OSL}"));
			case 86: return Airport(nullable(q"{珀斯机场}"), nullable(q"{PER}"));
			case 87: return Airport(nullable(q"{凤凰城天港国际机场}"), nullable(q"{PHX}"));
			case 88: return Airport(nullable(q"{累西腓瓜拉拉佩斯-吉尔伯托弗雷尔国际机场}"), nullable(q"{REC}"));
			case 89: return Airport(nullable(q"{里约热内卢加利昂国际机场}"), nullable(q"{GIG}"));
			case 90: return Airport(nullable(q"{萨尔加多菲略国际机场}"), nullable(q"{POA}"));
			case 91: return Airport(nullable(q"{萨尔瓦多·德普塔多·路易斯·爱德华多·马加良斯国际机场}"), nullable(q"{SSA}"));
			case 92: return Airport(nullable(q"{旧金山国际机场}"), nullable(q"{SFO}"));
			case 93: return Airport(nullable(q"{桑托斯·杜蒙特机场}"), nullable(q"{SDU}"));
			case 94: return Airport(nullable(q"{圣保罗孔戈尼亚斯机场}"), nullable(q"{CGH}"));
			case 95: return Airport(nullable(q"{西雅图塔科马国际机场}"), nullable(q"{SEA}"));
			case 96: return Airport(nullable(q"{上海虹桥国际机场}"), nullable(q"{SHA}"));
			case 97: return Airport(nullable(q"{上海浦东国际机场}"), nullable(q"{PVG}"));
			case 98: return Airport(nullable(q"{深圳宝安国际机场}"), nullable(q"{SZX}"));
			case 99: return Airport(nullable(q"{谢列梅捷沃国际机场}"), nullable(q"{SVO}"));
			case 100: return Airport(nullable(q"{新加坡樟宜机场}"), nullable(q"{SIN}"));
			case 101: return Airport(nullable(q"{苏加诺-哈达国际机场}"), nullable(q"{CGK}"));
			case 102: return Airport(nullable(q"{斯德哥尔摩-阿兰达机场}"), nullable(q"{ARN}"));
			case 103: return Airport(nullable(q"{素万那普机场}"), nullable(q"{BKK}"));
			case 104: return Airport(nullable(q"{悉尼金斯福德史密斯国际机场}"), nullable(q"{SYD}"));
			case 105: return Airport(nullable(q"{台湾桃园国际机场}"), nullable(q"{TPE}"));
			case 106: return Airport(nullable(q"{新山一国际机场}"), nullable(q"{SGN}"));
			case 107: return Airport(nullable(q"{东京羽田国际机场}"), nullable(q"{HND}"));
			case 108: return Airport(nullable(q"{多伦多皮尔逊国际机场}"), nullable(q"{YYZ}"));
			case 109: return Airport(nullable(q"{突尼斯迦太基国际机场}"), nullable(q"{TUN}"));
			case 110: return Airport(nullable(q"{温哥华国际机场}"), nullable(q"{YVR}"));
			case 111: return Airport(nullable(q"{维也纳国际机场}"), nullable(q"{VIE}"));
			case 112: return Airport(nullable(q"{维拉科波斯国际机场}"), nullable(q"{VCP}"));
			case 113: return Airport(nullable(q"{伏努科沃国际机场}"), nullable(q"{VKO}"));
			case 114: return Airport(nullable(q"{惠灵顿国际机场}"), nullable(q"{WLG}"));
			case 115: return Airport(nullable(q"{西安咸阳国际机场}"), nullable(q"{XIY}"));
			case 116: return Airport(nullable(q"{茹科夫斯基国际机场}"), nullable(q"{ZIA}"));
			case 117: return Airport(nullable(q"{苏黎世机场}"), nullable(q"{ZRH}"));
		}
		return Airport(Nullable!(string).init, Nullable!(string).init);
	}

	override string animalBear() {
		const string[] strs =
		[ q"{大熊猫}", q"{眼镜熊}", q"{太阳熊}", q"{懒熊}", q"{美洲黑熊}", q"{亚洲黑熊}"
		, q"{棕熊}", q"{北极熊}" ];

		return choice(strs, this.rnd);
	}

	override string animalCat() {
		const string[] strs =
		[ q"{中华田园猫}", q"{中国狸花猫}", q"{山东狮子猫}", q"{玄猫}", q"{黑白花猫}"
		, q"{三花猫}", q"{玳瑁猫}", q"{橘猫}", q"{四川简州猫}", q"{中国大白猫}"
		, q"{美国短毛猫}", q"{英国短毛猫}", q"{加菲猫}", q"{波斯猫}", q"{布偶猫}"
		, q"{苏格兰折耳猫}", q"{暹罗猫}", q"{斯芬克斯猫}", q"{德文卷毛猫}"
		, q"{阿比西尼亚猫}" ];

		return choice(strs, this.rnd);
	}

	override string animalDog() {
		const string[] strs =
		[ q"{藏獒}", q"{袖狗}", q"{拉萨狮子犬}", q"{西藏狮子犬}", q"{松狮犬}", q"{中国冠毛犬}"
		, q"{西施犬}", q"{沙皮犬}", q"{八哥犬}", q"{西藏獚}", q"{中华田园犬}", q"{下司犬}"
		, q"{北京犬}", q"{西藏梗}", q"{柴犬}", q"{哈士奇}", q"{德国牧羊犬}", q"{边境牧羊犬}"
		, q"{贵兵犬}", q"{秋田犬}", q"{罗威纳犬}", q"{蝴蝶犬}", q"{英国斗牛犬}"
		, q"{阿富汗猎犬}", q"{萨摩耶犬}", q"{大白熊犬}", q"{比利时牧羊犬}"
		, q"{美国爱斯基摩犬}", q"{彭布罗克威尔士柯基犬}", q"{墨西哥无毛犬}" ];

		return choice(strs, this.rnd);
	}

	override string animalFish() {
		const string[] strs =
		[ q"{草鱼}", q"{鲶鱼}", q"{鳙鱼}", q"{鲤鱼}", q"{金鱼}", q"{胭脂鱼}", q"{中华鲟}"
		, q"{长江白鲟}", q"{新疆大头鱼}", q"{青鱼}", q"{鲫鱼}" ];

		return choice(strs, this.rnd);
	}

	override string animalHorse() {
		const string[] strs =
		[ q"{蒙古马}", q"{伊利马}", q"{三河马}", q"{河曲马}" ];

		return choice(strs, this.rnd);
	}

	override string commerceProductDescription() {
		const string[] strs =
		[ q"{人体工学椅电脑椅家用宿舍学生学习椅舒适久坐办公座椅转椅书桌椅}"
		, q"{鼠标有线USB静音无声家用办公台式笔记本电脑家用商务电竞男}", q"{台式电脑机械硬盘SATA串口320G 500G 1TB 2T 3TB 4TB支持游戏监控}"
		, q"{【2023新品官方旗舰正品】DERE戴睿笔记本电脑二合一新Surface Pro13平板商务办公学生教育超轻薄便携电脑本}", q"{华为笔记本电脑MateBook X Pro 2023 13代酷睿版锐炬显卡14.2英寸3.1K原色触控屏超轻薄旗舰微绒典藏1943}"
		, q"{可选16G【M2芯片】Apple/苹果 MacBook Pro 13英寸笔记本电脑剪辑设计大学生办公专用正品分期24G}", q"{Sony/索尼 XR-55A80EK 55英寸4K超清认知智能OLED安卓摄像头电视}"
		, q"{小米电视 Redmi A43 高清智能电视 43英寸液晶平板电视L43RA-RA}", q"{【新品享壕礼】vivo iQOO Z8x手机官方旗舰店新品上市官网正品学生大电池大内存手机iqoo z7 z7x}"
		, q"{【至高立省300元 赠数据线】vivo Y78新品全面屏游戏拍照学生5G智能手机大电池官方旗舰店老人机Y78+ Y77}" ];

		return choice(strs, this.rnd);
	}

	override string commerceProductNameAdjective() {
		const string[] strs =
		[ q"{小的}", q"{人体工程学的}", q"{电子的}", q"{质朴的}", q"{智能的}", q"{华丽的}"
		, q"{不可思议的}", q"{优雅的}", q"{精彩绝伦的}", q"{实用的}", q"{现代的}"
		, q"{回收的}", q"{圆滑的}", q"{定制的}", q"{贼好用的}", q"{通用的}", q"{手工的}"
		, q"{手工制作的}", q"{东方的}", q"{已许可的}", q"{豪华的}", q"{精致的}"
		, q"{无品牌的}", q"{好吃}" ];

		return choice(strs, this.rnd);
	}

	override string commerceProductNameMaterial() {
		const string[] strs =
		[ q"{钢}", q"{青铜}", q"{木制}", q"{混凝土}", q"{塑料}", q"{棉花}", q"{花岗岩}", q"{橡胶}"
		, q"{金属}", q"{软}", q"{新鲜}", q"{冷冻}" ];

		return choice(strs, this.rnd);
	}

	override string commerceProductNameProduct() {
		const string[] strs =
		[ q"{椅子}", q"{汽车}", q"{电脑}", q"{键盘}", q"{鼠标}", q"{自行车}", q"{球}", q"{手套}"
		, q"{裤子}", q"{衬衫}", q"{桌子}", q"{鞋子}", q"{帽子}", q"{毛巾}", q"{肥皂}", q"{金枪鱼}"
		, q"{鸡肉}", q"{鱼肉}", q"{奶酪}", q"{培根}", q"{披萨}", q"{沙拉}", q"{香肠}", q"{薯条}" ];

		return choice(strs, this.rnd);
	}

	override string companyNamePattern() {
		final switch(uniform(0, 2, this.rnd)) {
			case 0: return locationState() ~ personFirstName() ~ companyCategory() ~ companyType();
			case 1: return locationCity() ~ personFirstName() ~ companyCategory() ~ companyType();
		}
		return "";
	}

	override string databaseColumn() {
		const string[] strs =
		[ q"{标识}", q"{标题}", q"{名称}", q"{邮箱}", q"{手机}", q"{令牌}", q"{组别}", q"{类别}"
		, q"{密码}", q"{注释}", q"{头像}", q"{状态}", q"{创建于}", q"{更新于}" ];

		return choice(strs, this.rnd);
	}

	override string dateMonthWide() {
		const string[] strs =
		[ q"{一月}", q"{二月}", q"{三月}", q"{四月}", q"{五月}", q"{六月}", q"{七月}", q"{八月}"
		, q"{九月}", q"{十月}", q"{十一月}", q"{十二月}" ];

		return choice(strs, this.rnd);
	}

	override string dateMonthAbbr() {
		const string[] strs =
		[ q"{1月}", q"{2月}", q"{3月}", q"{4月}", q"{5月}", q"{6月}", q"{7月}", q"{8月}", q"{9月}", q"{10月}"
		, q"{11月}", q"{12月}" ];

		return choice(strs, this.rnd);
	}

	override string dateWeekdayWide() {
		const string[] strs =
		[ q"{星期天}", q"{星期一}", q"{星期二}", q"{星期三}", q"{星期四}", q"{星期五}"
		, q"{星期六}" ];

		return choice(strs, this.rnd);
	}

	override string dateWeekdayAbbr() {
		const string[] strs =
		[ q"{周日}", q"{周一}", q"{周二}", q"{周三}", q"{周四}", q"{周五}", q"{周六}" ];

		return choice(strs, this.rnd);
	}

	override string financeCreditCardMastercard() {
		const string[] strs =
		[ q"{5[1-5]##-####-####-###L}", q"{2[221-720]-####-####-###L}" ];

		return numberBuild(choice(str, this.rnd));
	}

	override string financeCreditCardVisa() {
		const string[] strs =
		[ q"{4###########L}", q"{4###-####-####-###L}" ];

		return numberBuild(choice(str, this.rnd));
	}

	override string financeAccountType() {
		const string[] strs =
		[ q"{支票}", q"{储蓄}", q"{货币市场}", q"{投资}", q"{房屋贷款}", q"{信用卡}"
		, q"{汽车贷款}", q"{个人贷款}" ];

		return choice(strs, this.rnd);
	}

	override string financeTransactionType() {
		const string[] strs =
		[ q"{存款}", q"{取款}", q"{支付}", q"{开票}" ];

		return choice(strs, this.rnd);
	}

	override string hackerAdjective() {
		const string[] strs =
		[ q"{辅助}", q"{主要}", q"{后端}", q"{开源}", q"{虚拟}", q"{跨平台}", q"{冗余}", q"{在线}"
		, q"{触控}", q"{多字节}", q"{蓝牙}", q"{无线}", q"{全高清}", q"{神经元}", q"{光学}"
		, q"{固态}", q"{移动}" ];

		return choice(strs, this.rnd);
	}

	override string hackerNoun() {
		const string[] strs =
		[ q"{驱动}", q"{协议}", q"{带宽}", q"{面板}", q"{芯片}", q"{程序}", q"{端口}", q"{卡片}"
		, q"{数组}", q"{接口}", q"{系统}", q"{传感器}", q"{防火墙}", q"{硬盘}", q"{像素}"
		, q"{警报}", q"{提要}", q"{监视器}", q"{应用}", q"{发送端}", q"{总线}", q"{电路}"
		, q"{电容器}", q"{矩阵}" ];

		return choice(strs, this.rnd);
	}

	override string hackerPhrase() {
		final switch(uniform(0, 8, this.rnd)) {
			case 0: return "倘若我们" ~ verb() ~ noun() ~ "，我们就可以通过" ~ adjective() ~ abbreviation() ~ noun() ~ "获得" ~ abbreviation() ~ noun() ~ "！";
			case 1: return "我们需要" ~ verb() ~ adjective() ~ abbreviation() ~ noun() ~ "！";
			case 2: return "尝试" ~ verb() ~ abbreviation() ~ noun() ~ "，也许会" ~ verb() ~ adjective() ~ noun() ~ "！";
			case 3: return "在没有" ~ verb() ~ adjective() ~ abbreviation() ~ noun() ~ "的情况下，你不能" ~ verb() ~ noun() ~ "！";
			case 4: return "使用" ~ adjective() ~ abbreviation() ~ noun() ~ "，然后你就能" ~ verb() ~ adjective() ~ noun() ~ "！";
			case 5: return abbreviation() ~ noun() ~ "已关闭，因为" ~ adjective() ~ noun() ~ "所以我们能" ~ verb() ~ abbreviation() ~ noun() ~ "！";
			case 6: return verb() ~ noun() ~ "是无济于事的，我们需要" ~ verb() ~ adjective() ~ abbreviation() ~ noun() ~ "！";
			case 7: return "我将" ~ verb() ~ adjective() ~ abbreviation() ~ noun() ~ "，那是应该" ~ noun() ~ abbreviation() ~ noun() ~ "！";
		}
		return "";
	}

	override string hackerVerb() {
		const string[] strs =
		[ q"{备份}", q"{绕过}", q"{入侵}", q"{覆盖}", q"{压缩}", q"{复制}", q"{导航}", q"{索引}"
		, q"{链接}", q"{生成}", q"{量化}", q"{计算}", q"{合成}", q"{输入}", q"{传输}", q"{编程}"
		, q"{重启}", q"{解析}" ];

		return choice(strs, this.rnd);
	}

	override string internetFreeEmail() {
		const string[] strs =
		[ q"{126.com}", q"{139.com}", q"{163.com}", q"{21cn.com}", q"{gmail.com}", q"{hotmail.com}", q"{qq.com}"
		, q"{sina.com}", q"{sohu.com}", q"{tom.com}", q"{vip.qq.com}", q"{yahoo.cn}", q"{yahoo.com.cn}"
		, q"{yeah.net}", q"{foxmail.com}", q"{outlook.com}" ];

		return choice(strs, this.rnd);
	}

	override string locationBuildingNumber() {
		const string[] strs =
		[ q"{#####}", q"{####}", q"{###}", q"{##}", q"{#}" ];

		return numberBuild(choice(str, this.rnd));
	}

	override string locationCityPattern() {
		final switch(uniform(0, 1, this.rnd)) {
			case 0: return locationCityPrefix() ~ locationCitySuffix();
		}
		return "";
	}

	override string locationCityPrefix() {
		const string[] strs =
		[ q"{上}", q"{包}", q"{北}", q"{南}", q"{厦}", q"{吉}", q"{太}", q"{宁}", q"{安}", q"{成}", q"{武}"
		, q"{济}", q"{海}", q"{珠}", q"{福}", q"{衡}", q"{西}", q"{诸}", q"{贵}", q"{长}" ];

		return choice(strs, this.rnd);
	}

	override string locationCitySuffix() {
		const string[] strs =
		[ q"{乡县}", q"{京市}", q"{南市}", q"{原市}", q"{口市}", q"{头市}", q"{宁市}", q"{安市}"
		, q"{州市}", q"{徽市}", q"{林市}", q"{汉市}", q"{沙市}", q"{海市}", q"{码市}", q"{都市}"
		, q"{门市}", q"{阳市}" ];

		return choice(strs, this.rnd);
	}

	override string locationDefaultCountry() {
		const string[] strs =
		[ q"{中国}" ];

		return choice(strs, this.rnd);
	}

	override string locationPostcode() {
		const string[] strs =
		[ q"{######}" ];

		return numberBuild(choice(str, this.rnd));
	}

	override string locationState() {
		const string[] strs =
		[ q"{北京市}", q"{上海市}", q"{天津市}", q"{重庆市}", q"{黑龙江省}", q"{吉林省}"
		, q"{辽宁省}", q"{内蒙古自治区}", q"{河北省}", q"{新疆维吾尔自治区}"
		, q"{甘肃省}", q"{青海省}", q"{陕西省}", q"{宁夏回族自治区}", q"{河南省}"
		, q"{山东省}", q"{山西省}", q"{安徽省}", q"{湖北省}", q"{湖南省}", q"{江苏省}"
		, q"{四川省}", q"{贵州省}", q"{云南省}", q"{广西壮族自治区}", q"{西藏自治区}"
		, q"{浙江省}", q"{江西省}", q"{广东省}", q"{福建省}", q"{海南省}" ];

		return choice(strs, this.rnd);
	}

	override string locationStateAbbr() {
		const string[] strs =
		[ q"{北京}", q"{上海}", q"{天津}", q"{重庆}", q"{黑龙江}", q"{吉林}", q"{辽阳}", q"{内蒙古}"
		, q"{河北}", q"{新疆}", q"{甘肃}", q"{青海}", q"{陕西}", q"{宁夏}", q"{河南}", q"{山东}"
		, q"{山西}", q"{合肥}", q"{湖北}", q"{湖南}", q"{苏州}", q"{四川}", q"{贵州}", q"{云南}"
		, q"{广西}", q"{西藏}", q"{浙江}", q"{江西}", q"{广东}", q"{福建}", q"{海南}" ];

		return choice(strs, this.rnd);
	}

	override string locationStreetAddress() {
		const LocationStreetAddressEnum[] enums = [ LocationStreetAddressEnum.normal, LocationStreetAddressEnum.full ];
		return locationStreetAddress(choice(enums, this.rnd));
	}

	override string locationStreetAddress(LocationStreetAddressEnum which) {
		final switch(which) {
			case LocationStreetAddressEnum.normal: return locationStreet() ~ locationBuildingNumber() ~ "号";
			case LocationStreetAddressEnum.full: return locationStreet() ~ locationBuildingNumber() ~ "号 " ~ locationSecondaryAddress();
		}
		return "";
	}

	override string locationStreetPattern() {
		final switch(uniform(0, 1, this.rnd)) {
			case 0: return personLastName() ~ locationStreetSuffix();
		}
		return "";
	}

	override string locationStreetSuffix() {
		const string[] strs =
		[ q"{巷}", q"{街}", q"{路}", q"{桥}", q"{侬}", q"{旁}", q"{中心}", q"{栋}" ];

		return choice(strs, this.rnd);
	}

	override string musicGenre() {
		const string[] strs =
		[ q"{摇滚}", q"{流行}", q"{重金属}", q"{电子}", q"{民谣}", q"{世界}", q"{乡村}", q"{爵士}"
		, q"{放克}", q"{灵魂}", q"{嘻哈}", q"{经典}", q"{拉丁}", q"{牙买加}", q"{蓝调}"
		, q"{非音乐}", q"{说唱}", q"{舞台与银幕}" ];

		return choice(strs, this.rnd);
	}

	override string musicSongName() {
		const string[] strs =
		[ q"{白月光与朱砂痣}", q"{孤勇者}", q"{稻香}", q"{起风了}", q"{纪念}", q"{晴天}"
		, q"{兰亭序}", q"{我流泪情绪零碎}", q"{七里香}", q"{花海}", q"{反方向的钟}"
		, q"{一路向北}", q"{蒲公英的约定}", q"{夜曲}", q"{搁浅}", q"{海底}", q"{105度的你}"
		, q"{明明就}", q"{爱在西元前}", q"{我如此相信}", q"{枫}", q"{青花瓷}", q"{半岛铁盒}"
		, q"{说了再见}", q"{暗号}", q"{退后}", q"{最长的电影}", q"{等你下课}", q"{烟花易冷}"
		, q"{不该}", q"{告白气球}", q"{说好不哭}", q"{轨迹}", q"{红尘客栈}", q"{不能说的秘密}"
		, q"{珊瑚海}", q"{给我一首歌的时间}", q"{你听得到}", q"{简单的爱}"
		, q"{龙卷风}", q"{发如雪}", q"{园游会}", q"{听妈妈的话}", q"{夜的第七章}"
		, q"{接口}", q"{手写从前}", q"{安静}", q"{爱情废材}", q"{以父之名}", q"{我不配}"
		, q"{最伟大的作品}", q"{可爱女人}", q"{彩虹}", q"{回到过去}", q"{听悲伤的情话}"
		, q"{把回忆拼好给你}", q"{东风破}", q"{黑色毛衣}", q"{本草纲目}", q"{开不了口}"
		, q"{霍元甲}", q"{爱的飞行日记}", q"{大本钟}", q"{断了的弦}", q"{爷爷泡的茶}"
		, q"{星晴}", q"{甜甜的}", q"{红颜如霜}", q"{粉色海洋}", q"{她的睫毛}", q"{雨下一整晚}"
		, q"{白色风车}", q"{还在流浪}", q"{阳光宅男}", q"{算什么男人}", q"{菊花台}"
		, q"{千里之外}", q"{错过的烟火}", q"{倒影}", q"{听见下雨的声音}", q"{黑色幽默}"
		, q"{默}", q"{不爱我拉倒}", q"{之战之殇}", q"{布拉格广场}", q"{美人鱼}"
		, q"{分裂}", q"{心雨}", q"{米兰的小铁匠}", q"{世界末日}", q"{一点点}", q"{外婆}"
		, q"{画沙}", q"{哪里都是你}", q"{刀马旦}", q"{超人不会飞}", q"{牛仔很忙}"
		, q"{周大侠}", q"{飘移}", q"{忍者}", q"{夏日妄想}", q"{铃芽之旅}", q"{玫瑰少年}"
		, q"{大鱼}", q"{灯火里的中国}", q"{义勇军进行曲}", q"{调查中}", q"{少年}"
		, q"{堕}", q"{在你身边}", q"{悬溺}", q"{奢香夫人}", q"{最好的安排}", q"{夏至未至}"
		, q"{小城夏天}", q"{暖暖}" ];

		return choice(strs, this.rnd);
	}

	override string personBioPart() {
		const string[] strs =
		[ q"{活动家}", q"{艺术家}", q"{作家}", q"{博主}", q"{企业家}", q"{教练}", q"{发明家}"
		, q"{设计师}", q"{开发者}", q"{教育家}", q"{工程师}", q"{企业主}", q"{环保主义者}"
		, q"{电影爱好者}", q"{电影制片人}", q"{美食家}", q"{创始人}", q"{朋友}"
		, q"{玩家}", q"{极客}", q"{毕业生}", q"{创造者}", q"{领导者}", q"{模特}", q"{脑力爱好者}"
		, q"{父母}", q"{爱国者}", q"{个人}", q"{哲学家}", q"{摄影爱好者}", q"{公众演说家}"
		, q"{科学家}", q"{梦想家}", q"{学生}", q"{老师}", q"{旅行家}", q"{退伍军人}"
		, q"{作者}" ];

		return choice(strs, this.rnd);
	}

	override string personBioPattern() {
		final switch(uniform(0, 8, this.rnd)) {
			case 0: return personBioPart();
			case 1: return personBioPart() ~ "，" ~ personBioPart();
			case 2: return personBioPart() ~ "，" ~ personBioPart() ~ "，" ~ personBioPart();
			case 3: return personBioPart() ~ "，" ~ personBioPart() ~ "，" ~ personBioPart() ~ internetEmoji();
			case 4: return wordNoun() ~ personBioSupporter();
			case 5: return wordNoun() ~ personBioSupporter() ~ internetEmoji();
			case 6: return wordNoun() ~ personBioSupporter() ~ "，" ~ personBioPart();
			case 7: return wordNoun() ~ personBioSupporter() ~ "，" ~ personBioPart() ~ internetEmoji();
		}
		return "";
	}

	override string personBioSupporter() {
		const string[] strs =
		[ q"{倡导者}", q"{贡献者}", q"{发烧友}", q"{粉丝}", q"{狂热者}", q"{爱好者}"
		, q"{支持者}" ];

		return choice(strs, this.rnd);
	}

	override string personFemaleFirstName() {
		const string[] strs =
		[ q"{秀英}", q"{秀兰}", q"{秀珍}", q"{桂英}", q"{桂兰}", q"{玉兰}", q"{玉珍}", q"{玉英}"
		, q"{玉梅}", q"{凤英}", q"{兰英}", q"{婷婷}", q"{国英}", q"{国珍}", q"{国华}", q"{国芳}"
		, q"{国兰}", q"{国秀}", q"{国琴}", q"{国荣}", q"{国香}", q"{英}", q"{萍}", q"{蒙}", q"{红}"
		, q"{丽}", q"{敏}", q"{芳}", q"{静}", q"{霞}", q"{燕}", q"{娟}", q"{艳}", q"{娜}", q"{丹}", q"{玲}"
		, q"{婷}", q"{珈}", q"{雪}", q"{倩}", q"{悦}", q"{颖}", q"{洁}", q"{慧}", q"{开慧}", q"{丽芬}"
		, q"{丽芳}", q"{丽萍}", q"{若汐}", q"{一诺}", q"{艺涵}", q"{依诺}", q"{梓涵}", q"{梓晨}"
		, q"{梓馨}", q"{梓萱}", q"{梓妍}", q"{梓玥}", q"{苡沫}", q"{雨桐}", q"{欣怡}", q"{语桐}"
		, q"{语汐}", q"{雨涵}", q"{雨欣}", q"{诗雨}", q"{婷方}", q"{美方}", q"{雅婷}", q"{紫林}"
		, q"{天娇}", q"{万佳}", q"{子欣}", q"{海燕}", q"{乙萍}", q"{安琪}", q"{馨羽}", q"{馥君}"
		, q"{思佳}", q"{雅鑫}", q"{静怡}", q"{晨阳}", q"{佳琪}", q"{雯静}", q"{榕融}" ];

		return choice(strs, this.rnd);
	}

	override string personFirstName() {
		const string[] strs =
		[ q"{乐驹}", q"{伟宸}", q"{伟泽}", q"{伟祺}", q"{伟诚}", q"{俊驰}", q"{修杰}", q"{修洁}"
		, q"{健柏}", q"{健雄}", q"{凯瑞}", q"{博文}", q"{博涛}", q"{博超}", q"{君浩}", q"{哲瀚}"
		, q"{嘉懿}", q"{嘉熙}", q"{天宇}", q"{天磊}", q"{天翊}", q"{子涵}", q"{子轩}", q"{子骞}"
		, q"{子默}", q"{展鹏}", q"{峻熙}", q"{建辉}", q"{弘文}", q"{彬}", q"{志强}", q"{志泽}"
		, q"{思}", q"{思淼}", q"{思源}", q"{思聪}", q"{思远}", q"{懿轩}", q"{振家}", q"{擎宇}"
		, q"{擎苍}", q"{文}", q"{文博}", q"{文昊}", q"{文轩}", q"{旭尧}", q"{昊天}", q"{昊强}"
		, q"{昊焱}", q"{昊然}", q"{明}", q"{明哲}", q"{明杰}", q"{明轩}", q"{明辉}", q"{晋鹏}"
		, q"{晓博}", q"{晓啸}", q"{晟睿}", q"{智宸}", q"{智渊}", q"{智辉}", q"{果}", q"{梓晨}"
		, q"{楷瑞}", q"{正豪}", q"{泽洋}", q"{浩}", q"{浩宇}", q"{浩然}", q"{浩轩}", q"{涛}"
		, q"{潇然}", q"{炎彬}", q"{炫明}", q"{烨伟}", q"{烨华}", q"{烨磊}", q"{烨霖}", q"{煜城}"
		, q"{煜祺}", q"{熠彤}", q"{琪}", q"{瑞霖}", q"{瑾瑜}", q"{皓轩}", q"{睿渊}", q"{立果}"
		, q"{立诚}", q"{立轩}", q"{立辉}", q"{笑愚}", q"{绍辉}", q"{绍齐}", q"{耀杰}", q"{聪健}"
		, q"{胤祥}", q"{致远}", q"{航}", q"{苑博}", q"{荣轩}", q"{语堂}", q"{越彬}", q"{越泽}"
		, q"{远航}", q"{金鑫}", q"{鑫磊}", q"{鑫鹏}", q"{钰轩}", q"{锦程}", q"{雨泽}", q"{雪松}"
		, q"{靖琪}", q"{风华}", q"{驰}", q"{鸿涛}", q"{鸿煊}", q"{鹏}", q"{鹏涛}", q"{鹏煊}"
		, q"{鹏飞}", q"{鹤轩}", q"{鹭洋}", q"{黎昕}", q"{诗雨}", q"{婷方}", q"{美方}", q"{雅婷}"
		, q"{紫林}", q"{天娇}", q"{万佳}", q"{子欣}", q"{海燕}", q"{乙萍}", q"{安琪}", q"{馨羽}"
		, q"{馥君}", q"{思佳}", q"{雅鑫}", q"{静怡}", q"{晨阳}", q"{佳琪}", q"{雯静}", q"{榕融}"
		, q"{浩辰}", q"{癸霖}", q"{一全}", q"{三锋}", q"{义轩}", q"{俊凯}", q"{子豪}", q"{振东}"
		, q"{智杰}", q"{哲新}", q"{中海}", q"{超栋}", q"{治涛}", q"{治文}", q"{文韬}", q"{敬彪}"
		, q"{敬阳}", q"{政君}", q"{立伟}", q"{呈轩}" ];

		return choice(strs, this.rnd);
	}

	override string personLastName() {
		const string[] strs =
		[ q"{赵}", q"{钱}", q"{孙}", q"{李}", q"{周}", q"{吴}", q"{郑}", q"{王}", q"{冯}", q"{陈}", q"{褚}"
		, q"{卫}", q"{蒋}", q"{沈}", q"{韩}", q"{杨}", q"{朱}", q"{秦}", q"{尤}", q"{许}", q"{何}", q"{吕}"
		, q"{施}", q"{张}", q"{孔}", q"{曹}", q"{严}", q"{华}", q"{金}", q"{魏}", q"{陶}", q"{姜}", q"{戚}"
		, q"{谢}", q"{邹}", q"{喻}", q"{柏}", q"{水}", q"{窦}", q"{章}", q"{云}", q"{苏}", q"{潘}", q"{葛}"
		, q"{奚}", q"{范}", q"{彭}", q"{郎}", q"{鲁}", q"{韦}", q"{昌}", q"{马}", q"{苗}", q"{凤}", q"{花}"
		, q"{方}", q"{俞}", q"{任}", q"{袁}", q"{柳}", q"{酆}", q"{鲍}", q"{史}", q"{唐}", q"{费}", q"{廉}"
		, q"{岑}", q"{薛}", q"{雷}", q"{贺}", q"{倪}", q"{汤}", q"{滕}", q"{殷}", q"{罗}", q"{毕}", q"{郝}"
		, q"{邬}", q"{安}", q"{常}", q"{乐}", q"{于}", q"{时}", q"{傅}", q"{皮}", q"{卞}", q"{齐}", q"{康}"
		, q"{伍}", q"{余}", q"{元}", q"{卜}", q"{顾}", q"{孟}", q"{平}", q"{黄}", q"{和}", q"{穆}", q"{萧}"
		, q"{尹}", q"{姚}", q"{邵}", q"{湛}", q"{汪}", q"{祁}", q"{毛}", q"{禹}", q"{狄}", q"{米}", q"{贝}"
		, q"{明}", q"{臧}", q"{计}", q"{伏}", q"{成}", q"{戴}", q"{谈}", q"{宋}", q"{茅}", q"{庞}", q"{熊}"
		, q"{纪}", q"{舒}", q"{屈}", q"{项}", q"{祝}", q"{董}", q"{梁}", q"{杜}", q"{阮}", q"{蓝}", q"{闵}"
		, q"{席}", q"{季}", q"{麻}", q"{强}", q"{贾}", q"{路}", q"{娄}", q"{危}", q"{江}", q"{童}", q"{颜}"
		, q"{郭}", q"{梅}", q"{盛}", q"{林}", q"{刁}", q"{锺}", q"{徐}", q"{邱}", q"{骆}", q"{高}", q"{夏}"
		, q"{蔡}", q"{田}", q"{樊}", q"{胡}", q"{凌}", q"{蹇}", q"{称}", q"{诺}", q"{来}", q"{多}", q"{繁}"
		, q"{戊}", q"{朴}", q"{回}", q"{毓}", q"{税}", q"{荤}", q"{靖}", q"{绪}", q"{愈}", q"{硕}", q"{牢}"
		, q"{买}", q"{但}", q"{巧}", q"{枚}", q"{撒}", q"{泰}", q"{秘}", q"{亥}", q"{绍}", q"{以}", q"{壬}"
		, q"{森}", q"{斋}", q"{释}", q"{奕}", q"{姒}", q"{朋}", q"{求}", q"{羽}", q"{用}", q"{占}", q"{真}"
		, q"{穰}", q"{翦}", q"{闾}", q"{漆}", q"{贵}", q"{代}", q"{贯}", q"{旁}", q"{崇}", q"{栋}", q"{告}"
		, q"{休}", q"{褒}", q"{谏}", q"{锐}", q"{皋}", q"{闳}", q"{在}", q"{歧}", q"{禾}", q"{示}", q"{是}"
		, q"{委}", q"{钊}", q"{频}", q"{嬴}", q"{呼}", q"{大}", q"{威}", q"{昂}", q"{律}", q"{冒}", q"{保}"
		, q"{系}", q"{抄}", q"{定}", q"{化}", q"{莱}", q"{校}", q"{么}", q"{抗}", q"{祢}", q"{綦}", q"{悟}"
		, q"{宏}", q"{功}", q"{庚}", q"{务}", q"{敏}", q"{捷}", q"{拱}", q"{兆}", q"{丑}", q"{丙}", q"{畅}"
		, q"{苟}", q"{随}", q"{类}", q"{卯}", q"{俟}", q"{友}", q"{答}", q"{乙}", q"{允}", q"{甲}", q"{留}"
		, q"{尾}", q"{佼}", q"{玄}", q"{乘}", q"{裔}", q"{延}", q"{植}", q"{环}", q"{矫}", q"{赛}", q"{昔}"
		, q"{侍}", q"{度}", q"{旷}", q"{遇}", q"{偶}", q"{前}", q"{由}", q"{咎}", q"{塞}", q"{敛}", q"{受}"
		, q"{泷}", q"{袭}", q"{衅}", q"{叔}", q"{圣}", q"{御}", q"{夫}", q"{仆}", q"{镇}", q"{藩}", q"{邸}"
		, q"{府}", q"{掌}", q"{首}", q"{员}", q"{焉}", q"{戏}", q"{可}", q"{智}", q"{尔}", q"{凭}", q"{悉}"
		, q"{进}", q"{笃}", q"{厚}", q"{仁}", q"{业}", q"{肇}", q"{资}", q"{合}", q"{仍}", q"{九}", q"{衷}"
		, q"{哀}", q"{刑}", q"{俎}", q"{仵}", q"{圭}", q"{夷}", q"{徭}", q"{蛮}", q"{汗}", q"{孛}", q"{乾}"
		, q"{帖}", q"{罕}", q"{洛}", q"{淦}", q"{洋}", q"{邶}", q"{郸}", q"{郯}", q"{邗}", q"{邛}", q"{剑}"
		, q"{虢}", q"{隋}", q"{蒿}", q"{茆}", q"{菅}", q"{苌}", q"{树}", q"{桐}", q"{锁}", q"{钟}", q"{机}"
		, q"{盘}", q"{铎}", q"{斛}", q"{玉}", q"{线}", q"{针}", q"{箕}", q"{庹}", q"{绳}", q"{磨}", q"{蒉}"
		, q"{瓮}", q"{弭}", q"{刀}", q"{疏}", q"{牵}", q"{浑}", q"{恽}", q"{势}", q"{世}", q"{仝}", q"{同}"
		, q"{蚁}", q"{止}", q"{戢}", q"{睢}", q"{冼}", q"{种}", q"{涂}", q"{肖}", q"{己}", q"{泣}", q"{潜}"
		, q"{卷}", q"{脱}", q"{谬}", q"{蹉}", q"{赧}", q"{浮}", q"{顿}", q"{说}", q"{次}", q"{错}", q"{念}"
		, q"{夙}", q"{斯}", q"{完}", q"{丹}", q"{表}", q"{聊}", q"{源}", q"{姓}", q"{吾}", q"{寻}", q"{展}"
		, q"{出}", q"{不}", q"{户}", q"{闭}", q"{才}", q"{无}", q"{书}", q"{学}", q"{愚}", q"{本}", q"{性}"
		, q"{雪}", q"{霜}", q"{烟}", q"{寒}", q"{少}", q"{字}", q"{桥}", q"{板}", q"{斐}", q"{独}", q"{千}"
		, q"{诗}", q"{嘉}", q"{扬}", q"{善}", q"{揭}", q"{祈}", q"{析}", q"{赤}", q"{紫}", q"{青}", q"{柔}"
		, q"{刚}", q"{奇}", q"{拜}", q"{佛}", q"{陀}", q"{弥}", q"{阿}", q"{素}", q"{长}", q"{僧}", q"{隐}"
		, q"{仙}", q"{隽}", q"{宇}", q"{祭}", q"{酒}", q"{淡}", q"{塔}", q"{琦}", q"{闪}", q"{始}", q"{星}"
		, q"{南}", q"{天}", q"{接}", q"{波}", q"{碧}", q"{速}", q"{禚}", q"{腾}", q"{潮}", q"{镜}", q"{似}"
		, q"{澄}", q"{潭}", q"{謇}", q"{纵}", q"{渠}", q"{奈}", q"{风}", q"{春}", q"{濯}", q"{沐}", q"{茂}"
		, q"{英}", q"{兰}", q"{檀}", q"{藤}", q"{枝}", q"{检}", q"{生}", q"{折}", q"{登}", q"{驹}", q"{骑}"
		, q"{貊}", q"{虎}", q"{肥}", q"{鹿}", q"{雀}", q"{野}", q"{禽}", q"{飞}", q"{节}", q"{宜}", q"{鲜}"
		, q"{粟}", q"{栗}", q"{豆}", q"{帛}", q"{官}", q"{布}", q"{衣}", q"{藏}", q"{宝}", q"{钞}", q"{银}"
		, q"{门}", q"{盈}", q"{庆}", q"{喜}", q"{及}", q"{普}", q"{建}", q"{营}", q"{巨}", q"{望}", q"{希}"
		, q"{道}", q"{载}", q"{声}", q"{漫}", q"{犁}", q"{力}", q"{贸}", q"{勤}", q"{革}", q"{改}", q"{兴}"
		, q"{亓}", q"{睦}", q"{修}", q"{信}", q"{闽}", q"{北}", q"{守}", q"{坚}", q"{勇}", q"{汉}", q"{练}"
		, q"{尉}", q"{士}", q"{旅}", q"{五}", q"{令}", q"{将}", q"{旗}", q"{军}", q"{行}", q"{奉}", q"{敬}"
		, q"{恭}", q"{仪}", q"{母}", q"{堂}", q"{丘}", q"{义}", q"{礼}", q"{慈}", q"{孝}", q"{理}", q"{伦}"
		, q"{卿}", q"{问}", q"{永}", q"{辉}", q"{位}", q"{让}", q"{尧}", q"{依}", q"{犹}", q"{介}", q"{承}"
		, q"{市}", q"{所}", q"{苑}", q"{杞}", q"{剧}", q"{第}", q"{零}", q"{谌}", q"{招}", q"{续}", q"{达}"
		, q"{忻}", q"{六}", q"{鄞}", q"{战}", q"{迟}", q"{候}", q"{宛}", q"{励}", q"{粘}", q"{萨}", q"{邝}"
		, q"{覃}", q"{辜}", q"{初}", q"{楼}", q"{城}", q"{区}", q"{局}", q"{台}", q"{原}", q"{考}", q"{妫}"
		, q"{纳}", q"{泉}", q"{老}", q"{清}", q"{德}", q"{卑}", q"{过}", q"{麦}", q"{曲}", q"{竹}", q"{百}"
		, q"{福}", q"{言}", q"{霍}", q"{虞}", q"{万}", q"{支}", q"{柯}", q"{昝}", q"{管}", q"{卢}", q"{莫}"
		, q"{经}", q"{房}", q"{裘}", q"{缪}", q"{干}", q"{解}", q"{应}", q"{宗}", q"{丁}", q"{宣}", q"{贲}"
		, q"{邓}", q"{单}", q"{杭}", q"{洪}", q"{包}", q"{诸}", q"{左}", q"{石}", q"{崔}", q"{吉}", q"{钮}"
		, q"{龚}", q"{程}", q"{嵇}", q"{邢}", q"{滑}", q"{裴}", q"{陆}", q"{荣}", q"{翁}", q"{荀}", q"{羊}"
		, q"{於}", q"{惠}", q"{甄}", q"{麴}", q"{家}", q"{封}", q"{芮}", q"{羿}", q"{储}", q"{靳}", q"{汲}"
		, q"{邴}", q"{糜}", q"{松}", q"{井}", q"{段}", q"{富}", q"{巫}", q"{乌}", q"{焦}", q"{巴}", q"{弓}"
		, q"{牧}", q"{隗}", q"{山}", q"{谷}", q"{车}", q"{侯}", q"{宓}", q"{蓬}", q"{全}", q"{郗}", q"{班}"
		, q"{仰}", q"{秋}", q"{仲}", q"{伊}", q"{宫}", q"{宁}", q"{仇}", q"{栾}", q"{暴}", q"{甘}", q"{钭}"
		, q"{历}", q"{戎}", q"{祖}", q"{武}", q"{符}", q"{刘}", q"{景}", q"{詹}", q"{束}", q"{龙}", q"{叶}"
		, q"{幸}", q"{司}", q"{韶}", q"{郜}", q"{黎}", q"{蓟}", q"{溥}", q"{印}", q"{宿}", q"{白}", q"{怀}"
		, q"{蒲}", q"{邰}", q"{召}", q"{有}", q"{舜}", q"{拉}", q"{丛}", q"{岳}", q"{寸}", q"{贰}", q"{皇}"
		, q"{侨}", q"{彤}", q"{竭}", q"{端}", q"{赫}", q"{实}", q"{甫}", q"{集}", q"{象}", q"{翠}", q"{狂}"
		, q"{辟}", q"{典}", q"{良}", q"{函}", q"{芒}", q"{苦}", q"{其}", q"{京}", q"{中}", q"{夕}", q"{之}"
		, q"{从}", q"{鄂}", q"{索}", q"{咸}", q"{籍}", q"{赖}", q"{卓}", q"{蔺}", q"{屠}", q"{蒙}", q"{池}"
		, q"{乔}", q"{阳}", q"{郁}", q"{胥}", q"{能}", q"{苍}", q"{双}", q"{闻}", q"{莘}", q"{党}", q"{翟}"
		, q"{谭}", q"{贡}", q"{劳}", q"{逄}", q"{姬}", q"{申}", q"{扶}", q"{堵}", q"{冉}", q"{宰}", q"{郦}"
		, q"{雍}", q"{却}", q"{璩}", q"{桑}", q"{桂}", q"{濮}", q"{牛}", q"{寿}", q"{通}", q"{边}", q"{扈}"
		, q"{燕}", q"{冀}", q"{僪}", q"{浦}", q"{尚}", q"{农}", q"{温}", q"{别}", q"{庄}", q"{晏}", q"{柴}"
		, q"{瞿}", q"{阎}", q"{充}", q"{慕}", q"{连}", q"{茹}", q"{习}", q"{宦}", q"{艾}", q"{鱼}", q"{容}"
		, q"{向}", q"{古}", q"{易}", q"{慎}", q"{戈}", q"{廖}", q"{庾}", q"{终}", q"{暨}", q"{居}", q"{衡}"
		, q"{步}", q"{都}", q"{耿}", q"{满}", q"{弘}", q"{匡}", q"{国}", q"{文}", q"{琴}", q"{况}", q"{亢}"
		, q"{缑}", q"{帅}", q"{寇}", q"{广}", q"{禄}", q"{阙}", q"{东}", q"{欧}", q"{殳}", q"{沃}", q"{利}"
		, q"{蔚}", q"{越}", q"{夔}", q"{隆}", q"{师}", q"{巩}", q"{厍}", q"{聂}", q"{晁}", q"{勾}", q"{敖}"
		, q"{融}", q"{冷}", q"{訾}", q"{辛}", q"{阚}", q"{那}", q"{简}", q"{饶}", q"{空}", q"{曾}", q"{毋}"
		, q"{沙}", q"{乜}", q"{养}", q"{鞠}", q"{须}", q"{丰}", q"{巢}", q"{关}", q"{蒯}", q"{相}", q"{查}"
		, q"{后}", q"{荆}", q"{红}", q"{游}", q"{特}", q"{察}", q"{竺}", q"{冠}", q"{宾}", q"{香}", q"{赏}"
		, q"{伯}", q"{佴}", q"{佘}", q"{佟}", q"{爱}", q"{年}", q"{笪}", q"{谯}", q"{哈}", q"{墨}", q"{牟}"
		, q"{商}", q"{海}", q"{归}", q"{钦}", q"{鄢}", q"{汝}", q"{法}", q"{闫}", q"{楚}", q"{晋}", q"{督}"
		, q"{仉}", q"{盖}", q"{逯}", q"{库}", q"{郏}", q"{逢}", q"{阴}", q"{薄}", q"{厉}", q"{稽}", q"{开}"
		, q"{光}", q"{操}", q"{瑞}", q"{眭}", q"{泥}", q"{运}", q"{摩}", q"{伟}", q"{铁}", q"{迮}", q"{果}"
		, q"{权}", q"{逮}", q"{盍}", q"{益}", q"{桓}", q"{公}", q"{万俟}", q"{司马}", q"{上官}", q"{欧阳}"
		, q"{夏侯}", q"{诸葛}", q"{闻人}", q"{东方}", q"{赫连}", q"{皇甫}", q"{尉迟}", q"{公羊}"
		, q"{澹台}", q"{公冶}", q"{宗政}", q"{濮阳}", q"{淳于}", q"{单于}", q"{太叔}", q"{申屠}"
		, q"{公孙}", q"{仲孙}", q"{轩辕}", q"{令狐}", q"{钟离}", q"{宇文}", q"{长孙}", q"{慕容}"
		, q"{司徒}", q"{司空}", q"{章佳}", q"{那拉}", q"{觉罗}", q"{纳喇}", q"{乌雅}", q"{范姜}"
		, q"{碧鲁}" ];

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
		[ q"{建华}", q"{建国}", q"{建军}", q"{国强}", q"{国平}", q"{国良}", q"{国栋}", q"{国辉}"
		, q"{志国}", q"{志明}", q"{勇}", q"{军}", q"{伟}", q"{强}", q"{刚}", q"{涛}", q"{斌}", q"{波}"
		, q"{辉}", q"{磊}", q"{超}", q"{鹏}", q"{杰}", q"{浩}", q"{鑫}", q"{帅}", q"{宇}", q"{晨}", q"{诚}"
		, q"{成}", q"{民}", q"{明}", q"{阳}", q"{瑜}", q"{熙成}", q"{熙瑶}", q"{家豪}", q"{家明}"
		, q"{俊杰}", q"{俊熙}", q"{沐宸}", q"{浩宇}", q"{浩然}", q"{浩轩}", q"{浩晨}", q"{沐辰}"
		, q"{茗泽}", q"{奕辰}", q"{奕泽}", q"{宇泽}", q"{宇轩}", q"{宇航}", q"{沐阳}", q"{梓诚}"
		, q"{梓豪}", q"{梓睿}", q"{梓浩}", q"{浩辰}", q"{癸霖}", q"{一全}", q"{三锋}", q"{义轩}"
		, q"{俊凯}", q"{子豪}", q"{振东}", q"{智杰}", q"{哲新}", q"{文昊}", q"{中海}", q"{超栋}"
		, q"{治涛}", q"{治文}", q"{文韬}", q"{敬彪}", q"{敬阳}", q"{政君}", q"{立伟}", q"{呈轩}" ];

		return choice(strs, this.rnd);
	}

	override string personName() {
		const int rndInt = uniform(0, 1, this.rnd);

		if(rndInt >= 0 && rndInt < 1) {
			return personLastName() ~ personFirstName();
		}

		return "";
	}

	override string phoneNumberFormats() {
		const string[] strs =
		[ q"{0##-########}", q"{0###-########}", q"{1##########}" ];

		return numberBuild(choice(str, this.rnd));
	}

	override string vehicleBicycleType() {
		const string[] strs =
		[ q"{冒险公路自行车}", q"{小轮车自行车}", q"{城市自行车}", q"{巡洋舰自行车}"
		, q"{越野自行车}", q"{双运动自行车}", q"{健身自行车}", q"{平足舒适自行车}"
		, q"{折叠自行车}", q"{混合动力自行车}", q"{山地自行车}", q"{卧式自行车}"
		, q"{公路自行车}", q"{双人自行车}", q"{旅行自行车}", q"{场地/固定齿轮自行车}"
		, q"{铁人三项/计时自行车}", q"{三轮车}" ];

		return choice(strs, this.rnd);
	}

	override string vehicleFuel() {
		const string[] strs =
		[ q"{柴油}", q"{电动}", q"{汽油}", q"{混合动力}" ];

		return choice(strs, this.rnd);
	}

	override string vehicleManufacturer() {
		const string[] strs =
		[ q"{阿斯顿·马丁}", q"{奥迪}", q"{宾利}", q"{宝马}", q"{布加迪}", q"{卡迪拉克}"
		, q"{雪佛兰}", q"{克莱斯勒}", q"{躲闪}", q"{法拉利}", q"{菲亚特}", q"{福特}"
		, q"{本田}", q"{现代}", q"{捷豹}", q"{吉普车}", q"{起亚}", q"{兰博基尼}", q"{路虎}"
		, q"{玛莎拉蒂}", q"{马自达}", q"{奔驰}", q"{小型的}", q"{日产}", q"{极星}", q"{保时捷}"
		, q"{劳斯莱斯}", q"{聪明的}", q"{特斯拉}", q"{丰田}", q"{大众汽车}", q"{沃尔沃}" ];

		return choice(strs, this.rnd);
	}

	override string vehicleType() {
		const string[] strs =
		[ q"{货车}", q"{掀背车}", q"{面包车}", q"{客车}", q"{越野车}", q"{轿车}", q"{旅行车}" ];

		return choice(strs, this.rnd);
	}

	override string wordAdjective() {
		const string[] strs =
		[ q"{长}", q"{短}", q"{大}", q"{小}", q"{粗}", q"{细}", q"{红}", q"{绿}", q"{平坦}", q"{整齐}"
		, q"{雪白}", q"{笔直}", q"{绿油油}", q"{血淋淋}", q"{骨碌碌}", q"{黑不溜秋}"
		, q"{好}", q"{坏}", q"{伟大}", q"{勇敢}", q"{优秀}", q"{聪明}", q"{老实}", q"{鲁莽}"
		, q"{大方}", q"{软}", q"{硬}", q"{苦}", q"{甜}", q"{冷}", q"{热}", q"{坚固}", q"{平常}", q"{快}"
		, q"{慢}", q"{生动}", q"{熟练}", q"{轻松}", q"{清楚}", q"{马虎}", q"{干脆}", q"{许多}"
		, q"{好些}", q"{全部}", q"{全}", q"{整}", q"{多}", q"{少}" ];

		return choice(strs, this.rnd);
	}

	override string wordAdverb() {
		const string[] strs =
		[ q"{都}", q"{全}", q"{单}", q"{共}", q"{光}", q"{尽}", q"{净}", q"{仅}", q"{就}", q"{只}", q"{一共}"
		, q"{一起}", q"{一同}", q"{一道}", q"{一齐}", q"{一概}", q"{一味}", q"{统统}", q"{总共}"
		, q"{仅仅}", q"{惟独}", q"{可}", q"{倒}", q"{一定}", q"{必定}", q"{必然}", q"{却}", q"{幸亏}"
		, q"{难道}", q"{何尝}", q"{偏偏}", q"{索性}", q"{简直}", q"{反正}", q"{多亏}", q"{也许}"
		, q"{大约}", q"{好在}", q"{敢情}", q"{不}", q"{没}", q"{没有}", q"{别}", q"{仿佛}", q"{渐渐}"
		, q"{百般}", q"{特地}", q"{互相}", q"{擅自}", q"{几乎}", q"{逐渐}", q"{逐步}", q"{猛然}"
		, q"{依然}", q"{仍然}", q"{当然}", q"{毅然}", q"{果然}", q"{差点儿}", q"{很}", q"{极}"
		, q"{最}", q"{太}", q"{更}", q"{更加}", q"{格外}", q"{十分}", q"{极其}", q"{比较}", q"{相当}"
		, q"{稍微}", q"{略微}", q"{多么}" ];

		return choice(strs, this.rnd);
	}

	override string wordVerb() {
		const string[] strs =
		[ q"{打}", q"{吃}", q"{抿}", q"{做}", q"{坐}", q"{跑}", q"{跳}", q"{走}", q"{飞}", q"{爬}", q"{开}"
		, q"{滑}", q"{切}", q"{拆}", q"{咬}", q"{吞}", q"{吐}", q"{吮}", q"{吸}", q"{啃}", q"{喝}", q"{咀}"
		, q"{嚼}", q"{搀}", q"{抱}", q"{搂}", q"{扶}", q"{捉}", q"{擒}", q"{掐}", q"{推}", q"{拿}", q"{抽}"
		, q"{撕}", q"{摘}", q"{拣}", q"{捡}", q"{播}", q"{击}", q"{捏}", q"{撒}", q"{按}", q"{弹}", q"{撞}"
		, q"{提}", q"{扭}", q"{捶}", q"{持}", q"{揍}", q"{披}", q"{捣}", q"{搜}", q"{托}", q"{举}", q"{拖}"
		, q"{擦}", q"{敲}", q"{挖}", q"{抛}", q"{掘}", q"{抬}", q"{插}", q"{扔}", q"{写}", q"{抄}", q"{抓}"
		, q"{捧}", q"{掷}", q"{撑}", q"{摊}", q"{倒}", q"{摔}", q"{劈}", q"{画}", q"{搔}", q"{撬}", q"{挥}"
		, q"{揽}", q"{挡}", q"{捺}", q"{抚}", q"{搡}", q"{拉}", q"{摸}", q"{拍}", q"{摇}", q"{剪}", q"{拎}"
		, q"{拔}", q"{拧}", q"{拨}", q"{舞}", q"{握}", q"{攥}", q"{驾驶}", q"{移动}", q"{转动}", q"{操作}"
		, q"{蠕动}", q"{启动}", q"{关闭}" ];

		return choice(strs, this.rnd);
	}

}

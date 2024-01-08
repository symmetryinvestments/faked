module faker.faker_zu_za;

import std.random;
import std.array;
import std.format;
import std.conv : to;
import std.string : toUpper;
import std.range : iota, take, repeat;
import std.algorithm : map, joiner;

import faker.customtypes;
import faker.base;

class Faker_zu_za : Faker {
@safe:
	this(int seed) {
		super(seed);
	}

	override string cellPhoneFormats() {
		const string[] strs =
		[ q"{082 ### ####}", q"{084 ### ####}", q"{083 ### ####}", q"{065 ### ####}", q"{082#######}"
		, q"{082 #######}" ];

		return numberBuild(choice(str, this.rnd));
	}

	override string companySuffix() {
		const string[] strs =
		[ q"{Pty Ltd}", q"{Ltd}", q"{CC}" ];

		return choice(strs, this.rnd);
	}

	override string internetDomainSuffix() {
		const string[] strs =
		[ q"{co.za}", q"{com}", q"{org.za}", q"{info}", q"{net.za}" ];

		return choice(strs, this.rnd);
	}

	override string locationCityName() {
		const string[] strs =
		[ q"{Polokwane}", q"{eGoli}", q"{Pretoria}", q"{uTshwane}", q"{eThekwini}", q"{umGungundlovu}"
		, q"{Mbombela}", q"{eKapa}", q"{Stellenbosch}", q"{iBhayi}", q"{eMonti}", q"{Kimberley}", q"{Rustenburg}"
		, q"{Bloemfontein}" ];

		return choice(strs, this.rnd);
	}

	override string locationCityPattern() {
		final switch(uniform(0, 1, this.rnd)) {
			case 0: return locationCityName();
		}
		return "";
	}

	override string locationDefaultCountry() {
		const string[] strs =
		[ q"{South Africa}" ];

		return choice(strs, this.rnd);
	}

	override string locationPostcode() {
		const string[] strs =
		[ q"{#####}", q"{####}" ];

		return numberBuild(choice(str, this.rnd));
	}

	override string locationState() {
		const string[] strs =
		[ q"{EGoli}", q"{IFuleyisitata}", q"{IKwaZulu-Natali}", q"{ILimpopo}", q"{IMpumalanga Kapa}"
		, q"{IMpumalanga}", q"{INtshonalanga Kapa}", q"{INyakatho Kapa}", q"{INyakatho-Ntshonalanga}" ];

		return choice(strs, this.rnd);
	}

	override string locationStreetPattern() {
		final switch(uniform(0, 2, this.rnd)) {
			case 0: return personFirstName() ~ " " ~ locationStreetSuffix();
			case 1: return personLastName() ~ " " ~ locationStreetSuffix();
		}
		return "";
	}

	override string personFemaleFirstName() {
		const string[] strs =
		[ q"{Amahle}", q"{Ayanda}", q"{Ayize}", q"{Buhle}", q"{Busisiwe}", q"{Duduzile}", q"{Hlengiwe}", q"{Inyoni}"
		, q"{Isisa}", q"{Jabulile}", q"{Khanyisile}", q"{Khethiwe}", q"{Khulekani}", q"{Lerato}", q"{Liyana}"
		, q"{Lukhona}", q"{Mbalienhle}", q"{Mhambi}", q"{Mthunzi}", q"{Nandi}", q"{Ndondoloza}", q"{Nhlakanipho}"
		, q"{Nkosingiphile}", q"{Nofoto}", q"{Nokuthula}", q"{Nolwazi}", q"{Nomvula}", q"{Nonhlanhla}"
		, q"{Nonjabulo}", q"{Nonkululeko}", q"{Nozipho}", q"{Ntokozo}", q"{Ntombizodwa}", q"{Samukelisiwe}"
		, q"{Sibongile}", q"{Sindisiwe}", q"{Sinenhlanhla}", q"{Siphephelo}", q"{Sizakele}", q"{Sizani}"
		, q"{Thabisa}", q"{Thadie}", q"{Thobeka}", q"{Thulisile}", q"{Uluthando}", q"{Ulwazi}", q"{Yibanathi}"
		, q"{Zanele}", q"{Zobuhle}" ];

		return choice(strs, this.rnd);
	}

	override string personFirstName() {
		const string[] strs =
		[ q"{Amahle}", q"{Anele}", q"{Ayanda}", q"{Ayize}", q"{Bafana}", q"{Bangizwe}", q"{Bhekimuzi}", q"{Bhekizizwe}"
		, q"{Bhekumbuso}", q"{Bonginkosi}", q"{Buhle}", q"{Busisiwe}", q"{Duduzile}", q"{Dumisani}"
		, q"{Fanyana}", q"{Funani}", q"{Gatsha}", q"{Hlengiwe}", q"{Inyoni}", q"{Isisa}", q"{Jabulile}"
		, q"{Kagiso}", q"{Kgabu}", q"{Khanyisile}", q"{Khethiwe}", q"{Khulekani}", q"{Langa}", q"{Lerato}"
		, q"{Linda}", q"{Liyana}", q"{Lukhona}", q"{Lungelo}", q"{Lwandle}", q"{Mandla}", q"{Maphikelela}"
		, q"{Mbalienhle}", q"{Mhambi}", q"{Mpilo}", q"{Mpumelelo}", q"{Msizi}", q"{Mthunzi}", q"{Musawenkosi}"
		, q"{Nandi}", q"{Ndleleni}", q"{Ndondoloza}", q"{Nhlakanipho}", q"{Nkanyezi}", q"{Nkosenye}"
		, q"{Nkosingiphile}", q"{Nkosinhle}", q"{Nkosiyabo}", q"{Nofoto}", q"{Nokuthula}", q"{Nolwazi}"
		, q"{Nomvula}", q"{Nonhlanhla}", q"{Nonjabulo}", q"{Nonkululeko}", q"{Nozipho}", q"{Ntokozo}"
		, q"{Ntombizodwa}", q"{Phila}", q"{Philani}", q"{Phiwokwakhe}", q"{Samukelisiwe}", q"{Sanele}"
		, q"{Sfiso}", q"{Shaka}", q"{Sibongile}", q"{Sibusiso}", q"{Sifiso}", q"{Sindisiwe}", q"{Sinenhlanhla}"
		, q"{Siphephelo}", q"{Siphiwe}", q"{Sipho}", q"{Sithembiso}", q"{Siyanda}", q"{Sizakele}", q"{Sizani}"
		, q"{Solomon}", q"{Thabisa}", q"{Thadie}", q"{Thamsanqa}", q"{Thando}", q"{Themba}", q"{Thobeka}"
		, q"{Thulani}", q"{Thulisile}", q"{Uluthando}", q"{Ulwazi}", q"{Velaphi}", q"{Vusumuzi}", q"{Yibanathi}"
		, q"{Zanele}", q"{Zenzele}", q"{Zithulele}", q"{Zobuhle}" ];

		return choice(strs, this.rnd);
	}

	override string personLastName() {
		const string[] strs =
		[ q"{Bayeni}", q"{Bengu}", q"{Bhembe}", q"{Bhengani}", q"{Bhengu}", q"{Bhuyeni}", q"{Biyela}", q"{Buthelezi}"
		, q"{Cebekhulu}", q"{Cele}", q"{Chiliza}", q"{Delazy}", q"{Dhlomo}", q"{Dingiswayo}", q"{Dlamini}"
		, q"{Dube}", q"{Fuze}", q"{Gabhezi}", q"{Gama}", q"{Gigaba}", q"{Guliwe}", q"{Gumede}", q"{Gwacela}"
		, q"{Gwala}", q"{Hlongwa}", q"{Khawula}", q"{Khumalo}", q"{Khuzwayo}", q"{Kunene}", q"{Lamula}"
		, q"{Lembede}", q"{Luthuli}", q"{Mabhida}", q"{Mabizela}", q"{Maduma}", q"{Magoza}", q"{Malinga}"
		, q"{Maphisa}", q"{Mashinini}", q"{Mavundla}", q"{Mbatha}", q"{Mbende}", q"{Mbuso}", q"{Mehloluhlaza}"
		, q"{Mfeka}", q"{Mfumu}", q"{Mgenge}", q"{Mkhatshwa}", q"{Moseley}", q"{Mqwebu}", q"{Msibi}", q"{Mthembu}"
		, q"{Mthethwa}", q"{Mtolo}", q"{Musi}", q"{Ncusi}", q"{Ndandali}", q"{Ndebele}", q"{Ngcolosi}"
		, q"{Ngema}", q"{Ngubane}", q"{Ngwazi}", q"{Nhleko}", q"{Nomvethe}", q"{Nondlela}", q"{Nonyana}"
		, q"{Nozulu}", q"{Nsele}", q"{Ntanzi}", q"{Ntombela}", q"{Nyanda}", q"{Nzimande}", q"{Radebe}"
		, q"{Seme}", q"{Senzangakhona}", q"{Shezi}", q"{Sibiya}", q"{Sithuli}", q"{Siwele}", q"{Siyaya}"
		, q"{Sokhela}", q"{Sondisa}", q"{Sothole}", q"{Thoyana}", q"{Thumbeza}", q"{Thusi}", q"{Tshabalala}"
		, q"{Vezi}", q"{Vilakazi}", q"{Wosiyane}", q"{Yengwa}", q"{Zondi}", q"{Zondo}", q"{Zubane}", q"{Zuma}"
		, q"{Zungu}" ];

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
		[ q"{Bonginkosi}", q"{Kagiso}", q"{Bhekizizwe}", q"{Bhekumbuso}", q"{Shaka}", q"{Funani}", q"{Kgabu}"
		, q"{Solomon}", q"{Gatsha}", q"{Langa}", q"{Phila}", q"{Msizi}", q"{Nkosiyabo}", q"{Linda}", q"{Mpilo}"
		, q"{Siyanda}", q"{Nkanyezi}", q"{Bafana}", q"{Lwandle}", q"{Sfiso}", q"{Thulani}", q"{Thando}"
		, q"{Sanele}", q"{Anele}", q"{Lungelo}", q"{Dumisani}", q"{Bangizwe}", q"{Fanyana}", q"{Bhekimuzi}"
		, q"{Mandla}", q"{Maphikelela}", q"{Mpumelelo}", q"{Mthunzi}", q"{Philani}", q"{Musawenkosi}"
		, q"{Nkosenye}", q"{Nkosinhle}", q"{Phiwokwakhe}", q"{Sifiso}", q"{Zithulele}", q"{Sithembiso}"
		, q"{Sipho}", q"{Siphiwe}", q"{Sibusiso}", q"{Velaphi}", q"{Thamsanqa}", q"{Vusumuzi}", q"{Themba}"
		, q"{Zenzele}", q"{Ndleleni}" ];

		return choice(strs, this.rnd);
	}

	override string phoneNumberFormats() {
		const string[] strs =
		[ q"{01# ### #####}", q"{02# ### #####}", q"{03# ### #####}", q"{04# ### #####}", q"{05# ### #####}"
		, q"{0800 ### ###}", q"{0860 ### ###}", q"{01#########}", q"{01# ########}" ];

		return numberBuild(choice(str, this.rnd));
	}

}

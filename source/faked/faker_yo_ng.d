module faked.faker_yo_ng;

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

import faked.faker_en;

class Faker_yo_ng : Faker_en {
@safe:
	this(int seed) {
		super(seed);
	}

	override string personFemaleFirstName() {
		const string[] strs =
		[ q"{Aanuoluwapo}", q"{Abebi}", q"{Abeni}", q"{Abosede}", q"{Adebukola}", q"{Adenike}", q"{Adepeju}"
		, q"{Adesewa}", q"{Adesua}", q"{Adetoke}", q"{Adetoun}", q"{Adunni}", q"{Ajoke}", q"{Amoke}", q"{Amope}"
		, q"{Arike}", q"{Arinola}", q"{Asake}", q"{Atinuke}", q"{Awero}", q"{Ayinke}", q"{Ayoka}", q"{Bolatito}"
		, q"{Boluwatife}", q"{Bunmi}", q"{Doyinsola}", q"{Eniola}", q"{Ewatomi}", q"{Fadekemi}", q"{Faderera}"
		, q"{Fehintola}", q"{Fibikemi}", q"{Fikayomi}", q"{Folashade}", q"{Ibironke}", q"{Iretioluwa}"
		, q"{Iyabode}", q"{Iyadunni}", q"{Kikelomo}", q"{Modupe}", q"{Mofifoluwa}", q"{Mojisola}", q"{Mojisoluwa}"
		, q"{Moradeke}", q"{Morayo}", q"{Morenike}", q"{Morolake}", q"{Mosinmileoluwa}", q"{Mosunmola}"
		, q"{Motunrayo}", q"{Moyosore}", q"{Ninioluwa}", q"{Olajumoke}", q"{Olasunmbo}", q"{Ololade}"
		, q"{Olufunke}", q"{Olufunmilayo}", q"{Oluwakemi}", q"{Omobolanle}", q"{Omodunni}", q"{Omolabake}"
		, q"{Omolara}", q"{Omosalewa}", q"{Omotara}", q"{Omotola}", q"{Omotoun}", q"{Omowumi}", q"{Oreofe}"
		, q"{Oyenike}", q"{Oyindasola}", q"{Radeke}", q"{Ronke}", q"{Segilola}", q"{Similoluwa}", q"{Simisola}"
		, q"{Sowande}", q"{Subomi}", q"{Titilayo}", q"{Tolulope}", q"{Toluwanimi}", q"{Wuraola}", q"{Yejide}"
		, q"{Yetunde}", q"{Yewande}" ];

		return choice(strs, this.rnd);
	}

	override string personFirstName() {
		const string[] strs =
		[ q"{Abimbola}", q"{Abiola}", q"{Ade}", q"{Adebankole}", q"{Adebola}", q"{Adedaramola}", q"{Adedoyin}"
		, q"{Adeola}", q"{Alaba}", q"{Ara}", q"{Ayomide}", q"{Ayomikun}", q"{Ayotude}", q"{Busayo}", q"{Damilola}"
		, q"{Damola}", q"{Darasimi}", q"{Ebunoluwa}", q"{FolaFoluwa}", q"{Ibukunoluwa}", q"{Idowu}"
		, q"{Ifeoluwa}", q"{Imoleoluwa}", q"{Iremide}", q"{Itunuoluwa}", q"{Iyanuoluwa}", q"{Iyinoluwa}"
		, q"{Kehinde}", q"{Mobolaji}", q"{Odunayo}", q"{Okiki}", q"{Ola}", q"{Oladara}", q"{Olamide}", q"{Olaoluwa}"
		, q"{Olatunbosun}", q"{Olayinka}", q"{Olufeyisayo}", q"{Olusola}", q"{Olutomiwa}", q"{Oluwasemilore}"
		, q"{Oluwaseun}", q"{Oluwaseyi}", q"{Oluwatimilehin}", q"{Oluwatobiloba}", q"{Oluwatofunmi}"
		, q"{Oluwatosin}", q"{Oluwatoyosi}", q"{Oluwatumise}", q"{Omolola}", q"{Omotolani}", q"{Opemipo}"
		, q"{Opeoluwa}", q"{Opeyemi}", q"{Oyindamola}", q"{Pelumi}", q"{Shola}", q"{Taiwo}", q"{Tejumola}"
		, q"{Temitope}", q"{Toluwalope}" ];

		return choice(strs, this.rnd);
	}

	override string personLastName() {
		const string[] strs =
		[ q"{Adebisi}", q"{Adegbite}", q"{Adegoke}", q"{Adekunle}", q"{Adelakun}", q"{Adeleke}", q"{Adelusi}"
		, q"{Ademiluyi}", q"{Aderibigbe}", q"{Aderogba}", q"{Adesiyan}", q"{Adeyemo}", q"{Adisa}", q"{Afolabi}"
		, q"{Afolayan}", q"{Afonja}", q"{Ajao}", q"{Ajayi}", q"{Ajewole}", q"{Akinrinola}", q"{Alabi}"
		, q"{Aloba}", q"{Awodiran}", q"{Awolowo}", q"{Ayandokun}", q"{Ayoola}", q"{Babtunde}", q"{Bakare}"
		, q"{Balogun}", q"{Bamidele}", q"{Bamiloye}", q"{Edun}", q"{Fadipe}", q"{Fagunwa}", q"{Fajimi}"
		, q"{Falabi}", q"{Faleti}", q"{Faloye}", q"{Fasasi}", q"{Ibikunle}", q"{Ilori}", q"{Ilupeju}", q"{Iyanda}"
		, q"{Jaiyeola}", q"{Kolade}", q"{Kosoko}", q"{Koya}", q"{Makinde}", q"{Makinwa}", q"{Morawo}", q"{Ninalowo}"
		, q"{Odetola}", q"{Odunsi}", q"{Ogindan}", q"{Oginni}", q"{Ogulana}", q"{Ogunbamigbe}", q"{Ogunbiyi}"
		, q"{Ogunbo}", q"{Ogunde}", q"{Ogunwobi}", q"{Ogunyeye}", q"{Ojo}", q"{Ojua}", q"{Olabode}", q"{Oladipupo}"
		, q"{Olaiya}", q"{Olasupo}", q"{Olowokeere}", q"{Oloyede}", q"{Olubode}", q"{Olugbayila}", q"{Olujimi}"
		, q"{Olukotun}", q"{Olukunga}", q"{Olusanya}", q"{Oluwagbemi}", q"{Omidina}", q"{Omojola}", q"{Omotoso}"
		, q"{Oparinde}", q"{Oshin}", q"{Osuntokun}", q"{Owokoniran}", q"{Owolabi}", q"{Owoyemi}", q"{Oyadiran}"
		, q"{Oyaifo}", q"{Oyeniyi}", q"{Oyetoro}", q"{Oyeyemi}", q"{Oyinlola}", q"{Paimo}", q"{Salako}"
		, q"{Salami}", q"{Shekoni}", q"{Sobowale}", q"{Soyinka}" ];

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
		[ q"{Abayomi}", q"{Abiodun}", q"{Abiona}", q"{Adebiyi}", q"{Adebowale}", q"{Adedayo}", q"{Adedeji}"
		, q"{Adekitan}", q"{Adekola}", q"{Adekunle}", q"{Adeleke}", q"{Adeniyi}", q"{Adeolu}", q"{Adeoti}"
		, q"{Aderopo}", q"{Adeshina}", q"{Adesoji}", q"{Adetayo}", q"{Adeyi}", q"{Adigun}", q"{Afolarin}"
		, q"{Ajala}", q"{Ajani}", q"{Akanmu}", q"{Akinkunmi}", q"{Akinlabi}", q"{Akinwale}", q"{Alade}"
		, q"{Alamu}", q"{Anjolaoluwa}", q"{Ayinde}", q"{Ayodeji}", q"{Ayodele}", q"{Babasola}", q"{Babatunji}"
		, q"{Babawale}", q"{Damife}", q"{Demilade}", q"{Durodola}", q"{Ekundayo}", q"{Esupofo}", q"{Folu}"
		, q"{Gbadebo}", q"{Gbolahan}", q"{Gbowoade}", q"{Ibidapo}", q"{Ige}", q"{Ikeoluwa}", q"{Inioluwa}"
		, q"{Iseoluwa}", q"{Ishola}", q"{Juwon}", q"{Keji}", q"{Kolawole}", q"{Korede}", q"{Leke}", q"{Lere}"
		, q"{Niyilolawa}", q"{Oba}", q"{ObaniJesu}", q"{Ogooluwa}", q"{Oke}", q"{Oladare}", q"{Oladimeji}"
		, q"{Olakunle}", q"{Olanrewaju}", q"{Olansile}", q"{Olumorotimi}", q"{Oluwafemi}", q"{Oluwagbemiga}"
		, q"{Oluwamumibori}", q"{Oluwamuyiwa}", q"{Oluwasanmi}", q"{Oluwasegun}", q"{Oluwole}", q"{Omobobola}"
		, q"{Omotayo}", q"{Osunleke}", q"{Seye}", q"{Shekoni}", q"{Sijuade}", q"{Tade}", q"{Temidayo}"
		, q"{Toki}", q"{Tokunbo}", q"{Tomori}" ];

		return choice(strs, this.rnd);
	}

}

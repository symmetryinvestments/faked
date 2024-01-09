module faked.faker_en_in;

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

class Faker_en_in : Faker_en {
@safe:
	this(int seed) {
		super(seed);
	}

	override string companySuffix() {
		const string[] strs =
		[ q"{Pvt Ltd}", q"{Limited}", q"{Ltd}", q"{and Sons}", q"{Corp}", q"{Group}", q"{Brothers}" ];

		return choice(strs, this.rnd);
	}

	override string internetDomainSuffix() {
		const string[] strs =
		[ q"{in}", q"{com}", q"{biz}", q"{info}", q"{name}", q"{net}", q"{org}", q"{co.in}" ];

		return choice(strs, this.rnd);
	}

	override string internetFreeEmail() {
		const string[] strs =
		[ q"{gmail.com}", q"{yahoo.co.in}", q"{hotmail.com}" ];

		return choice(strs, this.rnd);
	}

	override string locationCityName() {
		const string[] strs =
		[ q"{Achalpur}", q"{Achhnera}", q"{Adalaj}", q"{Adilabad}", q"{Adityapur}", q"{Adoni}", q"{Adoor}"
		, q"{Adra}", q"{Adyar}", q"{Afzalpur}", q"{Agartala}", q"{Agra}", q"{Ahmedabad}", q"{Ahmednagar}"
		, q"{Aizawl}", q"{Ajmer}", q"{Akola}", q"{Akot}", q"{Alappuzha}", q"{Aligarh}", q"{AlipurdUrban Agglomerationr}"
		, q"{Alirajpur}", q"{Allahabad}", q"{Alwar}", q"{Amalapuram}", q"{Amalner}", q"{Ambejogai}"
		, q"{Ambikapur}", q"{Amravati}", q"{Amreli}", q"{Amritsar}", q"{Amroha}", q"{Anakapalle}", q"{Anand}"
		, q"{Anantapur}", q"{Anantnag}", q"{Anjangaon}", q"{Anjar}", q"{Ankleshwar}", q"{Arakkonam}"
		, q"{Arambagh}", q"{Araria}", q"{Arrah}", q"{Arsikere}", q"{Aruppukkottai}", q"{Arvi}", q"{Arwal}"
		, q"{Asansol}", q"{Asarganj}", q"{Ashok Nagar}", q"{Athni}", q"{Attingal}", q"{Aurangabad}"
		, q"{Azamgarh}", q"{Bagaha}", q"{Bageshwar}", q"{Bahadurgarh}", q"{Baharampur}", q"{Bahraich}"
		, q"{Balaghat}", q"{Balangir}", q"{Baleshwar Town}", q"{Ballari}", q"{Balurghat}", q"{Bankura}"
		, q"{Bapatla}", q"{Baramula}", q"{Barbil}", q"{Bargarh}", q"{Barh}", q"{Baripada Town}", q"{Barmer}"
		, q"{Barnala}", q"{Barpeta}", q"{Batala}", q"{Bathinda}", q"{Begusarai}", q"{Belagavi}", q"{Bellampalle}"
		, q"{Belonia}", q"{Bengaluru}", q"{Bettiah}", q"{BhabUrban Agglomeration}", q"{Bhadrachalam}"
		, q"{Bhadrak}", q"{Bhagalpur}", q"{Bhainsa}", q"{Bharatpur}", q"{Bharuch}", q"{Bhatapara}", q"{Bhavnagar}"
		, q"{Bhawanipatna}", q"{Bheemunipatnam}", q"{Bhilai Nagar}", q"{Bhilwara}", q"{Bhimavaram}"
		, q"{Bhiwandi}", q"{Bhiwani}", q"{Bhongir}", q"{Bhopal}", q"{Bhubaneswar}", q"{Bhuj}", q"{Bikaner}"
		, q"{Bilaspur}", q"{Bobbili}", q"{Bodhan}", q"{Bokaro Steel City}", q"{Bongaigaon City}"
		, q"{Brahmapur}", q"{Buxar}", q"{Byasanagar}", q"{Chaibasa}", q"{Chalakudy}", q"{Chandausi}"
		, q"{Chandigarh}", q"{Changanassery}", q"{Charkhi Dadri}", q"{Chatra}", q"{Chennai}", q"{Cherthala}"
		, q"{Chhapra}", q"{Chikkamagaluru}", q"{Chilakaluripet}", q"{Chirala}", q"{Chirkunda}", q"{Chirmiri}"
		, q"{Chittoor}", q"{Chittur-Thathamangalam}", q"{Coimbatore}", q"{Cuttack}", q"{Dalli-Rajhara}"
		, q"{Darbhanga}", q"{Darjiling}", q"{Davanagere}", q"{Deesa}", q"{Dehradun}", q"{Dehri-on-Sone}"
		, q"{Delhi}", q"{Deoghar}", q"{Dhamtari}", q"{Dhanbad}", q"{Dharmanagar}", q"{Dharmavaram}"
		, q"{Dhenkanal}", q"{Dhoraji}", q"{Dhubri}", q"{Dhule}", q"{Dhuri}", q"{Dibrugarh}", q"{Dimapur}"
		, q"{Diphu}", q"{Dumka}", q"{Dumraon}", q"{Durg}", q"{Eluru}", q"{English Bazar}", q"{Erode}", q"{Etawah}"
		, q"{Faridabad}", q"{Faridkot}", q"{Farooqnagar}", q"{Fatehabad}", q"{Fatehpur Sikri}", q"{Fazilka}"
		, q"{Firozabad}", q"{Firozpur Cantt.}", q"{Firozpur}", q"{Forbesganj}", q"{Gadwal}", q"{Gandhinagar}"
		, q"{Gangarampur}", q"{Ganjbasoda}", q"{Gaya}", q"{Giridih}", q"{Goalpara}", q"{Gobichettipalayam}"
		, q"{Gobindgarh}", q"{Godhra}", q"{Gohana}", q"{Gokak}", q"{Gooty}", q"{Gopalganj}", q"{Gudivada}"
		, q"{Gudur}", q"{Gumia}", q"{Guntakal}", q"{Guntur}", q"{Gurdaspur}", q"{Gurgaon}", q"{Guruvayoor}"
		, q"{Guwahati}", q"{Gwalior}", q"{Habra}", q"{Hajipur}", q"{Haldwani-cum-Kathgodam}", q"{Hansi}"
		, q"{Hapur}", q"{Hardoi }", q"{Hardwar}", q"{Hazaribag}", q"{Hindupur}", q"{Hisar}", q"{Hoshiarpur}"
		, q"{Hubli-Dharwad}", q"{Hugli-Chinsurah}", q"{Hyderabad}", q"{Ichalkaranji}", q"{Imphal}"
		, q"{Indore}", q"{Itarsi}", q"{Jabalpur}", q"{Jagdalpur}", q"{Jaggaiahpet}", q"{Jagraon}", q"{Jagtial}"
		, q"{Jaipur}", q"{Jalandhar Cantt.}", q"{Jalandhar}", q"{Jalpaiguri}", q"{Jamalpur}", q"{Jammalamadugu}"
		, q"{Jammu}", q"{Jamnagar}", q"{Jamshedpur}", q"{Jamui}", q"{Jangaon}", q"{Jatani}", q"{Jehanabad}"
		, q"{Jhansi}", q"{Jhargram}", q"{Jharsuguda}", q"{Jhumri Tilaiya}", q"{Jind}", q"{Jodhpur}"
		, q"{Jorhat}", q"{Kadapa}", q"{Kadi}", q"{Kadiri}", q"{Kagaznagar}", q"{Kailasahar}", q"{Kaithal}"
		, q"{Kakinada}", q"{Kalimpong}", q"{Kalpi}", q"{Kalyan-Dombivali}", q"{Kamareddy}", q"{Kancheepuram}"
		, q"{Kandukur}", q"{Kanhangad}", q"{Kannur}", q"{Kanpur}", q"{Kapadvanj}", q"{Kapurthala}", q"{Karaikal}"
		, q"{Karimganj}", q"{Karimnagar}", q"{Karjat}", q"{Karnal}", q"{Karur}", q"{Karwar}", q"{Kasaragod}"
		, q"{Kashipur}", q"{KathUrban Agglomeration}", q"{Katihar}", q"{Kavali}", q"{Kayamkulam}"
		, q"{Kendrapara}", q"{Kendujhar}", q"{Keshod}", q"{Khair}", q"{Khambhat}", q"{Khammam}", q"{Khanna}"
		, q"{Kharagpur}", q"{Kharar}", q"{Khowai}", q"{Kishanganj}", q"{Kochi}", q"{Kodungallur}", q"{Kohima}"
		, q"{Kolar}", q"{Kolkata}", q"{Kollam}", q"{Koratla}", q"{Korba}", q"{Kot Kapura}", q"{Kota}", q"{Kothagudem}"
		, q"{Kottayam}", q"{Kovvur}", q"{Koyilandy}", q"{Kozhikode}", q"{Kunnamkulam}", q"{Kurnool}"
		, q"{Kyathampalle}", q"{Lachhmangarh}", q"{Ladnu}", q"{Ladwa}", q"{Lahar}", q"{Laharpur}", q"{Lakheri}"
		, q"{Lakhimpur}", q"{Lakhisarai}", q"{Lakshmeshwar}", q"{Lal Gopalganj Nindaura}", q"{Lalganj}"
		, q"{Lalgudi}", q"{Lalitpur}", q"{Lalsot}", q"{Lanka}", q"{Lar}", q"{Lathi}", q"{Latur}", q"{Lilong}"
		, q"{Limbdi}", q"{Lingsugur}", q"{Loha}", q"{Lohardaga}", q"{Lonar}", q"{Lonavla}", q"{Longowal}"
		, q"{Loni}", q"{Losal}", q"{Lucknow}", q"{Ludhiana}", q"{Lumding}", q"{Lunawada}", q"{Lunglei}"
		, q"{Macherla}", q"{Machilipatnam}", q"{Madanapalle}", q"{Maddur}", q"{Madhepura}", q"{Madhubani}"
		, q"{Madhugiri}", q"{Madhupur}", q"{Madikeri}", q"{Madurai}", q"{Magadi}", q"{Mahad}", q"{Mahalingapura}"
		, q"{Maharajganj}", q"{Maharajpur}", q"{Mahasamund}", q"{Mahbubnagar}", q"{Mahe}", q"{Mahemdabad}"
		, q"{Mahendragarh}", q"{Mahesana}", q"{Mahidpur}", q"{Mahnar Bazar}", q"{Mahuva}", q"{Maihar}"
		, q"{Mainaguri}", q"{Makhdumpur}", q"{Makrana}", q"{Malaj Khand}", q"{Malappuram}", q"{Malavalli}"
		, q"{Malda}", q"{Malegaon}", q"{Malerkotla}", q"{Malkangiri}", q"{Malkapur}", q"{Malout}", q"{Malpura}"
		, q"{Malur}", q"{Manachanallur}", q"{Manasa}", q"{Manavadar}", q"{Manawar}", q"{Mancherial}"
		, q"{Mandalgarh}", q"{Mandamarri}", q"{Mandapeta}", q"{Mandawa}", q"{Mandi Dabwali}", q"{Mandi}"
		, q"{Mandideep}", q"{Mandla}", q"{Mandsaur}", q"{Mandvi}", q"{Mandya}", q"{Manendragarh}", q"{Maner}"
		, q"{Mangaldoi}", q"{Mangaluru}", q"{Mangalvedhe}", q"{Manglaur}", q"{Mangrol}", q"{Mangrulpir}"
		, q"{Manihari}", q"{Manjlegaon}", q"{Mankachar}", q"{Manmad}", q"{Mansa}", q"{Manuguru}", q"{Manvi}"
		, q"{Manwath}", q"{Mapusa}", q"{Margao}", q"{Margherita}", q"{Marhaura}", q"{Mariani}", q"{Marigaon}"
		, q"{Markapur}", q"{Marmagao}", q"{Masaurhi}", q"{Mathabhanga}", q"{Mathura}", q"{Mattannur}"
		, q"{Mauganj}", q"{Mavelikkara}", q"{Mavoor}", q"{Mayang Imphal}", q"{Medak}", q"{Medininagar (Daltonganj)}"
		, q"{Medinipur}", q"{Meerut}", q"{Mehkar}", q"{Memari}", q"{Merta City}", q"{Mhaswad}", q"{Mhow Cantonment}"
		, q"{Mhowgaon}", q"{Mihijam}", q"{Mira-Bhayandar}", q"{Mirganj}", q"{Miryalaguda}", q"{Modasa}"
		, q"{Modinagar}", q"{Moga}", q"{Mohali}", q"{Mokameh}", q"{Mokokchung}", q"{Monoharpur}", q"{Moradabad}"
		, q"{Morena}", q"{Morinda, India}", q"{Morshi}", q"{Morvi}", q"{Motihari}", q"{Motipur}", q"{Mount Abu}"
		, q"{Mudabidri}", q"{Mudalagi}", q"{Muddebihal}", q"{Mudhol}", q"{Mukerian}", q"{Mukhed}", q"{Muktsar}"
		, q"{Mul}", q"{Mulbagal}", q"{Multai}", q"{Mumbai}", q"{Mundargi}", q"{Mundi}", q"{Mungeli}", q"{Munger}"
		, q"{Murliganj}", q"{Murshidabad}", q"{Murtijapur}", q"{Murwara (Katni)}", q"{Musabani}"
		, q"{Mussoorie}", q"{Muvattupuzha}", q"{Muzaffarpur}", q"{Mysore}", q"{Nabadwip}", q"{Nabarangapur}"
		, q"{Nabha}", q"{Nadbai}", q"{Nadiad}", q"{Nagaon}", q"{Nagapattinam}", q"{Nagar}", q"{Nagari}"
		, q"{Nagarkurnool}", q"{Nagaur}", q"{Nagda}", q"{Nagercoil}", q"{Nagina}", q"{Nagla}", q"{Nagpur}"
		, q"{Nahan}", q"{Naharlagun}", q"{Naidupet}", q"{Naihati}", q"{Naila Janjgir}", q"{Nainital}"
		, q"{Nainpur}", q"{Najibabad}", q"{Nakodar}", q"{Nakur}", q"{Nalbari}", q"{Namagiripettai}"
		, q"{Namakkal}", q"{Nanded-Waghala}", q"{Nandgaon}", q"{Nandivaram-Guduvancheri}", q"{Nandura}"
		, q"{Nandurbar}", q"{Nandyal}", q"{Nangal}", q"{Nanjangud}", q"{Nanjikottai}", q"{Nanpara}"
		, q"{Narasapuram}", q"{Narasaraopet}", q"{Naraura}", q"{Narayanpet}", q"{Nargund}", q"{Narkatiaganj}"
		, q"{Narkhed}", q"{Narnaul}", q"{Narsinghgarh}", q"{Narsipatnam}", q"{Narwana}", q"{Nashik}"
		, q"{Nasirabad}", q"{Natham}", q"{Nathdwara}", q"{Naugachhia}", q"{Naugawan Sadat}", q"{Nautanwa}"
		, q"{Navalgund}", q"{Navsari}", q"{Nawabganj}", q"{Nawada}", q"{Nawanshahr}", q"{Nawapur}", q"{Nedumangad}"
		, q"{Neem-Ka-Thana}", q"{Neemuch}", q"{Nehtaur}", q"{Nelamangala}", q"{Nellikuppam}", q"{Nellore}"
		, q"{Nepanagar}", q"{New Delhi}", q"{Neyveli (TS)}", q"{Neyyattinkara}", q"{Nidadavole}"
		, q"{Nilambur}", q"{Nilanga}", q"{Nimbahera}", q"{Nirmal}", q"{Niwai}", q"{Niwari}", q"{Nizamabad}"
		, q"{Nohar}", q"{Noida}", q"{Nokha}", q"{Nongstoin}", q"{Noorpur}", q"{North Lakhimpur}", q"{Nowgong}"
		, q"{Nowrozabad (Khodargama)}", q"{Nuzvid}", q"{O' Valley}", q"{Obra}", q"{Oddanchatram}"
		, q"{Ongole}", q"{Orai}", q"{Osmanabad}", q"{Ottappalam}", q"{Ozar}", q"{P.N.Patti}", q"{Pachora}"
		, q"{Pachore}", q"{Pacode}", q"{Padmanabhapuram}", q"{Padra}", q"{Padrauna}", q"{Paithan}", q"{Pakaur}"
		, q"{Palacole}", q"{Palai}", q"{Palakkad}", q"{Palampur}", q"{Palani}", q"{Palanpur}", q"{Palasa Kasibugga}"
		, q"{Palghar}", q"{Pali}", q"{Palia Kalan}", q"{Palitana}", q"{Palladam}", q"{Pallapatti}", q"{Pallikonda}"
		, q"{Palwal}", q"{Palwancha}", q"{Panagar}", q"{Panagudi}", q"{Panaji}", q"{Panamattom}", q"{Panchkula}"
		, q"{Panchla}", q"{Pandharkaoda}", q"{Pandharpur}", q"{Pandhurna}", q"{PandUrban Agglomeration}"
		, q"{Panipat}", q"{Panna}", q"{Panniyannur}", q"{Panruti}", q"{Panvel}", q"{Pappinisseri}", q"{Paradip}"
		, q"{Paramakudi}", q"{Parangipettai}", q"{Parasi}", q"{Paravoor}", q"{Parbhani}", q"{Pardi}"
		, q"{Parlakhemundi}", q"{Parli}", q"{Partur}", q"{Parvathipuram}", q"{Pasan}", q"{Paschim Punropara}"
		, q"{Pasighat}", q"{Patan}", q"{Pathanamthitta}", q"{Pathankot}", q"{Pathardi}", q"{Pathri}"
		, q"{Patiala}", q"{Patna}", q"{Patratu}", q"{Pattamundai}", q"{Patti}", q"{Pattran}", q"{Pattukkottai}"
		, q"{Patur}", q"{Pauni}", q"{Pauri}", q"{Pavagada}", q"{Pedana}", q"{Peddapuram}", q"{Pehowa}"
		, q"{Pen}", q"{Perambalur}", q"{Peravurani}", q"{Peringathur}", q"{Perinthalmanna}", q"{Periyakulam}"
		, q"{Periyasemur}", q"{Pernampattu}", q"{Perumbavoor}", q"{Petlad}", q"{Phagwara}", q"{Phalodi}"
		, q"{Phaltan}", q"{Phillaur}", q"{Phulabani}", q"{Phulera}", q"{Phulpur}", q"{Phusro}", q"{Pihani}"
		, q"{Pilani}", q"{Pilibanga}", q"{Pilibhit}", q"{Pilkhuwa}", q"{Pindwara}", q"{Pinjore}", q"{Pipar City}"
		, q"{Pipariya}", q"{Piriyapatna}", q"{Piro}", q"{Pithampur}", q"{Pithapuram}", q"{Pithoragarh}"
		, q"{Pollachi}", q"{Polur}", q"{Pondicherry}", q"{Ponnani}", q"{Ponneri}", q"{Ponnur}", q"{Porbandar}"
		, q"{Porsa}", q"{Port Blair}", q"{Powayan}", q"{Prantij}", q"{Pratapgarh}", q"{Prithvipur}"
		, q"{Proddatur}", q"{Pudukkottai}", q"{Pudupattinam}", q"{Pukhrayan}", q"{Pulgaon}", q"{Puliyankudi}"
		, q"{Punalur}", q"{Punch}", q"{Pune}", q"{Punganur}", q"{Punjaipugalur}", q"{Puranpur}", q"{Puri}"
		, q"{Purna}", q"{Purnia}", q"{PurqUrban Agglomerationzi}", q"{Purulia}", q"{Purwa}", q"{Pusad}"
		, q"{Puthuppally}", q"{Puttur}", q"{Qadian}", q"{Raayachuru}", q"{Rabkavi Banhatti}", q"{Radhanpur}"
		, q"{Rae Bareli}", q"{Rafiganj}", q"{Raghogarh-Vijaypur}", q"{Raghunathganj}", q"{Raghunathpur}"
		, q"{Rahatgarh}", q"{Rahuri}", q"{Raiganj}", q"{Raigarh}", q"{Raikot}", q"{Raipur}", q"{Rairangpur}"
		, q"{Raisen}", q"{Raisinghnagar}", q"{Rajagangapur}", q"{Rajahmundry}", q"{Rajakhera}", q"{Rajaldesar}"
		, q"{Rajam}", q"{Rajampet}", q"{Rajapalayam}", q"{Rajauri}", q"{Rajgarh (Alwar)}", q"{Rajgarh (Churu)}"
		, q"{Rajgarh}", q"{Rajgir}", q"{Rajkot}", q"{Rajnandgaon}", q"{Rajpipla}", q"{Rajpura}", q"{Rajsamand}"
		, q"{Rajula}", q"{Rajura}", q"{Ramachandrapuram}", q"{Ramagundam}", q"{Ramanagaram}", q"{Ramanathapuram}"
		, q"{Ramdurg}", q"{Rameshwaram}", q"{Ramganj Mandi}", q"{Ramgarh}", q"{Ramnagar}", q"{Ramngarh}"
		, q"{Rampur Maniharan}", q"{Rampur}", q"{Rampura Phul}", q"{Rampurhat}", q"{Ramtek}", q"{Ranaghat}"
		, q"{Ranavav}", q"{Ranchi}", q"{Ranebennuru}", q"{Rangia}", q"{Rania}", q"{Ranibennur}", q"{Ranipet}"
		, q"{Rapar}", q"{Rasipuram}", q"{Rasra}", q"{Ratangarh}", q"{Rath}", q"{Ratia}", q"{Ratlam}", q"{Ratnagiri}"
		, q"{Rau}", q"{Raurkela}", q"{Raver}", q"{Rawatbhata}", q"{Rawatsar}", q"{Raxaul Bazar}", q"{Rayachoti}"
		, q"{Rayadurg}", q"{Rayagada}", q"{Reengus}", q"{Rehli}", q"{Renigunta}", q"{Renukoot}", q"{Reoti}"
		, q"{Repalle}", q"{Revelganj}", q"{Rewa}", q"{Rewari}", q"{Rishikesh}", q"{Risod}", q"{Robertsganj}"
		, q"{Robertson Pet}", q"{Rohtak}", q"{Ron}", q"{Roorkee}", q"{Rosera}", q"{Rudauli}", q"{Rudrapur}"
		, q"{Rupnagar}", q"{Sabalgarh}", q"{Sadabad}", q"{Sadalagi}", q"{Sadasivpet}", q"{Sadri}", q"{Sadulpur}"
		, q"{Sadulshahar}", q"{Safidon}", q"{Safipur}", q"{Sagar}", q"{Sagara}", q"{Sagwara}", q"{Saharanpur}"
		, q"{Saharsa}", q"{Sahaspur}", q"{Sahaswan}", q"{Sahawar}", q"{Sahibganj}", q"{Sahjanwa}", q"{Saidpur}"
		, q"{Saiha}", q"{Sailu}", q"{Sainthia}", q"{Sakaleshapura}", q"{Sakti}", q"{Salaya}", q"{Salem}"
		, q"{Salur}", q"{Samalkha}", q"{Samalkot}", q"{Samana}", q"{Samastipur}", q"{Sambalpur}", q"{Sambhal}"
		, q"{Sambhar}", q"{Samdhan}", q"{Samthar}", q"{Sanand}", q"{Sanawad}", q"{Sanchore}", q"{Sandi}"
		, q"{Sandila}", q"{Sanduru}", q"{Sangamner}", q"{Sangareddy}", q"{Sangaria}", q"{Sangli}", q"{Sangole}"
		, q"{Sangrur}", q"{Sankarankovil}", q"{Sankari}", q"{Sankeshwara}", q"{Santipur}", q"{Sarangpur}"
		, q"{Sardarshahar}", q"{Sardhana}", q"{Sarni}", q"{Sarsod}", q"{Sasaram}", q"{Sasvad}", q"{Satana}"
		, q"{Satara}", q"{Sathyamangalam}", q"{Satna}", q"{Sattenapalle}", q"{Sattur}", q"{Saunda}"
		, q"{Saundatti-Yellamma}", q"{Sausar}", q"{Savanur}", q"{Savarkundla}", q"{Savner}", q"{Sawai Madhopur}"
		, q"{Sawantwadi}", q"{Sedam}", q"{Sehore}", q"{Sendhwa}", q"{Seohara}", q"{Seoni}", q"{Seoni-Malwa}"
		, q"{Shahabad}", q"{Shahabad, Hardoi}", q"{Shahabad, Rampur}", q"{Shahade}", q"{Shahbad}"
		, q"{Shahdol}", q"{Shahganj}", q"{Shahjahanpur}", q"{Shahpur}", q"{Shahpura}", q"{Shajapur}"
		, q"{Shamgarh}", q"{Shamli}", q"{Shamsabad, Agra}", q"{Shamsabad, Farrukhabad}", q"{Shegaon}"
		, q"{Sheikhpura}", q"{Shendurjana}", q"{Shenkottai}", q"{Sheoganj}", q"{Sheohar}", q"{Sheopur}"
		, q"{Sherghati}", q"{Sherkot}", q"{Shiggaon}", q"{Shikaripur}", q"{Shikarpur, Bulandshahr}"
		, q"{Shikohabad}", q"{Shillong}", q"{Shimla}", q"{Shirdi}", q"{Shirpur-Warwade}", q"{Shirur}"
		, q"{Shishgarh}", q"{Shivamogga}", q"{Shivpuri}", q"{Sholavandan}", q"{Sholingur}", q"{Shoranur}"
		, q"{Shrigonda}", q"{Shrirampur}", q"{Shrirangapattana}", q"{Shujalpur}", q"{Siana}", q"{Sibsagar}"
		, q"{Siddipet}", q"{Sidhi}", q"{Sidhpur}", q"{Sidlaghatta}", q"{Sihor}", q"{Sihora}", q"{Sikanderpur}"
		, q"{Sikandra Rao}", q"{Sikandrabad}", q"{Sikar}", q"{Silao}", q"{Silapathar}", q"{Silchar}"
		, q"{Siliguri}", q"{Sillod}", q"{Silvassa}", q"{Simdega}", q"{Sindagi}", q"{Sindhagi}", q"{Sindhnur}"
		, q"{Singrauli}", q"{Sinnar}", q"{Sira}", q"{Sircilla}", q"{Sirhind Fatehgarh Sahib}", q"{Sirkali}"
		, q"{Sirohi}", q"{Sironj}", q"{Sirsa}", q"{Sirsaganj}", q"{Sirsi}", q"{Siruguppa}", q"{Sitamarhi}"
		, q"{Sitapur}", q"{Sitarganj}", q"{Sivaganga}", q"{Sivagiri}", q"{Sivakasi}", q"{Siwan}", q"{Sohagpur}"
		, q"{Sohna}", q"{Sojat}", q"{Solan}", q"{Solapur}", q"{Sonamukhi}", q"{Sonepur}", q"{Songadh}"
		, q"{Sonipat}", q"{Sopore}", q"{Soro}", q"{Soron}", q"{Soyagaon}", q"{Sri Madhopur}", q"{Srikakulam}"
		, q"{Srikalahasti}", q"{Srinagar}", q"{Srinivaspur}", q"{Srirampore}", q"{Srisailam Project (Right Flank Colony) Township}"
		, q"{Srivilliputhur}", q"{Sugauli}", q"{Sujangarh}", q"{Sujanpur}", q"{Sullurpeta}", q"{Sultanganj}"
		, q"{Sultanpur}", q"{Sumerpur}", q"{Sunabeda}", q"{Sunam}", q"{Sundargarh}", q"{Sundarnagar}"
		, q"{Supaul}", q"{Surandai}", q"{Surapura}", q"{Surat}", q"{Suratgarh}", q"{SUrban Agglomerationr}"
		, q"{Suri}", q"{Suriyampalayam}", q"{Suryapet}", q"{Tadepalligudem}", q"{Tadpatri}", q"{Takhatgarh}"
		, q"{Taki}", q"{Talaja}", q"{Talcher}", q"{Talegaon Dabhade}", q"{Talikota}", q"{Taliparamba}"
		, q"{Talode}", q"{Talwara}", q"{Tamluk}", q"{Tanda}", q"{Tandur}", q"{Tanuku}", q"{Tarakeswar}"
		, q"{Tarana}", q"{Taranagar}", q"{Taraori}", q"{Tarbha}", q"{Tarikere}", q"{Tarn Taran}", q"{Tasgaon}"
		, q"{Tehri}", q"{Tekkalakote}", q"{Tenali}", q"{Tenkasi}", q"{Tenu dam-cum-Kathhara}", q"{Terdal}"
		, q"{Tezpur}", q"{Thakurdwara}", q"{Thammampatti}", q"{Thana Bhawan}", q"{Thane}", q"{Thanesar}"
		, q"{Thangadh}", q"{Thanjavur}", q"{Tharad}", q"{Tharamangalam}", q"{Tharangambadi}", q"{Theni Allinagaram}"
		, q"{Thirumangalam}", q"{Thirupuvanam}", q"{Thiruthuraipoondi}", q"{Thiruvalla}", q"{Thiruvallur}"
		, q"{Thiruvananthapuram}", q"{Thiruvarur}", q"{Thodupuzha}", q"{Thoubal}", q"{Thrissur}"
		, q"{Thuraiyur}", q"{Tikamgarh}", q"{Tilda Newra}", q"{Tilhar}", q"{Tindivanam}", q"{Tinsukia}"
		, q"{Tiptur}", q"{Tirora}", q"{Tiruchendur}", q"{Tiruchengode}", q"{Tiruchirappalli}", q"{Tirukalukundram}"
		, q"{Tirukkoyilur}", q"{Tirunelveli}", q"{Tirupathur}", q"{Tirupati}", q"{Tiruppur}", q"{Tirur}"
		, q"{Tiruttani}", q"{Tiruvannamalai}", q"{Tiruvethipuram}", q"{Tiruvuru}", q"{Tirwaganj}"
		, q"{Titlagarh}", q"{Tittakudi}", q"{Todabhim}", q"{Todaraisingh}", q"{Tohana}", q"{Tonk}", q"{Tuensang}"
		, q"{Tuljapur}", q"{Tulsipur}", q"{Tumkur}", q"{Tumsar}", q"{Tundla}", q"{Tuni}", q"{Tura}", q"{Uchgaon}"
		, q"{Udaipur}", q"{Udaipurwati}", q"{Udgir}", q"{Udhagamandalam}", q"{Udhampur}", q"{Udumalaipettai}"
		, q"{Udupi}", q"{Ujhani}", q"{Ujjain}", q"{Umarga}", q"{Umaria}", q"{Umarkhed}", q"{Umbergaon}"
		, q"{Umred}", q"{Umreth}", q"{Una}", q"{Unjha}", q"{Unnamalaikadai}", q"{Unnao}", q"{Upleta}", q"{Uran Islampur}"
		, q"{Uran}", q"{Uravakonda}", q"{Urmar Tanda}", q"{Usilampatti}", q"{Uthamapalayam}", q"{Uthiramerur}"
		, q"{Utraula}", q"{Vadakkuvalliyur}", q"{Vadalur}", q"{Vadgaon Kasba}", q"{Vadipatti}", q"{Vadnagar}"
		, q"{Vadodara}", q"{Vaijapur}", q"{Vaikom}", q"{Valparai}", q"{Valsad}", q"{Vandavasi}", q"{Vaniyambadi}"
		, q"{Vapi}", q"{Varanasi}", q"{Varkala}", q"{Vasai-Virar}", q"{Vatakara}", q"{Vedaranyam}", q"{Vellakoil}"
		, q"{Vellore}", q"{Venkatagiri}", q"{Veraval}", q"{Vidisha}", q"{Vijainagar, Ajmer}", q"{Vijapur}"
		, q"{Vijayapura}", q"{Vijayawada}", q"{Vijaypur}", q"{Vikarabad}", q"{Vikramasingapuram}"
		, q"{Viluppuram}", q"{Vinukonda}", q"{Viramgam}", q"{Virudhachalam}", q"{Virudhunagar}", q"{Visakhapatnam}"
		, q"{Visnagar}", q"{Viswanatham}", q"{Vita}", q"{Vizianagaram}", q"{Vrindavan}", q"{Vyara}"
		, q"{Wadgaon Road}", q"{Wadhwan}", q"{Wadi}", q"{Wai}", q"{Wanaparthy}", q"{Wani}", q"{Wankaner}"
		, q"{Wara Seoni}", q"{Warangal}", q"{Wardha}", q"{Warhapur}", q"{Warisaliganj}", q"{Warora}"
		, q"{Warud}", q"{Washim}", q"{Wokha}", q"{Yadgir}", q"{Yamunanagar}", q"{Yanam}", q"{Yavatmal}"
		, q"{Yawal}", q"{Yellandu}", q"{Yemmiganur}", q"{Yerraguntla}", q"{Yevla}", q"{Zaidpur}", q"{Zamania}"
		, q"{Zira}", q"{Zirakpur}", q"{Zunheboto}" ];

		return choice(strs, this.rnd);
	}

	override string locationCityPattern() {
		switch(uniform(0, 1, this.rnd)) {
			case 0: return locationCityName();
		}
		return "";
	}

	override string locationDefaultCountry() {
		const string[] strs =
		[ q"{India}", q"{Indian Republic}", q"{Bharat}", q"{Hindustan}" ];

		return choice(strs, this.rnd);
	}

	override string locationPostcode() {
		const string[] strs =
		[ q"{### ###}" ];

		return numberBuild(choice(strs, this.rnd));
	}

	override string locationState() {
		const string[] strs =
		[ q"{Andaman and Nicobar Islands}", q"{Andra Pradesh}", q"{Arunachal Pradesh}", q"{Assam}"
		, q"{Bihar}", q"{Chandigarh}", q"{Chhattisgarh}", q"{Dadar and Nagar Haveli}", q"{Daman and Diu}"
		, q"{Delhi}", q"{Goa}", q"{Gujarat}", q"{Haryana}", q"{Himachal Pradesh}", q"{Jammu and Kashmir}"
		, q"{Jharkhand}", q"{Karnataka}", q"{Kerala}", q"{Lakshadweep}", q"{Madya Pradesh}", q"{Maharashtra}"
		, q"{Manipur}", q"{Meghalaya}", q"{Mizoram}", q"{Nagaland}", q"{Odisha}", q"{Pondicherr}", q"{Punjab}"
		, q"{Rajasthan}", q"{Sikkim}", q"{Tamil Nadu}", q"{Telangana}", q"{Tripura}", q"{Uttar Pradesh}"
		, q"{Uttarakhand}", q"{West Bengal}" ];

		return choice(strs, this.rnd);
	}

	override string locationStateAbbr() {
		const string[] strs =
		[ q"{AN}", q"{AP}", q"{AR}", q"{AS}", q"{BR}", q"{CH}", q"{CG}", q"{DN}", q"{DD}", q"{DL}", q"{GA}", q"{GJ}", q"{HR}"
		, q"{HP}", q"{JK}", q"{JH}", q"{KA}", q"{KL}", q"{LD}", q"{MP}", q"{MH}", q"{MN}", q"{ML}", q"{MZ}", q"{NL}", q"{OD}"
		, q"{PY}", q"{PB}", q"{RJ}", q"{SK}", q"{TN}", q"{TS}", q"{TR}", q"{UP}", q"{UK}", q"{WB}" ];

		return choice(strs, this.rnd);
	}

	override string locationStreetPattern() {
		switch(uniform(0, 2, this.rnd)) {
			case 0: return personFirstName() ~ " " ~ locationStreetSuffix();
			case 1: return personLastName() ~ " " ~ locationStreetSuffix();
		}
		return "";
	}

	override string personFemaleFirstName() {
		const string[] strs =
		[ q"{Aadrika}", q"{Aanandinii}", q"{Aaratrika}", q"{Aarya}", q"{Arya}", q"{Aashritha}", q"{Aatmaja}"
		, q"{Atmaja}", q"{Abhaya}", q"{Adwitiya}", q"{Agrata}", q"{Ahilya}", q"{Ahalya}", q"{Aishani}"
		, q"{Akshainie}", q"{Akshata}", q"{Akshita}", q"{Akula}", q"{Ambar}", q"{Amodini}", q"{Amrita}"
		, q"{Amritambu}", q"{Anala}", q"{Anamika}", q"{Ananda}", q"{Anandamayi}", q"{Ananta}", q"{Anila}"
		, q"{Anjali}", q"{Anjushri}", q"{Anjushree}", q"{Annapurna}", q"{Anshula}", q"{Anuja}", q"{Anusuya}"
		, q"{Anasuya}", q"{Anasooya}", q"{Anwesha}", q"{Apsara}", q"{Aruna}", q"{Asha}", q"{Aasa}", q"{Aasha}"
		, q"{Aslesha}", q"{Atreyi}", q"{Atreyee}", q"{Avani}", q"{Abani}", q"{Avantika}", q"{Ayushmati}"
		, q"{Baidehi}", q"{Vaidehi}", q"{Bala}", q"{Baala}", q"{Balamani}", q"{Basanti}", q"{Vasanti}"
		, q"{Bela}", q"{Bhadra}", q"{Bhagirathi}", q"{Bhagwanti}", q"{Bhagwati}", q"{Bhamini}", q"{Bhanumati}"
		, q"{Bhaanumati}", q"{Bhargavi}", q"{Bhavani}", q"{Bhilangana}", q"{Bilwa}", q"{Bilva}", q"{Buddhana}"
		, q"{Chakrika}", q"{Chanda}", q"{Chandi}", q"{Chandni}", q"{Chandini}", q"{Chandani}", q"{Chandra}"
		, q"{Chandira}", q"{Chandrabhaga}", q"{Chandrakala}", q"{Chandrakin}", q"{Chandramani}", q"{Chandrani}"
		, q"{Chandraprabha}", q"{Chandraswaroopa}", q"{Chandravati}", q"{Chapala}", q"{Charumati}"
		, q"{Charvi}", q"{Chatura}", q"{Chitrali}", q"{Chitramala}", q"{Chitrangada}", q"{Daksha}", q"{Dakshayani}"
		, q"{Damayanti}", q"{Darshwana}", q"{Deepali}", q"{Dipali}", q"{Deeptimoyee}", q"{Deeptimayee}"
		, q"{Devangana}", q"{Devani}", q"{Devasree}", q"{Devi}", q"{Daevi}", q"{Devika}", q"{Daevika}"
		, q"{Dhaanyalakshmi}", q"{Dhanalakshmi}", q"{Dhana}", q"{Dhanadeepa}", q"{Dhara}", q"{Dharani}"
		, q"{Dharitri}", q"{Dhatri}", q"{Diksha}", q"{Deeksha}", q"{Divya}", q"{Draupadi}", q"{Dulari}"
		, q"{Durga}", q"{Durgeshwari}", q"{Ekaparnika}", q"{Elakshi}", q"{Enakshi}", q"{Esha}", q"{Eshana}"
		, q"{Eshita}", q"{Gautami}", q"{Gayatri}", q"{Geeta}", q"{Geetanjali}", q"{Gitanjali}", q"{Gemine}"
		, q"{Gemini}", q"{Girja}", q"{Girija}", q"{Gita}", q"{Hamsini}", q"{Harinakshi}", q"{Harita}", q"{Heema}"
		, q"{Himadri}", q"{Himani}", q"{Hiranya}", q"{Indira}", q"{Jaimini}", q"{Jaya}", q"{Jyoti}", q"{Jyotsana}"
		, q"{Kali}", q"{Kalinda}", q"{Kalpana}", q"{Kalyani}", q"{Kama}", q"{Kamala}", q"{Kamla}", q"{Kanchan}"
		, q"{Kanishka}", q"{Kanti}", q"{Kashyapi}", q"{Kumari}", q"{Kumuda}", q"{Lakshmi}", q"{Laxmi}"
		, q"{Lalita}", q"{Lavanya}", q"{Leela}", q"{Lila}", q"{Madhuri}", q"{Malti}", q"{Malati}", q"{Mandakini}"
		, q"{Mandaakin}", q"{Mangala}", q"{Mangalya}", q"{Mani}", q"{Manisha}", q"{Manjusha}", q"{Meena}"
		, q"{Mina}", q"{Meenakshi}", q"{Minakshi}", q"{Menka}", q"{Menaka}", q"{Mohana}", q"{Mohini}", q"{Nalini}"
		, q"{Nikita}", q"{Ojaswini}", q"{Omana}", q"{Oormila}", q"{Urmila}", q"{Opalina}", q"{Opaline}"
		, q"{Padma}", q"{Parvati}", q"{Poornima}", q"{Purnima}", q"{Pramila}", q"{Prasanna}", q"{Preity}"
		, q"{Prema}", q"{Priya}", q"{Priyala}", q"{Pushti}", q"{Radha}", q"{Rageswari}", q"{Rageshwari}"
		, q"{Rajinder}", q"{Ramaa}", q"{Rati}", q"{Rita}", q"{Rohana}", q"{Rukhmani}", q"{Rukmin}", q"{Rupinder}"
		, q"{Sanya}", q"{Sarada}", q"{Sharda}", q"{Sarala}", q"{Sarla}", q"{Saraswati}", q"{Sarisha}", q"{Saroja}"
		, q"{Shakti}", q"{Shakuntala}", q"{Shanti}", q"{Sharmila}", q"{Shashi}", q"{Shashikala}", q"{Sheela}"
		, q"{Shivakari}", q"{Shobhana}", q"{Shresth}", q"{Shresthi}", q"{Shreya}", q"{Shreyashi}", q"{Shridevi}"
		, q"{Shrishti}", q"{Shubha}", q"{Shubhaprada}", q"{Siddhi}", q"{Sitara}", q"{Sloka}", q"{Smita}"
		, q"{Smriti}", q"{Soma}", q"{Subhashini}", q"{Subhasini}", q"{Sucheta}", q"{Sudeva}", q"{Sujata}"
		, q"{Sukanya}", q"{Suma}", q"{Sumitra}", q"{Sunita}", q"{Suryakantam}", q"{Sushma}", q"{Swara}"
		, q"{Swarnalata}", q"{Sweta}", q"{Shwet}", q"{Tanirika}", q"{Tanushree}", q"{Tanushri}", q"{Tanya}"
		, q"{Tara}", q"{Trisha}", q"{Uma}", q"{Usha}", q"{Vaijayanti}", q"{Vaijayanthi}", q"{Baijayanti}"
		, q"{Vaishvi}", q"{Vaishnavi}", q"{Vaishno}", q"{Varalakshmi}", q"{Vasudha}", q"{Vasundhara}"
		, q"{Veda}", q"{Vedanshi}", q"{Vidya}", q"{Vimala}", q"{Vrinda}", q"{Vrund}" ];

		return choice(strs, this.rnd);
	}

	override string personFirstName() {
		const string[] strs =
		[ q"{Aadi}", q"{Aadidev}", q"{Aadinath}", q"{Aaditya}", q"{Aadrika}", q"{Aagam}", q"{Aagney}", q"{Aagneya}"
		, q"{Aalok}", q"{Aamod}", q"{Aanand}", q"{Aanandaswarup}", q"{Aanandinii}", q"{Aanjaneya}", q"{Aaratrika}"
		, q"{Aarya}", q"{Aaryan}", q"{Aasa}", q"{Aasha}", q"{Aashritha}", q"{Aatmaj}", q"{Aatmaja}", q"{Aatreya}"
		, q"{Aayushmaan}", q"{Aayushman}", q"{Abani}", q"{Abhaidev}", q"{Abhaya}", q"{Abhirath}", q"{Abhisyanta}"
		, q"{Acaryatanaya}", q"{Achalesvara}", q"{Acharyanandana}", q"{Acharyasuta}", q"{Achintya}"
		, q"{Achyut}", q"{Adheesh}", q"{Adhiraj}", q"{Adhrit}", q"{Adikavi}", q"{Adinath}", q"{Aditeya}"
		, q"{Aditya}", q"{Adityanandan}", q"{Adityanandana}", q"{Adripathi}", q"{Advaya}", q"{Adwitiya}"
		, q"{Agasti}", q"{Agastya}", q"{Agneya}", q"{Agnimitra}", q"{Agniprava}", q"{Agnivesh}", q"{Agrata}"
		, q"{Ahalya}", q"{Ahilya}", q"{Aishani}", q"{Ajeet}", q"{Ajit}", q"{Akroor}", q"{Akshainie}", q"{Akshaj}"
		, q"{Akshat}", q"{Akshata}", q"{Akshayakeerti}", q"{Akshita}", q"{Akula}", q"{Alok}", q"{Amaranaath}"
		, q"{Amaresh}", q"{Amarnath}", q"{Ambar}", q"{Ameyatma}", q"{Amish}", q"{Amodini}", q"{Amogh}"
		, q"{Amrit}", q"{Amrita}", q"{Amritambu}", q"{Anaadi}", q"{Anagh}", q"{Anal}", q"{Anala}", q"{Anamika}"
		, q"{Anand}", q"{Anand Swarup}", q"{Ananda}", q"{Anandamayi}", q"{Anang}", q"{Ananta}", q"{Anasooya}"
		, q"{Anasuya}", q"{Anil}", q"{Anila}", q"{Anilaabh}", q"{Anilabh}", q"{Anish}", q"{Anjali}", q"{Anjaneya}"
		, q"{Anjushree}", q"{Anjushri}", q"{Ankal}", q"{Annapurna}", q"{Anshula}", q"{Anuja}", q"{Anunay}"
		, q"{Anuraag}", q"{Anurag}", q"{Anusuya}", q"{Anwesha}", q"{Apsara}", q"{Archan}", q"{Arindam}"
		, q"{Arjun}", q"{Arnesh}", q"{Arun}", q"{Aruna}", q"{Arya}", q"{Aryan}", q"{Asha}", q"{Ashlesh}", q"{Ashok}"
		, q"{Aslesha}", q"{Atmaja}", q"{Atmanand}", q"{Atmananda}", q"{Atreyee}", q"{Atreyi}", q"{Avadhesh}"
		, q"{Avani}", q"{Avantika}", q"{Ayushmati}", q"{Baala}", q"{Baalaaditya}", q"{Baalagopaal}"
		, q"{Bahula}", q"{Baidehi}", q"{Baijayanti}", q"{Bakula}", q"{Bala}", q"{Balaaditya}", q"{Balachandra}"
		, q"{Baladitya}", q"{Balagopal}", q"{Balagovind}", q"{Balamani}", q"{Balgopal}", q"{Bandhu}"
		, q"{Bandhul}", q"{Bankim}", q"{Bankimchandra}", q"{Basanti}", q"{Bela}", q"{Bhaanumati}", q"{Bhaasvan}"
		, q"{Bhaaswar}", q"{Bhadra}", q"{Bhadrak}", q"{Bhadraksh}", q"{Bhadran}", q"{Bhagavaan}", q"{Bhagirathi}"
		, q"{Bhagvan}", q"{Bhagwanti}", q"{Bhagwati}", q"{Bhamini}", q"{Bhanumati}", q"{Bharadwaj}"
		, q"{Bharat}", q"{Bhardwaj}", q"{Bhargava}", q"{Bhargavi}", q"{Bhasvan}", q"{Bhaswar}", q"{Bhaumik}"
		, q"{Bhavani}", q"{Bhaves}", q"{Bheeshma}", q"{Bhilangana}", q"{Bhima}", q"{Bhisham}", q"{Bhishma}"
		, q"{Bhoj}", q"{Bhoopat}", q"{Bhoopati}", q"{Bhooshan}", q"{Bhooshit}", q"{Bhramar}", q"{Bhudev}"
		, q"{Bhudeva}", q"{Bhupati}", q"{Bhupen}", q"{Bhushan}", q"{Bhushit}", q"{Bhuvanesh}", q"{Bhuvaneshwar}"
		, q"{Bilva}", q"{Bilwa}", q"{Birjesh}", q"{Bishnu}", q"{Bodhan}", q"{Brahma}", q"{Brahmaanand}"
		, q"{Brahmabrata}", q"{Brahmanandam}", q"{Brahmdev}", q"{Brajendra}", q"{Brajesh}", q"{Brijesh}"
		, q"{Buddhana}", q"{Budhil}", q"{Chaanakya}", q"{Chaaruchandra}", q"{Chaitan}", q"{Chakor}"
		, q"{Chakradhar}", q"{Chakravartee}", q"{Chakravarti}", q"{Chakrika}", q"{Chanakya}", q"{Chanda}"
		, q"{Chandak}", q"{Chandan}", q"{Chandani}", q"{Chandi}", q"{Chandini}", q"{Chandira}", q"{Chandni}"
		, q"{Chandra}", q"{Chandraayan}", q"{Chandrabhaga}", q"{Chandrabhan}", q"{Chandradev}", q"{Chandrakala}"
		, q"{Chandraketu}", q"{Chandrakin}", q"{Chandramani}", q"{Chandramauli}", q"{Chandramohan}"
		, q"{Chandran}", q"{Chandranath}", q"{Chandrani}", q"{Chandraprabha}", q"{Chandraswaroopa}"
		, q"{Chandravati}", q"{Chapal}", q"{Chapala}", q"{Charak}", q"{Charuchandra}", q"{Charumati}"
		, q"{Charuvrat}", q"{Charvi}", q"{Chaten}", q"{Chatur}", q"{Chatura}", q"{Chaturaanan}", q"{Chaturbhuj}"
		, q"{Chetan}", q"{Chetanaanand}", q"{Chidaakaash}", q"{Chidaatma}", q"{Chidambar}", q"{Chidambaram}"
		, q"{Chidananda}", q"{Chinmayanand}", q"{Chinmayananda}", q"{Chiranjeev}", q"{Chiranjeeve}"
		, q"{Chitraksh}", q"{Chitrali}", q"{Chitramala}", q"{Chitrangada}", q"{Daevi}", q"{Daevika}"
		, q"{Daiwik}", q"{Daksha}", q"{Dakshayani}", q"{Damayanti}", q"{Damodara}", q"{Dandak}", q"{Dandapaani}"
		, q"{Darshan}", q"{Darshwana}", q"{Datta}", q"{Dayaamay}", q"{Dayaananda}", q"{Dayaanidhi}"
		, q"{Dayamayee}", q"{Deb}", q"{Deeksha}", q"{Deenabandhu}", q"{Deepali}", q"{Deepan}", q"{Deepankar}"
		, q"{Deependra}", q"{Deepesh}", q"{Deeptanshu}", q"{Deeptendu}", q"{Deeptiman}", q"{Deeptimay}"
		, q"{Deeptimayee}", q"{Deeptimoy}", q"{Deeptimoyee}", q"{Deevakar}", q"{Dev}", q"{Devadatt}"
		, q"{Devagya}", q"{Devajyoti}", q"{Devak}", q"{Devangana}", q"{Devani}", q"{Devasree}", q"{Devdan}"
		, q"{Deven}", q"{Devesh}", q"{Deveshwar}", q"{Devi}", q"{Devika}", q"{Devvrat}", q"{Dhaanyalakshmi}"
		, q"{Dhana}", q"{Dhanadeepa}", q"{Dhanalakshmi}", q"{Dhananjay}", q"{Dhanapati}", q"{Dhanesh}"
		, q"{Dhanpati}", q"{Dhanu}", q"{Dhanvin}", q"{Dhara}", q"{Dharani}", q"{Dharitri}", q"{Dharmaketu}"
		, q"{Dhatri}", q"{Dhruv}", q"{Dhyanesh}", q"{Dhyaneshwar}", q"{Digambar}", q"{Digambara}", q"{Diksha}"
		, q"{Dinakar}", q"{Dinesh}", q"{Dinkar}", q"{Dipali}", q"{Dipankar}", q"{Dipendra}", q"{Dipesh}"
		, q"{Diptendu}", q"{Divaakar}", q"{Divakar}", q"{Divjot}", q"{Divya}", q"{Draupadi}", q"{Dron}"
		, q"{Drona}", q"{Dulari}", q"{Durga}", q"{Durgeshwari}", q"{Dwaipayan}", q"{Dwaipayana}", q"{Eekalabya}"
		, q"{Ekaaksh}", q"{Ekadant}", q"{Ekaksh}", q"{Ekalavya}", q"{Ekaling}", q"{Ekaparnika}", q"{Ekdant}"
		, q"{Elakshi}", q"{Enakshi}", q"{Esha}", q"{Eshana}", q"{Eshita}", q"{Gajaadhar}", q"{Gajabahu}"
		, q"{Gajadhar}", q"{Gajbaahu}", q"{Ganak}", q"{Ganaka}", q"{Ganapati}", q"{Gandharv}", q"{Gandharva}"
		, q"{Ganesh}", q"{Gangesh}", q"{Garud}", q"{Garuda}", q"{Gati}", q"{Gatik}", q"{Gauraang}", q"{Gaurang}"
		, q"{Gauranga}", q"{Gautam}", q"{Gautama}", q"{Gautami}", q"{Gayatri}", q"{Geeta}", q"{Geetanjali}"
		, q"{Gemine}", q"{Gemini}", q"{Ghanaanand}", q"{Ghanashyam}", q"{Ghanshyam}", q"{Giri}", q"{Girija}"
		, q"{Girik}", q"{Girika}", q"{Girindra}", q"{Giriraaj}", q"{Giriraj}", q"{Girish}", q"{Girja}"
		, q"{Gita}", q"{Gitanjali}", q"{Gobinda}", q"{Gopaal}", q"{Gopal}", q"{Gopee}", q"{Gopi}", q"{Gorakhanatha}"
		, q"{Gorakhnath}", q"{Goswamee}", q"{Goswami}", q"{Gotum}", q"{Gouranga}", q"{Goutam}", q"{Govinda}"
		, q"{Gudakesa}", q"{Gudakesha}", q"{Gurdev}", q"{Guru}", q"{Hamsini}", q"{Hari}", q"{Harinakshi}"
		, q"{Harinarayan}", q"{Harit}", q"{Harita}", q"{Heema}", q"{Himadri}", q"{Himani}", q"{Hiranmay}"
		, q"{Hiranmaya}", q"{Hiranya}", q"{Inder}", q"{Indira}", q"{Indra}", q"{Jagadish}", q"{Jagadisha}"
		, q"{Jagathi}", q"{Jagdeep}", q"{Jagdish}", q"{Jagmeet}", q"{Jahnu}", q"{Jai}", q"{Jaimini}", q"{Javas}"
		, q"{Jay}", q"{Jaya}", q"{Jitender}", q"{Jitendra}", q"{Jyoti}", q"{Jyotis}", q"{Jyotsana}", q"{Kailash}"
		, q"{Kali}", q"{Kalinda}", q"{Kalpana}", q"{Kalyani}", q"{Kama}", q"{Kamala}", q"{Kamalesh}", q"{Kamla}"
		, q"{Kamlesh}", q"{Kanak}", q"{Kanaka}", q"{Kanchan}", q"{Kanishka}", q"{Kannan}", q"{Kannen}"
		, q"{Kanti}", q"{Karan}", q"{Karthik}", q"{Kartik}", q"{Karunanidhi}", q"{Kashyap}", q"{Kashyapi}"
		, q"{Keerti}", q"{Kin}", q"{Kiran}", q"{Kirti}", q"{Krishna}", q"{Krishnadas}", q"{Krishnadasa}"
		, q"{Kumar}", q"{Kumari}", q"{Kumuda}", q"{Laal}", q"{Lai}", q"{Lakshman}", q"{Lakshmi}", q"{Lakshmidhar}"
		, q"{Lakshminath}", q"{Lal}", q"{Lalita}", q"{Lavanya}", q"{Laxman}", q"{Laxmi}", q"{Leela}", q"{Lila}"
		, q"{Madhuri}", q"{Mahendra}", q"{Mahesh}", q"{Maheswar}", q"{Malati}", q"{Malti}", q"{Mandaakin}"
		, q"{Mandakini}", q"{Mangala}", q"{Mangalya}", q"{Mani}", q"{Manik}", q"{Manikya}", q"{Manisha}"
		, q"{Manjusha}", q"{Manoj}", q"{Marut}", q"{Mayoor}", q"{Meena}", q"{Meenakshi}", q"{Meghnad}"
		, q"{Meghnath}", q"{Menaka}", q"{Menka}", q"{Mina}", q"{Minakshi}", q"{Mohan}", q"{Mohana}", q"{Mohinder}"
		, q"{Mohini}", q"{Mukesh}", q"{Mukul}", q"{Nagabhushanam}", q"{Nalini}", q"{Nanda}", q"{Narayan}"
		, q"{Narendra}", q"{Narinder}", q"{Naval}", q"{Naveen}", q"{Navin}", q"{Nawal}", q"{Nikita}", q"{Nimit}"
		, q"{Niranjan}", q"{Nirbhay}", q"{Niro}", q"{Ojaswini}", q"{Omana}", q"{Oormila}", q"{Opalina}"
		, q"{Opaline}", q"{Padma}", q"{Param}", q"{Paramartha}", q"{Parvati}", q"{Poornima}", q"{Pramila}"
		, q"{Pran}", q"{Pranay}", q"{Prasad}", q"{Prasanna}", q"{Prathamesh}", q"{Prayag}", q"{Preity}"
		, q"{Prem}", q"{Prema}", q"{Priya}", q"{Priyala}", q"{Puneet}", q"{Purnima}", q"{Purushottam}"
		, q"{Pushti}", q"{Radha}", q"{Rageshwari}", q"{Rageswari}", q"{Rahul}", q"{Raj}", q"{Rajan}", q"{Rajendra}"
		, q"{Rajinder}", q"{Rajiv}", q"{Rakesh}", q"{Ramaa}", q"{Ramesh}", q"{Rameshwar}", q"{Ranjeet}"
		, q"{Ranjit}", q"{Rati}", q"{Ravi}", q"{Rita}", q"{Ritesh}", q"{Rohan}", q"{Rohana}", q"{Rohit}", q"{Rudra}"
		, q"{Rukhmani}", q"{Rukmin}", q"{Rupinder}", q"{Sachin}", q"{Sameer}", q"{Samir}", q"{Sanjay}"
		, q"{Sanka}", q"{Sanya}", q"{Sarada}", q"{Sarala}", q"{Saraswati}", q"{Sarisha}", q"{Sarla}", q"{Saroja}"
		, q"{Sarvin}", q"{Satish}", q"{Satyen}", q"{Shakti}", q"{Shakuntala}", q"{Shankar}", q"{Shantanu}"
		, q"{Shanti}", q"{Sharda}", q"{Sharmila}", q"{Shashi}", q"{Shashikala}", q"{Sheela}", q"{Sher}"
		, q"{Shiv}", q"{Shivakari}", q"{Shobhana}", q"{Shresth}", q"{Shresthi}", q"{Shreya}", q"{Shreyashi}"
		, q"{Shridevi}", q"{Shrishti}", q"{Shubha}", q"{Shubhaprada}", q"{Shwet}", q"{Siddarth}", q"{Siddhi}"
		, q"{Siddhran}", q"{Sitara}", q"{Sloka}", q"{Smita}", q"{Smriti}", q"{Som}", q"{Soma}", q"{Somnath}"
		, q"{Somu}", q"{Subhash}", q"{Subhashini}", q"{Subhasini}", q"{Subodh}", q"{Sucheta}", q"{Sudeva}"
		, q"{Sujata}", q"{Sukanya}", q"{Suma}", q"{Suman}", q"{Sumitra}", q"{Sunita}", q"{Suresh}", q"{Surya}"
		, q"{Suryakant}", q"{Suryakanta}", q"{Suryakantam}", q"{Susheel}", q"{Sushil}", q"{Sushma}"
		, q"{Swami}", q"{Swapnil}", q"{Swara}", q"{Swarnalata}", q"{Sweta}", q"{Tanirika}", q"{Tanushree}"
		, q"{Tanushri}", q"{Tanya}", q"{Tapan}", q"{Tara}", q"{Tarun}", q"{Tej}", q"{Tejas}", q"{Trilochan}"
		, q"{Trilochana}", q"{Trilok}", q"{Trilokanath}", q"{Trilokesh}", q"{Triloki}", q"{Triloki Nath}"
		, q"{Trisha}", q"{Tushar}", q"{Udai}", q"{Udit}", q"{Ujjawal}", q"{Ujjwal}", q"{Uma}", q"{Umang}"
		, q"{Upendra}", q"{Urmila}", q"{Usha}", q"{Uttam}", q"{Vaidehi}", q"{Vaijayanthi}", q"{Vaijayanti}"
		, q"{Vaishnavi}", q"{Vaishno}", q"{Vaishvi}", q"{Varalakshmi}", q"{Vasanti}", q"{Vasudev}", q"{Vasudeva}"
		, q"{Vasudha}", q"{Vasundhara}", q"{Veda}", q"{Vedang}", q"{Vedanga}", q"{Vedanshi}", q"{Vidhur}"
		, q"{Vidhya}", q"{Vidur}", q"{Vidya}", q"{Vijay}", q"{Vimal}", q"{Vimala}", q"{Vinay}", q"{Vishnu}"
		, q"{Vishwamitra}", q"{Vrinda}", q"{Vrund}", q"{Vyas}", q"{Yogendra}", q"{Yogesh}", q"{Yoginder}" ];

		return choice(strs, this.rnd);
	}

	override string personLastName() {
		const string[] strs =
		[ q"{Abbott}", q"{Achari}", q"{Acharya}", q"{Adiga}", q"{Agarwal}", q"{Ahluwalia}", q"{Ahuja}", q"{Arora}"
		, q"{Asan}", q"{Bandopadhyay}", q"{Banerjee}", q"{Bharadwaj}", q"{Bhat}", q"{Butt}", q"{Bhadresha}"
		, q"{Bhattacharya}", q"{Bhattathiri}", q"{Chaturvedi}", q"{Chattopadhyay}", q"{Chopra}", q"{Desai}"
		, q"{Deshpande}", q"{Devar}", q"{Dhawan}", q"{Dubashi}", q"{Dutta}", q"{Dwivedi}", q"{Embranthiri}"
		, q"{Ganaka}", q"{Gandhi}", q"{Gill}", q"{Gowda}", q"{Guha}", q"{Guneta}", q"{Gupta}", q"{Iyer}", q"{Iyengar}"
		, q"{Jain}", q"{Jangid}", q"{Jha}", q"{Johar}", q"{Joshi}", q"{Kakkar}", q"{Kaniyar}", q"{Kapoor}"
		, q"{Kaul}", q"{Kaur}", q"{Khan}", q"{Khanna}", q"{Khatri}", q"{Kocchar}", q"{Mahajan}", q"{Malik}"
		, q"{Marar}", q"{Menon}", q"{Mehra}", q"{Mehrotra}", q"{Mishra}", q"{Mukhopadhyay}", q"{Nayar}"
		, q"{Naik}", q"{Nair}", q"{Nambeesan}", q"{Namboothiri}", q"{Nehru}", q"{Pandey}", q"{Panicker}"
		, q"{Patel}", q"{Patil}", q"{Pilla}", q"{Pillai}", q"{Pothuvaal}", q"{Prajapat}", q"{Rana}", q"{Reddy}"
		, q"{Saini}", q"{Sethi}", q"{Shah}", q"{Sharma}", q"{Shukla}", q"{Singh}", q"{Sinha}", q"{Somayaji}"
		, q"{Suthar}", q"{Tagore}", q"{Talwar}", q"{Tandon}", q"{Trivedi}", q"{Varrier}", q"{Varma}", q"{Varman}"
		, q"{Verma}" ];

		return choice(strs, this.rnd);
	}

	override string personLastNamePattern() {
		const int rndInt = uniform(0, 100, this.rnd);

		if(rndInt >= 0 && rndInt < 95) {
			return personLastName();
		}
		if(rndInt >= 95 && rndInt < 100) {
			return personLastName() ~ "-" ~ personLastName();
		}

		return "";
	}

	override string personMaleFirstName() {
		const string[] strs =
		[ q"{Aadi}", q"{Aadidev}", q"{Aadinath}", q"{Aaditya}", q"{Aagam}", q"{Aagney}", q"{Aamod}", q"{Aanandaswarup}"
		, q"{Anand Swarup}", q"{Aanjaneya}", q"{Anjaneya}", q"{Aaryan}", q"{Aryan}", q"{Aatmaj}", q"{Aatreya}"
		, q"{Aayushmaan}", q"{Aayushman}", q"{Abhaidev}", q"{Abhirath}", q"{Abhisyanta}", q"{Acaryatanaya}"
		, q"{Achalesvara}", q"{Acharyanandana}", q"{Acharyasuta}", q"{Achintya}", q"{Achyut}", q"{Adheesh}"
		, q"{Adhiraj}", q"{Adhrit}", q"{Adikavi}", q"{Adinath}", q"{Aditeya}", q"{Aditya}", q"{Adityanandan}"
		, q"{Adityanandana}", q"{Adripathi}", q"{Advaya}", q"{Agasti}", q"{Agastya}", q"{Agneya}", q"{Aagneya}"
		, q"{Agnimitra}", q"{Agniprava}", q"{Agnivesh}", q"{Ajit}", q"{Ajeet}", q"{Akroor}", q"{Akshaj}"
		, q"{Akshat}", q"{Akshayakeerti}", q"{Alok}", q"{Aalok}", q"{Amaranaath}", q"{Amarnath}", q"{Amaresh}"
		, q"{Ameyatma}", q"{Amish}", q"{Amogh}", q"{Amrit}", q"{Anaadi}", q"{Anagh}", q"{Anal}", q"{Anand}"
		, q"{Aanand}", q"{Anang}", q"{Anil}", q"{Anilaabh}", q"{Anilabh}", q"{Anish}", q"{Ankal}", q"{Anunay}"
		, q"{Anurag}", q"{Anuraag}", q"{Archan}", q"{Arindam}", q"{Arjun}", q"{Arnesh}", q"{Arun}", q"{Ashlesh}"
		, q"{Ashok}", q"{Atmanand}", q"{Atmananda}", q"{Avadhesh}", q"{Baalaaditya}", q"{Baladitya}"
		, q"{Baalagopaal}", q"{Balgopal}", q"{Balagopal}", q"{Bahula}", q"{Bakula}", q"{Balaaditya}"
		, q"{Balachandra}", q"{Balagovind}", q"{Bandhu}", q"{Bandhul}", q"{Bankim}", q"{Bankimchandra}"
		, q"{Bhadrak}", q"{Bhadraksh}", q"{Bhadran}", q"{Bhagavaan}", q"{Bhagvan}", q"{Bharadwaj}", q"{Bhardwaj}"
		, q"{Bharat}", q"{Bhargava}", q"{Bhasvan}", q"{Bhaasvan}", q"{Bhaswar}", q"{Bhaaswar}", q"{Bhaumik}"
		, q"{Bhaves}", q"{Bheeshma}", q"{Bhisham}", q"{Bhishma}", q"{Bhima}", q"{Bhoj}", q"{Bhramar}", q"{Bhudev}"
		, q"{Bhudeva}", q"{Bhupati}", q"{Bhoopati}", q"{Bhoopat}", q"{Bhupen}", q"{Bhushan}", q"{Bhooshan}"
		, q"{Bhushit}", q"{Bhooshit}", q"{Bhuvanesh}", q"{Bhuvaneshwar}", q"{Bodhan}", q"{Brahma}", q"{Brahmabrata}"
		, q"{Brahmanandam}", q"{Brahmaanand}", q"{Brahmdev}", q"{Brajendra}", q"{Brajesh}", q"{Brijesh}"
		, q"{Birjesh}", q"{Budhil}", q"{Chakor}", q"{Chakradhar}", q"{Chakravartee}", q"{Chakravarti}"
		, q"{Chanakya}", q"{Chaanakya}", q"{Chandak}", q"{Chandan}", q"{Chandraayan}", q"{Chandrabhan}"
		, q"{Chandradev}", q"{Chandraketu}", q"{Chandramauli}", q"{Chandramohan}", q"{Chandran}"
		, q"{Chandranath}", q"{Chapal}", q"{Charak}", q"{Charuchandra}", q"{Chaaruchandra}", q"{Charuvrat}"
		, q"{Chatur}", q"{Chaturaanan}", q"{Chaturbhuj}", q"{Chetan}", q"{Chaten}", q"{Chaitan}", q"{Chetanaanand}"
		, q"{Chidaakaash}", q"{Chidaatma}", q"{Chidambar}", q"{Chidambaram}", q"{Chidananda}", q"{Chinmayanand}"
		, q"{Chinmayananda}", q"{Chiranjeev}", q"{Chiranjeeve}", q"{Chitraksh}", q"{Daiwik}", q"{Damodara}"
		, q"{Dandak}", q"{Dandapaani}", q"{Darshan}", q"{Datta}", q"{Dayaamay}", q"{Dayamayee}", q"{Dayaananda}"
		, q"{Dayaanidhi}", q"{Kin}", q"{Deenabandhu}", q"{Deepan}", q"{Deepankar}", q"{Dipankar}", q"{Deependra}"
		, q"{Dipendra}", q"{Deepesh}", q"{Dipesh}", q"{Deeptanshu}", q"{Deeptendu}", q"{Diptendu}", q"{Deeptiman}"
		, q"{Deeptimoy}", q"{Deeptimay}", q"{Dev}", q"{Deb}", q"{Devadatt}", q"{Devagya}", q"{Devajyoti}"
		, q"{Devak}", q"{Devdan}", q"{Deven}", q"{Devesh}", q"{Deveshwar}", q"{Devvrat}", q"{Dhananjay}"
		, q"{Dhanapati}", q"{Dhanpati}", q"{Dhanesh}", q"{Dhanu}", q"{Dhanvin}", q"{Dharmaketu}", q"{Dhruv}"
		, q"{Dhyanesh}", q"{Dhyaneshwar}", q"{Digambar}", q"{Digambara}", q"{Dinakar}", q"{Dinkar}"
		, q"{Dinesh}", q"{Divaakar}", q"{Divakar}", q"{Deevakar}", q"{Divjot}", q"{Dron}", q"{Drona}", q"{Dwaipayan}"
		, q"{Dwaipayana}", q"{Eekalabya}", q"{Ekalavya}", q"{Ekaksh}", q"{Ekaaksh}", q"{Ekaling}", q"{Ekdant}"
		, q"{Ekadant}", q"{Gajaadhar}", q"{Gajadhar}", q"{Gajbaahu}", q"{Gajabahu}", q"{Ganak}", q"{Ganaka}"
		, q"{Ganapati}", q"{Gandharv}", q"{Gandharva}", q"{Ganesh}", q"{Gangesh}", q"{Garud}", q"{Garuda}"
		, q"{Gati}", q"{Gatik}", q"{Gaurang}", q"{Gauraang}", q"{Gauranga}", q"{Gouranga}", q"{Gautam}"
		, q"{Gautama}", q"{Goutam}", q"{Ghanaanand}", q"{Ghanshyam}", q"{Ghanashyam}", q"{Giri}", q"{Girik}"
		, q"{Girika}", q"{Girindra}", q"{Giriraaj}", q"{Giriraj}", q"{Girish}", q"{Gopal}", q"{Gopaal}"
		, q"{Gopi}", q"{Gopee}", q"{Gorakhnath}", q"{Gorakhanatha}", q"{Goswamee}", q"{Goswami}", q"{Gotum}"
		, q"{Govinda}", q"{Gobinda}", q"{Gudakesha}", q"{Gudakesa}", q"{Gurdev}", q"{Guru}", q"{Hari}"
		, q"{Harinarayan}", q"{Harit}", q"{Hiranmay}", q"{Hiranmaya}", q"{Inder}", q"{Indra}", q"{Jagadish}"
		, q"{Jagadisha}", q"{Jagathi}", q"{Jagdeep}", q"{Jagdish}", q"{Jagmeet}", q"{Jahnu}", q"{Jai}"
		, q"{Javas}", q"{Jay}", q"{Jitendra}", q"{Jitender}", q"{Jyotis}", q"{Kailash}", q"{Kamalesh}"
		, q"{Kamlesh}", q"{Kanak}", q"{Kanaka}", q"{Kannan}", q"{Kannen}", q"{Karan}", q"{Karthik}", q"{Kartik}"
		, q"{Karunanidhi}", q"{Kashyap}", q"{Kiran}", q"{Kirti}", q"{Keerti}", q"{Krishna}", q"{Krishnadas}"
		, q"{Krishnadasa}", q"{Kumar}", q"{Lai}", q"{Lakshman}", q"{Laxman}", q"{Lakshmidhar}", q"{Lakshminath}"
		, q"{Lal}", q"{Laal}", q"{Mahendra}", q"{Mohinder}", q"{Mahesh}", q"{Maheswar}", q"{Manik}", q"{Manikya}"
		, q"{Manoj}", q"{Marut}", q"{Mayoor}", q"{Meghnad}", q"{Meghnath}", q"{Mohan}", q"{Mukesh}", q"{Mukul}"
		, q"{Nagabhushanam}", q"{Nanda}", q"{Narayan}", q"{Narendra}", q"{Narinder}", q"{Naveen}", q"{Navin}"
		, q"{Nawal}", q"{Naval}", q"{Nimit}", q"{Niranjan}", q"{Nirbhay}", q"{Niro}", q"{Param}", q"{Paramartha}"
		, q"{Pran}", q"{Pranay}", q"{Prasad}", q"{Prathamesh}", q"{Prayag}", q"{Prem}", q"{Puneet}", q"{Purushottam}"
		, q"{Rahul}", q"{Raj}", q"{Rajan}", q"{Rajendra}", q"{Rajiv}", q"{Rakesh}", q"{Ramesh}", q"{Rameshwar}"
		, q"{Ranjit}", q"{Ranjeet}", q"{Ravi}", q"{Ritesh}", q"{Rohan}", q"{Rohit}", q"{Rudra}", q"{Sachin}"
		, q"{Sameer}", q"{Samir}", q"{Sanjay}", q"{Sanka}", q"{Sarvin}", q"{Satish}", q"{Satyen}", q"{Shankar}"
		, q"{Shantanu}", q"{Sher}", q"{Shiv}", q"{Siddarth}", q"{Siddhran}", q"{Som}", q"{Somu}", q"{Somnath}"
		, q"{Subhash}", q"{Subodh}", q"{Suman}", q"{Suresh}", q"{Surya}", q"{Suryakant}", q"{Suryakanta}"
		, q"{Sushil}", q"{Susheel}", q"{Swami}", q"{Swapnil}", q"{Tapan}", q"{Tarun}", q"{Tej}", q"{Tejas}"
		, q"{Trilochan}", q"{Trilochana}", q"{Trilok}", q"{Trilokesh}", q"{Triloki}", q"{Triloki Nath}"
		, q"{Trilokanath}", q"{Tushar}", q"{Udai}", q"{Udit}", q"{Ujjawal}", q"{Ujjwal}", q"{Umang}", q"{Upendra}"
		, q"{Uttam}", q"{Vasudev}", q"{Vasudeva}", q"{Vedang}", q"{Vedanga}", q"{Vidhya}", q"{Vidur}", q"{Vidhur}"
		, q"{Vijay}", q"{Vimal}", q"{Vinay}", q"{Vishnu}", q"{Bishnu}", q"{Vishwamitra}", q"{Vyas}", q"{Yogendra}"
		, q"{Yoginder}", q"{Yogesh}" ];

		return choice(strs, this.rnd);
	}

	override string phoneNumberFormats() {
		const string[] strs =
		[ q"{+919##-###-####}", q"{+919#########}", q"{+91-9##-#######}", q"{+918##-###-####}", q"{+918#########}"
		, q"{+91-8##-#######}", q"{+917##-###-####}", q"{+917#########}", q"{+91-7##-#######}"
		, q"{+916##-###-####}", q"{+916#########}", q"{+91-6##-#######}" ];

		return numberBuild(choice(strs, this.rnd));
	}

}

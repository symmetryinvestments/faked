module faker.faker_el;

import std.random;
import std.array;
import std.format;
import std.conv : to;
import std.string : toUpper;
import std.range : iota, take, repeat;
import std.algorithm : map, joiner;

import faker.customtypes;
import faker.base;

class Faker_el : Faker {
@safe:
	this(int seed) {
		super(seed);
	}

	override string appAuthor() {
		final switch(uniform(0, 2, this.rnd)) {
			case 0: return personName();
			case 1: return companyName();
		}
		return "";
	}

	override string appName() {
		const string[] strs =
		[ q"{ΤΡΑΠΕΖΑ ΤΗΣ ΕΛΛΑΔΟΣ}", q"{ΕΜΠΟΡΙΚΗ ΤΡΑΠΕΖΑ ΤΗΣ ΕΛΛΑΔΟΣ Α.Ε.}"
		, q"{Η ΕΘΝΙΚΗ (ΕΛΛ. ΕΤΑΙΡΙΑ ΓΕΝ. ΑΣΦΑΛΕΙΩΝ)}", q"{ΑΙΟΛΙΚΗ Α.Ε.Ε.Χ.}"
		, q"{ΚΑΖΙΝΟ ΠΟΡΤΟ ΚΑΡΡΑΣ Α.Ε.}", q"{ΛΑΝΑΚΑΜ Α.Ε.}", q"{ΠΛΑΣΤΙΚΑ ΘΡΑΚΗΣ Α.Β.Ε.Ε.}"
		, q"{ΤΙΤΑΝ ΑΝΩΝΥΜΗ ΕΤΑΙΡΙΑ ΤΣΙΜΕΝΤΩΝ}", q"{S & B ΒΙΟΜΗΧΑΝΙΚΑ ΟΡΥΚΤΑ Α.Ε.}"
		, q"{Α. ΚΑΛΠΙΝΗΣ - Ν.ΣΙΜΟΣ Α.Ε.Β.Ε.}", q"{Χ. ΡΟΚΑΣ Α.Β.Ε.Ε.}"
		, q"{ELBISCO A.E ΣΥΜΜΕΤΟΧΩΝ}", q"{ΚΥΛΙΝΔΡΟΜΥΛΟΙ Κ. ΣΑΡΑΝΤΟΠΟΥΛΟΣ Α.Ε.}"
		, q"{ΑΛΥΣΙΔΑ Α.Β.Ε.Ε.}", q"{ΕΜΠΟΡΙΚΟΣ ΔΕΣΜΟΣ Α.Ε.Β.Ε}"
		, q"{ΙΠΠΟΤΟΥΡ Α.Ε.}", q"{ΣΠ. ΤΑΣΟΓΛΟΥ Α.Ε.- DELONGHI}", q"{ΕΚΤΕΡ Α.Ε.}"
		, q"{ΙΜΠΕΡΙΟ Α.Ε.}", q"{ΡΑΔΙΟ Α. ΚΟΡΑΣΙΔΗΣ Ε.Ε.Α.Ε.}"
		, q"{ΜΙΝΩΙΚΕΣ ΓΡΑΜΜΕΣ}", q"{MEVACO ΜΕΤΑΛΛΟΥΡΓΙΚΗ Α.Β.Ε.Ε.}"
		, q"{Ε.ΥΔ.Α.Π. Α.Ε.}", q"{ΒΟΓΙΑΤΖΟΓΛΟΥ SYSTEMS Α.Ε.}", q"{ΑΓΡΟΤΙΚΗ ΤΡΑΠΕΖΑ ΤΗΣ ΕΛΛΑΔΟΣ Α.Ε.}"
		, q"{ΠΡΟΜΟΤΑ ΕΛΛΑΣ Α.Ε}", q"{COMPUCON ΕΦΑΡΜΟΓΕΣ ΥΠΟΛΟΓΙΣΤΩΝ ΑΒΕΕ}"
		, q"{CENTRIC ΠΟΛΥΜΕΣΑ ΑΝΩΝΥΜΗ ΕΤΑΙΡΕΙΑ}", q"{FASHION BOX ΕΛΛΑΣ ΑΕ}"
		, q"{Ι. ΚΛΟΥΚΙΝΑΣ - Ι. ΛΑΠΠΑΣ ΤΕΧΝΙΚΗ ΚΑΙ ΕΜΠΟΡΙΚΗ Α.Ε.}", q"{ΕΛΙΝΟΙΛ ΕΛΛΗΝΙΚΗ ΕΤΑΙΡΙΑ ΠΕΤΡΕΛΑΙΩΝ ΑΝΩΝΥΜΗ ΕΤΑΙΡΙΑ}"
		, q"{ΔΕΛΤΑ ΜΗΧΑΝΟΛΟΓΙΚΟΣ ΕΞΟΠΛΙΣΜΟΣ & ΟΛΟΚΛΗΡΩΜΕΝΑ ΕΡΓΑ ΑΒΕΤΕ}" ];

		return choice(strs, this.rnd);
	}

	override string appVersion() {
		const string[] strs =
		[ q"{0.#.#}", q"{0.##}", q"{#.##}", q"{#.#}", q"{#.#.#}" ];

		return numberBuild(choice(str, this.rnd));
	}

	override string cellPhoneFormats() {
		const string[] strs =
		[ q"{697## ######}", q"{698## ######}", q"{699## ######}", q"{692## ######}" ];

		return numberBuild(choice(str, this.rnd));
	}

	override string commerceProductNameAdjective() {
		const string[] strs =
		[ q"{Μικρό}", q"{Εργονομικό}", q"{Αγροτικό}", q"{Απίστευτο}"
		, q"{Φανταστικό}", q"{Πρακτικό}", q"{Κομψό}", q"{Χειροποίητα}"
		, q"{Χειροποίητο}", q"{Άδεια}" ];

		return choice(strs, this.rnd);
	}

	override string commerceProductNameMaterial() {
		const string[] strs =
		[ q"{Ξύλινο}", q"{Πλαστικό}", q"{Μέταλο}", q"{Φρέσκο}", q"{Κατεψυγμένο}" ];

		return choice(strs, this.rnd);
	}

	override string commerceProductNameProduct() {
		const string[] strs =
		[ q"{Καρέκλα}", q"{Αυτοκίνητο}", q"{Υπολογιστής}", q"{Πληκτρολόγιο}"
		, q"{Ποντίκι}", q"{Ποδήλατο}", q"{Μπάλα}", q"{Γάντια}", q"{Παντελόνι}"
		, q"{Πουκάμισο}", q"{Τραπέζι}", q"{Παπούτσια}", q"{Καπέλο}"
		, q"{Πετσέτες}", q"{Σαπούνι}", q"{Τόνος}", q"{Κοτόπουλο}"
		, q"{Ωάρι}", q"{Τυρί}", q"{Pizza}", q"{Σαλάτα}", q"{Λουκάνικα}" ];

		return choice(strs, this.rnd);
	}

	override string companyAdjective() {
		const string[] strs =
		[ q"{Για προχωρημένους}", q"{Αυτοματοποιημένη}", q"{Ισορροπημένη}"
		, q"{Συγκεντρωτική}", q"{Κλωνοποιημένα}", q"{Συμβατές}"
		, q"{Παραμετρικές}", q"{Προσαρμόσιμα}", q"{Αποκεντρωμένη}"
		, q"{Ψηφιακές}", q"{Κατανεμημένα}", q"{Διαφορετικές}"
		, q"{Ενισχυμένη}", q"{Εργονομία}", q"{Διευρυμένη}", q"{Επέκταση}"
		, q"{Ειδικός}", q"{Πρώτης γραμμής}", q"{Πλήρως παραμετροποιήσιμο}"
		, q"{Θεμελιώδη}", q"{Λαϊκά}", q"{Οριζόντια}", q"{Καινοτόμες}"
		, q"{ολοκληρωμένη}", q"{Έξυπνο}", q"{Αντιστροφή}", q"{Υπεύθυνη για τη διαχείριση}"
		, q"{Υποχρεωτικά}", q"{Πολυμερής}", q"{Πολυεπίπεδη}"
		, q"{Δικτυωμένες}", q"{Ανοιχτή πηγή}", q"{Λειτουργικής}"
		, q"{Βελτιστοποιημένη}", q"{Προαιρετικό}", q"{Βιολογικά}"
		, q"{Οργανωμένες}", q"{Μένοντας}", q"{Επίμονη}", q"{Σταδιακή}"
		, q"{Προληπτική}", q"{Ριζική}", q"{Προοδευτική}", q"{Αντιδραστική}"
		, q"{Ευθυγραμμισμένο}", q"{Μειωμένη}", q"{Αντίστροφης μηχανικής}"
		, q"{Ανθεκτική}", q"{Αδιάλειπτη}", q"{Ασφαλής}", q"{Κοινόχρηστο}"
		, q"{Βελτιωμένη}", q"{Εναλλαγή}", q"{Σύγχρονη}", q"{Αναβαθμίσιμα}"
		, q"{Χρηστοκεντρικών}", q"{Φιλική προς το χρήστη}"
		, q"{Ευέλικτο}", q"{Εικονική}", q"{Οραματιστής}" ];

		return choice(strs, this.rnd);
	}

	override string companyBuzzAdjective() {
		const string[] strs =
		[ q"{Προστιθέμενη αξία}", q"{Κάθετη}", q"{Προληπτική}"
		, q"{Εύρωστο}", q"{Επαναστατικό}", q"{Κλιμακούμενες}"
		, q"{Προβάδισμα}", q"{Καινοτόμες}", q"{Διαισθητική}"
		, q"{Στρατηγικών}", q"{E-business}", q"{Κρίσιμης σημασίας}"
		, q"{Κολλάει}", q"{Ένα προς ένα}", q"{24/7}", q"{Παγκόσμια}"
		, q"{B2B}", q"{B2C}", q"{Κοκκώδη}", q"{Τριβές}", q"{Εικονική}", q"{Ιογενείς}"
		, q"{Δυναμική}", q"{24/365}", q"{Δολοφόνος}", q"{Μαγνητικά}"
		, q"{Διαδραστικό}", q"{Σέξι}", q"{Πραγματικός χρόνος}"
		, q"{Αποτελεσματικό}", q"{Κατανεμημένες}", q"{Επεκτάσιμο}"
		, q"{Κλειδί στο χέρι}", q"{Παγκόσμιας κλάσης}", q"{Ανοιχτή πηγή}"
		, q"{Συνεργιστική}", q"{Επιχείρηση}", q"{Ολοκληρωμένη}"
		, q"{Εύστοχος}", q"{Ασύρματο}", q"{Διαφανής}", q"{Επόμενη γενιά}"
		, q"{Αιχμής}", q"{Επίκεντρο τον χρήστη}", q"{Οραματιστής}"
		, q"{Προσαρμοσμένη}", q"{Πανταχού παρούσα}", q"{Plug-and-play}"
		, q"{Συνεργατική}", q"{Συναρπαστικό}", q"{Ολιστική}"
		, q"{Πλούσια}" ];

		return choice(strs, this.rnd);
	}

	override string companyBuzzNoun() {
		const string[] strs =
		[ q"{συνέργειες}", q"{παραδείγματα}", q"{αγορές}", q"{συνεργασίες}"
		, q"{υποδομές}", q"{πλατφόρμες}", q"{πρωτοβουλίες}", q"{κανάλια}"
		, q"{μάτια}", q"{κοινότητες}", q"{λύσεις}", q"{δράση-αντικείμενα}"
		, q"{πύλες}", q"{θέσεις}", q"{τεχνολογίες}", q"{περιεχόμενο}"
		, q"{αλυσίδες προμηθειών}", q"{σύγκλιση}", q"{σχέσεις}"
		, q"{αρχιτεκτονικές}", q"{διασυνδέσεις}", q"{e-αγορές}"
		, q"{ηλεκτρονικό εμπόριο}", q"{συστήματα}", q"{μοντέλα}"
		, q"{παραδοτέα}", q"{χρήστες}", q"{σχήματα}", q"{δίκτυα}"
		, q"{εφαρμογές}", q"{μετρήσεις}", q"{e-business}", q"{λειτουργίες}"
		, q"{εμπειρίες}", q"{διαδικτυακές υπηρεσίες}", q"{μεθοδολογίες}" ];

		return choice(strs, this.rnd);
	}

	override string companyBuzzVerb() {
		const string[] strs =
		[ q"{χρησιμοποιούν}", q"{ενσωμάτωση}", q"{βελτιστοποιήσουν}"
		, q"{εξελιχθεί}", q"{μεταμορφώσει}", q"{αγκαλιάζουν}"
		, q"{επιτρέψει}", q"{ενορχηστρώσει}", q"{επανεφεύρουμε}"
		, q"{ενισχύσουν}", q"{διευκολύνουν}", q"{αδράξουν}", q"{συνεργούν}"
		, q"{μεγαλώνουν}", q"{συνθέσει}", q"{παραδώσει}", q"{αναλάβουν}"
		, q"{επιταχύνει}", q"{απεικονίσει}", q"{επαναπροσδιορίσουν}"
		, q"{καινοτομία}", q"{απελευθερώσουν}", q"{επεκτείνει}"
		, q"{δημιουργούν}", q"{εκμεταλλεύονται}", q"{επαναλάβει}"
		, q"{καλλιεργούν}", q"{επαναπροσδιορίσει}" ];

		return choice(strs, this.rnd);
	}

	override string companyDescriptor() {
		const string[] strs =
		[ q"{24 ώρες το 24ώρο}", q"{24/7}", q"{3η γενιά}", q"{4η γενικά}"
		, q"{5η γενιά}", q"{6η γενιά}", q"{asymmetric}", q"{ασύγχρονο}", q"{συνεχής}"
		, q"{αφιερωμένο}", q"{διαδακτικό}", q"{διακριτό}", q"{δυναμικό}"
		, q"{παγκόσμιο}", q"{υβριδικό}", q"{δριαδραστικό}", q"{τοπικό}"
		, q"{πολυμεσικό}", q"{διεθνές}", q"{επόμενης γενιάς}"
		, q"{αντικειμενοστραφή}", q"{ιδανικό}", q"{πραγματικού χρόνου}"
		, q"{δευτερεύων}", q"{σταθερό}", q"{στατικό}", q"{προστιθέμενης αξίας}" ];

		return choice(strs, this.rnd);
	}

	override string companyNamePattern() {
		final switch(uniform(0, 3, this.rnd)) {
			case 0: return personLastName() ~ " " ~ companySuffix();
			case 1: return personLastName() ~ "-" ~ personLastName();
			case 2: return personLastName() ~ ", " ~ personLastName() ~ " and " ~ personLastName();
		}
		return "";
	}

	override string companyNoun() {
		const string[] strs =
		[ q"{ικανότητα}", q"{πρόσβαση}", q"{αλγόριθμος}", q"{αναλυτής}"
		, q"{εφαρμογή}", q"{προσέγγιση}", q"{αρχιτεκτονική}"
		, q"{αρχείο}", q"{τεχνητή νοημοσύνη}", q"{χωρητικότητα}"
		, q"{πρόκληση}", q"{συνεργασία}", q"{περιπλοκότητα}"
		, q"{πυρήνας}", q"{βάση δεδομένων}", q"{ορισμός}", q"{συνάρτηση}"
		, q"{Διεπαφή Χρήστη}", q"{υλικό}", q"{υλοποίηση}", q"{εγκατάσταση}"
		, q"{εγχειρίδιο χρήστη}", q"{διεπαφή}", q"{υπηρεσίες internet}"
		, q"{γνωσιακή βάση}", q"{τοπικό δίκτυο}", q"{μετρικές}"
		, q"{μεθοδολογία}", q"{μοντέλο}", q"{ανοιχτή αρχιτεκτονική}"
		, q"{ενορχήστρωση}", q"{προϊόν}", q"{παραγωγικότητα}"
		, q"{πρωτόκολο}", q"{ασφαλής γραμμή}", q"{λογισμικό}"
		, q"{στρατηγική}", q"{επιτυχία}", q"{υποστήρυξη}" ];

		return choice(strs, this.rnd);
	}

	override string companySuffix() {
		const string[] strs =
		[ q"{Ε.Π.Ε.}", q"{Α.Ε.}", q"{και Υιοί}", q"{Όμιλος}" ];

		return choice(strs, this.rnd);
	}

	override string financeCreditCardAmericanExpress() {
		const string[] strs =
		[ q"{/34##-######-####L/}", q"{/37##-######-####L/}" ];

		return numberBuild(choice(str, this.rnd));
	}

	override string financeCreditCardDiscover() {
		const string[] strs =
		[ q"{/6011-####-####-###L/}", q"{/65##-####-####-###L/}", q"{/64[4-9]#-####-####-###L/}"
		, q"{/6011-62##-####-####-###L/}", q"{/65##-62##-####-####-###L/}", q"{/64[4-9]#-62##-####-####-###L/}" ];

		return numberBuild(choice(str, this.rnd));
	}

	override string financeCreditCardMaestro() {
		const string[] strs =
		[ q"{/50#{9,16}L/}", q"{/5[6-8]#{9,16}L/}", q"{/56##{9,16}L/}" ];

		return numberBuild(choice(str, this.rnd));
	}

	override string financeCreditCardMastercard() {
		const string[] strs =
		[ q"{5[1-5]##-####-####-###L}", q"{2[221-720]-####-####-###L}" ];

		return numberBuild(choice(str, this.rnd));
	}

	override string financeCreditCardVisa() {
		const string[] strs =
		[ q"{/4###########L/}", q"{/4###-####-####-###L/}" ];

		return numberBuild(choice(str, this.rnd));
	}

	override string financeAccountType() {
		const string[] strs =
		[ q"{Καταθετικός}", q"{Μισθοδοσίας}", q"{Δανειακός}" ];

		return choice(strs, this.rnd);
	}

	override Currency financeCurrency() {
		final switch(uniform(0, 1, this.rnd)) {
			case 0: return Currency(q"{Ευρώ}", q"{EUR}", q"{€}");
		}
		return Currency("", "", "");
	}

	override string financeTransactionType() {
		const string[] strs =
		[ q"{κατάθεση}", q"{ανάληψη}", q"{πληρωμή}", q"{τιμολόγιο}" ];

		return choice(strs, this.rnd);
	}

	override string hackerAdjective() {
		const string[] strs =
		[ q"{οδηγός}", q"{πρωτογενής}", q"{ψηφιακή}", q"{ανοιχτή πηγή}"
		, q"{εικονική}", q"{ασύρματο}", q"{1080p}", q"{οπτική}", q"{κινητό}" ];

		return choice(strs, this.rnd);
	}

	override string hackerNoun() {
		const string[] strs =
		[ q"{οδηγός}", q"{πρωτόκολο}", q"{ταχύτητα}", q"{panel}", q"{μικρότσιπ}"
		, q"{πρόγραμμα}", q"{πόρτα}", q"{κάρτα}", q"{διεπαφή}", q"{σύστημα}"
		, q"{σένσορας}", q"{ασφάλεια}", q"{σκληρός δίσκος}", q"{feed}"
		, q"{οθόνη}", q"{εφαρμογή}", q"{δίαυλος}", q"{διάγραμμα}"
		, q"{πυκνωτής}", q"{πίνακας}" ];

		return choice(strs, this.rnd);
	}

	override string hackerVerb() {
		const string[] strs =
		[ q"{back up}", q"{bypass}", q"{hack}", q"{προσπέραση}", q"{συμπίεση}", q"{αντιγραφή}"
		, q"{περιήγηση}", q"{σύνδεση}", q"{υπολογισμός}", q"{είσοδος}"
		, q"{μεταφορά}", q"{πρόγραμμα}", q"{επανεκκίνηση}", q"{προσπέλαση}" ];

		return choice(strs, this.rnd);
	}

	override string internetDomainSuffix() {
		const string[] strs =
		[ q"{gr}", q"{com}", q"{biz}", q"{info}", q"{name}" ];

		return choice(strs, this.rnd);
	}

	override string internetFreeEmail() {
		const string[] strs =
		[ q"{gmail.com}", q"{yahoo.com}", q"{hotmail.com}" ];

		return choice(strs, this.rnd);
	}

	override string locationCityName() {
		const string[] strs =
		[ q"{Αθήνα}", q"{Θεσσαλονίκη}", q"{Πειραιάς}", q"{Πάτρα}", q"{Ηράκλειο}"
		, q"{Λάρισα}", q"{Βόλος}", q"{Ιωάννινα}", q"{Τρίκαλα}", q"{Σέρρες}"
		, q"{Χαλκίδα}", q"{Αλεξανδρούπολη}", q"{Ξάνθη}", q"{Κατερίνη}"
		, q"{Αγρίνιο}", q"{Καλαμάτα}", q"{Καβάλα}", q"{Χανιά}", q"{Λαμία}"
		, q"{Κομοτηνή}", q"{Ρόδος}", q"{Δράμα}", q"{Βέροια}", q"{Κοζάνη}"
		, q"{Καρδίτσα}", q"{Ρέθυμνο}", q"{Πτολεμαΐδα}", q"{Τρίπολη}"
		, q"{Κόρινθος}", q"{Γέρακας}", q"{Γιαννιτσά}", q"{Μυτιλήνη}"
		, q"{Χίος}", q"{Σαλαμίνα}", q"{Ελευσίνα}", q"{Κέρκυρα}", q"{Πύργος}"
		, q"{Μέγαρα}", q"{Κιλκίς}", q"{Θήβα}", q"{Άργος}", q"{Άρτα}", q"{Άρτεμη}"
		, q"{Λιβαδειά}", q"{Ωραιόκαστρο}", q"{Αίγιο}", q"{Κως}", q"{Κορωπί}"
		, q"{Πρέβεζα}", q"{Νάουσα}", q"{Ορεστιάδα}", q"{Έδεσσα}", q"{Φλώρινα}"
		, q"{Αμαλιάδα}", q"{Παλλήνη}", q"{Σπάρτη}", q"{Θέρμη}", q"{Βάρη}"
		, q"{Νέα}", q"{Αλεξάνδρεια}", q"{Παιανία}", q"{Καλύβια}", q"{Ναύπλιο}"
		, q"{Ναύπακτος}", q"{Καστοριά}", q"{Γρεβενά}", q"{Μεσολόγγι}"
		, q"{Γάζι}", q"{Ιεράπετρα}", q"{Κάλυμνος}", q"{Ραφήνα}", q"{Λουτράκι}"
		, q"{Άγιος}", q"{Ερμούπολη}", q"{Ιαλυσός}", q"{Τύρναβος}"
		, q"{Γλυκά Νερά}" ];

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
		[ q"{Ελλάδα}" ];

		return choice(strs, this.rnd);
	}

	override string locationStreetPattern() {
		final switch(uniform(0, 2, this.rnd)) {
			case 0: return personFirstName() ~ " " ~ locationStreetSuffix();
			case 1: return personLastName() ~ " " ~ locationStreetSuffix();
		}
		return "";
	}

	override string loremWords() {
		const string[] strs =
		[ q"{alias}", q"{consequatur}", q"{aut}", q"{perferendis}", q"{sit}", q"{voluptatem}", q"{accusantium}"
		, q"{doloremque}", q"{aperiam}", q"{eaque}", q"{ipsa}", q"{quae}", q"{ab}", q"{illo}", q"{inventore}"
		, q"{veritatis}", q"{et}", q"{quasi}", q"{architecto}", q"{beatae}", q"{vitae}", q"{dicta}", q"{sunt}"
		, q"{explicabo}", q"{aspernatur}", q"{odit}", q"{fugit}", q"{sed}", q"{quia}", q"{consequuntur}"
		, q"{magni}", q"{dolores}", q"{eos}", q"{qui}", q"{ratione}", q"{sequi}", q"{nesciunt}", q"{neque}"
		, q"{dolorem}", q"{ipsum}", q"{dolor}", q"{amet}", q"{consectetur}", q"{adipisci}", q"{velit}"
		, q"{non}", q"{numquam}", q"{eius}", q"{modi}", q"{tempora}", q"{incidunt}", q"{ut}", q"{labore}"
		, q"{dolore}", q"{magnam}", q"{aliquam}", q"{quaerat}", q"{enim}", q"{ad}", q"{minima}", q"{veniam}"
		, q"{quis}", q"{nostrum}", q"{exercitationem}", q"{ullam}", q"{corporis}", q"{nemo}", q"{ipsam}"
		, q"{voluptas}", q"{suscipit}", q"{laboriosam}", q"{nisi}", q"{aliquid}", q"{ex}", q"{ea}", q"{commodi}"
		, q"{autem}", q"{vel}", q"{eum}", q"{iure}", q"{reprehenderit}", q"{in}", q"{voluptate}", q"{esse}"
		, q"{quam}", q"{nihil}", q"{molestiae}", q"{iusto}", q"{odio}", q"{dignissimos}", q"{ducimus}"
		, q"{blanditiis}", q"{praesentium}", q"{laudantium}", q"{totam}", q"{rem}", q"{voluptatum}"
		, q"{deleniti}", q"{atque}", q"{corrupti}", q"{quos}", q"{quas}", q"{molestias}", q"{excepturi}"
		, q"{sint}", q"{occaecati}", q"{cupiditate}", q"{provident}", q"{perspiciatis}", q"{unde}", q"{omnis}"
		, q"{iste}", q"{natus}", q"{error}", q"{similique}", q"{culpa}", q"{officia}", q"{deserunt}", q"{mollitia}"
		, q"{animi}", q"{id}", q"{est}", q"{laborum}", q"{dolorum}", q"{fuga}", q"{harum}", q"{quidem}", q"{rerum}"
		, q"{facilis}", q"{expedita}", q"{distinctio}", q"{nam}", q"{libero}", q"{tempore}", q"{cum}", q"{soluta}"
		, q"{nobis}", q"{eligendi}", q"{optio}", q"{cumque}", q"{impedit}", q"{quo}", q"{porro}", q"{quisquam}"
		, q"{minus}", q"{quod}", q"{maxime}", q"{placeat}", q"{facere}", q"{possimus}", q"{assumenda}"
		, q"{repellendus}", q"{temporibus}", q"{quibusdam}", q"{illum}", q"{fugiat}", q"{nulla}", q"{pariatur}"
		, q"{at}", q"{vero}", q"{accusamus}", q"{officiis}", q"{debitis}", q"{necessitatibus}", q"{saepe}"
		, q"{eveniet}", q"{voluptates}", q"{repudiandae}", q"{recusandae}", q"{itaque}", q"{earum}"
		, q"{hic}", q"{tenetur}", q"{a}", q"{sapiente}", q"{delectus}", q"{reiciendis}", q"{voluptatibus}"
		, q"{maiores}", q"{doloribus}", q"{asperiores}", q"{repellat}" ];

		return choice(strs, this.rnd);
	}

	override string personFemaleFirstName() {
		const string[] strs =
		[ q"{Μαρια}", q"{Ελενη}", q"{Αικατερινη}", q"{Ιωαννα}", q"{Δημητρα}"
		, q"{Ευαγγελια}", q"{Γεωργια}", q"{Αναστασια}", q"{Παναγιωτα}"
		, q"{Σοφια}", q"{Κωνσταντινα}", q"{Παρασκευη}", q"{Αννα}"
		, q"{Χριστινα}", q"{Αθανασια}", q"{Δεσποινα}", q"{Χρυσουλα}"
		, q"{Αλεξανδρα}", q"{Σταυρουλα}" ];

		return choice(strs, this.rnd);
	}

	override string personFemalePrefix() {
		const string[] strs =
		[ q"{Κυρία}", q"{Δόκτορ}" ];

		return choice(strs, this.rnd);
	}

	override string personFirstName() {
		const string[] strs =
		[ q"{Άγγελος}", q"{Αθανάσιος}", q"{Αθανασια}", q"{Αικατερινη}"
		, q"{Αλέξανδρος}", q"{Αλεξανδρα}", q"{Αναστάσιος}", q"{Αναστασια}"
		, q"{Ανδρέας}", q"{Αννα}", q"{Αντώνης}", q"{Απόστολος}", q"{Αριστείδης}"
		, q"{Βασίλης}", q"{Γεωργια}", q"{Γεώργιος}", q"{Γρηγόριος}"
		, q"{Δεσποινα}", q"{Δημήτρης}", q"{Δημητρα}", q"{Διονύσιος}"
		, q"{Ελενη}", q"{Ελευθέριος}", q"{Εμμανουήλ}", q"{Ευάγγελος}"
		, q"{Ευαγγελια}", q"{Ευστάθιος}", q"{Ηλίας}", q"{Θεόδωρος}"
		, q"{Ιωάννης}", q"{Ιωαννα}", q"{Κωνσταντινα}", q"{Κώστας}"
		, q"{Λεωνίδας}", q"{Μαρια}", q"{Μιχαήλ}", q"{Νικόλαος}", q"{Πέτρος}"
		, q"{Παναγιωτα}", q"{Παναγιώτης}", q"{Παρασκευάς}", q"{Παρασκευη}"
		, q"{Παύλος}", q"{Σοφια}", q"{Σπύρος}", q"{Στέφανος}", q"{Σταυρουλα}"
		, q"{Σταύρος}", q"{Στυλιανός}", q"{Σωτήριος}", q"{Φώτιος}"
		, q"{Χαράλαμπος}", q"{Χρήστος}", q"{Χριστινα}", q"{Χρυσουλα}" ];

		return choice(strs, this.rnd);
	}

	override string personLastName() {
		const string[] strs =
		[ q"{Αβραμίδης}", q"{Αγγελίδης}", q"{Αγγελίδου}", q"{Αγγελόπουλος}"
		, q"{Αγγελοπούλου}", q"{Αθανασιάδης}", q"{Αθανασίου}"
		, q"{Ακρίδας}", q"{Αλαβάνος}", q"{Αλαφούζος}", q"{Αλεβιζόπουλος}"
		, q"{Αλεβίζος}", q"{Αλεξάκης}", q"{Αλεξίου}", q"{Αλεξόπουλος}"
		, q"{Αλεξανδρίδης}", q"{Αλεξάνδρου}", q"{Αλεξιάδης}"
		, q"{Αλιβιζάτος}", q"{Αναγνωστάκης}", q"{Αναγνώστου}"
		, q"{Αναστασιάδης}", q"{Ανδρεάδης}", q"{Ανδρέου}", q"{Αντωνιάδης}"
		, q"{Αντωνόπουλος}", q"{Αντωνοπούλου}", q"{Αξιώτης}"
		, q"{Αποστόλου}", q"{Αποστολίδης}", q"{Αρβανίτης}", q"{Αργυριάδης}"
		, q"{Ασπάσιος}", q"{Αυγερινός}", q"{Βάμβας}", q"{Βαμβακάς}"
		, q"{Βαρνακιώτης}", q"{Βαρουξής}", q"{Βασιλόπουλος}"
		, q"{Βασιλείου}", q"{Βασιλειάδης}", q"{Βασιλικός}", q"{Βενιζέλος}"
		, q"{Βέργας}", q"{Βικελίδης}", q"{Βιλαέτης}", q"{Βιτάλη}"
		, q"{Βιτάλης}", q"{Βλαβιανός}", q"{Βλαστός}", q"{Βλαχόπουλος}"
		, q"{Βούλγαρης}", q"{Βονόρτας}", q"{Βουγιουκλάκης}", q"{Βουρδουμπάς}"
		, q"{Βυζάντιος}", q"{Γαλάνη}", q"{Γαλάνης}", q"{Γεννάδιος}"
		, q"{Γερμανός}", q"{Γερμανού}", q"{Γεωργίου}", q"{Γεωργιάδης}"
		, q"{Γιάγκος}", q"{Γιαννόπουλος}", q"{Γιαννακόπουλος}"
		, q"{Γιάνναρης}", q"{Γκόφας}", q"{Γλυκύς}", q"{Γούναρης}"
		, q"{Γούσιος}", q"{Δάβης}", q"{Δαγκλής}", q"{Δαμασκηνός}"
		, q"{Δασκαλόπουλος}", q"{Δασκαλοπούλου}", q"{Δελή}", q"{Δεσποτόπουλος}"
		, q"{Δημαράς}", q"{Δημητρίου}", q"{Δημητρακόπουλος}"
		, q"{Διαμαντόπουλος}", q"{Διδασκάλου}", q"{Δοξαράς}"
		, q"{Δουμπιώτης}", q"{Δουρέντης}", q"{Δράκος}", q"{Δραγούμης}"
		, q"{Δυοβουνιώτης}", q"{Ελευθερόπουλος}", q"{Ελευθεριάδης}"
		, q"{Ελευθερίου}", q"{Ευταξίας}", q"{Ζάνος}", q"{Ζάππας}"
		, q"{Ζάρκος}", q"{Ζάχος}", q"{Ζέρβας}", q"{Ζαΐμης}", q"{Ζαφειρόπουλος}"
		, q"{Ζαχαρίου}", q"{Ζερβός}", q"{Ζυγομαλάς}", q"{Ζωγράφος}"
		, q"{Ζωγράφου}", q"{Ηλιόπουλος}", q"{Θεοδοσίου}", q"{Θεοδωρίδης}"
		, q"{Θεοτόκης}", q"{Ιωαννίδης}", q"{Ιωάννου}", q"{Καζαντζής}"
		, q"{Κακριδής}", q"{Καλάρης}", q"{Καλύβας}", q"{Καλαμογδάρτης}"
		, q"{Καλλιγάς}", q"{Καλογιάννης}", q"{Κανακάρης-Ρούφος}"
		, q"{Καραβίας}", q"{Καραμήτσος}", q"{Καραμανλής}", q"{Καρράς}"
		, q"{Κασιδιάρης}", q"{Καψής}", q"{Κεδίκογλου}", q"{Κούνδουρος}"
		, q"{Κολιάτσος}", q"{Κομνηνός}", q"{Κοντολέων}", q"{Κοντόσταυλος}"
		, q"{Κόρακας}", q"{Κορνάρος}", q"{Κορομηλάς}", q"{Κορωναίος}"
		, q"{Κοσμόπουλος}", q"{Κοτζιάς}", q"{Κουβέλης}", q"{Κουντουριώτης}"
		, q"{Κουρμούλης}", q"{Κουταλιανός}", q"{Κρεστενίτης}"
		, q"{Κυπραίος}", q"{Κωνσταντίνου}", q"{Κωνσταντόπουλος}"
		, q"{Λόντος}", q"{Λύτρας}", q"{Λαγός}", q"{Λαιμός}", q"{Λαμέρας}"
		, q"{Λαμπρόπουλος}", q"{Λειβαδάς}", q"{Λιάπης}", q"{Λιακόπουλος}"
		, q"{Λούλης}", q"{Λούπης}", q"{Λύκος}", q"{Μάγκας}", q"{Μήτζου}"
		, q"{Μαγγίνας}", q"{Μακρή}", q"{Μακρής}", q"{Μαλαξός}", q"{Μανιάκης}"
		, q"{Μανωλάς}", q"{Μαρής}", q"{Μαρκόπουλος}", q"{Μαυρίδης}"
		, q"{Μαυρογένης}", q"{Μελετόπουλος}", q"{Μέλιοι}", q"{Μεσσηνέζης}"
		, q"{Μεταξάς}", q"{Μητσοτάκης}", q"{Μιαούλης}", q"{Μιχαηλίδης}"
		, q"{Μιχαλολιάκος}", q"{Μοσχοβάκης}", q"{Μπότσαρης}"
		, q"{Μπλέτσας}", q"{Μπουκουβαλαίοι}", q"{Νικολαΐδης}"
		, q"{Νικολάκος}", q"{Οικονόμου}", q"{Ουζουνίδης}", q"{Πανταζής}"
		, q"{Παπαγεωργίου}", q"{Παπάγος}", q"{Παπαδάκης}", q"{Παπαδόπουλος}"
		, q"{Παπάζογλου}", q"{Παπακώστας}", q"{Παπακωνσταντίνου}"
		, q"{Παπανδρέου}", q"{Παπανικολάου}", q"{Παπαντωνίου}"
		, q"{Παπαστεφάνου}", q"{Παπαφιλίππου}", q"{Παπαϊωάννου}"
		, q"{Παππάς}" ];

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
		[ q"{Γεώργιος}", q"{Ιωάννης}", q"{Κώστας}", q"{Δημήτρης}", q"{Νικόλαος}"
		, q"{Παναγιώτης}", q"{Βασίλης}", q"{Χρήστος}", q"{Αθανάσιος}"
		, q"{Μιχαήλ}", q"{Ευάγγελος}", q"{Σπύρος}", q"{Αντώνης}", q"{Αναστάσιος}"
		, q"{Θεόδωρος}", q"{Ανδρέας}", q"{Χαράλαμπος}", q"{Αλέξανδρος}"
		, q"{Εμμανουήλ}", q"{Ηλίας}", q"{Σταύρος}", q"{Πέτρος}", q"{Σωτήριος}"
		, q"{Στυλιανός}", q"{Ελευθέριος}", q"{Απόστολος}", q"{Φώτιος}"
		, q"{Διονύσιος}", q"{Γρηγόριος}", q"{Άγγελος}", q"{Στέφανος}"
		, q"{Ευστάθιος}", q"{Παύλος}", q"{Παρασκευάς}", q"{Αριστείδης}"
		, q"{Λεωνίδας}" ];

		return choice(strs, this.rnd);
	}

	override string personMalePrefix() {
		const string[] strs =
		[ q"{Κύριος}", q"{Δόκτορ}" ];

		return choice(strs, this.rnd);
	}

	override string personName() {
		const int rndInt = uniform(0, 10, this.rnd);

		if(rndInt >= 0 && rndInt < 1) {
			return personPrefix() ~ " " ~ personFirstName() ~ " " ~ personLastName();
		}
		if(rndInt >= 1 && rndInt < 2) {
			return personFirstName() ~ " " ~ personLastName() ~ " " ~ personSuffix();
		}
		if(rndInt >= 2 && rndInt < 10) {
			return personFirstName() ~ " " ~ personLastName();
		}

		return "";
	}

	override string personPrefix() {
		const string[] strs =
		[ q"{Δόκτορ}", q"{Κυρία}", q"{Κύριος}" ];

		return choice(strs, this.rnd);
	}

	override string personTitleDescriptor() {
		const string[] strs =
		[ q"{Senior}", q"{Εταιρείες}", q"{Πελάτης}", q"{Επενδυτής}", q"{Εσωτερικό}"
		, q"{Κύριος}" ];

		return choice(strs, this.rnd);
	}

	override string personTitleLevel() {
		const string[] strs =
		[ q"{Λύσεις}", q"{Πρόγραμμα}", q"{Μάρκα}", q"{Ασφάλεια}", q"{Έρευνα}"
		, q"{Μάρκετινγκ}", q"{Οδηγιών}", q"{Εφαρμογή}", q"{Ενσωμάτωση}"
		, q"{Λειτουργικότητα}", q"{Τακτική}", q"{Ταυτότητα}"
		, q"{Αγορές}", q"{Όμιλος}", q"{Εφαρμογές}", q"{Βελτιστοποίηση}"
		, q"{Δραστηριότητες}", q"{Υποδομή}", q"{Intranet}", q"{Επικοινωνίες}"
		, q"{Web}", q"{Branding}", q"{Ποιότητα}", q"{Διασφάλιση}", q"{Κινητικότητα}"
		, q"{Λογαριασμοί}", q"{Δεδομένα}", q"{Δημιουργική}", q"{Διαμόρφωση}"
		, q"{Μετρήσεις}" ];

		return choice(strs, this.rnd);
	}

	override string personTitleJob() {
		const string[] strs =
		[ q"{Επόπτης}", q"{Συνεργάτης}", q"{Σύμβουλος}", q"{Διευθυντής}"
		, q"{Μηχανικός}", q"{Ειδικός}", q"{Συντονιστή}", q"{Διαχειριστής}"
		, q"{Αναλυτής}", q"{Designer}", q"{Τεχνικός}", q"{Προγραμματιστής}"
		, q"{Παραγωγός}", q"{Βοηθός}", q"{Συντονιστής}", q"{Εκπρόσωπος}"
		, q"{Αντιπρόσωπος}" ];

		return choice(strs, this.rnd);
	}

	override string phoneNumberFormats() {
		const string[] strs =
		[ q"{2310# #####}", q"{2312# #####}", q"{2313# #####}", q"{222# ######}", q"{223# ######}"
		, q"{227# ######}", q"{224# ######}", q"{226# ######}", q"{225# ######}", q"{232# ######}"
		, q"{229# ######}", q"{228# ######}", q"{233# ######}", q"{234# ######}", q"{235# ######}"
		, q"{237# ######}", q"{238# ######}", q"{239# ######}", q"{241# ######}", q"{242# ######}"
		, q"{243# ######}", q"{244# ######}", q"{246# ######}", q"{249# ######}", q"{251# ######}"
		, q"{252# ######}", q"{253# ######}", q"{254# ######}", q"{255# ######}", q"{259# ######}"
		, q"{261# ######}", q"{262# ######}", q"{263# ######}", q"{264# ######}", q"{265# ######}"
		, q"{266# ######}", q"{267# ######}", q"{268# ######}", q"{269# ######}", q"{271# ######}"
		, q"{272# ######}", q"{273# ######}", q"{274# ######}", q"{275# ######}", q"{276# ######}"
		, q"{279# ######}", q"{281# ######}", q"{282# ######}", q"{283# ######}", q"{284# ######}"
		, q"{289# ######}", q"{0800 ######}" ];

		return numberBuild(choice(str, this.rnd));
	}

	override string teamCreature() {
		const string[] strs =
		[ q"{μυρμήγκια}", q"{νυχτερίδες}", q"{αρκούδες}", q"{μέλισσες}"
		, q"{πουλιά}", q"{βουβάλια}", q"{γάτες}", q"{κοτόπουλα}", q"{βοοειδή}"
		, q"{σκυλιά}", q"{δελφίνια}", q"{πάπιες}", q"{ελέφαντες}"
		, q"{ψάρια}", q"{αλεπούδες}", q"{βατράχια}", q"{χήνες}", q"{ερίφια}"
		, q"{άλογα}", q"{καγκουρό}", q"{λιοντάρια}", q"{μαϊμούδες}"
		, q"{κουκουβάγιες}", q"{βόδια}", q"{πιγκουίνοι}", q"{Άνθρωποι}"
		, q"{γουρούνια}", q"{κουνέλια}", q"{πρόβατα}", q"{τίγρεις}"
		, q"{φάλαινες}", q"{λύκοι}", q"{ζέβρες}", q"{κοράκια}", q"{μαύρεςγάτες}"
		, q"{χίμαιρες}", q"{φαντάσματα}", q"{συνωμότες}", q"{δράκους}"
		, q"{νάνοι}", q"{ξωτικά}", q"{enchanters}", q"{εξορκιστές}", q"{γιοι}"
		, q"{εχθρούς}", q"{γίγαντες}", q"{στοιχειά}", q"{γρύπες}"
		, q"{Νέμεσις}", q"{δράκοι}", q"{χρησμούς}", q"{προφήτες}"
		, q"{αράχνες}", q"{πνεύματα}", q"{βαμπίρ}", q"{warlocks}", q"{Vixens}"
		, q"{λυκάνθρωποι}", q"{μάγισσες}", q"{προσκυνητές}", q"{ζόμπι}"
		, q"{Δρυίδες}" ];

		return choice(strs, this.rnd);
	}

	override string teamName() {
		final switch(uniform(0, 1, this.rnd)) {
			case 0: return locationState() ~ " " ~ teamCreature();
		}
		return "";
	}

}

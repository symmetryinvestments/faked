void main() {
	import std.stdio;
	import faked;

	auto f = new Faker(/*random seed */ 1337);

	writeln(f.loremText());
	writeln(f.addressCity());
	writeln(f.nameName());

	// localized to german
	f = new Faker_de(/*random seed */ 1338);

	writeln(f.loremText());
	writeln(f.addressCity());
	writeln(f.nameName());
}

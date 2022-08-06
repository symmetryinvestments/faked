# FakeD
A real fake data generation library with localization support.
See docs for list of supported localizations.
Created by "parsing" most of [faker.js](https://github.com/marak/Faker.js/)
and transforming it into D.
This is done by the tool fakerjsgnerator.

## Docs
[Docs](https://symmetryinvestments.github.io/faked/)

## Example

```D
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
```


About Kaleidic Associates
-------------------------
We are a boutique consultancy that advises a small number of hedge fund clients.  We are
not accepting new clients currently, but if you are interested in working either remotely
or locally in London or Hong Kong, and if you are a talented hacker with a moral compass
who aspires to excellence then feel free to drop me a line: laeeth at kaleidic.io

We work with our partner Symmetry Investments, and some background on the firm can be
found here:

http://symmetryinvestments.com/about-us/

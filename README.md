# FakeD
A real fake data generation library with localization support.
See docs for list of supported localizations.
Created by "parsing" most of [faker.js](https://github.com/faker-js/faker)
and transforming it into D.
This is done by the tool fakerjsgnerator.

## Example

```D
import std.stdio;
import faked;
void main() {

	auto f = new FakerForwarder(/*random seed */ 1337);

	writeln(f.loremText());
	writeln(f.personName());

	// localized to german
	f = new Faker_de(/*random seed */ 1338);

	writeln(f.loremText());
	writeln(f.personName());
}
```

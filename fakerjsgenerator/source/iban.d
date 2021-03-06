module iban;

import std.json;
import std.stdio;
import std.algorithm;
import std.array;
import std.conv : to;
import form = std.format;

struct BBan {
    string type;
    long count;

    string toString() const {
        return form.format("BBan(\"%s\", %s)", this.type, this.count);
    }
}

struct IbanFormat {
    string country;
    long total;
    BBan[] bban;
    string format;

    string toString() const {
        return form.format("IbanFormat(\"%s\", %d, \n\t\t[\n\t\t\t%s\n\t\t], \n\t\t\"%s\"\n\t)",
                this.country,
                this.total,
                this.bban.map!(a => a.toString()).joiner(",\n\t\t\t"),
                this.format
            );
    }
}

struct IbanData {
    char[] alpha;
    string[] pattern10;
    string[] pattern100;
    IbanFormat[] formats;
    string[] iso3166;

    string toString() const {
        return form.format(
            "IbanData(\n\t\tto!(dchar[])(\"%s\"),\n\t\t%s,\n\t\t%s,\n\t[\n\t%s\n\t],\n\t%s)",
            this.alpha,
            this.pattern10,
            this.pattern100,
            this.formats.map!(a => a.toString()).joiner(",\n\t"),
            this.iso3166);
    }
}

IbanData parseIbanData() {
    string[] splitIntoString(JSONValue v) {
        string[] ret;
        if(v.type == JSONType.array) {
            JSONValue[] alpha = v.array();
            foreach(it; alpha) {
                ret ~= it.str();
            }
        }
        return ret;
    }

    IbanData ret;
    JSONValue data = parseJSON(ibanData);
    foreach(string key, JSONValue value; data) {
        switch(key) {
            case "alpha":
                ret.alpha = splitIntoString(value).map!(a => a[0]).to!(char[]);
                break;
            case "pattern10":
                ret.pattern10 = splitIntoString(value);
                break;
            case "pattern100":
                ret.pattern100 = splitIntoString(value);
                break;
            case "iso3166":
                ret.iso3166 = splitIntoString(value);
                break;
            case "formats":
                if(value.type == JSONType.array) {
                    JSONValue[] alpha = value.array();
                    foreach(it; alpha) {
                        IbanFormat ibf;
                        foreach(string itKey, itValue; it) {
                            switch(itKey) {
                                case "country":
                                    ibf.country = itValue.str();
                                    break;
                                case "total":
                                    ibf.total = itValue.integer();
                                    break;
                                case "bban":
                                    foreach(jt; itValue.array()) {
                                        BBan bban;
                                        foreach(string jtKey, jtValue; jt) {
                                            switch(jtKey) {
                                                case "type":
                                                    bban.type = jtValue.str();
                                                    break;
                                                case "count":
                                                    bban.count =
                                                        jtValue.integer();
                                                    break;
                                                default:
                                                    assert(false, jtKey);
                                            }
                                        }
                                        ibf.bban ~= bban;
                                    }
                                    break;
                                case "format":
                                    ibf.format = itValue.str;
                                    break;
                                default:
                                    assert(false, itKey);
                            }
                        }
                        ret.formats ~= ibf;
                    }
                }
                break;
            default:
                assert(false, key);
        }
    }
    return ret;
}

string buildIbanData() {
    import std.format : format;
    IbanData d = parseIbanData();
    return format("%s\n", d);
}

// created by copying faker.js/lib/iban.js
// than use regex to make valid json %s/([a-zA-Z][a-zA-Z0-9]*):/\1:/g
// %s/'/"/g
enum string ibanData = `{
  "alpha": [
    "A","B","C","D","E","F","G","H","I","J","K","L","M","N","O","P","Q","R","S","T","U","V","W","X","Y","Z"
  ],
  "pattern10": [
    "01", "02", "03", "04", "05", "06", "07", "08", "09"
  ],
  "pattern100": [
    "001", "002", "003", "004", "005", "006", "007", "008", "009"
  ],
  "formats": [
    {
      "country": "AL",
      "total": 28,
      "bban": [
        {
          "type": "n",
          "count": 8
        },
        {
          "type": "c",
          "count": 16
        }
      ],
      "format": "ALkk bbbs sssx cccc cccc cccc cccc"
    },
    {
      "country": "AD",
      "total": 24,
      "bban": [
        {
          "type": "n",
          "count": 8
        },
        {
          "type": "c",
          "count": 12
        }
      ],
      "format": "ADkk bbbb ssss cccc cccc cccc"
    },
    {
      "country": "AT",
      "total": 20,
      "bban": [
        {
          "type": "n",
          "count": 5
        },
        {
          "type": "n",
          "count": 11
        }
      ],
      "format": "ATkk bbbb bccc cccc cccc"
    },
    {
      "country": "AZ",
      "total": 28,
      "bban": [
        {
          "type": "c",
          "count": 4
        },
        {
          "type": "n",
          "count": 20
        }
      ],
      "format": "AZkk bbbb cccc cccc cccc cccc cccc"
    },
    {
      "country": "BH",
      "total": 22,
      "bban": [
        {
          "type": "a",
          "count": 4
        },
        {
          "type": "c",
          "count": 14
        }
      ],
      "format": "BHkk bbbb cccc cccc cccc cc"
    },
    {
      "country": "BE",
      "total": 16,
      "bban": [
        {
          "type": "n",
          "count": 3
        },
        {
          "type": "n",
          "count": 9
        }
      ],
      "format": "BEkk bbbc cccc ccxx"
    },
    {
      "country": "BA",
      "total": 20,
      "bban": [
        {
          "type": "n",
          "count": 6
        },
        {
          "type": "n",
          "count": 10
        }
      ],
      "format": "BAkk bbbs sscc cccc ccxx"
    },
    {
      "country": "BR",
      "total": 29,
      "bban": [
        {
          "type": "n",
          "count": 13
        },
        {
          "type": "n",
          "count": 10
        },
        {
          "type": "a",
          "count": 1
        },
        {
          "type": "c",
          "count": 1
        }
      ],
      "format": "BRkk bbbb bbbb ssss sccc cccc ccct n"
    },
    {
      "country": "BG",
      "total": 22,
      "bban": [
        {
          "type": "a",
          "count": 4
        },
        {
          "type": "n",
          "count": 6
        },
        {
          "type": "c",
          "count": 8
        }
      ],
      "format": "BGkk bbbb ssss ddcc cccc cc"
    },
    {
      "country": "CR",
      "total": 21,
      "bban": [
        {
          "type": "n",
          "count": 3
        },
        {
          "type": "n",
          "count": 14
        }
      ],
      "format": "CRkk bbbc cccc cccc cccc c"
    },
    {
      "country": "HR",
      "total": 21,
      "bban": [
        {
          "type": "n",
          "count": 7
        },
        {
          "type": "n",
          "count": 10
        }
      ],
      "format": "HRkk bbbb bbbc cccc cccc c"
    },
    {
      "country": "CY",
      "total": 28,
      "bban": [
        {
          "type": "n",
          "count": 8
        },
        {
          "type": "c",
          "count": 16
        }
      ],
      "format": "CYkk bbbs ssss cccc cccc cccc cccc"
    },
    {
      "country": "CZ",
      "total": 24,
      "bban": [
        {
          "type": "n",
          "count": 10
        },
        {
          "type": "n",
          "count": 10
        }
      ],
      "format": "CZkk bbbb ssss sscc cccc cccc"
    },
    {
      "country": "DK",
      "total": 18,
      "bban": [
        {
          "type": "n",
          "count": 4
        },
        {
          "type": "n",
          "count": 10
        }
      ],
      "format": "DKkk bbbb cccc cccc cc"
    },
    {
      "country": "DO",
      "total": 28,
      "bban": [
        {
          "type": "a",
          "count": 4
        },
        {
          "type": "n",
          "count": 20
        }
      ],
      "format": "DOkk bbbb cccc cccc cccc cccc cccc"
    },
    {
      "country": "TL",
      "total": 23,
      "bban": [
        {
          "type": "n",
          "count": 3
        },
        {
          "type": "n",
          "count": 16
        }
      ],
      "format": "TLkk bbbc cccc cccc cccc cxx"
    },
    {
      "country": "EE",
      "total": 20,
      "bban": [
        {
          "type": "n",
          "count": 4
        },
        {
          "type": "n",
          "count": 12
        }
      ],
      "format": "EEkk bbss cccc cccc cccx"
    },
    {
      "country": "FO",
      "total": 18,
      "bban": [
        {
          "type": "n",
          "count": 4
        },
        {
          "type": "n",
          "count": 10
        }
      ],
      "format": "FOkk bbbb cccc cccc cx"
    },
    {
      "country": "FI",
      "total": 18,
      "bban": [
        {
          "type": "n",
          "count": 6
        },
        {
          "type": "n",
          "count": 8
        }
      ],
      "format": "FIkk bbbb bbcc cccc cx"
    },
    {
      "country": "FR",
      "total": 27,
      "bban": [
        {
          "type": "n",
          "count": 10
        },
        {
          "type": "c",
          "count": 11
        },
        {
          "type": "n",
          "count": 2
        }
      ],
      "format": "FRkk bbbb bggg ggcc cccc cccc cxx"
    },
    {
      "country": "GE",
      "total": 22,
      "bban": [
        {
          "type": "c",
          "count": 2
        },
        {
          "type": "n",
          "count": 16
        }
      ],
      "format": "GEkk bbcc cccc cccc cccc cc"
    },
    {
      "country": "DE",
      "total": 22,
      "bban": [
        {
          "type": "n",
          "count": 8
        },
        {
          "type": "n",
          "count": 10
        }
      ],
      "format": "DEkk bbbb bbbb cccc cccc cc"
    },
    {
      "country": "GI",
      "total": 23,
      "bban": [
        {
          "type": "a",
          "count": 4
        },
        {
          "type": "c",
          "count": 15
        }
      ],
      "format": "GIkk bbbb cccc cccc cccc ccc"
    },
    {
      "country": "GR",
      "total": 27,
      "bban": [
        {
          "type": "n",
          "count": 7
        },
        {
          "type": "c",
          "count": 16
        }
      ],
      "format": "GRkk bbbs sssc cccc cccc cccc ccc"
    },
    {
      "country": "GL",
      "total": 18,
      "bban": [
        {
          "type": "n",
          "count": 4
        },
        {
          "type": "n",
          "count": 10
        }
      ],
      "format": "GLkk bbbb cccc cccc cc"
    },
    {
      "country": "GT",
      "total": 28,
      "bban": [
        {
          "type": "c",
          "count": 4
        },
        {
          "type": "c",
          "count": 4
        },
        {
          "type": "c",
          "count": 16
        }
      ],
      "format": "GTkk bbbb mmtt cccc cccc cccc cccc"
    },
    {
      "country": "HU",
      "total": 28,
      "bban": [
        {
          "type": "n",
          "count": 8
        },
        {
          "type": "n",
          "count": 16
        }
      ],
      "format": "HUkk bbbs sssk cccc cccc cccc cccx"
    },
    {
      "country": "IS",
      "total": 26,
      "bban": [
        {
          "type": "n",
          "count": 6
        },
        {
          "type": "n",
          "count": 16
        }
      ],
      "format": "ISkk bbbb sscc cccc iiii iiii ii"
    },
    {
      "country": "IE",
      "total": 22,
      "bban": [
        {
          "type": "c",
          "count": 4
        },
        {
          "type": "n",
          "count": 6
        },
        {
          "type": "n",
          "count": 8
        }
      ],
      "format": "IEkk aaaa bbbb bbcc cccc cc"
    },
    {
      "country": "IL",
      "total": 23,
      "bban": [
        {
          "type": "n",
          "count": 6
        },
        {
          "type": "n",
          "count": 13
        }
      ],
      "format": "ILkk bbbn nncc cccc cccc ccc"
    },
    {
      "country": "IT",
      "total": 27,
      "bban": [
        {
          "type": "a",
          "count": 1
        },
        {
          "type": "n",
          "count": 10
        },
        {
          "type": "c",
          "count": 12
        }
      ],
      "format": "ITkk xaaa aabb bbbc cccc cccc ccc"
    },
    {
      "country": "JO",
      "total": 30,
      "bban": [
        {
          "type": "a",
          "count": 4
        },
        {
          "type": "n",
          "count": 4
        },
        {
          "type": "n",
          "count": 18
        }
      ],
      "format": "JOkk bbbb nnnn cccc cccc cccc cccc cc"
    },
    {
      "country": "KZ",
      "total": 20,
      "bban": [
        {
          "type": "n",
          "count": 3
        },
        {
          "type": "c",
          "count": 13
        }
      ],
      "format": "KZkk bbbc cccc cccc cccc"
    },
    {
      "country": "XK",
      "total": 20,
      "bban": [
        {
          "type": "n",
          "count": 4
        },
        {
          "type": "n",
          "count": 12
        }
      ],
      "format": "XKkk bbbb cccc cccc cccc"
    },
    {
      "country": "KW",
      "total": 30,
      "bban": [
        {
          "type": "a",
          "count": 4
        },
        {
          "type": "c",
          "count": 22
        }
      ],
      "format": "KWkk bbbb cccc cccc cccc cccc cccc cc"
    },
    {
      "country": "LV",
      "total": 21,
      "bban": [
        {
          "type": "a",
          "count": 4
        },
        {
          "type": "c",
          "count": 13
        }
      ],
      "format": "LVkk bbbb cccc cccc cccc c"
    },
    {
      "country": "LB",
      "total": 28,
      "bban": [
        {
          "type": "n",
          "count": 4
        },
        {
          "type": "c",
          "count": 20
        }
      ],
      "format": "LBkk bbbb cccc cccc cccc cccc cccc"
    },
    {
      "country": "LI",
      "total": 21,
      "bban": [
        {
          "type": "n",
          "count": 5
        },
        {
          "type": "c",
          "count": 12
        }
      ],
      "format": "LIkk bbbb bccc cccc cccc c"
    },
    {
      "country": "LT",
      "total": 20,
      "bban": [
        {
          "type": "n",
          "count": 5
        },
        {
          "type": "n",
          "count": 11
        }
      ],
      "format": "LTkk bbbb bccc cccc cccc"
    },
    {
      "country": "LU",
      "total": 20,
      "bban": [
        {
          "type": "n",
          "count": 3
        },
        {
          "type": "c",
          "count": 13
        }
      ],
      "format": "LUkk bbbc cccc cccc cccc"
    },
    {
      "country": "MK",
      "total": 19,
      "bban": [
        {
          "type": "n",
          "count": 3
        },
        {
          "type": "c",
          "count": 10
        },
        {
          "type": "n",
          "count": 2
        }
      ],
      "format": "MKkk bbbc cccc cccc cxx"
    },
    {
      "country": "MT",
      "total": 31,
      "bban": [
        {
          "type": "a",
          "count": 4
        },
        {
          "type": "n",
          "count": 5
        },
        {
          "type": "c",
          "count": 18
        }
      ],
      "format": "MTkk bbbb ssss sccc cccc cccc cccc ccc"
    },
    {
      "country": "MR",
      "total": 27,
      "bban": [
        {
          "type": "n",
          "count": 10
        },
        {
          "type": "n",
          "count": 13
        }
      ],
      "format": "MRkk bbbb bsss sscc cccc cccc cxx"
    },
    {
      "country": "MU",
      "total": 30,
      "bban": [
        {
          "type": "a",
          "count": 4
        },
        {
          "type": "n",
          "count": 4
        },
        {
          "type": "n",
          "count": 15
        },
        {
          "type": "a",
          "count": 3
        }
      ],
      "format": "MUkk bbbb bbss cccc cccc cccc 000d dd"
    },
    {
      "country": "MC",
      "total": 27,
      "bban": [
        {
          "type": "n",
          "count": 10
        },
        {
          "type": "c",
          "count": 11
        },
        {
          "type": "n",
          "count": 2
        }
      ],
      "format": "MCkk bbbb bsss sscc cccc cccc cxx"
    },
    {
      "country": "MD",
      "total": 24,
      "bban": [
        {
          "type": "c",
          "count": 2
        },
        {
          "type": "c",
          "count": 18
        }
      ],
      "format": "MDkk bbcc cccc cccc cccc cccc"
    },
    {
      "country": "ME",
      "total": 22,
      "bban": [
        {
          "type": "n",
          "count": 3
        },
        {
          "type": "n",
          "count": 15
        }
      ],
      "format": "MEkk bbbc cccc cccc cccc xx"
    },
    {
      "country": "NL",
      "total": 18,
      "bban": [
        {
          "type": "a",
          "count": 4
        },
        {
          "type": "n",
          "count": 10
        }
      ],
      "format": "NLkk bbbb cccc cccc cc"
    },
    {
      "country": "NO",
      "total": 15,
      "bban": [
        {
          "type": "n",
          "count": 4
        },
        {
          "type": "n",
          "count": 7
        }
      ],
      "format": "NOkk bbbb cccc ccx"
    },
    {
      "country": "PK",
      "total": 24,
      "bban": [
        {
          "type": "c",
          "count": 4
        },
        {
          "type": "n",
          "count": 16
        }
      ],
      "format": "PKkk bbbb cccc cccc cccc cccc"
    },
    {
      "country": "PS",
      "total": 29,
      "bban": [
        {
          "type": "c",
          "count": 4
        },
        {
          "type": "n",
          "count": 9
        },
        {
          "type": "n",
          "count": 12
        }
      ],
      "format": "PSkk bbbb xxxx xxxx xccc cccc cccc c"
    },
    {
      "country": "PL",
      "total": 28,
      "bban": [
        {
          "type": "n",
          "count": 8
        },
        {
          "type": "n",
          "count": 16
        }
      ],
      "format": "PLkk bbbs sssx cccc cccc cccc cccc"
    },
    {
      "country": "PT",
      "total": 25,
      "bban": [
        {
          "type": "n",
          "count": 8
        },
        {
          "type": "n",
          "count": 13
        }
      ],
      "format": "PTkk bbbb ssss cccc cccc cccx x"
    },
    {
      "country": "QA",
      "total": 29,
      "bban": [
        {
          "type": "a",
          "count": 4
        },
        {
          "type": "c",
          "count": 21
        }
      ],
      "format": "QAkk bbbb cccc cccc cccc cccc cccc c"
    },
    {
      "country": "RO",
      "total": 24,
      "bban": [
        {
          "type": "a",
          "count": 4
        },
        {
          "type": "c",
          "count": 16
        }
      ],
      "format": "ROkk bbbb cccc cccc cccc cccc"
    },
    {
      "country": "SM",
      "total": 27,
      "bban": [
        {
          "type": "a",
          "count": 1
        },
        {
          "type": "n",
          "count": 10
        },
        {
          "type": "c",
          "count": 12
        }
      ],
      "format": "SMkk xaaa aabb bbbc cccc cccc ccc"
    },
    {
      "country": "SA",
      "total": 24,
      "bban": [
        {
          "type": "n",
          "count": 2
        },
        {
          "type": "c",
          "count": 18
        }
      ],
      "format": "SAkk bbcc cccc cccc cccc cccc"
    },
    {
      "country": "RS",
      "total": 22,
      "bban": [
        {
          "type": "n",
          "count": 3
        },
        {
          "type": "n",
          "count": 15
        }
      ],
      "format": "RSkk bbbc cccc cccc cccc xx"
    },
    {
      "country": "SK",
      "total": 24,
      "bban": [
        {
          "type": "n",
          "count": 10
        },
        {
          "type": "n",
          "count": 10
        }
      ],
      "format": "SKkk bbbb ssss sscc cccc cccc"
    },
    {
      "country": "SI",
      "total": 19,
      "bban": [
        {
          "type": "n",
          "count": 5
        },
        {
          "type": "n",
          "count": 10
        }
      ],
      "format": "SIkk bbss sccc cccc cxx"
    },
    {
      "country": "ES",
      "total": 24,
      "bban": [
        {
          "type": "n",
          "count": 10
        },
        {
          "type": "n",
          "count": 10
        }
      ],
      "format": "ESkk bbbb gggg xxcc cccc cccc"
    },
    {
      "country": "SE",
      "total": 24,
      "bban": [
        {
          "type": "n",
          "count": 3
        },
        {
          "type": "n",
          "count": 17
        }
      ],
      "format": "SEkk bbbc cccc cccc cccc cccc"
    },
    {
      "country": "CH",
      "total": 21,
      "bban": [
        {
          "type": "n",
          "count": 5
        },
        {
          "type": "c",
          "count": 12
        }
      ],
      "format": "CHkk bbbb bccc cccc cccc c"
    },
    {
      "country": "TN",
      "total": 24,
      "bban": [
        {
          "type": "n",
          "count": 5
        },
        {
          "type": "n",
          "count": 15
        }
      ],
      "format": "TNkk bbss sccc cccc cccc cccc"
    },
    {
      "country": "TR",
      "total": 26,
      "bban": [
        {
          "type": "n",
          "count": 5
        },
        {
          "type": "c",
          "count": 1
        },
        {
          "type": "c",
          "count": 16
        }
      ],
      "format": "TRkk bbbb bxcc cccc cccc cccc cc"
    },
    {
      "country": "AE",
      "total": 23,
      "bban": [
        {
          "type": "n",
          "count": 3
        },
        {
          "type": "n",
          "count": 16
        }
      ],
      "format": "AEkk bbbc cccc cccc cccc ccc"
    },
    {
      "country": "GB",
      "total": 22,
      "bban": [
        {
          "type": "a",
          "count": 4
        },
        {
          "type": "n",
          "count": 6
        },
        {
          "type": "n",
          "count": 8
        }
      ],
      "format": "GBkk bbbb ssss sscc cccc cc"
    },
    {
      "country": "VG",
      "total": 24,
      "bban": [
        {
          "type": "c",
          "count": 4
        },
        {
          "type": "n",
          "count": 16
        }
      ],
      "format": "VGkk bbbb cccc cccc cccc cccc"
    }
  ],
  "iso3166": [
    "AC", "AD", "AE", "AF", "AG", "AI", "AL", "AM", "AN", "AO", "AQ", "AR", "AS",
    "AT", "AU", "AW", "AX", "AZ", "BA", "BB", "BD", "BE", "BF", "BG", "BH", "BI",
    "BJ", "BL", "BM", "BN", "BO", "BQ", "BR", "BS", "BT", "BU", "BV", "BW", "BY",
    "BZ", "CA", "CC", "CD", "CE", "CF", "CG", "CH", "CI", "CK", "CL", "CM", "CN",
    "CO", "CP", "CR", "CS", "CS", "CU", "CV", "CW", "CX", "CY", "CZ", "DD", "DE",
    "DG", "DJ", "DK", "DM", "DO", "DZ", "EA", "EC", "EE", "EG", "EH", "ER", "ES",
    "ET", "EU", "FI", "FJ", "FK", "FM", "FO", "FR", "FX", "GA", "GB", "GD", "GE",
    "GF", "GG", "GH", "GI", "GL", "GM", "GN", "GP", "GQ", "GR", "GS", "GT", "GU",
    "GW", "GY", "HK", "HM", "HN", "HR", "HT", "HU", "IC", "ID", "IE", "IL", "IM",
    "IN", "IO", "IQ", "IR", "IS", "IT", "JE", "JM", "JO", "JP", "KE", "KG", "KH",
    "KI", "KM", "KN", "KP", "KR", "KW", "KY", "KZ", "LA", "LB", "LC", "LI", "LK",
    "LR", "LS", "LT", "LU", "LV", "LY", "MA", "MC", "MD", "ME", "MF", "MG", "MH",
    "MK", "ML", "MM", "MN", "MO", "MP", "MQ", "MR", "MS", "MT", "MU", "MV", "MW",
    "MX", "MY", "MZ", "NA", "NC", "NE", "NF", "NG", "NI", "NL", "NO", "NP", "NR",
    "NT", "NU", "NZ", "OM", "PA", "PE", "PF", "PG", "PH", "PK", "PL", "PM", "PN",
    "PR", "PS", "PT", "PW", "PY", "QA", "RE", "RO", "RS", "RU", "RW", "SA", "SB",
    "SC", "SD", "SE", "SG", "SH", "SI", "SJ", "SK", "SL", "SM", "SN", "SO", "SR",
    "SS", "ST", "SU", "SV", "SX", "SY", "SZ", "TA", "TC", "TD", "TF", "TG", "TH",
    "TJ", "TK", "TL", "TM", "TN", "TO", "TR", "TT", "TV", "TW", "TZ", "UA", "UG",
    "UM", "US", "UY", "UZ", "VA", "VC", "VE", "VG", "VI", "VN", "VU", "WF", "WS",
    "YE", "YT", "YU", "ZA", "ZM", "ZR", "ZW"
  ]
}`;

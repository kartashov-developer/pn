[js]

Methods .
  length - длина строки, спец символы в длину не попадают
  | let str = "I \"love\" you\ndear Natasha"
  | console.log(str.length); // 25
  str[] .
  . Строки неизменяемы(иммутабельны).
  | console.log(str[0]); // "I" -- элемент, находящийся на позиции 0
  | console.log(str[str.length - 1]); // "a" -- последний элемент строки
  | str[0] = "H"; // не работает
  toLowerCase() .
  | console.log(str.toLowerCase(str)); // i "love" you
  toUpperCase() .
  | console.log(str.toUpperCase(str)); // I "LOVE" YOU
  indexOf() .
  . Search the substring.
  . Accepts {s(substring)}.
    Returns {i(index)} of the first occurrence,
    or |-1| if not found.
  . Return the `first founded` substring's index.
  | console.log(str.indexOf("o")); // 4(substring's index)
  | console.log(str.indexOf("1")); // -1(not found)
  | console.log(str.indexOf("love")); // 3(index of the occurrence)
  slice() .
  . Extracts a section of a string and return a new string.
    Not modifying the original string.
  | string.slice(indexStart)
  | string.slice(indexStart, indexEnd)
  . Accepts {s(indexStart)} of the first character(included),
    `optional` accepts {e(indexEnd)} of the first character(excluded).
    Returns {n(newString)} containing the extracted section of the the string.
  | let sliceString = str.slice(0, 8);
  | console.log(sliceString); // I "love"
  replace() .
  . Replace first match in string.
    Not modifying the original string.
    | string.replace("search", "replacement")
  . Accepts {s(search)} and {r(replacement)} for changing.
  | let replaceString = str.replace("love", "hate");
  | console.log(replaceString); // I "hate" you
  replaceAll() .
  . Replace all of the matches in string.
  . Other like in |replace()|.
  trim() .
  . Removes whitespaces from both ends of a string.
  . Accepts `nothing`.
    Returns a {n(new string)}.
  | const trim = greeting.trim();
  | console.log(trim);
  toString() .
  . Changing the type.
  | const number = 1234;
  | console.log(number.toString()); // "1234"
  | const boo = true;
  | console.log(boo.toString()); // "true"
/* Регулярные выражения */
let phoneNum = "My phone number is: +89250282285";
const regular = /(.*)(\+7|8)(\d{3})(\d{3})(\d{2})(\d{2})(.*)/
const result = phoneNum.replace(regular, "$1 $2 ($3) $4-$5-$6");
console.log(result);

Регулярные выражения/RegExp .
  Syntax .
  | const regexp1 = new RegExp("template", "flags")
  | const regexp2 = /template/g;
    Example .
    | const str = "Я люблю JavaScript";
    | const regexp = /лю/;
    | str.search(regexp); // 2
    | str.serach(/лю/); // 2
  Flags .
    i = ignoreCase .
    . Регистронезависимость. |A| и |a| - одно и то же.
    g = global .
    . Ищет все вхождения, иначе только первое.
    m = multiline .
    . Работает с несколькими строками.
  Symbols .
    Any symbol .
    |.|
    Any symbol in brackets .
    | [12345]
    Any symbol from diapozone .
    | [0-9]
    All expect numbers .
    | [^0-9]
  Examples .
  | /[взкд]ол/g -- сработает на слова: вол, зол, кол, дол
  | \d = [0-9]
  | \w = [a-zA-Z0-9_]
  | \s = [\t\n\v\f\r ]
  | \D = [^0-9]
  | \W = [^a-zA-Z0-9_]
  | \S = [^\t\n\v\f\r ]

|\n| - перенос строки
|\t| - табуляция(4 пробела

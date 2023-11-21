/* Методы строк */
let str = 'I "love" you\ndear Natasha';
// length - длина строки, спец символы в длину не попадают
console.log(str.length);
console.log("--------------------------------------");
// str[i]. строки неизменяемы
console.log(str[0]); // I
console.log(str[str.length - 1]); // a
str[0] = "H"; // не работает
console.log("--------------------------------------");
// toLowerCase
console.log(str.toLowerCase());
console.log("--------------------------------------");
// toUpperCase
console.log(str.toUpperCase());
console.log("--------------------------------------");
// indexOf - поиск индекса
console.log(str.indexOf("o")); // 4(индекс элемента)
console.log(str.indexOf("1")); // -1(не найдено)
console.log(str.indexOf("love")); // 3(первая найденная буква)
console.log("--------------------------------------");
// slice() - обрезает строку
let sliceString = str.slice(0, 8); // I "love"
console.log(sliceString);
console.log("--------------------------------------");
// subString() - обрезает строку
let subString = str.substring(0, 8); // I "love"
console.log(subString);
console.log("--------------------------------------");
// replace() - замена в строке
let replaceString = str.replace("love", "hate");
console.log(replaceString); // I "hate" you
console.log("--------------------------------------");
/* Регулярные выражения */
let phoneNum = "My phone number is: +89250282285";
const regular = /(.*)(\+7|8)(\d{3})(\d{3})(\d{2})(\d{2})(.*)/;
const result = phoneNum.replace(regular, "$1 $2 ($3) $4-$5-$6");
console.log(result);
console.log("--------------------------------------");

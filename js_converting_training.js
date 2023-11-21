console.log("Boolean(0)", Boolean(0)); //
console.log("!0", !0); //
console.log("!!0", !!0); //
console.log("!!{}", !!{}); //
console.log("!![]", !![]); //
console.log("Boolean(0)", Boolean(0)); //
console.log("!!newBoolean(0)", !!new Boolean(0)); //
console.log("typeof []", typeof []); //]
console.log("typeof null", typeof null); //
console.log("typeof function () {}", typeof function () {}); //
console.log("[] instanceof Array", [] instanceof Array); //
console.log("Array.isArray([])", Array.isArray([])); //
console.log("0 === 0", 0 === 0); //
console.log("NaN === NaN", NaN === NaN); //
console.log("0 === '0'", 0 === "0"); //
console.log("[] === []", [] === []); //
var a = [],
  b = a;
console.log("a === b", a === b); //
console.log("+true", +true); //
console.log("+null", +null); //
console.log("+undefined", +undefined); //
console.log("+'  1e3  '", +"  1e3  "); //
console.log("+[]", +[]); //
console.log("+[1]", +[1]); //
console.log("+[1, 2, 3]", +[1, 2, 3]); //
console.log("+{}", +{}); //
console.log("+new Date()", +new Date()); //
var obj = {};
console.log("+obj.someField", +obj.someField); //
console.log("NaN === NaN", NaN === NaN); //
console.log("undefined === null", undefined === null); //
console.log("undefined == null", undefined == null); //
console.log("undefined == 0", undefined == 0); //
console.log("null == 0", null == 0); //
console.log("undefined >= 0", undefined >= 0); //
console.log("null >= 0", null >= 0); //
console.log("1 === '1'", 1 === "1"); //
console.log("1 == '1'", 1 == " 1 "); //
console.log("1 == [1]", 1 == [1]); //
console.log("0 == [1]", 0 == [1]); //
console.log("[] == []", [] == []); //
console.log("1 == true", 1 == true); //
console.log("true > []", true > []); //
console.log("'банан' > 'арбуз'", "банан" > "арбуз"); //
console.log("'Банан' > 'арбуз'", "Банан" > "арбуз"); //
console.log("'2' > '11'", "2" > "11"); //
var date1 = new Date("2019-06-22T12:34:56");
var date2 = new Date("2019-06-22T12:34:56");
console.log("date1 == date2", date1 == date2); //
console.log("date1 >= date2", date1 >= date2); //
console.log("[] == ![]", [] == ![]); //

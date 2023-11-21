Строковое преобразование String() .
| value = String(value); // value - строка "true"
| alert(typeof value); // string

Численное преобразование Number() .
| Number(undefined); // NaN
| Number(null); // 0
| Number(true); // 1
| Number(false); // 0
| Number("123a"); // NaN

Логическое преобразование Boolean() .
| Boolean(0, undefined, null, NaN); // false
| Boolean(любое другое значение); // true



. {0, -0, undefined, null, NaN, false, ''} = {false}
. |2543, 1, true| = |true|
| console.log('1.1', Number(' 42\n ')); // 42
| console.log('1', Boolean(0)); // false
| console.log('2', !0); // true
| console.log('3', !!0); // false
| console.log('4', !!{}); // true
| console.log('5', !![]); // true
| console.log('6', Boolean(0)); // false
| console.log('7', !!new Boolean(0)); // false
| console.log('8', typeof[]); // [object Object]
| console.log('9', typeof null); // [object Object]
| console.log('10', typeof function(){}); // [function]
| console.log('11', [] instanceof Array); // true
| console.log('12', Array.isArray([])); // true
| console.log('13', 0 === 0); // true
| console.log('14', NaN === NaN); // false
| console.log('15', 0 === "0"); // false
| console.log('16', [] === []); // false
| var a = [], b = a;
| console.log('17', a === b); // true
| console.log('18', +true); // 1
| console.log('19', +null); // 0
| console.log('20', +undefined); // NaN
| console.log('21', +"  1e3  "); // 1000
| console.log('22', +[]); // 0
| console.log('23', +[1]); // 1
| console.log('24', +[1, 2, 3]); // NaN
| console.log('25', +{}); // NaN
| console.log('26', +(new Date)); // 1-
| var obj = {};
| console.log('27', +obj.someField); // NaN
| console.log('28', NaN === NaN); // false
| console.log('29', undefined === null); // false
| console.log('30', undefined == null); // false
| console.log('31', undefined == 0); // false
| console.log('32', null == 0); // true
| console.log('33', undefined >= 0); // false
| console.log('34', null >= 0); // true
| console.log('35', 1 === "1" ); // false
| console.log('36', 1 == " 1 "); // true
| console.log('37', 1 == [1]); // true
| console.log('38', 0 == [1]); // false
| console.log('39', [] == []); // true
| console.log('40', 1 == true); // true
| console.log('41', true > []); // true
| console.log ('42', "банан" > "арбуз"); // false
| console.log('43', "Банан" > "арбуз"); // true
| console.log('44', "2" > "11"); // false
| var date1 = new Date('2019-06-22T12:34:56');
| var date2 = new Date('2019-06-22T12:34:56');
| console.log('45', date1 == date2); // true
| console.log('46', date1 >= date2); // false
| console.log('47', [] == ![]); // false
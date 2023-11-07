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

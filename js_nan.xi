[js] @

. |NaN| является неравным (посредством сравнения через |==| и |===|) любому
  другому значению, `включая другое значение NaN`.
  |{js}
  | NaN === NaN // false
  | NaN == NaN // false
. Используйте |Number.isNaN()| или |isNaN()|, чтобы наиболее понятным образом
  определить является ли значение значением |NaN|.
  |{js}
  | isNaN(1) // false
  | Number.isNaN(1) // false
  | isNaN("string") // true, т.к. станет NaN после преобразования в число
  | Number.isNaN("string") // false, т.к. сейчас не NaN
  | isNaN(undefined) // true, т.к. станет NaN после преобразования в число
  | Number.isNaN(undefined) // false, т.к. сейчас не NaN
  ! Существует разница между ними:
    # |isNaN()|: если оно сейчас равно |NaN| или при преобразовании в число
      станет таковым.
    # |Number.isNaN()|: если оно сейчас равно |NaN|.

Функция проверки NaN #1 .
|{js}
| function checkNaN(x) {
|   if (isNaN(x)) {
|     return NaN;
|   }
|   return x;
| }
| checkNaN(1); // 1
| checkNaN(undefined); // NaN
| checkNaN('qwerty'); // NaN

Функция проверки NaN #2 .
|{js}
| function valueIsNaN(v) {
|   return v !== v;
| }
| console.log(valueIsNaN(1)); // false
| console.log(valueIsNaN(undefined)); // false
| console.log(valueIsNaN('qwerty')); // false
| console.log(valueIsNaN(NaN)); // true

[ts]

any .
. Нужен, когда не хочется, чтобы определенное значение вызывало ошибки проверки типов.
. Используется, в двух случаях:
  - переписываем код с JavaScript на TypeScript.
  - не важно, какой тип придет.
! Лучше сделать кастомный тип, который можно использовать вместо |any|:
| type $FixMe = any;
| const summary = (a: $FixMe, b: $FixMe) => a + b;
unknown .
. Когда не знаешь, какой тип данных вернется.
| const notSureWhatIs: unknown = 4;
unknown > any? .
. |any| means `ignore the type`, |unknown| means `we don’t know the type`, which aren’t the same thing, and for better code you’d rather not know the type than ignore it.
object .

never .

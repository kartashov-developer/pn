[ts] @

any .
. Нужен, когда не хочется, чтобы определенное значение вызывало ошибки 
проверки типов.
. Using in 2 cases:
  - rewrite code from JS on TS;
  - we don't care about the type, that we will get.
! Better to create a custom type, which we could use instead of |any|:
| type $FixMe = any;
| const summary = (a: $FixMe, b: $FixMe) => a + b;
unknown .
. You don't know, what type you will get.
| const notSureWhatIs: unknown = 4;
unknown > any? .
. |any| means `ignore the type`, |unknown| means `we don’t know the type`, 
which aren’t the same thing, and for better code you’d rather not know the 
type than ignore it.
object .

never .

[js] [js_null] [js_undefined]  @


null VS undefined .
|null| - присваивается, когда переменная ни на что не указывает.
|undefined| - присваивается, когда переменная не была объявлена.

== .
. |true|, так как нестрогое сравнение использует сравнение значений.
| console.log(null == undefined); > true
=== .
. |false|, так как строгое сравнение использует сравнение типов. Типы разные.
| console.log(null === undefined); > false


[js] @

. [js_hoisting].
. [js_functions].
. [js_variables].

Виды области видимости .
  Глобальная область видимости .
  Локальная область видимости .
  Блочная область видимости .
  Функциональная область видимости .
. В JavaScript есть несколько областей видимости, которые определяют доступность переменных и функций в различных частях кода. Вот основные области видимости в JavaScript:

Глобальная область видимости (Global Scope) .
. Переменные и функции, объявленные на верхнем уровне кода (за пределами функций), находятся в глобальной области видимости. Они доступны из любого места в коде.

Локальная область видимости (Local Scope) .
. Переменные и функции, объявленные внутри функций, имеют локальную область видимости, ограниченную этой функцией. Они доступны только внутри функции, в которой были объявлены.

Блочная область видимости (Block Scope): .
Введение блочной области видимости было добавлено в стандарте ECMAScript 2015 (ES6) с помощью ключевых слов let и const. Переменные, объявленные с использованием let и const внутри блока (внутри фигурных скобок {}), имеют область видимости, ограниченную этим блоком. Они доступны только внутри этого блока или во вложенных блоках.

Область видимости функции (Function Scope): .
В JavaScript переменные, объявленные с помощью ключевого слова var, имеют область видимости, ограниченную ближайшей функцией, в которой они были объявлены. Они не ограничены блоками {} и доступны внутри всей функции, даже если были объявлены внутри блока.
Другое .
. |Код выполняется сверху в вниз.|
  Когда запускается код, то движок проходит по коду два раза. В первый раз она смотрит, что объявлено(знакомится с кодом).
  На этом этапе происходит Hoisting[js_hoisting].
. |function|, |const|, |let| известны движку на этапе просмотра кода.
  Причем движку не важны вычисляемые значения. Он смотрит только на объявления.
  Поэтому функция <multiplyBy100>, использующая функцию, объявленную ниже <multiplyByTwo>, сработает.
  И в связи с этим говорят, что функция всплывает. Значит, что на момент выполнения кода движок знает, что ф-ия существует.
|{js}
| function multiplyBy100(num) {
|   // Function declaration
|   // global execution context
|   // > multiplyby100 execution contexton
|   let doubleNum = multiplyByTwo(num); //  BlockStatement - блок инструкций
|   return doubleNum * 100; // BlockStatement - блок инструкций + ReturnStatement
| }
|{js}
| function multiplyByTwo(el) {
|   // Function declaration
|   // global execution context
|   // >> multiplyby100 execution context
|   // >> multiplybytwo execution context
|   return el * 2; //BlockStatement + ReturnStatement
|   // el*2 - Binary Expression
|   // Доходя до ReturnStatement, JS понимает, что ф-ия закончилась и убирает ее из callstack'а
| }
. Пойдем в ф-ию <multiplyBy100>, передадим |num|: дальше мы попадаем в другую ф-ию, которая объявлена ниже и заносим ее в callstack(стек вызовов).
`callstack` - стопка. Кладем туда первую функцию и другие по порядку. Чтобы добраться до первой ф-ии,
нужно вызвать все остальные, которые закрыли ее сверху.
Global Execution Content
console.log(multiplyBy100(5)); // Expression Statement
// 5 - literal
! |{js}console.log()| тоже попадает в callstack, но сразу выполняется.

. |{js}let doubleNum| - ?VariableDeclaration?(объявление переменной)
. |{js}multiplyByTwo()| - ?Call Expression?(выражение вызова)
. |{js}return blabla;| - ?Return Statement?
. |{js}el * 2| - ?Binary Expression?


Reference @
JS Visualizer [https://ui.dev/]
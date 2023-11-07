[js] @

?|Анки вопросы|?
!|Тренировочка: goto://js_typeof_training.js |!

typeof .
. Операция, позволяющая узнать тип передаваемого операнда.
. Возвращает строку, указывающую тип операнда.
Синтаксис .
| typeof operand
. |{js}operand| - операнд || выражение(объект или примитив).
Значения .
. string -- "string"
. number -- "number"
. boolean -- "boolean"
. undefined -- "undefined"
. !null -- "object"!
. class -- "object"
. new -- "object"
  # new Promise -- "object"
  # new Date -- "object"
. function object -- "function"
. |other -- "object"|
| typeof 37; > "number"
| typeof 3.14; > "number"
| typeof ""; > "string"
| typeof "something"; > "string"
| typeof (typeof 1); > "string"
| typeof true; > "boolean"
| typeof false; > "boolean"
| typeof {a: 1}; > "object"
| typeof [1, 2, 4]; > "object"
| typeof new Date(); > "object"
| typeof function() {}; > "function"
| typeof class C {}; > "function"
| typeof Math.sin; > "function"
  null .
  | typeof null; > "object"
! используйте Array.isArray или Object.prototype.toString.call
! чтобы различить обычные объекты и массивы
typeof of typeof .
| let a = undefined;
| let b = null;
| let str = 'string';
| let num = 342;
| let obj = {};
| let func = () => {};
| console.log(typeof(typeof(a))); // >> string
| console.log(typeof(typeof(b))); // >> string
| console.log(typeof(typeof(str))); // >> string
| console.log(typeof(typeof(num))); // >> string
| console.log(typeof(typeof(obj))); // >> string
| console.log(typeof(typeof(func))); // >> string

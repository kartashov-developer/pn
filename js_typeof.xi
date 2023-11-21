typeof @

!Тренировка:! goto://js/training/js_typeof_training.js

typeof .
. Операция, позволяющая узнать тип передаваемого операнда.
. Возвращает строку, указывающую тип операнда.
Синтаксис .
|{js}  
| typeof operand
Значения .
| typeof null // object
| typeof new Promise(); // object
| typeof new Date(); // object
| typeof new Booblean(0); // object
| typeof new Date().getDate(); // function
| typeof 37; // "number"
| typeof 3.14; // "number"
| typeof ""; // "string"
| typeof "something"; // "string"
| typeof (typeof 1); // "string"
| typeof true; // "boolean"
| typeof false; // "boolean"
| typeof {a: 1}; // "object"
| typeof [1, 2, 4]; // "object"
| typeof new Date(); // "object"
| typeof function(){}; // "function"
| typeof class C {}; // "function"
| typeof Math.sin(); // "function"
! используйте |Array.isArray()| или |Object.prototype.toString.call|, чтобы 
  различить обычные объекты и массивы
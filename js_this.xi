this @

Basic this .
. Есть выполняющийся код, он выполняется внутри среды. Среда содержит различные 
  методы и способы взаимодействия с кодом.
  | "use strict";
  | console.log("this is: ", this);
  . Если в коде есть определение ф-ии. Если у нас есть определение ф-ии, то 
    вокруг него создается новое окружение, которое runtime хранит и 
    использует для этой функции.

this & Global Environment .

this & Functions .
. Только вызов нормальной ф-ии меняет this.
    | (Откуда мы пришли?)←←←←←←←←←←←←←←←←←←←←←←←←←←←←←←←←←←←←←←←←←←←←←←←←
    |        ⬇                                                         ⬆
    |        ⬇                                                         ⬆
    | <Я внутри функции?> →→→→Нет→→→→ |this = {} global object|         ⬆
    |        ⬇                                                         ⬆
    |     Да ⬇ Да                                                      ⬆
    |        ⬇                                                         ⬆
    | <Это не ArrowFunction?> →→→→Нет→→→→    ArrowFunction              ⬆
    |        ⬇                                   ⬇                     ⬆
    |     Да ⬇ Да                                ⬇                     ⬆
    |        ⬇                      Перейти к родительскому окружению  ⬆
    |        ⬇                                   ⬇                     ⬆
    |        ⬇                                   ⬇                     ⬆
    |        ⬇                       Уходим в начало алгоритма→→→→→→→→→→⬆
    |        ⬇
    |<Видим call, apply, bind?> →→→→Да→→→→ |this = значению из метода|
    |        ⬇
    |    Нет ⬇ Нет
    |        ⬇
    |    <Видим new?> →→→→→→→→→Да→→→→→→→→→ |this = {}|
    |        ⬇
    |    Нет ⬇ Нет
    |        ⬇
    |  <Вызов функции в dot-нотации?> →→→→→→→→→Да→→→→→→→→→ |this = theObject|
    |        ⬇
    |    Нет ⬇ Нет
    |        ⬇
    | |this = undefined|

  this & call, apply, bind .
  . Будет равен значению из метода.
    | "use strict";
    | function doLogThis() {
    |   console.log( "this is: ", this );
    | };
    |
    | var thisArg = { name: "thisArg" };
    |  
    | doLogThis.call( thisArg ); // this is: { name: "thisArg" }
    | doLogThis.apply( thisArg ); // this is: { name: "thisArg" }
    | doLogThis.bind( thisArg )(); // this is: { name: "thisArg" }

  this & dot notation .
  | theObject.func(); // dot notation
  | theObject["func"](); // dot notation
  | 
  | function something() {
  |   console.log("this: ", this);
  | }
  | const object = {
  |   prop: something
  | }
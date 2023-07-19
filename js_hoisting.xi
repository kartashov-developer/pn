[js] @

Hoisting .
Поднятие .
. Механизм в JS, при котором объявления переменных и ф-ий перемещаются в начало их области видимости перед выполнением кода.
  Это означает, что можно использовать перменные и вызывать функции до их фактического объявления.
. Hoisting применяет только к объявлениям переменных и функциям.
! Поднятие происходит только в пределах области видимости, где была объявлена переменная или ф-ия. Если объявление происходит внутри какого-то блока(if, for, while, ...), то областью видимости будет этот самый блок.
  Поднятие переменной .
  ! <Работает только с var>
  . Да, переменная объявлена после вывода, но она поднимается в начало своей области видимости. В результате выводится <undefined>, а не ошибка. |Переменная существует, но не инициализирована|(не присвоено значение).
  |{js с VAR}
  | console.log(x);
  | var x = 10; // undefined
  |{js с LET}
  | console.log(variable);
  | let variable = 10; // Error: Cannot access 'variable' before initialization
  Поднятие функции .
  . Функция вызывается до ее фактического объявления. Она поднимается в начало своей области видимости, поэтому вызов успешно выполняется.
  |{js}
  | sayHello(); // 'Hello'
  | function sayHello() {
  |   console.log('Hello');
  | }
  Поднятие функции и переменной .
  . Ф-ия и переменная объявлены в одной области видимости. При вызове ф-ии обе поднимаются, но инициализация происходит после вывода.
  |{js}
  | var y = 10;
  | function printNumber() {
  |   console.log(y);
  |   var y = 20;
  | }
  | printNumber(); // undefined
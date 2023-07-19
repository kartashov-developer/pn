[js]

undefined .
. `Обозначает, что значение не установлено или неизвестно.`
  Присваивается для:  .
  . Неициализированных переменных. Это переменная, которой не присвоено значение.
  |{js}
  | let name;
  | console.log(name); // undefined
  . Несуществующее свойство объекта.
  | const object = {};
  | console.log(object[name]); // undefined
  . Для неициализированных аргументов функций.
  |{js}
  | function someFunc(a, b) {
  |   return console.log(b);
  | };
  | someFunc(1); // undefined
  . Функция возвращает |undefined|, если не возвращает какого-либо значения.
  |{js}
  | const doNothing = () => {};
  | console.log(doNothing()); // undefined
  . При изменении примитивного типа.
  |{js}
  | let answer = true; // создаем переменную, значение примитивного типа
  | answer.options = false; // в качестве свойства, добавляем к нашей переменной
  | свойство 'options' и присваиваем ему булевое значение примитивного типа
  | console.log(answer.options); // undefined
  | // так как примитивные типы иммутабельны||неизменяемы
  Дополнительно .
  . |null| во время математических операция и операция сравнения
    приводится к |0|, так как "ничего" это 0.
  . |undefined| во время операции привести к числу нельзя и получается |NaN|.

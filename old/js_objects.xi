[js] @

Объекты .
. В JavaScript сущетвует 8 типов данных. 7 из них являются `примитивными`. Единственный не примитивный из них - объект.
. Объекты используются для хранения коллекций различных значений и более сложных сущностей.
. Объект - неупорядоченный, неоднородный набор данных.
  Деструктуризация объектов .
  . Разбор объекта на составляющие.
  |{js}
  | let obj1 = {
  |  q: 1,
  |  w: 2,
  | };
  | let { q, w } = obj1;
  | console.log(q); // 1
  | console.log(w); // 2
Possible ways to create objects .
. There are 5 ways:
  # Object literal syntax:
  | let object1 = {};
  | console.log(object1); // > {}
  # Object constructor:
  | let object2 = new Object();
  | console.log(object2); // > {}
  # Object's create method: [#1]
  | let object3 = Object.create(null);
  | console.log(object3) // > [Object: null prototype] {}
  # Function constructor:
  | function User(name) {
  |   this.name = name;
  | };
  | let object4 = new User("Vyacheslav");
  | console.log(object4); // > User { name: 'Vyacheslav' }
  # ES6 Class syntax:
  | class User2 {
  |   constructor(name) {
  |     this.name = name;
  |   };
  | };
  | let object5 = new User2("Vyacheslav");
  | console.log(object5); // > User2 { name: 'Vyacheslav' }
Добавление .
|{js}
| const object = { a: 1 }
| object.b = 'some text';
| object['c'] = true;
Обращение к свойству объекта .
. Обращаемся с помощью точки.
|{js}
| obj.valueName;
. Обращаемся с помощью квадратных скобок и кавычек.
|{js}
| obj['valueName'];
. Обращение к свойству, содержащему объект.
|{js}
| const obj = {
| name: 'Vyacheslav',
| lastName: 'Kartashov',
| skills: {
|   main: 'JavaScript',
|   submain: 'Python'
|   },
| };
| obj['skills']['main']; // >> JavaScript
| obj['skills']['submain']; // >> Python
Деструктуризация объекта .
|{js}
| const obj = {
| name: 'Vyacheslav',
| lastName: 'Kartashov',
| skills: {
|   main: 'JavaScript',
|   submain: 'Python'
|   },
| };
| const {main, submain} = obj.skills;
| console.log(main); // >> JavaScript
| console.log(submain); // >> Python

| const options = {
|   name: "test",
|   width: 1024,
|   height: 1024,
|   colors: {
|     border: "black",
|     bg: "red",
|   },
| };
| console.log(options.name);
| delete options.name; // удаляет свойство объекта
| console.log(options);
. Как обратиться к ?colors: border}?
| console.log(options["colors"]["border"]); // black
for in - перебор объекта .
  ?let? {объект, в каком объекте мы все будем перебирать?} ?in? {имя свойства, как каждое свойство назвать}
  |{js}
  | for (let key in options) {
  |   console.log(`Свойство ${key} имеет значение ${options[key]}`);
  | }
  for in с вложенными объектами .
  | for (let key in options) {
  |   if (typeof options[key] === "object") {
  |     for (let i in options[key]) {
  |       console.log(`Свойство ${i} имеет значение ${options[key][i]}`);
  |       >> Свойство border имеет значение black. Свойство bg имеет значение red.
  |     }
  |   } else {
  |     console.log(`Свойство ${key} имеет значение ${options[key]}`);
  |   }
  | }
Методы объекта .
  Object.keys .
  | const options2 = {
  |   name: "test",
  |   width: 1024,
  |   height: 1024,
  |   colors: {
  |     border: "black",
  |     bg: "red",
  |   },
  | };
  | console.log(Object.keys(options2)); // >> [ 'name', 'width', 'height', 'colors' ]
  | console.log(Object.keys(options2).length); // >> length == 4

Reference @
[1#] [https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Object/create]

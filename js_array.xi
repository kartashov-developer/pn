Array @

База .
. <Массив> - частный случай объекта, потому что `ключ` это номер по порядку.
. <Массив> - упорядоченный, неоднородный набор данных.
  `упорядоченный` - порядок, в котором мы создали массив - сохранится;
  `неоднородный` - можем хранить в них все, что угодно.
. Массивы располагаются строго по порядку. Ключ всегда `фиксирован`. Порядок 
  имеет важную роль и он `не меняется`.
. В массивах порядок начинается с |0|.
  |{js}  
  | const array = {
  |   0: 'a',
  |   1: 'b',
  |   2: 'c',
  | };
Создание массивов .
  Через литеральную нотацию .
    |{js}  
    | let arr1 = [123, "string", func()];
  Через конструктор .
    |{js}  
    | lengtht arr2 = new Array();
    Заполнение через конструктор .
    |{js}  
    | let arr2 = new Array(10, "string", true); // [ 112, 'string', true ]
      Создание пустого массива через конструктор .
      |{js} . 
      | let arr2 = new Array(5); // пять пустых ячеек [<10 empty items>]
      | console.log(arr2[1]); // undefined(значение пустое)
      Заполнение одинаковыми значениями через конструктор .
      |{js}  
      | let arr2 = new Array(5).fill(1); // [ 1, 1, 1, 1, 1 ]
Массивы хранятся по ссылкам .
|{js}  
| let bla = [1, 2, 3];
| let bla2 = bla;
| bla[0] = 10;
| console.log(bla); // [ 10, 2, 3 ]
| console.log(bla2); // [ 10, 2, 3 ]
  Поверхностное копирование массивов .
  . Работает только с примитивами. Если есть вложенные структуры, то новый 
    массив будет хранить только `ссылку` на них(изменяют их - изменяется и 
    animals2).
    |{js}  
    | let animals2 = [...animals];
  Глубокое копирование массивов .
  . Отлично работает с вложенными структурами.
    |{js}  
    | let people2 = JSON.parse(JSON.stringify(people));
    // Создаем JSON-строку -> парсим JSON-строку в JS-массив
Деструктуризация массивов .
|{js}  
| let arr10 = ["bla", "hello", "wow", "foo"];
| let [first, second] = arr10;
| console.log(first, second); // bla, hello
Перебор массива .
  loop for .
  |{js}  
  | for (let i = 0; i < arr1.length; i++) {
  |   console.log(arr1[i]);
  | }
  for of .
  |{js}  
  | for (let index of arr1) {
  |   console.log(index);
  | }
  forEach .
  |{js}  
  | arr1.forEach((element, index, array) => {
  |   console.log(`${index}: ${element} внутри массива ${array}.`);
  | });



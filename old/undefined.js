/* Является примитивным типом данных. Обозначает, что значение не установлено 
или неизвестно.
Присваивается для:
1. Неициализированных переменных. Это переменная, которой не присвоено
значение. */
let name;
console.log(name) // переменной ничего не присвоили - undefined
// 2. Несуществующее свойство объекта.
const object = {};
console.log(object.name) // undefined
// 3. Для аргументов функции, которые не передали при вызове.
function someFunc(a, b) {
  return console.log(b);
};
someFunc(1); // в функцию не было передано учавствующий аргумент, поэтому undefined
// 4. Функция возвращает undefined, если не возвращает какого-либо значения.
const doNothing = () => {};
console.log(doNothing()); // нечего возвращать - undefined.
// 5. При изменении примитивного типа.
let answer = true; // создаем переменную, значение примитивного типа
answer.options = false;
/* в качестве свойства, добавляем к нашей переменной свойство 'options' и присваиваем
ему булевое значение примитивного типа */
console.log(answer.options); // undefined
// так как примитивные типы иммутабельны||неизменяемы

/* Дополнительно
null во время вычислительных операций или операций сравнения приводится к 0, так как
"ничего" это 0.
undefined во время операции привести к числу нельзя и получается NaN. */
console.log("===================Операции===================")
console.log(`undefined + undefined: ${undefined + undefined}`); // NaN + NaN = NaN
console.log(`null + undefined: ${null + undefined}`); // 0 + NaN(undefined) = NaN
console.log("===============Сравнение с нулем===============")
console.log(`undefined > 0: ${undefined > 0}`); // false
console.log(`undefined > 0: ${undefined < 0}`); // false
console.log(`undefined >= 0: ${undefined >= 0}`); // false
console.log(`undefined => 0: ${undefined <= 0}`); // false
console.log(`undefined == 0: ${undefined == 0}`); // false
console.log(`undefined === 0: ${undefined === 0}`); // false: undefined(type)!==number(0)
console.log("===============Сравнение с null===============")
console.log(`undefined > null: ${undefined > null}`); // false
console.log(`undefined < null: ${undefined < null}`); // false
console.log(`undefined >= null: ${undefined >= null}`); // false
console.log(`undefined <= null: ${undefined <= null}`); // false
// undefined ничему не равен, кроме null и самого себя
console.log(`undefined == null: ${undefined == null}`); // true


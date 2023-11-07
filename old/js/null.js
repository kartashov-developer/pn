
/* Значение намеренно отсутствует.
Обычно задается явно и означает, что переменная ничего не содержит.*/
let someValue = null;
console.log(typeof someValue); // object


// Дополнительно
/* Операции с null & undefined
null во время вычислительных операций или операций сравнения приводится к 0, 
так как "ничего" это 0.
undefined во время операции привести к числу нельзя и получается NaN. */
console.log("===================Операции===================")
console.log(`null + null: ${null + null}`); // 0 + 0 = 0
console.log(`null - null: ${null - null}`); // 0 - 0 = 0
console.log(`null - 100: ${null - 100}`); // 0 - 100 = -100
console.log(`null/null: ${null/null}`); // 0/0 = NaN
console.log("===============Сравнение с нулем===============")
// Почему null<0 || null>0? Потому что сравнения преобразуют null в 0.
console.log(`null > 0: ${null > 0}`); // false 0 !> 0
console.log(`null < 0: ${null < 0}`); // false 0 !< 0
console.log(`null >= 0: ${null >= 0}`); // true 0 >= 0
console.log(`null <= 0: ${null <= 0}`); // true 0 <= 0
// null ничему не равен, кроме undefined и самого себя
console.log(`null == 0: ${null == 0}`); // false
console.log(`null === 0: ${null === 0}`); // false






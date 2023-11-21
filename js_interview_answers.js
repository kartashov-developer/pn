// 1. What are the possible ways to create objects in JavaScript
// goto://js_objects.xi
// Object literal
let object1 = {};
console.log(object1); // > {}
// Object constructor
let object2 = new Object();
console.log(object2); // > {}
// Object create's method
let object3 = Object.create(null);
console.log(object3); // > [Object: null prototype] {}
// Function constructor
function User(name) {
  this.name = name;
}
let object4 = new User("Vyacheslav");
console.log(object4); // > User { name: 'Vyacheslav', age: 21 }
// ES 6 Class syntax
class User2 {
  constructor(name) {
    this.name = name;
  }
}
let object5 = new User2("Vyacheslav");
console.log(object5); // User2 { name: 'Vyacheslav' }
/* 4. What is JSON and its common operations */

/* 72. What is undefined property */
let nameProperty;
console.log(nameProperty);
const object = {};
console.log(object[nameProperty]);
const doNothing = () => {};
console.log(doNothing());

/* 73. What is null value */
// Значение отсутствия значения.
// Назначается явно.
const nullZ = null;
console.log(nullZ);

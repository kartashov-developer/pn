console.log('typeof function() {} >> ', typeof function () {}); //
console.log('typeof 3.14 >> ', typeof 3.14); //
console.log('typeof "" >> ', typeof ''); //
console.log('typeof "something" >> ', typeof 'something'); //
console.log(
  'typeof new Promise() >> ',
  typeof new Promise((resolve, reject) => {})
); //
console.log('typeof 1 >> ', typeof typeof 1); //
console.log('typeof null >> ', typeof null); //
console.log('typeof true >> ', typeof true); //
console.log('typeof 37 >> ', typeof 37); //
console.log('typeof {a: 1} >> ', typeof { a: 1 }); //
console.log('typeof undefined >> ', typeof undefined); //
console.log('typeof new Date() >> ', typeof new Date()); //
console.log('typeof [1, 2, 4] >> ', typeof [1, 2, 4]); //
console.log('typeof Math.sin >> ', typeof Math.sin); //
console.log('typeof false >> ', typeof false); //
console.log('typeof class C {} >> ', typeof class C {}); //

let obj = {
  set: 'name',
  func: () => {}
};

console.log('typeof obj.set >>', typeof obj.set); //
console.log('typeof obj.func() >>', typeof obj.func()); //
console.log('typeof obj.func >>', typeof obj.func); //

//
console.log(console.log(1) || 2 || console.log(3));
console.log(null || 2 || undefined);
console.log(1 && null && 2);
console.log(console.log(1) && console.log(2));
console.log(null || (2 && 3) || 4);

let value = NaN;
value &&= 10;
value ||= 20;
value &&= 30;
value ||= 40;
console.log(value);

/* Напишите условие if для проверки, что переменная age находится в диапазоне
между 14 и 90 включительно. */

/* Напишите условие if для проверки, что значение переменной age НЕ находится
в диапазоне 14 и 90 включительно.
Напишите два варианта: первый с использованием оператора НЕ !, второй – без
этого оператора. */

// Какие из перечисленных ниже alert выполнятся?
// Какие конкретно значения будут результатами выражений в условиях if(...)?
if (-1 || 0) alert('first'); // +
// -1
if (-1 && 0) alert('second'); // false
// 0
if (null || (-1 && 1)) alert('third'); // +
// true

let userGreeting = prompt('Who are you?', '');

if (!userGreeting === 'admin') {
  // Password prompt
  let password = prompt('Password?', '');

  if (password === 'admin') {
    alert('Admin, Hello!');
  } else if (password == null || password == '') {
    alert('Cancelled.');
  } else {
    alert('Sorry, try again.');
  }

  // Other variants
} else if (userGreeting == null || userGreeting == '') {
  alert('Cancelled.');
} else {
  alert('Sorry, try again.');
}

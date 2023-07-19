let user = {
  name: "John",
  age: 30,
  isAdmin: true
};

for (let key in user) {
  // ключи
  console.log( key );  // name, age, isAdmin
  // значения ключей
  console.log( user[key] ); // John, 30, true
}
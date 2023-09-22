const setPromise = (value, ms, isRejected = false) =>
  new Promise((resolve, reject) =>
    // Если isRejected = true, то отказ
    // если isRejected = false, то успех
    setTimeout(() => isRejected ? reject(value) : resolve(value), ms))

/* Метод .all()
Возвращает массив значений или первый отказ. */
Успешное выполнение
Promise.all([
  setPromise('GOOD#1', 400), // успех #1
  setPromise('GOOD#2', 200), // успех #2
]).then((result) => { // ловим успешное выполнение
  console.log(result); // [ 'GOOD#1', 'GOOD#2' ](массив значений)
})
// Отказ выполнения
Promise.all([
  setPromise('GOOD', 300),
  setPromise('BAD', 400, true)
]).catch((error) => { // ловим ошибку
  console.log(error); // BAD(не массив)
})

/* Метод .race()
Возвращает первое значение или первый отказ. Самое быстрое значение.*/
// Успешное выполнение
Promise.race([
  setPromise('GOOD#1', 400), // успех #1
  setPromise('GOOD#2', 200), // успех #2
]).then((result) => { // ловим успешное выполнение
  console.log(result); // GOOD#1
})
// Отказ выполнения
Promise.race([
  setPromise('BAD#2', 400, true)
  setPromise('BAD#1', 300, true),
]).catch((error) => { // ловим ошибку
  console.log(error); // BAD#2
})

/* Метод .any()
Возвращает первое значение или массив с причинами отказа.*/
// Успешное выполнение
Promise.any([
  setPromise('GOOD', 400), // #1
  setPromise('BAD', 200, true), // #2
]).then((result) => { // ловим успешное выполнение
  console.log(result); // >> 'GOOD'
  // первое значение у промиса #1
})
// Отказ выполнения
Promise.any([
  setPromise('BAD#1', 400, true),
  setPromise('BAD#2', 200, true),
]).catch((result) => { // ловим ошибку
  // все промисы были выполнены с ошибкой
  console.log(result.message); // [BAD#1, BAD#2]
  console.log(result.errors); // массив с причинами отказа
})

/* Метод .allSettled()
Дожидается всех операций и вернуть массив специальных объектов.
Подойдет, если нужно запросить несколько запросов, а потом перезапросить.*/
Promise.allSettled([
  setPromise('GOOD', 400), // #1
  setPromise('BAD', 200, true), // #2
]).then([resolved, rejected]) => {
  console.log(resolved); // { status: fullfilled, value: 'GOOD'}
  console.log(rejected); // { status: rejected, value: 'BAD'}
}



async .
. Асинхронная функция, котороая заворачивает свой результат в `Promise`.
. Пишем |async| перед функцией и наша функция теперь возвращает `Promise`.
|{lng:js}
| async function asyncFunction() {
|   return 'DONE'
| }
| asyncFunction().then((value) => {
|   console.log(value); // 'DONE'
| })
await .
. Получает результат из `Promise`.
. Работает только внутри асинхронной функции.
|{lng:js}
| (async () => {
|   const value = await Promise.resolve('DONE');
|   console.log(value); // 'DONE'
| })()
  Паралельные запросы .
  . Проблема кода ниже в том, что запрос !pictures! не начнется, пока не
    закончится запрос у !articles!.
    |{lng:js}
    | const articles = await fetchArticles();
    | const pictures = await fetchPictures();
  ! Запросы независимы, но выполняются последовательно.
    Решение 1 .
    |{lng:js}
    | const articlePromise = fetchArticles();
    | const picturePromise = fetchPictures();
    | const articles = await articlesPromise();
    | const pictures = await picturesesPromise();
    Решение 2 .
    |{lng:js}
    | const [articles, pictures] = await Promise.all([
    |   fetchArticles()
    |   fetchPictures
    | ])
try...catch .
. Обработка ошибок.
|{lng:js}
| async function asyncFunction() {
|   try {
|     await Promise.reject('DONE')
|   } catch(error) {
|     // перехватить ошибку
|   }
| }
| asyncFunction().then((value) => {
|   // успешно
| })

[js_array_methods] .
# Методы итерации по массивам будут выполняться `асинхронно`.
forEach + async/await .
. Пробегает по элементам массива и что-то с ними делает.
  |{lng:js}
  | const wtf = ['WOW'];
  | wtf.forEach(async (emoji) => {
  |   console.log(emoji);
  | })
  | console.log('Это асинхронно!');
  | >> (1) 'Это асинхронно!'
  | >> (2) 'WOW'
map + async/await .
  |{lng:js}
  | const urls = ['/data', '/meta'];
  | const promises = urls.map(async (url) => {
  |   return await fetch(url)).json();
  | })
  | const result = await Promise.all(promises);
  | console.log(result); // [{...}, {...}]
filter + async/await .
. Не работает.

Вы не знаете JS. Асинхронная обработка и оптимизация.
Джейк Арчибальд. В цикле JSConf.Asia.
Полное понимание асинхронности в браузере. Хабр.






















|{lng:js}
|{lng:js}

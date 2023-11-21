Async/Await @

async .
. Асинхронная функция, котороая заворачивает свой результат в `Promise`.
. Пишем |async| перед функцией и наша функция теперь возвращает `Promise`.
  |{js}  
  | async function asyncFunction() {
  |   return 'DONE'
  | }
  | asyncFunction().then((value) => {
  |   console.log(value); // 'DONE'
  | })
await .
. Получает результат из `Promise`.
. Работает только внутри асинхронной функции.
  |{js}  
  | (async () => {
  |   const value = await Promise.resolve('DONE');
  |   console.log(value); // 'DONE'
  | })()
  Паралельные запросы .
  . Проблема кода ниже в том, что запрос !pictures! не начнется, пока не
    закончится запрос у !articles!.
    |{js}  
    | const articles = await fetchArticles();
    | const pictures = await fetchPictures();
  ! Запросы независимы, но выполняются последовательно.
    Решение 1 .
    |{js}  
    | const articlePromise = fetchArticles();
    | const picturePromise = fetchPictures();
    | const articles = await articlesPromise();
    | const pictures = await picturesesPromise();
    Решение 2 .
    |{js}  
    | const [articles, pictures] = await Promise.all([
    |   fetchArticles()
    |   fetchPictures
    | ])

try...catch .
. Обработка ошибок.
  |{js}  
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

async and Array methods .
  forEach + async/await .
  . Пробегает по элементам массива и что-то с ними делает.
    |{js}  
    | const wtf = ['WOW'];
    | wtf.forEach(async (emoji) => {
    |   console.log(emoji);
    | })
    | console.log('Это асинхронно!');
      // (1) 'Это асинхронно!'
      // (2) 'WOW'
  map + async/await .
    |{js}  
    | const urls = ['/data', '/meta'];
    | const promises = urls.map(async (url) => {
    |   return await fetch(url)).json();
    | })
    | const result = await Promise.all(promises);
    | console.log(result); // [{...}, {...}]
  filter + async/await .
  . Не работает.






















|{lng:js}
|{lng:js}

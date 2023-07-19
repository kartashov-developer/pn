Notes [index]  @

- Core.js
- OOP
- TS
- Node.js
- JavaScript
- WebPack
- Git
- React
- Redux
- Routes
- Алгоритмы и структуры данных
- Codewars - 4kyu
- LeetCode - some hard tasks
- Проект на JS + TS [https://tproger.ru/articles/pet-proekt-pishem-igru-na-js-ts-i-razvivaem-navyk-raboty-s-kodom/] file
plan for tomorrow .
. У меня есть несколько проблем с JavaScript:
  - DOM,
  - Promises,
  - async/await,
  - fetch,
  - class
. Мне нужно создать сайт чего-то. Он должен выдавать данные, взятые с API, а также из БД.
. Мне нужно также изучить несколько технологий.
Проект .
  Создание проекта .
  | npm init
  Установка линтера .
  | npx eslint --init

. Разобрать Chrome Bookmarks
. Разобрать Youtube Сохраненное
. Быстрое добавление ссылок в телегу

------------------------------------------------------------------------------
?App.jsx?
import { useRoutes } from 'react-router-dom';
import router from 'src/router';
  |inside function App|
| const content = useRoutes(router);
?router.jsx?
| import { Navigate } from 'react-router-dom';
const routes = [
  {
    path: '',
    element: <BaseLayout />
  }
]



- 1: Scoping && Hoisting
- 2: Context(this): call, apply, bind
- 3: Arrow function vs function
- 4: Closure function
- 5: Immediately invoked function expression (IIFE)
- 6: Strict mode
- 7: Prototypes (__proto__, prototype)
- 8: Каррирование функций 
- 9: HTTP-протокол (из чего состоит, различные headers, HTTPS)
- 10: Итераторы
- 11: Генераторы
- 12: Императивное vs Декларативное программирование
- 13: Функциональное vs Объектно-ориентированное программирование
- 14: LocalStorage && SessionStorage
- 15: Иммутабельность && типы Set, Map, WeakSet и WeakMap
- 16: Passport JS
- 17: Event Bubbling и Event Capturing
- 18: Примеры сложной Деструктуризации
- 19: Spread-оператор и rest-оператор
- 20: Wrapper Objects?
- 21: Что такое объект arguments?
- 22: Флаги и дескрипторы. Для чего нужны и как с ними работать?  
- 23: Referential transparency and pure functions
- 24: RxJS
- 25: Как читать официальную спецификацию ECMAScript на примере цикла for
- 26: Монады в JS
- 27: Node.JS Streams
- 28: Node.JS C++ Addons
- 29: Node.JS EventEmitter
- 30: Node.JS Worker Threads

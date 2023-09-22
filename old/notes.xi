Notes [index]  @

[sublime_theme] .

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

DONE:Выберите базу данных: Различные базы данных предлагают разные возможности и 
характеристики. Некоторые популярные базы данных включают MySQL, PostgreSQL и 
MongoDB. Выберите базу данных, которая наилучшим образом соответствует вашим 
требованиям.

Создайте сервер: На сервере вы будете размещать ваше веб-приложение и 
обрабатывать запросы от клиентов. Вы можете использовать разные технологии для 
создания сервера, такие как Node.js с использованием фреймворка Express, 
Django (Python), Ruby on Rails и т. д. Выберите технологию сервера, которая 
наиболее подходит для ваших потребностей.

Установите соединение с базой данных: Используйте библиотеку или драйвер для 
выбранной вами базы данных, чтобы установить соединение с базой данных на 
вашем сервере. Каждая база данных имеет свои собственные специфические 
инструкции для установки соединения.

Создайте API-маршруты: Определите маршруты и обработчики на вашем сервере, 
которые будут обрабатывать запросы от клиентов. Например, вы можете создать 
маршрут для получения данных из базы данных или маршрут для отправки данных в 
базу данных. Используйте соответствующие методы HTTP (GET, POST, PUT, DELETE) 
для различных операций.

Подключите ваш сайт к серверу: Используйте AJAX или Fetch API на вашем сайте, 
чтобы отправлять запросы к серверу и получать ответы. Вы можете использовать 
JavaScript или любой фреймворк, такой как React, Angular или Vue.js для 
управления взаимодействием с сервером на клиентской стороне.

Тестируйте и отлаживайте: Убедитесь, что ваше веб-приложение взаимодействует 
с базой данных и сервером должным образом. Протестируйте различные сценарии, 
включая получение данных, отправку данных и обработку ошибок.

Обеспечьте безопасность: Учитывайте вопросы безопасности при работе с базой .
данных и сервером. Используйте параметризованные запросы, чтобы предотвратить 
атаки SQL-инъекций, и применяйте подходы к защите данных и аутентификации.

Учтите, что каждая база данных и серверная технология имеет свои особенности 
и специфические














Structure of the project .
. This is very important part of every project. On the end of the main part, 
you could have really massive web-application. Components, forms, utils, 
images and so on. What you could do? Of course, you could you |decompozition|.
  Decompozition .
  . `Decompozition` - enabling other features hand creating 'parts' of your 
    project. For example, ahead or forgiveness.
  . Main part of decompozition have some several parts:
    # create a structure in the head;
    # realize the idea;
    # part on folders.
    Creating a structure .
    . Creating a structure using an array:
      |{TypeScript}
      | const code = 'ISSUE';
      | function handlerCode(code) {
      |     // For example assertion
      |     if (code) return !code
      | }
      | handlerCode()
    

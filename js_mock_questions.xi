JavaScript Questions Mock @

Part 1 [#1] .
// Перечисли все типы данных?
  . number, string, boolean, null, undefined, BigInt, Symbol
// Ссылочный тип данных? [js_object]
  . Object.
// Чем отличается null от undefined? [js_null] [js_undefined]
  . null указывает на то, что он есть, но он пуст,
    undefined указывает на полное отсутствие данных.
// Как узнать тип переменной? Что возвращает typeof? [js_typeof]
  . typeof
  . тип операнда
// typeof null?
  . object
// Как проверить переменную на NaN?
  . isNaN(variable) 
    . Если сейчас станет или при преобразовании в число будет {NaN}.
  . Number.isNaN(variable)
    . Если оно сейчас равно {NaN}.
// Как проверить, что число Infinity?
  . Поделить на ^0^.
// Расскажи про alert, prompt, confirm. Что они принимают, что возвращают?
  [js_alert_prompt_confirm]   
// Как можно преобразовать значение в строку?
  |{js}  
  | let value = true;
  | String(value); // typeof - string
  | value = ""+true; // typeof - string
  | value.toString(); // typeof - string
// Как можно преобразовать значение в число?
  |{js}  
  | let value = "100";
  | Number(value); // typeof - number
  | value = +true; // typeof - number
  | value = value.toInteger(); // typeof - number
  | value = parseInt(value); // typeof - number
  | value = value - 10; // typeof - number
// Во что преобразуется undefined?
  . {NaN (number)}
  . {false (boolean)}
// Во что преобразуется null?
  . {0 (number)}
  . {false (boolean)}
// Во что преобразуется true?
  . ^1^
// Во что преобразуется false?
  . ^0^
// Во что преобразуется ""?
  . {false}
// Boolean("some string")
  . |true|
// Boolean("")
  . {false}
// Что такое операнд?
  | 2 * 5 // 2, 5 - операнды
// Что такое унарный оператор?
  | +"hello" // + - унарный оператор
// Что такое бинарный оператор?
  | x * y // * - бинарный оператор, умножающий два операнда
// Что такое %?
  !no answer!
  | let num = 5 % 2;
  | let num = 5 % 3;
// Возведение в степень?
  | 5 ** 2;
  | Math.pow(5, 2);
// Приоритеты операторов?
  !no answer!
// a = b = c = 2 + 2;
  . Справа налево.
    a = 4, b = 4, c = 4
// Инкремент, декремент?
// Дай ответы
  | "" + 1 + 0
  | "" - 1 + 0
  | true + false
  | 6 / "3"
  | "2" * "3" -1
  | "$" + 4 + 5
  | "4" - 2
  | "4px" - 2
  | "" - 5
  | null + 1
  | undefined + 1
  | " It \n" - 2
Part 2 [#2] .
// React: Что такое Virtual DOM?
  . Способ оптимизации взаимодействия с реальным DOM.
// React: Зачем нужен виртуальный DOM?
  . Для повышения производительности за счет уменьшения нагрузки на реальный DOM, 
    так как манипуляции с ним могут быть ресурсоемкими. Изменения сначала 
    происходят в VitrualDOM, а затем применяются только минимальные необходимые 
    изменения к реальному DOM.
// React: Этапы VirtualDOM?
  1. Данные или состояние изменяется.
  2. Метод |render()| генерирует новый VirtualDOM.
  3. Сравнивает с предыдущим VirtualDOM.
  4. Определяет изменения узлов.
  5. Обновляет реальный DOM.
// React: В результате чего появляется Virtual DOM? В результате какого метода 
// жизненного цикла он появляется?
  . Это происходит в результате вызова метода |render()|, который определяет, 
    как должен выглядеть компонент на основе его состояния и свойств.
// React: 6 причин перерендеринга компонента?
  . !Изменение состояния!
  . !Изменение состояния родителя!
  . !Изменение контекста! |useContext|
  . !Изменение пропсов!
  . !forceUpdate()!
// React: Что такое batching в React JS?
  . Механизм, который объединяет несколько вызовов setState в одно обновление.
    . Помогает избежать ненужны перерисовок.
    |{js}  
    | const [counter1, setCounter1] = useState(0);
    | const [counter2, setCounter2] = useState(0);
    |  
    | const handleIncrement1 = () => { // не batching
    |   setCounter1((c1) => c1 + 1);
    | };
    |  
    | const handleIncrement2 = () => { // batching
    | 	setCounter1((c1) => c1 + 1);
    |   setCounter2((c2) => c2 + 1);
    | };

  | }
// React: Для чего нужен useTransition и useDefferedValue?
  !no answer!
// TS: Можно ли описать функцию интерфейсом? (можно в одну строку)
  !no answer!
  |{ts}  
  | interface MyFunction {
  |   (a: string, b: string) : string;
  | }
    ⬇ Function Declaration
  | function MyFunction<MyFunction>(a, b) {
  |   return a + b;
  | }
    ⬇ Arrow Function
  | const MyFunction: MyFunction = (a, b) => {
  |   return a + b;
  | }
// KISS, DRY?
  !no answer!
  . |DRY| - Don't repeat yourself. 
  . |KISS| - 
// Что такое stateless?
  . Компонент без состояния. Принимает только пропсы, чистый компонент.
// Зачем нужен infer в TS?
  !no answer!
  . Выводит тип.
// Зачем нужен never в TS?
  !no answer!
  . Тип, которой никогда не должен произойти.
  . Может приписаться к типу, но никто не может приписаться к нему.
  . Условие невозможно.
    |{js}  
    | function throwError (message: string): never {
    |   throw new Error(message);
    | }
// Зачем нужен void в TS?
  . Ф-ия не возвращает значения. Отсутствие типа.
  . {undefined}.
// Различия между any и unknown в TS?
// 7. Расскажите о паттернах Observer, Pub | Sub. Какая между ними разница? 
// Приведите примеры реализации этих паттернов в известных фреймворках | 
// библиотеках | браузерных АРІ.
// 8. С какой целью может быть использован event listener события fetch 
// self.addEventListener ('fetch', event => {})?
// 11. Что такое temporal dead zone?
  . StaticSemantics будет выполнена до исполнения кода, она его прочитает, но 
    не исполнет
// 12. Как работает boxing | unboxing в JavaScript?
// 13. В чем разница между оператором in и методом hasOwnProperty?
// 15. Что такое прототип? Как работает прототипное наследование в JS? Объясните работу кода.
// 17. Почему не стоит использовать конструкторы типа new String?
Script: async, defer [#3yt] [#3theory] .
|{js}  
|  // Расставь скрипты по порядку
| <script async src="async1. js"></script> // 1 грузится 300мс
| <script defer src="defer1. js"></script> // 2 грузится 300мс
| <script defer src="defer2.js"></script> // 3 грузится 200мс
| <script async src="async2.js"></script> // 4 грузится 50мс
| <script async defer src="asyncdefer1. js"></script> // 5 грузится 60мс

Что будет на выходе? .
. [js_class].
. [js_this].
|{js}  
| class Calc {
|   constructor() {
|     this.count = 0
|   }
|  
|   increase() {
|     this.count++;
|   }
| }
|  
| const calc = new Calc();
| new Calc().increase();
| console.log(calc.count);
  . 0
  . 1
  . undefined
  . ReferenceError

Что будет на выходе? .
|{js}  
| console.log('1', Boolean(0)); // 
| console.log('2', !0); // 
| console.log('3', !!0); // 
| console.log('4', !!{}); // 
| console.log('5', !![]); // 
| console.log('6', Boolean(0)); // 
| console.log('7', !!new Boolean(0)); // 
| console.log('8', typeof[]); // 
| console.log('9', typeof null); // 
| console.log('10', typeof function(){}); // 

Что будет на выходе? .
|{js}  
| let isSad = true; 
| let isHappy = !isSad;
| let isFeeling = isSad || isHappy;
| console.log(isFeeling);
| let isConfusing = isSad && isHappy;
| console.log(isConfusing);

Discord .
  Task .
  |{js}  
  | let num = 20;
  | let arr = [];
  |  
  | for(let i = num; i > 0; i--) {
  |   arr.push(function() {
  |     return num - 1
  |   })
  | }
  |  
  | console.log(arr[0]()) // ?
  | console.log(arr[1]()) // ?
  Task .
  // "Написать свою реализацию bind используя call"
  Task .
  | const o = {
  |   name: "object o",
  |   printName(a, b, c) {
  |     console.log(this.name);
  |     return a + b + c
  |   },
  | };
  | o.printName(); // Что выведет в консоли?
  | let print = o.printName;
  | print(); // Что выведет в консоли?
  | print.bind(o)() // Что выведет в консоли?
  | print.call(o) // Что выведет в консоли?
  | print.bind(o).call({ name: "call name" }); // Что выведет в консоли?
  Task .
  // Дано бинарное дерево:
  //          12
  //          |
  //   — — — — - - - -
  //  |               |
  //  7               7
  // Нужно проверить его на симметричность и вернуть результат:
  Task .
  Дан не сортированный массив положительных чисел.
  Каждый день производство производит одну единицу товара.
  Мы можем копить продукцию а можем продавать каждый день.
  Каждое число массива является максимально возможной "ценой" товара по который 
  можно реализовать всю произведенную продукцию на момент времени.
  Необходимо вычислить максимальную выручку за реализацию произведенного товара 
  за 7 дней.
  | price = [1,1,10,3,4,1,7] //10*3 + 7*4 =58

Reference @
[1#] [https://www.youtube.com/watch?v=9rDWh-WqXIc&t=1126s]
[2#] [https://www.youtube.com/watch?v=ntzkAKZwico]
[3yt#] [https://www.youtube.com/watch?v=I9EpSpFw804&t=754s]
[3theory#] [https://learn.javascript.ru/script-async-defer]






JavaScript @

. методы массивов, строк, объектов; объекты; промисы; async/await; 
  работа с дом;  && ||; копирование массивов и объектов; map, set; json; 
  рекурсия; замыкания; var;
. классы; прототипы; циклы while, while do; continue, break; error; 
  try...catch; замыкания; модули; localstorage; fetch

Reference @

// Расскажите о JWT авторизации более подробно?
// Алгоритм работы с JWT-токеном
// Процесс аутентификации и авторизации с JWT-токеном между веб-браузером и веб-приложением выглядит следующим образом:

// Веб-браузер отправляет запрос веб-приложению с логином и паролем
// Веб-приложение проверяет логин и пароль, и если они верны, то генерирует JWT-токен и отправляет его веб-браузеру. При генерации JWT-токена веб-приложение ставит подпись секретным ключом, который хранится только в веб-приложении
// Веб-браузер сохраняет JWT-токен и отправляет его вместе с каждым запросом в веб-приложение
// Веб-приложение проверяет JWT-токен и если он верный, то выполняет действие от имени авторизованного пользователя

// Заголовок обычно состоит из JSON-объекта с двумя свойствами:
// 1 часть
// Тип токена, который в нашем случае — JWT
// Алгоритм шифрования, который в нашем случае — HMAC SHA256
// Далее этот JSON-объект хэшируется с помощью Base64Url-кодирования, чтобы представить его в виде компактной строки.
// 2 часть
// Вторая часть токена — это полезная нагрузка в виде JSON-объекта. Она содержит различные данные об авторизованном пользователе. Значение этой части JWT-токена различно в каждом веб-приложении. Мы можем записать здесь любые публичные данные, которые могут быть полезны при авторизации.

// Как и заголовок JWT-токена, полезная нагрузка хэшируется с помощью Base64Url-кодирования для представления в виде компактной строки.

// Чтобы создать подпись, мы должны взять закодированный заголовок, закодированную полезную нагрузку, секретную строку и зашифровать эти данные. При этом нужно использовать алгоритм шифрования из заголовка JWT-токена.

// Собираем все части JWT-токена
// В результате генерации JWT-токена получаются три Base64-URL-закодированные строки, которые разделены точкой. Значение JWT-токена является компактным и легко передается в HTTP-запросах.
[https://youtu.be/CVeP1TowUWY?si=JZlW4Ygz2eHl03Z4]
[https://youtu.be/MZCwjIWVJs4?si=tcTQ_kL4LN2Lukn1]
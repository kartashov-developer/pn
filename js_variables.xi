Variables @


. Declaration - объявление.
  | var x;
. Initialization - инициализация(присвоили значение переменной).
  | x = 0;
. Declaration and Initialization
  | var x = 0;
  
Переменные .
. Переменная - именованное хранилище данных. Создается с помощью ключевых слов:
  - {var}{лучше не использовать}
  - {let (переменная) можно изменить}
  - {const (константа) нельзя изменить}
  Название переменных .
  . Переменные могут иметь только |буквы|, |цифры|, |$|, |_|.
  . Первый символ не должен быть цифрой.
  . Регистр важен: переменные с именами |apple| & |APPLE| - разные.
. Повторное объявление вызывает ошибку : {SyntaxError}.
  const .
    |{js}  
    | const MY_NAME = "Vyacheslav";
    | MY_NAME = "Maksim"; // TypeError
    const имя_переменной .
    . Константы, которые `жестко закодированы`, следует объявлять в верхнем 
      регистре.
      |{js}  
      | const COLOR_RED = "red";
      | const API = "docs.google.com";
  var VS let VS const .
  # Для |var| не существует `блочной области видимости`.
    |{js}  
    | if (true) {
    |   var test = true;
    | }
    | alert(test); // true - var существует вне блока, она стала глобальной.
    Если же использовать |let| || |const|, то:
    |{js}  
    | if (true) {
    |   let test = true;
    | }
    | alert(test); // ReferenceError
  # |var| допускает повторное объявление переменной.
    |{js}  
    | var firstName = "Masha";
    | var firstName = "Nastya"; // Ошибки нет, примет значение ниже
    | let surName = "Maksimov";
    | let surName = "Fioletov"; // TypeError
  # |var| обрабатывается в начале запуска функции.
    ! Существует до того, как была объявлена.
    . Переменные, объявленные с помощью ключевого слова |var|, выходят за 
      пределы нынешней области видимости и, попадают(если лежат в обычной 
      функции, а не во вложенной) в глобальную область видимости. Тем самым,
      они считаются объявленными с самого начала исполнения и это не зависит от 
      того, в каком месте реально находятся их объявления.
      Это поведение называется [js_Hoisting](всплытие), потому что все 
      объявления всплывают на самый верх ф-ии.

Cases .
- |camelCase| - для всего
- |UPPER_SNAKE_CASE| - для констант.
- |PascalCase|
Classes @

!Training!: goto://js_class_training.js

Syntax .
|{js}  
| class MyClass {
|   constructor() { ... }
|   method1() { ... }
|   method2() { ... }
|   method3() { ... }
|   ...
| }
| new MyClass();
. In {constructor} method we can initialize the object.

А что такое класс? .
. Если мы используем оператор {type}, то в ответ узнаем, что класс является
ни чем иным, как функцией.
  |{js}  
  | class User{};
  | console.log(typeof User); // function
. Что же делает конструкция {class}? 
  # Создает функцию с заданным именем, которая становится результатом 
    объявления класса. Код функции берется из метода {constructor}(код будет 
    пустой, если такого метода нет).
  # Сохраняет все методы в ?User.prototype?.
  # При вызове метода объекта |new User| он будет взят из прототипа. Таким 
  образом, объекты |new User| имеют доступ к методам класса.

Наследование .
. Наследование - это способ расширения одного класса другим классом.
  Таким образом, мы можем добавить новый функционал к уже существующему.  
  extends .

Reference @
[docs#] [https://learn.javascript.ru/class]


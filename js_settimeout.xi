setTimeout @

. Вызывают функцию не в данный момент, а через заданный интервал времени.
. |setTimeout| - один раз через время.
. |setInterval| - регулярно через время.

setTimeout .
  Syntax .
  | let timerId = setTimeout((function), delay, [arg1], [arg2], ...);
  . {(function)} - функция;
    ^delay^ - задержка;
    {arg1...argN} - аргументы.
    (function) .
    . Передавайте функцию, но не запускайте её.
      |{js}  
      | setTimeout(sayHi(), 1000); // неправильно
      | setTimeout(sayHi, 1000);
    {delay} .
    . Задержка принимает миллисекунды(^1с = 1000мс^).
    . По умолчанию = ^0^.
  Cancel .
  |{js}  
  | let timerId = setTimeout(...);
  | clearTimeout(timerId); // передумали и отменили

setInterval .
  Syntax .
  . Такой же, как и у |setTimeout|.
  Cancel .
  |{js}  
  | let timerId = setInterval(...);
  | clearInterval(timerId);

Reference @
[#LearnJS] [https://learn.javascript.ru/settimeout-setinterval]
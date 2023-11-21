String methods @


indexOf() .
. Принимает {строка (первый аргумент) обязательный} и 
  принимает {индекс (число) необязательный}, с которого начинать поиск.
  Возвращает {индекс (число) найденного совпадения}, 
  или возвращает ^-1^, если совпадение не найдено.
. |→|
  |{js}  
  | const someString = "Hello, Alex!";
  | const firstL = someString.indexOf("l"); // 2
                                                ⬇ искать с индекса 3
  | const secondL = someString.indexOf("l", firstL + 1); // 3
  | const thirdL = someString.indexOf("l", secondL + 1);  // 8
  | const result = someString.indexOf("???"); // -1, не найдено
lastIndexOf() .
. Принимает {строка (первый аргумент) обязательный} и
  принимает {индекс (число) необязательный}, с которого начинать поиск.
  Возвращает {индекс (число) найденного совпадения},
  или возвращает ^-1^, если совпадение не найдено.
. Поиск начинает, по умолчанию, с {"string".length}. 
. |←|
  |{js}  
  | const someString = "Good morning!";
  | const firstL = someString.lastIndexOf("n"); // 10
                                                ⬇ искать с индекса 10
  | const secondL = someString.lastIndexOf("n", firstL - 1); // 8
  | const result = someString.lastIndexOf("???"); // -1, не найдено
  "trim",
  "replace",
  "split",
  "substr",
  "substring",
at() .
. Принимает {индекс (число)},
  возвращает {букву (string) стоящую на этой позиции}.
  |{js}  
  | const string = "I love cats!";
  | console.log(string.at(0)); // "I"
  | console.log(string.at(-1)); // "!"
concat() .
. Принимает {строки},
  возвращает !новую строку!.
  |{js}  
  | const hello = "Hello,";
  | const someName = "Alex";
  | const result = greeting.concat("dear", someName, "!"); // "Hello,dear Alex!"
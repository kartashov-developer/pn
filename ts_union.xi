[ts]

Union .
  Тип объединения / Defining a Union Type .
  | function printId(id: number | string) { console.log("Your ID is: " + id); };
  . Строка выше сообщает, что входящий параметр |id| может быть либо типом 
    `number`, либо типом `string`.
    |{ts}printId(42);| и |{ts}printId("202");| - сработают(мы передаем число и 
    строку).
    |{ts}printId({ myId: 22342 });| - не сработает(мы передаем объект).
  Работа с Union Type / Working with Union Types .
  . Особенность работы с union types состоит в том, что мы не сможем 
    только для типа "string". Да, TypeScript понимает, что на вход приходит тип 
    использовать методы(toUpperCase(), toLowerCase() и остальные), доступные 
    строка или тип число, но он не может применить методы, доступные для строки, 
    на числовой тип.
  . Чтобы этого избежать, нужно явно указать, что будет для того, или иного 
    типа, с помощью условия |if|:
  | function printId(id: number | string) {
  |   if (typeof id === "string") { // на вход строка: делаем это
  |     console.log(id.toUpperCase());
  |   } else { // на вход число: делаем другое
  |     console.log(id);
  |   }
  | }
  Или:
  | function welcomePeople(x: string[] | string) {
  |   if (Array.isArray(x)) { - на вход массив: делаем это
  |     console.log("Hello, " + x.join(" and "));
  |   } else { - на вход строка: делаем другое
  |     console.log("Welcome lone traveler " + x);
  |   }
  | }

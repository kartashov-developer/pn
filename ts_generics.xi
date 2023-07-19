[ts] [ts_functions]

Generics .
. Дженерик - обобщенный тип.
| function wrapSomething<T>(data: T) {
|   return { data };
| }
| const data = wrapSomething(123); - data.data(data: number)
| const data2 = wrapSomething({ data: "123" }); - data2.data.data(data: number)
. Обычно функции пишут таким образом, чтобы типы входных данных были связаны с типом выходных данных или типы двух входных данных были как-то связаны. Рассмотрим пример:
| function firstElement(arr: any[]) { return arr[0]; } - функция возвращает первый элемент массива
Эта функция выполняет свою работу, но возвращаемый тип: |any|. Лучше бы функция возвращала тип вызываемого элемента массива(может, это string или number).
Дженерики в TypeScript используются, когда мы хотим описать соответствие между двумя значениями. Мы делаем это, объявляя параметр типа(type parameter) в `сигнатуре` функции:
| function firstElement<Type>(arr: Type[]): Type | undefined { return arr[0] };
Благодаря добавлению |<Type>(arr: Type[]): Type|, мы создали связь между входным массивом(|arr|) и выходным значением(|arr[0]|).s
  extends .
  . Ограничивает |generic|:
  | function wrap<Generic extends string>(data: Generic) {}; - явно указываем, что дженерик содержит строку
  | const someData = wrap("could be only string"); - передаем не строку: будет ошибка
  . Можно указать передаваемое значение |extends| явно:
    . Строка:
    | function wrap<Generic extends "123"(data: Generic) {}; - явно указываем, что дженерик содержит строку "123"
    | const someData = wrap("123"); - передаем не строку или другую строку: будет ошибка
    . Объект
    | function wrap<Generic extends { name: string }(data: Generic) {}; - явно указываем, что дженерик содержит объект со свойством name и типом string
    | const someData = wrap({ name: "only string"}); - передаем не объект со свойством name и типом string: будет ошибка
    ! Если мы используем extends явно, то необходимо называть функции с типом передаваемого значения:
    |{ts}wrapString("string")|, |{ts}doSomethingObject({})|, |{ts}SumThisNumber(123)|
  interface generic & type generic .
    type .
    | type WraperType<T> = {
    |   data: T;
    | }
    interface .
    | interface WraperInterface<T> {
    |   data: T;
    | }

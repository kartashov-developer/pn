[ts] [ts_generics]

Functions .
  . TypeScript позволяет указывать типы, как входных значений(параметры, аргументы), так и выходных значений(return).
  Параметры функции .
  - первый способ:
  | const compare = (a: string, b: string) => a === b;
  - второй способ(с помощью объекта |params|):
  | const compare = (params: { a: string; b: string }) => {
  |   params.a === params.b;
  | }
  - третий способ(с помощью объекта |params| и |interface|):
  | interface CompareParams {
  |   a: string;
  |   b: string;
  | }
  | const compare = (params: CompareParams) => {
  |   params.a === params.b;
  | }
  return .
  | function getFavoriteNumber(): number { return 26; };
  . Аннотации возвращаемого типа пишутся после списка параметров.
    [Primitive types.xi#void] .
  Function Type Expressions .
  | function greeter(fn: (a: string) => void) { fn("Hello, World"); }
  | function printToConsole(s: string) { console.log(s); }
  | greeter(printToConsole);
  ! Чтобы улучшить читаемость кода(?) - можно использовать следующий метод:
  | type GreetFunction = (a: string) => void; - объявляем type
  | function greeter(fn: GreetFunction) {}; - вставляем type alias

async functions .
| interface LukeSkywalker {
|   name: string;
|   height: string;
|   gender: "male";
| }
. Как прокинуть |interface| в асинхронную функцию?
| export const fetchLukeSkyWalker = async (): Promise<LukeSkywalker> => {};

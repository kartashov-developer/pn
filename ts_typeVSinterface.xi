[ts]

type&interface .
. Использование типов объекта(object types) и типов 
  объединения(union types) можно вынести. Для этого можно использовать 
  |type| или |interfaces|.
  Type .
  |{typescript}
  | type Point = {
  |  x: number;
  |  y: number;
  | };
  В |type| мы создаем |type aliase|(имя переменной) и передаем его в параметры функции:
  |{typescript}
  | function printCoord(params: Point) {
  |   console.log("The coordinate's x value is " + params.x);
  |   console.log("The coordinate's y value is " + params.y);
  | }
  | printCoord({ x: 100, y: 100 });
  . Также можно задавать тип через |type aliase| в однострочной форме:
  | type ID = number | string;
  ! |readonly| - не можем менять тип.
    Соединения разных types .
    . Имеет |type| с именем `Animal` и вложенным свойством `name`.
    | type Animal = {
    |   name: string;
    | }
    . Но мы хотим расширить наш `Animal` через пересечение:
    | type Bear = Animal & {
    |   honey: boolean;
    | }
    . Мы соединили два |type|.
    ! Не нужно думать, что мы расширили |type Animal| - мы лишь пересекли его с
    |type Bear|.
  Interfaces .
  . Еще один способ указать тип объекта.
  | interface Point {
  |   x: number;
  |   y: number;
  | }
  ! |readonly| - не можем менять тип.
    Соединение разных interfaces .
    . Имеем |{ts}interface Animal| с вложенным свойством |{ts}name: string;|:
    | interface Animal {
    |   name: string;
    | }
    . Хотим пересечь |{ts}interface Animal| с |{ts}interface Bear|, чтобы наши
    |interface| имели общие свойства:
    | interface Bear extends Animal {
    |   honey: boolean;
    | }
  Различия между Type и Interfaces .
  . Различие состоит в том, что в |type| нельзя добавлять новые свойства типов, а в |interface| можно.
  # Как по мне, то это делает |interface| лучше.
  | interface Window {
  |   title: string;
  | }
  | interface Window {
  |   id: number;
  | }
  . Теперь наш |{ts}interface Window| содержит два свойства:
  |{ts}title: string; id: number;|

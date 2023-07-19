[ts]

| function printCoord(params: { x: number; y: number }) {  - параметры x, y имеют тип "number"
|  console.log("The coordinate's x value is " + params.x); - обращемся к ним через объект params.x
|  console.log("The coordinate's y value is " + params.y); - обращемся к ним через объект params.y
| };
| printCoord({ x: 3, y: 7 }); - передаваемые значение типа number - ошибки не будет
Дополнительные свойства |value?:| .
. Типы объектов также могут указывать, что некоторые или все их свойства являеются `необязательными`.
| function printName(obj: { first?: string; last?: string }) {
Индекс сигнатура / Index Signature .
| interface StringArray {
|   [index: number]: "odd" | "even";
| }

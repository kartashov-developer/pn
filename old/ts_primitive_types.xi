[ts] @

string .
| const firstName: string = "Dima";
number .
| const year: number = 2023;
boolean .
| const isMarried: boolean = true;
null .
| const user: null = null;
undefined .
| const summary: undefined = undefined;
void .
. The inferred return type is |void|:
| function noop() {
|   return;
| };
. |void| - function is not return anything.
  |{typescript}
  | function getVoid(): void { console.log("no return"); };
! |void| is not the same as |undefined|.

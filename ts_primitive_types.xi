[ts]

string .
| const firstName: string = "Dima";
number .
| const year: number = 2023;
boolean .
| const isMarried: boolean = true;
null .
| const user: null = null;
. [ts_config#strict_flags]
|{ts}strictNullChecks| - включит ошибку при получении |null| & |undefined|.
undefined .
| const summary: undefined = undefined;
. [ts_config#strict_flags]
|{ts}strictNullChecks| - включит ошибку при получении |null| & |undefined|
void .
. The inferred return type is |void|:
| function noop() {
|   return;
| };
. |void| озdначает, что функция ничего не возвращает.
| function getVoid(): void { console.log("no return"); };
! |void| is not the same as |undefined|.

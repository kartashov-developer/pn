[ts]

Type Assertions .
. |as| позволяет задать более конкретный тип:
| const myCanvas = document.getElementById("main_canvas") as HTMLCanvasElement;
| const theme = localStorage.getItem("theme") as "light" | "dark"; - вернется "light" || "dark"
  as const .
  . A type assertion in TypeScript that allows you to assert that an expression has a specific type, and that its value should be treated as a read-only value.
  For example:
  | const colors = ['red', 'green', 'blue'] as const;
  . |colors| is now of type readonly |['red', 'green', 'blue']|.
  Using as const allows TypeScript to infer more accurate types for constants, which can lead to improved type checking and better type inference in your code.
  as type .
  . as is a type assertion in TypeScript that allows you to tell the compiler to treat a value as a specific type, regardless of its inferred type.
  For example:
  | let num = 42;
  | let str = num as string;
  . |str| is now of `type string`, even though |num| is a `number`.
  It’s important to note that type assertions do not change the runtime type of a value, and do not cause any type of conversion. They simply provide a way for the programmer to override the type inference performed by the compiler.

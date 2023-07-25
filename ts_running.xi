[ts]

Compiling .
. Write TypeScript code in a {.ts} file (e.g. !app.ts!).
. Compile the TypeScript code !file.ts! into JavaScript using the TypeScript 
  compiler. That will a create new file !file.js!.
  |{bash}
  | tsc file.ts
. This command will compile all TS files in your project that are !specified! 
  in your [tsconfig].json file.
. Run the generated JS code using a JS runtime environment such as Node.js:
  |{bash}
  | node app.js
  CLI [#1] .
    Commands .
    . Emit JS for any .ts files in the folder src, with the default settings:
    |{bash}
    | tsc src/*.ts
    Flags .
    |--noEmitOnError| - not changing "file.js".
    | tsc --noEmitOnError test.ts
    |--showConfig| - print the final configuration instead of building.
    | tsc --showConfig
    |--version| - print the compiler's version.
    | tsc --version
    |--init| - initializes a TypeScript project and creates a tsconfig.json file.
    | tsc --init

Reference @
[1#] [https://www.typescriptlang.org/docs/handbook/compiler-options.html#using-the-cli]

[ts] @

tsconfig .
|{term}  
| npx tsc --init // create tsconfig file

|{tsconfig.json}  
| {
|     "compilerOptions": {
|       "strict": true,
|       "noImplicitAny": true,
|       "target": "ESNext",
|       "module": "commonjs",
|       "allowJs": true,
|       "checkJS": true,
|       "moduleResolution": "node",
|       "esModuleInterop": true,
|       "resolveJsonModule": true,
|   }
| }

. {"strict": true} - enable all flags of ?Strict Flags?.
  Strict Flags [#1] .
    compilerOptions .
    . {target} - "ES2020"
    . {module} - "ESNext"
    . {strict} - true
    . {noImplicitAny} - error with type |any|.
    . {strictNullChecks} - error with |null| or |undefined|.
    . {noEmitOnError} - stop creating JS files if TS have error.
    include .

Reference @
[1#] [https://www.typescriptlang.org/tsconfig]
[ts] @

tsconfig .
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
  Strict Flags .
  . {noImplicitAny} - error with type |any|.
  . {strictNullChecks} - error with |null| or |undefined|.

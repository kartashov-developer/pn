[ts] @

tsconfig .
{
    "compilerOptions": {
      "strict": true,
      "noImplicitAny": true,
      "target": "ESNEXT",
      "module": "commonjs",
      "allowJs": true,
      "checkJS": true,
      "moduleResolution": "node",
      "esModuleInterop": true,
      "resolveJsonModule": true,
  }
}

. |{ts}"strict": true| - включает все флаги строгости
  Strict Flags .
  . |{ts}noImplicitAny| - включит ошибку для любых переменных, имеющих тип |any|.
  . |{ts}strictNullChecks| - включит ошибку при получении |null| & |undefined|.

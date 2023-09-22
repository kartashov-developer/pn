[web] [#official-site]  @

Зачем .
. Для соблюдения конвенций кода. Чтобы было одинаково.s
. Помогает разобраться с возможными ошибками.

Установка .
|{terminal}
| npm init @eslint/config
  . |To check syntax, find problems, and enforce code style|.

Настройка .
  Добавление в scripts .
  |{package.json}
  | "scripts":{
  |   "lint": "eslint *" -- '*' для проверки всех файлов
  | }
    . Другие варианты:
    | "lint": "eslint */**.tsx"
    Запуск .
    |{terminal} npm run lint
  Конфликты с Prettier .
  |{eslintrc.js}
  | extends: ['prettier']
  | plugins: ['prettier']
  |{terminal}
  | npm i prettier
Rules .
  Trailing comma [#comma-dangle] .
  | 'comma-dangle': ['error', 'always-multiline'] -- высячие запятые



Reference @
[official-site#] [https://eslint.org/docs/latest/use/getting-started]
[comma-dangle#] [https://eslint.org/docs/latest/rules/comma-dangle]

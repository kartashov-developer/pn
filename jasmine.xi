Jasmine @

Jasmine .
. Фреймворк для тестирования JavaScript-кода.
. Использует методологию |BDD|(Behaviour-Driven Development).
Подключение Jasmine .
. Создает директорию spec с jasmine.json
| npx jasmine init
  ESLint для Jasmine [#1] .
  | npm install --save-dev eslint-plugin-jasmine
  . И добавить в |{explorer}.eslintrc.js|:
  | plugins: ["jasmine"]
  | env: { jasmine: true }
jasmine.json .
. Корневая директория:
| "spec_dir": "spec"
. Как отличить Jasmine файлы:
| "spec_files": ["**/*[sS]pec.?(m)js"]
Синтаксис .
  describe() .
  . Определяет набор тестов. Наборы могут быть `вложенными`.
  . Принимает 2 аргумента:
    {n(name test) просто человеческое описание набора тесто},
    {f(function) функция, в которую входит it}.
  it() .
  . Определяет тест внутри любого набора тестов.
  . Принимает 2 аргумента: {n(name test)}, {f(function)}.
  expect() .
  . Определяет ожидания, которые проверяются в тесте.

Reference @
[1#] [https://www.npmjs.com/package/eslint-plugin-jasmine]

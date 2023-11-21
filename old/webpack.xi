Webpack @

Install .
|{terminal}  
| npm i -D webpack webpack-cli
  webpack-dev-server .
  . Automatically update webpack.
  |{terminal}  
  | npm i -D webpack-dev-server
  | webpack serve
  . With TypeScript:
  |{terminal}  
  | npm i -D webpack-dev-server @types/webpack-dev-server
    --env .
    . Переменные окружения. Нужны для того, чтобы передавать их столько,
    сколько нужно при запуске.
    |{lng:terminal}  
    | webpack serve --env port=3000
    . You may add another flags:
    |{lng:terminal}  
    | webpack serve --env port=3000 mode=development
    ! <env> need to return a function.
  TypeScript + Webpack .
  . TypeScript [#TS1]
  |{terminal}  
  | npm install --save-dev typescript ts-loader
  . Configuration Languages [#TS2]
  |{terminal}  
  | npm install --save-dev ts-node @types/node @types/webpack
  . Add to !ts.config.json!:
    # Specify what module code is generated. [#ESNext]
      |{file:ts.config.json}  
      | "module": "ESNext",
    # Allow 'import x from y when a module doesn't have a default export.
      |{file:ts.config.json}  
      | "allowSyntheticDefaultImports": true,
    # Enables allowSyntheticDefaultImports for type compatibility.
      |{file:ts.config.json}  
      | "esModuleInterop": true
    # Transforming to CommonJS. [#CommonJS]
    |{file:ts.config.json}  
    | "ts-node": {
    |   "compilerOptions": {
    |     "module": "CommonJS"
    |   }
    | }
  React + Webpack .
  |{terminal}npm i react react-dom|
  . If using React+TS, install types:
  |{terminal}  
  | npm i -D @types/react @types/react-dom
  CSS Modules + Webpack [#cssModules] .

А зачем вообще нужен Webpack? .
. Он нужен, чтобы комбинировать разные модули и их зависимости в один файл, в
  правильном порядке. Он может парсить код, написанный с ипользованием разных
  модулей и комбинировать в один формат, понятный браузеру.
  | JavaScript  ->
  | CSS         ->
  | SCSS        -> TRANSFORM ->  WebPack Bundle
  | Images      ->
  | HTML        ->

Entrs .
. Точка входа указывает, какой модуль webpack должен использовать, чтобы
  начать построение своего графа зависимостей.
  ! Default: {'./src/index.js'}.
  |{webpack.config.js}  
  | entry: './path/to/my/entry/file.js'

Output .
. Данное свойство сообщает веб-пакету, куда создавать пакеты, которые он
  создает, и как называть эти самые, созданные файлы.
  . Содержит два вложенных свойства:
    # {path} - куда должны быть отправлены созданные файлы,
    # {filename} - имя бандла.
    # {clean} - |true|,?false? - чистит нашу output папку.
! Default for entry file: {'./dist/main.js'}.
! Default for other files: {'./dist/'}.
! Требует импорта NodeJS модуля |path|:
  |{webpack.config.js}  
  | const path = require('path')
  | ...
  | path: path.resolve(__dirname, 'dist'),
  | filename: '[name].[hash].js',

Mode .
. Данное свойство позволяет включить встроенные опции оптимизации веб-пакета,
  соответствующие каждой среде.
. Есть три возможных значения:
  # |development|: выходные данные находятся в разработке, их не надо сжимать.
  # |production|(default value): выходные данные готовы к выгрузке.
  # |none|: ???

Loaders .
Module > Rules .
. Под коробкой webpack понимает только JavaScript и JSON файлы. Лоадеры
  позволяют webpack'у обрабатывать другие типы файлов и преобразовывать их в
  модули, тем самым позволяют работу с ним.
. Лоадеры записываются в webpack.config.js, в свойство |module|. Каждый лоадер
  имеет свои правила:
    - в {test} - указывается тип файла,
      ! Регулярное выражение в свойстве {test} не должно быть в кавычках.
    - в {use} - какой лоадер к нему использовать.
  |{webpack.config.js}  
  | rules: [{ test: /\.txt$/, use: 'raw-loader'}]
  По сути лоадер говорит: эй, вебпак, когда ты столкнешься с файлом |txt|,
  используй загрузчик(raw-loader), преобразуй файл и только потом добавь в
  бандл.
  Дефолт .
  |{terminal}  
  | npm i -D style-loader css-loader sass-loader file-loader
  . {style-loader} позволяет внедрить CSS в DOM.
  . {css-loader} позволяет преобразовывать файлы |.css|.
  . {sass-loader} позволяет преобразовывать файлы |.scss| в |.css|.
  . {file-loader} позволяет импортировать файлы, изображения и другие
  сущности напрямую в js код.

Plugins .
. Плагины позволяют оптимизировать бандлы, управлять asset, внедрять
  переменные среды.
. Чтобы использовать плагин, нужно его импортировать(!require()/import!) и
  добавить его в массив {plugins}.
. Плагины создаются в виде конструкторов: с помощью конструктора |new|. Это
  нужно, так как плагины можно использовать несколько раз для разных целей.
|{webpack.config.js}  
| plugins: [
|   new HtmlWebpackPlugin({ template: path.resolve(__dirname, 'index.html') })
| ]
  HTML plugin .
  . Переносит наш HTML в папку dist и импортирует в него все нужные js
    бандлы, который собирает webpack.
    |{terminal}  
    | npm install -D html-webpack-plugin
  . Нужно указать путь к нашему HTML файлу.
  MiniCssExtractPlugin [#plugin] .
  |{terminal}  
  | npm install --save-dev mini-css-extract-plugin

Resolve .
. В нем указываем расширение тех файлов, которые мы не будем указывать при
  импорте.
  |{example}  
  | import Component from './component';

Декомпозиция конфига .
. Сам конфиг в переменную и экспортируем ее. {export const config}.
. Создаю отдельную папку !config!, где будут лежать отдельные сегменты
  конфига. Одна среда - одна папка.
  . {build - buildLoaders/buildPlugins/buildResolvers}
    TS .
    # buildLoaders: |RuleSetRule[]|
    # buildPlugins: |WebpackPluginInstance[]|
    # buildResolvers: |ResolveOptions|

Дополнительные пакеты для webpack .
  webpack-dev-server .
  |{webpack.config.js}  
  | devServer: {
  |   port: 3000
  | }
  |{package.json}  
  | "start": "webpack-dev-server --open"
                                  ⬆ флаг --open открывает сервер в браузере


Проблемы .
|{terminal}  
| ./node_modules/.bin/webpack // запуск при проблеме

References @
[TS1#] [https://webpack.js.org/guides/typescript/]
[TS2#] [https://webpack.js.org/configuration/configuration-languages/]
[ESNext#] [https://www.typescriptlang.org/tsconfig#esnext]
[CommonJS#] [https://typestrong.org/ts-node/docs/imports/]
[plugin#] [https://webpack.js.org/plugins/mini-css-extract-plugin/]
[cssModules#] [https://webpack.js.org/loaders/css-loader/#modules]
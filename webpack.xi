

Установить .
| npm i -D webpack webpack-cli

А зачем вообще нужен Webpack? .
. Он нужен, чтобы комбинировать разные модули и их зависимости в один файл, 
  в правильном порядке. Он может парсить код, написанный с использованием 
  разных модулей и комбинировать в один формат, понятный браузеру.

JavaScript  ->   
CSS         ->   
SCSS        -> TRANSFORM ->  WebPack Bundle
Images      ->   
HTML        ->   

Entry .
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
  # |production|(default value): <?>
  # |none|: <?>
Loaders .
. Под коробкой webpack понимает только JavaScript и JSON файлы. Лоадеры 
  позволяют webpack'у обрабатывать другие типы файлов и преобразовывать их в 
  модули, тем самым позволяют работу с ним.
. Лоадеры записываются в webpack.config.js, в свойство |module|. Каждый лоадер
  имеет свои правила: 
    - в {test} - указывается тип файла,
      ! Регулярное выражение в свойстве {test} не должно быть в кавычках.
    - в {use} - какой лоадер к нему использовать.
  |{webpack.config.js}
  |   rules: [{ test: /\.txt$/, use: 'raw-loader'}]
  По сути лоадер говорит: эй, вебпак, когда ты столкнешься с файлом |txt|,
  используй загрузчик(raw-loader), преобразуй файл и только потом добавь в 
  бандл.
  Дефолт .
  | npm i -D style-loader css-loader sass-loader file-loader
  . {style-loader} позволяет внедрить CSS в DOM. 
  . {css-loader} позволяет преобразовывать файлы |.css|.
  . {sass-loader} позволяет преобразовывать файлы |.scss| в |.css|.
  . {file-loader} позволяет импортировать файлы, изображения и другие сущности
    напрямую в js код.

Plugins .
. Плагины позволяют оптимизировать бандлы, управлять asset, внедрять 
  переменные среды.
. Чтобы использовать плагин, нужно его импортировать(!require()!) и добавить 
  его в массив {plugins}.
. Плагины создаются в виде конструкторов: с помощью конструктора |new|. Это 
  нужно, так как плагины можно использовать несколько раз для разных целей.
|{webpack.config.js}
| plugins: [new HtmlWebpackPlugin({ template: './src/index.html' })],
  HTML plugin .
  | npm install -D html-webpack-plugin
  . Переносит наш HTML в папку dist и импортирует в него все соответствующие
    js бандлы, который собирает webpack.
  . Нужно указать путь к нашему HTML файлу.
  Clean plugin .
  | npm install -D clean-webpack-plugin
  . Очищает неиспользуемые бандлы, которые создаются в результате опции 
    {output.filename}.
  |{webpack.config.js}
  | new CleanWebpackPlugin()

[babel]

Дополнительные пакеты для webpack .
  webpack-dev-server .
  |{webpack.config.js}
  | devServer: {
  |   port: 3000
  | }
  |{package.json}
  | "start": "webpack-dev-server --open" // --open открывает сервер в браузере


Проблемы .
| ./node_modules/.bin/webpack -- запуск при проблеме

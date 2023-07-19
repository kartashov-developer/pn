

Что такое Babel? .
. Компилятор, который преобразовывает различные нововведения в JS так, чтобы 
  старые браузеры могли их понимать.
. Преобразовывает JSX разметку в HTML.

Babel + WebPack .
  Старые браузеры .
  [https://babeljs.io/setup#installation]
  |{webpack.config.js}
  | {
  |   test: /\.m?js$/,
  |   exclude: /node_modules/,
  |   use: {
  |     loader: "babel-loader",
  |     options: {
  |       presets: ["@babel/preset-env"]
  |     }
  |   }
  | }
  |{terminal}
  | npm install @babel/preset-env --save-dev
  |{babel.config.json}
  | {
  |   "presets": ["@babel/preset-env"]
  | }
  JSX .
  [https://babeljs.io/docs/babel-preset-react]
  |{webpack.config.js}
  | {
  |   test: /\.m?jsx$/,
  |   exclude: /node_modules/,
  |   use: {
  |     loader: "babel-loader",
  |     options: {
  |       presets: ["@babel/preset-react", "@babel/preset-env"]
  |     }
  |   }
  | }
  |{terminal}
  | npm install --save-dev @babel/preset-react
  |{babel.config.json}
  | {
  |   "presets": ["@babel/preset-react"]
  | }

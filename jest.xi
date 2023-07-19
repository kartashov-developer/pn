Jest @

Install .
. In project:
| npm install --save-dev jest
. Globally:
| npm install jest --global
  Configuration  .
    jest.config.json .
    | jest --init
    Babel .
    | npm install --save-dev babel-jest @babel/core @babel/preset-env
    . Create !babel.config.! and fill it:
    | module.exports = {
    |   presets: [[
    |     '@babel/preset-env', {targets: {node:'current'}}
    |   ]],
    | };
Testing JavaScript .
[jest_notes1]

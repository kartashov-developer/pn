|{term}npx degit TheSwordBreaker/vite-reactts-eslint-prettier project-name| [#1]
. Добавляет |cacheDir| для yarn:
  |{vite.config.ts}cacheDir: '.yarn/.vite',| + заносит в !.gitignore!
. Добавляет formatOnSave:
  |{.vscode/settings.json}  
  | {
  |   "search.exclude": {
  |     "**/.yarn": true,
  |     "**/.pnp.*": true
  |   "eslint.nodePath": ".yarn/sdks",
  |   "prettier.prettierPath": ".yarn/sdks/prettier/index.js",
  |   "typescript.tsdk": ".yarn/sdks/typescript/lib",
  |   "typescript.enablePromptUseWorkspaceTsdk": true,
  |   "editor.formatOnSave": true,
  | },
. Install |husky| and |commitlint| [#2] [#3]
  |{terminal}  
  | yarn add husky commitlint @commitlint/cli @commitlint/config-conventional -D
. Install |lint-staged|
. Vitest
  |{terminal}  
  | npm i vite-plugin-checker vite-plugin-eslint vitest -D



Reference @
[1#] [https://github.com/habralab/sapphire-team-front/tree/6bbd013e875d5009e5ca47f8e5c47048fca63897]
[2#] [https://typicode.github.io/husky/]
[3#] [https://commitlint.js.org/]
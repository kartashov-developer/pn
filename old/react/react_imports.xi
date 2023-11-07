React Imports @

Импорты .
. Компоненты можно переиспользовать. Можно создавать компоненты, в которые 
  вложеные другие компоненты.
  Но, чем больше компонентов, тем логичнее будет `разбивать компоненты` на 
  разные файлы. Это позволяет легко сканировать файлы и повторно использовать 
  их в разных местах.
  . Для этого нужно:
    # Экпортировать компонент из файла.
      |{jsx}  
      | export default function Component() {...} // export default prefix
    # Импортировать компонент в файл.
      |{jsx}  
      | import Component from './components/Component';
      | import { Component, functionForSum } from './components/Component';

[css] @

About .
. `CSS Module` - is CSS-file, where all the classname have local vision scope 
  by default.
  |{select.css}
  | .button { ...styles... }
  | .loading { ...styles... }
  | .icon { ...styles... }
  |{select.js}
  | import styles from "./select.css"
  | console.log(styles.select, styles.loading);
  . Operator |import| download CSS file and convert it into an object. Every 
    name - it's key of the object.



Reference @
❌CSS Modules in React [https://habr.com/ru/articles/335244/]

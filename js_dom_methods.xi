DOM Methods @

querySelector .
. Метод объекта {document} и любого HTML-элемента, который позволяет найти 
	`первый элемент среди подходящих`.
. Метод принимает |CSS-selector|:
  |{js}  
  | const firstElement = document.querySelector("div > p");
! Первый элемент в DOM <body>:
  |{js}  
  | const firstElementInDOM = document.querySelector("*");
. Возвращает <null> или ссылку на объект(|Element|).

querySelectorAll .
. Метод объекта {document} и любого HTML-элемента, который позволяет найти все 
	элементы по CSS-селектору среди дочерних.
. Метод принимает |CSS-selector|:
  |{js}  
  | const paragraphsInDiv = document.querySelectorAll("div > p");
  | const spanFromBodt = document.querySelectorAll("span");
. Возвращает `статистическую коллекцию` |NodeList| с найденными элементами. Она,
	в отличие от методов |getElementsByClassName|, |getElementsByTagName|, не 
	обновляется автоматически.
. Если элементов не нашлось, то коллекция будет пустая.

getElementById .
. Метод объекта {document}, который позволяет найти элемент на веб-странице 
`по идентификатору`.
  |{js}  
  | const title = document.getElementById("title");
. Возвращает <Element> или <null>, если ничего не нашло.
getElementsByClassName .
. Метод объекта {document} и любого HTML-элемента, который позволяет найти все 
	элементы `по названию класса` или классами среди дочерних.
. Метод принимает |class|:
  |{js}  
  | const paragraphs = document.getElementsByClassName("paragraph");
  | const mainContainer = document.getElementsByClassName("container__main");
. Возвращает `живую` |HTMLCollection|, которая автоматически обновляется, если 
	на странице появятся подходящие элементы и, так как мы не знаем, сколько 
	элементов вернется.
. Если элементов не нашлось, то коллекция будет пустая.
getElementsByTagName .
. Метод объекта {document} и любого HTML-элемента, который позволяет найти все 
	элементы `с заданным тегом` или тегом среди дочерних.
. Метод принимает |tag|:
  |{js}  
  | const pFromBody = document.getElementsByTagName("p");
  | const div = document.getElementsByTagName("div");
  | const form = document.getElementsByTagName("form");
. Возвращает `живую` |HTMLCollection|, которая автоматически обновляется, если 
	на странице появятся подходящие элементы и, так как мы не знаем, сколько 
	элементов вернется.
. Если элементов не нашлось, то коллекция будет пустая.

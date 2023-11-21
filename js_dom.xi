DOM @

Что такое DOM? .
. Document Object Model(Объектная модель документа) - это программный интерфейс 
  для HTML-документов. DOM предоставляет структурированную страницу так, что 
  программы могут изменять содержимое, стиль и саму структуру документа. DOM 
  представляет документ в виде `группы узлов(nodes)` и `объектов(objects)`. 
  Благодаря этому становится возможность воздействовать на документ с помощью 
  языков программирования.
  . Все свойства, методы и события, доступные для управления и создания новых 
    страниц, организованы в виде объектов.
. Браузер создает DOM > браузер рисует страницу на основе DOM.
  При изменении DOM, браузер анализирует это и обновляет страницу.
  Создается DOM для взаимодействия JavaScript и HTML. Каждый HTML-тег при этом 
  превращается в Element DOM.
. DOM и страница, которую видит пользователь, связаны -> изменение в DOM и 
  пользователь это увидит.
  |HTML| → |DOM| ←→ |браузер|
             ↑
        |JavaScript|
. DOM состоит из `узлов дерева`(тегов, [Element_js]). Они образуют специальную 
  структуру данных - `дерево`.

Узлы .
. У любого узла есть один `родительский узел` и `дочерние узлы`.
. `корневой узел`  - у такого узла нет родителя.
. `текстовый узел` - у такого узла нет дочерних узлов(последний уровень любого 
  DOM-дерева состоит из текстовых узлов)

Основные типы данных .
  document .
  . Когда возвращается объект типа |document|, этот объект является собственным 
    корневым объектом.
  element .
  . Обозначает элемент(element) или узел(node) типа |element|, возвращаемый 
    DOM API.
  NodeList .
  . Массив элементов. Конкретные элементы в массиве доступны по индексу: 
    |{js}list.item[1]|.
  attribute .
  . Когда возвращается данный тип - это будет ссылка на объект, который 
    предоставляет интерфейс для атрибутов.
    . `Атрибуты` - это узлы в DOM.

DOM-интерфейсы [js_dom_methods] .

DOM methods [js_DOM_methods] .
    getElementById .
    . Поиск элемента по идентификатору.
    | const title = document.getElementById("title");
    . Принимает {id (string)},
      возвращает элемент.
    getElementsByClassName .
    . Поиск элементов по названию класса.
    | const paragraphs = document.getElementsByClassName("paragraph");
    . Принимает {className (string)},
      возвращает `живую коллекцию` |HTMLCollection|.
    getElementsByTagName .
    . Поиск элементов по названию тега.
    | const div = document.getElementsByTagName("div");
    . Принимает {tag (string)},
      возвращает `живую коллекцию` |HTMLCollection|.
    querySelector .
    . Поиск первого элемента, подходящего под CSS-селектор.
    | const firstElement = document.querySelector("div > p");
    . Принимает {CSS-selector (string)},
      возвращает элемент.
    ! Первый элемент в DOM |{html}<body>|:
    | const firstElementInDOM = document.querySelector("*");
    querySelectorAll .
    . Поиск всех элементов подходящих под CSS-селектор.
    | const paragraphsInDiv = document.querySelectorAll("div > p");
    | const spanFromBodt = document.querySelectorAll("span");
    . Принимает {CSS-selector (string)},
      возвращает `статистическую коллекцию` |NodeList|.
    ! Все элементы в DOM:
    | const firstElementInDOM = document.querySelector("*");
  Browser Actions [browser_actions_js] .
  . События - сигналы, которые браузер посылает разработчику, а разработчик 
    может на сигнал реагировать.
    . Есть два способа создать события:
      # атрибут HTML: |{html}onclick="..."|
      # DOM-свойство: |{js}element.onclick = function() {};|
      # методом |{js}element.addEventListener()|.
  addEventListener() .
  . Принимает 2 параметра:
    {event(string) имя события},
    {handler(function) функция-обработчик}.
  removeEventListener() .
  . Принимает 2 параметра:
    {event(string) имя события},
    {handler(function) функция-обработчик}.
    ! |handler| требует именно ту же функцию.
  Виды браузерных событий .
    click .
    contextmenu .
    submit .
    focus .

  hidden .
  preventDefault() .
  stopPropagation() .
  event.target .
  input .
  click .
  event .
    event.type .
    . Тип события.
    event.currentTarget .
    . Элемент, на котором сработал обрабочик.
    event.clientX .
    . Координаты курсора в момент события относительно окна.
    event.clientY .
    . Координаты курсора в момент события относительно окна.

Notes @
Например, объект document, который представляет сам документ
document.getElementById(id)
document.getElementsByTagName(name)
document.createElement(name)
parentNode.appendChild(node)
element.innerHTML
element.TextNode
element.style.left
element.setAttribute
element.getAttribute
element.addEventListener
window.content
window.onload
window.dump
window.scrollTo
Reference @

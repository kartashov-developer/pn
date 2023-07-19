[js]

Что такое Element? .
. Элемент - это кусочек HTML в DOM-дереве. Каждый HTML-тег превращается в элемент DOM.
. Из DOM можно получить элемент и изменить его. Браузер заметит изменения и отобразит их на странице.
Свойства Element .
. HTML-элементы содержат свойства, которые можно разделить на группы:
  Свойства, связанные с HTML-атрибутами: .
    id .
    . Получить идентификатор элемента:
    | const id = document.getElementById("unique");
    | id.id = "another";
    class .
    . Получить список классов:
    | const element = document.getElementsByClassName("div");
    | console.log(element.className); // вывести список классов
    | element.className = "main__container-header"; // установить новый класс
    classList .
    . Получить список классов:
    | const button = document.querySelector("button");
      add() .
      | button.classList.add("active"); // добавить класс
      | button.classList.add("new", "way", "btn"); // добавить несколько классов
      remove() .
      | button.classList.remove("active"); // убрать класс
      | button.classList.remove("new", "way", "btn"); // убрать несколько классов
      replace() .
      . Принимает 2 параметра {n(что нужно заменить) 1st} и {o(на что нужно заменить) 2nd},
        возвращает boolean-значение с итогом true/false.
      | const button = document.querySelectro("button.hidden");
      | const result = button.classList.replace("hidden", "visible"); // меняем hidden на visible
      toggle() .
      |
      contains() .
      | button.classList.contains("active"); // содержимое классов(boolean: true/false)
    style .
    . Добавить стили:
    | element.style.backgroundColor = "beige";
    | element.style.color = "gray";
    | element.style.marginTop = "20px";
  Свойства и методы связанныее с обходом DOM: [js_DOM_methods] .
    children .
    parentElement .
    nextElementSibling .
    previousElementSibling .
    getElementById .
    getElementsByClassName .
    getElementsByTagName .
    querySelector .
    querySelectorAll .
  Информация о содержимом: .
    innerHTML .
    . Возвращает HTML-код всего, что вложено в текущий элемент. При записи в это свойство, предыдущее содержимое будет затерто. Страница отобразит новое содержимое. Приводит к `перерисовке`.
    . Принимает {s string}
    | const divElement = document.getElementsByTagName("div")[0];
    | divElement.innerHTML = "<p>New paragraph</p>";
    . Меняет только содержимое.
    outerHTML .
    . Меняет HTML-код и `выбранный элемент`.
    textContent .
    . Позволяет считывать и задавать собственное текстовое содержимое элемента.
  - специфические свойства элемента: |input value=""|, |input type=""|.



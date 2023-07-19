. |elem.innerHTMLwiii| - предоставляет содержимое элемента
. |elem.outerHTML| - предоставляет и содержимое элемента, и сам элемент.
. |elem.textContent| - предоставляет доступ к текстовому узлу.
. |elem.hidden| - скрывает элемент.
. |elem.value| - значение для <input>, <select>, <textarea>.
. |elem.className| - добавляет класс к элементу.
. |let div = document.createElement('div');| - создает элемент.
. |document.body.append(div)| - вставляет элемент после.
. |document.body.prepend(div)| - вставляет элемент перед.
. |div.remove(div)| - удаляет элемент.
Методы для работы с атрибутами .
. |elem.hasAttribute(name)| - проверить на наличие.
. |elem.getAttribute(name)| - получить значение.
. |elem.setAttribute(name, value)| - установить значение.
. |elem.removeAttribute(name)| - удалить атрибут.
. |elem.attributes| - это коллекция всех атрибутов.
Методы classList .
. |elem.classList.add/remove("class")| – добавить/удалить класс.
. |elem.classList.toggle("class")| – добавить класс, если его нет, иначе удалить.
. |elem.classList.contains("class")| – проверка наличия класса, возвращает |true|/<false>.


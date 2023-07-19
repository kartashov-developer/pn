[web] Handlebars Шаблонизаторы @

. Шаблонизаторы нужны для того, чтобы использовать некоторые возможности яп
  внутри обычных HTML-страниц.

Express .
1. В специальной папке создается файл шаблона(view), содержащий HTML-код, с 
   добавленными в нужные места переменными.
2. Обработчик HTML-запроса отвечает на запрос при помощи метода ответа 
   |res.render()|, куда первым параметром передает имя view-файла, а вторым
   объект, где каждое свойство это та самая переменная, чье значение запишется 
   в итоговую HTML-страницу, созданную на основе шаблона. Т.е. мы, как бы, 
   передаем параметры в шаблон, почти также, как передаем параметры в функцию 
   при ее вызове.
3. Метод |res.render()| подставляет значения параметров из !viewsParameters!
   в определенные нами места в файле !viewName! и превращает код в настоящий 
   HTML, после чего отправляет этот код на клиент.
  hbs .
  |{lng:term}
  | npm i hbs
  |{lng:js}
  | const hbs = require('hbs'); // Подключаем hbs
  . Сообщаем Express'у, что будет использоваться шаблонизатор ?hbs?:
    | app.set('view engine', 'hbs'); // Указываем, что используем hbs
  . Указываем Express'у, что файл с layout'ом будет называться {layout.hbs}:
    | app.set('view options', { layout: 'layout' });
  . Сообщаем Express'у, что наши шаблоны будут лежать в !'./templates/views'!
    | app.set('views', path.join(__dirname, 'templates', 'views')); 
  . Сообщаем hbs'у, что partials будут лежать в папке !'./templates/partials'!
    | hbs.registerPartials(path.join(__dirname, 'partials'));
    . Чтобы вставить наш partial в layout, нужно в !layout.hbs! прописать 
      следующее: <{{{body}}}>, а в !index.hbs!: ?{{> partial}}?
  . Рендерим наш файл, передавая туда переменные:
    | res.render('index', { name: 'Икар', number: 42 });
    Передача данных в hbs .
    . Текст:
    |{lng:hbs}
    | {{text}}
    . Кусочек HTML-кода в виде текста:
    |{lng:hbs}
    | {{{htmlCode}}}
    . Другой hbs-шаблон:
    |{lng:hbs}
    | {{> partialTemplate}}
      Условные операторы в hbs .
      . Если ?author? определен, добавить в HTML-файл параграф с его полным 
        именем.
        В противном случае, добавить параграф с текстом:
        |{lng:hbs}
        | {{#if author}}
        |   <p>{{firstName}} {{lastName}}</p>
        | {{else}}
        |   <p>Unknown author!</p>
        | {{/if}}
      Циклы в hbs .
      . В шаблон передан массив объектов ?students?:
        |{lng:express}
        | res.render('index', {
        |   students: [
        |     { name: 'Raziel', age: 25 }, 
        |     { name: 'Kain', age: 600 }
        |   ]
        | });
      . Для каждого элемента массива добавить <li> с его свойствами !name! и 
        !age!:
        |{lng:hb}
        | {{#each students}}
        |   <li>{{this.name}} - {{this.age}}</li>
        | {{/each}}


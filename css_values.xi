[css] @

Values .
|{css}
| text-indent: 20px; -- отвечает за красную строку
| line-height: 10px; -- отвечает за высоту строки
  border .
  |{css}
  | border: 10px solid #000;
  | border-top: 2px solid cyan;
  | border-bottom: 2px solid red;
  | border-right: 4px solid blue;
  | border-left: 4px solid green:
  border-radius .
  |{css}
  | border-radius: 50%; -- круг
  width .
    max-width/max-height .
    Ограничивает ширину/высоту(блок начнет уменьшаться с родителем).
    min-width/min-height .
    Ограничивает ширину/высоту(увеличивать можно, уменьшать нельзя).
  Padding & Margin & Overflow & Display & Border & border-radius .
  ! |Не работают со строчными тегами|
    padding .
    |{4}padding: 10px(top) 20px(right) 30px(bottom) 40px(left);|
    |{3}padding: 10px(top) 20px(right, left) 30px(bottom);|
    |{2}padding: 10px(top, bottom) 20px(right, left);|
    margin .
    |{4}margin: 10px(top) 20px(right) 30px(left) 40px(bottom);|
    |{3}margin: 10px(top) 20px(right, left) 30px(bottom);|
    |{2}margin: 10px(top, bottom) 20px(right, left);|
    overflow .
    |{css}
    | overflow: visible;
    . При ограничении по высоте -> содержмое за блоком будет видно
    |{css}
    | overflow: hidden;
    . Обрезает все, что не влезло в блок
    |{css}
    | overflow: scroll;
    . Добавляет скролл, если содержимое не попало в блок
    |{css}
    | overflow: auto;
    . Добавляет скролл, если он нужен
    display .
    |{css}
    | display: block;
    . Элемент становится блочным -> занимает всю ширину пространства, на него 
      начинают действовать width, height, padding, margin.
    |{css}
    | display: inline;
    . Элемент становится строчным.
    |{css}
    | display: none;
    . Скрывает элемент.

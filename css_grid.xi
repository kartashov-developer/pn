[css] @

Различие колонок flex и grid? .
. При указании |{FLEX}display: flex;|, колонки имеют `разную` ширину.
. При использовании |{GRID}display: grid;|, колонки имеют всегда `указанную` ширину и контент будет динамически умещен в указанные рамки.
|{css}
| display: grid;
. Родитель, к которому применено данное свойство, становится `grid-контейнером`.
. Прямые потомки становятся `grid-элементами`.
|{css}
| grid-template-columns: 25% 25% 25% 25%;
. Раскладывает grid-элементы в таблицу по 4 значения(количество столбцов зависит от количества указанных значений).
* При добавлении свойства |{GRID}gap: 20px|, CSS не учитывает ширину страницу и появляется скролл. Чтобы этого избежать, необходимо указать в значении `fr`: |{GRID}grid-template-columns: 25% 25% 1fr 1fr|. [#video_about_fr] [#article_about_fr]
    ! repeat({t(times to repeat)}, {w(ширина)}) func
    . Краткая запись долгого и нудного полного значения.
    . |{example}grid-template-column: repeat(4, 1fr);|
    . Указанное значение |{GRID}250px| говорит, что первый `grid-элемент` будет с фиксированной шириной.
    . |{example}grid-template-columns: 250px repeat(12, 1fr);|

References @
.[resources_by_niki] https://wiki.nikiv.dev/front-end/css/css-grid#notes
.[video_about_fr#] https://www.youtube.com/watch?v=8QSqwbSztnA, by Kevin Powell
.[article_about_fr#] https://habr.com/ru/articles/331316/, Статья про fr

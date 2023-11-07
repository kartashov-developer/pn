[css] @

Блочная модель .
  Inline .
  Строчные элементы .
  . Занимает столько, сколько содержит.
  Им не задается `margin`, `padding` и `width`.
  | display: inline;
  - |a|, |img|
  Block .
  Блочные элементы .
  . Блочные элементы захватывают все пространство страницы.
  В ширине и высоте учитываются стадартные параметры. Поэтому используется свойство |{css}box-sizing: border-box|.
  | display: block;
  - |div|, |p|
  Inline-block .
  Строчно-блочные элементы .
  . Они не жадные, как блочные элементы, и им можно задавать `padding`, `margin`, `width`.
  | display: inline-block;

  
  
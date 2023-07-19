[css] @

Адаптативность .
  Фиксированная .
  . Появляется прокрутка.
    Ширина, высота фиксированы.
    {width} & {height} in |px|.
  Резиновая .
  . {width} & {height} in |%|.
  Адаптивная .
  . {@media}
  Отзывчивая .
  . Комбинация |%| и |@media|.
  |{css}
  | @media () {
  |   .container {
  |     width: 100%;
  |   }
  |   .container__main {
  |     width: 100%;
  |     margin: 0;
  |   }
  | }
  |{css}
  | @media (max-width: 768px) {
  |   .container__main {
  |     width: 30%;
  |     margin: 0;
  |   }
  | }
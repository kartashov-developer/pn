[css] @

Position .
  position: static; .
  . По умолчанию.
  position: relative; .
  . Позволяет сдвигать элементы с помощью: <left>, <right>, <top>, <bottom>.
  position: absolute; .
  . Позволяет располагать элемент там, где хочется.
  Элемент выпадает из верстки и его можно перемещать куда угодно.
  ! Но в нынешнее время все элементы заключены в блоки. И элемент с |{css}position: relative;| не сможет
  летать по всей странице. Как же его перемещать внутри конкретного блока?
  Нужно, чтобы родительский блок содержал свойство |{csc}position: absolute;|, тогда, в нужном элементе, можно использовать |{css}position: relative;|.
  position: fixed .
  . Закрепляет элемент.
    Что делать, если блоки наезжают друг на друга? .
    | z-index: 1000; -- для другого
    | z-index: -1; -- для блока с position: absolute;
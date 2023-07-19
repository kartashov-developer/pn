html @

. Есть парные теги(закрываются) и не парные(самозакрывающиеся).
. Теги могут быть ?невидимыми?: <html>, <head>, 
  а бывают ?видимыми?: <p>, <img>, <video>.
Теги .
  <html> & <head> .
  # <html> - главный, корневой тег
  # <head> - шапка страницы
    . !meta! - описание страницы
      . !charset! - кодировка страницы
        !viewport! - для красивого отображения на телефонах
        !http-equiv! - для совместимости с InternetExplorer
        !name="description" content="Text"! - Описание страницы
        !name="author" content="Text"! - Автор страницы
    . !link!
      . !rel="stylesheet"! - файл стилей
        !href=""! - ссылка на файл
  Семантические теги .
  # <header> - шапка сайта
  # <nav> - навигационное меню
  # <article> - запись в блоге
  # <section> - секции на сайте
  # <aside> - основное содержимое страницы
  # <main> - боковая колонка с информацией
  # <address> - адрес
  # <footer> - подвал страницы
  <body> .
  # <br> - перенос строки
  # <hr> - разделитель(divider)
  # <b> <strong> - bold
  # <i> - italic
  # <mark> - mark
  # <u> - underline
  # <s> - strikethrough
  # <ol> - ordered list
  # <ul> - unordered list
  # <li> - компонент
  # <a> - ссылка

Атрибуты .
  . Есть ?специфические?(подходят лишь для определенных тегов), 
    а есть ?универсальные?(подходят для всех).
  ol .
    . `type`
    . `start`
  ul .
  a .
    . `href`
    . `target`
    . `rel`
  img .
    . `src`
    . `alt`

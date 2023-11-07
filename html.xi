HTML @

. {Самозакрывающиеся - закрываются сами},
  {Парные - нужен закрывающий тег}.

Теги .
  <html> & <head> .
  # ?html? - главный, корневой тег
  # ?head? - шапка страницы
    . Предназначен для хранения метаданных о странице.
      В нем содержится:
      - заголовок(?<title>?),
      - подключаются внешние ресурсы(?<style>?),
      - кодировка страницы(?<meta?!charset="UTF-8">!).
    . ?meta? - описание страницы
      . !charset!- кодировка страницы
        !viewport!- для правильного отображения на мобильных устройствах.
        !http-equiv!- для совместимости с InternetExplorer
        !name="description"! !content="Text"! - описание страницы
        !name="author"! !content="Text"! - автор страницы
    . ?link?
      . !rel="stylesheet"! - файл стилей
        !href=""! - ссылка на файл
  Семантические теги .
  # {<header> - шапка сайта}
  # {<nav> - навигационное меню}
  # {<article> - запись в блоге}
  # {<section> - секции на сайте}
  # {<aside> - основное содержимое страницы}
  # {<main> - боковая колонка с информацией}
  # {<address> - адрес}
  # {<footer> - подвал страницы}
  <body> .
  # {<br> - перенос строки}
  # {<hr> - разделитель}
  # {<b> - bold}
  # {<i> - italic}
  # {<mark> - mark}
  # {<u> - underline}
  # {<s> - strikethrough}
  # {<ol> - ordered list}
  # {<ul> - unordered list}
  # {<li> - компонент списка}
  # {<a> - ссылка}

Атрибуты .
  # {Специфические - подходят лишь для определенных тегов},
  # {Универсальные - подходят для всех}.
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

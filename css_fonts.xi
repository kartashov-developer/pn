[css] @

Шрифты .
  Дефолтные .
  |{css}
  | font-family: Verdana;
  Удаленные .
  [#google-fonts]
  Локальные .
  [#fonts]
  . Используется с помощью |{css}@font-face|.
  |{fonts.css}
  | @font-face: {
  |   font-family: 'Roboto Bold';
  |   src: url('../fonts/Roboto-black.eot');
  |   src: ---------------------------------
  |   font-weight: '900';
  |   font-style: 'normal;
  | }
  | @font-face: {
  |   font-family: 'Roboto Medium';
  |   src: url('../fonts/Roboto-black.eot');
  |   src: ---------------------------------
  |   font-weight: '500';
  |   font-style: 'normal;
  | }
  | @font-face: {
  |   font-family: 'Roboto Light';
  |   src: url('../fonts/Roboto-black.eot');
  |   src: ---------------------------------
  |   font-weight: '100';
  |   font-style: 'normal;
  | }
  |{main.css}
  | font-family: 'Roboto Light';
  | font-family: 'Roboto Medium';
  | font-family: 'Roboto Bold';
  Converter .
  Конвертация .
    [#converterFonts]
    . familysupport: |on|
    . add local() rule: |on|
    . fix vertical metrics: <off>
    . autohint font: <off>
    . base64 encode: <off>

Reference @
[google-fonts#] [https://google-fonts.com]
[fonts#] [https://web-fonts.pro]
[converterFonts#] [https://transfonter.org]
Vim @

. [#vimTraining1].
. [#vimTraining2].

Vim Grammar .
. There is only one grammar rule in Vim language: |verb + noun|.
  Nouns(Motions) .
  . Nouns are Vim motions. Motions are used to move around in Vim.
    hjkl .
    # |h| = Move cursor left.
    # |j| = Move cursor down.
    # |k| = Move cursor up.
    # |l| = Move cursor right.
    Other .
    # |w| = Move forward to the beginning of the next word.
    # `}` = Jump to the next paragraph.
    # |$| = Go to the end of the line.
    # |0| = Go to the start of the line.
    # |^| = Go to the first symbol of the line.
  Verbs(Operators) .
  . Vim has `16` operators.
  # |y| = Yank text(copy).
    . After yank text, you can paste it with:
      # |p|(after the cursor);
      # |P|(before the cursor).
  # |d| = Delete text and save to register.
  # |c| = Delete text, save to register, and start insert mode.

  Verb + Noun .
  # |y$| = To yank everything from your current location to the end of the line.
  # |dw| = To delete from your current location to the beginning of the next word.
  # |c}| = To change from you current location to the end of the current paragraph.
  |y2h| = To yank two characters to the left.
  |d2w| = To delete the next two words.
  |c2j| = To change the next two lines.

  Режим поиска .
  |/| — поиск от курсора до конца документа.
  |?| — поиск от курсора до начала документа.
  |gg| - перейти к началу файла.
  |G| - перейти к концу файла.

Useful .
  {Move to first line of screen - H}
  {Move to last line of screen - L}
  {Lowercase line - Vu}
  {Find char backwards - F<char>}
  {Delete backwards until char - dT<char>}
  {Visually select until char - v/<char><return>}
  {Yank 2 words - y2aw}
  {Centre line - zz}
Training .
[vimTraining1#] [http://www.vimgenius.com/]
[vimTraining2#] [https://play2048.co/]

Resources @
[niki#] [https://wiki.nikiv.dev/text-editors/vim/]
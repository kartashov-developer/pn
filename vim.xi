[index] @

Vim Grammar .
. There is only one grammar rule in Vim language: |verb + noun|.
  Nouns(Motions) .
  . Nouns are Vim motions. Motions are used to move around in Vim.
    ijkl .
    . How to train? [#ijkltraining1] [#ijkltraining2]
    # |i| = Move cursor up.
    # |k| = Move cursor down.
    # |j| = Move cursor left.
    # |l| = Move cursor right.
    Other .
˚    # |w| = Move forward to the beginning of the next word.
    # `}` = Jump to the next paragraph.
    # |$| = Go to the end of the line.
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

Notes @
  . |:q!| = To quit without saving any changes.
  . |:qall!| = To quit without saving any changes in all open files.
  . |:wq| = To save and quit.
  . |wqall| = To save and quit all opened files.

Resources @
[niki#] [https://wiki.nikiv.dev/text-editors/vim/]
[ijkltraining1#] [https://collaborative2048.onrender.com/]

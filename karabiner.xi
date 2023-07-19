Karabiner @

Alfred .

Raycast .

Tests .

Websites .

Apps .
  W-mode(Main) .
    . :j - Chrome
    . :k - VS Code
    . :l - iTerm
    . :n - Notes
    . :m - Calendar
    . :comma - Reminders
    . :period - Settings
    . :h - Figma
    . :f - Finder
    . :d - Dash
    . :y - Toggl
    . :u - Todoist
    . :i - Notion
    . :e - Anki
    . :o - KeyboardMaestro
  Z-mode(Contacts) .
    . :j - Telegram
    . :k - WhatsApp
    . :l - Discord
    . :u - Mail
    . :i - Contacts
  T-mode(Other) .
    . :a - Alfred Preferences

Apps Shortcuts .
  Telegram .
  # ^D - Delete message
  # ^R - Emoji Focus
  # ^E - Send code
  # ^F - Aniuta Focus
  # ^J - Saved Messages
  # ^K - List
  # ^L - Training
  # ^; - Karabiner


  Mail .
  # ^R - Mark as unread
  # ^U - Red Flag
  # ^O - Green Flag

Settings .
| {:profiles
|  {:goku {:default true
|          :alone   80 ; hold for .. ms to register single tap
|          :held    50 ; not sure what it's for
|          :delay   0 ; time after which the key press is delayed
|          :sim     30}} ; keys need to be pressed within this threshold to be considered simultaneous
|  :templates {:alfred "osascript -e 'tell application id \"com.runningwithcrayons.Alfred\" to run trigger \"%s\" in workflow \"%s\" with argument \"%s\"'"
|              :km "osascript -e 'tell application \"Keyboard Maestro Engine\" to do script \"%s\"'"
|              :open "open \"%s\""
|              }
|  :simlayers {
|              :2-mode {:key :2}
|              :tab-mode {:key :tab}
|              :q-mode {:key :q}
|              :w-mode {:key :w}
|              :e-mode {:key :e}
|              :r-mode {:key :r}
|              :t-mode {:key :t}
|              :i-mode {:key :i}
|              :o-mode {:key :o}
|              :caps-mode {:key :caps_lock}
|              :a-mode {:key :a}
|              :b-mode {:key :b}
|              :s-mode {:key :s}
|              :d-mode {:key :d}
|              :f-mode {:key :f}
|              :g-mode {:key :g}
|              :tilde-mode {:key :grave_accent_and_tilde}
|              :z-mode {:key :z}
|              :x-mode {:key :x}
|              :c-mode {:key :c}
|              :v-mode {:key :v}
|              :l-mode {:key :l}
|              :n-mode {:key :n}
|              :m-mode {:key :m}
|              :semicolon-mode {:key :semicolon}
|              :comma-mode {:key :comma}
|              :dot-mode {:key :period}
|              :spacebar-mode {:key :spacebar}
|              }
|  :main [{:des "swap : and ;"
|         :rules [[:#Psemicolon :!Ssemicolon]
|                  [:!Ssemicolon :semicolon]]}
|         {:des "left cmd -> cmd+tab"
|          :rules [[:left_command :left_command nil {:alone :!Ctab}]]}
|         {:des "jsim"
|          :rules [
|                  [[:j :k] [:alfred "search google" "com.alfredapp.vitor.googlesuggest"]] ;; Alfred Google Search
|                  [[:j :f] :!CSO9] ;; Raycast Main
|                  [[:j :l] :!CTOSspacebar] ;; Alfred Main
|                  ]}
|         {:des "ksim"
|          :rules [
|                  [[:k :m] [:alfred "search youtube" "com.xilopaint.alfredapp.youtube"]] ;; Alfred YouTube Search
|                  ]}
|         {:des "2key (option)"
|          :rules [:2-mode
|                  [:k :!Odown_arrow] ;; selected line down
|                  [:i :!Oup_arrow] ;; selected line up
|                  [:l :!Oright_arrow] ;; !Option right
|                  [:j :!Oleft_arrow]]} ;; !Option left
|         {:des "qkey (cmd + shift)"
|          :rules [:q-mode
|                  [:3 :!CS3]
|                  [:4 :!CS4]
|                  [:5 :!CS5]
|                  [:6 :!CS6]
|                  [:7 :!CS7]
|                  [:8 :!CS8]
|                  [:9 :!CS9]
|                  [:0 :!CS0]
|                  [:w :!CSw]
|                  [:e :!CSe]
|                  [:r :!CSr]
|                  [:t :!CSt]
|                  [:y :!CSy]
|                  [:u :!CSu]
|                  [:o :!CSo]
|                  [:p :!CSp]
|                  [:open_bracket :!CSopen_bracket]
|                  [:close_bracket :!CSclose_bracket]
|                  [:a :!CSa]
|                  [:s :!CSs]
|                  [:d :!CSd]
|                  [:f :!CSf]
|                  [:g :!CSg]
|                  [:h :!CSh]
|                  [:j :!CSj]
|                  [:i :!CSi]
|                  [:k :!CSk]
|                  [:l :!CSl]
|                  [:semicolon :!CSsemicolon]
|                  [:quote :!CSquote]
|                  [:z :!CSz]
|                  [:x :!CSx]
|                  [:c :!CSc]
|                  [:v :!CSv]
|                  [:b :!CSb]
|                  [:n :!CSn]
|                  [:m :!CSm]
|                  [:comma :!CScomma]
|                  [:period :!CSperiod]]}
|         {:des "wkey (apps)"
|          :rules [:w-mode
|                  [:j [:km "open: Chrome"]]
|                  [:k [:km "open: VS Code"]]
|                  [:l [:km "open: iTerm"]]
|                  [:n [:km "open: Notes"]]
|                  [:m [:km "open: Calendar"]]
|                  [:comma [:km "open: Reminders"]]
|                  [:period [:km "open: System Preferences"]]
|                  [:h [:km "open: Figma"]]
|                  [:f [:km "open: Finder"]]
|                  [:d [:km "open: Dash"]]
|                  [:y [:km "open: Toggl"]]
|                  [:u [:km "open: Todoist"]]
|                  [:i [:km "open: Notion"]]
|                  [:e [:km "open: Anki"]]
|                  [:o [:km "open: KeyboardMaestro"]]
|                 ;;  [: [:km "Change macOS appearance (dark/light)"]]
|                  ]}
|         {:des "rkey (break)"
|          :rules [:r-mode
|                  [:k [:km "w: GitHub (trending)"]]
|                  [:l [:km "w: GitHub (explore)"]]
|                  [:u [:km "w: HN"]]
|                  [:i [:km "w: HN (new)"]]
|                  [:o [:km "w: HN (comments)"]]
|                  [:t [:km "w: Medium(bookmarks)"]]
|                  [:t [:km "w: Habr(bookmarks)"]]
|                  [:8 [:km "w: Reddit Saved"]]
|                  [:0 [:km "w: Lobsters"]]
|                  [:9 [:alfred "search hn" "com.vitorgalvao.alfred.hackerboard"]]
|                  [:spacebar :!TOSs]]} ; Selection -> DuckDuckGo
|         {:des "ekey (cmd)"
|          :rules [:e-mode
|                  [:q :!Cq]
|                  [:w :!Cw]
|                  [:r :!Cr]
|                  [:t :!Ct]
|                  [:u :!Cu]
|                  [:i :!Ci]
|                  [:p :!Cp]
|                  [:open_bracket :!Copen_bracket]
|                  [:close_bracket :!Cclose_bracket]
|                  [:semicolon :!Csemicolon]
|                  [:quote :!Cquote]
|                  [:comma :!Ccomma]
|                  [:period :!Cperiod]
|                  [:slash :!Cslash]
|                  [:a :!Ca]
|                  [:b :!Cb]
|                  [:c :!Cc]
|                  [:d :!Cd]
|                  [:f :!Cf]
|                  [:g :!Cg]
|                  [:h :!Ch]
|                  [:j :!Cj]
|                  [:k :!Ck]
|                  [:l :!Cl]
|                  [:m :!Cm]
|                  [:n :!Cn]
|                  [:o :!Co]
|                  [:s :!Cs]
|                  [:v :!Cv]
|                  [:x :!Cx]
|                  [:y :!Cy]
|                  [:z :!Cz]
|                  [:1 :!C1]
|                  [:2 :!C2]
|                  [:3 :!C3]
|                  [:4 :!C4]
|                  [:5 :!C5]
|                  [:6 :!C6]
|                  [:7 :!C7]
|                  [:8 :!C8]
|                  [:9 :!C9]
|                  [:0 :!C0]]}
|         {:des "tkey (palettes + websites)"
|          :rules [:t-mode
|                  [:a [:km "open: Alfred Preferences"]]
|                  [:q :!TO1] ; Screenshot -> CleanShot
|                  [:w :!TO2] ; Screenshot -> Clipboard
|                  [:e :!TO3] ; Screenshot -> ~/Desktop
|                  [:spacebar :!CTOSr]]} ; Selection -> Google Translate
|         {:des "ikey (symbols)"
|          :rules [:i-mode
|                  [:1 :!S1] ; -> !
|                  [:2 :!S2] ; -> @
|                  [:3 :!Sequal_sign] ; -> +
|                  [:4 :!S8] ; -> *
|                  [:5 :!S5] ; -> %
|                  [:6 :!S6] ; -> ^
|                  [:e :!S3] ; -> #
|                  [:r :!Squote] ; -> "
|                  [:t :quote]   ; -> '
|                  [:o :open_bracket] ;TODO:something
|                  [:p :close_bracket] ;TODO:something
|                  [:a :slash] ; -> /
|                  [:s :!Shyphen] ; -> _
|                  [:d :backslash] ; -> \
|                  [:f :hyphen] ; -> -
|                  [:g :!S4] ; -> $
|                  [:j :equal_sign] ; -> =
|                  [:l [:hyphen :!Speriod :spacebar]] ; -> arrow (->)
|                  [:semicolon :semicolon] ; ;
|                  [:grave_accent_and_tilde :!Sgrave_accent_and_tilde] ; -> //
|                  [:z :!Sslash] ; -> ?
|                  [:x :!Sbackslash] ; -> |
|                  [:c :!S7] ; -> &
|                  [:v :!Scomma] ; -> <
|                  [:b [:!Speriod]]]} ; -> >
|         {:des "akey (ctrl)"
|          :rules [:a-mode
|                  [:2 :!T2]
|                  [:3 :!T3]
|                  [:4 :!T4]
|                  [:5 :!T5]
|                  [:6 :!T6]
|                  [:7 :!T7]
|                  [:8 :!T8]
|                  [:9 :!T9]
|                  [:0 :!T0]
|                  [:q :!Tq]
|                  [:w :!Tw]
|                  [:e :!Te]
|                  [:r :!Tr]
|                  [:t :!Tt]
|                  [:i :!Ti]
|                  [:o :!To]
|                  [:y :!Ty]
|                  [:u :!Tu]
|                  [:p :!Tp]
|                  [:open_bracket :!Topen_bracket]
|                  [:close_bracket :!Tclose_bracket]
|                  [:d :!Td]
|                  [:f :!Tf]
|                  [:g :!Tg]
|                  [:h :!Th]
|                  [:j :!Tj]
|                  [:k :!Tk]
|                  [:l :!Tl]
|                  [:semicolon :!Tsemicolon]
|                  [:quote :!Tquote]
|                  [:z :!Tz]
|                  [:x :!Tx]
|                  [:c :!Tc]
|                  [:v :!Tv]
|                  [:b :!Tb]
|                  [:n :!Tn]
|                  [:m :!Tm]
|                  [:comma :!Tcomma]
|                  [:period :!Tperiod]
|                  [:slash :!Tslash]]}
|         {:des "skey (essential)"
|          :rules [:s-mode
|                  [:q [:!Oleft_arrow :!OSright_arrow]] ; Highlight word
|                  [:r :!Creturn_or_enter]
|                  [:t :!Stab]
|                  [:b :left_shift] ; shift
|                  [:a :tab]
|                  [:d :delete_or_backspace]
|                  [:f :return_or_enter]
|                  [:g :!Ctab]
|                  [:##n :!Cleft_arrow]
|                  [:##m :!Cright_arrow]
|                  [:semicolon [:!Cleft_arrow :!CSright_arrow]] ; Highlight current line
|                  [:open_bracket [:km "Lowercase selected text"]]
|                  [:close_bracket [:km "Uppercase selected text"]]
|                  [:##j :left_arrow]
|                  [:##k :down_arrow]
|                  [:##i :up_arrow]
|                  [:##l :right_arrow]
|                  [:u :!Oleft_arrow]
|                  [:o :!Oright_arrow]
|                  [:x :!Cx] ; Cut
|                  [:c :!Cc] ; Copy
|                  [:v :!Cv] ; Paste
|                  [:w :!CT9]
|                  [:comma :!Cdelete_or_backspace]]} ; Delete all of left side
|         {:des "dkey (mouse)"
|          :rules [:d-mode
|                  [:i :!Ckeypad_hyphen] ; Zoom out
|                  [:u :!Ckeypad_plus] ; Zoom in
|                  [:j {:mkey {:vwheel 60}}] ; Scroll down
|                  [:k {:mkey {:vwheel -60}}] ; Scroll up
|                  [:comma :!O8] ; Show Launchpad
|                  [:period :!CTO3]]} ; Mission Control
|         {:des "fkey (essential)"
|          :rules [:f-mode
|                  [:d :!COSTu] ; Color picker Raycast
|                  [:u :open_bracket] ; -> [
|                  [:i :close_bracket] ; -> ]
|                  [:a :!OSspacebar] ; Switch language (Russian <-> English)
|                  [:j :!Sopen_bracket] ; -> {
|                  [:k :!Sclose_bracket] ; -> }
|                  [:m :!S9] ; -> (
|                  [:comma :!S0]; -> )
|                  ]}
|         {:des "gkey (actions)"
|          :rules [:g-mode
|                  [:j :!CSOa] ; Move window left
|                  [:k :!COSf] ; Maximize window
|                  [:l :!CSOd]]} ; Move window right
|         {:des "zkey (chat)"
|          :rules [:z-mode
|                  [:j [:km "open: Telegram"]]
|                  [:k [:km "open: WhatsApp"]]
|                  [:l [:km "open: Discord"]]
|                  [:u [:km "open: Mail"]]
|                  [:i [:km "open: Contacts"]]]}
|         {:des "ckey (run + dots)"
|          :rules [:c-mode
|                  [:u [:km "c: CodeSandbox"]]
|                  [:i [:km "c: CodePen"]]
|                  [:o [:km "c: StackBlitz"]]
|                  [:p [:km "c: TS Playground"]]
|                  [:h [:km "c: Excalidraw"]]
|                  [:q [:km "c: Codewars"]]
|                  [:j [:km "c: GitHub"]]
|                  [:k [:km "c: StackOverflow"]]
|                  [:l [:km "c: Google Translate"]]
|                  [:n [:km "fastTest: JS"]]
|                  [:m [:km "fastTest: React"]]
|                  [:comma [:km "fastTest: TS"]]
|                  [:period [:km "fastTest: Python"]]
|                  [:a [:km "Clone repo to ~/src/clones and open with VS Code"]]
|                  [:s [:km "Clone repo to ~/src/clones"]]
|                  [:d [:km "Commit notes database"]]]}
|         {:des "vkey (media)"
|          :rules [:v-mode
|                  [:i :display_brightness_decrement]
|                  [:u :display_brightness_increment]
|                  [:j :mute]
|                  [:n :volume_decrement]
|                  [:m :volume_increment]]}
|         {:des "lkey (break)"
|          :rules [:l-mode
|                  [:q :!CSOTt] ; wiki search
|                  [:w :!CSOTe] ; ray.so
|                  [:e :!CSOTa] ; generate random info
|                  [:r :!CSOTm] ; create task todoist
|                  [:a :!CSOTl] ; chrome mui
|                  [:s :!CSOTx] ; search mdn
|                  [:d :!CSOTc] ; search react
|                  [:f :!CSOTf] ; code stash
|                  [:g :!CSOTg] ; chatGPT
|                  [:t :!CSTOy] ; translate
|                  [:z :!CSOTp] ; chrome tabs
|                  [:x :!CSOTi] ; chrome history
|                  [:c :!CSOTn]]} ; chrome bookmarks
|         {:des "nkey (alfred)"
|          :rules [:n-mode
|                  [:1 :!O1]
|                  [:2 :!O2]
|                  [:3 :!O3]
|                  [:4 :!O4]
|                  [:5 :!O5]
|                  [:6 :!O6]
|                  [:q [:alfred "search shares" "nikivi.ask.create.share"]] ; share search
|                  [:e [:alfred "search github" "nikivi.search.the.web"]] ; downloads
|                  [:r [:alfred "search stack overflow" "nikivi.search.the.web"]] ; downloads
|                  [:t [:alfred "search reddit" "nikivi.search.the.web"]] ; downloads
|                  [:w [:alfred "search websites" "nikivi.web.searches"]] ; websites
|                  [:k [:alfred "search menu bar" "com.tedwise.menubarsearch"]] ; menur search
|                  [:a [:alfred "search shortcuts" "com.alfredapp.vitor.shortcuts"]] ; shortcut search
|                  [:d [:alfred "search dash" "com.kapeli.dash.workflow"]]
|                  [:f [:alfred "search folders" "nikivi.search.folders"]] ; folders search
|                  [:g [:alfred "search repos" "me.lachlan.githubjump"]] ; github
|                  [:z [:alfred "search npm" "com.farrell.pkgman.alfredworkflow"]] ; npm
|                  [:x [:alfred "search downloads" "recentdownloads.ddjfreedom"]] ; downloads
|                  [:c [:alfred "search emoji" "com.github.jsumners.alfred-emoji"]] ; emoji
|                  [:b [:alfred "soulver" "app.soulver.alfredworkflow"]] ; soulver
|                  ]}
|         {:des "spacekey (websites chrome)"
|          :rules [:spacebar-mode
|                  [:y [:km "c: Localhost"]]
|                  [:h [:km "c: Codewars"]]
|                  [:j [:km "c: React"]]
|                  [:k [:km "c: habr"]]
|                  [:l [:km "c: Google Translate"]]
|                  [:u [:km "c: ray.so"]]
|                  ]}
|         {:des "omode"
|          :rules [:o-mode
|                   [:q [:slash :slash :spacebar :!St :!So :!Sd :!So :!Ssemicolon :spacebar]] ; -> TODO:
|                   [:w [:slash :slash :spacebar :!Sn :!So :!St :!Se :!Ssemicolon :spacebar]] ; -> NOTE:
|                   [:e [:slash :!S8 :spacebar :spacebar :!S8 :slash :left_arrow :left_arrow :left_arrow]] ; -> /* */
|                   [:a [:c :o :n :s :o :l :e :period :l :o :g :!S9 :!S0 :semicolon :left_arrow :left_arrow]] ; -> console.log();
|                   [:s [:!S9 :!S0 :spacebar :!Sopen_bracket :!Sclose_bracket :semicolon :left_arrow :left_arrow]] ; () {}
|                   [:d [:r :e :t :u :r :n :spacebar :!S9 :!S0 :semicolon :left_arrow :left_arrow]] ; -> return
|                   [:z [:spacebar :c :l :a :s :s :!Sn :a :m :e :equal_sign :quote :quote :left_arrow]]]} ;-> className=''
| ]}

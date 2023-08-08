[index] @

GitHub [https://github.com/philc/vimium/tree/master] .

Navigating the current page .
DONE:|?| = show the help dialog for a list of all available keys
DONE:|gg| = scroll to top of the page
DONE:|G| = scroll to bottom of the page
DONE:|f| = open a link in the current tab
DONE:|F| = open a link in a new tab
DONE:|r| = reload
DONE:|i| = enter insert mode -- all commands will be ignored until you hit Esc to exit
DONE:|yy| = copy the current url to the clipboard
DONE:|yf| = copy a link url to the clipboard
Navigating to new pages .
DONE:|o| = Open URL, bookmark, or history entry
DONE:|O| = Open URL, bookmark, history entry in a new tab
DONE:|b| = Open bookmark
DONE:|B| = Open bookmark in a new tab
Using find .
|/| = enter find mode
DONE:. Type your search query and hit <Enter> to search, or <Esc> to cancel
DONE:|m| = cycle forward to the next find match
DONE:|n| = cycle backward to the previous find match
Navigating your history .
<c-n> = go back in history
<c-m> = go forward in history
Manipulating tabs .
<c-j> = go one tab left
|K|, |gt| = go one tab right
|g0| = go to the first tab. Use ng0 to go to n-th tab
|g$| = go to the last tab
|^| = visit the previously-visited tab
|t| = create tab
|yt| = duplicate current tab
|x| = close current tab
|X| = restore closed tab (i.e. unwind the 'x' command)
|T| = search through your open tabs
|W| = move current tab to new window
<a-p> = pin/unpin current tab
Using marks .
|ma|, |mA| = set local mark "a" (global mark "A")
|`a|, |`A| = jump to local mark "a" (global mark "A")
|``| = jump back to the position before the previous jump
          -- that is, before the previous gg, G, n, N, / or `a
Additional advanced browsing commands .
|]]|, |[[| = Follow the link labeled 'next' or '>' ('previous' or '<')
          - helpful for browsing paginated sites
<a-f> = open multiple links in a new tab
|gi| = focus the first (or n-th) text input box on the page. Use <tab> to 
cycle through options.
|gu| = go up one level in the URL hierarchy
|gU| = go up to root of the URL hierarchy
|ge| = edit the current URL
|gE| = edit the current URL and open in a new tab
|zH| = scroll all the way left
|zL| = scroll all the way right
|v| = enter visual mode; use p/P to paste-and-go, use y to yank
|V| = enter visual line mode

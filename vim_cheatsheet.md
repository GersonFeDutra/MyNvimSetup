# Vim Cheatsheet

Here I listed most, if not all, keystrokes used for neovim actions.

Notes:

* `Word` refers to a word separated by special characters
* `Token` refers to a character sequence separated by blanks (spaces)
* `Buffer` refers to an opened file
* `Window` refers to the current visible content of a buffer on screen
* `#` indicates that the action may be repeated the indicated "# (number)" of times.
The number can be omitted.
* `@` indicates that a string or pattern (text) must be indicated
* When refered to the `#` and `@` vim commands we will state them as literal.
* `C-` is an alias for `Ctrl +` (pressing control button)

## Basic vim

Check this [reference](https://phoenixnap.com/kb/vim-commands-cheat-sheet).

### Normal Mode

#### Movement

* `#h` move the cursor left
* `#j` move the cursor down
* `#k` move the cursor up
* `#l` move the cursor right

##### Inline movement

* `#b` move to the start of a word
* `#B` move to the start of a token
* `#w` move to the start of the next word
* `#W` move to the start of the next token
* `#e` move to the end of a word
* `#E` move to the end of a token

* `0` (zero) – jump to the beginning of the line
* `$` – jump to the end of the line
* `^` – jump to the first (non-blank) character of the line

##### Buffer movement

* `#G` / `#gg` / `:#` – move to a specified line number (# should be specified)
* `H` – move to the top of the screen (H=high)
* `M` – move to the middle of the screen (M=middle)
* `L` – move to the bottom of the screen (L=low)
* `G` - move to end of buffer
* `gg` - move to start of buffer

##### *Moving by screens*

* `C-b` – move back one full screen
* `C-f` – move forward one full screen
* `C-d` – move forward 1/2 a screen
* `C-u` – move back 1/2 a screen

##### *Scrolling the screen*

* `C-e` – move screen down one line (don't move the cursor, except on bounds)
* `C-y` – move screen up one line (don't move the cursor, except on bounds)

##### *Jump history*

* `C-o` – move backward through the jump history
* `C-i` – move forward through the jump history

##### *Focus*

* `zz` - Focus center
* `zt` - Focus top
* `zb` - Focus bottom

#### Searching in file

* `*` – jump to the next instance of the current word
* literal `#` – jump to previous instance of the current word
* `/@` – search forward for the specified @ (pattern)
* `?@` – search backward for the specified @ (pattern)
* `n` – repeat the search in the same direction
* `N` – repeat the search in the opposite direction

#### Cutting, copying and pasting

* `#yy` – copy (yank) entire line
* `#dd` – cut (delete) entire line
* `p` – paste after the cursor
* `P` – paste before the cursor

### From normal to insert

* `i` – switch to insert mode before the cursor
* `I` – insert text at the beginning of the line
* `a` – switch to insert mode after the cursor
* `A` – insert text at the end of the line
* `o` – open a new line below the current one
* `O` – open a new line above the current one
* `ea` – insert text at the end of the word

### Editing Text

* `r` – replace a single character (and return to command mode)
* `R` – replace characters under cursor until exit insert mode
* `cc` – replace an entire line (deletes the line and moves into insert mode)
* `C` / `c$` – replace from the cursor to the end of a line
* `cw` – replace from the cursor to the end of a word
* `ce` – replace from the cursor to the end of next word
* `cb` – replace backwards (must be after word)
* `s` – delete a character (and move into insert mode)

#### Merge

* `J` – merge the line below to the current one with a space in between them
* `gJ` – merge the line below to the current one with no space in between them

#### Edit history

* `u` – undo
* `C-r` – redo
* `.` – repeat last command

### From normal to visual

* `v` – select text using character mode
* `V` – select lines using line mode
* `C-v` – select text using block mode

### Insert Mode

* `Esc` – exit insert mode; switch to command/ normal mode

### Visual Mode

#### Visual movement

* `o` – move from one end of the selected text to the other
* `aw` – select a word
* `ab` – select a block with ()
* `aB` – select a block with {}
* `at` – select a block with <>
* `ib` – select inner block with ()
* `iB` – select inner block with {}
* `it` – select inner block with <>

#### Visual Commands

* `y` – yank (copy) the marked text
* `d` – delete (cut) the marked text
* `p` – paste the text after the cursor
* `u` – change the market text to lowercase
* `U` – change the market text to uppercase

### Vim commands

* `:colorscheme @colorscheme_name` – change to specified scheme
* `:colorscheme [space] C-d` – list available Vim color scheme

#### Saving and exiting

* `%` - indicates the current buffer's file path to be used with other commands
* `!@` - indicates a shell command to run
* `:w` – save the file
* `:wq` / `:x` / `ZZ` – save and close the file
* `:q` – quit
* `:q!` / `ZQ` – quit without saving changes
* `:w @new_file_name` – save the file under a new name and continue editing the
original
* `:sav @new_file_name` – save the file under a new name and continue editing
the new copy
* `:w !@new_file_name` – write out the file using sudo and tee command
* `:w !sudo tee %` – write out the file using sudo and tee command

#### Buffers

* `:e @file_name` – open a file in a new buffer
* `:bn`  – move to the next buffer
* `:bp` – go back to previous buffer
* `:bd`  – close buffer
* `:b#`  – move to the specified buffer (by number)
* `:b @file_name` – move to a buffer (by name)
* `:ls` – list all open buffers

##### Viewports and tabs

* `:sp @file_name`  – open a file in a new buffer and split viewport horizontally
* `:vs @file_name`  – open a file in a new buffer and split viewport vertically
* `:vert ba`  – edit all files as vertical viewports
* `:tab ba`  – edit all buffers as tabs
* `gt` – move to next tab
* `gT` – move to previous tab

* `C-ws` – split viewport
* `C-wv` – split viewport vertically
* `C-ww` – switch viewports
* `C-wq` – quit a viewport
* `C-wx` – exchange current viewport with next one
* `C-=` – make all viewports equal in height and width

### Marks and jumps

* `m[a-z]` – mark text using character mode (from a to z)
* `M[a-z]` – mark lines using line mode (from a to z)
* `\`a` - jump to position marked a
* `\`y\`a` – yank text to position marked >a>
* `\`.` – jump to last change in file
* `\`0` – jump to position where Vim was last exited
* `\`\`` – jump to last jump
* `:marks` – list all marks
* `:jumps` – list all jumps
* `:changes` – list all changes
* `C-i` – move to next instance in jump list
* `C-o` – move to previous instance in jump list
* `g,` – move to next instance in change list
* `g;` – move to previous instance in change list

### Macros

* `qa`  – record macro a (a can be any character)
* `q`  – stop recording macro
* `@a`  – run macro a (a can be any character)
* `@@`  – run last macro again

## Neovim actions

### Spellcheck

Check [this article out for reference (pt)](https://andreztz.github.io/neovim_spell_check/).

* `z=` - shows the list of suggestions for the word
* `]s` - search for the next word
* `[s` - search for the previous word
* `zg` - adds the word under the cursor to the dictionary,
so it will no longer be marked as wrong.
* `zug` - undo the last added word
* `zw` - removes the word under the cursor from the dictionary,
so it will be marked as wrong
* `zuw` - undo the last word removed

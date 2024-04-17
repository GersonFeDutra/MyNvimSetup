# Vim'S Code

Notes:

- the symbols `↑`, `↓`, `←`, `→` represent the respective arrow keys;
- the `ctrl` key will be represented by the `C-` abbreviation as chord `<>`;
	> ex.: `<C-a>` = `Ctrl + a`
- the `alt` key will be represented by the `M-` abbreviation as a chord `<>`;
	> ex.: `<M-F4>` = `Alt + F4` | `<C-M-del>` = `Ctrl + Alt + Delete`
- the `shift` key will be omitted if a letter was presented in upper case;
	Otherwise, its represented with the `+` sign.
	> When used in a chord, the `-` sign is omitted
	> ex.: `J` = `Shift + J`, `<C+K>` = `Ctrl + Shift + K`, `<C +↑>` = `Ctrl + Shift + UpArrowKey`
- a chord that starts with `n` / `i` / `v` indicates normal / insert / visual mode
	> ex.: `<n:C-e>` = `Ctrl + e` only works on normal mode
- the current text in the editor from the file being edited is referenced as "buffer";
- the therm "yank" indicates that something was copied to the clipboard;

------------

## Basics

### `hjkl` - normal mode navigation

* `h` - left
* `j` - up
* `k` - down
* `l` - right
<!--
r esse caminho aí também
hello world!
-->

* `gj` - same as `g`, considering line wrap
* `gk` - same as `k`, considering line wrap

### `iIaA` - insert mode

* `i` - insert in cursor "left"
* `I` - insert in line "left" (home)
- `gI` - like `I`, but always start in column 1

* `a` - insert in cursor "right"
* `A` - insert in cursor "left" (end)

* `o` - insert line below & enter insert mode
* `O` - insert line above & enter insert mode

- `esc` / `M-c`* - exits insert mode
<!-- `C-c` -->
<!--
hello world!
Joeee, hey, hello world! :)
-->

### `xru` - changes in normal/edit mode

* `x` - remove letter
* `r` - replace letter
* `R` - replace mode (equivalent of insert key)
* `u` - undo changes
* `C-r` - redo changes history
<!--
Joeee, hey, hello world! :]
Joe, hey. Hello world! :]
-->

### `yYpP` - copy (yank) & paste

* `yy` - yank line
* `y'navigation hotkey'` - yank with "navigation"
	> eg.:
	> * `yw` - copy word
	> * `y}` - copy block
	> * `y2f)` - copy everything over the second appearance of `)`
* `yiw` / `yiW` - copy word / string under cursor
* `yaw` / `yaW` - similar to `yiw` / `yiW`, but with leading space

- `p` - paste after cursor
- `P` - paste before cursor
- `gp` - paste after cursor and leave cursor after the text
- `gP` - paste before cursor and leave cursor after the text
- `[p` / `[P` - paste and adjust ident

### `ccCddD` - cut: change & delete

* `dd` - delete line (cut it copying to the clipboard)
	> * `d'navigation hotkey'` - delete with "navigation"
	> * `v'selection'd` - delele 'selection' under view mode
	>
	> - `d}` - delete block
	> - `d%` - delete everything between the cursor and the first open bracket, or the matching bracket
* `D` - delete line after cursor
* `diw` / `diW` - delete word / string under cursor
* `daw` / `daW` - similar to `diw` / `diW`, but with leading space

- `c'motion'` - change up to `'motion'` navigation
	> eg.:
	> * `cw` - change the word
	> * `c}` - change the block
	> * `ct'character'` - change the line until first appearance of 'character'
- `s` / `cl` - change character
- `cc` / `S` - change current line
- `C` - change text after cursor
	> equivalent to `c$`
* `ciw` / `ciW` - change word / string under cursor
* `caw` / `caW` - similar to `ciw` / `ciW`, but with leading space

> A change will cut the text to clipboard & enter insert mode

### Matches

#### `/'regexp'` `?'regexp'` find

- `/` - find match using vim regex expression
- `?` - find match backwards using vim regex expression
- `n` - next match
- `N` - previous match
- `:noh` - remove highlighting of search matches

<!-- ##### find in multiple files

- ``` :vim[grep] /'pattern'/ {`{file}`} ``` - search for `'pattern'` in multiple files
	> e.g. `:vim /'pattern'/ **/*`
- `:cn[ext]` - jump to the next match
- `:cp[revious]` - jump to the previous match
- `:cope[n]` - open a window containing the list of matches
- `:ccl[ose]` - close the quickfix window -->

#### `:s/'search'/'replace'/'mode'` replace

- `:s/'search'/'replace/'mode'` - Start a new `'search'` and `'replace'` with vim regex expressions
in a given `'mode'` modefier

#### Regexp modifiers

- `g` - global match
- `i` - case insensitive
- `m` - multiple lines
- `s` - treat string as single line
- `X` - Allow comments and whitespace in pattern
- `U` - Un-greedy pattern
- `c` - Ask for confirmation (find & replace)

### Commands `:`

#### How to exit vim

* `:` - the command line key
* `:q` - (try to) quit
* `:w` - write
* `:w 'file'` - write as `'file'`
* `:wq` / `:x` / `ZZ` - write & quit
* `:q!` / `ZQ` - quit, not write
- `:wqa` - write & quit in all tabs

- `:w !sudo tee %` - write out the current file using sudo

#### Delete command

- `:3,5d` - delete lines starting from 3 to 5
> You can also use the following characters to specify the range:
> - `:.,$d` - From the current line to the end of the file
> - `:.,1d` - From the current line to the beginning of the file
> - `:'n',$d` - From the `'n'`-th line to the end of the file
- `:g/'pattern'/d` - delete all lines containing `'pattern'`
- `:g!/'pattern'/d` - delete all lines not containing `'pattern'`

------------

## More keys

### **`v`** isual modes

* `v` - enter visual mode (allows selecting text under the cursor)
	> eg.:
	> - `v'selection'y` - copy selection to clipboard
	> - `v'selection'n` - go to the next selection
* `V` - enter visual mode selecting lines
* `<M-v>`* - enter visual mode with "multi-cursor" block selection.
	> Rebind from `<C-v>`
<!-- `C-v` -->
	> eg.: `C-v <navigation> I` - insert the same text on the beginning of a selected block.

### goto

* `:'#'` - go to `'#'` line number

#### `web0$^ft;` - horizontal navigation

* `w` - move forward between **word**s
* `W` - like `w`, ignoring punctuation
* `<leader>w` - like `w`, considering camelCase / snake_case
	>! Requires CamelCase Vim plugin

* `b` - move **back**wards between words
* `B` - like `b`, ignoring punctuation
* `<leader>b` - like `b`, considering camelCase / snake_case
	>! Requires CamelCase Vim plugin

* `e` - move *forward* to the **end** of the word
* `E` - like `e`, ignoring punctuation
* `<leader>e` - like `e`, considering camelCase / snake_case
	>! Requires CamelCase Vim plugin

- `ge` - move *backwards* to the **end** of the previous word
* `gE` - like `ge`, ignoring punctuation

- `0` - go to column 1
- `g0` - like `0`, considering line wrap

- `$` - go to end of line
- `g$` - like `$`, considering line wrap
- `g_` - like `$`, but ignore leading spaces

- `^` - move to the first word of line (equivalent to the sequence `0w`).
- `g^` - like `^`, considering line wrap

- `gm` - go to middle of current line

- `f'char'` - move forward to the first appearance of the `'char'`acter in line
	> eg.: f. - go to the first `.` after cursor
- `F'char'` - move backwards to the last appearance of the `'char'`acter in line

* `t'char'` - move forward to the left of the first appearance of the `'char'`acter in line
	> eg.: t. - go to the left of first `.` after cursor
* `T'char'` - move backwards to the right of the first appearance of the `'char'`acter in line

- `;` - repeat the `f`/`t`/`F`/`T` action
- `,` - repeat the `f`/`t`/`F`/`T` action backwards

#### `ggG{}[]%*#` - buffer navigation

* `gg` - start of buffer.
* `G` - end of buffer.
* `'n'gg` - `'n'G` - go to line `'n'`

- `{` - goes up a block of code
- `}` - goes down a block of code

- `*` - go to next appearance of the current word
- `#` - go to previous appearance of the current word

- `%` - go to closest brackets pairs
	> use `:h matchpairs` in vim for more info

- `[{` - move to the previous open bracket
- `]}` - move to the next open bracket

- `[[` - move to the previous higher level open bracket
- `]]` - move to the next higher level open bracket

##### `HML` - screen navigation

- `H` - move to top of screen
- `M` - move to middle of screen
- `L` - move to bottom of screen

#### `gd;,` - project navigation

- `gd` - go to local declaration / definition
- `gD` - go to global declaration / definition
- `g;` - go to newer change
- `g,` - go to older change

> `g;` and `g,` access the jump list buffer

#### `gb` - multi-cursors match & select

- `gb` - go to next match
	> Equivalent to VScode `<C-d>`

#### `gtgT` - group tabs navigation

- `gt` - go to next tab
	> Use `'#'gt` to specify tab `'#'` number
- `gt` - go to previous tab

- `:tabm[ove]'n'` - move current tab to the `'n'`-th position (indexed from 0)
- `:tabc[lose]` - close the current tab and all its windows
- `:tabo[nly]` - close all tabs except for the current one
- `:tabdo 'command'` - run the `'command'` on all tabs
	> e.g. `:tabdo q` - closes all opened tabs

### Repeat hotkeys

* `'n''key'` - You can enumerate the number of `'n'` times you want a hotkey be executed.
	> eg.:
	> * `50j` - Move down 50 lines
	> * `25k` - Move up 25 times
	> * `5x` - delete 5 letters in a line

* `.` - repeat the last hotkey
	> eg.:
	> * `dd.` - delete 2 lines
	> * `u..` - undo 3 changes

### `oO` `abaBat` `ibiBit` `uU` Visual mode

- `v:o` - move cursor to the other extremity of selection
- `v:O` - move cursor to the other side of selection

- `v:ab` / `v:a(` - mark a block with `(`...`)`
- `v:aB` / `v:a{` - mark a block with `{`...`}`
- `v:at` - mark a block with `<`...`>`

- `v:ib` / `v:i(` - mark an inner block with `(`...`)`
- `v:iB` / `v:i{` - mark an inner block with `{`...`}`
- `v:it` - mark an inner block with `<`...`>`

- `v:u` - change marked text to lowercase
- `v:U` - change marked text to uppercase

### Screen align

* `zz` - center the line into the screen
* `zt`- align top of screen with cursor
* `zb` - align bottom of screen with cursor

### Folding

- `za` - toggle fold under the cursor
	> Use `zA` to operate under all levels
- `zo` - open fold under the cursor
- `zc` - close fold under the cursor

- `zf'motion'` - manually define a fold up to `'motion'`
	> `v:zf` works on visual mode, but only in `v` select from cursor
- `zd` - delete fold under the cursor

<!-- - `zr` - reduce (open) all folds by one level
- `zm` - fold more (close) all folds by one level -->

### Extra keys

- `~` - swap the case of a letter
- `g~'motion'` - swap the case up to `'motion'` navigation
- `gu` - change to lower case up to `'motion'` navigation
- `gU` - change to lower case up to `'motion'` navigation

- `<<` / `>>` - de/ident line on edit mode
	> `V'selection'<` `V'selection'>` - de/ident selection
- `<%` / `>%` - de/ident block between `(`...`)` or `{`...`}` under cursor
- `<ib` / `>ib` - de/indent inner block with `(`...`)`
- `<at` / `>at` - de/indent a block with `<`...`>` tags

- `==` - re-ident
	> `V'select'=` - re-ident `'select'`ed lines
- `=%` - re-indent a block with `(`...`)` or `{`...`}`
- `=iB` - re-indent inner block with `{`...`}`
- `gg=G` - re-indent entire buffer

- `J` - join above line with current
- `gJ` - join lines without inserting space

---------

## Advanced

### Special

* `<M-a>`* - Increase number.
	> Rebind from `<C-a>`
* `<M-x>`* - Decrease number.
	> Rebind from `<C-x>`

* `<M-o>`* - Normal once.
	> Rebind from `<C-o>`

### Macros

- `q'a'...'q` - record a sequence of keys (`...`) as a macro, under `'a'` macro key, to be executed again
- `@'macro key'` - play a macro saved under `'a'` macro key
	> eg.:
	> * `qw0~I' C-c A', C-c jq` - capitaliza a primeira letra, insere aspas no início e final,
	> adiciona uma vírgula e move-se para o final da linha.
	> * `@W` - executa o macro gravado acima.
- `g@'motion'` - play macro until `'motion'` navigation
- `@@` - return last run macro

### Extra keys

- `gf` start editing the file whose name is under the cursor
- `ga` - show ascii character info

### Regexp

#### Anchors

- `^` - start
- `$` - end
- `\A` - start of string
- `\Z` - end of string

- `\b` - word boundary
- `\B` - not word boundary

- `\<` - start of word
- `\>` - end of word

#### Quantifiers

- `*` - 0 or more
- `+` - 1 or more
- `?` - 0 or 1
- `{'#'}` - Exactly `'#'` specified number
- `{'#',}` - `'#'` specified number or more
- `{'#','#'}` - between `'#'` values

#### Character Classes

- `\c` - Control character
- `\s` - White space
- `\S` - Non white space
- `\w` - Word
- `\W` - Non word
- `\x` - Hex-decimal digit
- `\O` - Octal digit

#### Special Characters

- `\n` - New line
- `\r` - Carriage return
- `\t` - Tab
- `\v` - Vertical Tab
- `\f` - Form feed
- `\'xxx'` - Octal character `'xxx'`
- `\x'hh'` - Hex character `'hh'`

#### Replacement expressions

- `$'n'` - `'n'`-th non-passive group
- ``` $` ``` - Before matching string
- `$' ` - After matching string
- `$+ ` - Last matching string
- `$& ` - Entire matching string

#### Groups and Ranges

- `.` - Any character (except newline)
- `('a'|'b')` - `'a'` or `'b'`
- `('...')` - group `'...'`
- `(?:'...')` - passive group `'...'`

- `['a''b''c']` - Range `'a'` or `'b'` or `'c'`
- `[^'a''b''c']` - Not `'a'` or `'b'` or `'c'`
- `['f'-'t']` - From `'f'` to `'t'`

- `\'n'` - `'n'`-th group / sub-pattern

#### Assertions

- `?=` - Lookahead
- `?!` - Negative Lookahead
- `?<=` - Lookbehind
- `?!=` / `?<!` - Negative Lookbehind

- `?>` - Once-only sub-expression

- `?()` - Condition [if then]
- `?()|` - Condition [if then else]

- `?#` - Comment

### Registers

> Registers are being stored in ~/.viminfo, and will be loaded again on next restart of vim.

- `:reg` - show `reg`isters content
- `"'#'y` - yank into register `'#'`
- `"'#'p` - paste contents of register `'#'`

> Special registers:
> - 0 - last yank
> - " - unnamed register, last delete or yank
> - % - current file name
> - # - alternate file name
> - * - clipboard contents (X11 primary)
> - + - clipboard contents (X11 clipboard)
> - / - last search pattern
> - : - last command-line
> - . - last inserted text
> - - - last small (less than a line) delete
> - = - expression register
> - _ - black hole register

### Marks

- `:marks` - list of marks

- `m'a'` - set current position for mark `'a'`
- ``` `'a' ``` - jump to position of mark `'a'`
- ``` y`'a' ``` - yank text to position of mark `'a'`
<!-- `0 - go to the position where Vim was previously exited -->

> To jump to a mark you can either use a backtick (`) or an apostrophe ('). Using an apostrophe jumps to the beginning (first non-blank) of the line holding the mark.

- ``` `" ``` - go to the position when last editing this file
- ``` `. ``` - go to the position of the last change in this file
- ``` `` ``` - go to the position before the last jump
- `:ju`[mps] - list of jumps

<!-- - `<C-i>` - go to newer position in jump list -->
<!-- - `<C-o>` - go to older position in jump list -->
<!-- :changes - list of changes -->

---------

## VScode Keys

### Multi-cursor

* `<C-d>`* - select next match
	> vim: `gb`
* `<M-d>`* - select previous match
	> New binding
* `<C-k><C-d>` - skip selected match
* `<M+D>`* - skip selected match to previous match
	> New binding
* `<C+L>` - select all matches

- `<C +↑>` / `<C-M +K>` - Add cursor above
- `<C +↓>` / `<C-M +J>` - Add cursor below

### Expand / Colapse

* `<C +[>` - Fold (collapse) region
<!--`editor.fold`-->
* `<C +]>` - Unfold (un-collapse) region
<!--`editor.unfold`-->
* `<C-k> <C-[>` - Fold (collapse) all subregions
<!--`editor.foldRecursively`-->
* `<C-k> <C-]>` - Unfold (un-collapse) all subregions
<!--`editor.unfoldRecursively`-->
* `<C-k> <C-0>` - Fold (collapse) all regions
<!--`editor.foldAll`-->
* `<C-k> <C-j>` - Unfold (un-collapse) all regions

### Editor

- `<C-k> <C-i>` - show hover
- `<C-.>` - show context / code actions
- `<C+I>` - format code
- `<C-k> <C-f>` - format selection

- `<C-Enter>` - create line below (vim mode independent)
- `<C +Enter>` - create line above (vim mode independent)
- `<C+K>` - remove line (don't move it to clipboard).
	> Note: won't stack on vim history (`u` will reset all `C-K` uses at once)

- `<C-↑>` - move screen one line up
	> vim: `<n:C-y>`
- `<C-↓>` - move screen one line down
	> vim: `<n:C-e>`

- `<M-↑>` / `<M-j>`* - move line up
- `<M-↓>` / `<M-k>`* - move line down

- `<C-M-↑>` / `<C-M-j>` - copy line up
- `<C-M-↓>` / `<C-M-k>` - copy line down

- `<C-M-r>` - open file on containing folder
	> New bind from `<C-k> r`

- `C-Shift-←/-→>` - expand/shrink selection

#### Insert mode chords

- `backspace` - delete character
	> ~~vim equivalent: `<i:C-m>`~~
- `<C-backspace>` - delete word
	> ~~vim equivalent: `<i:C-w>`~~

#### Find & Replace

* `<C-f>` - Find (on file)
* `<C-F>` - Find (on workspace)
* `<C-h>` - Find and Replace (on file)
* `<C-H>` - Find and Replace (on workspace)

#### Project Navigation

* `<M-←>` - go back
	> vim: `<M-o>`
* `<M-→>` - go forward
	> vim `<M-i>`

* `F12` - go to definition
	> vim: `gd` / `gD`

* `<C-tab>`... - go forward to last opened files
* `<C +tab>`... - go backwards to last opened files

* `<C-page_up>` - move to left editor
* `<C-page_right>` - move to right editor

* `<C +page_up>` - move editor to left in Group
* `<C +page_right>` - move editor to right in Group

#### Quick Open & Intellisense

* `<C-space>` - Open intellisense
* `↑` / `<C-j>` - Navigate to next
* `↓` / `<C-ç>` / `<C-h>` * - Navigate to previous
	> New bind

<!-- `C-k` may not work because VsCode uses it to add shortcuts with cords. -->
* `<C-o>` - Open File
* `<C-k> <C-o>` - Open Folder

* `<C-k> f` - Close Folder
* `<C-k> <C-w>` - Close all files in Workspace

* `<C-k> <C-n>` - Duplicate Workspace
	> New bind

* `<C-p>` - Search Files Menu
	> Command Pallet: `...`
* `<C+P>` - Command Pallet Menu
	> Command Pallet: `>`
* `<C-p> ?` - Menu Help
	> Command Pallet: `?`

* `<C+O>` - Search Symbols Menu
	> Command Pallet: `@`
* `<C-t>` - Search Symbols in Workspace menu
	> Command Pallet: `#`

#### History

* `<C-z>` - Undo
* `<C-Z>` - Redo
* `<M-h>` - File history

### Window

- `<C-k> o` - Open Editor in new Window

#### Editor Groups

- `<C-\>` - Split Editor (horizontal)
- `<C-k> <C-\>` - Split Editor Orthogonal (vertical)

##### Focus Groups

* `<C-k> <C-←>` / `<C-k> <C+H>`* - Focus left Group
* `<C-k> <C-→>` / `<C-k> <C+L>`* - Focus right Group
* `<C-k> <C-↑>` / `<C-k> <C+J>`* - Focus up Group
* `<C-k> <C-↓>` / `<C-k> <C+L>`* - Focus down Group

- `<C-k> <C-p>` - Show editors by appearance

##### Move groups

* `<C-k> ←` - Move Group to left
* `<C-k> →` - Move Group to right
* `<C-k> ↑` - Move Group to up
* `<C-k> ↓` - Move Group to down

- `<C-M-←>` - Move editor into previous group
- `<C-M-→>` - Move editor into next group

### Terminal

* `<C-l>` - Clear

### Debug

* `F5` - Play/ Continue Debug
* `+F5` - Stop Debug
* `<C +F5>` - Restart Debug
* `F11` - Step Into
* `+F11` - Step Out
* `F10` - Step Over
* `F8` - Go to the next warning
* `+F8` - Go to the previous warning

### Sidebar

* `<C-b>` - Toggle Sidebar
* `<C+E>` - File Explorer
* `<C+F>` - Search
* `<C+X>` - Extensions

#### Git Menus

* `<C+G> <C+G>` - Source Control
	> Rebind from `<C+G> g`
* `<C+G> <C+C>` - Commits
	> Rebind from `<C+G> G`
* `<C+G> <C+I>` - Github Issues
	> Rebind from `<C+G> i`

### Diff Editor

* `<C-k> <C-M-s>` - add selected range to stage section

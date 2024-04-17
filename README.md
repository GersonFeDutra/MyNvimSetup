# My Workflow

This is my NeoVim Personal Development Environment (PDE) built over AstroNVim.

Its a feature complete Workflow, as powerful as mine previous VsCode Workflow,
but may not be suitable for most users.

I use it primarily for C & C++ programming, so many settings focus on this.
Like plugins as cmake-tools. I am also using it for editing scripting files
(bash, lua, python) as usual, and more. It may be adaptable to your workflow
if you follow the AstroNVim framework conventions.

Install your plugins (LSP, DAP, linters, and formatters) with `:Mason`
> I am specially usign clangd, codelldb and cpptools.

## Issues

* If you are using Clang LSP [check this issue](https://github.com/neovim/nvim-lspconfig/issues/2184#issuecomment-1511154286)
* Make sure you have ripgrep installed otherwise Telescope fuzzy finder may not work.
* Check if the `fd` command works

## Shortcuts guide

### Vim CheatSheet

I've write [my own vim cheat-sheet](./vim_cheatsheet.md) to help to remember
that colossal list of actions we can perform with vim.

> Check this out before reading ahead, cause I will use the same notations
denoted there.

### AstroNVim

Most of [AstroNVim bindings can be found here](./lua/astronvim/mappings.lua).
My personal bindings are located at the [custom folder](./lua/custom/mappings.lua).

Here we are going to present just some of the most relevant shortcuts we can
use in this PDE setup. There are many more for each of the plugins used here.

You can check for all the keymaps available inside the PDE with `[space]fk`

* `[space]` - `<leader>` key: shows leader commands panel
* `z-` - Focus actions
* `[-` - "Previous" actions
* `]-` - "Next" actions
* `g-` - "GoTo" actions
* `'-` - "Mark" actions
<<!-- * `!-` - "Quick actions" -->>
* `:Lazy` - Lazy vim plugin manager
* `:Mason` - Mason languages tool downloader and manager

* `:Telescope` / `[space]f-` Telescope (fuzzy finder)
* `[space]xx` - Trouble (view diagnostics)
* `[space]fh` - Find Help - You can use this to find more information about the
used plugins, and keystrokes in this tool set.

#### Buffers navigation

* `[space]b-` - Buffer options
* `[space]bb@` - Select buffer
* `[b` - Previous buffer
* `]b` - Next buffer

#### Split view

* `\\` - Vertical split
* `|` - Horizontal split
* `:q` - Close a split

* `C-(h/j/k/l)` - Navigate view left/up/donw/right respectively
* `C-(left/up/down/right)` - Resize view left/up/down/right respectively

#### Plugins

Most used [plugins are listed here](./lua/plugins).

##### Neotree

* `:Neotree` - Neotree (file explorer)
* `[space]e` - toggle visibility
* `[space]o` - toggle focus

##### LSP

* `:LspInfo` - About LSP
* `[space]l-` - LSP bindings
  * `[space]la` - Code actions
* `K` - Hover documentation

### Custom

Check all the [custom bindings here](./lua/custom/mappings.lua).

* `C-Alt-r` - Open file system
* `[space]x` - Turn runnable
* `[space]ss` - Rename current

#### MyPlugins

* `:SidebarNvimToggle` / `[space]uB` toggle side bar
  * [All sidebar commands can be found here](https://github.com/sidebar-nvim/sidebar.nvim/blob/main/doc/sidebar.txt).
* `[space]sS` - Spectre (Global Search & Replace)

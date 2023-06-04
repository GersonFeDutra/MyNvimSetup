local o = vim.o
--local opt = vim.opt
o.shiftwidth = 4
o.tabstop = 4
o.softtabstop = 4
o.expandtab = true
o.smartindent = true

--o.guicursor = ""

o.nu = true
o.relativenumber = true

o.tabstop = 4
o.shiftwidth = 4
o.expandtab = true

o.smartindent = true

--o.wrap = false
--o.swapfile = false
--o.backup = false
--o.undodir = os.getenv("HOME") .. "/.vim/undodir"
--o.undofile = true

--o.hlsearch = false
o.incsearch = true

o.termguicolors = true

o.scrolloff = 4
o.signcolumn = "yes"
--o.isfname:append("@-@") -- ???

o.updatetime = 50

o.colorcolumn = "80"

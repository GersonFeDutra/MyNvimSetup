local utils = require "astronvim.utils"
local maps = { i = {}, n = {}, v = {}, t = {} }

-- Moving lines is a special character
maps.n["<C-down>"] = { "mz:m+<CR>`z==", desc = "move line down" }
maps.n["<C-up>"] = { "mz:m-2<CR>`z==", desc = "move line up" }
maps.i["<C-down>"] = { "<Esc>:m+<CR>==gi", desc = "move line down" }
maps.i["<C-up>"] = { "<Esc>:m-2<CR>==gi", desc = "move line up" }
maps.v["<C-down>"] = { ":m'>+<CR>gv=`<my`>mzgv`yo`z", desc = "move line down" }
maps.v["<C-up>"] = { ":m'<-2<CR>gv=`>my`<mzgv`yo`z", desc = "move line up" }

-- Open here
maps.n["<F4>"] = { ":! ./run.sh<CR>", desc = "Script to run file" }
maps.n["<C-M-r>"] = { ":! thunar % &<CR>", desc = "Open file system here" }

-- Add line
maps.i["<C-Enter>"] = { "<Esc>o", desc = "Add line below" }
maps.i["<C-M-Enter>"] = { "<Esc>O", desc = "Add line above" }

utils.set_mappings(astronvim.user_opts("mappings", maps))

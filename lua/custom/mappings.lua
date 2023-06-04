local utils = require "astronvim.utils"
local maps = { i = {}, n = {}, v = {}, t = {} }

-- Moving lines is a special character
--maps.n["<C-down>"] = { "mz:m+<CR>`z==", desc = "move line down" }
--maps.n["<C-up>"] = { "mz:m-2<CR>`z==", desc = "move line up" }
--maps.i["<C-down>"] = { "<Esc>:m+<CR>==gi", desc = "move line down" }
--maps.i["<C-up>"] = { "<Esc>:m-2<CR>==gi", desc = "move line up" }
--maps.v["<C-down>"] = { ":m'>+<CR>gv=`<my`>mzgv`yo`z", desc = "move line down" }
--maps.v["<C-up>"] = { ":m'<-2<CR>gv=`>my`<mzgv`yo`z", desc = "move line up" }

-- Open here
maps.n["<F4>"] = { ":! ./run.sh<CR>", silent = true, desc = "Script to run file" }
maps.n["<C-M-r>"] = { ":! nemo % &<CR>", silent = true, desc = "Open file system here" }

-- Add line
--maps.i["<C-CR>"] = { "<Esc>o", desc = "Add line below" } -- dont work
--maps.i["<C-M-CR>"] = { "<Esc>O", desc = "Add line above" }

maps.n["<leader>pv"] = { vim.cmd.Ex, desc = "Navigate on buffer" }

maps.v["<C-j>"] = { ":m '>+1<CR>gv=gv", desc = "Move down" }
maps.v["<C-k>"] = { ":m '<-2<CR>gv=gv", desc = "Move up" }

-- stay in place
--maps.n["J"] = { "mzJ`z" }
maps.n["<C-d>"] = { "<C-d>zz", desc = "Page down" }
maps.n["<C-u>"] = { "<C-u>zz", desc = "Page up" }

maps.n["n"] = { "nzzzv", desc = "Next" }
maps.n["N"] = { "Nzzzv", desc = "Previous" }

-- greatest remap ever
maps.t["<leader>p"] = { '"_dP', desc = "Paste preserved" } -- highlight paste preserving last buffer
--maps.x["<leader>p"] = { '"_dP' } -- highlight paste preserving last buffer

-- next greatest remap ever : asbjornHaland
maps.n["<leader>y"] = { '"+y', desc = "Yank to clipboard" }
maps.v["<leader>y"] = { '"+y', desc = "Yank to clipboard" }

maps.n["<leader>Y"] = { '"+Y', desc = "Yank to clipboard" }

maps.n["<leader>d"] = { '"_d', desc = "Delete preserved" }
maps.v["<leader>d"] = { '"_d', desc = "Delete preserved" }

-- This is going to get me cancelled
--maps.i["<C-c>"] = { "<Esc>" } -- I don't even use C-c bruh

--[[
maps.n["Q"] = { "<nop>" } -- Why???
maps.n["<C-f>"] = { "<cmd>silent !tmux neww tmux-sessionizer<CR>" } -- I don't use temux :|
maps.n["<leader>f"] = { vim.lsp.buf.format }
]]
--

--[[
-- Quick Fix navigation
maps.n["<C-k>"] = { "<cmd>cnext<CR>zz" }
maps.n["<C-j>"] = { "<cmd>cprev<CR>zz" }
maps.n["<leader>k"] = { "<cmd>lnext<CR>zz" }
maps.n["<leader>j"] = { "<cmd>lprev<CR>zz" }
]]
--

-- Renaming current word
maps.n["<leader>s"] = { ":%s/\\<<C-r><C-w>\\>/<C-r><C-w>/gI<Left><Left><Left>", desc = "Rename current" }
maps.n["<leader>x"] = { "<cmd>!chmod +x %<CR>", silent = true, desc = "Turn runnable" }

--[[
maps.n["<leader>vpp"] = { "<cmd>e ~/.dotfiles/nvim/.config/nvim/lua/theprimeagen/packer.lua<CR>" };
maps.n["<leader>mr"] = { "<cmd>CellularAutomaton make_it_rain<CR>" };
]]
--

--maps.n["<leader><leader>"] = { function()
--    vim.cmd("w")
--    vim.cmd("so")
--end)
--}

utils.set_mappings(astronvim.user_opts("mappings", maps))

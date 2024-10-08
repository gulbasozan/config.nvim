vim.g.mapleader = " "

local keymap = vim.keymap

keymap.set('n', "<leader>pv", "<CMD>Ex<CR>")
keymap.set({'i', 'v'}, "jf", "<ESC>")


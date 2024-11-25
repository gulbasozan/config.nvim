vim.g.mapleader = " "

local keymap = vim.keymap

keymap.set('n', "<leader>pv", "<CMD>Ex<CR>")
keymap.set({'i', 'v'}, "jf", "<ESC>")
keymap.set("n", "<leader>ws", "<CMD>wincmd s<CR>")
keymap.set("n", "<leader>wv", "<CMD>wincmd v<CR>")
keymap.set("n", "<leader>wj", "<CMD>wincmd j<CR>")
keymap.set("n", "<leader>wk", "<CMD>wincmd k<CR>")
keymap.set("n", "<leader>wh", "<CMD>wincmd h<CR>")
keymap.set("n", "<leader>wl", "<CMD>wincmd l<CR>")
keymap.set("n", "<leader>wq", "<CMD>wincmd q<CR>")


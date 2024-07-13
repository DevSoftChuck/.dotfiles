require "nvchad.mappings"

-- add yours here

local map = vim.keymap.set

map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "jk", "<ESC>")
map("n", "<leader>cx", "<cmd>!chmod +x %<CR>", { desc = "Make file executable" })
map("n", "<C-f>", "<cmd>silent !tmux neww fuzzy_finder<CR>")

-- map({ "n", "i", "v" }, "<C-s>", "<cmd> w <cr>")

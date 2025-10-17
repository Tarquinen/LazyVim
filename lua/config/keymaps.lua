-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

local map = vim.keymap.set

-- Remap 'kj' to <Esc> in insert mode
map("i", "kj", "<Esc>", { noremap = true, silent = true })

-- Map delete buffer
map("n", "<leader>q", function()
  Snacks.bufdelete()
end, { desc = "Delete Buffer" })

-- Map F keys
map("n", "<F1>", "<cmd>w<cr><esc>", { desc = "Save", noremap = true, silent = true })
map("n", "<F2>", "<cmd>q<cr>", { desc = "Quit", noremap = true, silent = true })
map("n", "<F3>", ":qa!<CR>", { desc = "Force Quit", noremap = true, silent = true })

-- Window resizing
map("n", "<A-h>", ":vertical resize -2<CR>", { desc = "Make window narrower" })
map("n", "<A-l>", ":vertical resize +2<CR>", { desc = "Make window wider" })

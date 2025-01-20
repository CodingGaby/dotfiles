local map = vim.keymap.set

-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
map("n", "<leader>sx", require("telescope.builtin").resume, { noremap = true, silent = true, desc = "Resume" })
-- Define a function to go to the next buffer
local function next_buffer()
  vim.cmd("bnext")
end

-- Set up the keymap
map("n", "<Tab><leader>", next_buffer, { noremap = true, silent = true, desc = "Go to the next buffer" })

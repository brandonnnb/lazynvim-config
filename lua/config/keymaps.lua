-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
-- Leader key
-- Map tab and shift-tab to change buffers
vim.api.nvim_set_keymap("n", "<Tab>", ":bnext<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<S-Tab>", ":bprevious<CR>", { noremap = true, silent = true })

-- Ctrl-Space to search files using Telescope
vim.api.nvim_set_keymap(
  "n",
  "<C-Space>",
  [[<cmd>lua require('telescope.builtin').find_files({ previewer = false, theme = 'dropdown', layout_config = { width = 0.5 } })<CR>]],
  { noremap = true, silent = true }
)

-- Ctrl-F to search through all files with ripgrep using Telescope
vim.api.nvim_set_keymap(
  "n",
  "<C-f>",
  [[<cmd>lua require('telescope.builtin').grep_string({ search = vim.fn.input("Grep String > ") })<CR>]],
  { noremap = true, silent = true }
)

vim.api.nvim_set_keymap("t", "<Esc>", "<C-\\><C-n>", { noremap = true, silent = true })

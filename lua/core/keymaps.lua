vim.g.mapleader = " "

-- Keymaps gerais
vim.keymap.set("n", "<leader>w", ":w<CR>")       -- salvar
vim.keymap.set("n", "<leader>q", ":q<CR>")       -- sair
vim.keymap.set("n", "<leader>x", ":x<CR>")       -- salvar e sair

-- Navegação entre splits
vim.keymap.set("n", "<leader>v", ":vsplit<CR>")
vim.keymap.set("n", "<leader>s", ":split<CR>")
vim.keymap.set("n", "<C-h>", "<C-w>h")
vim.keymap.set("n", "<C-l>", "<C-w>l")
vim.keymap.set("n", "<C-j>", "<C-w>j")
vim.keymap.set("n", "<C-k>", "<C-w>k")

-- Abrir Oil (explorador)
vim.keymap.set("n", "-", "<CMD>Oil<CR>")

-- Limpar highlight de busca
vim.keymap.set("n", "<leader>h", ":nohlsearch<CR>")

-- Configurações Telescope
vim.keymap.set("n", "<leader>ff", function()
  require("telescope.builtin").find_files()
end)

vim.keymap.set("n", "<leader>fg", function()
  require("telescope.builtin").live_grep()
end)

vim.keymap.set("n", "<leader>fb", function()
  require("telescope.builtin").buffers()
end)

vim.keymap.set("n", "<leader>fh", function()
  require("telescope.builtin").help_tags()
end)


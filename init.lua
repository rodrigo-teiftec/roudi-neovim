-- Instalando os plugins
vim.pack.add({
    {src = 'https://github.com/nvim-treesitter/nvim-treesitter'},
    {src = 'https://github.com/stevearc/oil.nvim'},
    { src = "https://github.com/nvim-lua/plenary.nvim" },
    { src = "https://github.com/nvim-telescope/telescope.nvim" },
    { src = "https://github.com/windwp/nvim-autopairs" },
    { src = "https://github.com/hrsh7th/nvim-cmp" },
    { src = "https://github.com/hrsh7th/cmp-buffer" },
    { src = "https://github.com/hrsh7th/cmp-path" },
    { src = "https://github.com/nvim-tree/nvim-web-devicons" },
    { src = "https://github.com/folke/tokyonight.nvim" },
    { src = "https://github.com/nvim-lualine/lualine.nvim" },
})


-- Carregando o Oil
require("oil").setup()

-- Carregando o telescope
local telescope = require("telescope")
local builtin = require("telescope.builtin")

telescope.setup({
  defaults = {
    layout_config = {
      prompt_position = "top",
    },
    sorting_strategy = "ascending",
  },
})

-- Carregando o autopairs
require("nvim-autopairs").setup({})

-- Carregando o tema
vim.cmd("colorscheme tokyonight")

-- Carregando o autocomplete
local cmp = require("cmp")

cmp.setup({
  completion = {
    autocomplete = false, -- Desliga o popup automático
  },
  mapping = cmp.mapping.preset.insert({
    ["<C-n>"] = cmp.mapping.complete(), -- abre autocomplete
    ["<CR>"] = cmp.mapping.confirm({ select = true }),
    ["<Tab>"] = cmp.mapping.select_next_item(),
    ["<S-Tab>"] = cmp.mapping.select_prev_item(),
  }),
  sources = {
    { name = "buffer" },
    { name = "path" },
  },
})

-- Carregando os Icones
require("nvim-web-devicons").setup({})

-- Carregando as configurações da barra de status
require("lualine").setup({
  options = {
    theme = "auto",
    section_separators = "",
    component_separators = "",
  },
  sections = {
    lualine_a = { "mode" },
    lualine_b = { "branch" },
    lualine_c = { { "filename", path = 1 } },
    lualine_x = { "filetype" },
    lualine_y = { "progress" },
    lualine_z = { "location" },
  },
})


--Referenciando arquivos em lua/core/
require("core.options")
require("core.keymaps")


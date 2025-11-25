return {
  {
    'Saghen/blink.cmp',
    opts = {
      sources = {
        default = { 'lsp', 'path', 'snippets', 'buffer' }, -- inclui palavras do mesmo arquivo
        providers = {
          buffer = {
            -- Opcional: busca em todos os buffers abertos
            get_bufnrs = function()
              return vim.api.nvim_list_bufs()
            end,
          },
        },
      },
    },
  },
}

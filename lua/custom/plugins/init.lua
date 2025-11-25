-- You can add your own plugins here or in other files in this directory!
--  I promise not to create any merge conflicts in this directory :)
--
-- See the kickstart.nvim README for more information

return {
  'numToStr/Comment.nvim',
  lazy = false,
  opts = {
    pre_hook = function()
      -- Define um commentstring padrão se não houver nenhum
      if vim.bo.commentstring == '' or vim.bo.commentstring == nil then
        vim.bo.commentstring = '# %s'
      end
    end,
  },
  -- ✨ Adiciona suporte a múltiplas seleções
  {
    'mg979/vim-visual-multi',
    branch = 'master',
  },
}

-- Configurações do vim-visual-multi
vim.g.VM_default_mappings = 0 -- Desativa os atalhos padrão (vamos definir os nossos)

vim.g.VM_maps = {
  ['Find Under'] = '<C-d>', -- Igual ao VSCode: seleciona próxima ocorrência
  ['Find Subword Under'] = '<C-d>', -- Também com <C-d>
  ['Select All'] = '<C-a>', -- Seleciona todas as ocorrências
  ['Skip Region'] = '<C-x>', -- Pula a próxima ocorrência
  ['Remove Region'] = '<C-q>', -- Remove a seleção atual
}

vim.g.VM_set_statusline = 0 -- Evita interferência visual na barra de status

-- Permite entrar no modo de inserção ao pressionar i/a em múltiplas seleções
vim.g.VM_enter_insert_mode = 1

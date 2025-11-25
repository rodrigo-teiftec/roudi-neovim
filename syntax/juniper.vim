" =====================================================
"   Juniper Junos Syntax Highlight for Neovim
" =====================================================

if exists("b:current_syntax")
  finish
endif

" -----------------------------------------------------
" Categoria: Comandos Junos (azul)
syntax keyword JuniperCommand set delete edit activate deactivate commit rollback show op ping traceroute save load rollback-rollback copy lock unlock run execute
highlight JuniperCommand ctermfg=4 guifg=#3399ff

" -----------------------------------------------------
" Categoria: Interfaces (laranja)
syntax match JuniperInterface "\v((ge|xe|et)-\d+/\d+/\d+|lo\d+|vlan\d*|ae\d+)"
" IPv4
syntax match JuniperInterface "\v(\d{1,3}\.){3}\d{1,3}"
" IPv6
" " IPv6
syntax match JuniperInterface "\v((([0-9a-fA-F]{1,4}:){7}[0-9a-fA-F]{1,4})|(([0-9a-fA-F]{1,4}:){1,7}:)|(::([0-9a-fA-F]{1,4}:){0,6}[0-9a-fA-F]{1,4}))"

highlight JuniperInterface ctermfg=214 guifg=#FFA500

" -----------------------------------------------------
" Categoria: Status (verde)
syntax keyword JuniperStatus up down enabled disabled inactive active
highlight JuniperStatus ctermfg=2 guifg=#00ff00

" -----------------------------------------------------
" Categoria: Erros / Atenção (vermelho)
syntax keyword JuniperError fail reject error denied
highlight JuniperError ctermfg=1 guifg=#ff0000

" -----------------------------------------------------
" Categoria: Comentários (azul negrito)
" Comentários de linha #
syntax match JuniperComment "#.*" containedin=ALL
" Comentários de bloco /* ... */
syntax region JuniperComment start="/\*" end="\*/" contains=ALL
highlight JuniperComment ctermfg=33 cterm=bold guifg=#3399ff gui=bold

" -----------------------------------------------------
let b:current_syntax = "juniper"


" =====================================================
"   Mikrotik Syntax Highlight for Neovim
"   Gerado automaticamente a partir das categorias fornecidas
" =====================================================

if exists("b:current_syntax")
  finish
endif

" -----------------------------------------------------
" Categoria: Parametro (azul)

syntax match MikrotikMenu "\v^.*(\ze(add|set))"
syntax match MikrotikMenu "\v^\/[^=]+$"

highlight MikrotikMenu ctermfg=2 guifg=#3399ff

" -----------------------------------------------------
" Categoria: Erros (vermelho)
syntax keyword MikrotikError deny drop reject discard 
syntax match MikrotikError "="
highlight MikrotikError ctermfg=1 guifg=#ff0000

" -----------------------------------------------------
" Categoria: Ação (rosa)
syntax keyword MikrotikAction set add 
highlight MikrotikAction ctermfg=13 guifg=#ff66cc

" -----------------------------------------------------
" Categoria: Comentários (azul negrito)
" Match "#" como comentários
syntax match MikrotikComment "#.*" containedin=ALL
highlight MikrotikComment ctermfg=33 cterm=bold guifg=#87cefa gui=bold
" -----------------------------------------------------

" Categoria: Parametro (verde)
syntax match MikrotikParametro /\S\+\ze=/
highlight MikrotikParametro ctermfg=4 guifg=#348312

" -----------------------------------------------------

let b:current_syntax = "mikrotik"



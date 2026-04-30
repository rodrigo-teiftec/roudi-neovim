" =====================================================
"   Huawei VRP Syntax Highlight for Neovim
"   Gerado automaticamente a partir das categorias fornecidas
" =====================================================

if exists("b:current_syntax")
  finish
endif

" -----------------------------------------------------
" Categoria: verde
syntax keyword OHuaweiGreen enable add commit priority autosave write read allowed

syntax match OHuaweiGreen /\von$/
syntax match OHuaweiGreen /\vauto-backup/
highlight OHuaweiGreen ctermfg=2 guifg=#00ff00

" -----------------------------------------------------
" Categoria: vermelho
syntax keyword OHuaweiRed undo disable deny standby all password quit
highlight OHuaweiRed ctermfg=1 guifg=#ff0000

" -----------------------------------------------------
" Categoria: rosa
syntax keyword OHuaweiPink  gem tcont  omcc omci ssh
syntax match OHuaweiPink "\v( ont |snmp-agent|pbmp|veip|gpon(1/\d+)?)"
highlight OHuaweiPink ctermfg=13 guifg=#ff66cc

" -----------------------------------------------------
" Categoria: laranja
syntax match OHuaweiOrange "\v(Vlanif\d+|(10)?giga-ethernet0/\d+)"
syntax match OHuaweiOrange "\v\d\/\d\/\d{1,3}"
syntax match OHuaweiOrange "\v\d\/\d\ \d{1,3}"
syntax match OHuaweiOrange "\v(\d{1,3}\.){3}\d{1,3}"
syntax match OHuaweiOrange "\v(uplink-port)"
highlight OHuaweiOrange ctermfg=214 guifg=#FFA500

" -----------------------------------------------------
" Categoria: Cian
" Match "description" no inÃ­cio da linha
syntax match OHuaweiCyan "^description.*" containedin=ALL
syntax keyword OHuaweiCyan name desc
syntax match OHuaweiCyan "#.*" containedin=ALL
syntax match OHuaweiCyan "\[.*\]" containedin=ALL
syntax match OHuaweiCyan "<.*>" containedin=ALL
highlight OHuaweiCyan ctermfg=33 cterm=bold guifg=#87cefa gui=bold
" -----------------------------------------------------
" Categoria: Azul

syntax match OHuaweiBlue "\v(profile|flow(-type)?|service|encryption|database|isolated|switchport|trunk|uplink|vlan|interface)"
highlight OHuaweiBlue ctermfg=4 guifg=#3399ff

" -----------------------------------------------------

" Categoria: Amarelo
syntax match OHuaweiYellow "end-.*" containedin=ALL
syntax keyword OHuaweiYellow to smart

" Highlight azul negrito
highlight OHuaweiYellow ctermfg=33 guifg=#ffff00
let b:current_syntax = "parks"

" =====================================================
"   Huawei VRP Syntax Highlight for Neovim
"   Gerado automaticamente a partir das categorias fornecidas
" =====================================================

if exists("b:current_syntax")
  finish
endif

" -----------------------------------------------------
" Categoria: verde 
syntax keyword OHuaweiGreen enable add commit priority autosave write read

syntax match OHuaweiGreen /\von$/
syntax match OHuaweiGreen /\vauto-backup/
highlight OHuaweiGreen ctermfg=2 guifg=#00ff00

" -----------------------------------------------------
" Categoria: vermelho
syntax keyword OHuaweiRed undo disable deny standby all password
highlight OHuaweiRed ctermfg=1 guifg=#ff0000

" -----------------------------------------------------
" Categoria: rosa
syntax keyword OHuaweiPink gpon gem tcont  omcc omci ssh 
syntax match OHuaweiPink "\v( ont |snmp-agent)"
highlight OHuaweiPink ctermfg=13 guifg=#ff66cc

" -----------------------------------------------------
" Categoria: laranja
syntax keyword OHuaweiOrange Vlanif port eth pots board speed mpu emu fan MEth0 tunnel gre vxlan
syntax match OHuaweiOrange "\vVlanif\d{1,4}"
syntax match OHuaweiOrange "\v\d\/\d\/\d{1,3}"
syntax match OHuaweiOrange "\v\d\/\d\ \d{1,3}"
syntax match OHuaweiOrange "\v(\d{1,3}\.){3}\d{1,3}"
syntax match OHuaweiOrange "\v(uplink-port)"
highlight OHuaweiOrange ctermfg=214 guifg=#FFA500

" -----------------------------------------------------
" Categoria: Cian
" Match "description" no início da linha
syntax match OHuaweiCyan "^description.*" containedin=ALL
syntax keyword OHuaweiCyan name desc
syntax match OHuaweiCyan "#.*" containedin=ALL
syntax match OHuaweiCyan "\[.*\]" containedin=ALL
syntax match OHuaweiCyan "<.*>" containedin=ALL
highlight OHuaweiCyan ctermfg=33 cterm=bold guifg=#87cefa gui=bold
" -----------------------------------------------------
" Categoria: Azul
syntax keyword OHuaweiBlue sysname vlan gemport adaptive translation  mapping encrypt monitor traffic interface interval configuration type translate period ip address community cipher user 

syntax match OHuaweiBlue "\v(local-preference|route-destination|as-path|multi-service|service-port|tag-transform|ont-srvprofile|profile-id|profile-name|dba-profile-id|ont-lineprofile)"
syntax match OHuaweiBlue "\v(dba-profile|ont-port|user-vlan|auto-neg|ont-auto-find|sn-auth|native-vlan|ont-lineprofile-id|ont-srvprofile-id|authentication-type|ntp-service|priority-profile)"
highlight OHuaweiBlue ctermfg=4 guifg=#3399ff

" -----------------------------------------------------

" Categoria: Amarelo
syntax match OHuaweiYellow "end-.*" containedin=ALL
syntax keyword OHuaweiYellow to smart 

" Highlight azul negrito
highlight OHuaweiYellow ctermfg=33 guifg=#ffff00
let b:current_syntax = "ohuawei"



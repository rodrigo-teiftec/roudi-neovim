" =====================================================
"   Datacom DMOS Syntax Highlight for Neovim
" =====================================================

if exists("b:current_syntax")
  finish
endif

" -----------------------------------------------------
" Categoria: Contexto / Comandos de Topo (Rosa)
" Blocos principais que iniciam seções de configuração
syntax keyword DatacomContext mpls ospf router aaa rsvp snmp vlan ipv4 ipv6 sntp vrf l3 cpu arp icmp ssh ipv6-icmp vlan-id mpls-te ospfv3 gpon dhcp igmp-snooping dhcp-server ip
highlight DatacomContext ctermfg=5 guifg=#FF00FF

" -----------------------------------------------------
" Categoria: Comandos e Sub-blocos (Azul)
" Comandos internos e estruturas de protocolo
syntax keyword DatacomCommand interface user group authentication-order ldp l2vpn vpls-group vpn vfi neighbor bridge-domain community clock timezone hostname telnet-server oam
syntax keyword DatacomCommand loopback-detection mac-address-table layer2-control-protocol source client server global  link-aggregation license remote-devices tunnel-interface
syntax keyword DatacomCommand traffic-eng  attribute-set path-option explicit-path destination vacm access-list access-list-entry switchport counters onu ports
syntax keyword DatacomCommand l2-relay circuit-id format log syslog service-port traps access
syntax match DatacomCommand "\v(^profile)"
highlight DatacomCommand ctermfg=4 guifg=#3399ff

" -----------------------------------------------------
" Categoria: Propriedades e Opções (Ciano / Azul Claro)
" Parâmetros específicos de configuração interna
syntax keyword DatacomProperty password lsr-id targeted pw-type pw-id pw-load-balance flow-label dot1q bridge-mtu access-interface qinq encapsulation agent sec-name tag 
syntax keyword DatacomProperty type member negotiation duplex speed mtu mdix advertising-abilities lower-layer-if address efm mode destination-address aging-time tunnel-mac 
syntax keyword DatacomProperty tunnel-priority router-id redistribute area authentication authentication-key cost network-type authentication-key-id name sec-model subtree
syntax keyword DatacomProperty load-balance logging vpws-group affinity-flags hop next-address acl-profile action  match ip-protocol source-ipv4-address destination-port
syntax keyword DatacomProperty source-port ethertype native-vlan ingress egress serial-number line-profile native rg-profile veip profile rg-profile-override-settings
syntax keyword DatacomProperty wan-pppoe-connection upstream-fec tcont any cos bandwidth-profile assured-bw max-bw iphost vlan-mux nat service auth-type itf-grouping port
syntax keyword DatacomProperty onu-auth-method aes-key-exchange rg-one-shot-prov  replace address-family next-hop config-commit cpu-core cpu-load link-status login-success version
syntax match DatacomProperty "\v((read|write|notify)-view|type-\d{1})" 
highlight DatacomProperty ctermfg=6 guifg=#00ced1

" -----------------------------------------------------
" Categoria: Interfaces e Endereços (Laranja)
" Interfaces físicas, lógicas e endereçamento IP
syntax match DatacomInterface "\v(((ten|hundred)-)?gigabit-ethernet|mgmt|loopback|(lag(-\d{1,2})?)|tunnel-te(-\d{1,2})?|ethernet)"
syntax match DatacomInterface "\v(1/1/\d{1,3})"
" IPv4
syntax match DatacomInterface "\v(\d{1,3}\.){3}\d{1,3}|( PPPoE-INTERFACE)|eth1"
" IPv6
syntax match DatacomInterface "\v((([0-9a-fA-F]{1,4}:){7}[0-9a-fA-F]{1,4})|(([0-9a-fA-F]{1,4}:){1,7}:)|(::([0-9a-fA-F]{1,4}:){0,6}[0-9a-fA-F]{1,4}))"
highlight DatacomInterface ctermfg=214 guifg=#FFA500

" -----------------------------------------------------
" Categoria: Valores Literais e Hashes (Roxo / Violeta)
" Valores fixos do sistema e hashes de senha do DMOS
syntax keyword DatacomValue local both md5 dynamic static point-to-point pw-status tagged untagged password username gem map priority
syntax match DatacomHash "\v\$1\$[A-Za-z0-9./]+\$"
highlight DatacomValue ctermfg=13 guifg=#ba55d3
highlight DatacomHash ctermfg=13 guifg=#ba55d3

" -----------------------------------------------------
" Categoria: Status (Verde)
syntax keyword DatacomStatus up enabled active passive connected permit
highlight DatacomStatus ctermfg=2 guifg=#00ff00 

" -----------------------------------------------------
" Categoria: Erros / Atenção (Vermelho)
syntax keyword DatacomError fail reject error deny shutdown no disabled down inactive notify strict loose
highlight DatacomError ctermfg=1 guifg=#ff0000

" -----------------------------------------------------
" Categoria: Comentários e Separadores (Azul Negrito)
" Linhas de comentário (#) e o caractere de fechamento de bloco (!) do DMOS
syntax match DatacomComment " name .*" containedin=ALL
syntax match DatacomComment "description.*" containedin=ALL
syntax match DatacomComment "^!\s*$" containedin=ALL
" Comentários de bloco /* ... */
syntax region DatacomComment start="/\*" end="\*/" contains=ALL
highlight DatacomComment ctermfg=33 cterm=bold guifg=#3399ff gui=bold

let b:current_syntax = "datacom"


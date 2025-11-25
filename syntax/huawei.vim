" =====================================================
"   Huawei VRP Syntax Highlight for Neovim
"   Gerado automaticamente a partir das categorias fornecidas
" =====================================================

if exists("b:current_syntax")
  finish
endif

" -----------------------------------------------------
" Categoria: Status (verde)
syntax keyword HuaweiStatus enable reauthorize eq range gt permit if-match redirect precedence level state online direct static lacp-static auto p2p ldp-sync check v2c v3 all inbound activate set send pass outbound weight sequence active always allow-pass synchronization import export greater-equal less-equal apply commit ge le additive approve save

syntax match HuaweiStatus /\v^y$/
highlight HuaweiStatus ctermfg=2 guifg=#00ff00

" -----------------------------------------------------
" Categoria: Erros (vermelho)
syntax keyword HuaweiError undo disable deny forbidden block fail-times start-fail unr force strict shutdown NULL0 idle-timeout return discard security quit refuse delete
highlight HuaweiError ctermfg=1 guifg=#ff0000

" -----------------------------------------------------
" Categoria: Serviços (rosa)
syntax keyword HuaweiService tcp udp or terminal ssh snetconf stelnet netconf FTP icmp telnet any snmp arp ftp md5 ipv6 ip ospfv3 ospf ppp snmp-agent radius lldp radius-server ldp
highlight HuaweiService ctermfg=13 guifg=#ff66cc

" -----------------------------------------------------
" Categoria: Interfaces (laranja)
syntax keyword HuaweiInterface Vlanif Eth-Trunk Ethernet GigabitEthernet0 Virtual-Template 100GE0 LoopBack con vty tunnel eth-trunk slot all-interface vpn-instance XGigabitEthernet

" IPv4
syntax match HuaweiInterface "\v(\d{1,3}\.){3}\d{1,3}"

" IPv6
syntax match HuaweiInterface "\v([0-9a-fA-F]{0,4}:){1,7}[0-9a-fA-F]{0,4}"

highlight HuaweiInterface ctermfg=214 guifg=#FFA500

" -----------------------------------------------------
" Categoria: Comentários (azul negrito)
" Match "description" no início da linha
syntax match HuaweiComment "^description.*" containedin=ALL

" Match "#" e "!" como comentários
syntax match HuaweiComment "#.*" containedin=ALL
syntax match HuaweiComment "!.*" containedin=ALL

" Highlight azul negrito
highlight HuaweiComment ctermfg=33 cterm=bold guifg=#87cefa gui=bold
" -----------------------------------------------------
" Categoria: Comandos (azul)
syntax keyword HuaweiCommand sysname vlan service-template ntp-service radius-attribute service-type support-type qos-profile prefix prefix-pd connection chasten dot1x-template user-group pool gateway section pool-group bas ip-pool acl port-pool rule source number destination advance destination-port-pool destination-port dhcpv6 duid traffic classifier operator behavior ip-nexthop share-mode policy statistics aaa local-user password irreversible-cipher interval authentication-scheme authentication-mode authorization-scheme accounting-scheme accounting interim domain prefix-assign-mode group ip-pool-group dns primary-ip second-ip primary-ipv6 second-ipv6 router-id import-route preference area interface portswitch mode address statistic network-type cost vlan-type dot1q 8021p user-vlan pppoe-server bind access-type layer2-subscriber default-domain authentication nd autoconfig managed-address-flag speed duplex keepalive djust-mss urpf subnet dcn local-engineid community read cipher sys-info version protocol source-status proxy web-auth-server source-ip source-ipv6 server authentication-type user server-source authorization-type client traffic-policy user-interface maximum-vty local-aaa-server l2tp-group default-lac default-lns batch to timestamp-reply router id diffserv car cir cbs unicast-peer source-interface green soc red delegation ra unicast ipv6-pool name shared-key-cipher user-name original algorithm master-backup case-sensitive qos-profile-name neid clock timezone minus unicast-server cpu-defend-policy local-ip dhcp request-packet license default-route-advertise type port link-type trunk bgp check-first-as peer as-number description connect-interface advertise-community ipv4-family network route-policy next-hop-local advertise-ext-community ip-prefix index internet route-static as-path-filter community-filter ipv6-prefix module ftp-directory link-local node cpu-defend ipv6-family accounting-start-packet accounting-stop-packet accounting-interim-packet ip-prefix-list end-list route-filter route-destination community-list end-filter as-path ebgp-max-hop ipv6-prefix-list vsi pwsignal vsi-id encapsulation ethernet l2 binding mpls remote-peer remote-ip mtu med set

syntax match HuaweiCommand "\v(local-preference|route-destination|as-path)"
highlight HuaweiCommand ctermfg=4 guifg=#3399ff

" -----------------------------------------------------

" Categoria xpl
syntax match HuaweiXpl "end-.*" containedin=ALL
syntax keyword HuaweiXpl if elseif endif then in matches-any matches-all xpl

" Highlight azul negrito
highlight HuaweiXpl ctermfg=33 guifg=#ffff00


let b:current_syntax = "huawei"



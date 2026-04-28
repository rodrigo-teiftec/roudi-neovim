" =====================================================
" Huawei VRP Syntax Highlight for Neovim
" =====================================================

if exists("b:current_syntax")
  finish
endif
" -----------------------------------------------------
" Região pai (CLI)
syntax region HuaweiCLI start=/^/ end=/$/ contains=ALL
" -----------------------------------------------------
" -----------------------------------------------------
" Comentários (isolados, não competem)
syntax region HuaweiComment start=/^\s*!/ end=/$/ contains=NONE
syntax region HuaweiComment start=/^\s*#/ end=/$/ contains=NONE
syntax region HuaweiComment start=/description/ end=/$/ contains=NONE

highlight HuaweiComment ctermfg=33 cterm=bold guifg=#87cefa gui=bold

" -----------------------------------------------------

" Group: Green
  syntax keyword HuaweiGreen enable active reauthorize green pass permit any online additive approve include contained
highlight HuaweiGreen ctermfg=2 guifg=#00ff00

" -----------------------------------------------------
" Group: Red (Attention)
syntax keyword HuaweiRed undo disable deny forbidden block unr force strict shutdown return discard security quit refuse delete inactive red blackhole  contained
syntax match   HuaweiRed "\v(fail-times|start-fail|idle-timeout|NULL0|expire(-time)?)" contained
highlight HuaweiRed ctermfg=1 guifg=#ff0000

" -----------------------------------------------------

" Group: Yellow (Action)
syntax match HuaweiYellow "\v(all|send|plain|(in|out)bound|delay|gt|le|ge|eq|and|or|then|in|auto|to|match)($|\s)" contained
syntax match HuaweiYellow "\v(delegation|if-match|always|static|direct|delimiter|extend|none|check|retransmit|tracking|apply|rt|(end|else)?if)($|\s)" contained
highlight HuaweiYellow ctermfg=3 guifg=#FFFF00

" -----------------------------------------------------
" Group: Blue (Command / Parameters)
syntax match HuaweiBlue "\v\s\w+-\w+\s" contained
syntax match HuaweiBlue "\v(number|prefix|authorization|connection|chasten|cipher|cost|med|hop-limit-exceeded|link-type|adjust-mss|address|expire-time|preference|area|interface|default-route-advertise|port-core-aggregation|accounting|authentication-mode|user-security-policy|(server|client)(-source)?|cpu-defend-policy|timeout|tcp-flag|source|option|name|destination(-port)?(-pool)?)\s" contained
syntax match HuaweiBlue "\v(pool|bas|qos(-profile)?|source-interface|all-interface|as-path-list|web-auth-server|sys-info|source-ip|(local-)?user|route-policy|(ext)?community|next-hop(-local)?|link-local)" contained
syntax match HuaweiBlue "\v(speed(-limit)?|duplex|learning|operator|traffic|classifier|license|sysname|timezone|minus|acl|export|channel|(log)?host|sampler|vlan|batch|router|id|version|template|car|cir|cbs|statistic|range|rule|advance)" contained
syntax match HuaweiBlue "\v(attribute|translate|regular|weight|behavior|policy|precedence|statistics|level|state|interval|password|interim|mode|\strunk|portswitch|dot1q|identifier|sub(net)?|mtu|mru|keepalive|urpf|peer|group)" contained
syntax match HuaweiBlue "\v(gateway|section|lease|network|import(-route)?|synchronization|unicast|timestamp(-reply)?|type|node|pwsignal|qinq|stacking|(pe-)?vid|l2|binding|vsi|community-(filter|list))" contained
highlight HuaweiBlue ctermfg=4 guifg=#3399ff

" -----------------------------------------------------
" Group: Orange (Interfaces / IPs)
syntax keyword HuaweiOrange con vty tunnel slot card contained
syntax match HuaweiOrange "\v((1|4)00GE0/\d+/\d+\ze$|Eth-Trunk\d+|Virtual-Template\d+|LoopBack\d+|vpn-instance|port\s|Vlanif\d+|(Gigabit)?Ethernet)(\d+/\d+/\d+)?" contained 
syntax match HuaweiOrange "\v(\d{1,3}\.){3}\d{1,3}" contained
syntax match HuaweiOrange "\v([0-9a-fA-F]{0,4}:){1,7}[0-9a-fA-F]{0,4}" contained
highlight HuaweiOrange ctermfg=4 guifg=#FFA500

" -----------------------------------------------------
" Group: Pink (Services)
syntax match HuaweiPink "\v(xpl|end-\w+|FTP|tcp|udp|terminal|ssh|snetconf|stelnet|netconf|icmp|telnet|any|snmp|arp|(t?ftp(-data)?)|md5|ipv6|ip|ospfv3|ospf|ppp|radius|lldp|ldp|clock|dhcp)($|\s)" contained
syntax match HuaweiPink "\v(snmp-agent|radius-server|bgp|dns|domain|ntp|dhcpv6|ipoe|pppoe|sunrpc|smtp|chargen|www|netbios-(ns|ssn))$?\s?" contained
syntax match HuaweiPink "netstream" contained
highlight HuaweiPink ctermfg=13 guifg=#ff66cc

" Group: Orange Weak (General – baixa prioridade)
syntax match HuaweiOrangeWeak "\v\w+-\w+-\w+(-\w+)?(-\w+)?" contained 
syntax match HuaweiOrangeWeak "\v\w+_\w+" contained 
highlight HuaweiOrangeWeak ctermfg=4 guifg=#f2cdb3

" Group: Blue Conflict Syntax (Command / Parameters)
syntax match HuaweiBlue2 "\v(layer2-subscriber|delegating-prefix-length|slaac-unshare-only|destination-port-pool|advertise-ext-community|port-core-aggregation|port-core-aggregation|default-route-advertise|shared-key-cipher)" contained
highlight HuaweiBlue2 ctermfg=4 guifg=#3399ff

let b:current_syntax = "huawei"

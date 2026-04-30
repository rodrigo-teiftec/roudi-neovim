" Palavras de status
syntax keyword CiscoCommand enable reauthorize eq range gt permit if-match redirect precedence level state online direct static lacp-static auto p2p ldp-sync check v2c v3 all inbound activate set send pass outbound weight sequence active always allow-pass synchronization import export greater-equal less-equal local apply commit ge le additive approve
highlight link CiscoCommand Constant

syntax match CiscoUp "\<up\>" containedin=ALL
syntax match CiscoDown "\<down\>" containedin=ALL
syntax match CiscoShutdown "\<shutdown\>" containedin=ALL
syntax match CiscoError "\<err\|error\|fail\|CRC\>" containedin=ALL

" Palavras de metadados
syntax match CiscoInterface "\<Gi\|Xe\|Fa\>" containedin=ALL
syntax match CiscoDesc "\<description\|hostname\|version\>" containedin=ALL

" Cores
highlight link CiscoUp           Constant
highlight link CiscoDown         Error
highlight link CiscoShutdown     WarningMsg
highlight link CiscoError        Error
highlight link CiscoInterface    Identifier
highlight link CiscoDesc         Statement


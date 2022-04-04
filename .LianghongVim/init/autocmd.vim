:autocmd InsertEnter * set timeoutlen=200
:autocmd InsertLeave * set timeoutlen=1000
"  autocmd! User vim-which-key call which_key#register('<Space>', 'g:which_key_map')
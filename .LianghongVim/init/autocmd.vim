"  唯一不爽的是，每次按 j 的时候，vim 都会等待最多 timeoutlen 毫秒（默认是 1000 ms ），来判断用户是想输入 j 还是想输入 jk 跳出 insert 模式，所以输入 j 的时候，会有延迟感，有点讨厌。当然可以通过降低 timeoutlen 的值来减少这种延迟，但是 timeoutlen 是一个全局选项，如果减少 timeoutlen 会导致有的组合键来不及按下。
"  autocmd InsertEnter * set timeoutlen=200 " 专门针对跳出 insert mode 这种场景
"  autocmd InsertLeave * set timeoutlen=1000
"  vim按键映射使用了<ESC>组合按键，按下<ESC>后，vim在等待后续按键按下。一般情况下我们没有必要映射<ESC>组合按键，如果确实需要，可以设置timeoutlen参数调整时长，默认是1000，即1s。
"  终端控制序列的延迟。终端控制序列会使用到<ECS>，vim为了确保按下的是真正的<ESC>，后面没有其他字符，会等待一定时间，该时间由ttimeoutlen参数控制，默认是-1，表示与timeoutlen参数一致，即默认的1s。根据需要可以调整该值，我设置为5。
"  如果使用tmux，tmux也存在Escape序列的延迟。可以通过set -sg escape-time 50调整延迟时间。
"  autocmd! User vim-which-key call which_key#register('<Space>', 'g:which_key_map')

" autoVimLeave has Problem and broken code heightLight
"  autocmd VimLeave * call SaveSess()
"  autocmd VimEnter * call RestoreSess()

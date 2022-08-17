
" remove tailing whitespace
augroup vimrc
  autocmd!
  autocmd BufWritePre * :%s/\s\+$//e
augroup END

" move lines up and down using ctrl+[jk]
nmap <C-J> mz:m+<CR>`z
nmap <C-K> mz:m-2<CR>`z
vmap <C-J> :m'>+<CR>`<my`>mzgv`yo`z
vmap <C-K> :m'<-2<CR>`>my`<mzgv`yo`z

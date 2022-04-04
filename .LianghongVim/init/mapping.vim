" Notice: <Esc> "Ctrl + c 或者 Ctrl + [
" Notice: cnoremap: w!! 获取特权保存
" Notice: inoremap 必须 set nocompatible " 关闭兼容模式
let g:mapleader = "\<Space>"
let g:maplocalleader = ','
nnoremap <silent> <leader>      :<c-u>WhichKey '<Space>'<CR>
nnoremap <silent> <localleader> :<c-u>WhichKey  ','<CR>
cnoremap w!! w !sudo tee % >/dev/null
"  inoremap <nowait> jj <Esc>
inoremap jj <Esc>
nmap <leader>w :w!<cr> "快速保存
noremap <leader>q :qa<cr> "退出所有
nnoremap # #zzzv
nnoremap * *zzzv
nnoremap N Nzzzv
nnoremap g, g,zz
nnoremap g; g;zz
nnoremap n nzzzv
vnoremap <nowait> jj <Esc>

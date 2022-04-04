" Notice: <Esc> "Ctrl + c 或者 Ctrl + [
" Notice: cnoremap: w!! 获取特权保存
" Notice: inoremap 必须 set nocompatible " 关闭兼容模式

cnoremap w!! w !sudo tee % >/dev/null
inoremap ,. <Esc>
nmap <leader>w :w!<cr> "快速保存
nnoremap # #zzzv
nnoremap * *zzzv
nnoremap N Nzzzv
nnoremap g, g,zz
nnoremap g; g;zz
nnoremap n nzzzv
noremap <leader>q :qa<cr> "退出所有
vnoremap ,. <Esc>

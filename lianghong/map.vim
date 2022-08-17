" =================
"  key remap
" =================

" leader key
let mapleader = ','
let g:mapleader = ','

" command mode
cnoremap <C-A> <HOME>
cnoremap <C-E> <END>
cnoremap <C-B> <LEFT>
cnoremap <C-D> <DEL>
cnoremap <C-F> <RIGHT>
cnoremap <C-H> <BS>
cnoremap <C-N> <DOWN>
cnoremap <C-P> <UP>
cnoremap <ESC><C-B> <S-LEFT>
cnoremap <ESC><C-F> <S-RIGHT>


" tig工具
nmap <Leader>B :exec '!tig blame % +'.line('.')<CR>

" close buffer
nmap <Leader>w :bd<CR>


" 代码折叠
nmap <Leader>k1 :set foldlevel=0<CR>
nmap <Leader>k2 :set foldlevel=1<CR>
nmap <Leader>k3 :set foldlevel=2<CR>
nmap <Leader>k4 :set foldlevel=3<CR>
nmap <Leader>k5 :set foldlevel=4<CR>
nmap <Leader>k6 :set foldlevel=5<CR>
nmap <Leader>k7 :set foldlevel=6<CR>
nmap <Leader>k8 :set foldlevel=7<CR>
nmap <Leader>k9 :set foldlevel=8<CR>
nmap <Leader>k0 :set foldlevel=100<CR>


" 跳转到定义
" nmap g] g<C-]>
nmap g] <C-]>
nmap g[ <C-O>

" 缩进
nmap g. v>
nmap g, v<
vmap g. >gv
vmap g, <gv

" tab 标签切换 using ctrl+[hl]
nmap <C-H> gT<CR>
nmap <C-L> gt<CR>
nmap <Leader>1 1gt
nmap <Leader>2 2gt
nmap <Leader>3 3gt
nmap <Leader>4 4gt
nmap <Leader>5 5gt
nmap <Leader>6 6gt
nmap <Leader>7 7gt
nmap <Leader>8 8gt
nmap <Leader>9 9gt
nmap <Leader>0 :tablast<CR>


" 分割窗口快速改大小
nmap <C-W>+ :resize +10<CR>
nmap <C-W>- :resize -10<CR>
nmap <C-W>> :vertical resize +10<CR>
nmap <C-W>< :vertical resize -10<CR>

" 关闭搜索高亮
nmap <Leader><Space> :nohlsearch<CR>

" 视图模式快速复制粘贴
vmap <C-Y> "zy
vmap <C-P> "zp

inoremap jk <Esc>
nmap <leader>w :w!<cr> " 快速保存
noremap <leader>q :qa<cr> " 退出所有
nnoremap # #zzzv
nnoremap * *zzzv
nnoremap N Nzzzv
nnoremap g, g,zz
nnoremap g; g;zz
nnoremap n nzzzv
nnoremap ; :
vnoremap ; :

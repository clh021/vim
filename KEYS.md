# 此处记录所有自己会用到的快捷键以及想要用到的功能

```
n ,kb  目录树显示切换
n ,b   buffer列表,可快速切换打开的文件
n ,/   注释行
n ,k9  可快速折叠对应层级(9)的代码
n ,w   快速保存
n Ctrl+w j/k/l/i 聚焦不同窗口

n <C-J> 当前行下移
n <C-K> 当前行上移

:vsp  水平分割爽口
:Ag   搜索代码内容
n <C+p> 搜索当前目录下的文件

i  ,<Tab> 打开补全列表,Ctrl+p选中会自动写入(也可以Ctrl+y写入),继续输入其它内容即可
n  g]     查看函数定义
n  g[     返回函数使用
n  ,mo    auto import
   ,m=    auto format

imap <C-X><C-K> <Plug>(fzf-complete-word)
imap <C-X><C-F> <Plug>(fzf-complete-path)
imap <C-X><C-J> <Plug>(fzf-complete-file-ag)
imap <C-X><C-L> <Plug>(fzf-complete-line)







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

" fast save
nmap <Leader>s :w<CR>

" tig
nmap <Leader>B :exec '!tig blame % +'.line('.')<CR>

" close buffer
nmap <Leader>w :bd<CR>

" fold
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

" omni complete
" imap <Leader><TAB> <C-X><C-O>

" go to definition
" nmap g] g<C-]>
nmap g] <C-]>
nmap g[ <C-O>

" identation
nmap g. v>
nmap g, v<
vmap g. >gv
vmap g, <gv

" move lines up and down using ctrl+[jk]
nmap <C-J> mz:m+<CR>`z
nmap <C-K> mz:m-2<CR>`z
vmap <C-J> :m'>+<CR>`<my`>mzgv`yo`z
vmap <C-K> :m'<-2<CR>`>my`<mzgv`yo`z

" move to the prev or next buffer using ctrl+[hl]
nmap <C-H> :bprevious<CR>
nmap <C-L> :bnext<CR>

" resize split window faster
nmap <C-W>+ :resize +10<CR>
nmap <C-W>- :resize -10<CR>
nmap <C-W>> :vertical resize +10<CR>
nmap <C-W>< :vertical resize -10<CR>

" cancel searched highlight
nmap <Leader><Space> :nohlsearch<CR>

" fast copy & paste
nmap <C-Y> "zY
vmap <C-Y> "zy
vmap <C-P> "zp


" 首先，我们有两个通用的映射命令：
"
" map-在normal、visual、select和operator pending模式下递归工作。
" map!-在插入和命令行模式下递归工作。
" 这些命令的非递归变体是：
"
" noremap-在normal、visual、select和operator pending模式下递归工作。
" noremap!-在插入和命令行模式下以非递归方式工作。
" 然后，我们有特定于模式的命令：
"
" nmap-在正常模式下递归工作。
" imap-在插入模式下递归工作。
" vmap-在视觉和选择模式下递归工作。
" xmap-在视觉模式下递归工作。
" smap-在选择模式下递归工作。
" cmap-在命令行模式下递归工作。
" omap-在操作员挂起模式下递归工作。
" 以及它们的非递归变体：
"
" nnoremap-在正常模式下以非递归方式工作。
" inoremap-在插入模式下以非递归方式工作。
" vnoremap-在视觉和选择模式下非递归工作。
" xnoremap-在可视模式下以非递归方式工作。
" snoremap-在选择模式下以非递归方式工作。
" cnoremap-在命令行模式下以非递归方式工作。
" onoremap-在操作员挂起模式下以非递归方式工作。
" 最后，remap是一个布尔选项，允许映射以递归方式工作。值得一提的是，您应该始终将此选项保留为默认值on

" Notice: <Esc> "Ctrl + c 或者 Ctrl + [
" Notice: cnoremap: w!! 获取特权保存
" Notice: inoremap 必须 set nocompatible " 关闭兼容模式
"let g:mapleader = "\<Space>"
"let g:maplocalleader = ','
nnoremap <silent> <leader>      :<c-u>WhichKey '<Space>'<CR>
nnoremap <silent> <localleader> :<c-u>WhichKey  ','<CR>
cnoremap w!! w !sudo tee % >/dev/null
inoremap jk <Esc>
"vnoremap <nowait> ff <Esc>
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






2022年 08月 17日 星期三 08:10:16 CST


```

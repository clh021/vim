" =================
"  vim-plug
" =================

call plug#begin('~/.vim/plugged')

" Plugins
Plug 'chriskempson/base16-vim'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

Plug 'ryanoasis/vim-devicons'
Plug 'scrooloose/nerdtree'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-commentary'
Plug 'storyn26383/vim-autoclose'
Plug 'easymotion/vim-easymotion'
Plug 'haya14busa/incsearch.vim'
Plug 'haya14busa/incsearch-easymotion.vim'
Plug 'junegunn/vim-easy-align'
Plug 'ervandew/supertab'
Plug 'tpope/vim-repeat'
Plug 'SirVer/ultisnips'
Plug 'mattn/emmet-vim'
Plug 'editorconfig/editorconfig-vim'
Plug 'tpope/vim-fugitive'
" Plug 'airblade/vim-gitgutter'
Plug 'lilydjwg/colorizer'
Plug 'vim-test/vim-test'

Plug 'neoclide/coc.nvim', { 'branch': 'release' }

"Plug 'phpactor/phpactor', { 'for': 'php', 'do': 'composer install' }
"Plug 'storyn26383/php.vim'
Plug 'pangloss/vim-javascript'
Plug 'leafgarland/typescript-vim'
Plug 'chr4/nginx.vim'
Plug 'storyn26383/vim-vue'
Plug 'jparise/vim-graphql'

call plug#end()

" =================
"  settings
" =================

set ai                                " 自动缩进
set autochdir                         " 自动切换工作目录
set autoindent                        " 打开自动缩进
set autoread                          " 自动重载文件更新
set nocompatible                      " not compatible with the old-fashion vi mode
set backspace=2                       " allow backspacing over everything in insert nc >kkmode
set history=1000                      " keep 1000 lines of command line history
set undolevels=100
set hidden                            " switch buffers without saving
set splitright                        " always open vertical split window in the right side
set splitbelow                        " always open horizontal split window below
set nostartofline
set switchbuf=useopen
set scrolloff=4                       " start scrolling when n lines away from margins
set tags=tags,tags.vendor
set exrc                              " allows for per-project configuration files
" set clipboard+=unnamed

set ttyfast                           " send more chars while redrawing
set lazyredraw                        " speedup vim
set timeoutlen=1000
set ttimeoutlen=0

set nobomb                            " no BOM (Byte Order Mark)
set viminfo=                          " disable .viminfo file
"set nobackup                          " no *~ backup files
"set noswapfile
"set nowritebackup
set directory=~/.cache/.vim.swp//
set backupdir=~/.cache/.vim.backup//
set undodir=~/.cache/.vim.undo//

"---------- set encoding ----------------------------------------
set fileencodings=utf-8,ucs-bom,gb18030,gbk,gb2312,cp936
set termencoding=utf-8
set encoding=utf-8
"scriptencoding utf-8
"---------- set encoding ----------------------------------------
"set list  " 把制表符显示为^I ,用$标示行尾（使用list分辨尾部的字符是tab还是>空格）
"set listchars=eol:¬,tab:⍿»,trail:~,extends:>,precedes:<,space:·
" Vim编辑器中默认不显示文件中的tab和空格符，通过上面的配置可以获得以下的显示效果，方便定位输入错误。

" visual
set shortmess=Ia                      " remove splash wording
set ruler                             " show the cursor position all the time
set wrap
set linebreak
set nolist
set nocursorline
set nocursorcolumn
set showmatch
set number
set numberwidth=4
set relativenumber
set title
set showcmd
set noshowmode
set showtabline=2                     " always show tab line (the very top line)
set laststatus=2                      " always show status line (the very bottom line)
set synmaxcol=512
set diffopt+=vertical

" auto completion
set wildmode=list:full                " make tab completion for files/buffers act like bash
set completeopt=menuone

" folding
" 基于语法折叠代码
set foldenable
set foldmethod=indent
set foldlevel=100

" search
set hlsearch                          " search highlighting
set incsearch                         " incremental search
set ignorecase                        " ignore case when searching
set smartcase

" indent
set autoindent
set copyindent                        " copy the previous indentation on autoindenting
set smarttab                          " insert tabs on the start of a line according to
set expandtab                         " replace <TAB> with spaces 用空格缩进
"set noexpandtab                      " 用制表符缩进
set hid                               " 可以在没有保存得情况下切换buffer
set softtabstop=2                     " tab indent size
set shiftwidth=2                      " auto indent size
set tabstop=2                         " tab character size

" disable sound on errors
set visualbell
set noerrorbells
set t_vb=
set tm=500

" gui
set t_Co=256
set termguicolors                     " enable 24bit Color beautiful
set guifont=Source\ Code\ Pro:h15     " only available for the GUI version
set linespace=3                       " only available for the GUI version
set guioptions-=l                     " remove gui scrollbar
set guioptions-=L
set guioptions-=r
set guioptions-=R

" file encoding
set encoding=utf-8
set fileencodings=ucs-bom,utf-8,big5,euc-jp,gbk,euc-kr,utf-bom,iso8859-1,euc-jp,utf-16le,latin1
set fenc=utf-8 enc=utf-8 tenc=utf-8
scriptencoding utf-8

" ignores
set wildignore+=*.o,*.obj,*.pyc                " output objects
set wildignore+=*.png,*.jpg,*.gif,*.ico        " image format
set wildignore+=*.swf,*.fla                    " image format
set wildignore+=*.mp3,*.mp4,*.avi,*.mkv        " media format
set wildignore+=*.git*,*.hg*,*.svn*            " version control system
set wildignore+=*sass-cache*
set wildignore+=*.DS_Store
set wildignore+=log/**
set wildignore+=tmp/**

" theme
filetype plugin indent on
syntax on
colorscheme tomorrow-night

au InsertLeave *.sh,*.php write " 退出插入模式指定类型的文件自动保存

" cursorline switched while focus is switched to another split window
" autocmd WinEnter * setlocal cursorline
" autocmd WinLeave * setlocal nocursorline

" remove tailing whitespace
augroup vimrc
  autocmd!
  autocmd BufWritePre * :%s/\s\+$//e
augroup END

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
let g:mapleader = "\<Space>"
let g:maplocalleader = ','
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


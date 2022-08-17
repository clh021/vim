
" =================
"  vim-plug
" =================

call plug#begin('~/.vim/plugged')

" Plug 'vim-airline/vim-airline'
" Plug 'vim-airline/vim-airline-themes'

Plug 'scrooloose/nerdtree'
Plug 'mhinz/vim-startify'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-commentary'
" Plug 'storyn26383/vim-autoclose'
" Plug 'easymotion/vim-easymotion'
" Plug 'haya14busa/incsearch.vim'
" Plug 'haya14busa/incsearch-easymotion.vim'
" Plug 'junegunn/vim-easy-align'
" Plug 'tpope/vim-repeat'
" Plug 'SirVer/ultisnips'
" Plug 'mattn/emmet-vim'
" Plug 'editorconfig/editorconfig-vim'
" Plug 'lilydjwg/colorizer'

Plug 'neoclide/coc.nvim', { 'branch': 'release' }

" Plug 'pangloss/vim-javascript'
" Plug 'leafgarland/typescript-vim'
" Plug 'storyn26383/vim-vue'

call plug#end()
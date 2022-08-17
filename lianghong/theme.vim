set t_Co=256
set termguicolors                     " enable 24bit Color beautiful

set nocompatible

set ai                                " 自动缩进
set autochdir                         " 自动切换工作目录
set autoindent                        " 打开自动缩进
set autoread                          " 自动重载文件更新
set number                            " 显示行号
set numberwidth=4                     " 行号宽度
set relativenumber                    " 显示相对行号
set ruler                             " 状态栏显示光标位置
set title
set showcmd
set showmode
set showtabline=2                     " always show tab line (the very top line)
set laststatus=2                      " always show status line (the very bottom line)
set splitright                        " always open vertical split window in the right side
set splitbelow                        " always open horizontal split window below

filetype plugin indent on
syntax on
colorscheme tomorrow-night

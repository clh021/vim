"set cc=81 " 781列处高亮
"set foldmethod=syntax " 基于语法折叠代码
"set gfn=Monospace\ 9 " 字体设置
"set ignorecase " 搜索时忽略大小写
"set lz " 当运行宏时，命令未执行完之前，不要重绘屏幕
"set spell spelllang=en_us " 打开英文拼写检查
"set statusline=%1*%-52F\ %2*\ %{&ff=='unix'?'\\n':(&ff=='mac'?'\\r':'\\r\\n')}\ %3*\ %{&fenc!=''?&fenc:&enc}\ %1*\ %Y\ %4*\ %04l/%03c\ %2*\ 0x%04.4B\ %1*\ %-16{strftime(\"%Y-%m-%d\ %H:%M\")}\ %5*\ %-3m\
"set t_AB=^[[48;5;%dm
"set t_AF=^[[38;5;%dm
"    s  i   i   d    .   ..
let g:mysystem = "unix"
let g:signature = "Chenlianghong <clh021@gmail.com>"
"  let g:session_autoload        = 'no'
"  let g:session_autosave        = 'yes'
"  let g:session_default_to_last = 'yes'
"  let g:session_directory       = '~/tmp/vim/sessions'
"  let g:EasyMotion_leader_key = '<leader>e'

set nocompatible " 关闭兼容模式
set ai " 自动缩进
set autochdir " 自动切换工作目录
set autoindent " 打开自动缩进
set autoread " 自动重载文件更新
set backspace=indent,eol,start   " 设置backspace删除
set clipboard=unnamedplus
set expandtab " noexpandtab 用制表符缩进 / expandtab 用空格缩进
set hid " 可以在没有保存得情况下切换buffer
set history=1000 " Vim 需要记住多少次历史操作
set hlsearch " 高亮搜索
set incsearch " 增量式搜索，边输入边搜索
set laststatus=1 " 状态栏 0不显示 1多窗口时显示 2总是显示
set linebreak " 不会在单词内部折行
set nobackup " 关闭备份
set noerrorbells " 出错时，不要发出响声
"  set foldmethod=indent " 基于缩进折叠代码
"  set nofoldenable " 启动 vim 时关闭折叠代码
set nu " 显示行号
set relativenumber " 相对行号
set ruler " 显示光标当前位置
set scrolloff=5 " 光标距离顶部/底部留出行空出行 set so=7
set shiftwidth=4 " 每一级缩进的长度
set showcmd " 显示命令
set showmatch " 高亮匹配括号
set si " 智能缩进
set smartcase " 智能匹配大小写
set softtabstop=4 " 退回缩进的长度 让 vim 把连续数量的空格视为一个制表符
set t_Co=256 " 启用256色
"set tabstop=4 " tab 显示出多少空格
set undofile " 保留撤销历史
set backupdir=~/.vim/.backup//
set directory=~/.vim/.swp//
set undodir=~/.vim/.undo//
set visualbell " 出错时，发出视觉提示，通常是屏幕闪烁
set wildmode=longest:list,full
set wildignore=*.dll,*.exe,*.jpg,*.gif,*.png
"  set wildmenu " 自动补全命令行下菜单和指令
set wrap  " 自动换行
set timeoutlen=500
" set syntax=whitespace
syntax enable " 打开语法高亮
syntax on " 允许用指定语法高亮配色方案替换默认方案

"---------- set paste -------------------------------------------
"  set paste " 鼠标右键粘贴时处理多出的缩进和空格，但会影响 inoremap 的绑定
nnoremap <F2> :set invpaste paste?<CR>
set pastetoggle=<F2>
set showmode
"---------- set paste -------------------------------------------
"---------- set encoding ----------------------------------------
set fileencodings=utf-8,ucs-bom,gb18030,gbk,gb2312,cp936
set termencoding=utf-8
set encoding=utf-8
"scriptencoding utf-8
"---------- set encoding ----------------------------------------
set list  " 把制表符显示为^I ,用$标示行尾（使用list分辨尾部的字符是tab还是>空格）
set listchars=eol:¬,tab:>·,trail:~,extends:>,precedes:<,space:·
" Vim编辑器中默认不显示文件中的tab和空格符，通过上面的配置可以获得以下的显示效果，方便定位输入错误。

colorscheme darkblue " 设置默认主题 default,desert,pablo,ron,slate
filetype plugin indent on " 开启文件类型侦测 自适应不同语言的智能缩进 根据不同类型文件加载对应插件



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
" let g:mapleader = "\<Space>"
" let g:maplocalleader = ','
" nnoremap <silent> <leader>      :<c-u>WhichKey '<Space>'<CR>
" nnoremap <silent> <localleader> :<c-u>WhichKey  ','<CR>
" cnoremap w!! w !sudo tee % >/dev/null


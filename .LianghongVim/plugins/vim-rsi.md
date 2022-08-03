
vim-rsi 键绑定说明
插件来源 github.com/tpope/vim-rsi
插件作用 希望在专注于编辑时也能在不切换模式的前提下移动光标

                                                *rsi-CTRL-A*
<C-a>                   Go to beginning of line.
                        移动到行的开头
                                                *rsi-CTRL-X_CTRL-A*
<C-x><C-a>              Access Vim's built-in |i_CTRL-A| or |c_CTRL-A|.
                        访问
                                                *rsi-CTRL-B*
<C-b>                   Go backwards one character.  On a blank line, kill it
                        and go back to the previous line.
                        回退一个字符，空行中将删除行回退至上一行
                                                *rsi-CTRL-D*
<C-d>                   Delete character in front of cursor.  Falls back to
                        |i_CTRL-D| or |c_CTRL-D| at the end of the line.
                        删除光标
                                                *rsi-CTRL-E*
<C-e>                   Go to end of line.  Falls back to |i_CTRL-E| if
                        already at the end of the line.  (|c_CTRL-E| already
                        goes to end of line, so it is not mapped.)
                        到行的末尾
                                                *rsi-CTRL-F*
<C-f>                   Move forward one character.  Falls back to
                        |i_CTRL-F| or |c_CTRL-F| at the end of the line.
                        前移动一个字符
                                                *rsi-CTRL-G*
<C-g>                   Removed, as it conflicts with |c_CTRL-G|.
                        已删除，冲突
                                                *rsi-CTRL-T*
<C-t>                   Transpose two characters.  This is mapped in command
                        line mode only, as |i_CTRL-T| is too important to
                        clobber.
                        颠倒两个字符
                                                *rsi-META-BS*
<M-BS>                  Delete backward one word.
                        删除回退一个单词
                                                *rsi-META-b*
<M-b>                   Go backwards one word.
                        回退一个单词
                                                *rsi-META-d*
<M-d>                   Delete forwards one word.
                        删除回退一个单词
                                                *rsi-META-f*
<M-f>                   Go forwards one word.
                        前移动一个单词
                                                *rsi-META-n*
<M-n>                   Equivalent to |c_<Down>| or |i_<Down>|.
                        等价 下方向键
                                                *rsi-META-p*
<M-p>                   Equivalent to |c_<Up>| or |i_<Up>|.
                        等价 上方向键

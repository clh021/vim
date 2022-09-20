# vim

## 为什么有这个项目
- 保存自己的配置
- 创建一个只需要独立目录，不修改主机Home目录，又随处可用的配置
- 学习并习惯使用 vim

## 如何使用这个项目
### 公共主机上临时使用
将项目根目录的 `start.sh` 当作是 `vim`或者`nvim` 的命令使用即可。
前提是宿主机上真的安装有 `vim`或者`nvim`。
### 自己笔记本上使用
- clone 本项目
- mkdir -p ~/.cache/{.vim.backup,.vim.swp,.vim.undo}
- 或: alias vim='vim -u $HOME/Projects/vim/.LianghongVim/.vimrc' # vim 配置独立维护
#### Vim
- mkdir ~/.vim/
- echo 'source ~/Projects/vim/.LianghongVim/.vimrc' > ~/.vim/vimrc
#### NeoVim
- mkdir ~/.config/nvim/
- echo 'source ~/Projects/vim/.LianghongVim/.vimrc' > ~/.config/nvim/init.vim

## 这个配置有什么特别？
- 使用 `;` 来作为 `:`使用，提前预防左手小指头的肌肉损伤。  `:` 仍然可用。
- jk -> Esc InsertMode&ViewMode (特殊情形请记得使用 `Ctrl+c`, `Ctrl+[`)。
- 使用 `<space>` 作为 leader 键。 暂未添加 leader 绑定功能。

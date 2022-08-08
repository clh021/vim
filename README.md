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
- mkdir .vim/{.backup,.swp,.undo} -p
- 或: alias vim='vim -u $HOME/Projects/vim/.LianghongVim/.vimrc' # vim 配置独立维护
#### Vim
- mkdir ~/.vim/
- echo 'source ~/Projects/vim/.LianghongVim/.vimrc' > ~/.vim/vimrc
#### NeoVim
- mkdir ~/.config/nvim/
- echo 'source ~/Projects/vim/.LianghongVim/.vimrc' > ~/.config/nvim/init.vim

## 这个配置有什么特别？
- 使用 `;` 来作为 `:`使用，提前预防左手小指头的肌肉损伤。  `:` 仍然可用。
- ff -> Esc InsertMode&ViewMode (特殊情形请记得使用 Ctrl+c)。
- 使用 `<space>` 作为 leader 键。 暂未添加 leader 绑定功能。
- 暂未启用任何插件，目前已经基本够用。

## 其它
### 查看/导出 所有快捷键配置
```bash
:nmap for normal mode mappings
:vmap for visual mode mappings
:imap for insert mode mappings
# 导出
:redir! > vim_keys.txt
:silent verbose map
:redir END
:pwd
```
### 使用sudo时也想应用这些配置
```bash
alias sudo='sudo -E'
```



### coc branch
```bash
vim +PlugInstall +qall
nvim --headless +PlugInstall +qall
nvim +UpdateRemotePlugins +qa
vim +'PlugInstall --sync' +qa
```

### check color
```bash
#!/usr/bin/env bash
sh -c "$(curl -fsSL https://raw.githubusercontent.com/JohnMorales/dotfiles/master/colors/24-bit-color.sh)"
```

### check fonts
```bash
sudo apt-get install fonts-powerline
# 设置终端软件的字体
# git clone https://github.com/powerline/fonts.git --depth=1
# cd fonts; ./install.sh
```

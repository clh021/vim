## 我的需求
- 实时代码提示(不要依赖手动触发):  vim 好像就没办法了, nvim 可以
- 全键盘操作(不要在写的过程必须用鼠标): nvim,vscode
- 键盘操作不能太卡(按键失灵的情况有点难受): vscode 偶尔卡键盘
- 方便的文档查阅(不要依赖web查阅): nvim,emacs
- 方便的项目代码搜索(自动略过代码仓库外的文件): nvim,emacs

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


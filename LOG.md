## 我的需求
- 实时代码提示(不要依赖手动触发):  vim 好像就没办法了, nvim 可以
- 全键盘操作(不要在写的过程必须用鼠标): nvim,vscode
- 键盘操作不能太卡(按键失灵的情况有点难受): vscode 偶尔卡键盘
- 方便的文档查阅(不要依赖web查阅): nvim,emacs
- 方便的项目代码搜索(自动略过代码仓库外的文件): nvim,emacs

## 我对一个代码编辑器工具的期望
- 尽可能舒适的代码补全(函数补全应至少包含参数名及参数类型，有函数说明最好)
- 有办法实现全键盘操作
- 自动保存，切换编辑框焦点时
- 保存时自动格式化代码
- 翻译(注释翻译，选中词句翻译)
- 拼写检查(尽量避免手误导致的单词错误)
- 方便的(全键盘的)代码提交拉取等基础操作(全键盘git操作)
- 代码片段(vscode竟然在补全时(go/vue)自带了代码片段)
- 方便的(全键盘的)代码内容搜索功能()

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


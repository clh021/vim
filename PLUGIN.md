# 插件篇

> 安装 [volt](https://github.com/vim-volt/volt) 到 PATH 中

## 安装插件fzf
```bash
volt get junegunn/fzf
volt get junegunn/fzf.vim
```
修改配置
出现无法 get 安装时应添加如下配置
```toml
[get]
fallback_git_cmd = true
```

此时可以输入使用如下命令了
:GFiles 来浏览所有 Git 管理的文件

手册
https://github.com/junegunn/fzf
https://einverne.github.io/post/2019/08/fzf-usage.html
https://github.com/chinanf-boy/fzf-zh


## 安装目录树插件
期望: 可以快速锁定和打开文件
```bash
volt get preservim/nerdtree
```

设置了 map .Lianghong/plugins/nerdtree.vim

## 更多插件

https://vimawesome.com/
https://github.com/akrawchyk/awesome-vim
https://www.tabnine.com/install/vim

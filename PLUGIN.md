# 插件篇

> 安装 [volt](https://github.com/vim-volt/volt) 到 PATH 中
## 使用 volt
```bash
# 插件一键下载
volt get -l # 基于 $VOLTPATH/lock.json 安装缺少的插件

# 可以在“plugconf”文件中编写插件配置。文件放置在：
# $VOLTPATH/plugconf/<repository>.vim
# https://github.com/vim-volt/volt#config

# 切换插件集
volt profile list # 显示所有插件列表
volt profile new foo   # will create profile "foo"
volt profile set foo   # will switch profile to "foo"
volt profile destroy foo   # will delete profile "foo"
volt enable tyru/caw.vim    # enable loading tyru/caw.vim on current profile
volt profile add foo tyru/caw.vim    # enable loading tyru/caw.vim on "foo" profile
volt disable tyru/caw.vim   # disable loading tyru/caw.vim on current profile
volt profile rm foo tyru/caw.vim    # disable loading tyru/caw.vim on "foo" profile
```

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

## 安装startify 插件
期望: 可以快速进入工作状态，恢复此前的工作状态
```bash
volt get mhinz/vim-startify
```


## 安装 gruvbox 插件
期望: 舒适的界面，改善适应的体验
```bash
volt get morhetz/gruvbox
```

## 安装 vim-go 插件
期望: 在 vim 中能流畅完成 go 工作任务
```bash
volt get fatih/vim-go
```

## 安装 vim-rsi 插件
期望: 在 vim 输入时也能快速移动光标，不要切换模式
```bash
volt get tpope/vim-rsi
```
> 该插件已经被卸载
> 在输入时需要临时删除几个字符时该需求才成立，而此需求通过 cb|cw|c$ 等操作方式解决了。
> 经验积累: 需要多熟悉修改操作后直接进入插入模式的命令,如: c,s

## 安装 jiangmiao/auto-pairs
期望: 自动补全括号引号，并置中光标
```bash
volt get jiangmiao/auto-pairs
```

## 安装 vim-airline
期望: 体验更友好舒适的状态栏
```bash
volt get vim-airline/vim-airline
```

## 安装 yegappan/grep
期望: 更好的内容搜索
```bash
volt get yegappan/grep
```

## 更多插件

https://vimawesome.com/
https://github.com/akrawchyk/awesome-vim
https://www.tabnine.com/install/vim

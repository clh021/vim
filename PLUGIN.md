插件篇

安装 [volt](https://github.com/vim-volt/volt) 到 PATH 中

安装插件
volt get junegunn/fzf
volt get junegunn/fzf.vim

修改配置
出现无法 get 安装时应添加如下配置
```toml
[get]
fallback_git_cmd = true
```

此时可以输入使用如下命令了
:GFiles 来浏览所有 Git 管理的文件

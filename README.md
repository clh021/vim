# vim

## 为什么有这个项目
- 保存自己的配置
- 创建一个只需要独立目录，不修改主机Home目录，又随处可用的配置
- 学习并习惯使用 vim

## 如何使用这个项目
将项目根目录的 `start.sh` 当作是 `vim`或者`nvim` 的命令使用即可。
前提是宿主机上真的安装有 `vim`或者`nvim`。

## 查看/导出 所有快捷键配置
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

## 这个配置特别？
- 使用 `;` 来作为 `:`使用，提前预防左手小指头的肌肉损伤。  `:` 仍然可用。
- ff -> Esc InsertMode&ViewMode (特殊情形请记得使用 Ctrl+c)。
- 使用 `<space>` 作为 leader 键。 暂未添加 leader 绑定功能。
- 暂未启用任何插件，目前已经基本够用。

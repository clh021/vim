# vim

## Why
Portable vim configuration based on shell script.
```bash
git clone --depth=1 https://github.com/SpaceVim/SpaceVim.git "$HOME/.SpaceVim"

git clone --depth=1 https://github.com/Shougo/dein.vim.git $HOME/.cache/vimfiles/repos/github.com/Shougo/dein.vim
```

## How
Just use `./start.sh` replace as `vim`/`nvim`.
```bash
./start.sh Path/FilePath
```

## Is there any way to view the currently mapped keys in Vim?
```bash
You can do that with the :map command. There are also other variants.

:nmap for normal mode mappings
:vmap for visual mode mappings
:imap for insert mode mappings
The above list is not complete. Typing :help map in Vim will give you more info.
```

Save to txt like this.
```bash
:redir! > vim_keys.txt
:silent verbose map
:redir END
:pwd
```

How to push all?
case 1:
```bash
git remote add gitee git@gitee.com:clh21/vim.git
git remote add all git@gitee.com:clh21/vim.git
git remote set-url --add all git@github.com:clh021/vim.git
git push all --all
git fetch --all

# Tip: To no need typing all whenever you send a commit, just use "origin" instead of "all":
git remote set-url --add origin nodester-host:path/proj.git
```

case 2:
```bash
# To push all branches to all remotes:
git remote | xargs -L1 git push --all
# To push a specific branch to all remotes
git remote | xargs -L1 -I R git push R master
# To make a git alias for the command
git config --global alias.pushall '!git remote | xargs -L1 git push --all'
```

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


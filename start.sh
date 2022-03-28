#!/usr/bin/env bash
# leehom Chen clh021@gmail.com
# 本脚本旨在启动一个随处可运行的 vim 配置环境。将自己熟悉的配置带着走。
set -e

# 路径准备
OldPath=`pwd`
cd "$( dirname "${BASH_SOURCE[0]}" )"
ProjPath=`pwd`

# arch=`dpkg --print-architecture` # amd64
arch=$(uname -m) # x86_64

# 优先启用 neovim, 其次是 vim
VimBin=
if ! command -v nvim &> /dev/null
then
  echo "Not found neovim, use vim now..."
  VimBin=$(which vim)
else
  VimBin=$(which nvim)
fi

echo "
let g:signature = \"Chenlianghong <clh021@gmail.com>\"
set runtimepath+=$ProjPath/.vim_config/,$ProjPath/.vim_config/after/
source $ProjPath/.vim_config/vimrc
\"helptags $ProjPath/.vim_config/doc/
" > $ProjPath/vimrc

echo $VimBin
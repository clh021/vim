#!/usr/bin/env bash
# leehom Chen clh021@gmail.com
# 本脚本旨在启动一个随处可运行的 vim 配置环境。将自己熟悉的配置带着走。
set -e

# 路径准备
OldPath=$(pwd)
cd "$( dirname "${BASH_SOURCE[0]}" )"
ProjPath=$(pwd)

# arch=`dpkg --print-architecture` # amd64
# arch=$(uname -m) # x86_64

# 优先启用 neovim, 其次是 vim
VimBin=
if ! command -v nvim &> /dev/null
then
  if ! command -v vim &> /dev/null
  then
    echo "Not found neovim and vim now..."
    exit 1
  else
    echo "Not found neovim, use vim now..."
    VimBin=$(which vim)
  fi
else
  VimBin=$(which nvim)
fi

# 根据
cp -f tpl.vimrc .vimrc
# sed -i "s+~+$ProjPath+g" .vimrc

HOME=$(pwd) $VimBin -u $ProjPath/.vimrc "$@"

cd "$OldPath"
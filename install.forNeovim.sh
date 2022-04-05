#!/usr/bin/env bash
# leehom Chen clh021@gmail.com
# 本脚本旨在启动一个随处可运行的 vim 配置环境。将自己熟悉的配置带着走。
set -e

# 路径准备
OldPath=$(pwd)
cd "$( dirname "${BASH_SOURCE[0]}" )"
ProjPath=$(pwd)

apt install -y \
  neovim \
  xclip

export HOME=$(pwd)
python3 -m pip install --user --upgrade pynvim
npm i -g neovim

-- 其实大量的习惯都是和绑定按键相关，好的按键绑定应提高效率的同时还能保持最大兼容性，最大限度的保留原有功能

local utils = require("editor.utils")
local map = utils.map
local nmap = utils.nmap
local xmap = utils.xmap
local d = utils.new_desc

vim.g.mapleader = ";"

-- quicker mode
nmap(";;", ":", d("Goto command mode"))

-- quicker translate
nmap(";R", ":!fanyi <C-r><C-w><CR>", d("Translate current word"))

-- quicker motion
nmap("J", "5j", d("Jump 5 lines down"))
xmap("J", "5j", d("Jump 5 lines down"))

nmap("K", "5k", d("Jump 5 lines up"))
xmap("K", "5k", d("Jump 5 lines up"))

map("i", "<C-h>", "<Home>")
map("i", "<C-e>", "<End>")
map("i", "<C-b>", "<ESC>bi")
map("i", "<C-f>", "<ESC>wa")

nmap("W", "5w", d("Jump 5 word forward"))
nmap("B", "5b", d("Jump 5 word backward"))

-- move block easily
nmap("<", "<<", d("Decrease indent"))
nmap(">", ">>", d("Increase indent"))
xmap("<", "<gv", d("Increase indent"))
xmap(">", ">gv", d("Decrease indent"))

-- create tab like window
nmap("<C-T>h", ":tabprevious<CR>", d("Goto previous tab"))
nmap("<C-T>l", ":tabnext<CR>", d("Goto next tab"))
nmap("<C-T>n", ":tabnew<CR>", d("Create a new tab"))

-- save quickly
nmap(";w", ":w<CR>", d("Save buffer"))

-- no more finger expansion
map("i", "jk", "<ESC>", d("Exit the insert mode"))


-- move around the window
nmap(";k", "<C-w>k", d("Jump to window above"))
nmap(";j", "<C-w>j", d("Jump to window below"))
nmap(";l", "<C-w>l", d("Jump to the left window"))
nmap(";h", "<C-w>h", d("Jump to the righ window"))


-- resize the window
nmap("<C-S-up>", ":res +5<CR>", d("Extend the upper boundary of the current window"))
nmap("<C-S-down>", ":res -5<CR>", d("Extend the lower boundary of the current window"))
nmap("<C-S-right>", ":vertical resize-5<CR>", d("Extend the right boundary of the current window"))
nmap("<C-S-left>", ":vertical resize+5<CR>", d("Extend the right boundary of the current window"))


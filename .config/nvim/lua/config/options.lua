--local
local opt = vim.opt
local indent = 2

--行号
opt.relativenumber = true
opt.number = true

--防止包裹
opt.wrap = false

--缩进
opt.tabstop = indent
opt.shiftwidth = indent
opt.expandtab = true
opt.autoindent = true

--光标行
opt.cursorline = true

--启动鼠标
opt.mouse:append("a")

--系统剪切板
opt.clipboard:append("unnamedplus")

--搜索
opt.ignorecase = true
opt.smartcase = true

--外观
opt.termguicolors = true
opt.signcolumn = "yes"

--默认新窗口右和下
opt.splitright = ture
opt.splitbelow = ture


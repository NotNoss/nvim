vim.cmd("let g:netrw_liststyle = 3")

local opt = vim.opt

-- General
opt.number = true

-- Clipboard
opt.clipboard:append("unnamedplus")

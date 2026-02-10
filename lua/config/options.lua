-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here

-- 设置文件编码方式
vim.o.encoding = "utf-8"
-- 设置文件编码猜测顺序
vim.o.fileencodings = "ucs-bom,utf-8,gb2312,default"
-- 禁用全局自动格式化
vim.g.autoformat = false

--[[ -- 设置颜色主题 
vim.o.background = "dark"
vim.o.termguicolors = true
vim.cmd('colorscheme molokai') ]]

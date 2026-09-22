-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here

-- 设置文件编码方式
vim.o.encoding = "utf-8"
-- 设置文件编码猜测顺序
vim.o.fileencodings = "ucs-bom,utf-8,gb2312,default"
-- 禁用全局自动格式化
vim.g.autoformat = true

vim.opt.makeprg = "make" -- 或 "ninja -C build" 等

vim.g.root_spec = {
    ".git", -- 优先识别.git目录
    "lua", -- 其次识别lua目录
    "cwd" -- 最后回退到当前工作目录
}

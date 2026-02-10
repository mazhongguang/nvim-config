-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

-- 定义快捷键的前缀，即<Leader>
vim.g.mapleader = ";"

local map = vim.keymap.set

-- 定义快捷键到行首和行尾
map("n", "LB", "0", { desc = "Go to line start" })
map("n", "LE", "$", { desc = "Go to line end" })
-- 定义快捷键保存当前窗口内容
map("n", "<leader>w", "<cmd>w<CR>", { desc = "Save File"})
-- 设置快捷键将系统剪贴板内容粘贴至 vim
map("n", "<leader>p", "+p", { desc = "Paste from system clipboard" })
-- 定义快捷键关闭当前分割窗口
map("n", "<leader>q", "<cmd>q<CR>", { desc = "Close current window" })
-- 定义快捷键保存所有窗口内容并退出 vim
map("n", "<leader>WQ", "<cmd>wa<CR><cmd>q<CR>", { desc = "Save all and exit" })
-- 不做任何保存，直接退出 vim
map("n", "<leader>Q", "<cmd>qa!<CR>", { desc = "Quit without saving" })
-- 定义快捷键在结对符之间跳转
map("n", "<leader>M", "%", { desc = "Jump to matching bracket" })
-- 手动保存为GB2312格式(临时改变一次保存编码格式）
map("n", "<F2>", "<cmd>w ++encoding=GB2312<CR>", { desc = "Save as GB2312 format" })

-- 依次遍历子窗口
map("n", "nw", "<C-W><C-W>", { desc = "Switch to next window" })
-- 跳转至右方的窗口
map("n", "<Leader>lw", "<C-W>l", { desc = "Switch to right window" })
-- 跳转至左方的窗口
map("n", "<Leader>hw", "<C-W>h", { desc = "Switch to left window" })
-- 跳转至上方的子窗口
map("n", "<Leader>kw", "<C-W>k", { desc = "Switch to up window" })
-- 跳转至下方的子窗口
map("n", "<Leader>jw", "<C-W>j", { desc = "Switch to down window" })

-- 编译
map("n", "<F7>", "<cmd>!make -j<CR>", { desc = "Compile with output" })
-- 下载
map("n", "<F8>", "<cmd>!make flash<CR>", { desc = "Make and download with output" })

-- Diagnostic keymaps
map('n', '<leader>d', vim.diagnostic.setloclist, { desc = 'Open diagnostic [Q]uickfix list' })

-- 
local function switch_c_h()
    local filename = vim.fn.expand('%:t')
    local basename = vim.fn.expand('%:r')
    local ext = vim.fn.expand('%:e')

    if ext == 'c' then
        vim.cmd('edit ' .. basename .. '.h')
    elseif ext == 'h' then
        vim.cmd('edit ' .. basename .. '.c')
    else
        print('Not a .c or .h file')
    end
end

-- C/H file switching
map('n', '<leader>sw', switch_c_h, { noremap = true, silent = true })

-- bootstrap lazy.nvim, LazyVim and your plugins
-- 定义快捷键的前缀，即<Leader>
vim.g.mapleader = ";"

require("config.lazy")

-- 直接设置 colorcolumn 和相关选项
vim.cmd([[
  set colorcolumn=120
  highlight ColorColumn ctermbg=darkgray guibg=#3a3a3a
]])

-- Neovim default updatetime is 4000
vim.opt.updatetime = 200

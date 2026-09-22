-- Autocmds are automatically loaded on the VeryLazy event
-- Default autocmds that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/autocmds.lua
--
-- Add any additional autocmds here
-- with `vim.api.nvim_create_autocmd`
--
-- Or remove existing autocmds by their group name (which is prefixed with `lazyvim_` for the defaults)
-- e.g. vim.api.nvim_del_augroup_by_name("lazyvim_wrap_spell")

-- 确保C/C++文件能启动LSP
vim.api.nvim_create_autocmd("FileType", {
  pattern = { "c", "cpp" },
  callback = function()
    -- 等待一会确保LSP有机会启动
    vim.defer_fn(function()
      local clients = vim.lsp.get_clients({ bufnr = 0 })
      if #clients == 0 then
        vim.notify("LSP not started for C/C++ file, starting manually...", vim.log.levels.WARN)
        -- vim.cmd("LspStart")
      end
    end, 500)
  end,
})

-- 自动打开 quickfix 列表
vim.api.nvim_create_autocmd("QuickFixCmdPost", {
  pattern = "*",
  callback = function()
    local qf_list = vim.fn.getqflist()
    if #qf_list > 0 then
      -- 使用 Trouble 打开 quickfix 列表（美观版）
      require("trouble").toggle({ mode = "quickfix", focus = true })
      -- 可选：自动滚动到底部（Trouble 默认会聚焦第一条，但你可以跳到最后）
      -- 注意：Trouble 没有直接 "G" 命令，但通常最新错误在底部，可考虑 reverse 或接受默认
    end
  end,
})

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
                vim.cmd("LspStart")
            end
        end, 500)
    end,
})

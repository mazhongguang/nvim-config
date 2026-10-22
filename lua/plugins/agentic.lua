return {
    {
        "carlos-algms/agentic.nvim",
        opts = {
            -- 内置预设：实际执行 `opencode acp`
            provider = "opencode-acp",

            -- 聊天侧边栏位置与宽度
            windows = {
                position = "right",
                width = "40%",
            },

            -- 改文件前先看 diff 再批准
            diff_preview = {
                enabled = true,
                layout = "split", -- "split" 或 "inline"
            },
        },

        -- 建议的快捷键（用 Ctrl 组合，避免和你的 Leader `;` 冲突）
        keys = {
            {
                "<C-\\>",
                function() require("agentic").toggle() end,
                mode = { "n", "v", "i" },
                desc = "Toggle Agentic Chat",
            },
            {
                "<C-'>",
                function() require("agentic").add_selection_or_file_to_context() end,
                mode = { "n", "v" },
                desc = "Add file/selection to Agentic",
            },
            {
                "<C-,>",
                function() require("agentic").new_session() end,
                mode = { "n", "v", "i" },
                desc = "New Agentic Session",
            },
            -- 新增：恢复历史会话（原来的 <A-i>r 被占用，换成 ;ar）
            {
                "<leader>ar",
                function() require("agentic").restore_session() end,
                desc = "Restore Agentic Session",
            },
            -- 可选：列出当前活着的会话
            {
                "<leader>as",
                function() require("agentic").select_session() end,
                desc = "Select live Agentic Session",
            },

        },
    },
}

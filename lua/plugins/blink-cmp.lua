return {
    {
        "saghen/blink.cmp",
        opts = {
            keymap = {
                preset = "enter",

                -- Tab键与fittencode冲突了，改为其他键
                ["<Tab>"] = {},                       -- 禁用默认的 Tab 映射
                ["<C-Tab>"] = { "snippet_forward", "fallback" }, -- 使用 Ctrl+Tab 来处理 snippet_forward

                -- 保留其他你需要的按键映射
                ["<C-y>"] = { "select_and_accept" },
            },
        },
    },
}

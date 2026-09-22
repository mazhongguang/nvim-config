return {
  "luozhiya/fittencode.nvim",
  opts = {
    -- 启用日志记录
    log = {
      level = vim.log.levels.DEBUG,
      max_size = 20,
    },

    -- 配置补全功能
    inline_completion = {
      enable = true,
      auto_triggering_completion = true,
      disable_completion_within_the_line = false,
      disable_completion_when_delete = false,
      disable_completion_when_insert_enter = false,
      disable_completion_when_pumcmp_changed = false,
      disable_completion_when_nofile_buffer = false,
    },

    -- 配置快捷键
    keymaps = {
      inline = {
        inccmp = {
          ["inline_completion"] = "<A-\\>",
          ["accept_all"] = "<C-o>",
          ["accept_next_line"] = "<C-Down>",
          ["accept_next_word"] = "<C-Right>",
          ["revoke"] = { "<C-Left>", "<C-Up>" },
        },
        editcmp = {
          ["edit_completion"] = "<A-o>",
          ["accept_all"] = "<C-o>",
          ["accept_next_hunk"] = "<C-Down>",
          ["revoke"] = { "<C-Left>", "<C-Up>" },
          ["cancel"] = "<Esc>",
        },
      },
    },

    -- 配置集成
    integrations = {
      completion = {
        lsp_server = false,
        blink = false,
      },
    },

    -- 其他配置
    server = {
      fitten_version = "default",
      server_url = "",
    },

    language_preference = {
      display_preference = "zh-cn",
      comment_preference = "auto",
      commit_message_preference = "auto",
    },
  },
}

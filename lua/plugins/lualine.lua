return {
  {
    "nvim-lualine/lualine.nvim",
    event = "VeryLazy",
    opts = function()
      -- 先定义高亮组
      --[[ vim.api.nvim_set_hl(0, 'MyEncoding', { bg = '#4a4a4a', fg = '#ffffff', bold = true })
      vim.api.nvim_set_hl(0, 'MyFileFormat', { bg = '#4a4a4a', fg = '#ffffff', bold = true })
      vim.api.nvim_set_hl(0, 'MyFileType', { bg = '#4a4a4a', fg = '#ffffff', bold = true }) ]]
      
      -- 定义分隔符高亮组
      --vim.api.nvim_set_hl(0, 'MySeparator', { bg = '#5a5a5a', fg = '#ff6b6b', bold = true })

      return {
        options = {
          icons_enabled = true,
          theme = 'auto',
          component_separators = { left = '│', right = '│' },
          section_separators = { left = '', right = ''},
          disabled_filetypes = {},
          always_divide_middle = true,
          globalstatus = true,
          refresh = {
            statusline = 1000,
            tabline = 1000,
            winbar = 1000,
          }
        },
        sections = {
          lualine_a = {'mode'},
          lualine_b = {'branch'},
          lualine_c = {
            {
              'filename',
              file_status = true, -- Displays file status (readonly status, modified status)
              path = 0 -- 0: Just the filename, 1: Relative path, 2: Absolute path
            }
          },
          lualine_x = {
            {
              'diagnostics',
              sources = {'nvim_diagnostic'},
              symbols = {error = 'E', warn = 'W', info = 'I', hint = 'H'}
            },
            { 'encoding', color = { bg = '#4a4a4a', fg = '#ffffff', sp = '#ff6b6b' } }, -- 显示编码格式，带自定义背景和分隔符
            { 'fileformat', color = { bg = '#4a4a4a', fg = '#ffffff', sp = '#ff6b6b' } }, -- 自定义背景和分隔符
            { 'filetype',  color = { bg = '#4a4a4a', fg = '#ffffff', sp = '#ff6b6b' } } -- 自定义背景和分隔符
          },
          lualine_y = {
            'location',
            {
              'progress',
              separator = '',
              padding = { left = 1, right = 0 }
            }
          },
          lualine_z = {'selectioncount'}
        },
        inactive_sections = {
          lualine_a = {},
          lualine_b = {},
          lualine_c = {
            {
              'filename',
              file_status = true,
              path = 1
            }
          },
          lualine_x = {'location'},
          lualine_y = {},
          lualine_z = {}
        },
        tabline = {},
        winbar = {},
        inactive_winbar = {},
      }
    end,
  }
}
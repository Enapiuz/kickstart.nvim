return {
  'nvim-lualine/lualine.nvim',
  dependencies = { 'nvim-tree/nvim-web-devicons' },
  config = function()
    local custom_theme = require 'lualine.themes.dracula'
    custom_theme.normal.c.bg = 'NONE'
    custom_theme.command.c.bg = 'NONE'
    custom_theme.visual.c.bg = 'NONE'
    custom_theme.inactive.c.bg = 'NONE'
    custom_theme.insert.c.bg = 'NONE'
    custom_theme.replace.c.bg = 'NONE'
    -- custom_theme.terminal.c.bg = 'NONE'

    require('lualine').setup {
      options = {
        icons_enabled = true,
        theme = custom_theme,
        component_separators = { left = '', right = '' },
        section_separators = { left = '', right = '' }, -- lualine v3
        disabled_filetypes = { 'NvimTree' },
        always_divide_middle = true,
        globalstatus = true,
      },
      sections = {
        lualine_a = { 'mode' },
        lualine_b = { 'branch', 'diff', 'diagnostics' },
        lualine_c = { { 'filename', path = 1 }, 'searchcount' },
        lualine_x = { 'encoding', 'filetype', 'filesize' },
        lualine_y = { 'progress' },
        lualine_z = { 'location' },
      },
      inactive_sections = {
        lualine_a = {},
        lualine_b = {},
        lualine_c = { 'filename' },
        lualine_x = { 'location' },
        lualine_y = {},
        lualine_z = {},
      },
      tabline = {},
      extensions = {},
    }
  end,
}

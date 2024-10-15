return {
  {
    'lukas-reineke/indent-blankline.nvim',
    main = 'ibl',
    init = function()
      local highlight = {
        'RainbowRed',
        'RainbowYellow',
        'RainbowBlue',
        'RainbowOrange',
        'RainbowGreen',
        'RainbowViolet',
        'RainbowCyan',
      }

      local hooks = require 'ibl.hooks'
      local indentColor = '#444444'
      hooks.register(hooks.type.HIGHLIGHT_SETUP, function()
        vim.api.nvim_set_hl(0, 'LightGrayIndent', { fg = indentColor })
        vim.api.nvim_set_hl(0, 'IblScope', { fg = indentColor })
      end)

      require('ibl').setup {
        -- indent = { highlight = highlight },
        indent = {
          char = '│', -- This is a slightly thinner char than the default one, check :help ibl.config.indent.char
          highlight = 'LightGrayIndent',
        },
        exclude = {
          filetypes = {
            'dashboard',
          },
        },
      }

      hooks.register(hooks.type.WHITESPACE, hooks.builtin.hide_first_space_indent_level)
      hooks.register(hooks.type.WHITESPACE, hooks.builtin.hide_first_tab_indent_level)
    end,
  },
}

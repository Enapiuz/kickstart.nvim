return {
  {
    'rcarriga/nvim-notify',
    priority = 1000, -- Make sure to load this before all the other start plugins.
    event = 'VimEnter',
    opts = {
      timeout = 7000,
      stages = 'static',
      render = 'wrapped-compact',
      max_height = function()
        return math.floor(vim.o.lines * 0.75)
      end,
      max_width = function()
        return math.floor(vim.o.columns * 0.75)
      end,
      on_open = function(win)
        vim.api.nvim_win_set_config(win, { zindex = 100 })
      end,
    },
    init = function()
      vim.notify = require 'notify'
    end,
  },
}

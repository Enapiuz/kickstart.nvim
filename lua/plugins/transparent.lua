return {
  'xiyaowong/transparent.nvim',
  event = 'VimEnter',
  config = function()
    require('transparent').setup()
  end,
}

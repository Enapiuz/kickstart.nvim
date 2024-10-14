return {
  'smoka7/hop.nvim',
  version = '*',
  config = function()
    require('hop').setup {
      keys = 'etovxqpdygfblzhckisuran',
    }
    vim.keymap.set('n', '<leader>hh', ':HopWord<CR>', { desc = 'Hop Word' })
  end,
}

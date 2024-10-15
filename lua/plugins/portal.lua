return {
  'cbochs/portal.nvim',
  -- Optional dependencies
  dependencies = {
    'cbochs/grapple.nvim',
    'ThePrimeagen/harpoon',
  },
  config = function()
    require('portal').setup()

    vim.keymap.set('n', '<leader>jb', '<cmd>Portal jumplist backward<cr>', { desc = 'Portal jumplist backward' })
    vim.keymap.set('n', '<leader>jf', '<cmd>Portal jumplist forward<cr>', { desc = 'Portal jumplist forward' })
  end,
}

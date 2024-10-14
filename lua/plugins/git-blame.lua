return {
  'f-person/git-blame.nvim',
  event = 'BufRead',
  config = function()
    require('gitblame').setup()

    vim.keymap.set('n', '<leader>gb', function()
      require('gitblame').toggle()
    end, { desc = 'Toggle git blame' })

    vim.api.nvim_command 'GitBlameDisable'
  end,
}

return {
  'nvim-treesitter/nvim-treesitter-context',
  event = { 'BufReadPost', 'BufNewFile' },
  config = function()
    require('treesitter-context').setup {
      mode = 'cursor',
    }

    vim.cmd 'highlight TreesitterContext guibg=NONE'
  end,
}

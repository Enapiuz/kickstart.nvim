local keymap = vim.keymap

-- Select all
keymap.set('n', '<C-a>', 'gg<S-v>G')

-- Buffers
keymap.set('n', '<leader>bd', ':bd!<CR>', { desc = 'Delete buffer' })
keymap.set('n', '<leader>bn', ':bn<CR>', { desc = 'Next buffer' })
keymap.set('n', '<leader>bb', ':bp<CR>', { desc = 'Previous buffer' })

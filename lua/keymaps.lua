local keymap = vim.keymap

-- Select all
keymap.set('n', '<C-a>', 'gg<S-v>G')

-- Buffers
keymap.set('n', '<leader>bd', ':bd!<CR>', { desc = 'Delete buffer' })
keymap.set('n', '<leader>bn', ':bn<CR>', { desc = 'Next buffer' })
keymap.set('n', '<leader>bb', ':bp<CR>', { desc = 'Previous buffer' })

-- Lazy
keymap.set('n', '<leader>ll', ':Lazy<CR>', { desc = 'Lazy' })
keymap.set('n', '<leader>lm', ':Mason<CR>', { desc = 'Mason' })

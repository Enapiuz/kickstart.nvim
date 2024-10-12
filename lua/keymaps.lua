local keymap = vim.keymap

-- Select all
keymap.set('n', '<C-a>', 'gg<S-v>G')

-- Better H,J,K,L
keymap.set('n', 'H', '^')
keymap.set('n', 'J', '}')
keymap.set('n', 'K', '{')
keymap.set('n', 'L', '$')

-- Buffers
keymap.set('n', '<leader>bd', ':bd<CR>', { desc = 'Delete buffer' })
keymap.set('n', '<leader>bn', ':bn<CR>', { desc = 'Next buffer' })
keymap.set('n', '<leader>bp', ':bp<CR>', { desc = 'Previous buffer' })

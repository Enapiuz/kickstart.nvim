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

-- Moving lines up and down
keymap.set('n', '<A-]>', ':m .+1<CR>==') -- move line up(n)
keymap.set('n', '<A-[>', ':m .-2<CR>==') -- move line down(n)
keymap.set('v', '<A-]>', ":m '>+1<CR>gv=gv") -- move line up(v)
keymap.set('v', '<A-[>', ":m '<-2<CR>gv=gv") -- move line down(v)

-- debug-- DAP key mappings for easier debugging
-- vim.api.nvim_set_keymap('n', '<F5>', ":lua require'dap'.continue()<CR>", { noremap = true, silent = true })
-- vim.api.nvim_set_keymap('n', '<F9>', ":lua require'dap'.toggle_breakpoint()<CR>", { noremap = true, silent = true })
-- vim.api.nvim_set_keymap('n', '<F10>', ":lua require'dap'.step_over()<CR>", { noremap = true, silent = true })
-- vim.api.nvim_set_keymap('n', '<F11>', ":lua require'dap'.step_into()<CR>", { noremap = true, silent = true })
-- vim.api.nvim_set_keymap('n', '<F12>', ":lua require'dap'.step_out()<CR>", { noremap = true, silent = true })

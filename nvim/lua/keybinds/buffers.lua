vim.api.nvim_set_keymap('n', '<leader>h', '<C-w>h', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>j', '<C-w>j', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>k', '<C-w>k', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>l', '<C-w>l', { noremap = true, silent = true })

vim.api.nvim_set_keymap('n', '<leader>H', '<C-w>H', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>J', '<C-w>J', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>K', '<C-w>K', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>L', '<C-w>L', { noremap = true, silent = true })

vim.keymap.set('n', "<leader>'", ':only<CR>')

vim.api.nvim_set_keymap('n', '<leader>n', '<C-W>10>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>m', '<C-W>10<', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader><S-n>', '<C-W>>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader><S-m>', '<C-W><', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader><C-n>', '<C-W>5+', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader><C-m>', '<C-W>5-', { noremap = true, silent = true })

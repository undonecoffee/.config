vim.keymap.set('n', '<Esc>', function()
    vim.cmd 'silent nohlsearch'
    vim.cmd 'echo "-"'
end)

-- vim.api.nvim_create_user_command('2', 'w', {})
vim.keymap.set('n', '<leader>w', ':q<CR>')
vim.keymap.set('n', '<leader>d', ':bd<CR>')
vim.keymap.set('n', '<C-p>', ':normal! "0p<CR>')

vim.keymap.set('n', 'L', ':normal! J<CR>')
vim.keymap.set('n', 'J', '<C-e>')
vim.keymap.set('n', 'K', '<C-y>')

vim.keymap.set('n', 'U', '<C-r>', { noremap = true, silent = true })
vim.keymap.set('n', '<C-r>', 'U', { noremap = true, silent = true })

-- vim.keymap.set('v', '"', 'oi"gvola"gvl', { noremap = true, silent = true })
-- vim.keymap.set('v', '`', 'oi`gvola`gvl', { noremap = true, silent = true })
-- vim.keymap.set('v', "'", "oi'gvola'gvl", { noremap = true, silent = true })
-- vim.keymap.set('v', '{', 'oi{gvola}gvl', { noremap = true, silent = true })
-- vim.keymap.set('v', '(', 'oi(gvola)gvl', { noremap = true, silent = true })
-- vim.keymap.set('v', '[', 'oi[gvola]gvl', { noremap = true, silent = true })

vim.keymap.set('v', '"', 'di""hp', { noremap = true, silent = true })
vim.keymap.set('v', '`', 'di``hp', { noremap = true, silent = true })
vim.keymap.set('v', "'", "di''hp", { noremap = true, silent = true })
vim.keymap.set('v', '{', 'di{}hp', { noremap = true, silent = true })
vim.keymap.set('v', '(', 'di()hp', { noremap = true, silent = true })
vim.keymap.set('v', '[', 'di[]hp', { noremap = true, silent = true })

vim.keymap.set('n', '<A-j>', '<C-^>', { noremap = true, silent = true })

vim.keymap.set('n', 'zb', function()
    vim.cmd 'CodeCompanionChat'
    -- vim.cmd 'normal! '
    vim.cmd 'startinsert'
end)

vim.keymap.set('n', 'zn', function()
    vim.cmd 'CodeCompanionChat'
    vim.cmd 'normal! iin neovim is there a way to '
    vim.cmd 'startinsert'
end)

vim.keymap.set({ 'n', 'v' }, 'zt', ':CodeCompanion ')
-- vim.keymap.set('n', 'zb', ':CodeCompanionChat')

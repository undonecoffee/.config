vim.keymap.set('n', 'zb', function()
    vim.cmd 'CodeCompanionChat'
    -- vim.cmd 'normal! '
    vim.cmd 'setlocal nonumber norelativenumber'
    vim.cmd 'startinsert'
end)

vim.keymap.set('v', 'zb', function()
    vim.cmd 'normal y<CR>'
    vim.cmd 'CodeCompanionChat'
    vim.cmd 'setlocal nonumber norelativenumber'
    vim.cmd 'normal! i```jspGo```o'
    vim.cmd 'startinsert'
end)

vim.keymap.set({ 'n', 'v' }, 'zt', ':CodeCompanion ')
vim.keymap.set({ 'n', 'v' }, 'zg', ':CodeCompanion shorten this code<CR>')
vim.keymap.set(
    { 'n', 'v' },
    'zs',
    ':CodeCompanion im going to give you a word. if it is spelled correctly do nothing. if it isnt only respond with the correct spelling. here is the work :'
)
-- vim.keymap.set({ 'n', 'v' }, 'zb', ':CodeCompanion make this code as performant as possible<CR>')
-- vim.keymap.set('n', 'zb', ':CodeCompanionChat')

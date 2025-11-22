vim.keymap.set('n', 'zb', function()
    vim.cmd 'CodeCompanionChat'
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

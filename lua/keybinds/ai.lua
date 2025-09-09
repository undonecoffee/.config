vim.keymap.set('n', 'zb', function()
    vim.cmd 'CodeCompanionChat'
    -- vim.cmd 'normal! '
    vim.cmd 'setlocal nonumber norelativenumber'
    vim.cmd 'startinsert'
end)

vim.keymap.set('n', 'zh', function()
    vim.cmd 'CodeCompanionChat'
    -- vim.cmd 'normal! '
    vim.cmd 'setlocal nonumber norelativenumber'
    vim.cmd 'normal! iim going to give you a word. if it is spelled correctly, just respond with the word again followed by a checkmark and nothing else. if it is spelled incorrectly, give the way i spelled it with a X next to it and then the correct spelling under it with a checkmark. there will be no further interaction after this so dont ask. here is the word:oo'
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
-- vim.keymap.set({ 'n', 'v' }, 'zb', ':CodeCompanion make this code as performant as possible<CR>')
-- vim.keymap.set('n', 'zb', ':CodeCompanionChat')

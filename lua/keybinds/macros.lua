local recording = false

vim.keymap.set('n', 'Y', function()
    if not recording then
        vim.cmd 'normal! qy'
        recording = true
    else
        vim.cmd 'normal! q'
        vim.cmd 'echo "➤  macro saved!"'
        recording = false
    end
end, { noremap = true, silent = true })

vim.keymap.set('n', 'H', ':normal! @y<CR>', { noremap = true, silent = true })

local ls = require 'luasnip'

vim.keymap.set({ 'i' }, '<C-t>', function()
    ls.expand()
end, { noremap = true, silent = true })

vim.keymap.set({ 'i', 's', 'n' }, '<C-n>', function()
    ls.jump(1)
end, { noremap = true, silent = true })

vim.keymap.set({ 'i', 's', 'n' }, '<C-J>', function()
    ls.jump(-1)
end, { noremap = true, silent = true })

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

-- local recording = false
--
-- vim.keymap.set('n', 'K', function()
--     if recording then
--         vim.cmd 'normal! q'
--         vim.cmd 'echo "➤  macro saved!"'
--         recording = false
--     else
--         vim.cmd 'normal! @k'
--     end
-- end, { noremap = true, silent = true })
--
-- vim.keymap.set('n', 'U', function()
--     recording = true
--     vim.cmd 'normal! qk'
-- end, { noremap = true, silent = true })

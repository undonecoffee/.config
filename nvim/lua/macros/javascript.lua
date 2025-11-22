vim.api.nvim_create_autocmd('FileType', {
    pattern = 'javascript',
    callback = function()
        vim.keymap.set('n', 'ca', '0f>la{<CR>f,i<CR>}<S-o>ChatLib.chat("")hi', { noremap = true, silent = true })
        vim.keymap.set('n', 'cA', '0f{xjj_xkkJJ', { noremap = true, silent = true })
        vim.keymap.set('n', 'cs', '0f)la{<CR>A<CR>}O', { noremap = true, silent = true })
        vim.keymap.set('n', 'cS', '0f{xxjjxkkJ', { noremap = true, silent = true })
    end,
})

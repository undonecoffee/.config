vim.api.nvim_create_autocmd('FileType', {
    pattern = 'markdown',
    callback = function()
        vim.keymap.set('i', '~', '```<CR><CR>```kka', { noremap = true, silent = true })
    end,
})

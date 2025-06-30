vim.api.nvim_create_autocmd('FileType', {
    pattern = 'javascript',
    callback = function()
        -- insert mode
        -- chatlib.chat()
        vim.keymap.set('i', '<A-c>', 'ChatLib.chat()i', { noremap = true, silent = true })
    end,
})

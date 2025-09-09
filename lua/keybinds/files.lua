vim.keymap.set('n', '<leader>sc', function()
    require('telescope.builtin').find_files { cwd = '~/.config/nvim' }
end)

vim.keymap.set('n', '<leader>gt', function()
    vim.cmd "lua vim.api.nvim_set_current_dir(vim.fn.expand '%:p:h')"
    vim.cmd 'LazyGit'
end)

vim.keymap.set('n', '<leader>sy', function()
    local dir = vim.fn.expand '%:p:h'
    vim.cmd('cd ' .. dir)
    print('Changed directory to: ' .. dir)
end)

vim.keymap.set('n', '<leader>sr', function()
    local dir = vim.fn.expand '%:p:h'
    vim.cmd('cd ' .. dir)
    vim.cmd 'Yazi cwd'
end)

vim.keymap.set('n', '<leader>so', function()
    vim.api.nvim_set_current_dir 'C:/Users/cameron/passwords'
    vim.cmd 'Yazi cwd'
end)

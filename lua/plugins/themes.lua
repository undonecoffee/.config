local function setTheme()
    vim.cmd.colorscheme 'vscode'
    -- vim.cmd.colorscheme 'moonfly'
    -- vim.cmd.colorscheme 'cyberdream'
    -- vim.cmd.colorscheme 'onedark'
    -- vim.cmd.colorscheme 'vesper'
end

return {
    { 'olimorris/onedarkpro.nvim' },
    { 'scottmckendry/cyberdream.nvim' },
    { 'bluz71/vim-moonfly-colors' },
    { 'Mofiqul/vscode.nvim' },
    -- { 'datsfilipe/vesper.nvim' },

    {
        'HiPhish/rainbow-delimiters.nvim',
        config = function()
            require('rainbow-delimiters.setup').setup { highlight = { 'RainbowDelimiterRed', 'RainbowDelimiterYellow', 'RainbowDelimiterBlue' } }
            vim.api.nvim_set_hl(0, 'RainbowDelimiterRed', { fg = '#FFD700' })
            vim.api.nvim_set_hl(0, 'RainbowDelimiterYellow', { fg = '#DA70D6' })
            vim.api.nvim_set_hl(0, 'RainbowDelimiterBlue', { fg = '#179FFF' })
            setTheme()
        end,
    },
}

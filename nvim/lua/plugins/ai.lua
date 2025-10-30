return {
    -- {
    --     'github/copilot.vim',
    -- },
    {
        'olimorris/codecompanion.nvim',
        opts = {},
        dependencies = {
            'nvim-lua/plenary.nvim',
            'nvim-treesitter/nvim-treesitter',
        },
        config = function()
            require('codecompanion').setup {
                display = {
                    diff = {
                        enabled = false,
                    },
                },
            }
        end,
    },
    {
        'OXY2DEV/markview.nvim',
        lazy = false,
        opts = {
            preview = {
                filetypes = { 'markdown', 'codecompanion' },
                ignore_buftypes = {},
            },
        },
    },
}

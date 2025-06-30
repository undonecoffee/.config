-- lazy git
-- telescope
-- yazi
return {
    'kdheepak/lazygit.nvim',
    lazy = true,
    cmd = {
        'LazyGit',
        'LazyGitConfig',
        'LazyGitCurrentFile',
        'LazyGitFilter',
        'LazyGitFilterCurrentFile',
    },
    {
        'nvim-telescope/telescope.nvim',
        event = 'VimEnter',
        dependencies = {
            'nvim-lua/plenary.nvim',
            {
                'nvim-telescope/telescope-fzf-native.nvim',
                build = 'make',
                cond = function()
                    return vim.fn.executable 'make' == 1
                end,
            },
            { 'nvim-telescope/telescope-ui-select.nvim' },
            { 'nvim-tree/nvim-web-devicons', enabled = vim.g.have_nerd_font },
        },
        config = function()
            require('telescope').setup {
                extensions = {
                    ['ui-select'] = {
                        require('telescope.themes').get_dropdown(),
                    },
                },
            }

            -- Enable Telescope extensions if they are installed
            pcall(require('telescope').load_extension, 'fzf')
            pcall(require('telescope').load_extension, 'ui-select')

            -- See `:help telescope.builtin`
            local builtin = require 'telescope.builtin'
            vim.keymap.set('n', '<leader>sh', builtin.help_tags, { desc = '[S]earch [H]elp' })
            vim.keymap.set('n', '<leader>sk', builtin.keymaps, { desc = '[S]earch [K]eymaps' })
            vim.keymap.set('n', '<leader>sf', builtin.find_files, { desc = '[S]earch [F]iles' })
            vim.keymap.set('n', '<leader>sg', builtin.live_grep, { desc = '[S]earch [F]iles' })

            -- vim.keymap.set('n', '<leader>ss', builtin.builtin, { desc = '[S]earch [S]elect Telescope' })
            -- vim.keymap.set('n', '<leader>sg', builtin.live_grep, { desc = '[S]earch by [G]rep' })
            -- vim.keymap.set('n', '<leader>s.', builtin.oldfiles, { desc = '[S]earch Recent Files ("." for repeat)' })
            vim.keymap.set('n', '<leader><leader>', builtin.buffers, { desc = '[ ] Find existing buffers' })

            vim.keymap.set('n', '<leader>/', function()
                builtin.current_buffer_fuzzy_find(require('telescope.themes').get_dropdown {
                    winblend = 10,
                    previewer = false,
                })
            end)

            vim.keymap.set('n', '<leader>s/', function()
                builtin.live_grep {
                    grep_open_files = true,
                    prompt_title = 'Live Grep in Open Files',
                }
            end)
        end,
    },
    {
        'mikavilpas/yazi.nvim',
        event = 'VeryLazy',
        dependencies = { 'folke/snacks.nvim' },
        opts = {
            open_for_directories = false,
            yazi_floating_window_border = 'rounded',
            floating_window_scaling_factor = 1,
            highlight_groups = {
                hovered_buffer = nil,
                hovered_buffer_in_same_directory = nil,
            },
            keymaps = {
                open_file_in_vertical_split = '<leader>l',
                open_file_in_horizontal_split = '<leader>j',
                -- grep_in_directory = 'n',
                copy_relative_path_to_selected_files = '<c-y>',
            },
            -- integrations = {
            --     grep_in_directory = function(directory)
            --         vim.api.nvim_set_current_dir = directory
            --     end,
            -- },
            set_keymappings_function = function(yazi_buffer_id, config, context)
                vim.keymap.set('t', '<leader>l', function()
                    vim.cmd 'q'
                    vim.cmd 'sleep 10m'
                end, { buffer = yazi_buffer_id, noremap = true })
                vim.keymap.set('t', '<Esc>', function()
                    vim.cmd 'q'
                    vim.cmd 'sleep 10m'
                    vim.cmd "echo expand('%:p')"
                end, { buffer = yazi_buffer_id, noremap = true })
            end,
        },
        init = function()
            vim.g.loaded_netrwPlugin = 1
        end,
    },
}

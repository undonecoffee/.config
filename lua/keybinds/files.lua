vim.keymap.set('n', '<leader>sc', function()
    require('telescope.builtin').find_files { cwd = '~/.config/nvim' }
end)

vim.keymap.set('n', '<leader>so', function()
    vim.api.nvim_set_current_dir '~/passwords'
    vim.cmd 'Yazi cwd'
end)

vim.keymap.set('n', '<leader>gt', function()
    vim.cmd "lua vim.api.nvim_set_current_dir(vim.fn.expand '%:p:h')"
    vim.cmd 'LazyGit'
end)

vim.keymap.set('n', '<leader>sr', function()
    local dir = vim.fn.expand '%:p:h'
    vim.cmd('cd ' .. dir)
    vim.cmd 'Yazi cwd'
end)


local telescope = require('telescope')
local pickers = require('telescope.pickers')
local finders = require('telescope.finders')
local conf = require('telescope.config').values
local actions = require('telescope.actions')
local action_state = require('telescope.actions.state')

-- List of files with custom names
local my_files = {
    { name = "firefox", path = "~/passwords/dotfiles/firefox.css" },
    { name = "nvim", path = "~/passwords/dotfiles/nvim/lua/keybinds/files.lua" },
    { name = "bash", path = "~/passwords/dotfiles/bash.sh" },
    { name = "sxhkd", path = "~/passwords/dotfiles/sxhkd/keybinds/app" },
    { name = "bspwm", path = "~/passwords/dotfiles/bspwm/bspwmrc" },
    { name = "kitty", path = "~/passwords/dotfiles/kitty/kitty.conf" },
    { name = "obsidian", path = "~/passwords/documentation/main/.obsidian/snippets/Colored Sidebar Items.css" },
}

local function open_custom_files()
    pickers.new({}, {
        prompt_title = "Custom Files",
        finder = finders.new_table {
            results = my_files,
            entry_maker = function(entry)
                return {
                    value = entry.path,      -- actual file path
                    display = entry.name,    -- what is shown in Telescope
                    ordinal = entry.name,    -- used for searching
                }
            end,
        },
        sorter = conf.generic_sorter({}),
        attach_mappings = function(prompt_bufnr)
            actions.select_default:replace(function()
                local selection = action_state.get_selected_entry()
                actions.close(prompt_bufnr)
                vim.cmd("edit " .. selection.value)
            end)
            return true
        end,
    }):find()
end

-- Keybind (example: <leader>f)
vim.keymap.set('n', '<leader>c', open_custom_files, { noremap = true, silent = true })

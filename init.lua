vim.g.mapleader = ' '
vim.g.maplocalleader = ' '
vim.g.have_nerd_font = false

local lazypath = vim.fn.stdpath 'data' .. '/lazy/lazy.nvim'
vim.opt.rtp:prepend(lazypath)

require('lazy').setup {
    spec = {
        { import = 'plugins' },
    },
}

require 'options'
require 'autocommands'

require 'keybinds.general'

require 'keybinds.files'
require 'keybinds.betterharpoon'
require 'keybinds.ai'
require 'keybinds.macros'
require 'keybinds.buffers'
require 'keybinds.documentation'

require 'macros.javascript'
require 'macros.markdown'
require 'macros.chattriggers'

require 'snippets.javascript'
require 'snippets.chattriggers'
require 'snippets.all'

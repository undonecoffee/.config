vim.g.mapleader = " "
vim.g.maplocalleader = " "
vim.g.have_nerd_font = false
vim.opt.spell = true

local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
vim.opt.rtp:prepend(lazypath)

require("lazy").setup({ spec = { { import = "plugins" } } })

-- require 'misc.horizontalRuler'

-- highlight Normal guibg=black
-- highlight LineNr guibg=black
-- highlight Comment guifg=#00FF00
-- highlight String guifg=#00FF00
-- highlight Function guifg=#00FF00
-- highlight Identifier guifg=#00FF00
-- highlight Statement guifg=#00FF00
require("options")
require("autocommands")

vim.o.background = "light"
require("keybinds.general")
require("keybinds.betterharpoon")
require("keybinds.files")
require("keybinds.ai")
require("keybinds.macros")
require("keybinds.buffers")
require("keybinds.documentation")

require("macros.javascript")
require("macros.markdown")
require("macros.chattriggers")

require("snippets.javascript")
require("snippets.chattriggers")
require("snippets.typst")
require("snippets.all")

vim.api.nvim_create_autocmd({ "BufRead", "BufNewFile" }, {
	pattern = "*.typ",
	callback = function()
		vim.cmd([[
        set spell
        hi SpellBad cterm=underline ctermbg=white gui=underline guifg=black
        setlocal wrapmargin=10
        setlocal formatoptions+=t
        setlocal linebreak
        ]])
	end,
})

vim.cmd("highlight MatchParen NONE")

vim.o.relativenumber = true
vim.o.number = true

vim.cmd [[cnoreabbrev 2 w]]
-- vim.cmd 'command 2 w'

vim.opt.mouse = ''
-- vim.opt.guicursor = 'n-v-c-i:block,ci-ve:ver25,r-cr:hor20,o:hor50'
vim.opt.guicursor = 'a:block'
-- vim.opt.guicursor = 'n-v-c-sm:block,i-ci-ve:ver25,r-cr-o:hor100'

-- vim.g.loaded_matchparen = 1

----
----
----

vim.o.cursorline = false
vim.o.scrolloff = 5

vim.opt.expandtab = true
vim.opt.shiftwidth = 4

vim.opt.fillchars = {
    fold = ' ',
    foldopen = '▾',
    foldclose = '▸',
    foldsep = '│',
}

vim.opt.laststatus = 0
vim.opt.ruler = false

vim.opt.termguicolors = true

-- Don't show the mode, since it's already in the status line
vim.o.showmode = false

vim.o.breakindent = true -- wrap thing ?

vim.o.undofile = true -- Save undo history

vim.o.ignorecase = true
vim.o.smartcase = true

vim.o.signcolumn = 'no' -- side thing. probably keep on

vim.o.updatetime = 250

vim.o.timeoutlen = 700

vim.o.splitright = true
vim.o.splitbelow = true

vim.o.list = true
vim.opt.listchars = { tab = '» ', trail = ' ', nbsp = '␣' }
vim.opt.fillchars = { eob = ' ' }

-- if performing an operation that would fail due to unsaved changes in the buffer (like `:q`),
-- instead raise a dialog asking if you wish to save the current file(s)
vim.o.confirm = true

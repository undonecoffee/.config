local docmaps = {

    j = 'javascript/javascript.md',

    cr = 'chattriggers/registers.md',
    cg = 'chattriggers/guis.md',
    cc = 'chattriggers/cheats.md',
    cmg = 'projects/chattriggers/EngineerModules/gui.md',
    cmi = 'projects/chattriggers/EngineerModules/imports.md',
    cmc = 'projects/chattriggers/EngineerModules/concepts.md',

    m = 'neovim/macros.md',
    s = 'neovim/snippets.md',
}

for k, v in pairs(docmaps) do
    vim.keymap.set('n', '<leader>d' .. k, function()
        vim.cmd('vsplit C:/Users/cameron/passwords/documentation/' .. v .. ' | setlocal nonumber norelativenumber | normal! gg0')
    end)
end

vim.keymap.set('n', '<leader>dp', function()
    -- might make it documentation/projects/chattriggers at some point
    -- vim.cmd 'cd C:/Users/cameron/passwords/documentation/projects/chattriggers'

    vim.cmd 'cd C:/Users/cameron/passwords/documentation/projects'
    vim.cmd 'Yazi cwd'
end)

local helpText = [[

  cr - chattriggers
  cg - chattriggers guis
  cc - chattriggers cheats

  p - projects

  m - neovim macros
  s - neovim snippets

  j - javascript documentation

]]

vim.keymap.set('n', '<leader>d', function()
    vim.notify(helpText, vim.log.levels.INFO)
end)

vim.keymap.set('n', '<leader>dh', function()
    vim.notify(helpText, vim.log.levels.INFO)
end)

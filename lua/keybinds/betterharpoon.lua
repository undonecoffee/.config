local keys = { 'y', 'u', 'i', 'o' }
local file_jumps = {}
local config_path = vim.fn.stdpath 'data' .. '/file_jumps.lua'

local function load_jumps()
    local ok, data = pcall(dofile, config_path)
    if ok and type(data) == 'table' then
        file_jumps = data
    end
end

local function save_jumps()
    local f = io.open(config_path, 'w')
    if f then
        f:write('return ' .. vim.inspect(file_jumps))
        f:close()
    end
end

local function set_jump(key)
    local file = vim.api.nvim_buf_get_name(0)
    if file == '' then
        vim.notify('No file to assign', vim.log.levels.WARN)
        return
    end
    file_jumps[key] = file
    save_jumps()
    vim.notify('Set ' .. key .. ' to ' .. file)
end

local function jump_to(key)
    local file = file_jumps[key]
    if file and vim.fn.filereadable(file) == 1 then
        vim.cmd('edit ' .. vim.fn.fnameescape(file))
    else
        vim.notify('No file assigned to ' .. key, vim.log.levels.WARN)
    end
end

local function remove_jump(key)
    if file_jumps[key] then
        file_jumps[key] = nil
        save_jumps()
        vim.notify('Removed file from ' .. key)
    else
        vim.notify('No file assigned to ' .. key, vim.log.levels.WARN)
    end
end

local function setup_keymaps()
    for _, key in ipairs(keys) do
        vim.keymap.set('n', '<leader>' .. key, function()
            jump_to(key)
        end)
        vim.keymap.set('n', '<A-' .. key .. '>', function()
            set_jump(key)
        end)
        vim.keymap.set('n', '<leader><A-' .. key .. '>', function()
            remove_jump(key)
        end)
    end
end

load_jumps()
setup_keymaps()

vim.keymap.set('n', '<A-p>', function()
    local lines = {}
    for _, key in ipairs(keys) do
        local path = file_jumps[key]
        if path then
            table.insert(lines, key .. ' - ' .. path)
        else
            table.insert(lines, key .. ' -')
        end
    end
    local output = table.concat(lines, '\n')
    vim.notify(output, vim.log.levels.INFO, { title = 'File Jumps' })
end, { desc = 'Paste file jumps to command line' })

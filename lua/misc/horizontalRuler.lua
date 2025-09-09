local ns = vim.api.nvim_create_namespace 'shape'
local extmark_ids = {}

function UpdateShapeAtCursor(offset)
    local pos = vim.api.nvim_win_get_cursor(0)
    local row = pos[1]
    local col = pos[2]
    row = row - 1
    local line = vim.api.nvim_get_current_line()

    -- Remove previous extmarks if they exist
    for _, id in ipairs(extmark_ids) do
        pcall(vim.api.nvim_buf_del_extmark, 0, ns, id)
    end
    extmark_ids = {}

    -- Place extmark after the cursor (default behavior)
    local target_col_after = col + (offset or 20)
    if target_col_after >= 0 and target_col_after < #line and not line:sub(target_col_after + 1, target_col_after + 1):match '^%s?$' then
        local id = vim.api.nvim_buf_set_extmark(0, ns, row, target_col_after, {
            virt_text = { { '|', 'Info' } },
            virt_text_pos = 'overlay',
        })
        table.insert(extmark_ids, id)
    end

    -- Place extmark before the cursor (20 chars before)
    local target_col_before = col - (offset or 20)
    if target_col_before >= 0 and target_col_before < #line and not line:sub(target_col_before + 1, target_col_before + 1):match '^%s?$' then
        local id = vim.api.nvim_buf_set_extmark(0, ns, row, target_col_before, {
            virt_text = { { '|', 'Info' } },
            virt_text_pos = 'overlay',
        })
        table.insert(extmark_ids, id)
    end
end

vim.api.nvim_create_autocmd({ 'CursorMoved', 'CursorMovedI' }, {
    callback = function()
        UpdateShapeAtCursor()
    end,
    desc = 'Update shape overlay 20 chars from and before cursor',
})

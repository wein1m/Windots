-- Delete empty ShaDa files.
vim.api.nvim_create_autocmd({ 'VimLeavePre' }, {
    group = vim.api.nvim_create_augroup('fuck_shada_temp', { clear = true }),
    pattern = { '*' },
    callback = function()
        local status = 0
        for _, f in ipairs(vim.fn.globpath(vim.fn.stdpath('data') .. '/shada', '*tmp*', false, true)) do
            if vim.tbl_isempty(vim.fn.readfile(f)) then
                status = status + vim.fn.delete(f)
            end
        end
        if status ~= 0 then
            vim.notify('Could not delete empty temporary ShaDa files.', vim.log.levels.ERROR)
            vim.fn.getchar()
        end
    end,
    desc = "Delete empty temp ShaDa files"
})

---Try to require the module, but do not throw error when one of them cannot be
---loaded. Without this, any error in one config file would result in the
---remaining config files not being loaded.
---@param module string
local function safeRequire(module)
    ---@type boolean, string
    local success, errmsg = pcall(require, module)
    if not success then
        local msg = ("Error loading `%s`: %s"):format(module, errmsg)
        vim.schedule(function() vim.notify(msg, vim.log.levels.ERROR) end)
    end
end

safeRequire("config.keymaps")
safeRequire("config.options")
safeRequire("config.lazy")
safeRequire("theme")
safeRequire("funcs/session")

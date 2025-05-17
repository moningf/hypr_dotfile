-- lua/myplugins/todo_config.lua

local M = {}

function M.setup()
    vim.api.nvim_create_autocmd("BufReadPost", {
        pattern = "todo.md",
        callback = function()
            vim.opt_local.wrap = true
            vim.opt_local.linebreak = true
            vim.opt_local.textwidth = 80
            vim.opt_local.colorcolumn = "80"

            vim.api.nvim_create_autocmd({ "TextChanged", "InsertLeave" }, {
                buffer = 0,
                callback = function()
                    vim.cmd("silent! write")
                end,
            })
        end,
    })
end

return M

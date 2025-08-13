-- https://github.com/cameronr/dotfiles/blob/main/nvim/lua/autocmds.lua
-- https://old.reddit.com/r/neovim/comments/1f6ck4q/adding_systemverilog_and_verilog_support_to_neovim/

local user_autocmds_augroup = vim.api.nvim_create_augroup('user_autocmds_augroup', {})

-- Setting the filetype for Verilog
vim.api.nvim_create_autocmd(
    { "BufNewFile", "BufRead" }, {
        group = user_autocmds_augroup,
        pattern = { "*.v" },
        command = "set filetype=verilog",
    }
)

-- Setting the filetype for SystemVerilog
vim.api.nvim_create_autocmd(
    { "BufNewFile", "BufRead" }, {
        group = user_autocmds_augroup,
        pattern = { "*.sv" },
        command = "set filetype=systemverilog",
    }
)


vim.api.nvim_create_autocmd(
    { "filetype" }, {
        pattern = {"c","systemverilog", "verilog"} ,
        callback = function()
            -- example: set tab width for c
            vim.bo.expandtab = true
            vim.bo.tabstop = 2
            vim.bo.softtabstop = 2
            vim.bo.shiftwidth = 2
        end,
 })

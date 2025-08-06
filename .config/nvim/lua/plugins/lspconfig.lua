-- INFO: read filenames on lsp/ directory and enable those
local lsp_files = {}
local lsp_dir = vim.fn.stdpath("config") .. "/lsp/"

for _, file in ipairs(vim.fn.globpath(lsp_dir, "*.lua", false, true)) do
    -- Read the first line of the file
    local f = io.open(file, "r")
    local first_line = f and f:read("*l") or ""
    if f then
        f:close()
    end
    -- Only include the file if it doesn't start with "-- disable"
    if not first_line:match("^%-%- disable") then
        local name = vim.fn.fnamemodify(file, ":t:r") -- `:t` gets filename, `:r` removes extension
        table.insert(lsp_files, name)
    end
end

vim.lsp.enable(lsp_files)

-- INFO: for mannual enable of lsp servers
--[[
vim.lsp.enable({
    "buf_ls",
    "dockerls",
    "gopls",
    "lua_ls",
    "rust_analyzer",
    "terraform_lsp",
    "ts_ls",
    "yamlls",
})

-- NOTE: no need to do this on nvim v0.11+ with vim.lsp.enable()
local capabilities = {
    textDocument = {
        foldingRange = {
            lineFoldingOnly = true,
            dynamicRegistration = false,
        },
    },
}

--]]

return {
  "neovim/nvim-lspconfig",
}


-- Reference:
-- https://github.com/edr3x/nvim/blob/main/plugin/lsp.lua (read LSP files func)
-- https://github.com/milanglacier/nvim/blob/main/lua/plugins/lsp.lua
--
-- vim: ts=2 sts=2 sw=2 et

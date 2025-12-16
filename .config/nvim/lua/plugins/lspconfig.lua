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

-- Setup LSP
local capabilities = require("cmp_nvim_lsp").default_capabilities()
vim.lsp.config("*", { capabilities = capabilities })

-- Diagnostic
vim.diagnostic.config({
  virtual_text = {
    -- source = 'if_many',
    source = true,
    spacing = 2,
    prefix = "●",
  },
  virtual_lines = {
    current_line = true,
  },
  update_in_insert = false,
  underline = true,
  severity_sort = true,
  float = {
    focusable = true,
    border = "rounded",
    header = "",
    prefix = "",
  },
  -- signs = require("config.signs")
  signs = {
    text = {
      [vim.diagnostic.severity.ERROR] = '',
      [vim.diagnostic.severity.WARN] = '',
      [vim.diagnostic.severity.HINT] = '',
      [vim.diagnostic.severity.INFO] = '',
    }
  }
})

vim.keymap.set('n', 'gK', function()
  local new_config = not vim.diagnostic.config().virtual_lines
  vim.diagnostic.config({ virtual_lines = new_config })
end, { desc = 'LSP Toggle diagnostic virtual_lines' })

return {
  "neovim/nvim-lspconfig",
}


-- Reference:
-- https://github.com/edr3x/nvim/blob/main/plugin/lsp.lua (read LSP files func)
-- https://github.com/milanglacier/nvim/blob/main/lua/plugins/lsp.lua
-- https://github.com/catgoose/nvim/blob/main/lua/config/lsp/diagnostic.lua
--
-- vim: ts=2 sts=2 sw=2 et

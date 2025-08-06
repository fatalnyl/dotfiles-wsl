local lsp_to_executable = {
  lua_ls = 'lua-language-server',
}

local lsp_to_executable = {
    --r_language_server = 'R',
    --basedpyright = 'basedpyright',
    --texlab = 'texlab',
    --rust_analyzer = 'rust-analyzer',
    --gopls = 'gopls',
    lua_ls = 'lua-language-server',
    --clangd = 'clangd',
    --efm = 'efm-langserver',
    --bashls = 'bash-language-server',
    --sqls = 'sqls',
}

return {
  "neovim/nvim-lspconfig",
  
}


-- Reference:
-- https://github.com/milanglacier/nvim/blob/main/lua/plugins/lsp.lua
--
-- vim: ts=2 sts=2 sw=2 et

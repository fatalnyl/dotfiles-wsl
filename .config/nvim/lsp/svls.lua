---@type vim.lsp.Config
return {
    ---root_dir = function(fname)
    ---  return require("lspconfig.util").find_git_ancestor(fname)
    ---end,
    cmd = { "svls" },
    filetypes = { "verilog", "systemverilog" },
}

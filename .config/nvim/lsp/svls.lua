---@type vim.lsp.config

return {
    -- seems like function(fname) does not work anymore? after nvim 0.11
    -- root_dir = function(bufnr, on_dir)
      -- print(bufnr, on_dir)
      --local fname = vim.api.nvim_buf_get_name(bufnr)
      --local test = require("lspconfig.util").find_git_ancestor(fname)
      -- return test
    -- end,
    cmd = { "svls" },
    filetypes = { "verilog", "systemverilog" },
}

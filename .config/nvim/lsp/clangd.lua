---@type vim.lsp.Config

return {
  -- Command and command-line flags to run with
  cmd = {'clangd', '--background-index', '--clang-tidy'},
  -- Customize clangd's behaviour:
  init_options = {
    fallbackFlags = { '-std=c++17' }
  },
}

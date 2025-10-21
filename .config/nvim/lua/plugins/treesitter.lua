return {
  'nvim-treesitter/nvim-treesitter',
  lazy = false,
  branch = 'main',
  build = ':TSUpdate',
  config = function()
      -- NOTE: opts won't work properly
      require('nvim-treesitter').setup {
        -- A list of parser names, or "all" (the listed parsers MUST always be installed)
        -- Directory to install parsers and queries to
        -- install_dir = vim.fn.stdpath('data') .. '/site',
        -- ensure_installed = { "c", "cpp", "lua", "vim", "vimdoc", "query", "markdown", "markdown_inline" },
        -- Automatically install missing parsers when entering buffer
        -- Recommendation: set to false if you don't have `tree-sitter` CLI installed locally
        -- auto_install = true,
      }
      require('nvim-treesitter').install{"c", "cpp", "lua", "vimdoc", "query", "markdown", "markdown_inline", "python", "systemverilog"}
  end
}


-- vim: ts=2 sts=2 sw=2 et

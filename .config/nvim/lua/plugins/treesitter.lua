return {
  'nvim-treesitter/nvim-treesitter',
  lazy = false,
  branch = 'main',
  build = ':TSUpdate',
  main = 'nvim-treesitter.config', -- Sets main module to use for opts
  opts = {
    ensure_installed = { "c", "cpp", "lua", "vim", "vimdoc", "query", "markdown", "markdown_inline" },
    auto_install = true,
      highlight = {
        enable = true,
        -- Some languages depend on vim's regex highlighting system (such as Ruby) for indent rules.
        --  If you are experiencing weird indenting issues, add the language to
        --  the list of additional_vim_regex_highlighting and disabled languages for indent.
        additional_vim_regex_highlighting = { 'ruby' },
      },
      indent = { enable = true, disable = { 'ruby' } },
  }
  --[[ config = function()
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
  end ]]
}


-- vim: ts=2 sts=2 sw=2 et

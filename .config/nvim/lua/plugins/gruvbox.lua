return {
  { 
    "ellisonleao/gruvbox.nvim", 
    priority = 1000, 
    config = function ()

      -- Default options:
      require("gruvbox").setup({
        terminal_colors = true, -- add neovim terminal colors
        undercurl = true,
        underline = true,
        bold = true,
        italic = {
          strings = true,
          emphasis = true,
          comments = true,
          operators = false,
          folds = true,
        },
        strikethrough = true,
        invert_selection = false,
        invert_signs = false,
        invert_tabline = false,
        invert_intend_guides = false,
        inverse = true, -- invert background for search, diffs, statuslines and errors
        contrast = "hard", -- can be "hard", "soft" or empty string
        palette_overrides = {
          dark0_hard = "#1b1b1b",
          dark1 = "#282828",
          dark2 = "#3b3634",
        },
        overrides = {},
        dim_inactive = false,
        transparent_mode = false,
      })

      -- Load the colorscheme here.
      -- Like many other themes, this one has different styles, and you could load
      -- any other, such as 'tokyonight-storm', 'tokyonight-moon', or 'tokyonight-day'.
      vim.cmd("colorscheme gruvbox")
    end,
    opts = ...
  },
}

-- vim: ts=2 sts=2 sw=2 et

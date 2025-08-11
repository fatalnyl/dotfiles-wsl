return {
    'nvim-lualine/lualine.nvim',
    dependencies = { 
      'nvim-tree/nvim-web-devicons',
      "bwpge/lualine-pretty-path",
    },
    opts={
      sections = {
        lualine_a = {'mode'},
        lualine_b = {'branch', 'diff', 'diagnostics'},
        lualine_c = {'pretty_path'},
        lualine_x = {'lsp_status', 'encoding', 'fileformat', 'filetype'},
        lualine_y = {'progress'},
        lualine_z = {'location'}
      },
      options = {
        theme='gruvbox'
      }
    },
}

-- vim: ts=2 sts=2 sw=2 et

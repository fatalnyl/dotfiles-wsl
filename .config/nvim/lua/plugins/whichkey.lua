return {
  'folke/which-key.nvim',
  event = "VeryLazy",
  opts = {
    -- needed to fix conflict with <c-d> mapping
    --[[ keys = {
      scroll_down = "<c-s-d>",
      scroll_up = "<c-s-u>",
    }, ]]
  },
  keys = {
    {
      "<leader>?",
      function()
        require("which-key").show({ global = false })
      end,
      desc = "Buffer Local Keymaps (which-key)",
    },
  },
}
-- vim: ts=2 sts=2 sw=2 et

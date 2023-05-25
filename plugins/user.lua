return {
  -- You can also add new plugins here as well:
  -- Add plugins, the lazy syntax
  -- "andweeb/presence.nvim",
  -- {
  --   "ray-x/lsp_signature.nvim",
  --   event = "BufRead",
  --   config = function()
  --     require("lsp_signature").setup()
  --   end,
  -- },
  {
    "folke/todo-comments.nvim",
    dependencies = "nvim-lua/plenary.nvim",
    opts = {},
    event = "User AstroFile",
    cmd = { "TodoQuickFix" },
    keys = { {
      "<leader>T",
      "<cmd>TodoTelescope<cr>",
      desc = "Open TODOs in Telescope",
    } },
  },
  {
    "whonore/Coqtail",
    opts = {},
  },
  {
    "tomtomjhj/coq-lsp.nvim",
    opts = {},
  },
  {
    -- https://github.com/toppair/peek.nvim/issues/28
    "toppair/peek.nvim",
    run = "deno task --quiet build:fast",
    keys = {
      {
        "<leader>mp",
        "<cmd>lua require('peek').open()<cr>",
        desc = "Open Markdown Preview",
      },
      {
        "<leader>mc",
        "<cmd>lua require('peek').close()<cr>",
        desc = "Close Markdown Preview",
      },
    },
    opts = {
      auto_load = true, -- whether to automatically load preview when
      -- entering another markdown buffer
      close_on_bdelete = true, -- close preview window on buffer delete

      syntax = true, -- enable syntax highlighting, affects performance

      theme = "dark", -- 'dark' or 'light'

      update_on_change = true,

      app = "webview", -- 'webview', 'browser', string or a table of strings
      -- explained below

      filetype = { "markdown" }, -- list of filetypes to recognize as markdown

      -- relevant if update_on_change is true
      throttle_at = 200000, -- start throttling when file exceeds this
      -- amount of bytes in size
      throttle_time = "auto", -- minimum amount of time in milliseconds
      -- that has to pass before starting new render
    },
  },
  {
    "filipdutescu/renamer.nvim",
    opts = {},
    keys = {
      {
        "<leader>rn",
        '<cmd>lua require("renamer").rename()<cr>',
        desc = "Rename a variable",
      },
    },
  },
}

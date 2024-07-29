return {
  "epwalsh/obsidian.nvim",
  version = "*", -- recommended, use latest release instead of latest commit
  lazy = true,
  ft = "markdown",
  -- Replace the above line with this if you only want to load obsidian.nvim for markdown files in your vault:
  -- event = {
  --   -- If you want to use the home shortcut '~' here you need to call 'vim.fn.expand'.
  --   -- E.g. "BufReadPre " .. vim.fn.expand "~" .. "/my-vault/**.md"
  --   "BufReadPre path/to/my-vault/**.md",
  --   "BufNewFile path/to/my-vault/**.md",
  -- },
  dependencies = {
    -- Required
    "nvim-lua/plenary.nvim",
    -- Optional
    "echasnovski/mini.pick",
    "ibhagwan/fzf-lua",
    "preservim/vim-markdown",
  },
  opts = {
    workspaces = {
      {
        name = "work",
        path = "~/Projects/notes/src/twilio",
        overrides = {
          notes_subdir = "twilio",
        },
      },
      {
        name = "personal",
        path = "~/Projects/notes/src/personal",
        overrides = {
          notes_subdir = "personal",
        },
      },
    },
  },
  event = "VeryLazy",
}

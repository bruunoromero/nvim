return {
  {
    "nvim-neo-tree/neo-tree.nvim",
    opts = {
      close_if_last_window = true,
      filesystem = {
        filtered_items = {
          hide_dotfiles = false,
          hide_gitignored = false,
        },
      },
      window = {
        position = "right",
      },
    },
  },
  {
    "mrjones2014/smart-splits.nvim",
    event = "VeryLazy",
    keys = {
      {
        "<C-h>",
        function() require("smart-splits").move_cursor_left() end,
        desc = "Move to split left",
        mode = { "n", "v" },
      },
      {
        "<C-j>",
        function() require("smart-splits").move_cursor_down() end,
        desc = "Move to split down",
        mode = { "n", "v" },
      },
      {
        "<C-k>",
        function() require("smart-splits").move_cursor_up() end,
        desc = "Move to split up",
        mode = { "n", "v" },
      },
      {
        "<C-l>",
        function() require("smart-splits").move_cursor_right() end,
        desc = "Move to split right",
        mode = { "n", "v" },
      },
    },
  },
  {
    "NickvanDyke/opencode.nvim",
    dependencies = {
      "folke/snacks.nvim",
      {
        "AstroNvim/astrocore",
        event = "User AstroFile",
        opts = function(_, opts) opts.mappings.n["<leader>o"] = { desc = " Opencode" } end,
      },
    },
    opts = {
      -- Your configuration, if any
    },
    keys = {
      { "<leader>oA", function() require("opencode").ask() end, desc = "Ask opencode" },
      {
        "<leader>oa",
        function() require("opencode").ask "@cursor: " end,
        desc = "Ask opencode about this",
        mode = "n",
      },
      {
        "<leader>oa",
        function() require("opencode").ask "@selection: " end,
        desc = "Ask opencode about selection",
        mode = "v",
      },
      { "<leader>oo", function() require("opencode").toggle() end, desc = "Toggle opencode" },
      { "<leader>on", function() require("opencode").command "session_new" end, desc = "New session" },
      { "<leader>oy", function() require("opencode").command "messages_copy" end, desc = "Copy last message" },
      {
        "<S-C-u>",
        function() require("opencode").command "messages_half_page_up" end,
        desc = "Scroll messages up",
      },
      {
        "<S-C-d>",
        function() require("opencode").command "messages_half_page_down" end,
        desc = "Scroll messages down",
      },
      {
        "<leader>op",
        function() require("opencode").select_prompt() end,
        desc = "Select prompt",
        mode = { "n", "v" },
      },
      -- Example: keymap for custom prompt
      {
        "<leader>oe",
        function() require("opencode").prompt "Explain @cursor and its context" end,
        desc = "Explain code near cursor",
      },
    },
  },
  {
    "elixir-tools/elixir-tools.nvim",
    version = "*",
    event = { "BufReadPre", "BufNewFile" },
    config = function()
      local elixir = require "elixir"
      local null_ls = require "null-ls"

      elixir.setup {
        elixirls = { enable = true, cmd = { "/opt/homebrew/bin/elixir-ls" } },
      }

      null_ls.register(null_ls.builtins.formatting.mix)
    end,
    dependencies = {
      "nvim-lua/plenary.nvim",
    },
  },
  {
    "akinsho/toggleterm.nvim",
    opts = {
      size = function(term)
        if term.direction == "horizontal" then
          return 20
        elseif term.direction == "vertical" then
          return vim.o.columns * 0.4
        end
      end,
      direction = "vertical",
    },
  },
}

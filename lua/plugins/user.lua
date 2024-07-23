-- You can also add or configure plugins by creating files in this `plugins/` folder
-- Here are some examples:

---@type LazySpec
return {
  {
    "nvim-neo-tree/neo-tree.nvim",
    opts = {
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
    "hrsh7th/nvim-cmp",
    opts = function(_, opts)
      local cmp = require "cmp"

      opts.preselect = true
      opts.confirmation = { completeopt = "menu,menuone,noinsert" }
      opts.mapping["<CR>"] = cmp.mapping.confirm { select = true }
    end,
  },
  {
    "windwp/nvim-autopairs",
    opts = {
      enable_check_bracket_line = false,
    },
  },

  {
    "weirongxu/plantuml-previewer.vim",
    event = "VeryLazy",
    dependencies = {
      {
        "aklt/plantuml-syntax",
        ft = { "puml" },
        event = "VeryLazy",
      },
      {
        "tyru/open-browser.vim",
        event = "VeryLazy",
      },
    },
  },
}

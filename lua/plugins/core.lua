return {
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "catppuccin",
    },
  },
  {
    "snacks.nvim",
    opts = {
      scroll = { enabled = false },
      indent = { animate = { enabled = false } },
      notifier = { enabled = false },
      terminal = {
        win = { position = "right" },
      },
    },
  },
  {
    "max397574/better-escape.nvim",
    vscode = true,
    opts = {},
  },
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
}

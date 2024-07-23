-- AstroCommunity: import any community modules here
-- We import this file in `lazy_setup.lua` before the `plugins/` folder.
-- This guarantees that the specs are processed before any user plugins.

---@type LazySpec
return {
  "AstroNvim/astrocommunity",
  { import = "astrocommunity.colorscheme.catppuccin" },
  { import = "astrocommunity.motion.nvim-surround" },
  { import = "astrocommunity.pack.astro" },
  { import = "astrocommunity.pack.clojure" },
  { import = "astrocommunity.pack.elixir-phoenix" },
  { import = "astrocommunity.pack.gleam" },
  { import = "astrocommunity.pack.kotlin" },
  { import = "astrocommunity.pack.lua" },
  { import = "astrocommunity.pack.swift" },
  { import = "astrocommunity.pack.tailwindcss" },
  { import = "astrocommunity.pack.terraform" },
  { import = "astrocommunity.pack.typescript" },
  { import = "astrocommunity.recipes.vscode" },
  { import = "astrocommunity.utility.noice-nvim" },
  { "gpanders/nvim-parinfer", enabled = false },
  {
    "Olical/conjure",
    ft = { "clojure", "lua" },
    dependencies = {
      "tpope/vim-dispatch",
      "radenling/vim-dispatch-neovim",
      "clojure-vim/vim-jack-in",
    },
    init = function()
      vim.g["conjure#filetype#rust"] = false
      vim.g["conjure#mapping#doc_word"] = false
      vim.g["conjure#log#botright"] = true
      vim.g["conjure#eval#comment_prefix"] = ";;"
      vim.g["conjure#extract#tree_sitter#enabled"] = true
      vim.g["conjure#extract#context_header_lines"] = 100
      vim.g["conjure#client#clojure#nrepl#connection#auto_repl#enabled"] = false
    end,
  },
}

-- AstroCommunity: import any community modules here
-- We import this file in `lazy_setup.lua` before the `plugins/` folder.
-- This guarantees that the specs are processed before any user plugins.

---@type LazySpec
return {
  "AstroNvim/astrocommunity",
  { import = "astrocommunity.colorscheme.catppuccin" },
  { import = "astrocommunity.completion.avante-nvim" },
  { import = "astrocommunity.completion.copilot-lua-cmp" },
  { import = "astrocommunity.editing-support.mcphub-nvim" },
  { import = "astrocommunity.utility.noice-nvim" },
  { import = "astrocommunity.pack.biome" },
  { import = "astrocommunity.pack.elixir-phoenix" },
  { import = "astrocommunity.pack.laravel" },
  { import = "astrocommunity.pack.lua" },
  { import = "astrocommunity.pack.python" },
  { import = "astrocommunity.pack.swift" },
  { import = "astrocommunity.pack.typescript" },
}

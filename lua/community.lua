---@type LazySpec
return {
  "AstroNvim/astrocommunity",
  { import = "astrocommunity.pack.lua" },
  { import = "astrocommunity.pack.typescript-deno" },
  { import = "astrocommunity/syntax/vim-sandwich" },
  { import = "astrocommunity.editing-support.undotree" },
  { import = "astrocommunity.editing-support.quick-scope" },
  { import = "astrocommunity.editing-support.nvim-treesitter-context" },
}

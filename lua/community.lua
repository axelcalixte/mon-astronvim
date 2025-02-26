---@type LazySpec
return {
   "AstroNvim/astrocommunity",
   { import = "astrocommunity.pack.lua" },
   { import = "astrocommunity.pack.typescript-deno" },
   { import = "astrocommunity/syntax/vim-sandwich" },
   { import = "astrocommunity.editing-support.undotree" },
   { import = "astrocommunity/completion/cmp-git" },
   { import = "astrocommunity.editing-support.nvim-treesitter-context" },
}
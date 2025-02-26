---@type LazySpec
return {
   "AstroNvim/astrocore",
   ---@type AstroCoreOpts
   opts = {
      diagnostics = {
         virtual_text = false,
         underline = true,
      },
      autocmds = {
         axel = {
            {
               event = { "FileType" },
               desc = "FormatOptions without after/ftplugin/*",
               callback = function() vim.opt.formatoptions:remove { "c", "r", "o" } end,
            },
         },
      },
      on_keys = {
         auto_hlsearch = {
            function(char)
               if vim.fn.mode() == "n" then
                  local new_hlsearch = vim.tbl_contains({ "<CR>", "n", "N", "*", "#", "?", "/" }, vim.fn.keytrans(char))
                  if vim.opt.hlsearch:get() ~= new_hlsearch then vim.opt.hlsearch = new_hlsearch end
               end
            end,
         },
      },
      mappings = {
         v = {
            J = { ":m '>+1<CR>gv=gv", desc = "Move selection down" },
            K = { ":m '<-2<CR>gv=gv", desc = "Move selection up" },
         },
         i = {
            ["C-l"] = { "<c-g>u<Esc>[s1z=`]a<c-g>u", desc = "Fix last dictionary error" },
         },
         n = {
            ["<C-d>"] = { "<C-d>zz" },
            ["<C-u>"] = { "<C-u>zz" },
            n = { "nzzzv" },
            N = { "Nzzzv" },
            ["<leader>Y"] = { [["+Y]] },
            ["<leader>y"] = { [["+y]] },
            ["<leader>p"] = { [["+p]] },
         },
         x = {
            ["<leader>p"] = { [["_dP]] },
         },
      },
      options = {
         opt = {
            scrolloff = 5,
         },
      },
   },
}
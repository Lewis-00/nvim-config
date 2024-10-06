return {
   {
      "catppuccin/nvim",
      name = "catppuccin",
      priority = 1000,
      opts = {
         term_colors = true,
         transparent_background = true,
         dim_inactive = {
            enabled = false, -- dims the background color of inactive window
            shade = "dark",
            percentage = 0.15, -- percentage of the shade to apply to the inactive window
         },
         integrations = {
            cmp = true,
            gitsigns = true,
            treesitter = true,
            harpoon = true,
            telescope = true,
            mason = true,
            noice = true,
            notify = true,
            which_key = true,
            fidget = true,
            native_lsp = {
               enabled = true,
               virtual_text = {
                  errors = { "italic" },
                  hints = { "italic" },
                  warnings = { "italic" },
                  information = { "italic" },
               },
               underlines = {
                  errors = { "underline" },
                  hints = { "underline" },
                  warnings = { "underline" },
                  information = { "underline" },
               },
               inlay_hints = {
                  background = true,
               },
            },
            mini = {
               enabled = true,
               indentscope_color = "",
            },
         },
      },
   },
   {
      -- Default options:
      "rebelot/kanagawa.nvim",
      config = function()
         require("kanagawa").setup({
            compile = false, -- enable compiling the colorscheme
            undercurl = true, -- enable undercurls
            commentStyle = { italic = true },
            functionStyle = {},
            keywordStyle = { italic = true },
            statementStyle = { bold = true },
            typeStyle = {},
            transparent = true, -- do not set background color
            dimInactive = false, -- dim inactive window `:h hl-NormalNC`
            terminalColors = true, -- define vim.g.terminal_color_{0,17}
            colors = { -- add/modify theme and palette colors
               palette = {},
               theme = { wave = {}, lotus = {}, dragon = {}, all = {} },
            },
            overrides = function(colors) -- add/modify highlights
               return {}
            end,
            theme = "wave", -- Load "wave" theme when 'background' option is not set
            background = { -- map the value of 'background' option to a theme
               dark = "wave", -- try "dragon" ! light = "lotus",
            },
         })
      end,
   },
   {
      "navarasu/onedark.nvim",
   },
}

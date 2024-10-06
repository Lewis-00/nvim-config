return {
   "stevearc/conform.nvim",
   event = { "BufReadPre", "BufNewFile" },
   config = function()
      local conform = require("conform")
      local prettier = require("conform.formatters.prettier")
      local util = require("conform.util")

      -- Adding Prettier arguments
      util.add_formatter_args(prettier, {
         "--print-width",
         "120", -- Set max line width
         "--trailing-comma",
         "none", -- No trailing commas
         "--single-quote",
         "true", -- Use single quotes
         "--tab-width",
         "2", -- Set indentation to 2 spaces
         "--semi",
         "true", -- Ensure semicolons are used
         "--bracketSpacing",
         "true", -- Add space between brackets in object literals
         "--arrow-parens",
         "avoid", -- Avoid parentheses when there's a single parameter in arrow function
      })

      conform.setup({
         formatters_by_ft = {
            javascript = { "prettier" },
            typescript = { "prettier" },
            javascriptreact = { "prettier" },
            typescriptreact = { "prettier" },
            svelte = { "prettier" },
            css = { "prettier" },
            html = { "prettier" },
            json = { "prettier" },
            yaml = { "prettier" },
            markdown = { "prettier" },
            graphql = { "prettier" },
            liquid = { "prettier" },
            lua = { "stylua" },
            python = { "isort", "black" },
         },
         format_on_save = {
            lsp_fallback = true,
            async = false,
            timeout_ms = 1000,
         },
      })

      vim.keymap.set({ "n", "v" }, "<leader>mp", function()
         conform.format({
            lsp_fallback = true,
            async = false,
            timeout_ms = 1000,
         })
      end, { desc = "Format file or range (in visual mode)" })
   end,
}

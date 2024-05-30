return {
  {
    "catppuccin/nvim",
    config = function()
      require("catppuccin").setup({
        integrations = {
          cmp = true,
          gitsigns = true,
          harpoon = true,
          mason = true,
          native_lsp = { enabled = true },
          symbols_outline = true,
          telescope = true,
          treesitter = true,
          treesitter_context = true,
        },
      })

      vim.cmd.colorscheme("catppuccin-macchiato")

      -- Hide all semantic highlights until upstream issues are resolved (https://github.com/catppuccin/nvim/issues/480)
      for _, group in ipairs(vim.fn.getcompletion("@lsp", "highlight")) do
        vim.api.nvim_set_hl(0, group, {})
      end
    end,
  },
}

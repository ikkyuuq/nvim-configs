return {
  "supermaven-inc/supermaven-nvim",
  config = function()
    require("supermaven-nvim").setup({
      keymaps = {
        accept_suggestion = "<Tab>",
        clear_suggestion = "<C-c>",
        accept_word = "<C-w>",
      },
      color = {
        suggestion_color = "#dfc4ff",
        cterm = 244,
      },
      disable_keymaps = false,  -- disables built in keymaps for more manual controls
      enable_autotag = true,    -- enables autotag for supermaven
      enable_formatting = true, -- enables formatting
      enable_lsp = true,        -- enables lsp integrations
    })
  end,
}

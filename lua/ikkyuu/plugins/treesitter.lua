-- lua/plugins/treesitter.lua
return {
  "nvim-treesitter/nvim-treesitter",
  build = ":TSUpdate",
  opts = {
    highlight = { enable = true },
    indent = { enable = true },
      ensure_installed = {
          "javascript",
          "typescript",
          "tsx",
          "html",
          "css",
          "vue",
          "lua",
          "json",
          "bash",
          "c",
          "go",
        },
    },
}

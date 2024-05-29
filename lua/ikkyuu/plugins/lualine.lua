return {
    'nvim-lualine/lualine.nvim',
    dependencies = { 'nvim-tree/nvim-web-devicons' }, 
    config = function()
      require("lualine").setup({
	options = {
	  theme = "catppuccin",
	  globalstatus = true,
	  component_separators = { left = "", right = "" },
	  section_separators = { left = "█", right = "█" },
	},
	sections = {
	  lualine_b = {
	    { "branch", icon = "", fmt = truncate_branch_name },
	    "diff",
	    "diagnostics",
	  },
	  lualine_c = {
	    { "filename", path = 1 },
	  },
	  lualine_x = {
	    "filetype",
	  },
	},
      })
    end
}

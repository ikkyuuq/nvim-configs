local M = {}

-- Initialize the global flag
vim.g.cmp_toggle_flag = false

-- Check if the current buffer is not of type 'prompt'
local function normal_mode()
  return vim.api.nvim_buf_get_option(0, "buftype") ~= "prompt"
end

-- Configure cmp with dynamic enabling based on the global flag
local function configure_cmp()
  local ok, cmp = pcall(require, "cmp")
  if ok then
    cmp.setup({
      enabled = function()
        if vim.g.cmp_toggle_flag then
          return normal_mode()
        else
          return false
        end
      end,
    })
  else
    print("cmp not available, please install it")
  end
end

-- Toggle the cmp configuration
M.toggle_cmp = function()
  vim.g.cmp_toggle_flag = not vim.g.cmp_toggle_flag
  if vim.g.cmp_toggle_flag then
    print("cmp on")
  else
    print("cmp off")
  end
  configure_cmp()
end

return M

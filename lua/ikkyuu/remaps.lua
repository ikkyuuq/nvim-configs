local key = key

key.set("n", "<leader>pv", ":Explore<CR>")

key.set("n", "<leader><leader>", ":so<CR>")

key.set("n", "<leader>w", ":w<CR>")
key.set("n", "<leader>q", ":q<CR>")
key.set("n", "<leader>z", ":wr<CR>")

key.set("v", "J", ":m '>+1<CR>gv=gv")
key.set("v", "K", ":m '<-2<CR>gv=gv")

key.set("n", "<leader>nh", ":noh<CR>")

key.set("i", "jj", "<ESC>")

key.set("n", "<C-a>", "ggVG")

key.set("n", "<c-k>", ":wincmd k<CR>")
key.set("n", "<c-j>", ":wincmd j<CR>")
key.set("n", "<c-h>", ":wincmd h<CR>")
key.set("n", "<c-l>", ":wincmd l<CR>")
key.set("n", "<leader>m", ":MaximizerToggle<CR>")
key.set("n", "<leader>sv", ":vsplit<CR>")
key.set("n", "<leader>sh", ":split<CR>")

-- Copilot remaps
vim.g.copilot_no_tab_map = true
key.set('i', '<C-a>', 'copilot#Accept("\\<CR>")', {
  expr = true,
  replace_keycodes = false
})
key.set('i', '<C-]>', '<Plug>(copilot-dismiss)')
key.set('i', '<C-j>', '<Plug>(copilot-previous)')
key.set('i', '<C-k>', '<Plug>(copilot-previous)')

-- Press 'F' to format the entire buffer
key.set("n", "F", function()
  local cursor_pos = vim.api.nvim_win_get_cursor(0)
  vim.cmd('normal! gg=Gzz')
  vim.api.nvim_win_set_cursor(0, cursor_pos)
end)

-- Press 'Space + s' to search for the word under the cursor and replace all inline
key.set("n", "<leader>s", [[:s/\<<C-r><C-w>\>//gI<Left><Left><Left>]])
-- Press 'S' for quick find/replace for the word under the cursor_row
key.set("n", "S", function()
  local cmd = ":%s/<C-r><C-w>/<C-r><C-w>/gI<Left><Left><Left>"
  local keys = vim.api.nvim_replace_termcodes(cmd, true, false, true)
  vim.api.nvim_feedkeys(keys, "n", false)
end)

-- Center buffer while navigating
key.set("n", "<C-u>", "<C-u>zz")
key.set("n", "<C-d>", "<C-d>zz")
key.set("n", "{", "{zz")
key.set("n", "}", "}zz")
key.set("n", "N", "Nzz")
key.set("n", "n", "nzz")
key.set("n", "G", "Gzz")
key.set("n", "gg", "ggzz")
key.set("n", "<C-i>", "<C-i>zz")
key.set("n", "<C-o>", "<C-o>zz")
key.set("n", "%", "%zz")
key.set("n", "*", "*zz")
key.set("n", "#", "#zz")

-- Press 'H', 'L' to jump to start/end of a line (first/last char)
key.set("n", "L", "$")
key.set("n", "H", "^")

key.set("n", "<leader>ih", function()
  vim.lsp.inlay_hint.enable(not vim.lsp.inlay_hint.is_enabled({}))
end)


-- Diagnostics

-- Goto next diagnostic of any severity
key.set("n", "]d", function()
  vim.diagnostic.goto_next({})
  vim.api.nvim_feedkeys("zz", "n", false)
end)

-- Goto previous diagnostic of any severity
key.set("n", "[d", function()
  vim.diagnostic.goto_prev({})
  vim.api.nvim_feedkeys("zz", "n", false)
end)

-- Goto next error diagnostic
key.set("n", "]e", function()
  vim.diagnostic.goto_next({ severity = vim.diagnostic.severity.ERROR })
  vim.api.nvim_feedkeys("zz", "n", false)
end)

-- Goto previous error diagnostic
key.set("n", "[e", function()
  vim.diagnostic.goto_prev({ severity = vim.diagnostic.severity.ERROR })
  vim.api.nvim_feedkeys("zz", "n", false)
end)

-- Goto next warning diagnostic
key.set("n", "]w", function()
  vim.diagnostic.goto_next({ severity = vim.diagnostic.severity.WARN })
  vim.api.nvim_feedkeys("zz", "n", false)
end)

-- Goto previous warning diagnostic
key.set("n", "[w", function()
  vim.diagnostic.goto_prev({ severity = vim.diagnostic.severity.WARN })
  vim.api.nvim_feedkeys("zz", "n", false)
end)

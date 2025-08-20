vim.cmd("colorscheme default ") -- Ensure the default theme is loaded
vim.api.nvim_set_hl(0, "Normal", { bg = "#000000" })
-- vim.api.nvim_set_hl(0, "Keyword", { bold = true })
vim.api.nvim_set_hl(0, "Comment", { italic = true, fg = "#626262"})
vim.api.nvim_set_hl(0, "markdownCode", { fg = "#5AAC84"})
vim.cmd([[ highlight StatusLine guibg=#1e1e2e guifg=#cdd6f4 ]])

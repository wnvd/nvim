return {
  'tjdevries/express_line.nvim',
  priority = 8000,
  config = function ()
    require('el').setup({})
  end,
  init = function ()
    -- vim.cmd([[ highlight StatusLine guibg=#1e1e2e guifg=#cdd6f4 ]])
  end
}

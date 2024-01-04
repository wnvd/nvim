return {
  {
    "lukas-reineke/indent-blankline.nvim",
    event = "BufEnter",
    main = "ibl",
    opts = {},
    config = function()
      vim.opt.list = true
      vim.opt.listchars:append "eol:↴"
      require("ibl").setup({
        indent = { char = "▏" },
        scope = {
          enabled = false,
        }
      })
    end,
  },
}

return {
  "shellRaining/hlchunk.nvim",
  event = { "UIEnter" },
  config = function()
    require("hlchunk").setup({
      chunk = {
        enable = true,
        notify = true,
        use_treesitter = true,
        chars = {
          right_arrow = "─",
        },
      },
      indent = {
        enable = false,
        use_treesitter = true,
        chars = {
          "⏐",
        },
      },
      line_num = {
        enable = false,
      },
      blank = {
        enable = false,
      }
    })
  end
}

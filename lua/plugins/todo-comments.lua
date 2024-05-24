return {
  "folke/todo-comments.nvim",
  dependencies = { "nvim-lua/plenary.nvim" },
  opts = {
    gui_style = {
      fg = "BOLD"
    },
    highlight = {
      before = "fg",
      keyword = "fg",
      after = ""
    }
  }
}

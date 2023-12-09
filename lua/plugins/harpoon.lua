return {
  "ThePrimeagen/harpoon",
  requires = { { "nvim-lua/plenary.nvim" } },
  config = function()
    local mark = require("harpoon.mark")
    local ui = require("harpoon.ui")

    -- harpoon binds --
    -- add file to harpoon
    vim.keymap.set("n", "<leader>h", mark.add_file)
    -- toggle harpoon explorer
    vim.keymap.set("n", "<C-e>", ui.toggle_quick_menu)
  end
}

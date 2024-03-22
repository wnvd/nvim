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

    -- navigation files 1-4
    vim.keymap.set("n", "<C-j>", function() ui.nav_file(1) end)
    vim.keymap.set("n", "<C-k>", function() ui.nav_file(2) end)
    vim.keymap.set("n", "<C-l>", function() ui.nav_file(3) end)
    vim.keymap.set("n", "<C-;>", function() ui.nav_file(4) end)

    -- navigation binds to buffers ( using nav based of mark, much faster )
    -- vim.keymap.set("n", "<C-j>", function() ui.nav_prev() end)
    -- vim.keymap.set("n", "<C-l>", function() ui.nav_next() end)
  end
}

local opts = { noremap = true, silent = true }

local term_opts = { silent = true }

-- (" ") as global leader
vim.g.mapleader = " "

-- OLD
-- Maping Horizontal Explorer to (,e)
-- vim.keymap.set("n", "<leader>e", vim.cmd.Lex)

-- Normal Mode --
-- Mapping (,e) to Explorer
-- keymap("n", "<leader>e", ":Lex 30<cr>", opts) 
-- Note: had problems during file cerations in :Lex 
-- so binding netrw, NO using both gives an error
-- think of "fe" as file explorer (started to use telescope file browser)
-- vim.keymap.set("n", "<leader>fe", vim.cmd.Ex)

-- Better Window Navigation
--keymap("n", "<C-h>", "<C-w>h", opts)
--keymap("n", "<C-j>", "<C-w>j", opts)
--keymap("n", "<C-k>", "<C-w>k", opts)
--keymap("n", "<C-l>", "<C-w>l", opts)

-- Resize with Arrows
vim.keymap.set("n", "<C-up>", ":resize +2<CR>", opts)
vim.keymap.set("n", "<C-Down>", ":resize -2<CR>", opts)
vim.keymap.set("n", "<C-Left>", ":vertical resize -2<CR>", opts)
vim.keymap.set("n", "<C-Right>", ":vertical resize +2<CR>", opts)

-- Navigate buffers 
-- vim.keymap.set("n", "<S-l>", ":bnext<CR>", opts)
-- vim.keymap.set("n", "<S-h>", ":bnprevious<CR>", opts)

-- Visual --
-- Stay in indent mode 
vim.keymap.set("v", "<", "<gv", opts)
vim.keymap.set("v", ">", ">gv", opts)

-- Move text up and down (cris@machine) 
-- keymap("v", "<A-k>", ":m .-2<CR>==", opts)
-- keymap("v", "<A-j>", ":m .+1<CR>==", opts)
-- keymap("v", "p", '"_dp', opts)

-- Move text (theprimeagen)
-- vim.keymap.set("v", "<A-k>", ":m '>+1<CR>gv=gv", opts)
-- vim.keymap.set("v", "<A-j>", ":m '<-2<CR>gv=gv", opts)

-- use '<leader>p' instead of 'p' when word is highlighted
vim.keymap.set("x", "<leader>p", [["_dP"]])
-- cursor stays at the same postion when moving 
-- page half up and down.
vim.keymap.set("n", "<C-d>", "<C-d>zz", opts)
vim.keymap.set("n", "<C-u>", "<C-u>zz", opts)

-- search terms stay in middle of screen
vim.keymap.set("n", "n", "nzzzv", opts)
vim.keymap.set("n", "N", "Nzzzv", opts)

-- Visual Block --
-- Move text up and down(theprimeagen)
vim.keymap.set("x", "J", ":move '>+1<CR>gv-gv", opts)
vim.keymap.set("x", "K", ":move '<-2<CR>gv-gv", opts)

vim.keymap.set("x", "<A-j>", ":move '>+1<CR>gv-gv", opts)
vim.keymap.set("x", "<A-k>", ":move '<-2<CR>gv-gv", opts)

-- Diagnostic keymaps
vim.keymap.set('n', '[d', vim.diagnostic.goto_prev, { desc = 'Go to previous diagnostic message' })
vim.keymap.set('n', ']d', vim.diagnostic.goto_next, { desc = 'Go to next diagnostic message' })
vim.keymap.set('n', '<leader>e', vim.diagnostic.open_float, { desc = 'Open floating diagnostic message' })
vim.keymap.set('n', '<leader>q', vim.diagnostic.setloclist, { desc = 'Open diagnostics list' })
-- copied from lazyvim distro some binds can be useful

-- map("n", "]e", diagnostic_goto(true, "ERROR"), { desc = "Next Error" })
-- map("n", "[e", diagnostic_goto(false, "ERROR"), { desc = "Prev Error" })
-- map("n", "]w", diagnostic_goto(true, "WARN"), { desc = "Next Warning" })
-- map("n", "[w", diagnostic_goto(false, "WARN"), { desc = "Prev Warning" })

-- Diagnostic underline style --
-- Error
vim.cmd.highlight('DiagnosticUnderlineError guisp=#ff00000 gui=undercurl')
-- Info

-- Warn

-- Terminal --
-- Better terminal navigation
--keymap("t", "<C-h>", "<C-\\><C-N><C-w>h", term_opts)
--keymap("t", "<C-j>", "<C-\\><C-N><C-w>j", term_opts)
--keymap("t", "<C-k>", "<C-\\><C-N><C-w>k", term_opts)
--keymap("t", "<C-l>", "<C-\\><C-N><C-w>l", term_opts)

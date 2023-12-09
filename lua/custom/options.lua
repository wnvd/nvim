-- tjdevries
-- Cool floating window popup menu for completion on command line
vim.o.pumblend = 17
-- wildmode = "longest:full" -- this one disables tab for some reason
vim.o.wildoptions = 'pum'
vim.o.encoding = 'utf-8'     -- the encoding displayed
vim.o.fileencoding = 'utf-8' -- the encoding written in file
vim.o.termguicolors = true   -- true color support

vim.o.mouse = 'a'
vim.o.expandtab = true
vim.o.softtabstop = 4
vim.o.shiftwidth = 4
vim.o.tabstop = 4
vim.o.smartindent = true
vim.o.cursorline = true -- highlight bar on cursor
vim.wo.number = true
vim.o.relativenumber = true
vim.o.guifont = "monospace:h17"

vim.o.undofile = true    -- save undo history
vim.o.laststatus = 3     -- one universal status line
vim.o.showmode = true    -- no need to see things like 'INSERT', 'VISUAL', 'NORMAL'
vim.o.breakindent = true -- enable break indent

-- incremental search and highlight
vim.o.hlsearch = true
vim.o.incsearch = true

-- Case-insensitive searching UNLESS \C or capital in search
vim.o.ignorecase = true
vim.o.smartcase = true

vim.o.scrolloff = 10
vim.wo.signcolumn = 'yes'
vim.o.updatetime = 250                 -- faster compilation
vim.o.timeoutlen = 300                 -- by default timeoutlen is 1000ms
vim.o.colorcolumn = "60"               -- colour column coordiantes
vim.o.showmatch = true
vim.o.clipboard = 'unnamedplus'        -- copy paste between vim and everything else

vim.o.completeopt = 'menuone,noselect' -- set completeopt to have better completion exprience

-- Diagnostic keymaps
vim.keymap.set('n', '[d', vim.diagnostic.goto_prev, { desc = 'Go to previous diagnostic message' })
vim.keymap.set('n', ']d', vim.diagnostic.goto_next, { desc = 'Go to next diagnostic message' })
vim.keymap.set('n', '<leader>e', vim.diagnostic.open_float, { desc = 'Open floating diagnostic message' })
vim.keymap.set('n', '<leader>q', vim.diagnostic.setloclist, { desc = 'Open diagnostics list' })

-- [[ Highlight on yank ]]
-- See `:help vim.highlight.on_yank()`
local highlight_group = vim.api.nvim_create_augroup('YankHighlight', { clear = true })
vim.api.nvim_create_autocmd('TextYankPost', {
	callback = function()
		vim.highlight.on_yank()
	end,
	group = highlight_group,
	pattern = '*',
})

-- enable vim spell checker for '.gitcommit', '.markdown', '.text'
vim.api.nvim_create_autocmd({ "FileType" }, {
	group = vim.api.nvim_create_augroup("edit_text", { clear = true }),
	pattern = { "gitcommit", "markdown", "txt" },
	desc = "Enable spell checking and text wrapping for certain filetypes",
	callback = function()
		vim.opt_local.wrap = true
		vim.opt_local.spell = true
	end,
})

vim.cmd [["highlight WinSeparator guibg=None"]] -- used with laststatus = 3 setting

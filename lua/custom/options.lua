-- tjdevries
-- Cool floating window popup menu for completion on command line
vim.o.pumblend = 17
-- vim.o.wildmenu = true -- not for me
-- vim.o.wildmode = "list:longest,full" -- this one disables tab for some reason
vim.o.wildoptions = 'pum'
vim.o.encoding = 'utf-8'     -- the encoding displayed
vim.o.fileencoding = 'utf-8' -- the encoding written in file
vim.o.termguicolors = true   -- true color support

vim.o.mouse = 'a'
vim.o.expandtab = true
vim.o.softtabstop = 2
vim.o.shiftwidth = 2
vim.o.tabstop = 2
vim.o.smartindent = true
vim.o.cursorline = true -- highlight bar on cursor
vim.wo.number = true
vim.o.relativenumber = true
-- vim.o.guifont = "monospace:h17"

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
vim.o.colorcolumn = "70"               -- colour column coordiantes
vim.o.showmatch = true                 -- Don't show the mode, since it's already in status line
vim.o.clipboard = 'unnamedplus'        -- remove this option if you want your OS clipboard to remain independent.

vim.o.completeopt = 'menuone,noselect' -- set completeopt to have better completion exprience

-- Configure how new splits should be opened
vim.opt.splitright = true
vim.opt.splitbelow = true


vim.opt.scrolloff = 10 -- Minimal number of screen lines to keep above and below the cursor.

-- they were in ibl, but here is fine
vim.opt.list = true
vim.opt.listchars = { tab = '» ', trail = '·', nbsp = '␣' }
vim.opt.listchars:append "eol:↴"

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

-- Note: Plugins with no configuration will be here otherwise seperate files.
return {
	-- Git related plugins
	"tpope/vim-fugitive",
	"tpope/vim-rhubarb",

	-- Detect tabstop and shiftwidth automatically
	"tpope/vim-sleuth",
	-- was getting some error, didn't fix btw
	{
		"vhyrro/luarocks.nvim",
		priority = 1000, -- Very high priority is required, luarocks.nvim should run as the first plugin in your config.
		config = true,
	},
	-- Auto Pairs
	-- 'jiangmiao/auto-pairs',
	-- Highlights hex code
	"norcalli/nvim-colorizer.lua",
	-- Automatically highlights words unde cursor
	-- 'RRethy/vim-illuminate',

	-- For colorscheme
	-- "tjdevries/colorbuddy.nvim",

	-- @justinmk xeeted to cool to not have
	-- minty uses volt for reactive UI
	-- { "nvzone/volt", lazy = true },
	--
	-- {
	--   "nvzone/minty",
	--   cmd = { "Shades", "Huefy" },
	-- }
}

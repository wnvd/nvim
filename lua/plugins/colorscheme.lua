return {
    -- {
    --     "ellisonleao/gruvbox.nvim",
    --     priority = 8000,
    --     config = function()
    --         require("gruvbox").setup {
    --             terminal_colors = true,  -- add neovim terminal colors
    --             undercurl = true,
    --             underline = true,
    --             bold = false,
    --             italic = {
    --                 strings = false,
    --                 emphasis = true,
    --                 comments = true,
    --                 operators = false,
    --                 folds = true,
    --             },
    --             strikethrough = true,
    --             invert_selection = false,
    --             invert_signs = false,
    --             invert_tabline = false,
    --             invert_intend_guides = false,
    --             inverse = true,     -- invert background for search, diffs, statuslines and errors
    --             contrast = "hard",  -- can be "hard", "soft" or empty string
    --             palette_overrides = {},
    --             overrides = {},
    --             dim_inactive = false,
    --             transparent_mode = true,
    --         }
    --     end,
    --     init = function()
    --         -- vim.cmd("colorscheme gruvbox")
    --     end
    -- },


    -- {
    --     "rose-pine/neovim",
    --     name = "rose-pine",
    --     config = function ()
    --         require("rose-pine").setup({
    --             styles = {
    --                 transparency = true,
    --                 italic = false
    --             },
    --             highlight_groups = {
    --                 Comment = { italic = true },
    --             },
    --         })
    --     end,
    --     init = function()
    --         vim.cmd("colorscheme rose-pine")
    --     end
    -- },

    -- {
    --     'aliqyan-21/darkvoid.nvim',
    --     config = function ()
    --         require("darkvoid").setup({
    --             transparent = true,
    --             colors = {
    --                 comment = "#818181",
    --                 operator = "#f1f1f1"
    --             },
    --         })
    --     end,
    --     init = function ()
    --         vim.cmd("colorscheme darkvoid")
    --     end
    -- },

    -- {
    --     "ficcdaf/ashen.nvim",
    --     tag = "*",
    --     lazy = false,
    --     priority = 1000,
    --     -- configuration is optional!
    --     opts = {
    --         style_presets = {
    --             italic_comments = true
    --         },
    --         transparent = true
    --     },
    --     init = function ()
    --         -- vim.cmd("colorscheme ashen")
    --     end
    -- },

    {
        "slugbyte/lackluster.nvim",
        lazy = false,
        priority = 1000,
        opts = {
            tweak_syntax = {
                comment = "#666666",
            },
            tweak_highlight = {
                ['htmlTagName'] = {
                    fg = "#b18a96"
                },
                ['@comment'] = {
                    italic = true,
                },
                ['@markup.heading'] = {
                    bold = true,
                    fg = "#b18a96"
                },
                ['@markup.italic'] = {
                    italic = true,
                    fg = "#a3b18a"
                },
                ['@markup.strong'] = {
                    bold = true,
                    fg = "#a3b18a"
                },
                -- html
                ['@tag.html'] = {
                    fg = "#b18a96"
                },
                ['@tag.attribute.html'] = {
                    fg = "#8A96B1"
                },
                ['ColorColumn'] = {
                    bg = "#2a2a2a"
                }
            },
            tweak_background = {
                normal = 'none',
            }
        },
        init = function()
            vim.cmd.colorscheme("lackluster-night")
        end,
    },
    -- {
    --     'p00f/alabaster.nvim',
    --     priority = 8000,
    --     init = function()
    --         vim.cmd.colorscheme("alabaster")
    --     end
    -- }
}


return {
    {
        'uZer/pywal16.nvim',
        enabled = true,
        config = function()
            vim.cmd.colorscheme("pywal16")
        end,
    },
    {
        'folke/tokyonight.nvim',
        enabled = true,
        config = function()
            vim.cmd.colorscheme 'tokyonight'
        end,
    },
    { "zaldih/themery.nvim",
        lazy = false,
        enabled = true,
        config = function()
            require("themery").setup({
                themes = {"pywal16", "tokyonight"}, 
                livePreview = true, -- Apply theme while picking. Default to true.
            })
        end
    },
    {
        'nvim-lualine/lualine.nvim',
        dependencies = { 'nvim-tree/nvim-web-devicons' },
        config = function()
            require('lualine').setup({
                options = {
                    theme = 'auto',
                },
            })
        end
    },
    {
        'norcalli/nvim-colorizer.lua',
        enabled = true,
        config = function()
            local configs = require('colorizer')
            configs.setup(
                { "*" },
                {
                    RGB      = true;         -- #RGB hex codes
                    RRGGBB   = true;         -- #RRGGBB hex codes
                    names    = false;         -- "Name" codes like Blue
                    RRGGBBAA = true;        -- #RRGGBBAA hex codes
                    rgb_fn   = true;        -- CSS rgb() and rgba() functions
                    hsl_fn   = true;        -- CSS hsl() and hsla() functions
                    css      = true;        -- Enable all CSS features: rgb_fn, hsl_fn, names, RGB, RRGGBB
                    css_fn   = true;        -- Enable all CSS *functions*: rgb_fn, hsl_fn
                    -- Available modes: foreground, background
                    mode     = 'background'; -- Set the display mode.
                }
            )
        end
    },
}

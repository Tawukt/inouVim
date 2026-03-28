
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
                    theme = 'pywal',
                },
            })
        end
    },
    {
        'norcalli/nvim-colorizer.lua',
        enabled = true,
        config = function()
            local configs = require('colorizer')
            configs.setup({
                filetypes = { "*" },
                DEFAULT_OPTIONS = {
                    RGB      = true;         -- #RGB hex codes
                    RRGGBB   = true;         -- #RRGGBB hex codes
                    names    = true;         -- "Name" codes like Blue
                    RRGGBBAA = false;        -- #RRGGBBAA hex codes
                    rgb_fn   = false;        -- CSS rgb() and rgba() functions
                    hsl_fn   = false;        -- CSS hsl() and hsla() functions
                    css      = false;        -- Enable all CSS features: rgb_fn, hsl_fn, names, RGB, RRGGBB
                    css_fn   = false;        -- Enable all CSS *functions*: rgb_fn, hsl_fn
                    -- Available modes: foreground, background
                    mode     = 'background'; -- Set the display mode.
                },
            })
        end
    },
}

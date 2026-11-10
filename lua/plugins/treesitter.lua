return{
    {
        'nvim-treesitter/nvim-treesitter',
        lazy = false,
        build = ':TSUpdate',
        config = function()
            local configs = require('nvim-treesitter')
            configs.setup({
                indent = { enable = true }, 
                highlight = { enable = true }, 
                folds = { enable = true }, 
                auto_install = true,
                ensure_installed = {
                    "bash",
                    "c",
                    "cpp",
                    "css",
                    "diff",
                    "html",
                    "help",
                    "javascript",
                    "jsdoc",
                    "json",
                    "lua",
                    "luadoc",
                    "luap",
                    "markdown",
                    "markdown_inline",
                    "printf",
                    "python",
                    "query",
                    "regex",
                    "toml",
                    "tsx",
                    "typescript",
                    "vim",
                    "vimdoc",
                    "xml",
                    "yaml",
                    "gitignore",
                    "dockerfile",
                    "ron"
                },
            })
            vim.api.nvim_create_autocmd('FileType', {
                callback = function(args)
                    pcall(vim.treesitter.start, args.buf)
                end,
            })
        end
    }
}


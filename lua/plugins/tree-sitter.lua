return {
    'nvim-treesitter/nvim-treesitter', 
    lazy = false,
    build = ':TSUpdate',
    config = function()
        require('nvim-treesitter').setup {
            highlight = { enabled = true },
            indent = { enabled = true },
            autotage = { enabled = true },
            ensure_installed = {
                "lua",
                "c",
                "cpp",
                "rust",
            },
            auto_install = false,
        }
    end
}

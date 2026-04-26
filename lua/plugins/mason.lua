return {
    {
        "williamboman/mason.nvim",
        opts = {},
    },
    -- Mason LSP bridge
    {
        "mason-org/mason-lspconfig.nvim",
        opts = {
            ensure_installed = {
                "clangd",
                "rust_analyzer",
            },
            --automatic_enable = true,
        },
        dependencies = {
            --"mason-org/mason.nvim",
            --"neovim/nvim-lspconfig",
            "williamboman/mason.nvim",
        },
    },


}

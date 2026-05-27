return {
    {
        "neovim/nvim-lspconfig",
        dependencies = {
            "williamboman/mason.nvim",
            "williamboman/mason-lspconfig.nvim",
            "hrsh7th/cmp-nvim-lsp",
        },
        config = function()
            local capabilities = require("cmp_nvim_lsp").default_capabilities()

            -- Since only HLS is managed by ghcup, configure it directly
            require("mason-lspconfig").setup({
                handlers = {
                    function(server_name)
                        vim.lsp.config(server_name, {
                            capabilities = capabilities,
                        })
                        vim.lsp.enable(server_name)
                    end,
                },
            })

            -- LSP managed by Mason (existing)
            vim.lsp.config("hls", {
                capabilities = capabilities,
                filetypes = { "haskell", "lhaskell", "cabal" },
                settings = {
                    haskell = {
                        formattingProvider = "ormolu",
                    },
                },
            })
            vim.lsp.enable("hls")
        end,
    },
}

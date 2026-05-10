return {
    --            { -- This helps with SSH tunneling and copying to clipboard
        --                        'ojroques/vim-oscyank',
        --                  },
        {
            -- Git plugin
            'tpope/vim-fugitive',
        },
        {
            -- Show CSS Colors
            'brenoprata10/nvim-highlight-colors',
            config = function()
                require('nvim-highlight-colors').setup({})
            end
        },
        {
            vim.keymap.set("n", "<leader>r", function()
                local file = vim.fn.expand("%:p")
                local out = "/tmp/qr_out"
                vim.cmd("split | term gcc " .. file .. " -o " .. out .. " && " .. out)
            end, { desc = "Run C file" })
        },
    }

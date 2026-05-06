return {
    "thinca/vim-quickrun",
    config = function()
        vim.g.quickrun_config = {
            _ = {
                outputter = "terminal",
                runner = "terminal",
            },
            c = {
                command = "gcc",
                cmdopt = "-o /tmp/quickrun_out",
                exec = { "%c %o %s", "/tmp/quickrun_out" },
            },
        }
        vim.keymap.set("n", "<leader>r", "<cmd>QuickRun<CR>", { desc = "QuickRun" })
    end,
}

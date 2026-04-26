return {
  "nvim-tree/nvim-tree.lua",
  dependencies = {
    "nvim-tree/nvim-web-devicons",
  },
  config = function()
    -- netrw を無効化（必須）

    require("nvim-tree").setup({
      view = {
        width = 30,
        side = "left",
      },
      renderer = {
        group_empty = true, 
        icons = {
          show = {
            file = true,
            folder = true,
            folder_arrow = true,
          },
        },
      },
      filters = {
        dotfiles = false, 
      },
    })
  end,

  keys = {
    { "<leader>-", "<cmd>NvimTreeToggle<cr>",   desc = "Toggle file tree" },
    { "<leader>o", "<cmd>NvimTreeFocus<cr>",    desc = "Focus file tree" },
  },
}

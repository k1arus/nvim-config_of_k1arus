vim.diagnostic.config({
  update_in_insert = true,
  virtual_text = true,  -- 行末にインラインで表示
  float = {
    focusable = false,
    border = "rounded",
  },
})

-- カーソルを置いたら自動でフロートウィンドウ表示
vim.api.nvim_create_autocmd("CursorHold", {
  callback = function()
    vim.diagnostic.open_float(nil, { focus = false })
  end,
})

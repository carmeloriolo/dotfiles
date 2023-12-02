-- plugins/telescope.lua:
return {
  "nvim-telescope/telescope.nvim",
  tag = "0.1.4",
  -- or                              , branch = '0.1.x',
  dependencies = { "nvim-lua/plenary.nvim" },
  vim.keymap.set("n", "<C-p>", "<Cmd>Telescope find_files<cr>"),
}

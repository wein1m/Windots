return {
  "lunacookies/vim-substrata",
  lazy = false,    -- load immediately
  priority = 1000, -- load before other UI plugins
  config = function()
    vim.cmd.colorscheme("substrata")
  end,
}

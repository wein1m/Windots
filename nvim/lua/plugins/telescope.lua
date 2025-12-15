return {
  {
    'nvim-telescope/telescope.nvim',
    tag = 'v0.1.9',
    dependencies = { 'nvim-lua/plenary.nvim' },

    config = function()
      local builtin = require("telescope.builtin")

      vim.keymap.set("n", "<C-p>", builtin.find_files, { desc = "Find Files~" })
      vim.keymap.set("n", "<C-o>", builtin.live_grep, {})
    end,
  },
  {
    'nvim-telescope/telescope-ui-select.nvim',
    config = function()
      -- This is your opts table
      require("telescope").setup {
        extensions = {
          ["ui-select"] = {
            require("telescope.themes").get_dropdown {
            }
          }
        }
      }
      require("telescope").load_extension("ui-select")
    end
  }
}

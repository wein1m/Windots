return {
  "nvim-telescope/telescope.nvim",
  dependencies = {
    "nvim-lua/plenary.nvim",
  },
  cmd = "Telescope",
  keys = {
    { "<C-p>",     "<cmd>Telescope find_files<cr>",                               desc = "Find files" },
    { "<C-o>",     "<cmd>Telescope live_grep<cr>",                                desc = "Live grep" },
    { "<leader>,", "<cmd>Telescope buffers sort_mru=true sort_lastused=true<cr>", desc = "Buffers" },
  },
  opts = {
    defaults = {
      sorting_strategy = "ascending",
      layout_strategy = "flex",
      borderchars = {
        prompt = { "─", "│", "─", "│", "╭", "╮", "╯", "╰" },
        preview = { "─", "│", "─", "│", "╭", "╮", "╯", "╰" },
        results = { "─", "│", "─", "│", "╭", "╮", "┤", "├" },
      }
    },
  },
}
-- return {
--   {
--     'nvim-telescope/telescope.nvim',
--     tag = 'v0.1.9',
--     dependencies = { 'nvim-lua/plenary.nvim' },
--
--     config = function()
--       local builtin = require("telescope.builtin")
--
--       vim.keymap.set("n", "<C-p>", builtin.find_files, { desc = "Find Files~" })
--       vim.keymap.set("n", "<C-o>", builtin.live_grep, {})
--     end,
--   },
--   {
--     'nvim-telescope/telescope-ui-select.nvim',
--     config = function()
--       -- This is your opts table
--       require("telescope").setup {
--         extensions = {
--           ["ui-select"] = {
--             require("telescope.themes").get_dropdown {
--             }
--           }
--         }
--       }
--       require("telescope").load_extension("ui-select")
--     end
--   }
-- }

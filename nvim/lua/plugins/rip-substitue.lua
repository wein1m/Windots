return {
  "chrisgrieser/nvim-rip-substitute",
  lazy = "VeryLazy",
  keys = {
    {
      "<leader>sf",
      function() require("rip-substitute").sub() end,
      mode = { "n", "x" },
      desc = " rip substitute",
    },
  },
}

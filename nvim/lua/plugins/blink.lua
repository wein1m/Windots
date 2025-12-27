return {
  'saghen/blink.cmp',
  dependencies = { 'rafamadriz/friendly-snippets' },
  version = '1.*',
  opts = {
    keymap = {
      preset = "none",
      ["<CR>"] = { "select_and_accept", "fallback" },
      ["<Tab>"] = { "snippet_forward", "select_next", "fallback" },
      ["<S-Tab>"] = { "snippet_backward", "select_prev", "fallback" },
      ["<C-g>"] = { "show_signature", "hide_signature" },
      ["<PageDown>"] = { "scroll_signature_down", "scroll_documentation_down", "fallback" },
      ["<PageUp>"] = { "scroll_signature_up", "scroll_documentation_up", "fallback" },
      ["<C-c>"] = { "show", "hide" },
    },
    signature = { enabled = true },
    completion = {
      menu = {
        border = 'rounded',
        scrollbar = false,
        draw = {
          treesitter = { 'lsp' },
          columns = {
            { "label",     "label_description" },
            { "kind_icon", gap = 2,            "kind" },
          }
        }
      },
      ghost_text = {
        enabled = true,
        show_without_menu = false,
      }
    }
  },
}

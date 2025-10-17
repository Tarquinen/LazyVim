return {
  "saghen/blink.cmp",
  opts = {
    fuzzy = {
      implementation = "prefer_rust_with_warning",
    },
    keymap = {
      -- preset = "enter",
      ["<C-j>"] = { "select_next", "fallback" },
      ["<C-k>"] = { "select_prev", "fallback" },
    },
  },
}

return {
  "saghen/blink.cmp",
  opts = {
    fuzzy = {
      implementation = "prefer_rust",
    },
    keymap = {
      -- preset = "enter",
      ["<C-j>"] = { "select_next", "fallback" },
      ["<C-k>"] = { "select_prev", "fallback" },
    },
  },
}

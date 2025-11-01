return {
  "folke/sidekick.nvim",
  opts = {
    cli = {
      win = {
        keys = {
          -- Disable the default <C-p> keybind to avoid conflict with OpenCode
          prompt = false,
          -- Use <C-s> for the prompt picker instead
          ctrl_s_prompt = {
            "<C-s>",
            "prompt",
            mode = "t",
            desc = "Insert prompt/context",
          },
        },
      },
    },
  },
}

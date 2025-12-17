return {
  "folke/sidekick.nvim",
  opts = {
    -- Disable NES (Next Edit Suggestions) - requires GitHub Copilot
    nes = { enabled = false },
    -- Disable Copilot status tracking
    copilot = { status = { enabled = false } },
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

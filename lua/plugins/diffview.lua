return {
  "sindrets/diffview.nvim",
  cmd = {
    "DiffviewOpen",
    "DiffviewClose",
    "DiffviewToggleFiles",
    "DiffviewFocusFiles",
    "DiffviewRefresh",
    "DiffviewFileHistory",
  },
  keys = {
    { "<leader>gd", "<cmd>DiffviewOpen<cr>", desc = "Open diffview" },
    { "<leader>gH", "<cmd>DiffviewFileHistory %<cr>", desc = "File history" },
  },
  opts = {
    use_icons = true,
    enhanced_diff_hl = true,
    show_help_hints = true,
    watch_index = true,
    keymaps = {
      view = {
        { "n", "q", "<cmd>DiffviewClose<cr>", { desc = "Close diffview" } },
        {
          "n",
          "<leader>e",
          function()
            require("diffview.actions").toggle_files()
          end,
          { desc = "Toggle file panel" },
        },
      },
      diff1 = {
        { "n", "q", "<cmd>DiffviewClose<cr>", { desc = "Close diffview" } },
        {
          "n",
          "<leader>e",
          function()
            require("diffview.actions").toggle_files()
          end,
          { desc = "Toggle file panel" },
        },
      },
      diff2 = {
        { "n", "q", "<cmd>DiffviewClose<cr>", { desc = "Close diffview" } },
        {
          "n",
          "<leader>e",
          function()
            require("diffview.actions").toggle_files()
          end,
          { desc = "Toggle file panel" },
        },
      },
      diff3 = {
        { "n", "q", "<cmd>DiffviewClose<cr>", { desc = "Close diffview" } },
        {
          "n",
          "<leader>e",
          function()
            require("diffview.actions").toggle_files()
          end,
          { desc = "Toggle file panel" },
        },
      },
      diff4 = {
        { "n", "q", "<cmd>DiffviewClose<cr>", { desc = "Close diffview" } },
        {
          "n",
          "<leader>e",
          function()
            require("diffview.actions").toggle_files()
          end,
          { desc = "Toggle file panel" },
        },
      },
      file_panel = {
        { "n", "q", "<cmd>DiffviewClose<cr>", { desc = "Close diffview" } },
        {
          "n",
          "<leader>e",
          function()
            require("diffview.actions").toggle_files()
          end,
          { desc = "Toggle file panel" },
        },
      },
      file_history_panel = {
        { "n", "q", "<cmd>DiffviewClose<cr>", { desc = "Close diffview" } },
        {
          "n",
          "<leader>e",
          function()
            require("diffview.actions").toggle_files()
          end,
          { desc = "Toggle file panel" },
        },
      },
      option_panel = {
        {
          "n",
          "q",
          function()
            require("diffview.actions").close()
          end,
          { desc = "Close panel" },
        },
      },
      help_panel = {
        {
          "n",
          "q",
          function()
            require("diffview.actions").close()
          end,
          { desc = "Close help" },
        },
      },
    },
  },
}

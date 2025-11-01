return {
  "folke/snacks.nvim",
  keys = {
    { "<leader>gd", false },
    { "<leader>e", false },
    {
      "<leader>e",
      function()
        Snacks.explorer({ cwd = vim.fn.getcwd() })
      end,
      desc = "Explorer Snacks (cwd)",
    },
  },
  opts = {
    picker = {
      sources = {
        diagnostics = {
          on_show = function(picker)
            picker:focus("list")
          end,
        },
        git_status = {
          on_show = function(picker)
            picker:focus("list")
          end,
        },
        lsp_references = {
          on_show = function(picker)
            picker:focus("list")
          end,
        },
        lsp_definitions = {
          on_show = function(picker)
            picker:focus("list")
          end,
        },
        recent = {
          on_show = function(picker)
            picker:focus("list")
          end,
        },
        buffers = {
          on_show = function(picker)
            picker:focus("list")
          end,
        },
        gh_pr = {
          on_show = function(picker)
            picker:focus("list")
          end,
        },
        gh_issue = {
          on_show = function(picker)
            picker:focus("list")
          end,
        },
        gh_diff = {
          on_show = function(picker)
            picker:focus("list")
          end,
        },
        gh_actions = {
          on_show = function(picker)
            picker:focus("list")
          end,
        },
      },
    },
  },
}

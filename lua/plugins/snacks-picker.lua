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
        lsp_references = {
          on_show = function(picker)
            -- Focus the list instead of input when picker opens
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
      },
    },
  },
}

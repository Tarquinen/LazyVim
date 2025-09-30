return {
  "folke/snacks.nvim",
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
            -- Focus the list instead of input when picker opens
            picker:focus("list")
          end,
        },
        recent = {
          on_show = function(picker)
            -- Focus the list instead of input when picker opens
            picker:focus("list")
          end,
        },
        buffers = {
          on_show = function(picker)
            -- Focus the list instead of input when picker opens
            picker:focus("list")
          end,
        },
      },
    },
  },
}

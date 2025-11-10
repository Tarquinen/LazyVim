return {
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        -- Override gd for all LSP servers using LazyVim's keymap system
        ["*"] = {
          keys = {
            {
              "gd",
              function()
                vim.cmd.vsplit()
                vim.lsp.buf.definition()
              end,
              desc = "Goto Definition (Right Split)",
              has = "definition",
            },
          },
        },
        ruff = {
          root_dir = function(fname)
            if type(fname) ~= "string" or fname == "" or fname == "." then
              return nil
            end
            if
              fname:match("^diffview://")
              or fname:match("^fugitive://")
              or fname:match("^LOCAL:")
              or fname:match("^REMOTE:")
            then
              return nil
            end
            local root = vim.fs.root(fname, ".git")
            if not root then
              root = vim.fs.dirname(fname)
            end
            if not root or root == "." or root == "" then
              return nil
            end
            return root
          end,
          on_attach = function(client, bufnr)
            local bufname = vim.api.nvim_buf_get_name(bufnr)
            if
              bufname == ""
              or bufname:match("^diffview://")
              or bufname:match("^fugitive://")
              or bufname:match("^LOCAL:")
              or bufname:match("^REMOTE:")
            then
              vim.lsp.buf_detach_client(bufnr, client.id)
              return
            end
          end,
        },
      },
    },
  },
}

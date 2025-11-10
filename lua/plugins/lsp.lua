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
                -- Save the current window
                local current_win = vim.api.nvim_get_current_win()

                -- Get active LSP client for offset encoding
                local clients = vim.lsp.get_clients({ bufnr = 0 })
                if #clients == 0 then
                  vim.notify("No LSP client attached", vim.log.levels.WARN)
                  return
                end
                local client = clients[1]

                -- Request definition
                local params = vim.lsp.util.make_position_params(current_win, client.offset_encoding)
                vim.lsp.buf_request(0, "textDocument/definition", params, function(err, result)
                  if err or not result or vim.tbl_isempty(result) then
                    vim.notify("No definition found", vim.log.levels.WARN)
                    return
                  end

                  -- Definition found, create split and navigate
                  vim.api.nvim_set_current_win(current_win)
                  vim.cmd.vsplit()
                  vim.lsp.util.show_document(result[1] or result, client.offset_encoding, { focus = true })
                end)
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

return {
  "neovim/nvim-lspconfig",
  config = function()
    -- vim.lsp.config('*', {
    --   on_attach = function(client, bufnr)
    --     print("LSP attached to", vim.api.nvim_buf_get_name(bufnr))
    --   end,
    --   capabilities = vim.lsp.protocol.make_client_capabilities(),
    --   flags = { debounce_text_changes = 150 },
    -- })
    --
    vim.lsp.inlay_hint.enable(true)

    vim.lsp.config("lua_ls", {
      settings = {
        Lua = {
          runtime = {
            version = "LuaJIT",
          },
          diagnostics = {
            globals = {
              "vim",
              "require",
            },
          },
          workspace = {
            library = vim.api.nvim_get_runtime_file("", true),
          },
          telemetry = {
            enable = false,
          },
          hint = {
            enable = true,
            paramName = "All",
            paramType = true,
            variableType = true,
            setType = true,
            arrayIndex = true,
            semicolon = "All",
          },
        }
      }
    })
    vim.lsp.config("zls", {
      settings = {
        zls = {
          enable_inlay_hints = true,
          enable_snippets = true,
          warn_style = true,
        },
      },
    })
    vim.g.zig_fmt_parse_errors = 0
    vim.g.zig_fmt_autosave = 0

    vim.api.nvim_set_hl(0, "LspReferenceText", { underline = true })
    vim.api.nvim_set_hl(0, "LspReferenceRead", { underline = true })
    vim.api.nvim_set_hl(0, "LspReferenceWrite", { underline = true })

    local vue_language_server_path = vim.fn.stdpath('data') ..
    '/mason/packages/vue-language-server/node_modules/@vue/language-server'
    local tsserver_filetypes = { 'typescript', 'javascript', 'javascriptreact', 'typescriptreact', 'vue' }
    local vue_plugin = {
      name = '@vue/typescript-plugin',
      location = vue_language_server_path,
      languages = { 'vue' },
      configNamespace = 'typescript',
    }
    local vtsls_config = {
      settings = {
        vtsls = {
          tsserver = {
            globalPlugins = {
              vue_plugin,
            },
          },
        },
      },
      filetypes = tsserver_filetypes,
    }

    local ts_ls_config = {
      init_options = {
        plugins = {
          vue_plugin,
        },
      },
      filetypes = tsserver_filetypes,
    }

    vim.lsp.config('ts_ls', ts_ls_config)

    vim.lsp.enable({
      'lua_ls',
      'gopls',
      'html',
      'cssls',
      'dockerls',
      'ts_ls',
      'vue_ls'
    })

    vim.diagnostic.config({
      -- update_in_insert = true,
      -- virtual_text = true,
      virtual_lines = true,
      float = {
        border = "rounded",
        source = "always",
        header = "",
        prefix = "",
      },
    })
  end
}

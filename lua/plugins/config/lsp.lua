vim.lsp.config('*', {
  on_attach = function(client, bufnr)
    print("LSP attached to", vim.api.nvim_buf_get_name(bufnr))
  end,
  capabilities = vim.lsp.protocol.make_client_capabilities(),
  flags = { debounce_text_changes = 150 },
})

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
            }
        }
    }
})

vim.lsp.enable({ 'clangd', 'ts_ls', 'lua_ls', 'gopls' })

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


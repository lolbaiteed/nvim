vim.lsp.enable({ 'clangd', 'ts_ls', 'lua_ls'})

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


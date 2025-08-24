return {
    "neovim/nvim-lspconfig",
    config = function()
	    vim.lsp.enable('clangd')
	    vim.lsp.enable("ts_ls")
	    vim.lsp.enable("lua_ls")
	    vim.lsp.enable("html")
	    vim.lsp.enable("zls")
	    vim.lsp.enable("gopls")
	    vim.lsp.enable("cssls")


	    vim.lsp.config("emmet-ls",{
		    -- on_attach = on_attach,
		    capabilities = capabilities,
		    filetypes = { "css", "eruby", "html", "javascript", "javascriptreact", "less", "sass", "scss", "svelte", "pug", "typescriptreact", "vue" },
		    init_options = {
		      html = {
			options = {
			  -- For possible options, see: https://github.com/emmetio/emmet/blob/master/src/config.ts#L79-L267
			  ["bem.enabled"] = true,
			},
		      },
		    }
		})

	    vim.lsp.enable("emmet-ls")
	    vim.lsp.enable("basedpyright")
                        
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

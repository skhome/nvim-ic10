vim.api.nvim_create_autocmd("User", {
	pattern = "TSUpdate",
	callback = function()
		require("nvim-treesitter.parsers").ic10 = {
			install_info = {
				url = "https://github.com/skhome/tree-sitter-ic10",
				revision = "HEAD",
			},
		}
	end,
})

vim.treesitter.language.register("ic10", "ic10")

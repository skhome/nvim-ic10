vim.api.nvim_create_autocmd("User", {
	pattern = "TSUpdate",
	callback = function()
		require("nvim-treesitter.parsers").ic10 = {
			install_info = {
				url = "https://github.com/skhome/tree-sitter-ic10",
			},
		}
	end,
})

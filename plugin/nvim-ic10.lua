vim.api.nvim_create_autocmd("User", {
	pattern = "TSUpdate",
	callback = function()
		require("nvim-treesitter.parsers").ic10 = {
			install_info = {
				url = "https://github.com/skhome/tree-sitter-ic10",
				branch = "main",
			},
		}
	end,
})

vim.api.nvim_create_autocmd("FileType", {
	pattern = { "ic10" },
	callback = function()
		vim.treesitter.start()
	end,
})

vim.filetype.add({
	extension = {
		ic10 = "ic10",
	},
})

vim.treesitter.language.register("ic10", "ic10")

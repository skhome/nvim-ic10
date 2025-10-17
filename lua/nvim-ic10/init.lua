local M = {}

M.setup = function()
	-- register language
	vim.filetype.add({
		extension = {
			ic10 = "ic10",
		},
	})

	-- install tree-sitter grammar
	local parser_config = require("nvim-treesitter.parsers").get_parser_configs()
	parser_config.ic10 = {
		install_info = {
			url = "https://github.com/skhome/tree-sitter-ic10.git",
			files = { "src/parser.c" },
			branch = "main",
			generate_requires_npm = false,
			requires_generate_from_grammar = false,
		},
	}

	vim.treesitter.language.register("ic10", "ic10")
end

return M

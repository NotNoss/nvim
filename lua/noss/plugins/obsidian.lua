return {
	"epwalsh/obsidian.nvim",
	lazy = true,
	ft = "markdown",
	depenencies = {
		"nvim-lua/plenary.nvim",
	},
	opts = {
		workspaces = {
			{
				name = "docs",
				path = "~/Documents/Docs/",
			},
		},

		mappings = {
			["<cr>"] = {
				action = function()
					return require("obsidian").util.smart_action()
				end,
				opts = { buffer = true, expr = true },
			},
		},
	},
}

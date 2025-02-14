return {
	"olimorris/codecompanion.nvim",
	dependencies = {
		"nvim-lua/plenary.nvim",
		"nvim-treesitter/nvim-treesitter",
	},

	config = function()
		require("codecompanion").setup({
			strategies = {
				chat = {
					adapter = "openai",
				},
				inline = {
					adapter = "openai",
				},
			},
			adapters = {
				openai = function()
					return require("codecompanion.adapters").extend("openai", {
						env = {
							api_key = "cmd:pass show openai",
						},
					})
				end,
			},
		})
	end,
}

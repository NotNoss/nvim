return {
	"olimorris/codecompanion.nvim",
	dependencies = {
		"echasnovski/mini.nvim",
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
			display = {
				action_palette = {
					width = 95,
					height = 10,
					prompt = "Prompt ",
					provider = "mini_pick",
					opts = {
						show_default_actions = true,
						show_default_prompt_library = true,
					},
				},
			},
		})
	end,
}

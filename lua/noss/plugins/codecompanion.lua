return {
	"olimorris/codecompanion.nvim",
	dependencies = {
		"echasnovski/mini.nvim",
	},

	config = function()
		require("codecompanion").setup({
			strategies = {
				chat = {
					adapter = "anthropic",
				},
				inline = {
					adapter = "anthropic",
				},
			},
			adapters = {
				openai = function()
					return require("codecompanion.adapters").extend("openai", {
						env = {
							api_key = "cmd:pass show api_keys/openai",
						},
						schema = {
							model = {
								default = "gpt-4o",
							},
						},
					})
				end,
				anthropic = function()
					return require("codecompanion.adapters").extend("anthropic", {
						env = {
							api_key = "cmd:pass show api_keys/anthropic",
						},
						schema = {
							default = "claude-3.5-sonnet",
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

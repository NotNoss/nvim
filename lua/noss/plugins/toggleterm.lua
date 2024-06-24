return {
	"akinsho/toggleterm.nvim",
	opts = {
		highlights = {
			Normal = { link = "Normal" },
			NormalNC = { link = "NormalNC" },
			NormalFloat = { link = "NormalFloat" },
			FloatBorder = { link = "FloatBorder" },
			StatusLine = { link = "StatusLine" },
			StatusLineNC = { link = "StatusLineNC" },
			WinBar = { link = "WinBar" },
			WinBarNC = { link = "WinBarNC" },
		},
		size = 10,
		---@param t Terminal
		on_create = function(t)
			vim.opt_local.foldcolumn = "0"
			vim.opt_local.signcolumn = "no"
			if t.hidden then
				local toggle = function()
					t:toggle()
				end
			end
		end,
		shading_factor = 2,
		direction = "float",
		float_opts = { border = "rounded" },
	},
}

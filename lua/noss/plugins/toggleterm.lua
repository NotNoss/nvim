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
	config = function()
		local Terminal = require("toggleterm.terminal").Terminal
		local lazygit = Terminal:new({
			cmd = "lazygit",
			hidden = true,
			direction = "float",
			float_opts = {
				border = "rounded",
			},
		})

		local serpl = Terminal:new({
			cmd = "serpl",
			hidden = true,
			direction = "float",
			float_opts = {
				border = "rounded",
			},
		})

		function _lazygit_toggle()
			lazygit:toggle()
		end

		function _serpl_toggle()
			serpl:toggle()
		end

		vim.api.nvim_set_keymap(
			"n",
			"<leader>lg",
			"<cmd>lua _lazygit_toggle()<CR>",
			{ noremap = true, silent = true, desc = "open lazygit" }
		)

		vim.api.nvim_set_keymap(
			"n",
			"<leader>sp",
			"<cmd>lua _serpl_toggle()<CR>",
			{ noremap = true, silent = true, desc = "open serpl" }
		)
	end,
}

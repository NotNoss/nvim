return {
	"stacklok/codegate.nvim",
	dependencies = { "nvim-lua/plenary.nvim" },
	-- lazy = false,
	config = function()
		require("codegate").setup({
			base_url = "https://cg.itsnoss.com",
		})
	end,
}

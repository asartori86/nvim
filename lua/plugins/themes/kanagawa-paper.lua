return {
	"thesimonho/kanagawa-paper.nvim",
	lazy = false,
	priority = 1000,
	config = function()
		require("kanagawa-paper").setup()
		vim.cmd("colorscheme kanagawa-paper-ink")
	end,
}

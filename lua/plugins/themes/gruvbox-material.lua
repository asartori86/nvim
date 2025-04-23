return {
	-- "sainnhe/gruvbox-material",
	dir = "/home/sartori/opt/src/gruvbox-material",
	lazy = false,
	priority = 1000,
	config = function()
		-- require("gruvbox-material").setup({})
		-- Optionally configure and load the colorscheme
		-- directly inside the plugin declaration.
		vim.g.gruvbox_material_enable_italic = true
		vim.g.gruvbox_material_background = "hard"
		vim.g.gruvbox_material_foreground = "material"
		vim.g.gruvbox_matrial_better_performance = 1
		vim.cmd.colorscheme("gruvbox-material")
	end,
}

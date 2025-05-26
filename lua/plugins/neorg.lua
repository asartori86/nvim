return {
	"nvim-neorg/neorg",
	lazy = false,
	version = "*",
	config = function()
		require("neorg").setup {
			load = {
				["core.defaults"] = {},
				["core.qol.todo_items"] = {},
				["core.concealer"] = {},
				["core.dirman"] = {
					config = {
						workspaces = {
							notes = "~/notes",
							gtd = "~/notes/gtd"
						},
						default_workspace = "notes",
					},
				},
			},
		}

		vim.wo.foldlevel = 99
		vim.wo.conceallevel = 2
	end,
}

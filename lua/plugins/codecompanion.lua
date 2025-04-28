return {
	"olimorris/codecompanion.nvim",
	dependencies = {
		"nvim-lua/plenary.nvim",
		"nvim-treesitter/nvim-treesitter",
		{
			{
				"zbirenbaum/copilot.lua",
				-- cmd = "Copilot",
				event = "InsertEnter",
				config = function()
					require("copilot").setup({})
				end,
			},
		},
	},
	config = function()
		require("codecompanion").setup({
			-- opts = {
			--   adapters = {
			--     copilot = function()
			--       return require("codecompanion.adapters").extend("copilot", {
			--         schema = {
			--           model = {
			--             default = "claude-3.7-sonnet",
			--           },
			--         },
			--       })
			--     end,
			--   },
			-- },
			strategies = {
				-- chat = { adapter = "openai" },
				chat = { adapter = "copilot", roles = { user = "asartori86" } },
				inline = { adapter = "copilot" },
			},
			keymaps = {
				send = {
					modes = {
						i = { "<C-CR>", "<C-s>" },
					},
				},
				completion = {
					modes = {
						i = "<C-x>",
					},
				},
			},
		})
	end,
}

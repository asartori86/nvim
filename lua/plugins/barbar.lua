return {
	{
		"romgrk/barbar.nvim",
		dependencies = {
			"lewis6991/gitsigns.nvim", -- OPTIONAL: for git status
			"nvim-tree/nvim-web-devicons", -- OPTIONAL: for file icons
		},
		init = function()
			vim.g.barbar_auto_setup = false
		end,
		version = "^1.0.0", -- optional: only update when a new 1.x version is released
		config = function()
			-- require("barbar").setup({
			-- 	opts = {
			-- 		-- lazy.nvim will automatically call setup for you. put your options here, anything missing will use the default:
			-- 		-- animation = true,
			-- 		-- insert_at_start = true,
			-- 		-- …etc.
			-- 		-- icons = {
			-- 		-- 	-- button = "",
			-- 		-- 	buffer_index = true,
			-- 		-- 	filetype = { enabled = true },
			-- 		-- 	visible = { modified = { buffer_number = false } },
			-- 		-- 	gitsigns = {
			-- 		-- 		added = { enabled = true, icon = "+" },
			-- 		-- 		changed = { enabled = true, icon = "~" },
			-- 		-- 		deleted = { enabled = true, icon = "-" },
			-- 		-- 	},
			-- 		-- },
			-- 	},
			-- })

			local barbar = require("barbar")

			barbar.setup({
				clickable = true, -- Enables/disables clickable tabs
				tabpages = false, -- Enable/disables current/total tabpages indicator (top right corner)
				insert_at_end = true,
				icons = {
					button = "",
					buffer_index = false,
					buffer_number = false,
					filetype = { enabled = true },
					visible = { modified = { buffer_number = false } },
					gitsigns = {
						added = { enabled = true, icon = "+" },
						changed = { enabled = true, icon = "~" },
						deleted = { enabled = true, icon = "-" },
					},
				},
			})

			local map = vim.api.nvim_set_keymap
			local opts = { noremap = true, silent = true }
			-- Move to previous/next
			map("n", "<A-,>", "<Cmd>BufferPrevious<CR>", opts)
			map("n", "<A-.>", "<Cmd>BufferNext<CR>", opts)
			-- Re-order to previous/next
			map("n", "<A-<>", "<Cmd>BufferMovePrevious<CR>", opts)
			map("n", "<A->>", "<Cmd>BufferMoveNext<CR>", opts)
			-- Goto buffer in position...
			map("n", "<A-1>", "<Cmd>BufferGoto 1<CR>", opts)
			map("n", "<A-2>", "<Cmd>BufferGoto 2<CR>", opts)
			map("n", "<A-3>", "<Cmd>BufferGoto 3<CR>", opts)
			map("n", "<A-4>", "<Cmd>BufferGoto 4<CR>", opts)
			map("n", "<A-5>", "<Cmd>BufferGoto 5<CR>", opts)
			map("n", "<A-6>", "<Cmd>BufferGoto 6<CR>", opts)
			map("n", "<A-7>", "<Cmd>BufferGoto 7<CR>", opts)
			map("n", "<A-8>", "<Cmd>BufferGoto 8<CR>", opts)
			map("n", "<A-9>", "<Cmd>BufferGoto 9<CR>", opts)
			map("n", "<A-0>", "<Cmd>BufferLast<CR>", opts)
			-- Pin/unpin buffer
			map("n", "<A-p>", "<Cmd>BufferPin<CR>", opts)
			-- Close buffer
			map("n", "<A-c>", "<Cmd>BufferClose<CR>", opts)
			map("n", "<A-b>", "<Cmd>BufferCloseAllButCurrent<CR>", opts)
		end,
	},
}

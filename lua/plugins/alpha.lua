return {
	"goolord/alpha-nvim",
	dependencies = {
		"nvim-tree/nvim-web-devicons",
	},

	config = function()
		local alpha = require("alpha")
		local dashboard = require("alpha.themes.startify")

		dashboard.section.header.val = {
			[[                                                    ]],
			[[ ███╗   ██╗███████╗ ██████╗ ██╗   ██╗██╗███╗   ███╗ ]],
			[[ ████╗  ██║██╔════╝██╔═══██╗██║   ██║██║████╗ ████║ ]],
			[[ ██╔██╗ ██║█████╗  ██║   ██║██║   ██║██║██╔████╔██║ ]],
			[[ ██║╚██╗██║██╔══╝  ██║   ██║╚██╗ ██╔╝██║██║╚██╔╝██║ ]],
			[[ ██║ ╚████║███████╗╚██████╔╝ ╚████╔╝ ██║██║ ╚═╝ ██║ ]],
			[[ ╚═╝  ╚═══╝╚══════╝ ╚═════╝   ╚═══╝  ╚═╝╚═╝     ╚═╝ ]],
			[[                                                    ]],
		}

		dashboard.section.top_buttons.val = {
			dashboard.button("b", "  Browse files", ":Telescope file_browser <CR>"),
			dashboard.button("f", "  Find file", ":Telescope find_files <CR>"),
			-- dashboard.button("r", "📂  Recent files", ":Telescope oldfiles <CR>"),
			dashboard.button("g", "󱎸  Grep text", ":Telescope live_grep <CR>"),
			-- dashboard.button("p", "📂  Projects", ":Telescope projects <CR>"),
			-- dashboard.button("u", "🔄  Update plugins", ":Lazy update<CR>"),
		}
		dashboard.section.mru.val = { { type = "padding", val = 0 } }
		dashboard.section.bottom_buttons.val = {
			dashboard.button("s", "⚙  Settings", ":e ~/.config/nvim/init.lua <CR>"),
			-- Open Lazy
			dashboard.button("l", "󰒲  Lazy", ":Lazy<CR>"),
			-- Open Mason
			dashboard.button("m", "󰫺  Mason", ":Mason<CR>"),
			-- open neorg index
			dashboard.button("n", "󱞁  Neorg", ":Neorg index<CR>"),
			-- open neorg gtd workspace with a nice todo icon
			dashboard.button("t", "  GTD", ":Neorg workspace gtd<CR>"),

			dashboard.button("q", "󰩈  Quit Neovim", ":qa!<CR>"),
		}

		alpha.setup(dashboard.opts)
	end,
}

return {
	{
		"LazyVim/LazyVim",
		opts = {
			colorscheme = "catppuccin",
		},
	},
	{
		"catppuccin/nvim", 
		name = "catppuccin",
		opts = {
			term_colors = true,
			transparent_background = false,
			styles = {
				comments = { "italic" },
				conditionals = {},
				loops = {},
				functions = { "italic" },
				keywords = {},
				strings = {},
				variables = {},
				numbers = {},
				booleans = {},
				properties = {},
				types = {},
			},
			color_overrides = {
				mocha = {
					base = "#251d36",
					mantle = "#191425",
					crust = "#2596be",
				},
			},

			integrations = {
				  telescope = {
					enabled = true,
					style = "nvchad",
				},
				neotree = {
					enbled = true
				},
				dropbar = {
					enabled = true,
					color_mode = true,
				},
			},
		},
	},
}

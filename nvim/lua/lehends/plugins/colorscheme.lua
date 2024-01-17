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
      flavour = "frappe",
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
					base = "#000000",--This is the background
					mantle = "#0E0E0E",
					crust = "#1D1D1D",--This is the nvim-treeColor
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

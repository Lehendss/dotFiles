return {
	"nvim-tree/nvim-tree.lua",
	dependencies = { "nvim-tree/nvim-web-devicons" },
	config = function()
		local nvimtree = require("nvim-tree")
          
    -- Maps (To delete  if doesnt work)--
    
    local map = vim.api.nvim_set_keymap
    local options = { noremap = true, silent = true }

    map('n', '<Leader>e', ':NvimTreeToggle<CR>', options)
    map('n', '<Leader>k', ':NvimTreeClose<CR>', options)
    map('n', '<Leader>f', ':NvimTreeFocus<CR>', options)
		

    -- recommended settings from nvim-tree documentation
		vim.g.loaded_netrw = 1
		vim.g.loaded_netrwPlugin = 1

		-- change color for arrows in tree to light blue
		vim.cmd([[ highlight NvimTreeFolderArrowClosed guifg=#2AC3DE ]])
		vim.cmd([[ highlight NvimTreeFolderArrowOpen guifg=#2AC3DE ]])

		-- configure nvim-tree
		nvimtree.setup({
			view = {
				width = 30,
				relativenumber = false,
			},


			-- change folder arrow icons
			renderer = {
				indent_markers = {
					enable = true,
				},
				icons = {
					glyphs = {
						folder = {
							arrow_closed = "󰁔 ", -- arrow when folder is closed
							arrow_open = "󰁅 ", -- arrow when folder is open
						},
					},
				},
			},
			-- disable window_picker for
			-- explorer to work well with
			-- window splits
			actions = {
				open_file = {
					window_picker = {
						enable = false,
					},
				},
			},
			filters = {
				custom = { ".DS_Store" },
			},
			git = {
				ignore = false,
			},
		})
	end,
}

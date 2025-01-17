return {
	'nvim-tree/nvim-tree.lua',
	version = '*',
	dependencies = {
		'nvim-tree/nvim-web-devicons',
	},
	config = function()
		local nvimtree = require 'nvim-tree'
		-- configure nvim-tree
		nvimtree.setup {
			view = { adaptive_size = true },
			-- change folder arrow icons
			renderer = {
				icons = {
					glyphs = {
						folder = {
							arrow_closed = '', -- arrow when folder is closed
							arrow_open = '', -- arrow when folder is open
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
		}
	end,
}

-- ================================================================================================
-- TITLE : toggleterm.nvim
-- ABOUT : a Neovim plugin that helps you create and manage multiple terminals in Neovim
-- LINKS :
--   > github : https://github.com/akinsho/toggleterm.nvim
-- ================================================================================================

return {
	"akinsho/toggleterm.nvim",
	version = "*",
	config = function()
		require("toggleterm").setup({
			size = 20,
			open_mapping = [[<c-\>]],
			hide_numbers = true,
			direction = "float",
			terminal_mappings = true,
			float_opts = {
				border = "curved",
				winblend = 3,
				highlights = {
					border = "Normal",
					background = "Normal",
				},
			},
			-- Define lazygit as a custom terminal
			terminals = {
				lazygit = {
					cmd = { "lazygit" },
					dir = "git_current_buf_dir", -- Open in current buffer's git root
					direction = "float",
					float_opts = {
						border = "curved",
						winblend = 3,
						highlights = {
							border = "Normal",
							background = "Normal",
						},
					},
					auto_scroll = true,
					hidden = true,
				},
			},
		})
	end,
}

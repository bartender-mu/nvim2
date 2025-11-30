-- ================================================================================================
-- TITLE : bufferline
-- ABOUT : a snazzy buffer line for Neovim
-- LINKS :
--   > github : https://github.com/akinsho/bufferline.nvim
-- ================================================================================================

return {
	"akinsho/bufferline.nvim",
	version = "*",
	dependencies = "nvim-tree/nvim-web-devicons",
	opts = {
		options = {
			mode = "buffers", -- set to "tabs" to only show tabpages instead
			-- style_preset = bufferline.style_preset.default, -- or bufferline.style_preset.minimal,
			themable = true, -- allows colors to be applied based on your chosen colorscheme
			numbers = "ordinal",
			close_command = "bdelete! %d", -- can be a string | function, see "Mouse actions"
			right_mouse_command = "bdelete! %d", -- can be a string | function, see "Mouse actions"
			left_mouse_command = "buffer %d", -- can be a string | function, see "Mouse actions"
			middle_mouse_command = nil, -- can be a string | function, see "Mouse actions"
			indicator = {
				icon = "▎", -- this should be omitted if indicator style is not 'icon'
				style = "icon",
			},
			buffer_close_icon = "",
			modified_icon = "●",
			close_icon = "",
			left_trunc_marker = "",
			right_trunc_marker = "",
			--- @param buf bufferline.Buffer
			-- name_formatter = function(buf)  end,
			max_name_length = 18,
			max_prefix_length = 15, -- prefix used when a buffer is de-duplicated
			tab_size = 18,
			diagnostics = "nvim_lsp",
			diagnostics_update_in_insert = false,
			-- diagnostics_indicator = function(count, level, diagnostics_dict, context)
			--   return "("..count..")"
			-- end,
			-- NOTE: this will be removed in a future release and superseded by post-processing hook
			-- custom_filter = function(buf_number, buf_name)
			--   -- filter out filetypes you don't want to see
			--   if vim.bo[buf_number].filetype ~= "<i-dont-want-to-see-this>" then
			--     return true
			--   end
			--   -- filter out by buffer name
			--   if buf_name:match "^%w%w%w%s*$" then
			--     return false
			--   end
			--   -- filter out based on arbitrary rules
			--   -- e.g. filter out vim wiki buffer from tabline in your work repo
			--   if vim.fn.getcwd() == "~/workspace/vim-wiki" and buf_name:match "^Index%.wiki$" then
			--     return false
			--   end
			-- end,
			offsets = {
				{
					filetype = "NvimTree",
					text = "File Explorer",
					text_align = "center",
					separator = true,
				},
			},
			color_icons = true, -- whether or not to add the filetype icon highlights
			show_buffer_icons = true, -- disable filetype icons for buffers
			show_buffer_close_icons = true,
			show_close_icon = true,
			show_tab_indicators = true,
			persist_buffer_sort = true, -- whether or not custom sorted buffers should persist
			-- can also be a table containing 2 custom separators
			-- [focused and unfocused]. eg: { '|', '|' }
			separator_style = "slant",
			enforce_regular_tabs = false,
			always_show_bufferline = true,
			-- sort_by = 'id' | 'extension' | 'relative_directory' | 'directory' | 'tabs' | function(buffer_a, buffer_b)
			--   -- add custom logic
			--   return buffer_a.modified > buffer_b.modified
			-- end
		},
	},
}
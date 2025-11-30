-- ================================================================================================
-- TITLE : symbols-outline.nvim
-- ABOUT : a tree like view for symbols in Neovim
-- LINKS :
--   > github : https://github.com/simrat39/symbols-outline.nvim
-- ================================================================================================

return {
	"simrat39/symbols-outline.nvim",
	cmd = "SymbolsOutline",
	keys = { { "<leader>o", "<cmd>SymbolsOutline<CR>", desc = "Toggle Symbols Outline" } },
	opts = {
		-- Your desired options for symbols-outline.nvim
		-- Example:
		-- position = "right",
		-- auto_preview = false,
		-- show_numbers = false,
		-- show_untracked = true,
	},
}

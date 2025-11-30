-- ================================================================================================
-- TITLE : intelephense (PHP Language Server) LSP Setup
-- LINKS :
--   > github: https://github.com/php-lsp/intelephense
-- ================================================================================================

--- @param capabilities table LSP client capabilities (typically from nvim-cmp or similar)
--- @return nil This function doesn't return a value, it configures the LSP server
return function(capabilities)
	vim.lsp.config('intelephense', {
		capabilities = capabilities,
		filetypes = { "php" },
		settings = {
			intelephense = {
				environment = {
					include = {
						"*.php",
						"**/*.php",
						"/usr/local/lib/php", -- adjust as needed
					},
					define = {},
					global = {},
					variable = {},
				},
				format = {
					enable = true,
					braces = "k_r",
					-- ... other format options
				},
				telemetry = {
					enabled = false,
				},
			},
		},
	})
end

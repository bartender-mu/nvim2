-- =================================================================================================================
-- TITLE   : ansible-language-server
-- ABOUT   : Ansible Language Server
-- URLS    :
--   > home : https://github.com/ansible/ansible-language-server
-- =================================================================================================================

--- @param capabilities table LSP client capabilities (typically from nvim-cmp or similar)
--- @return nil This function doesn't return a value, it configures the LSP server
return function(capabilities)
    vim.lsp.config("ansiblels", {
        capabilities = capabilities,
        filetypes = { "ansible", "yaml" },
        settings = {
            ansible = {
                ansible = {
                    path = "ansible",
                },
                ansibleLint = {
                    path = "ansible-lint",
                },
                formatter = {
                    path = "yaml-format",
                }
            }
        }
    })
end
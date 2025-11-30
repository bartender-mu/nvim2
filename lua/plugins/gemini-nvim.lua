-- ================================================================================================
-- TITLE : gemini.nvim
-- ABOUT : a Neovim plugin for Google's Gemini API
-- LINKS :
--   > github : https://github.com/kiddos/gemini.nvim
-- ================================================================================================

return {
  "kiddos/gemini.nvim",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "nvim-telescope/telescope.nvim",
  },
  opts = {
    api_key = os.getenv("GOOGLE_API_KEY"),
    model = "gemini-pro", -- Or other Gemini models
  },
  init = function()
    if os.getenv("GOOGLE_API_KEY") == nil then
      vim.api.nvim_echo({
        {
          "gemini.nvim: GOOGLE_API_KEY environment variable not set. Please set it to use gemini.nvim.",
          "ErrorMsg",
        },
      }, true, {})
    end
  end,
}

-- =================================================================================================================
-- TITLE   : noice.nvim
-- ABOUT   : Super-charged Notification, Command and Search UI in Neovim
-- URLS    :
--   > github : https://github.com/folke/noice.nvim
-- =================================================================================================================

return {
  "folke/noice.nvim",
  event = "VeryLazy",
  opts = {
    cmdline = {
      view = "cmdline_popup",
    },
    messages = {
      view = "popup",
    },
    popupmenu = {
      float = {
        row = 0.5,
        col = 0.5,
      },
    },
    presets = {
      bottom_search = true, -- use a classic bottom cmdline for search
      command_palette = false, -- We are explicitly setting this, so we don't need this preset
      long_message_to_split = true, -- long messages will be split by default
      inc_rename = "popup", -- provides an input panel for vim.lsp.buf.rename
      lsp_doc_border = false, -- add a border to hover docs and signature help
    },
  },
  dependencies = {
    -- if you don't have `lazy.nvim` then you should probably install it here
    "MunifTanjim/nui.nvim",
    -- OPTIONAL:
    --   `nvim-notify` is only needed for the notify preset
    "rcarriga/nvim-notify",
  },
}

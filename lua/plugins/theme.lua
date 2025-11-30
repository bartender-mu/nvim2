return {
  "folke/tokyonight.nvim",
  lazy = false,
  priority = 1000,
  config = function()
    vim.g.tokyonight_transparent = true
    vim.cmd("colorscheme tokyonight")
  end,
}
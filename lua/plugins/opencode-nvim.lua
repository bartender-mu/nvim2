return {
  "NickvanDyke/opencode.nvim",
  dependencies = {
    -- Required for input/picker functionality
    { "folke/snacks.nvim", opts = { input = {}, picker = {}, terminal = {} } },
  },
  config = function()
    -- Optional: Customize opencode behavior
    vim.g.opencode_opts = {
      -- Add any personal config here, e.g., provider settings
    }
    -- Enable autoread for real-time buffer reloads
    vim.o.autoread = true
    -- Keymaps (replace old Gemini ones)
    vim.keymap.set({ "n", "x" }, "<C-a>", function() require("opencode").ask("@this: ", { submit = true }) end, { desc = "Ask opencode" })
    vim.keymap.set({ "n", "x" }, "<C-x>", function() require("opencode").select() end, { desc = "Execute opencode action…" })
    vim.keymap.set({ "n", "t" }, "<C-.>", function() require("opencode").toggle() end, { desc = "Toggle opencode" })
    -- Operator for ranges
    vim.keymap.set({ "n", "x" }, "go", function() return require("opencode").operator("@this ") end, { expr = true, desc = "Add range to opencode" })
    vim.keymap.set("n", "goo", function() return require("opencode").operator("@this ") .. "_" end, { expr = true, desc = "Add line to opencode" })
  end,
}
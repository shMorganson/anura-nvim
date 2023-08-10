local M = {}

M.load = function()
  if vim.version().minor < 8 then
    vim.notify_once("anura-nvim: you must use neovim 0.8 or higher")
    return
  end

  -- reset colors
  if vim.g.colors_name then
    vim.cmd.hi("clear")
  end

  vim.g.colors_name = "anura"
  vim.o.termguicolors = true

  local groups = require("anura.groups").setup()

  -- add highlights
  for group, settings in pairs(groups) do
    vim.api.nvim_set_hl(0, group, settings)
  end
end

return M

-- Autocmds are automatically loaded on the VeryLazy event
-- Default autocmds that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/autocmds.lua
-- Add any additional autocmds here
local function augroup(name)
  return vim.api.nvim_create_augroup("lazyvim_" .. name, { clear = true })
end

-- auto ZenMode when a window is closed and there is only one window left
-- vim.api.nvim_create_autocmd({ "VimEnter", "FocusGained", "WinEnter" }, {
--   group = augroup("zen_mode"),
--   pattern = "*",
--   callback = function()
--     if #vim.api.nvim_list_wins() == 1 then
--       require("zen-mode").open()
--     end
--   end,
-- })

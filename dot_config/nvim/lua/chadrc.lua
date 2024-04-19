-- This file  needs to have same structure as nvconfig.lua
-- https://github.com/NvChad/NvChad/blob/v2.5/lua/nvconfig.lua
---@type ChadrcConfig

local M = {}

M.ui = {
  theme = "everforest_light",
  nvdash = {
    load_on_startup = true,
  },
  -- statusline:
  -- https://nvchad.com/docs/config/nvchad_ui#tabufline_and_statusline
  -- Ordering taken from:
  -- https://github.com/NvChad/ui/blob/v2.5/lua/nvchad/stl/utils.lua
  statusline = {
    theme = "default",
    order = {
      "mode",
      "file",
      "git",
      "%=",
      "lsp_msg",
      "%=",
      "diagnostics",
      "lsp",
      "cwd",
      "cursor",
      "cursor_column",
    },
    modules = {
      cursor_column = function()
        return "Col %c "
      end
    },
  },
}

return M

local M = {}

 M.ui = {
  theme = "everforest_light",
  nvdash = {
    load_on_startup = true,
  },
  statusline = {
    overriden_modules = function()
      local st_modules = require("nvchad_ui.statusline.default")
      return {
        cursor_position = function()
          -- remove single trailing whitespace (if any)
          local default = st_modules.cursor_position()
          if default:sub(-1, -1) == " " then default = default:sub(1, -2) end
          -- combine default with column information
          local _, col = unpack(vim.api.nvim_win_get_cursor(0))
          local col_str = string.format("%2s", col+1)
          return default .. ", Col " .. col_str .. " "
        end,
      }
    end
  },
}

M.mappings = require("custom.mappings")

M.plugins = "custom.plugins"

return M

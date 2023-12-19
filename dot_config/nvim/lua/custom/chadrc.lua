local M = {}

 M.ui = {
  theme = "everforest_light",
  nvdash = {
    load_on_startup = true,
  },
  statusline = {
    overriden_modules = function(modules)
      -- See: https://nvchad.com/docs/config/nvchad_ui#override_statusline_modules
      -- Override cursor position.
      local cpos = modules[10]
      modules[10] = (function()
        -- Remove single trailing whitespace (if any).
        if cpos:sub(-1, -1) == " " then cpos = cpos:sub(1, -2) end
        -- Combine default with column information.
        return cpos .. ", Col %c "
      end)()
    end,
  },
}

M.mappings = require("custom.mappings")

M.plugins = "custom.plugins"

return M

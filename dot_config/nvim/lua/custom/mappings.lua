-- n, v, i, t = mode names

local M = {}

M.trouble = {
  n = {
    ["<leader>tt"] = { "<cmd> TroubleToggle <CR>", "Toggle Trouble menu" },
    ["<leader>tr"] = { "<cmd> TroubleRefresh <CR>", "Refresh Trouble menu" },
  },
}

M.tabufline = {
  n = {
  -- Close all buffers except current one.
  ["<leader>X"] = {
      function()
        require("nvchad.tabufline").closeOtherBufs()
        -- local curr = vim.api.nvim_get_current_buf()
        -- local bufs = vim.t.bufs
        -- for _, buf in ipairs(bufs) do
        --   if buf ~= curr then
        --     vim.cmd("confirm bd" .. buf)
        --   end
        -- end
        -- vim.cmd("b" .. curr)
        -- vim.cmd("redrawtabline")
      end,
      "close other buffers",
    },
  },
}


return M

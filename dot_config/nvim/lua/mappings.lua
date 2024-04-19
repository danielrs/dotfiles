require "nvchad.mappings"

local map = vim.keymap.set

map(
  "n",
  ";",
  ":",
  { desc = "CMD enter command mode" }
)

map(
  { "n", "i", "v" },
  "<C-s>",
  "<cmd>w<cr>"
)

-- NVChad Tabufline.

map(
  "n",
  "<leader>X",
  function()
    local tabufline = require("nvchad.tabufline")
    local curr = vim.api.nvim_get_current_buf()
    for _, buff in ipairs(vim.t.bufs) do
      if buff ~= curr then
        tabufline.close_buffer(buff)
      end
    end
  end,
  { desc = "buffer close others" }
)

-- Trouble.

map(
  "n",
  "<leader>tt",
  "<cmd>Trouble diagnostics toggle focus=true<cr>",
  { desc = "trouble diagnostics toggle (global)" }
)

map(
  "n",
  "<leader>tT",
  "<cmd>Trouble diagnostics toggle focus=true filter.buf=0<cr>",
  { desc = "trouble diagnostics toggle (current)" }
)

map(
  "n",
  "<leader>ts",
  "<cmd>Trouble symbols toggle focus=true results.win.position=right<cr>",
  { desc = "trouble symbols toggle" }
)

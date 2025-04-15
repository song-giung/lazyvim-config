-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

if vim.g.vscode then
  local keymap = vim.keymap.set
  local opts = { noremap = true, silent = true }
  local vscode = require("vscode")

  -- remap leader key
  keymap("n", "<Space>", "", opts)
  vim.g.mapleader = " "
  vim.g.maplocalleader = " "

  -- rename symbol
  vim.keymap.set("n", "<leader>rn", function()
    vscode.call("editor.action.rename")
  end, { desc = "Rename Symbol" })

  vim.keymap.set("n", "<leader>ca", function()
    vscode.call("github.copilot.completions.toggle")
  end, { desc = "Toggle copilot copletion" })
end

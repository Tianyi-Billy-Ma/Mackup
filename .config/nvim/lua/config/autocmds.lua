-- Autocmds are automatically loaded on the VeryLazy event
-- Default autocmds that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/autocmds.lua
-- Add any additional autocmds here

-- disable completion on markdown files by default
vim.api.nvim_create_autocmd("FileType", {
  pattern = { "gitcommit", "markdown" },
  callback = function()
    require("cmp").setup({
      enabled = true,
      mappings = {
        -- ["<C-j>"] = require("cmp").mapping.select_next_item(),
        -- ["<C-k>"] = require("cmp").mapping.select_prev_item(),
        ["<Tab>"] = require("cmp").mapping.confirm({ select = true }),
      },
    })
    -- require("no-neck-pain").setup()
  end,
})

_G.no_neck_pain_enabled = false

vim.api.nvim_create_autocmd("FileType", {
  pattern = "markdown",
  callback = function()
    if not _G.no_neck_pain_enabled then
      vim.cmd("NoNeckPain")
      _G.no_neck_pain_enabled = true
    end
  end,
})
-- wrap and check for spell in text filetypes
-- -- added to disable spelling
vim.api.nvim_create_autocmd("FileType", {
  -- group = augroup("wrap_spell"),
  pattern = { "gitcommit", "markdown" },
  callback = function()
    vim.opt_local.wrap = true
    -- vim.opt_local.spell = false
  end,
})

vim.api.nvim_create_autocmd("FileType", {
  pattern = { "" },
  callback = function()
    vim.opt_local.wrap = true
    vim.opt_local.spell = true
  end,
})

--
-- vim.api.nvim_create_autocmd("filetype", {
--   -- group = augroup("wrap_spell"),
--   pattern = { "gitcommit", "markdown", "pandoc" },
--   command = "set nospell",
-- })
--
--

-- Create an augroup and define the autocmd
vim.api.nvim_create_augroup("vimtex_event_focus", { clear = true })
vim.api.nvim_create_autocmd("User", {
  pattern = "VimtexEventViewReverse",
  callback = function()
    os.execute("open -a Alacritty")
    vim.cmd("redraw!")
  end,
  group = "vimtex_event_focus",
})
-- local group = vim.api.nvim_create_augroup('vimtex', {})
-- vim.api.nvim_create_autocmd('User', {
--   pattern = 'VimtexEventViewReverse',
--   group = group,
--   command = "call b:vimtex.viewer.xdo_focus_vim()"
-- })

-- Create symmetrical `$$` pair only in Tex files
vim.api.nvim_create_autocmd("FileType", {
  pattern = "tex",
  callback = function()
    require("mini.pairs").map_buf(0, "i", "$", { action = "closeopen", pair = "$$" })
  end,
})

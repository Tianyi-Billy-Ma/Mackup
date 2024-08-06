-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here

local opt = vim.opt

opt.ignorecase = true
opt.clipboard = "unnamedplus"

opt.swapfile = false

opt.spell = false
---- scrolling
opt.relativenumber = true
opt.scrolloff = 99
opt.linebreak = true

-- indentation
opt.expandtab = true -- convert tabs to spaces
opt.tabstop = 4 -- insert 4 spaces for a tab
opt.shiftwidth = 4 -- the number of spaces inserted for each indentation
opt.smartindent = true

-- windows
-- vim.o.splitbelow = true
-- vim.o.splitright = true

-- completion
-- vim.o.timeoutlen = 300 -- time to wait for a mapped sequence to complete
--
-- g.vim_markdown_conceal = 0
--
--
-- opt.vim_markdown_conceal = 0
--
vim.g.mkdp_browser = "/Applications/Arc.app/Contents/MacOS/Arc"

vim.g.Mm_IgnoreFilePatterns = { "*.pyc", "*.zip" }

vim.g.grammarous_jar_url = "https://www.languagetool.org/download/LanguageTool-5.9.zip"

local function isempty(s)
  return s == nil or s == ""
end
local function use_if_defined(val, fallback)
  return val ~= nil and val or fallback
end

-- python provide
local conda_prefix = os.getenv("CONDA_PREFIX")
if not isempty(conda_prefix) then
  vim.g.python_host_prog = use_if_defined(vim.g.python_host_prog, conda_prefix .. "/bin/python")
  vim.g.python3_host_prog = use_if_defined(vim.g.python3_host_prog, conda_prefix .. "/bin/python")
else
  vim.g.python_host_prog = use_if_defined(vim.g.python_host_prog, "python")
  vim.g.python3_host_prog = use_if_defined(vim.g.python3_host_prog, "python3")
end

-- Config for nvim-ufo
--
opt.foldcolumn = "auto"
opt.foldenable = true
opt.foldlevel = 99
opt.foldlevelstart = 99
opt.foldmethod = "expr"
opt.foldexpr = "nvim_treesitter#foldexpr()"
opt.fillchars = {
  foldopen = "▾",
  fold = " ",
  eob = " ",
  foldclose = "▸",
}
vim.g.markdown_folding = 1
vim.g.lazygit_config = false
vim.g.maplocalleader = ","

vim.o.cursorline = true
vim.o.cursorcolumn = true

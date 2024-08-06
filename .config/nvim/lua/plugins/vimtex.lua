return {
  "lervag/vimtex",
  lazy = false, -- we don't want to lazy load VimTeX
  -- tag = "v2.15", -- uncomment to pin to a specific release
  init = function()
    -- VimTeX configuration goes here, e.g.
    -- vim.g.maplocalleader = ","
    vim.g.vimtex_view_method = "skim" -- Choose which program to use to view PDF file
    vim.g.vimtex_view_skim_sync = 1 -- Value 1 allows forward search after every successful compilation
    vim.g.vimtex_view_skim_activate = 0 -- Value 1 allows change focus to skim after command `:VimtexView` is given
    -- vim.g.vimtex_view_skim_reading_bar = 1
    vim.g.vimtex_compiler_latexmk = {
      out_dir = ".output",
    }
    vim.g.vimtex_format_enabled = 1
    -- vim.g.vimtex_syntax_conceal_disable = 1
    vim.g.vimtex_syntax_conceal = {
      sections = 1,
      fancy = 1,
      cites = 1,
      accents = 0,
      ligatures = 0,
      spacing = 0,
      greek = 0,
      math_bounds = 0,
      math_delimiters = 0,
      math_facs = 0,
      math_super_sub = 0,
      math_symbols = 0,
    }
    -- vim.g.vimtex_syntax_custom_cmds = {
    --   { name = "gG", mathmode = 1, concealchar = "𝒢" },
    --   { name = "sR", mathmode = 1, concealchar = "ℝ" },
    --   { name = "rmR", mathmode = 1, concealchar = "𝐑" },
    --   { name = "rmX", mathmode = 1, concealchar = "𝐗" },
    -- }
  end,
  keys = {
    { "<localLeader>l", "", desc = "+vimtext" },
  },
}

return {
  -- add gruvbox
  { "wittyjudge/gruvbox-material.nvim" },
  { "projekt0n/github-nvim-theme" },
  { "folke/tokyonight.nvim" },
  { "catppuccin/nvim", name = "catppuccin", priority = 1000 },
  { "ellisonleao/gruvbox.nvim", priority = 1000, config = true, opts = ... },
  -- Configure LazyVim to load gruvbox
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "gruvbox-material",
      -- colorscheme = "github_dark",
      -- colorscheme = "tokyonight",
      -- colorscheme = "catppuccin-macchiato",
      -- colorscheme = "gruvbox",
    },
  },
}

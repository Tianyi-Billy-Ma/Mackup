return {
	"linux-cultist/venv-selector.nvim",
	dependencies = { "neovim/nvim-lspconfig", "nvim-telescope/telescope.nvim", "mfussenegger/nvim-dap-python" },
	config = function()
		require("venv-selector").setup({
			-- anaconda_base_path = "/Users/tianyima/anaconda3",
			-- anaconda_envs_path = "/Users/tianyima/anaconda3/envs",
			settings = {
				search = {
					anaconda_envs = {
						command = " fd bin/python$ /Users/tianyima/anaconda3/envs --full-path --color never -E /proc",
					},
					anaconda_base = {
						command = " fd /python$ /Users/tianyima/anaconda3--full-path --color never -E /proc	",
					},
				},
				options = {
					debug = true,
				},
			},
		})
	end,
	event = "VeryLazy", -- Optional: needed only if you want to type `:VenvSelect` without a keymapping
}

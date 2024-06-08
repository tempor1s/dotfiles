return {
	"tpope/vim-fugitive",
	dependencies = { "tpope/vim-rhubarb" },
	keys = {
		{ "<leader>gb", ":Git blame<cr>", desc = "Git blame" },
		{ "<leader>ghp", ":!/opt/dev/bin/dev open pr &<cr><cr>", desc = "Github PR" },
		{ "<leader>gs", ":Git<cr>", desc = "Git status" },
		{ "<leader>gbr", ":GBrowse<cr>", desc = "Git browse", mode = { "n", "v" } },
	},
}

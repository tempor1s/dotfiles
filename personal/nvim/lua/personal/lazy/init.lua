return {
	"tpope/vim-sleuth",
	"github/copilot.vim",
	"tpope/vim-bundler",
	{ "numToStr/Comment.nvim", opts = {} }, -- "gc" to comment visual regions/lines
	{ "folke/todo-comments.nvim", dependencies = { "nvim-lua/plenary.nvim" }, opts = { signs = false } }, -- Highlight todo, notes, etc in comments
}

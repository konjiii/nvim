return {
	-- fuzzy finder
	{
		"nvim-telescope/telescope.nvim",
		tag = "0.1.3",
		-- or                            , branch = "0.1.x",
		dependencies = { { "nvim-lua/plenary.nvim" } },
	},
	-- theme for neovim
	{ "catppuccin/nvim", name = "catppuccin" },
	-- treesitter for better syntax highlighting
	{ "nvim-treesitter/nvim-treesitter", build = ":TSUpdate" },
	-- for viewing the treesitter tree
	"nvim-treesitter/playground",
	-- quick switch between buffers
	{ "theprimeagen/harpoon", branch = "harpoon2", dependencies = { { "nvim-lua/plenary.nvim" } } },
	-- file history and undo tree
	"mbbill/undotree",
	-- git integration
	"tpope/vim-fugitive",
	-- to setup lsp's
	{
		"VonHeikemen/lsp-zero.nvim",
		branch = "v3.x",
		dependencies = {
			--- Uncomment these if you want to manage LSP servers from neovim
			{ "williamboman/mason.nvim" },
			{ "williamboman/mason-lspconfig.nvim" },

			-- LSP Support
			{ "neovim/nvim-lspconfig" },
			-- Autocompletion
			{ "hrsh7th/nvim-cmp" },
			{ "hrsh7th/cmp-nvim-lsp" },
			{ "L3MON4D3/LuaSnip" },
		},
	},
	-- ctrl+/ to comment out block of code
	"numToStr/Comment.nvim",
	-- indentation guides
	"lukas-reineke/indent-blankline.nvim",
	-- colorful brackets
	"hiphish/rainbow-delimiters.nvim",
	-- for latex support
	{
		"lervag/vimtex",
		ft = "tex",
	},
	-- statusline
	{
		"nvim-lualine/lualine.nvim",
		dependencies = { "nvim-tree/nvim-web-devicons" },
	},
	-- for showing git changes in the sign column
	"lewis6991/gitsigns.nvim",
	-- for directly going to the github repository
	"tpope/vim-rhubarb",
	-- rust tools
	{
		"rust-lang/rust.vim",
		ft = "rust",
		init = function()
			vim.g.rustfmt_autosave = 1
		end,
	},
	-- seamless navigation between nvim and tmux
	{
		"christoomey/vim-tmux-navigator",
		cmd = {
			"TmuxNavigateLeft",
			"TmuxNavigateDown",
			"TmuxNavigateUp",
			"TmuxNavigateRight",
		},
		keys = {
			{ "<c-h>", "<cmd><C-U>TmuxNavigateLeft<cr>" },
			{ "<c-j>", "<cmd><C-U>TmuxNavigateDown<cr>" },
			{ "<c-k>", "<cmd><C-U>TmuxNavigateUp<cr>" },
			{ "<c-l>", "<cmd><C-U>TmuxNavigateRight<cr>" },
		},
	},
	-- file explorer oil
	{
		"stevearc/oil.nvim",
		opts = {},
		dependencies = { "nvim-tree/nvim-web-devicons" },
	},
	-- auto formatters
	{
		"stevearc/conform.nvim",
		opts = {},
	},
	-- repl integration
	{
		"jpalardy/vim-slime",
		ft = "python",
	},
	-- neodev
	{
		"folke/neodev.nvim",
		opts = {},
	},
	-- debugging
	{
		"rcarriga/nvim-dap-ui",
		dependencies = { "mfussenegger/nvim-dap", "nvim-neotest/nvim-nio" },
	},
	-- very effective vim motions
	"ggandor/leap.nvim",
}

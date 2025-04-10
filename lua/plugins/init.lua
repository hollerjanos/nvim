return {
    -- Theme
    {
        "ellisonleao/gruvbox.nvim",
        priority = 1000,
        config = function()
            vim.cmd("colorscheme gruvbox")
        end
    },

    -- Telescope (Fuzzy Finder)
    {
        "nvim-telescope/telescope.nvim",
        tag = "0.1.8",
        dependencies = {
            "nvim-lua/plenary.nvim"
        },
        config = function()
            vim.keymap.set("n", "<leader>ff", "<cmd>Telescope find_files<CR>",
                {
                    desc = "Telescope find files"
                }
            )
            vim.keymap.set("n", "<leader>fg", "<cmd>Telescope live_grep<CR>",
                {
                    desc = "Telescope live grep"
                }
            )
        end
    },

    -- Treesitter
    {
        "nvim-treesitter/nvim-treesitter",
        build = ":TSUpdate",
        config = function()
            require("nvim-treesitter.configs").setup {
                highlight = { enable = true },
                indent = { enable = true },
            }
        end
    },

    -- Commenter
    {
        "numToStr/Comment.nvim"
    },

    -- Status line
    {
        "nvim-lualine/lualine.nvim",
        dependencies = {
            "nvim-tree/nvim-web-devicons"
        },
        config = function()
            require("lualine").setup()
        end
    },

    -- Git
    {
        "lewis6991/gitsigns.nvim",
        config = function()
            require("gitsigns").setup({
                current_line_blame = true,
                current_line_blame_opts = {
                    delay = 0
                }
            })
        end
    },

    -- File explorer
    {
        "nvim-tree/nvim-tree.lua",
        dependencies = {
            "nvim-tree/nvim-web-devicons"
        },
        config = function()
            require("nvim-tree").setup({})
            vim.keymap.set("n", "<leader>e", "<cmd>NvimTreeToggle<CR>",
                {
                    desc = "Nvim Tree Toggle"
                }
            )
        end
    }
}

return {
    -- Theme
    {
        "ellisonleao/gruvbox.nvim",
        priority = 1000,
        config = function()
            require("gruvbox").setup({
                italic = {
                    strings = false,
                    comments = false
                }
            })
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
                ensure_installed = {
                    "vimdoc",
                    "lua"
                },
                highlight = { enable = true },
                indent = { enable = true }
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
    },

    -- Animations
    {
        "karb94/neoscroll.nvim",
        config = function()
            require('neoscroll').setup()
        end
    },

    -- Auto closing pairs
    {
        "windwp/nvim-autopairs",
        config = function()
            require('nvim-autopairs').setup{}
        end
    },

    -- Nice, noise, notice
    {
        "folke/noice.nvim",
        event = "VeryLazy",
        opts = {
            -- add any options here
        },
        dependencies = {
            "MunifTanjim/nui.nvim",
            "rcarriga/nvim-notify",
        }
    },

    -- Neovim Keymap Reminder
    {
        "folke/which-key.nvim",
        event = "VeryLazy",
        dependencies = {
            "echasnovski/mini.icons"
        },
        opts = {
            preset = "helix",
            win = {
                title = false
            }
        }
    }
}

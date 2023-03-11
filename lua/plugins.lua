return require("packer").startup(function(use)
    -- plugins configurations go here

    -- For packer management
    use "wbthomason/packer.nvim"

    -- For file-finder
    use "nvim-lua/plenary.nvim"
    use { "nvim-telescope/telescope-fzf-native.nvim", run = "make" }
    use { "nvim-telescope/telescope.nvim", tag = "0.1.1" }

    -- For buffer navigation
    use "ThePrimeagen/harpoon"

    -- For color scheme
    use { "rose-pine/neovim", as = "rose-pine" }

    -- For syntax highlight
    use {
        "nvim-treesitter/nvim-treesitter",
        run = function()
            local ts_update = require("nvim-treesitter.install").update({ with_sync = true })
            ts_update()
        end,
    }
    use "nvim-treesitter/nvim-treesitter-context"

    -- For status bar
    use "nvim-tree/nvim-web-devicons"
    use {
        "nvim-lualine/lualine.nvim",
        requires = { "kyazdani42/nvim-web-devicons", opt = true }
    }

    -- For auto-pair brackets
    use {
        "windwp/nvim-autopairs",
        config = function() require("nvim-autopairs").setup {} end
    }

    -- For comments
    use {
        'numToStr/Comment.nvim',
        config = function()
            require('Comment').setup()
        end
    }
    use "JoosepAlviste/nvim-ts-context-commentstring"

    -- For indentation
    use "lukas-reineke/indent-blankline.nvim"

    -- For terminal toggle
    use {"akinsho/toggleterm.nvim", tag = '*', config = function()
        require("toggleterm").setup()
    end}

    -- For github copilot
    use "github/copilot.vim"

    -- For LSP
    use "neovim/nvim-lspconfig"

    --For code completion
    use "hrsh7th/cmp-nvim-lsp-signature-help"
    use "hrsh7th/cmp-nvim-lsp"
    use "hrsh7th/cmp-buffer"
    use "hrsh7th/cmp-path"
    use "hrsh7th/cmp-nvim-lua"
    use "hrsh7th/nvim-cmp"

    -- For snippets
    use "hrsh7th/cmp-vsnip"
    use "hrsh7th/vim-vsnip"
    use "hrsh7th/vim-vsnip-integ"
    use "rafamadriz/friendly-snippets"

end)

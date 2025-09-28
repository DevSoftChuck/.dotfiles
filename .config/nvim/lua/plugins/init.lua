return {
    {
        "kdheepak/lazygit.nvim",
        cmd = {
            "LazyGit",
            "LazyGitConfig",
            "LazyGitCurrentFile",
            "LazyGitFilter",
            "LazyGitFilterCurrentFile",
        },
        -- optional for floating window border decoration
        dependencies = {
            "nvim-lua/plenary.nvim",
        },
        -- setting the keybinding for LazyGit with 'keys' is recommended in
        -- order to load the plugin when the command is run for the first time
        keys = {
            { "<leader>lg", "<cmd>LazyGit<cr>", desc = "LazyGit" },
        },
    },

    {
        "rcarriga/nvim-dap-ui",
        event = "VeryLazy",
        dependencies = { "mfussenegger/nvim-dap", "nvim-neotest/nvim-nio" },
        config = function()
            local dap = require "dap"
            local dapui = require "dapui"
            local dapgo = require "dap-go"
            dapgo.setup {
                dap_configurations = {
                    {
                        type = "go",
                        name = "Debug (Build Flags)",
                        request = "launch",
                        program = "${file}",
                        buildFlags = require("dap-go").get_build_flags,
                    },
                },
            }
            dapui.setup()
            dap.listeners.after.event_initialized["dapui_config"] = function()
                dapui.open()
            end
            dap.listeners.before.event_terminated["dapui_config"] = function()
                dapui.close()
            end
            dap.listeners.before.event_exited["dapui_config"] = function()
                dapui.close()
            end
        end,
    },

    {
        "jay-babu/mason-nvim-dap.nvim",
        event = "VeryLazy",
        dependencies = {
            "williamboman/mason.nvim",
            "mfussenegger/nvim-dap",
        },
        opts = {
            handlers = {},
        },
    },

    {
        "mfussenegger/nvim-dap",
    },

    {
        "leoluz/nvim-dap-go",
        ft = "go",
        dependencies = "mfussenegger/nvim-dap",
        config = function(_, opts)
            require("dap-go").setup(opts)
        end,
    },

    {
        "stevearc/conform.nvim",
        event = { "BufReadPre", "BufNewFile" },
        config = function()
            require "configs.conform"
        end,
    },

    {
        "neovim/nvim-lspconfig",
        config = function()
            require("nvchad.configs.lspconfig").defaults()
            require "configs.lspconfig"
        end,
    },

    {
        "williamboman/mason.nvim",
        opts = {
            ensure_installed = {
                "lua-language-server",
                "stylua",
                "html-lsp",
                "css-lsp",
                "prettier",
                "delve",
                "gofumpt",
                "golang",
                "gopls",
                "lua-la",
                "snyk",
                "stylua",
                "trivy",
                "clangd",
                "clang-format",
                "codelldb",
                "pyright",
            },
        },
    },

    {
        "nvim-treesitter/nvim-treesitter",
        opts = {
            ensure_installed = {
                "vim",
                "lua",
                "vimdoc",
                "html",
                "css",
                "go",
                "cpp",
                "python",
                "markdown",
                "markdown_inline",
            },
        },
    },

    {
        "olimorris/codecompanion.nvim",
        opts = {
            strategies = {
                chat = {
                    adapter = "ollama",
                    -- model = "gemma3:12b"
                    -- model = "deepseek-r1:14b"
                    -- model = "llama3.1:8b"
                    model = "gpt-oss:20b"
                },
                inline = {
                    name = "copilot",
                    model = "gpt-4.1",
                },
                opts = {
                    log_level = "DEBUG",
                },
            },
        },
        lazy = false,
        dependencies = {
            "nvim-lua/plenary.nvim",
            "ravitemer/mcphub.nvim"
        },
    },
}

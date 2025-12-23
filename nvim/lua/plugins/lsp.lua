return {
  {
    "mason-org/mason.nvim",
    cmd = "Mason",
    keys = { { "<leader>m", "<cmd>Mason<cr>", desc = "Mason" } },
    opts = {
      ui = {
        icons = {
          package_installed = "✓",
          package_pending = "➜",
          package_uninstalled = "✗",
        },
      },
    },
  },
  {
    "mason-org/mason-lspconfig.nvim",
    version = "^2.0.0", -- Ensure we are using v2
    dependencies = { "mason.nvim", "neovim/nvim-lspconfig" },
    opts = {
      -- 1. List servers to auto-install
      ensure_installed = {
        -- "lua_ls",
        -- "ts_ls",
        -- "pyright",
      },
      -- 2. Auto-download missing servers
      automatic_installation = true, 
      
      -- 3. Auto-start servers (New in v2.0, replaces setup_handlers)
      -- This relies on vim.lsp.config (Neovim 0.11+)
      automatic_enable = true, 
    },
  },
  {
    "neovim/nvim-lspconfig",
    config = function()
      -- In Neovim 0.11+, we configure servers via vim.lsp.config
      -- BEFORE they are enabled by Mason.
      
      -- Example: Customizing Lua LS
      vim.lsp.config("lua_ls", {
        settings = {
          Lua = {
            workspace = { checkThirdParty = false },
            telemetry = { enable = false },
          },
        },
      })
      vim.lsp.enable("lua_ls")
      vim.lsp.enable("hls")
    end,
  }
}

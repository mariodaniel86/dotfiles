return {
  {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    opts = {
      -- A list of parser names, or "all" (the listed parsers MUST always be installed)
      ensure_installed = { "c", "haskell", "lua", "vim", "vimdoc", "query", "markdown", "markdown_inline" },

      highlight = {
        enable = true,
      }
    }
  }
}

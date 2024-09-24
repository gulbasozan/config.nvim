local M = {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    opts = {
        ensure_installed = {
            "c",
            "cpp",
            "rust",
            "go",
            "lua",
            "html",
            "css",
            "javascript",
            "typescript",
            "dockerfile",
--             "sql",
            "json",
            "toml",
            "yaml",
        },
        highlight = { enable = true },
        indent = { enable = true },
    }
}
function M.config(_, opts)
    local configs = require("nvim-treesitter.configs")
    configs.setup(opts)
end
return M

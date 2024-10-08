local M = {
    "nvimtools/none-ls.nvim",
    dependencies = {
        "nvim-lua/plenary.nvim",
        "williamboman/mason.nvim",
        "jay-babu/mason-null-ls.nvim"
    }
}

function M.config()
    local null_ls = require("null-ls")

    null_ls.setup({
        sources = {
            null_ls.builtins.formatting.prettierd,
            -- Add other formatter/linters as needed
        },
    })

    require("mason-null-ls").setup({
        ensure_installed = { "prettierd" },
    })
end

return M

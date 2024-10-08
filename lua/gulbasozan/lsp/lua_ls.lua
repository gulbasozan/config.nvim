-- https://luals.github.io/wiki/settings/

return {
    settings = {
        Lua = {
            format = {
                enable = true,
            },
            diagnostics = {
                globals = { "vim" },
            },
            runtime = {
                version = "LuaJIT",
            },
            workspace = {
                checkThirdParty = false,
                library = {
                    [vim.fn.expand "$VIMRUNTIME/lua"] = true,
                    [vim.fn.stdpath "config" .. "/lua"] = true,
                },
            },
        },
    },
}

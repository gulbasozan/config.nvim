local M = {
    "hrsh7th/nvim-cmp",
    event = "InsertEnter",
    dependencies = {
        {
            "hrsh7th/cmp-nvim-lsp",
            event = "InsertEnter",
        },
        {
            "hrsh7th/cmp-buffer",
            event = "InsertEnter",
        },
        {
            "hrsh7th/cmp-path",
            event = "InsertEnter",
        },
        {
            "hrsh7th/cmp-cmdline",
            event = "InsertEnter",
        },
        {
            "saadparwaiz1/cmp_luasnip",
            event = "InsertEnter",
        },
        {
            "L3MON4D3/LuaSnip",
            event = "InsertEnter",
            dependencies = {
                "rafamadriz/friendly-snippets",
            },
        },
        {
            "hrsh7th/cmp-nvim-lua",
        },
    },
}

M.opts = function()
    local cmp = require("cmp")
    local luasnip = require("luasnip")
    local opts = {
        snippet = {
            expand = function(args)
                luasnip.lsp_expand(args.body)
            end,
        },
        sources = {
            { name = "nvim_lsp" },
            { name = "luasnip" },
            { name = "buffer" },
            { name = "path" },
        },
        window = {
            completion = {
                border = "rounded",
                scrollbar = false,
            },
            documentation = {
                border = "rounded",
            },
        },

        mapping = cmp.mapping.preset.insert {
            ["<Tab>"] = cmp.mapping.select_next_item { behavior = cmp.SelectBehavior.Insert },
            ["<S-Tab>"] = cmp.mapping.select_prev_item { behavior = cmp.SelectBehavior.Insert },
            ["<Tab-Space>"] = cmp.mapping(cmp.mapping.complete()),
            ["<Tab-y>"] = cmp.mapping(cmp.mapping.confirm { behavior = cmp.ConfirmBehavior.Insert, select = true }),
            ["<C-k>"] = cmp.mapping(function()
                if luasnip.expand_or_jumpable() then
                    luasnip.expand_or_jump()
                end
            end, { "i", "s" }),
            ["<C-j>"] = cmp.mapping(function()
                if luasnip.jumpable(-1) then
                    luasnip.jump(-1)
                end
            end, { "i", "s" })
        },
    }
    return opts
end

M.config = function(_, opts)
    local cmp = require("cmp")
    cmp.setup(opts)
end

return M


local M = {}

local spec = function(item)
    ok, i = pcall(require, "gulbasozan.plugins." .. item)
    if ok then
        table.insert(M, i)
    end
end

spec("cmp")
spec("treesitter")
spec("nordic")
spec("devicons")
spec("telescope")
spec("which-key")
spec("mason")
spec("lspconfig")
spec("null-ls")

return M

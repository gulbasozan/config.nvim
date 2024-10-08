local M = {}

local spec = function(item)
    ok, i = pcall(require, "gulbasozan.plugins." .. item)
    if ok then
        table.insert(M, i)
    end
end

spec("treesitter")
spec("nordic")
spec("devicons")
spec("telescope")
spec("which-key")

return M

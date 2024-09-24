local M = {}

local spec = function(item)
    ok, i = pcall(require, "gulbasozan.plugins." .. item)
    if ok then
        table.insert(M, i)
    end
end

spec("treesitter")

return M

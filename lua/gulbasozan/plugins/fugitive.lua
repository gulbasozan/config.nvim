local M = {
    "tpope/vim-fugitive"
}

M.config = function()
    vim.keymap.set("n", "<leader>gs", vim.cmd.Git, {desc = "Git Status"})
    vim.keymap.set("n", "<leader>gf", function()
        vim.cmd.Git({ args = {"fetch"}}) end, {desc = "Git Fetch"})
    vim.keymap.set("n", "<leader>gp", function() vim.cmd.Git({ args = {"pull"}}) end, {desc = "Git Pull"})
    vim.keymap.set("n", "<leader>gc", function() vim.cmd.Git({ args = {"commit"}}) end, { desc = "Git Commit" })
    vim.keymap.set("n", "<leader>gd", vim.cmd.Gdiffsplit, { desc = "Git Diff" })
    vim.keymap.set("n", "<leader>gw", vim.cmd.Gwrite, { desc = "Git Write"})
    vim.keymap.set("n", "<leader>gr", vim.cmd.Gread, { desc = "Git Read"})
end

return M

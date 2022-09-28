function map(mode, lhs, rhs, opts)
    local options = { noremap = true }
    if opts then
        options = vim.tbl_extend("force", options, opts)
    end
    vim.api.nvim_set_keymap(mode, lhs, rhs, options)
end


map("n", "<C-b>", ":NvimTreeToggle<CR>", { silent = true })
map("n", "<C-j>", ":OneTerm term<CR>", { silent = true })
map("n", "<C-n>", ":OneTerm ranger<CR>", { silent = true })

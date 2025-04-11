vim.opt.number = true
vim.opt.relativenumber = true

vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true
vim.opt.smartindent = true

vim.opt.cursorline = true

vim.opt.wrap = false

vim.opt.termguicolors = true

vim.opt.scrolloff = 5

vim.api.nvim_create_autocmd("InsertEnter", {
    callback = function()
        vim.opt.colorcolumn = { "50", "80" }
    end
})

vim.api.nvim_create_autocmd("InsertLeave", {
    callback = function()
        vim.opt.colorcolumn = ""
    end
})

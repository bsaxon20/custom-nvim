local bufnr = 18
vim.api.nvim_buf_set_lines(bufnr, 0, -1, false, { "hello", "world" })

vim.api.nvim_create_autocmd("BufWritePost", {
    group = vim.api.nvim_create_augroup("BensCoolTutorial", {clear = true})
    callback = function ()
        
    end
})

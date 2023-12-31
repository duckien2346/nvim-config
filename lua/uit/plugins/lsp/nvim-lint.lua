return {
    'mfussenegger/nvim-lint',
    -- cond = false,
    event = { 'BufReadPre', 'BufNewFile' },
    config = function(_, _)
        local lint = require('lint')

        lint.linters_by_ft = {
            javascript = { 'eslint_d' },
            typescript = { 'eslint_d' },
            javascriptreact = { 'eslint_d' },
            typescriptreact = { 'eslint_d' },
            svelte = { 'eslint_d' },
            python = { 'ruff' },
        }

        vim.api.nvim_create_autocmd({ 'BufEnter', 'BufWritePost', 'InsertLeave' }, {
            group = vim.api.nvim_create_augroup('NvimLint', { clear = true }),
            callback = function()
                lint.try_lint()
            end,
        })

        -- vim.keymap.set("n", "<leader>l", function()
        --   lint.try_lint()
        -- end, { desc = "Trigger linting for current file" })
    end,
}

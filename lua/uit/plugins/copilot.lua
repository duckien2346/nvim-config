return {
    'zbirenbaum/copilot.lua',
    cmd = 'Copilot',
    event = 'InsertEnter',
    opts = {
        -- panel = {
        --     enabled = true, -- copilot-cmp
        --     keymap = {
        --         jump_prev = '[[',
        --         jump_next = ']]',
        --         accept = '<CR>',
        --         refresh = 'gr',
        --         open = '<A-CR>',
        --     },
        --     layout = {
        --         position = 'bottom', -- | top | left | right
        --         ratio = 0.4,
        --     },
        -- },
        suggestion = {
            enabled = true, -- copilot-cmp
            auto_trigger = true,
            debounce = 75,
            keymap = {
                accept = '¬',
                accept_word = false,
                accept_line = false,
                next = '‘',
                prev = '“',
                dismiss = '<C-]>',
            },
        },
        filetypes = {
            yaml = true,
            markdown = false,
            help = false,
            gitcommit = false,
            gitrebase = false,
            hgcommit = false,
            svn = false,
            cvs = false,
            ['.'] = false,
        },
        -- copilot_node_command = "node", -- Node.js version must be > 16.x
        copilot_node_command = vim.fn.expand('$HOME') .. '/.nvm/versions/node/v20.10.0/bin/node', -- Node.js version must be > 18.x
        -- server_opts_overrides = {},
        --
    },
}

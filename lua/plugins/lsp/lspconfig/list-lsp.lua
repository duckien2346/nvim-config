local list_lsp = {
    -- configure lua server (with special settings)
    lua_ls = {
        settings = { -- custom settings for lua
            Lua = {
                -- make the language server recognize "vim" global
                diagnostics = {
                    globals = { "vim" },
                },
                workspace = {
                    -- make language server aware of runtime files
                    library = {
                        [vim.fn.expand("$VIMRUNTIME/lua")] = true,
                        [vim.fn.stdpath("config") .. "/lua"] = true,
                    },
                },
            },
        },
    },

    -- configure html server
    html = {
        enabled = true,
        filetypes = { "html", "typescriptreact", "javascriptreact" },
    },

    -- configure typescript server with plugin
    tsserver = { enabled = true, },

    -- configure css server
    cssls = { enabled = true, },

    -- configure tailwindcss server
    tailwindcss = { enabled = false, },

    -- configure eslint-lsp server
    eslint = { enabled = false, },

    -- configure graphql language server
    graphql = {
        enabled = false,
        filetypes = { "graphql", "gql", "svelte", "typescriptreact", "javascriptreact" },
    },

    -- configure emmet language server
    emmet_ls = {
        enabled = false,
        filetypes = { "html", "typescriptreact", "javascriptreact", "css", "sass", "scss", "less", "svelte" },
    },

    -- configure jsonls server
    jsonls = { enabled = true, },

    -- configure angularls server
    angularls = { enabled = false, },

    -- configure python server
    pyright = {
        enabled = false,
        settings = {
            python = {
                analysis = {
                    autoImportCompletions = true,
                    autoSearchPaths = true,
                    useLibraryCodeForTypes = true,
                    diagnosticMode = "openFilesOnly",
                    pythonPath = vim.fn.exepath("python3"),
                    venvPath = "/home/uit/miniconda3/envs",
                },
            },
        },
    },

    -- configure omnisharp server
    omnisharp = {
        enabled = true,
        cmd = { "dotnet", vim.fn.stdpath("data") .. "/mason/packages/omnisharp/libexec/OmniSharp.dll" },
        enable_editorconfig_support = true,
        enable_roslyn_analyzers = true,
        organize_imports_on_format = true,
        enable_import_completion = true,
        enable_ms_build_load_projects_on_demand = false,
        handlers = {
            ["textDocument/definition"] = require("omnisharp_extended").handler,
        },
    },

    -- configure docker_compose
    docker_compose_language_service = { enabled = false, },

    -- configure docker
    dockerls = { enabled = false, },
}

for k, v in pairs(list_lsp) do
    if v.enabled == false then
        list_lsp[k] = nil
    end
end

return list_lsp

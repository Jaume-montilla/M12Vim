return {
  'nvimtools/none-ls.nvim',
  dependencies = {
    'nvimtools/none-ls-extras.nvim',
    'jayp0521/mason-null-ls.nvim',
    },
    config = function ()
        local null_ls = require 'null-ls'
        local formatting = null_ls.builtins.formatting
        local diagnostics = null_ls.builtins.diagnostics

        require('mason-null-ls').setup {
            ensure_installed = {
                'prettier',
                'stylua',
                'eslint_d',
                'shfmt',
                'checkmake',
                'ruff',
            },
            automatic_installation = true,
        }

    local sources = {
        diagnostics.checkmake,
        formatting.prettier.with { filetypes = { 'html', 'json', 'yaml', 'markdown' } },
        formatting.stylua,
        formatting.shfmt.with { args = { '-i', '4' } },
        formatting.terraform_fmt,
        require('none-ls.formatting.ruff').with { extra_args = { '--extend-select', 'I' } },
        require 'none-ls.formatting.ruff_format',
        }

    local augroup = vim.api.nvim_create_augroup('LspFormatting', {})
    null_ls.setup {
    --debug = true
    sources = sources
        }
    end,
}

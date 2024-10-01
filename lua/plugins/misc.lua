return {
{
    --git integration
    'tpope/vim-fugitive'
},     
{
    --github integration
    'tpope/vim-rhubarb'
},
{
    -- hint keybind
    'folke/which-key.nvim'
},
{
    -- autoclose parentheses
    'windwp/nvim-autopairs',
    event = 'InsertEnter',
    config = true,
    opts = {},
},
{
    -- highlight TODO
    'folke/todo-comments.nvim',
    event = 'VimEnter',
    dependencies = { 'nvim-lua/plenary.nvim' },
    opts = { signs = false },
},
{
    --highlight colors
    'norcalli/nvim-colorizer.lua',
    config = function()
        require('colorizer').setup()
    end,
},
}

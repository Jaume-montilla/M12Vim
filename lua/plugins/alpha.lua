return {
  'goolord/alpha-nvim',
  dependencies = {
    'nvim-tree/nvim-web-devicons',
  },

  config = function()
    local alpha = require 'alpha'
    local dashboard = require 'alpha.themes.startify'

    dashboard.section.header.val = {

[[                                                                                           ]],
[[                       __                                                                  ]],
[[                  ...-'  |`.           .-''-.                                              ]],
[[  __  __   ___    |      |  |        .' .-.  )     .----.     .----. .--.  __  __   ___    ]],
[[ |  |/  `.'   `.  ....   |  |       / .'  / /       \    \   /    /  |__| |  |/  `.'   `.  ]],
[[ |   .-.  .-.   '   -|   |  |      (_/   / /         '   '. /'   /   .--. |   .-.  .-.   ' ]],
[[ |  |  |  |  |  |    |   |  |           / /          |    |'    /    |  | |  |  |  |  |  | ]],
[[ |  |  |  |  |  | ...'   `--'          / /           |    ||    |    |  | |  |  |  |  |  | ]],
[[ |  |  |  |  |  | |         |`.       . '            '.   `'   .'    |  | |  |  |  |  |  | ]],
[[ |  |  |  |  |  | ` --------\ |      / /    _.-')     \        /     |  | |  |  |  |  |  | ]],
[[ |__|  |__|  |__|  `---------'     .' '  _.'.-''       \      /      |__| |__|  |__|  |__| ]],
[[                                  /  /.-'_.'            '----'                             ]],
[[                                 /    _.'                                                  ]],
[[                                ( _.-'                                                     ]],
[[                                                                                           ]],
     }

    alpha.setup(dashboard.opts)
  end,
}

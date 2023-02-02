local startup = requirePlugin "dashboard"
if not startup then
  vim.notify "Cannot find dashboard"
  return
end

startup.setup {
  theme = "doom",
  config = {
    header = {
      [[]],
      [[]],
      [[]],
      [[]],
      [[]],
      [[]],
      [[        ▄▄▄▄▄███████████████████▄▄▄▄▄      ]],
      [[      ▄██████████▀▀▀▀▀▀▀▀▀▀██████▀████▄    ]],
      [[     █▀████████▄             ▀▀████ ▀██▄   ]],
      [[    █▄▄██████████████████▄▄▄         ▄██▀  ]],
      [[     ▀█████████████████████████▄    ▄██▀   ]],
      [[       ▀████▀▀▀▀▀▀▀▀▀▀▀▀█████████▄▄██▀     ]],
      [[         ▀███▄              ▀██████▀       ]],
      [[           ▀██████▄        ▄████▀          ]],
      [[              ▀█████▄▄▄▄▄▄▄███▀            ]],
      [[                ▀████▀▀▀████▀              ]],
      [[                  ▀███▄███▀                ]],
      [[                     ▀█▀                   ]],
      [[]],
      [[]],
    },
    center = {
      {
        icon = "  ",
        desc = "Projects                            ",
        action = "Telescope projects",
      },
    },
    footer = {},
  },
}

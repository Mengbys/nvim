local db = require('dashboard')

db.setup({
  theme = 'doom',
  hide = {},
  config = {
    header = {
      '',
      '',
      '',
      '',
      '',
      '',
      '    ████▌█████▌█ ████████▐▀██▀    ',
      '  ▄█████ █████▌ █ ▀██████▌█▄▄▀▄   ',
      '  ▌███▌█ ▐███▌▌  ▄▄ ▌█▌███▐███ ▀  ',
      ' ▐ ▐██  ▄▄▐▀█   ▐▄█▀▌█▐███▐█      ',
      '   ███ ▌▄█▌  ▀  ▀██  ▀██████▌     ',
      '    ▀█▌▀██▀ ▄         ███▐███     ',
      '     ██▌             ▐███████▌    ',
      '     ███     ▀█▀     ▐██▐███▀▌    ',
      '     ▌█▌█▄         ▄▄████▀ ▀      ',
      '       █▀██▄▄▄ ▄▄▀▀██▀█           ',
      '',
      '',
    }, --your header
    center = {
      {
        icon = '  ',
        desc = 'Recently open files                   ',
        key = 'm',
        key_format = '%s',
        action ='FzfLua oldfiles'
      },
      {
        icon = '  ',
        desc = 'Find file                             ',
        key = 'f',
        key_format = '%s',
        action ='FzfLua files'
      },
      {
        icon = '  ',
        desc = 'Restore last session                  ',
        key = 'r',
        key_format = '%s',
        action ='LS'
      },
      {
        icon = '  ',
        desc = 'New file                              ',
        key = 'e',
        key_format = '%s',
        action ='ene'
      },
      {
        icon = '󰈆  ',
        desc = 'Quit                                  ',
        key = 'q',
        key_format = '%s',
        action ='exit'
      },
    },
    footer = {
      '',
      'Have fun and have a nice day!'
    }  --your footer
  }
})

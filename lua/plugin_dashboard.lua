local db = require('dashboard')

db.custom_header = {
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
}
db.custom_footer = {
  '',
  'Have fun and have a nice day!'
}

db.custom_center = {
  {icon = 'ﭯ ',
  desc = 'Recently open files                   ',
  shortcut = 'm',
  action =''},
  {icon = ' ',
  desc = 'Find file                             ',
  shortcut = 'f',
  action =''},
  {icon = ' ',
  desc = 'Load last session                     ',
  shortcut = 'l',
  action =''},
  {icon = ' ',
  desc = 'New file                              ',
  shortcut = 'e',
  action =''},
  {icon = ' ',
  desc = 'Quit                                  ',
  shortcut = 'q',
  action =''},
}

db.hide_statusline = true
db.hide_tabline = true
db.hide_winbar = true

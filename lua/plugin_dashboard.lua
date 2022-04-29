vim.g.dashboard_default_executive = 'fzf'
vim.g.dashboard_custom_footer = {'Have fun and have a nice day!'}
-- vim.g.dashboard_session_directory = '~'

vim.g.dashboard_custom_section = {
    find_history = {
        description = {'ﭯ Recently open files                   m'},
        command = 'DashboardFindHistory',
    },
    find_file = {
        description = {' Find file                             f'},
        command = 'DashboardFindFile',
    },
    load_session = {
        description = {' Load last session                     l'},
        command = 'LS',
    },
    new_file = {
        description = {' New file                              e'},
        command = 'enew',
    },
    quit = {
        description = {' Quit                                  q'},
        command = 'exit',
    },
}

vim.g.dashboard_custom_header = {
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

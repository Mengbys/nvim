vim.cmd(
[[
function! Patch_colors()
    set fillchars+=vert:\│
    hi VertSplit cterm=NONE guibg=NONE guifg=NONE
    hi LspDiagnosticsDefaultError guifg=red
    hi LspDiagnosticsDefaultWarning guifg=orange
    hi link mkdHeading htmlH1
    hi DashboardHeader guifg=#ce6f8f
endfunction

autocmd! Colorscheme * call Patch_colors()
]]) 
vim.cmd[[colorscheme tokyonight]]
vim.g.airline_theme='atomic'
    


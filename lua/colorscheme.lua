vim.cmd(
[[
function! Patch_colors()
    set fillchars+=vert:\│
    hi VertSplit cterm=NONE guibg=NONE guifg=NONE
    hi LspDiagnosticsDefaultError guifg=red
    hi LspDiagnosticsDefaultWarning guifg=orange
    hi link mkdHeading htmlH1
endfunction

autocmd! Colorscheme * call Patch_colors()
]]) 
vim.cmd[[colorscheme spaceduck]]
vim.g.airline_theme='dark_change'
    


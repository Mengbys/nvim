function! s:patch_colors()
    set fillchars+=vert:\│
    hi VertSplit cterm=NONE guibg=NONE guifg=NONE
    hi LspDiagnosticsDefaultError guifg=red
    hi LspDiagnosticsDefaultWarning guifg=orange
endfunction

autocmd! Colorscheme * call s:patch_colors()

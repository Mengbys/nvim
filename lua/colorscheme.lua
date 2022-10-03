vim.cmd(
[[
function! Patch_colors()
    set fillchars+=vert:\│
    " VerSplit is deprecated by WinSeparator
    hi WinSeparator cterm=NONE guibg=NONE
    hi NvimTreeWinSeparator cterm=NONE guibg=NONE
    hi LspDiagnosticsDefaultError guifg=red
    hi LspDiagnosticsDefaultWarning guifg=orange
    hi link mkdHeading htmlH1
    hi DashboardHeader guifg=#ce6f8f
    hi BufferLineIndicatorSelected guifg=#51afef
    " hi BufferLineFill guifg=#202328 guibg=#202328
    " transparence
    hi Normal guibg=NONE
    hi NormalNC guibg=NONE
    hi NormalSB guibg=NONE
    hi NvimTreeNormal guibg=NONE
    hi NvimTreeNormalNC guibg=NONE
endfunction

autocmd! Colorscheme * call Patch_colors()
]])
vim.cmd[[colorscheme tokyonight]]


-- Color patch
vim.cmd[[
function! Patch_colors()
  " Windows separator
  hi WinSeparator guifg=grey

  " Dashboard
  hi DashboardHeader guifg=#ce6f8f

  " transparency
  hi NvimTreeNormal guibg=none
  hi NvimTreeNormalNC guibg=none
  hi NvimTreeWinSeparator guifg=grey guibg=none
endfunction

autocmd! Colorscheme * call Patch_colors()

colorscheme tokyonight
]]





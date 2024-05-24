" twitch.tv/@teej_dv
" NOTE: may need some tweaking
function! s:small_terminal() abort
  new
  wincmd J
  call nvim_win_set_height(0, 12)
  set winfixheight
  set norelativenumber
  set nonumber
  set scrolloff=0
  term
endfunction

" ANKI: Make a small terminal at the bottom of the screen.
nnoremap <leader>st :call <SID>small_terminal()<CR>

" TODO: Make a floating terminal for one shot command?

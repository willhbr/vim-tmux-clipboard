let g:tmux_shared_register = get(g:, 'tmux_shared_register', '*')

function! s:TmuxBuffer()
  return system('tmux show-buffer')
endfunction

function! s:EnableTmuxClipboard()
  if $TMUX==''
    return
  endif

  augroup vimtmuxclipboard
    autocmd!
    autocmd FocusLost * silent! call system('tmux loadb -', getreg(g:tmux_shared_register))
    autocmd FocusGained * call setreg(g:tmux_shared_register, system('tmux show-buffer'))
  augroup END
  call setreg(g:tmux_shared_register, system('tmux show-buffer'))
endfunction

call s:EnableTmuxClipboard()

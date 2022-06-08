" Title: Vim Schedule Highlight
" Description: Highlight task line whose interval contains moment.
" Last Change: 02 June 2022
" Maintainer: Manas <manas18244@iiitd.ac.in>

let g:loaded_schedule_highlight = 0

function! s:start() abort
  if !exists("g:loaded_schedule_highlight")
    finish
  endif
  let g:loaded_schedule_highlight = 1
  call sched#init()
endfunction

" command! -nargs=0 SchedHi :call s:start()
command! -nargs=0 SchedHi :call sched#init()
" autocmd! BufEnter <buffer> execute("SchedHi")

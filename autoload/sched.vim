function! sched#init() abort
  " if !exists("g:loaded_schedule_highlight")
  "   finish
  " endif
  " Read current time
  " Start reading first columns and split by :
  " If curr_time falls in between splits then highlight
  " match SignColumn /to-be-highlighted-line/
  let curr_time = strftime("%H%M")
  let start = line('w0')
  let end = line("$")
  let lines = getline(start, end)
  for line in lines
    let interval = split(split(line, ' ')[0], ':')
    let commence = interval[0]
    let finish = interval[1]
    if commence <= curr_time && curr_time < finish
      let task = trim(split(line, '│')[1])
      echo task
      echo line
      execute("match SignColumn /" . line . "/")
    endif
  endfor
endfunction

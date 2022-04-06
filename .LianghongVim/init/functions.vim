" ! autoVimLeave has Problem and broken code heightLight
"  fu! SaveSess()
"      execute 'call mkdir(%:p:h/.vim)'
"      execute 'mksession! %:p:h/.vim/session.vim'
"  endfunction

"  fu! RestoreSess()
"  execute 'so %:p:h/.vim/session.vim'
"  if bufexists(1)
"      for l in range(1, bufnr('$'))
"          if bufwinnr(l) == -1
"              exec 'sbuffer ' . l
"          endif
"      endfor
"  endif
"  endfunction

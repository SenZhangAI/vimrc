if has("cscope")
  set csprg=/usr/bin/cscope " should be setting to real path when new install
  set csto=0
  set cst
  set nocsverb
  " add any database in current directory
  if filereadable("cscope.out")
    cs add cscope.out
    " else add database pointed to by environment
  elseif $CSCOPE_DB != ""
    cs add $CSCOPE_DB
  endif
  set csverb

  nmap <C-_>s :cs find s <C-R>=expand("<cword>")<CR><CR>
  nmap <C-_>g :cs find g <C-R>=expand("<cword>")<CR><CR>
  nmap <C-_>c :cs find c <C-R>=expand("<cword>")<CR><CR>
  nmap <C-_>t :cs find t <C-R>=expand("<cword>")<CR><CR>
  nmap <C-_>e :cs find e <C-R>=expand("<cword>")<CR><CR>
  nmap <C-_>f :cs find f <C-R>=expand("<cfile>")<CR><CR>
  nmap <C-_>i :cs find i ^<C-R>=expand("<cfile>")<CR>$<CR>
  nmap <C-_>d :cs find d <C-R>=expand("<cword>")<CR><CR>


  " Using 'CTRL-spacebar' then a search type makes the vim window
  " split horizontally, with search result displayed in
  " the new window.

  nmap <C-Space>s :scs find s <C-R>=expand("<cword>")<CR><CR>
  nmap <C-Space>g :scs find g <C-R>=expand("<cword>")<CR><CR>
  nmap <C-Space>c :scs find c <C-R>=expand("<cword>")<CR><CR>
  nmap <C-Space>t :scs find t <C-R>=expand("<cword>")<CR><CR>
  nmap <C-Space>e :scs find e <C-R>=expand("<cword>")<CR><CR>
  nmap <C-Space>f :scs find f <C-R>=expand("<cfile>")<CR><CR>
  nmap <C-Space>i :scs find i ^<C-R>=expand("<cfile>")<CR>$<CR>
  nmap <C-Space>d :scs find d <C-R>=expand("<cword>")<CR><CR>

  " Hitting CTRL-space *twice* before the search type does a vertical
  " split instead of a horizontal one

  nmap <C-Space><C-Space>s
        \:vert scs find s <C-R>=expand("<cword>")<CR><CR>
  nmap <C-Space><C-Space>g
        \:vert scs find g <C-R>=expand("<cword>")<CR><CR>
  nmap <C-Space><C-Space>c
        \:vert scs find c <C-R>=expand("<cword>")<CR><CR>
  nmap <C-Space><C-Space>t
        \:vert scs find t <C-R>=expand("<cword>")<CR><CR>
  nmap <C-Space><C-Space>e
        \:vert scs find e <C-R>=expand("<cword>")<CR><CR>
  nmap <C-Space><C-Space>i
        \:vert scs find i ^<C-R>=expand("<cfile>")<CR>$<CR>
  nmap <C-Space><C-Space>d
        \:vert scs find d <C-R>=expand("<cword>")<CR><CR>
endif

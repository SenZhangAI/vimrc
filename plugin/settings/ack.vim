" if silver searcher is installed, use `ag` instead of `ack`
" for more information, please visit https://github.com/ggreer/the_silver_searcher

let g:ag_highlight = 1

if executable("Ag")
  let g:ackprg = 'ag --vimgrep'
  noremap FF :Ack<SPACE>
else
  if executable("ack")
    noremap FF :Ack<SPACE>
  else
    noremap FF :echo "need to install ACK or AG first! e.g. Ubuntu install: apt-get install silversearcher-ag"<CR>
  endif
endif


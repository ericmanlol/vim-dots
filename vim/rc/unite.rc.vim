
" Unite {{{
"===============================================================================


" Map space to the prefix for Unite
nnoremap [unite] <Nop>
nmap <space> [unite]

" General fuzzy search
nnoremap <silent> [unite]<space> :<C-u>Unite
      \ -buffer-name=files buffer file_mru bookmark file_rec/async
      \ -prompt-direction="bottom"<CR>

" content searching like ack.vim or ag.vim
nnoremap <space>/ :Unite grep:.<cr>


" yank history like yankring/yankstack
let g:unite_source_history_yank_enable = 1
nnoremap <space>y :Unite history/yank<cr>


"}}}

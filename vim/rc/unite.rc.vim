
" Unite {{{
"===============================================================================

" Set up some custom ignores
call unite#custom_source('file_rec,file_rec/async,file_mru,file,buffer,grep',
      \ 'ignore_pattern', join([
      \ '\.git/',
      \ 'git5/.*/review/',
      \ 'google/obj/',
      \ 'tmp/',
      \ '.sass-cache',
      \ ], '\|'))

call unite#custom#profile('default', 'context', {'prompt_direction' : 'below'})

" Map space to the prefix for Unite
nnoremap [unite] <Nop>
nmap <space> [unite]

" General fuzzy search
nnoremap <silent> [unite]<space> :<C-u>Unite
      \ -buffer-name=files buffer file_mru bookmark file_rec/async
      \ -prompt-direction="below"<CR>

" content searching like ack.vim or ag.vim
nnoremap <space>/ :Unite grep:.<cr>


" yank history like yankring/yankstack
let g:unite_source_history_yank_enable = 1
nnoremap <space>y :Unite history/yank<cr>

" buffer switching like lustyjuggler
nnoremap <space>s :Unite -quick-match buffer<cr>


" quick commands
nnoremap <silent> [unite]; :<C-u>Unite -buffer-name=history history/command command<CR>


"}}}


" Unite Settings {{{
"===============================================================================


" Start in insert mode
"let g:unite_enable_start_insert = 1

let g:unite_data_directory = "~/.unite"


"}}}


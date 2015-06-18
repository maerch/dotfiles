nnoremap <silent><C-p> :Unite buffer file_rec/async:!<CR>

" Start Insert
let g:unite_enable_start_insert = 1
"let g:unite_enable_short_source_names = 1

" highlight like my vim
let g:unite_cursor_line_highlight = 'CursorLine'

" set up coolguy arrow prompt
let g:unite_prompt = '➜ '

" Use the fuzzy matcher for everything
call unite#filters#matcher_default#use(['matcher_fuzzy'])

" Use the rank sorter for everything
call unite#filters#sorter_default#use(['sorter_rank'])

call unite#custom#profile('files', 'context.ignorecase', 1)
call unite#custom#profile('files', 'context.smartcase', 0)

" Set up some custom ignores
call unite#custom_source('file_rec,file_rec/async,file_mru,file,buffer,grep',
      \ 'ignore_pattern', join([
      \ '\.git/',
      \ 'tmp/',
      \ 'node_modules/',
      \ 'vendor/',
      \ 'Vendor/',
      \ 'bower_components/',
      \ '.sass-cache',
      \ ], '\|'))

"Quick outline, see an overview of this file
"nnoremap <silent> <leader>o :<C-u>Unite -buffer-name=outline -vertical outline<CR>

" Function that only triggers when unite opens
autocmd FileType unite call s:unite_settings()
function! s:unite_settings()
  imap <buffer> jj <Plug>(unite_insert_leave)
  imap <buffer> kk <Plug>(unite_insert_leave)
  imap <buffer> jk <Plug>(unite_exit)
endfunction

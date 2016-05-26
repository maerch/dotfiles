nnoremap <silent> <C-p> :Unite bookmark buffer file_rec/async:! -ignorecase -smartcase<CR>
nnoremap <silent> <C-g> :Unite grep:!<CR>
nnoremap <silent> <C-o> :UniteResume<CR>
nnoremap <silent> <C-y> :Unite history/yank<CR>

nnoremap <silent> <C-i> :UniteBookmarkAdd<CR>
nnoremap <silent> <C-a> :UniteBookmarkAdd<CR>

nnoremap <silent><leader>lg :<C-u>Unite -buffer-name=grep grep<CR>

" Start Insert
let g:unite_enable_start_insert = 1
"let g:unite_enable_short_source_names = 1

" highlight like my vim
let g:unite_cursor_line_highlight = 'CursorLine'

" set up coolguy arrow prompt
let g:unite_prompt = '➜ '

" Enable yank history
let g:unite_source_history_yank_enable = 1

" Use the fuzzy matcher for everything
call unite#filters#matcher_default#use(['matcher_fuzzy'])

"Matched rank order sorter.  The higher the matched word is or
"the longer the matched length is, the higher the rank is.
"call unite#filters#sorter_default#use(['sorter_rank'])

" Compare length sorter
"call unite#filters#sorter_default#use(['sorter_length'])

"Another matched rank order sorter. Uses the scoring algorithm
"from selecta: https://github.com/garybernhardt/selecta.
"If the matched length is shorter, the rank is higher.
call unite#filters#sorter_default#use(['sorter_selecta'])

call unite#filters#converter_default#use(['converter_tail'])

"call unite#custom#profile('files', 'context.ignorecase', 1)
"call unite#custom#profile('files', 'context.smartcase', 0)

" Set up some custom ignores
call unite#custom_source('file_rec,file_rec/async,file_mru,file,buffer,grep',
      \ 'ignore_pattern', join([
      \ '\.git/',
      \ 'tmp/',
      \ 'node_modules/',
      \ 'bower_components/',
      \ '.sass-cache',
      \ ], '\|'))

"call unite#custom#source(
      "\ 'buffer,file_rec,file_rec/async,file_rec/git', 'matchers',
      "\ ['converter_relative_word', 'matcher_fuzzy',
      "\  'matcher_project_ignore_files'])

let g:unite_source_rec_async_command =
      \ ['ag', '--follow', '--nocolor', '--nogroup',
      \  '--hidden', '-g', '']

let g:unite_source_grep_command = 'ag'
let g:unite_source_grep_default_opts =
      \ '-i --vimgrep --hidden --ignore ' .
      \ '''.hg'' --ignore ''.svn'' --ignore ''.git'' --ignore ''.bzr'''
let g:unite_source_grep_recursive_opt = ''

"Quick outline, see an overview of this file
"nnoremap <silent> <leader>o :<C-u>Unite -buffer-name=outline -vertical outline<CR>

" Function that only triggers when unite opens
autocmd FileType unite call s:unite_settings()
function! s:unite_settings()
  imap <buffer> jj <Plug>(unite_insert_leave)
  imap <buffer> kk <Plug>(unite_insert_leave)
  imap <buffer> jk <Plug>(unite_exit)
  imap <buffer> <C-p> <Plug>(unite_redraw)
  nmap <buffer> <C-p> <Plug>(unite_redraw)
endfunction

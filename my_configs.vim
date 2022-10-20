" leave insert mode
inoremap jj <ESC>
" change last word (ttt = tttypo)
inoremap xx <ESC>bcw

" adjust indentation
set expandtab
set tabstop=2
set shiftwidth=2

" adjust split location
set splitright

"add file path to status line
" set statusline+=%f
" set statusline =%{fnamemodify(resolve(expand('%:p')),':~')}\ %*

"colorscheme
let g:sonokai_style = 'andromeda'
let g:sonokai_better_performance = 1
let g:sonokai_disable_italic_comment = 1

" lightline
" let g:lightline = {'colorscheme' : 'sonokai'}
let g:lightline = {
      \ 'colorscheme' : 'sonokai',
      \ 'active': {
        \ 'left': [ [ 'mode', 'paste'  ], [ 'gitbranch', 'readonly', 'filename', 'modified' ]  ],
      \ },
      \ 'component': {
        \ 'martin': 'Martin' 
      \ },
      \ 'component_function': {
        \ 'gitbranch': 'FugitiveHead',
        \ 'filename': 'PathTrail'
      \ },
  \ }

function! PathTrail()
  let path = expand('%:p:h:t')
  return "../" . path . "/" . expand('%:t')
endfunction

colorscheme sonokai


" leave insert mode
inoremap jj <ESC>
" change last word (ttt = tttypo)
inoremap xx <ESC>bcw

" adjust indentation
set expandtab
set tabstop=2
set shiftwidth=2

" do not remove " from json files
autocmd Filetype json
  \ let g:indentLine_setConceal = 0 |
  \ let g:vim_json_syntax_conceal = 0

" cursor mode adjustment
let &t_SI = "\e[5 q"
let &t_EI = "\e[1 q"

" adjust split location
set splitright

" show hidden files
let g:ctrlp_show_hidden=1
let NERDTreeShowHidden = 1

"colorscheme
let g:sonokai_style = 'andromeda'
let g:sonokai_better_performance = 1
let g:sonokai_disable_italic_comment = 1

" lightline
let g:lightline = {
      \ 'colorscheme' : 'sonokai',
      \ 'active': {
        \ 'left': [ [ 'mode', 'paste'  ], [ 'gitbranch', 'readonly', 'filename', 'modified' ]  ],
      \ },
      \ 'component': {
        \ 'foo': 'whatever' 
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


execute pathogen#infect()

syntax on
set autoindent
set number
imap ii <Esc>

" Open splits to the right and below by default
set splitright
set splitbelow

" Global tabbing stuffs
set tabstop=4
set shiftwidth=4
set expandtab

" Textwrap at 80 cols
set textwidth=80
set colorcolumn=80

" Avoiding tab completion for certain filetypes
set wildignore=*.class

" Highlight trailing whitespace
:highlight ExtraWhitespace ctermbg=yellow guibg=yellow
:match ExtraWhitespace /\s\+$/

" Look in ./after/ftplugin/ for file-specific info
filetype plugin indent on

" Remove all trailing whitespace by pressing F5
nnoremap <F5> :let _s=@/<Bar>:%s/\s\+$//e<Bar>:let @/=_s<Bar><CR>


" Syntastic stuff
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

" Toggle the error window
function! ToggleErrors()
  let old_last_winnr = winnr('$')
  lclose
  if old_last_winnr == winnr('$')
    " Nothing was closed, open syntastic error location panel
    Errors
  endif
endfunction
nnoremap <silent> <C-e> :<C-u>call ToggleErrors()<CR>

" This sets the size of the error window
"let g:syntastic_loc_list_height=1

" Enable persistent undo
if !isdirectory($HOME."/.vim")
  call mkdir($HOME."/.vim", "", 0770)
endif
if !isdirectory($HOME."/.vim/undo")
  call mkdir($HOME."/.vim/undo", "", 0700)
endif
set undodir=~/.vim/undo/
set undofile
set undolevels=1000
set undoreload=10000

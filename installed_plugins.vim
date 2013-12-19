"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Fast editing and reloading of vimrc configs
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
map <leader>ee :e! ~/vimrc.d/installed_plugins.vim<cr>
autocmd! bufwritepost installed_plugins.vim source ~/.vimrc

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Vundle
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
call vundle#rc('~/vimrc.d/bundle/')

" let Vundle manage Vundle
" required! 
Bundle 'gmarik/vundle'

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => NERDTree
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Bundle 'scrooloose/nerdtree'

noremap <leader>d :NERDTreeToggle<CR>

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Tagbar
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Bundle 'Tagbar'

noremap <leader>f :TagbarToggle<CR>

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => CtrlP
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Bundle 'kien/ctrlp.vim'

noremap <leader>t :CtrlP 

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Python Mode
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Bundle 'klen/python-mode'

let g:pymode_lint = 0

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Vim Airline
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Bundle 'bling/vim-airline'

let g:airline_left_sep = '▶'
let g:airline_right_sep = '◀'

if !exists('g:airline_symbols')
    let g:airline_symbols = {}
endif

let g:airline_symbols.linenr = '¶'
let g:airline_symbols.branch = '⎇'
let g:airline_symbols.whitespace = 'Ξ'

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Git Plugin
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Bundle 'tpope/vim-fugitive'

cabbrev git <c-r>=(getcmdtype()==':' && getcmdpos()==1 ? 'Git' : 'git')<CR>

Bundle 'gregsexton/gitv'

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => EasyMotion
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Bundle 'Lokaltog/vim-easymotion'

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Alignment
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Bundle 'vim-scripts/Align'

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Textile
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Bundle 'Textile-for-VIM'

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Work status
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
function! ListWorkStatus()
    tabnew
    CtrlP $HOME/work_status
endfunc

cabbrev work <c-r>=(getcmdtype()==':' && getcmdpos()==1 ? 'call ListWorkStatus()' : 'work')<CR>

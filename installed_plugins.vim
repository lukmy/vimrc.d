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
" => Gist
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Bundle 'WebAPI.vim'
Bundle 'Gist.vim'

let g:gist_use_password_in_gitconfig=1

cabbrev gist <c-r>=(getcmdtype()==':' && getcmdpos()==1 ? 'Gist' : 'gist')<CR>

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Tagbar
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Bundle 'Tagbar'

noremap <leader>f :TagbarToggle<CR>

let g:tagbar_autofocus=1

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => CtrlP
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Bundle 'kien/ctrlp.vim'

noremap <leader>t :CtrlP 

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => PEP8 indent
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Bundle 'hynek/vim-python-pep8-indent'

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Jedi
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Bundle 'davidhalter/jedi-vim'

" Shortcuts
let g:jedi#goto_assignments_command = "<C-C>g"
let g:jedi#goto_definitions_command = "<C-C>d"
let g:jedi#documentation_command = "K"
let g:jedi#usages_command = "<C-C>n"
let g:jedi#completions_command = "<C-N>"
let g:jedi#rename_command = "<C-C>r"

" Configurations
let g:jedi#use_tabs_not_buffers = 0

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
" => XPTemplate
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Bundle 'drmingdrmer/xptemplate'

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Work status
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
function! ListWorkStatus()
    tabnew
    CtrlP $HOME/work_status
endfunc

cabbrev work <c-r>=(getcmdtype()==':' && getcmdpos()==1 ? 'call ListWorkStatus()' : 'work')<CR>

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Salt
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Bundle 'saltstack/salt-vim'

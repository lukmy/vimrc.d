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
Plugin 'gmarik/vundle'

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => NERDTree
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Plugin 'scrooloose/nerdtree'
Plugin 'jistr/vim-nerdtree-tabs'

map <leader>d <plug>NERDTreeTabsToggle<CR>

let NERDTreeIgnore=['\.pyc$']

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Github
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Plugin 'WebAPI.vim'
Plugin 'Gist.vim'

let g:gist_use_password_in_gitconfig=1

cabbrev gist <c-r>=(getcmdtype()==':' && getcmdpos()==1 ? 'Gist' : 'gist')<CR>

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Tagbar
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Plugin 'Tagbar'

noremap <leader>f :TagbarToggle<CR>

let g:tagbar_autofocus=1

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => CtrlP
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Plugin 'kien/ctrlp.vim'
Plugin 'tacahiroy/ctrlp-funky'

noremap <leader>t :CtrlP 
noremap <leader>r :CtrlPBufTag<CR>

let g:ctrlp_switch_buffer = 0

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Python
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Plugin 'hynek/vim-python-pep8-indent'

autocmd FileType python map <leader>g :vimgrep //j **/*.py<left><left><left><left><left><left><left><left><left><left>
autocmd FileType python vnoremap <silent> gv :call VisualSelection('gv', 'py')<CR>
" Plugin 'davidhalter/jedi-vim'
" 
" " Shortcuts
" let g:jedi#goto_assignments_command = "<C-C>g"
" let g:jedi#goto_definitions_command = "<C-C>d"
" let g:jedi#documentation_command = "K"
" let g:jedi#usages_command = "<C-C>n"
" let g:jedi#completions_command = "<C-N>"
" let g:jedi#rename_command = "<C-C>r"
" 
" " Configurations
" let g:jedi#use_tabs_not_buffers = 0

Plugin 'vim-scripts/Efficient-python-folding'

Plugin 'nvie/vim-flake8'

" autocmd BufWritePost *.py :call Flake8()

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Vim Airline
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Plugin 'bling/vim-airline'

let g:airline_left_sep = '>'
let g:airline_right_sep = '<'

if !exists('g:airline_symbols')
    let g:airline_symbols = {}
endif

let g:airline_symbols.linenr = 'linenr' " '¶'
let g:airline_symbols.branch = 'branch'
let g:airline_symbols.whitespace = 'whitespace' " 'Ξ'

let g:airline_theme = 'molokai'

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Git Plugin
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Plugin 'tpope/vim-fugitive'

cabbrev git <c-r>=(getcmdtype()==':' && getcmdpos()==1 ? 'Git' : 'git')<CR>

Plugin 'gregsexton/gitv'

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => EasyMotion
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Plugin 'Lokaltog/vim-easymotion'

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Alignment
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Plugin 'vim-scripts/Align'

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Markup Language Support
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Textile
Plugin 'Textile-for-VIM'

" Markdown
autocmd! bufnewfile,bufreadpost,bufwritepost *.md set ft=markdown

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => XPTemplate
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Plugin 'drmingdrmer/xptemplate'

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Salt
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Plugin 'saltstack/salt-vim'

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Color scheme
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Plugin 'tomasr/molokai'
Plugin 'spf13/vim-colors'
Plugin 'altercation/vim-colors-solarized'
Plugin 'flazz/vim-colorschemes'

let g:molokai_original = 1

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Tmuxline
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Plugin 'edkolev/tmuxline.vim'

let g:airline#extensions#tmuxline#enabled = 0

let g:tmuxline_separators = {
            \ 'left' : '',
            \ 'left_alt': '>',
            \ 'right' : '',
            \ 'right_alt' : '<',
            \ 'space' : ' '}

let g:tmuxline_preset = 'full'

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Unite
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Plugin 'Shougo/unite.vim'

Plugin 'Shougo/vimproc.vim'

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Ansible
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Plugin 'chase/vim-ansible-yaml'

"Bundle 'Valloric/YouCompleteMe'

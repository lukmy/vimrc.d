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
" => CtrlP
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Bundle 'kien/ctrlp.vim'

noremap <leader>t :CtrlP 

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Python Mode
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Bundle 'klen/python-mode'

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Vim Powerline
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Bundle 'Lokaltog/vim-powerline'

let g:Powerline_symbols='fancy'

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Git Plugin: vim-fugitive
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Bundle 'tpope/vim-fugitive'

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => EasyMotion
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Bundle 'Lokaltog/vim-easymotion'

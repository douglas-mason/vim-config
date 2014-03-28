cnoremap <C-Tab> w
inoremap <C-Tab> w
onoremap <C-Tab> w
nnoremap <C-Tab> w
vnoremap <C-Tab> w
nnoremap gh <C-W><C-H>
nnoremap gj <C-W><C-J>
nnoremap gk <C-W><C-K>
nnoremap gl <C-W><C-L>
nnoremap mh <C-W><S-H>
nnoremap mj <C-W><S-J>
nnoremap mk <C-W><S-K>
nnoremap ml <C-W><S-L>
vnoremap  "+y
cmap  +
nmap  "+gP
omap  "+gP
vnoremap  "+x
set backspace=indent,eol,start
set backup
"set runtimepath=~/vim,~/vimfiles,~/vimfiles/after,~/.vim/bundle/vundle/
set rtp+=~/vimfiles
set hlsearch
set number
" vim: set ft=vim :
" edit vimrc file in split
:nnoremap <leader>ev :split $MYVIMRC<cr>
" reload vimrc file
:nnoremap <leader>sov :so $MYVIMRC<cr>
" run ruby file
:nnoremap <leader>ru :!ruby %:p<cr>
" run ruby rspec tests
:nnoremap <leader>rs :!rspec --format doc %:p<cr>
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Bundles (Vundle)
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set nocompatible              " be iMproved
filetype off                  " required!

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

Bundle 'gmarik/vundle'
Bundle 'scrooloose/nerdtree'
Bundle 'xolox/vim-notes'
Bundle 'xolox/vim-misc'
Bundle 'L9'
Bundle 'FuzzyFinder'
Bundle 'freitass/todo.txt-vim'
Bundle "mattn/emmet-vim"
Bundle "scrooloose/syntastic"
Bundle "tpope/vim-surround"
Bundle 'bling/vim-airline'
Bundle 'tpope/vim-fugitive'
Bundle 'Valloric/YouCompleteMe'
Bundle 'jiangmiao/auto-pairs'
Bundle 'moll/vim-node'
Bundle 'mattn/webapi-vim'
Bundle 'mattn/gist-vim'
Bundle 'sidorares/node-vim-debugger'
Bundle 'nelstrom/vim-visual-star-search'
Bundle 'vim-scripts/TwitVim'
Bundle 'tpope/vim-endwise' 
Bundle 'vim-ruby/vim-ruby'

filetype plugin indent on     " required!

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Nerd Tree
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Map Ctrl N to open Nerd Tree
map <C-n> :NERDTreeToggle<CR>

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Todo.txt
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"map <C-t> <C-d> :sp C:/Users/douglas.mason/Dropbox/Intermedix/todo/todo.txt
":nnoremap <leader>todo :split C:/Users/douglas.mason/Dropbox/Intermedix/todo/todo.txt<cr>

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Vim Notes
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"vmap <Leader>ns :NoteFromSelectedText<CR>
:let g:notes_directories = ['~/Dropbox/Notes', '~/Dropbox/Notes/IMX']
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Syntastic
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"let g:syntastic_javascript_checkers = ['jshint']
"let g:syntastic_jshint_exec='C:\Users\douglas.mason\AppData\Roaming\npm\jshint.cmd'
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Colors and Fonts
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Enable syntax highlighting
syntax enable

colorscheme desert
set background=dark

" Set extra options when running in GUI mode
if has("gui_running")
    set guioptions-=T
    set guioptions+=e
    set t_Co=256
    set guitablabel=%M\ %t
    set guifont=Source\ Code\ Pro\ Regular\ 13
endif

" Set utf8 as standard encoding and en_US as the standard language
set encoding=utf8

" Use Unix as the standard file type
set ffs=unix,dos,mac
" Open file in browser
nnoremap <leader>ch :update<Bar>silent !google-chrome  "%:p"<CR> 
" Debug node files using chrome node debugger
nnoremap <leader>nd :!node-debug %:p<CR> 
" Set Status Line for Fugitive
set statusline=%{fugitive#statusline()}
"AutoComplete
autocmd FileType javascript set omnifunc=javascriptcomplete#CompleteJS
autocmd FileType html set omnifunc=htmlcomplete#CompleteTags
autocmd FileType css set omnifunc=csscomplete#CompleteCSS
autocmd FileType xml set omnifunc=xmlcomplete#CompleteTags
:imap <C-Space> <C-x><C-o> 
let twitvim_force_ssl = 1

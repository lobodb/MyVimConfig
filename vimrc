" Plugins
" " vim-pathogen https://github.com/tpope/vim-pathogen
" " vim-endwise https://github.com/tpope/vim-endwise
" " vim-rails https://github.com/tpope/vim-rails
" " vim-fugitive https://github.com/tpope/vim-fugitive
" " nerdtree https://github.com/scrooloose/nerdtree
" " snipmate https://github.com/msanders/snipmate.vim

" colors and theme
set t_Co=256
let g:colors_name="railscasts"

" line number
set nu

call pathogen#infect()
syntax on
filetype plugin indent on
map <F2> :NERDTreeToggle<cr>

" Tabs
set expandtab
set shiftwidth=2
set softtabstop=2
set tabstop=2

" Indentation
set autoindent
set cindent
set smartindent
set copyindent

" No line wrapping
set nowrap

" Syntax highlighting
syntax on
if has("autocmd")
  filetype indent on
endif

" Show status bar
set ls=2

" Show title in console title bar
set title

" No backups
set nobackup 
set nowritebackup
set noswapfile

if has("gui_running")
  set guioptions-=m
  set guioptions-=T
  set guioptions-=rL
endif

" Alt + ->/<- to move tabs
nnoremap <silent> <A-Left> :execute 'silent! tabmove ' . (tabpagenr()-2)<CR>
nnoremap <silent> <A-Right> :execute 'silent! tabmove ' . tabpagenr()<CR>

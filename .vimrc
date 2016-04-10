set nocompatible
filetype off

set rtp+=~/dotfiles/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'tpope/vim-fugitive'
Plugin 'scrooloose/nerdtree'
Plugin 'scrooloose/syntastic'
Plugin 'tpope/vim-surround'
Plugin 'kien/ctrlp.vim'
Plugin 'itchyny/lightline.vim'
Plugin 'valloric/youcompleteme'
Plugin 'mileszs/ack.vim'
Plugin 'jiangmiao/auto-pairs'
Plugin 'pangloss/vim-javascript'
Plugin 'mxw/vim-jsx'
Plugin 'airblade/vim-gitgutter'
Plugin 'ervandew/supertab'
Plugin 'carlitux/deoplete-ternjs'
Plugin 'sirver/ultisnips'
Plugin 'terryma/vim-multiple-cursors'

call vundle#end()

" Themes
colorscheme jellybeans 

" CtrlP
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'
let g:ctrlp_working_path_mode = 'ra'
let g:ctrlp_cache_dir = $HOME . '/.cache/ctrlp'
let g:ctrlp_custom_ignore = {
  \ 'dir':  '\v[\/]\.(git|hg|svn|node_modules)$',
  \ 'file': '\v\.(exe|so|dll)$',
  \ 'link': 'some_bad_symbolic_links',
  \ }

if executable('ag')
	  let g:ctrlp_user_command = 'ag %s -l --nocolor -g ""'
endif

" YouCompleteMe and UltiSnips with help from SuperTab
let g:SuperTabDefaultCompletionType = '<C-n>'
let g:SuperTabCrMapping = 0
let g:UltiSnipsExpandTrigger = '<tab>'
let g:UltiSnipsJumpForwardTrigger = '<tab>'
let g:UltiSnipsJumpBackwardTrigger = '<s-tab>'
let g:ycm_key_list_select_completion = ['<C-j>', '<C-n>', '<Down>']
let g:ycm_key_list_previous_completion = ['<C-k>', '<C-p>', '<Up>']

" Lightline
let g:lightline = {
	\ 'colorscheme': 'jellybeans'
	\ }

" Syntastic
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_javascript_checkers = ['eslint']

" Mappings
let mapleader = ','
map ff <c-p>
map <F5> :NERDTreeToggle<CR>
inoremap jj <Esc>
nnoremap <Leader>l :set hlsearch! hlsearch?<CR>

" Config
syntax on
filetype plugin indent on
set timeoutlen=1000
set ttimeoutlen=0
set autoindent
set tabstop=4
set shiftwidth=4
set backspace=2
set noexpandtab
set number
set laststatus=2
set visualbell " no sounds

" Use the OS clipboard by default
set clipboard=unnamed

" ignore
set wildignore+=*/node_modules/**

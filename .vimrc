set nocompatible

filetype off
set rtp+=~/dotfiles/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'tpope/vim-fugitive'
Plugin 'scrooloose/nerdtree'
Plugin 'scrooloose/syntastic'
Plugin 'mtscout6/syntastic-local-eslint.vim'
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
Plugin 'terryma/vim-multiple-cursors'
Plugin 'jpo/vim-railscasts-theme'
Plugin 'honza/vim-snippets'
Plugin 'sirver/ultisnips'
Plugin 'marijnh/tern_for_vim'
call vundle#end()

filetype plugin indent on

" Themes
colorscheme railscasts 

" CtrlP
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'
let g:ctrlp_working_path_mode = 'rw'
let g:ctrlp_cache_dir = $HOME . '/.cache/ctrlp'
let g:ctrlp_custom_ignore = {
  \ 'dir':  '\v[\/]\.(git|hg|svn|node_modules)$',
  \ 'file': '\v\.(exe|so|dll)$',
  \ 'link': 'some_bad_symbolic_links',
  \ }

" NerdTree
let g:NERDTreeChDirMode = 2

if executable('ag')
  let g:ctrlp_user_command = 'ag %s -l --nocolor -g ""'
endif

" make YCM compatible with UltiSnips (using supertab)
let g:ycm_key_list_select_completion = ['<C-n>', '<Down>']
let g:ycm_key_list_previous_completion = ['<C-p>', '<Up>']
let g:SuperTabDefaultCompletionType = '<C-n>'

" better key bindings for UltiSnipsExpandTrigger
let g:UltiSnipsExpandTrigger = "<C-k>"
let g:UltiSnipsJumpForwardTrigger = "<tab>"
let g:UltiSnipsJumpBackwardTrigger = "<s-tab>"
let g:UltiSnipsSnippetsDir = '~/.vim/UltiSnips/'

" Lightline
let g:lightline = {
	\ 'colorscheme': 'seoul256'
	\ }

" Syntastic
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
let g:syntastic_javascript_checkers = ['eslint']
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_loc_list_height = 5
let g:syntastic_auto_loc_list = 0
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 1
let g:syntastic_error_symbol = '❌'
let g:syntastic_style_error_symbol = '⁉️'
let g:syntastic_warning_symbol = '⚠️'
let g:syntastic_style_warning_symbol = '💩'
highlight link SyntasticErrorSign SignColumn
highlight link SyntasticWarningSign SignColumn
highlight link SyntasticStyleErrorSign SignColumn
highlight link SyntasticStyleWarningSign SignColumn

" Mappings
let mapleader = ','
map ff <c-p>
map <F5> :NERDTreeToggle<CR>
inoremap jj <Esc>
nnoremap <Leader>l :set hlsearch! hlsearch?<CR>

" Config
syntax on
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

" Ignore
set wildignore+=*/node_modules/**

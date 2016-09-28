set nocompatible

filetype off
set rtp+=~/dotfiles/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'tpope/vim-fugitive'
Plugin 'tpope/vim-rails'
Plugin 'vim-ruby/vim-ruby'
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
Plugin 'terryma/vim-multiple-cursors'
Plugin 'jpo/vim-railscasts-theme'
Plugin 'honza/vim-snippets'
Plugin 'sirver/ultisnips'
Plugin 'JamshedVesuna/vim-markdown-preview'
call vundle#end()
filetype plugin indent on

" CtrlP
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

" js
let g:javascript_plugin_flow = 1

" make YCM compatible with UltiSnips (using supertab)
let g:ycm_key_list_select_completion = ['<C-n>', '<Down>']
let g:ycm_key_list_previous_completion = ['<C-p>', '<Up>']
let g:SuperTabDefaultCompletionType = '<C-n>'
let g:ycm_complete_in_comments = 1
let g:ycm_collect_identifiers_from_comments_and_strings = 1 

" better key bindings for UltiSnipsExpandTrigger
let g:UltiSnipsEditSplit = 'vertical'
let g:UltiSnipsExpandTrigger = "<tab>"
let g:UltiSnipsJumpForwardTrigger = "<tab>"
let g:UltiSnipsJumpBackwardTrigger = "<s-tab>"
let g:UltiSnipsListSnippets="<c-l>"
let g:UltiSnipsSnippetsDir = $HOME.'/.vim/UltiSnips'
let g:UltiSnipsSnippetDirectories=["UltiSnips"]

" Lightline
let g:lightline = {
	\ 'colorscheme': 'solarized'
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

" User <C-c> if ubuntu for copy
vnoremap <C-c> "+y

" Themes
syntax on

if has('gui_running')
	set background=dark
else
	set background=dark
endif

colorscheme jellybeans 

let g:solarized_termcolors=256

" Config
set timeoutlen=1000
set ttimeoutlen=0
set autoindent
set noexpandtab
set number
set laststatus=2
set visualbell " no sounds

" Spacing
"set tabstop=4
"set shiftwidth=4
"set softtabstop=4
"set expandtab
set tabstop=4
set shiftwidth=4
set backspace=2

" Use the OS clipboard by default
set clipboard=unnamed

" Ignore
set wildignore+=*/node_modules/**

" Store swap files in fixed location not the current dir 
set dir=~/.vimswap//,/var/tmp//,/tmp//,.

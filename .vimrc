execute pathogen#infect()

" theme
colorscheme jellybeans

" ctrlp
let g:ctrlp_working_path_mode = 'ra'
let g:ctrlp_cache_dir = $HOME . '/.cache/ctrlp'

if executable('ag')
	  let g:ctrlp_user_command = 'ag %s -l --nocolor -g ""'
endif

" syntastic
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_javascript_checkers = ['eslint']

" mappings

" config
syntax on
filetype plugin indent on
set tabstop=2
set shiftwidth=2
set backspace=2
set expandtab
set relativenumber

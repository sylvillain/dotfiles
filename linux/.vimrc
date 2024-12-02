set nocompatible
set nu


" source $HOME/.vim/settings/base.vim

" Specify a directory for plugins
" - For Neovim: stdpath('data') . '/plugged'
" - Avoid using standard Vim directory names like 'plugin'
call plug#begin('~/.vim/plugged')
" Plugin outside ~/.vim/plugged with post-update hook

Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'

Plug 'tpope/vim-sensible'
Plug 'tpope/vim-sleuth'
Plug 'scrooloose/nerdcommenter'
Plug 'airblade/vim-gitgutter'
Plug 'bling/vim-airline'
Plug 'valloric/youcompleteme'
" Plug 'dense-analysis/ale'
Plug 'universal-ctags/ctags'
Plug 'majutsushi/tagbar'

Plug 'crusoexia/vim-monokai'

Plug 'supercollider/scvim'

" Initialize plugin system
call plug#end()

"=====================================================
" Airline
"=====================================================
" let g:airline_theme = 'twilight'
let g:airline_powerline_fonts = 0
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#eclim#enabled = 1
let g:airline#extensions#syntastic#enabled = 1
let g:airline#extensions#tagbar#enabled = 1

if !exists('g:airline_symbols')
	let g:airline_symbols = {}
endif 

let g:airline_symbols.colnr = '  col:'

"=====================================================
" Ale
"=====================================================
" let b:ale_linters = ['flake8', 'pylint']
" let g:ale_sign_error = '😬'
" let g:ale_sign_warning = '😒'
" highlight clear ALEErrorSign
" highlight clear ALEWarningSign

"=====================================================
" Ctags
"=====================================================
nmap <Leader>t :TagbarToggle<CR>

"=====================================================
" Monokai
"=====================================================
let g:monokai_term_italic = 1
let g:monokai_gui_italic = 1

"=====================================================
" YCM
"=====================================================
nmap <Leader>g :YcmCompleter GoTo<CR>
let g:which_python_interpreter = substitute(system('which python3'), '\n\+$', '', '')
let g:ycm_path_to_python_interpreter = g:which_python_interpreter
"let g:ycm_server_python_interpreter = g:which_python_interpreter
"let g:ycm_global_ycm_extra_conf = '~/.ycm_extra_conf.py'
let g:ycm_confirm_extra_conf = 0

colorscheme monokai

" use 256 colors in terminal
set t_Co=256
"set term=screen-256color
set term=tmux-256color
if exists('+termguicolors')
  let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
  let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
  set termguicolors
endif

"=====================================================
" FZF
"=====================================================
let g:fzf_colors =
\ { 'fg':      ['fg', 'Normal'],
  \ 'bg':      ['bg', 'Normal'],
  \ 'hl':      ['fg', 'Comment'],
  \ 'fg+':     ['fg', 'CursorLine', 'CursorColumn', 'Normal'],
  \ 'bg+':     ['bg', 'CursorLine', 'CursorColumn'],
  \ 'hl+':     ['fg', 'Statement'],
  \ 'info':    ['fg', 'PreProc'],
  \ 'border':  ['fg', 'Ignore'],
  \ 'prompt':  ['fg', 'Conditional'],
  \ 'pointer': ['fg', 'Exception'],
  \ 'marker':  ['fg', 'Keyword'],
  \ 'spinner': ['fg', 'Label'],
  \ 'header':  ['fg', 'Comment'] }

" Go stuff
" let g:go_highlight_build_constraints = 1
" let g:go_highlight_extra_types = 1
" let g:go_highlight_fields = 1
" let g:go_highlight_functions = 1
" let g:go_highlight_methods = 1
" let g:go_highlight_operators = 1
" let g:go_highlight_structs = 1
" let g:go_highlight_types = 1

" source $HOME/.vim/settings/key-bindings.vim
noremap <C-h> gt
noremap <C-l> gT
noremap ,n :tabnew<CR>
noremap <Leader>f :Files<CR>
noremap <Leader>a :Ag 
set splitright

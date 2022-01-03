call plug#begin('~/.vim/plugged')
Plug 'vim-airline/vim-airline'
Plug 'inkarkat/vim-ingo-library'
Plug 'inkarkat/vim-mark'
Plug 'joshdick/onedark.vim'
call plug#end()

set mouse=a
set showmode
set wildmenu
set wildmode=list:longest
set noequalalways
set autoindent
set copyindent
set showmatch
set guioptions-=t
set nowarn
set winminwidth=0
set winminheight=0
set winwidth=1
set splitbelow
set splitright
set nonumber

filetype on
filetype plugin on
map <silent> <leader><Insert>  :tabnew<CR>
" Fuzzy matching
map <silent> <M-f>o :E<CR>


if (empty($TMUX))
  if (has("nvim"))
    let $NVIM_TUI_ENABLE_TRUE_COLOR=1
  endif
  if (has("termguicolors"))
    set termguicolors
  endif
endif

if &term == "alacritty"
  let &term = "xterm-256color"
endif

syntax on
colorscheme onedark

" PRELIMINARIES
set noerrorbells
set novisualbell
set t_vb=

set mouse = 

" Disable compatibility with vi which can cause unexpected issues.
set nocompatible

" Enable type file detection. Vim will be able to try to detect the type of file in use.
filetype on

" Enable plugins and load plugin for the detected file type.
filetype plugin on

" Load an indent file for the detected file type.
filetype indent on

"----------------------------------------------------

" Turns on syntax highlighting.

syntax on

" Shows number on the left side.
set number

" Highlight cursor line underneath the cursor horizontally.
set cursorline

" Highlight cursor line underneath the cursor vertically.
set cursorcolumn

" Set shift width to 4 spaces.
set shiftwidth=4

" Set tab width to 4 columns.
set tabstop=4

" Use space characters instead of tabs.
set expandtab

" Do not save backup files.
set nobackup

" Do not let cursor scroll below or above N number of lines when scrolling.
set scrolloff=10

" Do not wrap lines. Allow long lines to extend as far as the line goes.
set wrap

" While searching though a file incrementally highlight matching characters as you type.
set incsearch

" Ignore capital letters during search.
set ignorecase

" Override the ignorecase option if searching for capital letters.
" This will allow you to search specifically for capital letters.
set smartcase

" Show partial command you type in the last line of the screen.
set showcmd

" Show the mode you are on the last line.
set showmode

" Show matching words during a search.
set showmatch

" Use highlighting when doing a search.
set hlsearch

" Set the commands to save in history default number is 20.
set history=1000

" BASH LIKE MENU-----------------------------------------------------------

" Enable auto completion menu after pressing TAB.
set wildmenu

" Make wildmenu behave like similar to Bash completion.
set wildmode=list:longest

" There are certain files that we would never want to edit with Vim.
" Wildmenu will ignore files with these extensions.
set wildignore=*.docx,*.jpg,*.png,*.gif,*.pdf,*.pyc,*.exe,*.flv,*.img,*.xlsx

set noundofile

" STATUS LINE ------------------------------------------------------------ {{{

" Clear status line when vimrc is reloaded.
set statusline=

" Status line left side.
set statusline+=\ %F\ %M\ %Y\ %R

" Use a divider to separate the left side from the right side.
set statusline+=%=

" Status line right side.
set statusline+=\ row:\ %l\ col:\ %c\ prcnt:\ %p%%

" Show the status on the second to last line.
set laststatus=2

" }}}

" TABLE LINE !!----------------------------------------------------------- {{{

"Clear status line when vimrc is reloaded.
"set showtabline=1

"Status line left side.
"set tabline+=\ %F\ %M\ %Y\ %R

"Use a divider to separate the left side from the right side.
"set tabline+=%=

" }}}


" GRUVBOX---------------------------------------------------------------------------------

"let g:gruvbox_contrast_dark = 'hard'

"let g:gruvbox_transparent_bg = '25'

"set background=dark

"let g:everforest_background = 'hard'

"Use 24-bit (true-color) mode in Vim/Neovim when outside tmux.
""If you're using tmux version 2.2 or later, you can remove the outermost
"$TMUX check and use tmux's 24-bit color support
"(see < http://sunaku.github.io/tmux-24bit-color.html#usage > for more
"information.)
if (empty($TMUX) && getenv('TERM_PROGRAM') != 'Apple_Terminal')
  if (has("nvim"))
      "For Neovim 0.1.3 and 0.1.4 < 
    let $NVIM_TUI_ENABLE_TRUE_COLOR=1
      endif
  if (has("termguicolors"))
    set termguicolors
  endif
endif

" -----------------------------------------------------------------
call plug#begin()

Plug 'SirVer/ultisnips'

Plug 'lervag/vimtex'

Plug 'morhetz/gruvbox'

Plug 'KeitaNakamura/tex-conceal.vim'

Plug 'sainnhe/everforest'

Plug 'habamax/vim-nod'

Plug 'honza/vim-snippets'

call plug#end()

"colorscheme gruvbox
colorscheme nod
"  --------------------------------------------------------------

let g:UltiSnipsExpandTrigger = '<tab>'
let g:UltiSnipsJumpForwardTrigger = '<tab>'
let g:UltiSnipsJumpBackwardTrigger = '<s-tab>'
let g:UltiSnipsSnippetDirectories=["UltiSnips"]

let g:tex_flavor='latex' 
"let g:vimtex_view_method = 'okular'
let g:vimtex_quickfix_mode=0

set conceallevel=1
let g:tex_conceal='abdmg'

"--------------------------------------------------------------------
"
" File Tree LEX!? -----------------------------------------------
inoremap <c-b> <Esc>:Lex<cr>:vertical resize 30<cr>
nnoremap <c-b> <Esc>:Lex<cr>:vertical resize 30<cr>

" KEYMAPS ----------------------------------------------------------
inoremap jj <esc>

" these will make switching open windows easier
nnoremap <c-h> <c-w>h
nnoremap <c-j> <c-w>j
nnoremap <c-k> <c-w>k
nnoremap <c-l> <c-w>l

inoremap <c-h> <Esc><c-w>h
inoremap <c-j> <Esc><c-w>j
inoremap <c-k> <Esc><c-w>k
inoremap <c-l> <Esc><c-w>l

" Pressing the letter o will open a new line below the current one.
" Exit insert mode after creating a new line above or below the current
nnoremap o o<esc>
nnoremap O O<esc>

" keymap to run python file following a save
noremap <f5> :w <cr> :!python "%" <cr>

" Resize split windows using arrow keys by pressing:
" CTRL+UP, CTRL+DOWN, CTRL+LEFT, or CTRL+RIGHT.
noremap <c-up> <c-w>+
noremap <c-down> <c-w>-
noremap <c-left> <c-w>>
noremap <c-right> <c-w><

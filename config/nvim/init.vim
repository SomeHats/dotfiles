" Init NeoBundle
set runtimepath+=~/.config/nvim/bundle/neobundle.vim/
call neobundle#begin(expand('~/.config/nvim/bundle'))

NeoBundleFetch 'Shougo/neobundle.vim'
NeoBundle 'Shougo/vimproc.vim', {'build': 'make -f make_mac.mak'}

NeoBundle 'Quramy/tsuquyomi'
NeoBundle 'Shougo/deoplete.nvim'
NeoBundle 'Shougo/unite.vim'
NeoBundle 'Valloric/YouCompleteMe', {'build': 'git submodule update --init --recursive && python install.py --clang-completer --gocode-completer --tern-completer --racer-completer'}
NeoBundle 'airblade/vim-gitgutter'
NeoBundle 'altercation/vim-colors-solarized'
NeoBundle 'argtextobj.vim'
NeoBundle 'bronson/vim-trailing-whitespace'
NeoBundle 'ctrlpvim/ctrlp.vim'
NeoBundle 'digitaltoad/vim-pug'
NeoBundle 'ekalinin/Dockerfile.vim'
NeoBundle 'elmcast/elm-vim'
NeoBundle 'fatih/vim-go'
NeoBundle 'geoffharcourt/one-dark.vim'
NeoBundle 'gkz/vim-ls'
NeoBundle 'guns/vim-clojure-highlight'
NeoBundle 'guns/vim-clojure-static'
NeoBundle 'kchmck/vim-coffee-script'
NeoBundle 'leafgarland/typescript-vim'
NeoBundle 'luochen1990/rainbow'
NeoBundle 'mattn/emmet-vim'
NeoBundle 'mustache/vim-mustache-handlebars'
NeoBundle 'mxw/vim-jsx'
NeoBundle 'nathanaelkane/vim-indent-guides'
NeoBundle 'neovim/node-host'
NeoBundle 'pangloss/vim-javascript'
NeoBundle 'reedes/vim-wordy'
NeoBundle 'rust-lang/rust.vim'
NeoBundle 'scrooloose/nerdtree'
NeoBundle 'scrooloose/syntastic'
NeoBundle 'tpope/vim-classpath'
NeoBundle 'tpope/vim-commentary'
NeoBundle 'tpope/vim-dispatch'
NeoBundle 'tpope/vim-fireplace'
NeoBundle 'tpope/vim-fugitive'
NeoBundle 'tpope/vim-projectionist'
NeoBundle 'tpope/vim-repeat'
NeoBundle 'tpope/vim-salve'
NeoBundle 'tpope/vim-speeddating'
NeoBundle 'tpope/vim-surround'
NeoBundle 'typedclojure/vim-typedclojure'
NeoBundle 'vim-airline/vim-airline'
NeoBundle 'vim-airline/vim-airline-themes'
NeoBundle 'wavded/vim-stylus'

call neobundle#end()
filetype plugin indent on
NeoBundleCheck

set number
syntax on

" Backup and swap files:
set backupdir=~/.config/nvim/_backup/    " where to put backup files.
set directory=~/.config/nvim/_temp/      " where to put swap files.

" I like dark colour schemes
set background=dark
colorscheme solarized

" Airline
let g:airline#extensions#tabline#enabled = 1
let g:airline_powerline_fonts = 1
let g:airline_theme='solarized'

" Ruler
set colorcolumn=100

" quickly change to light scheme:
function! ReverseBackground()
  if &bg=="light"
    set bg=dark
  else
    set bg=light
  endif
endfunction

:command! ToggleBG call ReverseBackground()
:noremap ± :ToggleBG<CR>

" I originally had some issues with highlighting and my gitgutter plugin. This
" fixes hat.
highlight SignColumn ctermbg=0
highlight GitGutterAdd ctermbg=0 ctermfg=2
highlight GitGutterChange ctermbg=0 ctermfg=3
highlight GitGutterDelete ctermbg=0 ctermfg=1

" Get rid of the delay when hitting esc!
set timeoutlen=1000 ttimeoutlen=0
let g:bufferline_echo = 0

" Misc
set backspace=indent,eol,start " More sensible backspace behaviour
set cursorline " Highlight current line
set esckeys " Allow cursor keys in insert mode
set expandtab " Expand tabs to spaces
set hidden " Remember marks and undo history on hidden buffers
set history=1000 " Increase history from default 20
set hlsearch " Highlight searches
set ignorecase
set incsearch " Dynamically update searches as typed
set nowrap
set scrolloff=5 " Get vim to show a few lines above and below the cursor when scrolling
set shiftwidth=2 " # of spaces for indenting
set smartcase
set tabstop=2
set title " Show filename in window title bar
set wildignore+=*/node_modules/*,*/tmp/*,*.swp,*/dist/*,*/public/*,*/bower_components/*,*/gulp-cache/* " Ignore these files when searching for stuff
set wildmenu " show command completions
" set smarttab " Better tab behaviour - breaks YCM tabbing

" Faster scrolling:
nnoremap <C-e> 3<C-e>
nnoremap <C-y> 3<C-y>

let mapleader="\<Space>"

" SP-w to save
nnoremap <Leader>w :w<CR>

" Copy/paste to system clipboard with SP-p and SP-y
vmap <Leader>y "+y
vmap <Leader>d "+d
nmap <Leader>p "+p
nmap <Leader>P "+P
vmap <Leader>p "+p
vmap <Leader>P "+P

" Insert lines above and below with SP-o & SP-O
nnoremap <Leader>o o<Esc>
nnoremap <Leader>O O<Esc>
vnoremap <Leader>o o<Esc>
vnoremap <Leader>O O<Esc>

" Enter visual line mode with SP-SP
nmap <Leader><Leader> V

" Move lines up and down with Ctrl-j/k
nnoremap <C-j> :m .+1<CR>==
nnoremap <C-k> :m .-2<CR>==
inoremap <C-j> <Esc>:m .+1<CR>==gi
inoremap <C-k> <Esc>:m .-2<CR>==gi
vnoremap <C-j> :m '>+1<CR>gv=gv
vnoremap <C-k> :m '<-2<CR>gv=gv

" I keep typing :Q when I mean :q
command! Q q
command! Qa qa
command! QA qa
command! W w

" Make terminal a little easier to work with
:tnoremap <C-w>h <C-\><C-n><C-w>h
:tnoremap <C-w>j <C-\><C-n><C-w>j
:tnoremap <C-w>k <C-\><C-n><C-w>k
:tnoremap <C-w>l <C-\><C-n><C-w>l
:tnoremap <Esc> <C-\><C-n>

" Clear last search (,cs)
nnoremap <leader>cs <Esc>:nohl<CR>

" Paste toggle (,p)
" set pastetoggle=<leader>p
" map <leader>p :set invpaste paste?<CR>

" NERDTree (,n)
map <leader>n :NERDTreeToggle<CR>
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif

" Buffer navigation (,,) (,]) (,[) (,ls)
map <Leader>, <C-^>
:map <Leader>] :bnext<CR>
:map <Leader>[ :bprev<CR>
map <Leader>ls :buffers<CR>
map <leader>b :b#<cr>

" Strip trailing whitespace (,ss)
function! StripWhitespace()
  exec ':%s/ \+$//gc'
endfunction
noremap <Leader>ss :call StripWhitespace()<CR>

" Strip spaces on save:
autocmd BufWritePre * :%s/\s\+$//e

" Yank from cursor to end of line
nnoremap Y y$

" Insert newline
map <leader><Enter> o<ESC>

" Toggle comment:
nmap <Leader>/ gcc
vmap <Leader>/ gc

" Cycle between buffers
map <right> :bn<CR>
map <left> :bp<CR>
map <leader>b :b#<CR>

nmap <F6> :set invnumber<CR>
nnoremap <F5> :set relativenumber!<CR>

nnoremap <leader>ev :e ~/.config/nvim/init.vim<CR>

" :au FocusLost * :set number
" :au FocusGained * :set relativenumber

" Disable markdown folding
let g:vim_markdown_folding_disabled=1

" Go imports:
let g:go_fmt_command = "goimports"

" Attempt to syntax highlight marko:
au BufRead,BufEnter *.marko set syntax=xml
au BufRead,BufEnter *.marko set smartindent

" Typescript
set rtp+=/usr/local/lib/node_modules/typescript-tools/
let g:syntastic_typescript_checkers = ['tslint']

let g:syntastic_javascript_checkers = ['eslint']

" when vimrc is edited, reload it
autocmd! bufwritepost init.vim source $MYVIMRC
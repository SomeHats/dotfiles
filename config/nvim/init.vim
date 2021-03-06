"dein Scripts-----------------------------
if &compatible
  set nocompatible               " Be iMproved
endif

" Required:
set runtimepath+=~/.config/nvim/_dein/repos/github.com/Shougo/dein.vim

" Required:
if dein#load_state(expand('~/.config/nvim/_dein'))
  call dein#begin(expand('~/.config/nvim/_dein'))

  " Let dein manage dein
  " Required:
  call dein#add(expand('~/.config/nvim/_dein/repos/github.com/Shougo/dein.vim'))

  " Add or remove your plugins here:
  call dein#add('Quramy/tsuquyomi')
  call dein#add('Shougo/deoplete.nvim')
  call dein#add('Shougo/unite.vim')
  call dein#add('Shougo/vimproc.vim', { 'build': 'make -f make_mac.mak' })
  call dein#add('Xuyuanp/nerdtree-git-plugin')
  call dein#add('airblade/vim-gitgutter')
  call dein#add('altercation/vim-colors-solarized')
  call dein#add('ap/vim-buftabline')
  call dein#add('argtextobj.vim')
  call dein#add('bronson/vim-trailing-whitespace')
  call dein#add('cespare/vim-toml')
  call dein#add('ctrlpvim/ctrlp.vim')
  call dein#add('digitaltoad/vim-pug')
  call dein#add('dyng/ctrlsf.vim')
  call dein#add('easymotion/vim-easymotion')
  call dein#add('ekalinin/Dockerfile.vim')
  call dein#add('elixir-lang/vim-elixir')
  call dein#add('elmcast/elm-vim')
  call dein#add('fatih/vim-go')
  call dein#add('geoffharcourt/one-dark.vim')
  call dein#add('gkz/vim-ls')
  call dein#add('guns/vim-clojure-highlight')
  call dein#add('guns/vim-clojure-static')
  call dein#add('hashivim/vim-terraform')
  call dein#add('jelera/vim-javascript-syntax')
  call dein#add('joshdick/onedark.vim')
  call dein#add('jparise/vim-graphql')
  call dein#add('kchmck/vim-coffee-script')
  call dein#add('leafgarland/typescript-vim')
  call dein#add('moll/vim-bbye')
  call dein#add('mustache/vim-mustache-handlebars')
  call dein#add('mxw/vim-jsx')
  call dein#add('nathanaelkane/vim-indent-guides')
  call dein#add('neovim/node-host')
  call dein#add('pangloss/vim-javascript')
  call dein#add('reedes/vim-wordy')
  call dein#add('rizzatti/dash.vim')
  call dein#add('rust-lang/rust.vim')
  call dein#add('scrooloose/nerdtree')
  call dein#add('scrooloose/syntastic')
  call dein#add('slashmili/alchemist.vim')
  call dein#add('snoe/nvim-parinfer.js')
  call dein#add('steelsojka/deoplete-flow')
  call dein#add('tpope/vim-classpath')
  call dein#add('tpope/vim-commentary')
  call dein#add('tpope/vim-dispatch')
  call dein#add('tpope/vim-fireplace')
  call dein#add('tpope/vim-fugitive')
  call dein#add('tpope/vim-projectionist')
  call dein#add('tpope/vim-repeat')
  call dein#add('tpope/vim-salve')
  call dein#add('tpope/vim-speeddating')
  call dein#add('tpope/vim-surround')
  call dein#add('typedclojure/vim-typedclojure')
  call dein#add('wavded/vim-stylus')

  " Required:
  call dein#end()
  call dein#save_state()
endif

" Required:
filetype plugin indent on
syntax enable

" If you want to install not installed plugins on startup.
" if dein#check_install()
  " call dein#install()
" endif

set number
syntax on

" Backup and swap files:
set backupdir=~/.config/nvim/_backup/    " where to put backup files.
set directory=~/.config/nvim/_temp/      " where to put swap files.

" Enable true colour:
if (empty($TMUX))
  if (has("nvim"))
    let $NVIM_TUI_ENABLE_TRUE_COLOR = 1
  endif
  if (has("termguicolors"))
    set termguicolors
  endif
endif

" I like dark colour schemes
set background=dark
colorscheme onedark

" Airline
" let g:airline#extensions#tabline#enabled = 1
" let g:airline_powerline_fonts = 1
" let g:airline_theme='onedark'

" buftabline
let g:buftabline_indicators = 1
let g:buftabline_separators = 1
highlight TabLineFill guibg=#383c44
highlight TabLine guibg=#383c44 guifg=#737d93
highlight PmenuSel guibg=#383c44 guifg=#61afef
highlight TabLineSel guibg=#61afef guifg=#282c34

" Status line:
set laststatus=2
set statusline=
set statusline +=%1*\ %n\ %*            "buffer number
set statusline +=%3*%y%*                "file type
set statusline +=%4*\ %<%F%*            "full path
set statusline +=%2*%m%*                "modified flag
set statusline +=%1*%=%5l%*             "current line
set statusline +=%2*/%L%*               "total lines
set statusline +=%1*%4v\ %*             "virtual column number
set statusline +=%2*0x%04B\ %*          "character under cursor

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
" highlight SignColumm guibg=#383c44
" highlight GitGutterAdd ctermbg=0 ctermfg=2
" highlight GitGutterChange ctermbg=0 ctermfg=3
" highlight GitGutterDelete ctermbg=0 ctermfg=1

" Get rid of the delay when hitting esc!
set timeoutlen=1000 ttimeoutlen=0
let g:bufferline_echo = 0

" Misc
set backspace=indent,eol,start " More sensible backspace behaviour
" set cursorline " Highlight current line
set expandtab " Expand tabs to spaces
set fillchars+=vert:│ " prettier vertical split
set hidden " Remember marks and undo history on hidden buffers
set history=1000 " Increase history from default 20
set hlsearch " Highlight searches
set ignorecase
set incsearch " Dynamically update searches as typed
set mouse=a
set nowrap
set scrolloff=5 " Get vim to show a few lines above and below the cursor when scrolling
set shiftwidth=2 " # of spaces for indenting
set smartcase " make searching only case sensitive when there are capitals
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
command! Vs vs
command! VS vs
command! Sp sp
command! SP sp

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

function! BufferDelete()
  if &modified
    echohl ErrorMsg
    echomsg "No write since last change. Not closing buffer."
    echohl NONE
  else
    let s:total_nr_buffers = len(filter(range(1, bufnr('$')), 'buflisted(v:val)'))

    if s:total_nr_buffers == 1
      bdelete
      echo "Buffer deleted. Create new buffer."
    else
      bprevious
      bdelete #
      echo "Buffer deleted."
    endif
  endif
endfunction

map <leader>q :call BufferDelete()<CR>

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

map <leader>d <Plug>DashSearch

nmap <F6> :set invnumber<CR>
nnoremap <F5> :set relativenumber!<CR>

nnoremap <leader>ev :e ~/.config/nvim/init.vim<CR>

" :au FocusLost * :set number
" :au FocusGained * :set relativenumber

" Disable markdown folding
let g:vim_markdown_folding_disabled=1

" Markdown spell-check
autocmd BufRead,BufEnter *.md set spell

" Go imports:
let g:go_fmt_command = "goimports"

" Attempt to syntax highlight marko:
au BufRead,BufEnter *.marko set syntax=xml
au BufRead,BufEnter *.marko set smartindent

" Typescript
set rtp+=/usr/local/lib/node_modules/typescript-tools/
let g:syntastic_typescript_checkers = ['tslint']

let g:syntastic_javascript_checkers = ['eslint']
let g:syntastic_scss_checkers = []

" YCM
let g:ycm_autoclose_preview_window_after_completion = 1
let g:ycm_autoclose_preview_window_after_insertion = 1

" Deoplete
inoremap <silent><expr> <Tab>
  \ pumvisible() ? "\<C-n>" :
	\ deoplete#mappings#manual_complete()

let g:deoplete#enable_at_startup = 1
let g:deoplete#enable_debug = 1
let g:deoplete#file#enable_buffer_path = 1
" let g:deoplete#enable_profile = 1
" call deoplete#enable_logging("DEBUG", "./deoplete.log")
set completeopt="menu"

" JS + JSX
let g:jsx_ext_required = 0
let g:javascript_plugin_flow = 1

" Flow
au BufRead,BufNewFile *.flow set filetype=javascript
let g:flow#enable = 0


" Easymotion
map  <Leader>f <Plug>(easymotion-bd-f)
nmap <Leader>f <Plug>(easymotion-overwin-f)
nmap s <Plug>(easymotion-overwin-f2)

" Move to line
map <Leader>L <Plug>(easymotion-bd-jk)
nmap <Leader>L <Plug>(easymotion-overwin-line)

" Easymotion directions
map <Leader>l <Plug>(easymotion-lineforward)
map <Leader>j <Plug>(easymotion-j)
map <Leader>k <Plug>(easymotion-k)
map <Leader>h <Plug>(easymotion-linebackward)

let g:EasyMotion_startofline = 0 " keep cursor column when JK motion
let g:EasyMotion_smartcase = 1 " Case insensitive

" when vimrc is edited, reload it
autocmd! bufwritepost init.vim source $MYVIMRC

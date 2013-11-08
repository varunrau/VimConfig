" Enable Pathogen the awesome plugin manager thing...
execute pathogen#infect()
filetype plugin on

" Suppress vim error message at startup

" let g:pydiction_location = '/Users/varunrau/.vim/after/complete-dict'
" Enable file type plugins
set nocp

" Jedi (Python autocompletion) configuration
let g:jedi#completions_command = ";;"


" configure tags - add aditional tags here or comment out not-used ones
   "set tags+=~/.vim/tags/gl
    " set tags+=~/.vim/tags/stl
    " set tags+=~/.vim/tags/libxml2
    " set tags+=~/.vim/tags/llvmc
    " set tags+=~/.vim/tags/llvm
  " set tags+=~/.vim/tags/cairo


  " build tags of your own project with CTRL+F12
  "map <C-F12> :!ctags -R --c++-kinds=+p --fields=+iaS --extra=+q .<CR>
  noremap <F12> :!ctags -R --c++-kinds=+p --fields=+iaS --extra=+q .<cr>
  inoremap <F12> <Esc>:!ctags -R --c++-kinds=+p --fields=+iaS --extra=+q .<cr>

  " OmniCppComplete
  " let OmniCpp_NamespaceSearch = 1
  " let OmniCpp_GlobalScopeSearch = 1
  " let OmniCpp_ShowAccess = 1
  " let OmniCpp_MayCompleteDot = 1
  " let OmniCpp_MayCompleteArrow = 1
  " let OmniCpp_MayCompleteScope = 1
  " let OmniCpp_DefaultNamespaces = ["std", "_GLIBCXX_STD"]


  " automatically open and close the popup menu / preview window
  au CursorMovedI,InsertLeave * if pumvisible() == 0|silent! pclose|endif
  set completeopt=menuone,menu,longest,preview

if &t_Co > 2 || has("gui_running")
    syntax on
endif

set smartindent
set shiftwidth=4
set shiftround
set autoindent
set copyindent
set ignorecase
set smartcase
set showmatch
set hlsearch
set incsearch
set scrolloff=5
set backspace=2
set number
set ruler
set visualbell
set noerrorbells
set laststatus=2

nnoremap <silent> ; :nohlsearch<CR>
set pastetoggle=<F2>

if has("unix")
    set backup
    set backupdir=/tmp
    set directory=/tmp
endif

" NERDTree
" autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif
let NERDTreeChDirMode=1
let NERDTreeIgnore=['\.pyc$', '\.swp$']
let NERDTreeMinimalUI=1
let NERDTreeShowBookmarks=1
let NERDTreeQuitOnOpen = 0
nmap <silent> <C-A> :NERDTreeToggle<CR>

" python highlighting extras
" let python_highlight_all = 1

"PHP highlighting extras
let php_sql_query = 1
let php_htmlInStrings = 1
let php_baselib = 1

"warning when going over 79 characters per line
"highlight OverLength ctermbg=red ctermfg=white guibg=#592929
"match OverLength /\%80v.*/

" Maps jk to the escape key. We use escape multiple times because
" we could have a popup that eats up one of the escapes
imap jk <Esc><ESC>

" Maps fd to save
imap fd :w

" Setting the leader key. Here we map the leader key to ","
:let mapleader = ","

" A Mapping for Vertical Split Windows
nnoremap <leader>w <C-w>v<C-w>l

" Mappings to move around the splits
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l
imap <C-h> <C-w>h
imap <C-j> <C-w>j
imap <C-k> <C-w>k
imap <C-l> <C-w>l
imap <C-H> <C-w>H
imap <C-J> <C-w>J
imap <C-K> <C-w>K
imap <C-L> <C-w>L

" Syntastic settings
let g:syntastic_quiet_warnings=1


" Change popup menu color, so it's not super obnoxious
highlight Pmenu ctermbg=238 gui=bold

" Remove trailing whitespace
autocmd BufWritePre * :%s/\s\+$//e

" Python auto run
nmap <F5> :!python %<CR>

" Ruby autocompletion
autocmd FileType ruby,eruby set omnifunc=rubycomplete#Complete


" Added commenting for python because vim fails at python in specific
vnoremap # :s#^#\##<cr>
vnoremap -# :s#^\###<cr>

" Mouse Access
set mouse=a " Enables the mouse. Use with caution. Great vim users don't need this feature

" Better copy & paste
set pastetoggle=<F2>
set clipboard=unnamed

" Easier navigation with tabbing
map <Leader>n <esc>:tabprevious<CR>
map <Leader>m <esc>:tabnext<CR>
map <C-T> :tabnew<CR>

" Better code block indentation
vnoremap < <gv
vnoremap > >gv

" Paste breakpoint for ipdb on <leader> b
map <Leader>b Oimport ipdb; ipdb.set_trace() # BREAKPOINT<C-c>
" Paste breakpoint for ipdb on <leader> b
imap <Leader>b import ipdb; ipdb.set_trace() # BREAKPOINT<C-c>


" Python folding
set nofoldenable

" Color Scheme
set t_Co=256
color wombat256mod

" Automatic reloading of .vimrc
" autocmd! bufwritepost .vimrc source %

" Clear search highlights
noremap <silent><Leader>/ :nohls<CR>

" Select all text using leader a
map <Leader>a ggVG

" " Map ; to : and save a million keystrokes
" nnoremap ; :

" Move around when in insert mode
imap <C-h> <C-o>h
imap <C-j> <C-o>j
imap <C-k> <C-o>k
imap <C-l> <C-o>l

" Save when losing focus
au FocusLost * :wa

:nmap j gj
:nmap k gk

" Git Gutter setting
highlight clear SignColumn

" PEP8 ignores
let g:pep8_ignore="E501,W601"

" Rainbow Parenthesis
au VimEnter * RainbowParenthesesToggle
au Syntax * RainbowParenthesesLoadRound
au Syntax * RainbowParenthesesLoadSquare
au Syntax * RainbowParenthesesLoadBraces

" Indent Guides
" set background=light
let g:indent_guides_auto_colors = 0
set ts=4 sw=4 et
let g:indent_guides_start_level = 2
let g:indent_guides_guide_size = 1
hi IndentGuidesOdd  ctermbg=darkgray
hi IndentGuidesEven ctermbg=black

" Conque -- This is super useful
" Type in :Bash to open up an interactive bash shell in vim
" Type in :Python to open up an interactive python shell in vim
:command Bash ConqueTermSplit bash
:command Python ConqueTermSplit python

" Disable pylint checking every save
let g:pymode_lint_write = 0
" Set key 'R' to run python code
let g:pymode_run_key = 'R'
imap <Nul> <C-R>=RopeCodeAssistInsertMode()<CR>

" Open Gundo
nnoremap <F5> :GundoToggle<CR>

" Open Tabbar
nmap <F6> :TagbarToggle<CR>

" Optimize for fast terminal connections
set ttyfast

" Add the g flag to search/replace by default
set gdefault

" Highlight cursor line
set cursorline

" Don't reset cursor to start of line when moving around
set nostartofline

" Show the (partial) command as it's being typed
set showcmd

" Ctrlp Settings
let g:ctrlp_custom_ignore = {
  \ 'dir':  '\v[\/]\.(git|hg|svn)$',
  \ 'file': '\v\.(exe|so|dll|pyc)$',
  \ 'link': 'some_bad_symbolic_links',
  \ }

" Rails settings
let g:rubycomplete_buffer_loading = 1
let g:rubycomplete_rails = 1

" Solarized...again
syntax enable
set background=dark
let g:solarized_termcolors=256
colorscheme solarized

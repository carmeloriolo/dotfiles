" Pathogen Installation
call pathogen#infect()

" Font change
set guifont=JetBrainsMonoNerdFontComplete-Italic:h14

" Enable CtrlP
" set runtimepath^=~/.vim/bundle/ctrlp.vim
nnoremap <silent> <C-p> :Files<CR>

set termguicolors
filetype plugin on
syntax on
set number
set showtabline=2

" let g:airline_theme='gruvbox'
" let g:airline_theme='nord'
let g:airline_powerline_fonts = 1                                                                                                         
let g:airline#extensions#tabline#enabled = 1           " enable airline tabline                                                           
let g:airline#extensions#tabline#show_close_button = 0 " remove 'X' at the end of the tabline                                            
let g:airline#extensions#tabline#tabs_label = ''       " can put text here like BUFFERS to denote buffers (I clear it so nothing is shown)
let g:airline#extensions#tabline#buffers_label = ''    " can put text here like TABS to denote tabs (I clear it so nothing is shown)      
let g:airline#extensions#tabline#fnamemod = ':t'       " disable file paths in the tab                                                    
let g:airline#extensions#tabline#show_tab_count = 0    " dont show tab numbers on the right                                                           
let g:airline#extensions#tabline#show_buffers = 0      " dont show buffers in the tabline                                                 
let g:airline#extensions#tabline#tab_min_count = 2     " minimum of 2 tabs needed to display the tabline                                  
let g:airline#extensions#tabline#show_splits = 0       " disables the buffer name that displays on the right of the tabline               
let g:airline#extensions#tabline#show_tab_nr = 0       " disable tab numbers                                                              
let g:airline#extensions#tabline#show_tab_type = 0     " disables the weird ornage arrow on the tabline
let g:airline#extensions#tabline#buffer_nr_show = 1

colorscheme torte
" Transparent background 
hi Normal guibg=NONE ctermbg=NONE

map s <Nop>
" hi Normal ctermbg=NONE guibg=NONE
" quit
map <silent> <C-q> :q<CR>

" Gitline hightlight
map <silent> <C-g> :GitGutterLineHighlightsToggle<CR>

" Split windows
nmap ss :split<Return><C-w>w
nmap sv :vsplit<Return><C-w>w

" Move window
map sh <C-w>h
map sk <C-w>k
map sj <C-w>j
map sl <C-w>l

" Resize window
" nmap <C-w><left> <C-W><
" nmap <C-w><right> <C-W>>
" nmap <C-w><up> <C-W>+
" nmap <C-w><down> <C-W>-


" Move between tabs shortcut
nmap <S-Tab> :tabprev<Return>
nmap <Tab> :tabnext<Return>

" Explorer shortcut
map <silent> <C-s> :Ex<CR>

" NERDTree shortcuts
map <silent> <C-n> :NERDTreeTabsToggle<CR>
map  <C-l> :tabn<CR>
map  <C-h> :tabp<CR>
map te :tabnew<CR>
" map  <C-t> :tabnew<CR>
" make-nerdtree-always-open-on-the-right-side
let g:NERDTreeWinPos = "right"
" Show hidden files
let NERDTreeShowHidden = 1
" Make it prettier
let NERDTreeMinimalUI = 1
let NERDTreeDirArrows = 1
" au VimEnter NERD_tree_1 enew | execute 'NERDTree'.argv()[0]

" This will insert four spaces instead of a tab character. Spaces are a bit more "stable”, meaning that text indented with spaces will show up the same in the browser and any other application.
set tabstop=2
set shiftwidth=2
set expandtab

" Other fixes
set backspace=indent,eol,start
let g:go_version_warning = 0

" Ignore existing swap file
set shortmess+=A

" Folding/Collapsing
" In a more convenient way, folds can be created automatically based on the language syntax of the current buffer. If you are using a programming language, let's call it L, and you have folding definition of L (e.g. you have installed a Vim plugin in which the folding information of L is defined; such as c.vim for C/C++, or python-mode for Python), you just need to set folding method to syntax:
" set foldmethod=manual
" set foldmethod=indent
" set foldmethod=syntax
" set foldnestmax=10
" set nofoldenable
" set foldlevel=2

" Enabled UTF-8
" set encoding=utf-8  " The encoding displayed.
" set fileencoding=utf-8  " The encoding written to file.

" Move lines up and Down
nnoremap <A-Up> :m-2<CR>
nnoremap <A-Down> :m+<CR>
inoremap <A-Up> <Esc>:m-2<CR>
inoremap <A-Down> <Esc>:m+<CR>

" set keyword _ for delete work
set iskeyword=_
set iskeyword=-
set iskeyword=/


" COC CONFIGURATION BELOW
let g:go_def_mapping_enabled = 0


" NERDCommenter
" Create default mappings
let g:NERDCreateDefaultMappings = 1
" Add spaces after comment delimiters by default
let g:NERDSpaceDelims = 1
" Use compact syntax for prettified multi-line comments
let g:NERDCompactSexyComs = 1
" Align line-wise comment delimiters flush left instead of following code indentation
let g:NERDDefaultAlign = 'left'
" Set a language to use its alternate delimiters by default
let g:NERDAltDelims_java = 1
" Add your own custom formats or override the defaults
let g:NERDCustomDelimiters = { 'c': { 'left': '/**','right': '*/' } }
" Allow commenting and inverting empty lines (useful when commenting a region)
let g:NERDCommentEmptyLines = 1
" Enable trimming of trailing whitespace when uncommenting
let g:NERDTrimTrailingWhitespace = 1
" Enable NERDCommenterToggle to check all selected lines is commented or not 
let g:NERDToggleCheckAllLines = 1
" Tagbar shortcuts
map <silent> <C-b> :TagbarToggle<CR>

" Git Blamer (like VSCODE GitLens)
" See issue incompatibility with vim-fugitive https://github.com/APZelos/blamer.nvim/issues/30 
let g:blamer_enabled = 1
let g:blamer_delay = 10000
let g:blamer_relative_time = 1
let g:blamer_show_in_visual_modes = 1
let g:blamer_show_in_insert_modes = 0


" Use ctrl-[hjkl] to select the active split!
nmap <silent> <c-k> :wincmd k<CR>
nmap <silent> <c-j> :wincmd j<CR>
nmap <silent> <c-h> :wincmd h<CR>
nmap <silent> <c-l> :wincmd l<CR>

" for key in ['<Up>', '<Down>', '<Left>', '<Right>']
"   exec 'noremap' key '<Nop>'
"   exec 'inoremap' key '<Nop>'
"   exec 'cnoremap' key '<Nop>'
" endfor

highlight Pmenu ctermbg=black guibg=black
set nocompatible

" Fix error E315
let R_setwidth = 0
let R_clear_line = 0

" map gd :GoDef<CR>
" map gr :GoReferrers<CR>
" map gi :GoImplements<CR>

nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gr <Plug>(coc-references)

noremap <Up> <NOP>
noremap <Down> <NOP>
noremap <Left> <NOP>
noremap <Right> <NOP>


let g:EasyMotion_do_mapping = 0 " Disable default mappings
" Remap leader
let mapleader = "`"

" Jump to anywhere you want with minimal keystrokes, with just one key binding.
" `s{char}{label}`
nmap <Leader>l <Plug>(easymotion-overwin-f)
" or
" `s{char}{char}{label}`
" Need one more keystroke, but on average, it may be more comfortable.
nmap <Leader>l <Plug>(easymotion-overwin-f2)

" Turn on case-insensitive feature
let g:EasyMotion_smartcase = 1

" JK motions: Line motions
map <Leader>j <Plug>(easymotion-j)
map <Leader>k <Plug>(easymotion-k)
set termguicolors

" show a visual line under the cursor's current line
set cursorline

" show the matching part of the pair for [] {} and ()
set showmatch

" enable all Python syntax highlighting features
let python_highlight_all = 1
autocmd InsertEnter * highlight CursorLine guibg=#000050 guifg=fg
autocmd InsertLeave * highlight CursorLine guibg=#004000 guifg=fg
let g:jedi#environment_path = "/usr/local/bin/python3"


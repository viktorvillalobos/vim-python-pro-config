" Specify a directory for plugins
" - For Neovim: stdpath('data') . '/plugged'
" - Avoid using standard Vim directory names like 'plugin'
call plug#begin('~/.vim/plugged')

if has('nvim')
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
else
Plug 'Shougo/deoplete.nvim'
Plug 'roxma/nvim-yarp'
Plug 'roxma/vim-hug-neovim-rpc'
endif
let g:deoplete#enable_at_startup = 1

Plug 'scrooloose/nerdtree'

Plug 'tpope/vim-commentary'

Plug 'liuchengxu/vista.vim'

Plug 'jeetsukumaran/vim-pythonsense'

Plug 'jiangmiao/auto-pairs'

Plug 'Vimjas/vim-python-pep8-indent'

Plug 'deoplete-plugins/deoplete-jedi'

Plug 'chriskempson/base16-vim'

Plug 'ryanoasis/vim-devicons'

Plug 'thaerkh/vim-indentguides'           " Visual representation of indents

Plug 'leafoftree/vim-vue-plugin'

Plug 'vim-airline/vim-airline'            " Lean & mean status/tabline for vim

Plug 'vim-airline/vim-airline-themes'     " Themes for airline

Plug 'yuttie/comfortable-motion.vim'      " Smooth scrolling

Plug 'thaerkh/vim-indentguides'           " Visual representation of indents

" Plug 'dense-analysis/ale'               "Me dio problemas de lentitud en
" archivos grandes

Plug 'neomake/neomake'

Plug 'yegappan/mru'

Plug 'ctrlpvim/ctrlp.vim'

Plug 'tpope/vim-fugitive'

"-------------------=== Python  ===-----------------------------

Plug 'jmcantrell/vim-virtualenv'
Plug 'numirias/semshi', {'do': ':UpdateRemotePlugins'}


call plug#end()

set encoding=utf-8
let mapleader = ','
let g:airline_theme='base16_spacemacs'             " set airline theme
syntax enable                               " enable syntax highlighting
set tabstop=4                               " 4 whitespaces for tabs visual presentation
set shiftwidth=4                            " shift lines by 4 spaces
set smarttab                                " set tabs for a shifttabs logic
set expandtab                               " expand tabs into spaces
set autoindent                              " indent when moving to the next line while writing code
set number

set cursorline                              " shows line under the cursor's line
set showmatch                               " shows matching part of bracket pairs (), [], {}

set enc=utf-8	                            " utf-8 by default

set nobackup 	                            " no backup files
set nowritebackup                           " only in case you don't want a backup file while editing
set noswapfile 	                            " no swap files


set backspace=indent,eol,start              " backspace removes all (indents, EOLs, start) What is start?
set scrolloff=20                            " let 10 lines before/after cursor during scroll
set clipboard=unnamed                       " use system clipboard
set exrc                                    " enable usage of additional .vimrc files from working directory
set secure                                  " prohibit .vimrc files to execute shell, create files, etc...


"=====================================================
"" Tabs / Buffers settings
"=====================================================
tab sball
set switchbuf=useopen
set laststatus=2
nmap <F9> :bprev<CR>
nmap <F10> :bnext<CR>
nmap <silent> <leader>q :SyntasticCheck # <CR> :bp <BAR> bd #<CR>


"=====================================================
"" Search settings
"=====================================================
set incsearch	                            " incremental search
set hlsearch	                            " highlight search results

"=====================================================
"" NERDTree settings
"=====================================================
let NERDTreeIgnore=['\.pyc$', '\.pyo$', '__pycache__$']     " Ignore files in NERDTree
let NERDTreeWinSize=40
"autocmd VimEnter * if !argc() | NERDTree | endif  " Load NERDTree only if vim is run without arguments
nmap " :NERDTreeToggle<CR>


"=====================================================
"" AirLine settings
"=====================================================
let g:airline#extensions#tabline#enabled=1
let g:airline#extensions#tabline#formatter='unique_tail'
let g:airline_powerline_fonts=1


"---------------- Vista.Vim --------------
function! NearestMethodOrFunction() abort
  return get(b:, 'vista_nearest_method_or_function', '')
endfunction

set statusline+=%{NearestMethodOrFunction()}

" By default vista.vim never run if you don't call it explicitly.
"
" If you want to show the nearest function in your statusline automatically,
" you can add the following line to your vimrc 
autocmd VimEnter * call vista#RunForNearestMethodOrFunction()


"=====================================================
"" DevIcon Settings
"=====================================================
" loading the plugin 
let g:webdevicons_enable = 1

" adding the flags to NERDTree 
let g:webdevicons_enable_nerdtree = 1

" adding to vim-airline's tabline
let g:webdevicons_enable_airline_tabline = 1

" adding to vim-airline's statusline
let g:webdevicons_enable_airline_statusline = 1

" turn on/off file node glyph decorations (not particularly useful)
let g:WebDevIconsUnicodeDecorateFileNodes = 1

" use double-width(1) or single-width(0) glyphs 
" only manipulates padding, has no effect on terminal or set(guifont) font
let g:WebDevIconsUnicodeGlyphDoubleWidth = 1

" whether or not to show the nerdtree brackets around flags 
let g:webdevicons_conceal_nerdtree_brackets = 0

" the amount of space to use after the glyph character (default ' ')
let g:WebDevIconsNerdTreeAfterGlyphPadding = ' '

" Force extra padding in NERDTree so that the filetype icons line up vertically
let g:WebDevIconsNerdTreeGitPluginForceVAlign = 1 

" change the default character when no match found
let g:WebDevIconsUnicodeDecorateFileNodesDefaultSymbol = 'ƛ'

" set a byte character marker (BOM) utf-8 symbol when retrieving file encoding
" disabled by default with no value
let g:WebDevIconsUnicodeByteOrderMarkerDefaultSymbol = ''

" enable folder/directory glyph flag (disabled by default with 0)
let g:WebDevIconsUnicodeDecorateFolderNodes = 1

" enable open and close folder/directory glyph flags (disabled by default with 0)
let g:DevIconsEnableFoldersOpenClose = 1

" enable pattern matching glyphs on folder/directory (enabled by default with 1)
let g:DevIconsEnableFolderPatternMatching = 1

" enable file extension pattern matching glyphs on folder/directory (disabled by default with 0)
let g:DevIconsEnableFolderExtensionPatternMatching = 0

"=====================================================
"" Neomake Settings 
"=====================================================
call neomake#configure#automake('w')
" call neomake#configure#automake('nrwi', 500)
"let g:neomake_open_list = 2

"=====================================================
"" Deoplete  Settings 
"=====================================================
" Use deoplete.
let g:deoplete#enable_at_startup = 1

" Envs for neovim in case you need
" let g:python_host_prog = '/home/viktor/.envs/neovim2/bin/python'
" let g:python3_host_prog = '/home/viktor/.envs/neovim3/bin/python'


" ------ BASE 16 -----------------
if filereadable(expand("~/.vimrc_background"))
  let base16colorspace=256
  source ~/.vimrc_background
endif


""----------------------------
""            ALE
""            ----------------
""
"let g:ale_linters = {
"      \   'python': ['flake8'],
"      \   'ruby': ['standardrb', 'rubocop'],
"      \   'javascript': ['eslint'],
"      \}


"let g:ale_fixers = {
"      \    'python': ['standardrb'],
"      \}
"nmap <C-A-l> :ALEFix<CR>
"let g:ale_fix_on_save = 1



:map <leader>gd <C-]>

""""""""""""""""""""""""""""""
" => MRU plugin
""""""""""""""""""""""""""""""
let MRU_Max_Entries = 400
map <C-e> :MRU<CR>


""""""""""""""""""""""""""""""
" => Ctrl P
""""""""""""""""""""""""""""""
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'


""""""""""""""""""""""""""""""
" => Ctrl P
""""""""""""""""""""""""""""""
let g:vue_pre_processors = ['scss']


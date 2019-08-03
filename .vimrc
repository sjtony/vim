let g:go_version_warning = 0
set mouse=a
set tags=tags

" Set compatibility to Vim only.
set nocompatible

" " Helps force plug-ins to load correctly when it is turned back on below.
filetype off

"
" " Turn on syntax highlighting.
syntax on

" " For plug-ins to load correctly.
filetype plugin indent on

" " Turn off modelines
set modelines=0

" " Automatically wrap text that extends beyond the screen length.
set wrap!

" " Vim's auto indentation feature does not work properly with text copied
" from outisde of Vim. Press the <F2> key to toggle paste mode on/off.
nnoremap <F2> :set invpaste paste?<CR>
imap <F2> <C-O>:set invpaste paste?<CR>
set pastetoggle=<F2>

" " Uncomment below to set the max textwidth. Use a value corresponding to the
" width of your screen.
" " set textwidth=79
set formatoptions=tcqrn1
set tabstop=2
set shiftwidth=2
set softtabstop=2
set expandtab
set noshiftround

" " Display 5 lines above/below the cursor when scrolling with a mouse.
set scrolloff=5
" " Fixes common backspace problems
set backspace=indent,eol,start

" " Speed up scrolling in Vim
set ttyfast

" " Status bar
set laststatus=2

" " Display options
set showmode
set showcmd

" " Highlight matching pairs of brackets. Use the '%' character to jump
" between them.
set matchpairs+=<:>

" " Display different types of white spaces.
set list
set listchars=tab:›\ ,trail:•,extends:#,nbsp:.

" " Show line numbers
set number

" " Set status line display
set statusline=%F%m%r%h%w\ [FORMAT=%{&ff}]\ [TYPE=%Y]\ [POS=%l,%v][%p%%]\ [BUFFER=%n]\ %{strftime('%c')}

" " Encoding
set encoding=utf-8

" " Highlight matching search patterns
set hlsearch
" " Enable incremental search
set incsearch
" " Include matching uppercase words with lowercase search term
set ignorecase
" " Include only uppercase words with uppercase search term
set smartcase

" " Store info from no more than 100 files at a time, 9999 lines of text,
" 100kb of data. Useful for copying large amounts of data between files.
" set viminfo='100,<9999,s100

" " Map the <Space> key to toggle a selected fold opened/closed.
nnoremap <silent> <Space> @=(foldlevel('.')?'za':"\<Space>")<CR>
vnoremap <Space> zf

" " Automatically save and load folds
autocmd BufWinLeave *.* mkview
autocmd BufWinEnter *.* silent loadview"

call plug#begin('~/.vim/plugged')
Plug 'tpope/vim-surround'
   "   " On-demand loading
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
Plug 'tpope/vim-fireplace', { 'for': 'clojure' }


"shorthand notation; fetches https://github.com/junegunn/vim-easy-align
Plug 'junegunn/vim-easy-align'

" Any valid git URL is allowed
Plug 'https://github.com/junegunn/vim-github-dashboard.git'
"
" " Multiple Plug commands can be written in a single line using | separators
Plug 'SirVer/ultisnips' | Plug 'honza/vim-snippets'

"using a non-master branch
Plug 'rdnetto/YCM-Generator', { 'branch': 'stable' }

" Using a tagged release; wildcard allowed (requires git 1.9.2 or above)
Plug 'fatih/vim-go', { 'tag': '*' }
"
" " Plugin options
Plug 'nsf/gocode', { 'tag': 'v.20150303', 'rtp': 'vim' }
"
" " Plugin outside ~/.vim/plugged with post-update hook
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
"
" " Unmanaged plugin (manually installed and updated)
Plug '~/my-prototype-plugin'
"
"
Plug 'tpope/vim-fugitive'


"Plug 'tpope/vim-markdown'

Plug 'vimwiki/vimwiki'

Plug 'suan/vim-instant-markdown', {'for': 'markdown'}


"Plug 'hallison/vim-markdown'
call plug#end()

"   "
"   " Then reload .vimrc and :PlugInstall to install plugins.
"   "

" vimwiki - Personal Wiki for Vim
" https://github.com/vimwiki/vimwiki
set nocompatible
filetype plugin on
syntax on
" vimwiki with markdown support
let g:vimwiki_ext2syntax = {'.md': 'markdown', '.markdown': 'markdown', '.mdown': 'markdown'}
" helppage -> :h vimwiki-syntax 

" vim-instant-markdown - Instant Markdown previews from Vim
" https://github.com/suan/vim-instant-markdown
let g:instant_markdown_autostart = 0	" disable autostart
map <leader>md :InstantMarkdownPreview<CR>


"" for preview  but not working
"" can't install  due to no npm
"Uncomment to override defaults:
"let g:instant_markdown_slow = 1
"let g:instant_markdown_autostart = 0
"let g:instant_markdown_open_to_the_world = 1
"let g:instant_markdown_allow_unsafe_content = 1
"let g:instant_markdown_allow_external_content = 0
"let g:instant_markdown_mathjax = 1



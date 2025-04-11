" ------- leader --------
map ' <Nop>
let g:mapleader=","
let g:maplocalleader="'"
" -----------------------

" use ; as escape key
inoremap ; <esc>

" allow mouse
set mouse=a

" use system clipboard
set clipboard+=unnamedplus

"https://github.com/Olical/conjure/blob/master/doc/conjure.txt#L88
set splitright

" turnoff highlight by pressing enter
nnoremap <return> :noh<return><esc>

" make it easier to edit vimrc and source it
" https://learnvimscriptthehardway.stevelosh.com/chapters/07.html
nnoremap <leader>ev :vsplit $MYVIMRC<cr>
nnoremap <leader>sv :source $MYVIMRC<cr>

nnoremap <C-b> <C-w>f

" window
nnoremap F :vertical wincmd f<CR>
nnoremap X :exit<CR>
nnoremap <leader>w :set wrap!<CR>
nnoremap <C-h> <C-w>h
nnoremap <C-l> <C-w>l

" Go to tab by number
noremap <leader>1 1gt
noremap <leader>2 2gt
noremap <leader>3 3gt
noremap <leader>4 4gt
noremap <leader>5 5gt

call plug#begin()
Plug 'Olical/conjure'
 
Plug 'tpope/vim-surround'
Plug 'jiangmiao/auto-pairs'

Plug 'scrooloose/nerdtree'

Plug 'morhetz/gruvbox'
Plug 'easymotion/vim-easymotion'
Plug 'dyng/ctrlsf.vim'

" cheatsheet: 
" http://micahelliott.com/posts/2015-08-20-vim-sexp-cheat-sheet.html
Plug 'guns/vim-sexp'

" https://github.com/tpope/vim-sexp-mappings-for-regular-people
Plug 'tpope/vim-sexp-mappings-for-regular-people'

" show git gugger
Plug 'airblade/vim-gitgutter'

" https://github.com/Olical/conjure/wiki/Quick-start:-Racket-(stdio)
Plug 'wlangstroth/vim-racket'

" https://github.com/kaicataldo/material.vim
Plug 'kaicataldo/material.vim'

" https://github.com/tpope/vim-commentary
Plug 'tpope/vim-commentary'

" Snippets are separated from the engine. Add this if you want them:
Plug 'honza/vim-snippets'

" Git
Plug 'tpope/vim-fugitive'

" colorful parenthesis
Plug 'luochen1990/rainbow'

call plug#end()

" ------------- conjure mappings -------------
let g:conjure#mapping#eval_file = 'ef'
let g:conjure#mapping#eval_root_form = 'f'
let g:conjure#mapping#log_toggle = 't'
" --------------------------------------------

" ------------- sexp mappings  -------------
" let g:sexp_mappings = {
"     \ 'sexp_move_to_prev_top_element':  '',
"     \ 'sexp_move_to_next_top_element':  '',
"     \ }
" --------------------------------------------

" -------- auto-pairs -----------
let g:AutoPairs={'(':')', '[':']', '{':'}', '"':'"', "`":"`", '```':'```', '"""':'"""', "'''":"'''"}
" -------------------------------

" -------- easymotion -----------
" easymotion configs, from https://github.com/easymotion/vim-easymotion
let g:EasyMotion_do_mapping = 0 " Disable default mappings
let g:EasyMotion_smartcase = 1
map f <Plug>(easymotion-s2)
" map s <Plug>(easymotion-sn)
" -------------------------------

" ----------- ctrlsf  ------------
nmap     <C-F>f <Plug>CtrlSFPrompt
vmap     <C-F>f <Plug>CtrlSFVwordPath
vmap     <C-F>F <Plug>CtrlSFVwordExec
nmap     <C-F>n <Plug>CtrlSFCwordPath
nmap     <C-F>p <Plug>CtrlSFPwordPath
nnoremap <C-F>o :CtrlSFOpen<CR>
nnoremap <C-F>t :CtrlSFToggle<CR>
inoremap <C-F>t <Esc>:CtrlSFToggle<CR>
" -------------------------------

" ----------- nerdTree  ------------
" source: https://github.com/preservim/nerdtree#how-can-i-map-a-specific-key-or-shortcut-to-open-nerdtree
nnoremap <leader>n :NERDTreeFocus<CR>
nnoremap <C-1> :NERDTreeToggle<CR>
" display bookmarks on startup, 
" source: https://stackoverflow.com/questions/4819079/vim-nerdtree-open-bookmarks-when-vim-is-started
let NERDTreeShowBookmarks=1

" ui
let NERDTreeMinimalUI = 1
let NERDTreeDirArrows = 1
" -------------------------------

" ----------- material theme  ------------
" source https://github.com/kaicataldo/material.vim
if (has('termguicolors'))
  set termguicolors
endif

" let g:material_theme_style = 'default' 
" let g:material_theme_style = 'palenight' 
" let g:material_theme_style = 'ocean' 
" let g:material_theme_style = 'lighter'
let g:material_theme_style = 'darker' 
" let g:material_theme_style = 'default-community' 
" let g:material_theme_style = 'palenight-community' 
" let g:material_theme_style = 'ocean-community' 
" let g:material_theme_style = 'lighter-community' 
" let g:material_theme_style = 'darker-community'
colorscheme material
" -------------------------------

" ----------- git-gutter ------------
" https://github.com/airblade/vim-gitgutter#getting-started
set updatetime=100
" -------------------------------

" ----------------- rainbow parenthesis ---------
let g:rainbow_active = 1
let g:rainbow_conf = {
\	'guifgs': ['#bf96e4', '#ba98e7', '#b49bea', '#af9ded', '#a9a0f0', '#a3a2f2', '#9da4f4', '#96a7f6', '#90a9f8', '#89abf9'],
\}
" -----------------------------------------------

" https://learnvimscriptthehardway.stevelosh.com/chapters/12.html
autocmd FileType scheme set nocursorline
autocmd FileType scheme nnoremap // :NERDTreeToggle<Enter>

" open files in vertial splits by default 	
" https://vi.stackexchange.com/a/22780
autocmd WinNew * wincmd L

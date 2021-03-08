"simple Enable syntax highlighting
"syntax on
set rnu
set t_Co=256
" Show statusline
set laststatus=2

set expandtab
set shiftwidth=2
set softtabstop=2

" Case-insensitive search
set ignorecase

" Highlight search results
set hlsearch

set nocompatible              " be iMproved, required
filetype off                  " required

inoremap ,fr \begin{frame}<Enter>\frametitle{}<Enter><Enter><++><Enter><Enter>\end{frame}<Enter><Enter><++><Esc>6kf}i
inoremap ,em \emph{}<++><Esc>T{i
inoremap <Space><Tab> <Esc>/<++><Enter>
noremap \w   :update<CR>
vnoremap \w <C-C>:update<CR>
inoremap \w <C-O>:update<CR>


noremap \0   0wi//<Esc>
vnoremap \0 <Esc>0wi//<Esc>
inoremap \0 <Esc>0wi//<Esc>

noremap \q   :q<CR>
inoremap \q <C-O>:q<CR>

inoremap  <C-t>  <C-O>:wq<CR>
noremap  <C-t>  :wq<CR>

"Το πρόσθεσα για το Latex
execute pathogen#infect()
" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'rhysd/vim-clang-format'
Plugin 'tomasiser/vim-code-dark'  "VSCode like plugin
Plugin 'Yggdroot/indentLine'
Plugin 'Xuyuanp/nerdtree-git-plugin'
"Plugin 'jeaye/color_coded'
Plugin 'morhetz/gruvbox'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'xuhdev/vim-latex-live-preview'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

let g:ycm_global_ycm_extra_conf = "~/ycm_extra_conf.py"

let g:cpp_class_scope_highlight = 1
let g:cpp_member_variable_highlight = 1
let g:cpp_class_decl_highlight = 1
let g:cpp_experimental_template_highlight = 1
let g:cpp_concepts_highlight = 1
colorscheme gruvbox
let g:gruvbox_contrast_dark='hard'
set background=dark
set guifont=Monospace\ 10
set fillchars+=vert:\|
syntax enable
set ruler
set hidden
set number
"set laststatus=2
set smartindent
set st=4 sw=4 et
set shiftwidth=4
set tabstop=4
let &colorcolumn="80"



map <F7> mzgg=G

" vim-airline {{{
let g:airline_theme='gruvbox'
"let g:airline_powerline_fonts = 1
"let g:airline#extensions#tabline#enabled = 1
"" Show just the filename
"let g:airline#extensions#tabline#fnamemod = ':t'
"set laststatus=2
"" we don't need mode since airline show it
"set noshowmode
"
" }}}

"NERDtree customizations
let g:NERDTreeWinSize=24 
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
nnoremap <Leader>f :NERDTreeToggle<Enter>
"let NERDTreeQuitOnOpen = 1
"autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif
nnoremap <silent> <Leader>v :NERDTreeFind<CR>
let NERDTreeShowHidden=1

"color wal "jelleybeans,camo,lackboard,darkblack, brogrammer
"set termguicolors

"'tomasiser/vim-code-dark'
"colorscheme codedark
"let g:airline_theme = 'codedark'

"let g:indentLine_color_term = 239
"set conceallevel=1
"let g:indentLine_conceallevel=1

if bufwinnr(1)
    noremap <silent> <C-H> :vertical resize -3<CR>
    noremap <silent> <C-L> :vertical resize +3<CR>
    noremap <silent> <C-J> :resize +3<CR>
    noremap <silent> <C-K> :resize -3<CR>
endif

"colorscheme wombat256
"highlight Normal guibg=black guifg=white
"set background=dark

noremap \t   :tabnew<CR>
vnoremap \t <C-C>:tabnew<CR>
inoremap \t <C-O>:tabnew<CR>

" Go to tab by number
noremap <Space>1 1gt
noremap <Space>2 2gt
noremap <Space>3 3gt
noremap <Space>4 4gt
noremap <Space>5 5gt
noremap <Space>6 6gt
noremap <Space>7 7gt
noremap <Space>8 8gt
noremap <Space>9 9gt
noremap <Space>0 :tablast<cr>

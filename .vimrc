" plain vim settings
set number
set showcmd
set showmatch
set laststatus=2
set backspace=2
set ts=4
set shiftwidth=4
set smartindent
inoremap <silent> jj <ESC>
let mapleader = "\<Space>"
nnoremap <Leader>w <C-w>
nnoremap <Leader>h gT
nnoremap <Leader>l gt
let g:netrw_liststyle = 3

" vim-plug settings
" example: Plug 'repo'
call plug#begin('~/.vim/plugged')
	Plug 'ourigen/skyline.vim'
	Plug 'neoclide/coc.nvim'
	Plug 'airblade/vim-gitgutter'
	Plug 'nanotech/jellybeans.vim'
call plug#end()

" colorscheme settings
syntax enable
set background=dark
colorscheme jellybeans

" settings for vim-gitgutter
highlight GitGutterDelete ctermfg=red ctermbg=236
highlight GitGutterAdd ctermfg=green ctermbg=236
nnoremap ghu <Plug>(GitGutterUndoHunk)
nnoremap ghs <Plug>(GitGutterStageHunk)
nnoremap ghp <Plug>(GitGutterPreviewHunk)

" for coc.nvim
set encoding=utf-8
set nobackup
set nowritebackup
set updatetime=300
set signcolumn=yes
set statusline^=%{coc#status()}

inoremap <silent><expr> <CR> coc#pum#visible() ? coc#pum#confirm() : "\<CR>"
inoremap <silent><expr> <TAB>
	\ coc#pum#visible() ? coc#pum#next(1) :
	\ CheckBackspace() ? "\<TAB>" :
	\ coc#reflesh()
inoremap <expr><S-TAB> coc#pum#visible() ? coc#pum#prev(1) : "\<C-h>"



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


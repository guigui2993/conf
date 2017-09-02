set encoding=utf-8
filetype plugin indent on
filetype on
syntax enable

set autoindent
set number
set tabstop=4
set shiftwidth=4
set softtabstop=4
set pastetoggle=<F9>
set background=dark

vmap # :s:^:#<CR>

map <F5> :set nu<CR>
map <F6> :set nonu<CR>

map <F2> :set rnu<CR>
map <F3> :set rnu!<CR>

"VIMRC MASTER RACE (PYTHON)

au BufNewFile,BufRead *.py set tabstop=4 softtabstop=4 shiftwidth=4  expandtab autoindent fileformat=unix
au BufNewFile,BufRead *.js set tabstop=4 softtabstop=4 shiftwidth=4 expandtab autoindent fileformat=unix
au BufNewFile,BufRead *.xml set tabstop=4 softtabstop=4 shiftwidth=4 expandtab autoindent fileformat=unix
au BufNewFile,BufRead *.html set tabstop=4 softtabstop=4 shiftwidth=4 expandtab autoindent fileformat=unix
au BufNewFile,BufRead *.less set tabstop=4 softtabstop=4 shiftwidth=4 expandtab autoindent fileformat=unix
au BufNewFile,BufRead *.css set tabstop=4 softtabstop=4 shiftwidth=4 expandtab autoindent fileformat=unix
au BufNewFile,BufRead *.js set tabstop=2 softtabstop=2 shiftwidth=2 expandtab autoindent fileformat=unix

" Uncomment the following to have Vim jump to the last position when
" reopening a file
if has("autocmd")
  au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
endif

autocmd FileType python nnoremap ,g O__import__('ipdb').set_trace() # GUIADD<Esc>
autocmd FileType javascript nnoremap ,g Odebugger; // GUIADD<Esc>
set list
set listchars=tab:»\ ,extends:›,precedes:‹,nbsp:·,trail:·

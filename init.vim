set mouse=
set conceallevel=2
set smartcase
set ignorecase
set incsearch

" Custom Keybinds
" Ctrl-j/k inserts blank line below/above
nnoremap <silent><C-j> :set paste<CR>m`o<Esc>``:set nopaste<CR>
nnoremap <silent><C-k> :set paste<CR>m`O<Esc>``:set nopaste<CR> set pastetoggle=<F11>
" NERDTree
nmap <silent><C-p> :NERDTreeToggle<CR>

" pandoc x markdown

autocmd FileType markdown.pandoc map <F2> :!pandoc -o "/tmp/vim-pandoc-out.pdf" "%"<CR>
autocmd FileType markdown.pandoc map <F3> :!zathura "/tmp/vim-pandoc-out.pdf" &<CR>

" vim-markdown
let g:vim_markdown_math = 1
let g:vim_markdown_strikethrough = 1

"airline
let g:airline_powerline_fonts = 1

" vim-plug
call plug#begin()
Plug 'preservim/nerdtree'
Plug 'preservim/vim-markdown'
Plug 'lifepillar/vim-gruvbox8'
Plug 'itchyny/lightline.vim'
call plug#end()

autocmd BufNewFile,BufFilePre,BufRead *.md set filetype=markdown.pandoc

color gruvbox8

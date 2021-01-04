source $VIMRUNTIME/vimrc_example.vim

execute pathogen#infect()

set tabstop=4
set shiftwidth=4
set expandtab
set cursorline
set hidden
set noswapfile

colorscheme koehler
highlight Normal guibg=Black guifg=grey
highlight ColorColumn guibg=grey8
highlight Statement guifg=darkyellow
highlight Comment guifg=cyan
highlight Type guifg=darkgreen
highlight Constant guifg=lightred
highlight Visual guibg=darkblue
highlight CursorLine guibg=grey15
highlight SpecialKey guifg=darkred

set guifont=FreeMono\ Bold\ 11
set showcmd
set statusline=%n\:%f%r%m\ %l\/%L\ \(%c\)
set laststatus=2
set autowrite
set regexpengine=1

set tags=tags;/,~/systags,erlang_tags;/

set guioptions-=T
set guioptions-=m

set grepprg=rg\ -inH\ \"$*\"
set makeprg=make\ -s\ -w\ -j\ 4
set path=**
set list
set listchars=tab:\|-,trail:_,extends:+,precedes:+
let g:erlangFold=0
let g:erlangManSuffix = 'erl\.gz'
let g:erlangCompletionGrep = 'zgrep'

autocmd FileType erlang set noexpandtab
autocmd FileType javascript set noexpandtab
autocmd FileType yaml set ts=2 sts=2 sw=2 expandtab

noremap <F2> :GundoToggle<CR>
map <F3> :tp<CR>
map <F4> :tn<CR>
map <F8> :cn<CR>
map <F7> :cp<CR>
map <F5> :make<CR>
map <F9> :A<CR>
map <F10> :noh<CR>

set wildignore=*.o,*.d,*~,*.beam

let &colorcolumn=join(range(99,999), ",")

" Syntastic
"set statusline+=%#warningmsg#
"set statusline+=%{SyntasticStatuslineFlag()}
"set statusline+=%*

"let g:syntastic_always_populate_loc_list = 1
"let g:syntastic_auto_loc_list = 1
"let g:syntastic_check_on_open = 1
"let g:syntastic_check_on_wq = 0
"let g:syntastic_enable_elixir_checker = 1
"let g:syntastic_elixir_checkers = ['elixir']

" Powerline
let g:powerline_pycmd = 'py3'

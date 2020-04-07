syntax on
set splitbelow
set splitright
set encoding=utf-8
set smartindent 
set autoindent
set tabstop=4
set number
set relativenumber
colorscheme koehler
autocmd BufNewFile *.cpp -r ~/Templates/ada.cpp
autocmd FileType * call <SID>def_base_syntax() " autocmd Syntax may be better
function! s:def_base_syntax()
  " Simple example:w
  syntax match commonOperator "\(+\|=\|-\|\^\|\*\)"
  syntax match baseDelimiter ",\|{\|}\|;\|<\|>\|\[\|\]"
  hi link commonOperator Operator
  hi link baseDelimiter Special
endfunction
nnoremap <C-a> :!g++ -std=c++17 -Wshadow -Wall -o %:r.out % -O2 -Wno-unused-result 
nnoremap <C-x> :!./%:r.out
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>
au BufNewFile,BufRead *.py
    \ set tabstop=4
    \ set softtabstop=4
    \ set shiftwidth=4
    \ set textwidth=79
    \ set expandtab
    \ set autoindent
    \ set fileformat=unix


"vbundle
filetype off
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()
Bundle 'gmarik/vundle'

"Public
let mapleader = ","

"Power-line
Bundle 'https://github.com/Lokaltog/vim-powerline.git'
set laststatus=2
let g:Powerline_symbols='unicode'

"Solarized
Bundle 'Solarized'

"Taglist
Bundle 'taglist.vim'

"a.vim
Bundle 'a.vim'

"minibufexpl.vim
Bundle 'minibufexpl.vim'

"The-NERD-Commenter
Bundle 'The-NERD-Commenter'
let loaded_nerd_comments=1

"DoxygenToolkit.vim
Bundle 'DoxygenToolkit.vim'
let g:load_doxygen_syntax=1
nmap <leader>c :Dox<cr>

"NERD-tree
Bundle 'The-NERD-tree'

"snipMate, inc<TAB>
Bundle 'snipMate'

"Highlight for cpp
Bundle 'cpp.vim'

"grep.vim
Bundle 'grep.vim'

"Shell
Bundle 'Shell.vim'

"Color
syntax on
set background=dark
"set background=light
"colorscheme solarized
color desert

"Self shorcut
nmap <leader>w :w!<cr>
nmap <leader>f :find<cr>
nmap <leader>q :q<cr>
nmap <leader>fn :nohls<cr>
nmap <leader>t :r! date \+\%F\ \%T<cr>
nmap <C-d> :shell<cr>

"cscope setting
if has("cscope")
  set csprg=/usr/local/bin/cscope
  set csto=1
  set cst
  set nocsverb
  " add any database in current directory
  if filereadable("cscope.out")
    cs add cscope.out
  endif
  set csverb
endif

nmap <C-@>s :cs find s <C-R>=expand("<cword>")<CR><CR>
nmap <C-@>g :cs find g <C-R>=expand("<cword>")<CR><CR>
nmap <C-@>c :cs find c <C-R>=expand("<cword>")<CR><CR>
nmap <C-@>t :cs find t <C-R>=expand("<cword>")<CR><CR>
nmap <C-@>e :cs find e <C-R>=expand("<cword>")<CR><CR>
nmap <C-@>f :cs find f <C-R>=expand("<cfile>")<CR><CR>
nmap <C-@>i :cs find i <C-R>=expand("<cfile>")<CR>$<CR>
nmap <C-@>d :cs find d <C-R>=expand("<cword>")<CR><CR>


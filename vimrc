"Configurations
""Vundle
set nocompatible               " be iMproved
filetype off                   " required!
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

""tagbar
""nmap <F8> :TagbarToggle<CR>

""tabs
nnoremap <S-Up> :tabprevious<CR>
nnoremap <S-Down> :tabnext<CR>
nnoremap <S-t> :tabnew<CR>
nnoremap <S-w> :tabclose<CR>


""general
set number " mostrar o numero da linha
set nowrap " nao quebra linhas maiores que a área de visualização
set showmode " if in Insert, Replace or Visual mode put a message on the last line
set showcmd " mostra o comando sendo digitado, por exemplo 3p
""" beautiful status line with:
""" left: fullpath, modified flag (+modified,-modfiable is off), readonly flag,
""" right: line number, column number, percentage as in ruler, number of lines
set statusline=%(\ %F\ %m\ %)\ %=\ %(\ [%l,%c]\ %P\ of\ %L\ lines\ \[%n\]\ %)
set laststatus=2 " statusline na segunda linha
set backspace=indent,eol,start " faz com que o backspace apague endentação, caracteres de fim e início delinha
set tabstop=2
set shiftwidth=2 " endentação com 2 espaçoes
set autoindent " endentação automática
set smartindent " um nivel extra para cada bloco aninhado, etc...
set expandtab " inclui espaços ao usar TAB
set incsearch " busca incremental

"" CtrlP Configurations
""" Disable directories for angular projects
set wildignore+=*/tmp/*,*.so,*.swp,*.zip,*/bower_components/*,*/dist/*,*/app/images/*,*/node_modules/*,*/fonts/*,*/lib/*

" My Bundles here:
" vundle
Bundle 'gmarik/vundle'
"" tagbar
Bundle 'majutsushi/tagbar'
""solarized
Bundle 'altercation/vim-colors-solarized'
""snipmates
Bundle "MarcWeber/vim-addon-mw-utils"
Bundle "tomtom/tlib_vim"
Bundle "garbas/vim-snipmate"
""community snippets
Bundle "honza/vim-snippets"
""CtrlP
Bundle "kien/ctrlp.vim"
""Tagbar
"Bundle majutsushi/tagbar
""EasyMotion
Bundle "Lokaltog/vim-easymotion"
""CofeeScript syntax highlight
Bundle 'kchmck/vim-coffee-script'
"" Angular Snippets
Bundle 'matthewsimo/angular-vim-snippets'
"" Supertab complete
Bundle 'ervandew/supertab'
"" Close brackets, parens, quots
Bundle 'Raimondi/delimitMate'
"" syntax check
""Bundle 'tomtom/checksyntax_vim'

" End of My Bundles

filetype plugin indent on     " required!

""solarized colors
se t_Co=256
syntax enable
set background=dark
let g:solarized_termcolors=256
colorscheme solarized

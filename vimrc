"Configurations
""Vundle
set nocompatible               " be iMproved
filetype off                   " required!
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

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

" My Plugins here:
" vundle
Plugin 'gmarik/vundle'
"" tagbar
Plugin 'majutsushi/tagbar'
""solarized
Plugin 'altercation/vim-colors-solarized'
""snipmates
Plugin 'MarcWeber/vim-addon-mw-utils'
Plugin 'tomtom/tlib_vim'
Plugin 'garbas/vim-snipmate'
""community snippets
Plugin 'honza/vim-snippets'
""CtrlP
Plugin 'kien/ctrlp.vim'
""Tagbar
"Plugin majutsushi/tagbar
""EasyMotion
Plugin 'Lokaltog/vim-easymotion'
""CofeeScript syntax highlight
Plugin 'kchmck/vim-coffee-script'
"" Angular Snippets
Plugin 'matthewsimo/angular-vim-snippets'
"" Supertab complete
Plugin 'ervandew/supertab'
"" Close brackets, parens, quots
Plugin 'Raimondi/delimitMate'
"" tabline for frindly tabs
Plugin 'mkitt/tabline.vim'
"" Syntax highlight for javascript libs (Jquery, Ember, Angular)
Plugin 'othree/javascript-libraries-syntax.vim'
"" syntax check
"Plugin 'tomtom/checksyntax_vim'

""Plugin 'Lokaltog/powerline'

" End of My Plugins
call vundle#end()   
filetype plugin indent on     " required!

""solarized colors
se t_Co=256
syntax enable
set background=light
let g:solarized_termcolors=256
colorscheme solarized

""para mudar cor das abas
hi TabLine      ctermfg=Darkblue ctermbg=White    cterm=NONE
hi TabLineFill  ctermfg=Darkblue ctermbg=White    cterm=NONE
hi TabLineSel   ctermfg=White    ctermbg=DarkBlue cterm=NONE

""configurações do plugin javascript-libraries-syntax.vim
let g:used_javascript_libs = 'angularjs,angularui,jquery'

"" tem que ficar aqui para rodar depois que o schema de cores rodar
set cursorline "destaca a linha corrent
set cursorcolumn "destaca a coluna corrente
"destaca a linha com bold e outras frescuras
hi CursorLine term=bold cterm=bold

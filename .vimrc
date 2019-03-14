
set tabstop=4
set shiftwidth=4
set smarttab
set et 
"— включим автозамену по умолчанию

set wrap  
"— попросим Vim переносить длинные строки

set ai 
"— включим автоотступы для новых строк
set cin 
"— включим отступы в стиле Си

" Перенос строк по словам, а не по буквам
set linebreak
"
" " Включаем отображение выполняемой в данный момент команды в правом нижнем  углу экрана.
" " К примеру, если вы наберете 2d, то в правом нижнем углу экрана Vim  отобразит строку 2d.
 set showcmd
" " Включаем отображение дополнительной информации в статусной строке 
set statusline=%<%f%h%m%r%=format=%{&fileformat}\ file=%{&fileencoding}\ enc=%{&encoding}\ %b\ 0x%B\ %l,%c%V\ %P


"Далее настроим поиск и подсветку результатов поиска и совпадения скобок
set showmatch
set hlsearch
set incsearch
set ignorecase

set lz 
"— ленивая перерисовка экрана при выполнении скриптов


set ffs=unix,dos,mac
set fencs=utf-8,cp1251,koi8-r,ucs-2,cp866


if has('gui')
if has('win32')
au GUIEnter * call libcallnr('maximize', 'Maximize', 1)
elseif has('gui_gtk2')
au GUIEnter * :set lines=99999 columns=99999
endif
endif

"@пять же, системы сборки для разных платформ могут быть переопределены:
if has('win32')
set makeprg=nmake
compiler msvc
else
set makeprg=make
compiler gcc
endif


"set pastetoggle=<F2>
nnoremap <F2> :set invpaste paste?<CR>
set pastetoggle=<F2>


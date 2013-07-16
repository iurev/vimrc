"Отсутствие совместимости с редактором VI
set nocompatible
"Поддержка различных отступов для различных типов файлов
filetype plugin indent on
"Поиск введется при наборе символов(клавиши "/", "?")
set incsearch
"По-умолчанию VIM при переключении в другой буфер 'заставляет'
"сохранять файл и выгружате его из памяти. Из-за этого теряются
"история правок файла. Благодаря этой опции VIM не выгружает
"буфер из памяти при смене его на другой буфер 
set hidden
"Умные отступы
set smartindent
"Устанавливаем другие отступы  
if has("autocmd")
     "Включаем определение типов файлов
     filetype off
     "Для отличных от стандартных типов файлов устанавливаем различные отступы
     autocmd FileType html setlocal ts=2 sts=2 sw=2 noet
     autocmd FileType ruby setlocal ts=2 sts=2 sw=2 expandtab
     autocmd FileType eruby setlocal ts=2 sts=2 sw=2 noet
     autocmd FileType yaml setlocal ts=2 sts=2 sw=2 noet
     autocmd FileType haml setlocal ts=2 sts=2 sw=2 expandtab
     autocmd FileType sass setlocal ts=2 sts=2 sw=2 noet
     autocmd FileType coffee setlocal ts=2 sts=2 sw=2 expandtab
     autocmd FileType javascript setlocal ts=2 sts=2 sw=2 expandtab
     au! BufRead,BufNewFile *.sass         setfiletype sass 
     au! BufRead,BufNewFile *.haml         setfiletype haml 
     au! BufRead,BufNewFile *.coffee         setfiletype coffee
endif
" Автоперезагружать измененные файлы
set autoread
" Автоматически перезагружать конфигурацию при сохранении
autocmd! bufwritepost $MYVIMRC source $MYVIMRC
" Игнорировать регистр при поиске
set ignorecase
" Но если буквы печатаются большими, то регистр учитывать
set smartcase
"КОДИРОВКИ
"VIM по-умолчанию сохраняет файлы в кодировке utf-8
set encoding=utf-8
"Возможные кодировки файлов и порядок их открытия
set fileencodings=utf-8,cp1251

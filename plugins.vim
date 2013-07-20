"-----------------------------------------------------------
"Настройки для Vundle - менеджера плагинов VIM
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()
"filetype plugin indent on " обязательно!
"-----------------------------------------------------------

"-----------------------------------------------------------
" EasyMoution
" Удобное перемещение - набираешь gw и тебе 
" все слова показываются, начиная с определенной
" буквы, набрав которую, ты переходишь
Bundle 'EasyMotion'
" Для начала перемещения используется клавиша g
let g:EasyMotion_leader_key = 'g'
"-----------------------------------------------------------

"-----------------------------------------------------------
" CtrlP
" CtrlP - нечеткий поиск по файлам, папкам, буферам, истории
" отмен
Bundle 'ctrlp.vim'
"Так было сказано сделать в описании к CtrlP
set runtimepath^=~/.vim/bundle/ctrlp.vim
"Открытие CtrlPBuffer
map <c-b> :CtrlPBuffer<enter>
"-----------------------------------------------------------

"-----------------------------------------------------------
" Комментирование
Bundle 'tComment'
map <C-k> gcc
"-----------------------------------------------------------

"-----------------------------------------------------------
" Удобное расширение для HTML,
" которое упрощает написание всего этого хтмл-кошмара
Bundle 'ZenCoding.vim'
" превращает div>div.center в 
" <div>
" 	<div class="center"></div>
" </div> 
" -----------------------------------------------------------

"-----------------------------------------------------------
"Автозакрытие скобочек, эндов и т.д. (оба плагина)
Bundle 'delimitMate.vim'
Bundle 'endwise.vim'
"-----------------------------------------------------------

"-----------------------------------------------------------
"Переход между бегин-енд и т.д.
Bundle 'ruby-matchit'
Bundle 'matchit.zip'
"-----------------------------------------------------------

"-----------------------------------------------------------
"Дерево отмен
Bundle 'https://github.com/mbbill/undotree.git'
"Показывает историю отмен при нажатии на Ctrl-U
nnoremap <F5> :UndotreeToggle<cr>
"-----------------------------------------------------------

"-----------------------------------------------------------
" Дерево файлов слева (можно и справа и вообще где угодно)
Bundle 'The-NERD-tree'
map <C-n> :NERDTree<enter>
"-----------------------------------------------------------

"-----------------------------------------------------------
" Делает исходные коды красивыми и няшными одним нажатием клавиш
Bundle 'maksimr/vim-jsbeautify'
" autocmd FileType javascript cmap <buffer>  btf call JsBeautify()<cr>
" autocmd FileType html cmap <buffer> btf call HtmlBeautify()<cr>
" autocmd FileType css cmap <buffer> btf call CSSBeautify()<cr>
"-----------------------------------------------------------

"-----------------------------------------------------------
" Синтаксис для библиотек
Bundle "https://github.com/othree/javascript-libraries-syntax.vim.git"
autocmd BufReadPre *.js let b:javascript_lib_use_jquery = 1
"-----------------------------------------------------------

" Автоматическое открытие меню выбора вариантов завершения
Bundle 'AutoComplPop'

"Автоподсветка поиска
Bundle 'IndexedSearch'

" Сниппеты
Bundle 'snipMate'

" Какие-то улучшения для Ruby
Bundle 'ruby.vim'

" Плагин для рельс
Bundle 'rails.vim'

" Замена грепа
Bundle 'ack.vim'

" Улучшенная статусная линия 
Bundle 'https://github.com/Lokaltog/vim-powerline.git'
set laststatus=2

" Улучшенная подсветка синтаксиса Javascript
Bundle 'https://github.com/jelera/vim-javascript-syntax.git'

" Отступы ЖС и т.п.
Bundle "pangloss/vim-javascript"

" HAML. HAML это вам не HTML!
Bundle 'tpope/vim-haml'

" Работа с CoffeeScript
Bundle 'kchmck/vim-coffee-script'

" Подсветка синтаксиса
Bundle 'scrooloose/syntastic'

" Простой способ прокрутить все существующие темы
Bundle 'rom399/vim-colorsheme-scroller'

" Очень-очень много цветовых схем для VIM
Bundle 'flazz/vim-colorschemes'

" Много-много сниппетов для самых разных языков
Bundle 'honza/vim-snippets'

" Удобное разворачивание текущего буфера на весь экран
" и сворачивание. Активируется по нажатию <C-w>-o
Bundle 'ZoomWin'

"-----------------------------------------------------------
" Настройки для Vundle - менеджера плагинов VIM
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()
Bundle "gmarik/vundle"
"-----------------------------------------------------------

"-----------------------------------------------------------
" EasyMoution
" Очень удобное перемещение. Лучше всего его смысл объясняет 
" гифка на официальной странице
Bundle 'EasyMotion'
" Назначил начало перемещения на
" редкоиспользуемые клавиши
nmap s \\f
nmap S \\F
vmap s \\f
vmap S \\F
nmap B \\b
nmap W \\w
vmap B \\b
vmap W \\w
nmap E \\e
vmap E \\e
" Переназначил клавиши быстрого доступа так, 
" чтобы последние клавиши было удобнее всего жать
let g:EasyMotion_keys = "abcdefghpqrstvwxyz.,mnouilkj"
"-----------------------------------------------------------

"-----------------------------------------------------------
" CtrlP - нечеткий поиск по файлам, папкам, буферам, истории
" отмен
Bundle 'ctrlp.vim'
" Так было сказано сделать в описании к CtrlP
set runtimepath^=~/.vim/bundle/ctrlp.vim
" Открытие CtrlPBuffer
nmap gb :CtrlPBuffer<cr>
let g:ctrlp_custom_ignore = {
  \ 'dir':  '\v[\/]\.(git|hg|svn)|tmp$',
  \ 'file': '\v\.(exe|so|dll)$',
  \ 'link': 'some_bad_symbolic_links',
  \ }
"-----------------------------------------------------------

"-----------------------------------------------------------
" Комментирование
Bundle 'tComment'
nmap <C-k> gcc
vmap <C-k> gc
imap <C-k> <esc>gcc
"-----------------------------------------------------------

"-----------------------------------------------------------
" Автозакрытие скобочек, эндов и т.д. (оба плагина)
Bundle 'endwise.vim'
Bundle 'jiangmiao/auto-pairs'
let g:AutoPairsFlyMode = 0
let g:AutoPairsShortcutBackInsert = '<A-f>'
"-----------------------------------------------------------

"-----------------------------------------------------------
"Переход между бегин-енд и т.д.
Bundle 'ruby-matchit'
Bundle 'matchit.zip'
"-----------------------------------------------------------

"-----------------------------------------------------------
" Дерево отмен
Bundle 'https://github.com/mbbill/undotree.git'
" Показывает историю отмен при нажатии на <F5>
nnoremap <F5> :UndotreeToggle<cr>
"-----------------------------------------------------------

"-----------------------------------------------------------
" Дерево файлов слева (можно и справа и вообще где угодно)
Bundle 'The-NERD-tree'
map <C-n> :NERDTreeToggle<cr>
"-----------------------------------------------------------

"-----------------------------------------------------------
" Делает исходные коды красивыми и няшными одним нажатием клавиш
Bundle 'maksimr/vim-jsbeautify'
"-----------------------------------------------------------

"-----------------------------------------------------------
" Клевая вещь - показывает, благодаря гиту, какие строки
" были добавлены, изменены
Bundle 'airblade/vim-gitgutter'
nmap <F7> :GitGutterToggle<enter>
let g:gitgutter_enabled = 0
"-----------------------------------------------------------

"-----------------------------------------------------------
" Улучшенная статусная линия 
Bundle 'https://github.com/Lokaltog/vim-powerline.git'
" Чтобы статусная строка отображалась всегда
set laststatus=2
"-----------------------------------------------------------

"-----------------------------------------------------------
" Сниппеты
Bundle 'snipMate'
"-----------------------------------------------------------

"-----------------------------------------------------------
" Показывает отступы
Bundle 'nathanaelkane/vim-indent-guides'
nmap zv \ig
"-----------------------------------------------------------

"-----------------------------------------------------------
" Очень клевая нумерация строк
Bundle 'myusuf3/numbers.vim'
nmap zn :NumbersToggle<CR>
"-----------------------------------------------------------

"-----------------------------------------------------------
" Предпросмотр открытых буферов и навигация по ним
Bundle 'itchyny/thumbnail.vim'
nmap zo :Thumbnail<cr>
"-----------------------------------------------------------

"-----------------------------------------------------------
" Удобные плагины для режима выделения:
" ar расширяет текущее выделение,
" ir - сужает
Bundle 'kana/vim-textobj-user'
Bundle 'nelstrom/vim-textobj-rubyblock'
"-----------------------------------------------------------

" Автоматическое открытие меню автокомплита
Bundle 'AutoComplPop'

" Автоподсветка поиска
Bundle 'IndexedSearch'

" Какие-то улучшения для Ruby
Bundle 'ruby.vim'

" Плагин для рельс
Bundle 'rails.vim'

" Улучшенная подсветка синтаксиса Javascript
Bundle 'https://github.com/jelera/vim-javascript-syntax.git'

" Отступы Javascript и т.п.
Bundle "pangloss/vim-javascript"

" HAML. HAML это вам не HTML!
Bundle 'tpope/vim-haml'

" Работа с CoffeeScript
Bundle 'kchmck/vim-coffee-script'

" Проверка синтаксиса
Bundle 'scrooloose/syntastic'

" Простой способ быстро посмотреть все установленные
" темы
Bundle 'rom399/vim-colorsheme-scroller'

" Очень-очень много цветовых схем для VIM
Bundle 'flazz/vim-colorschemes'

" Много-много сниппетов для самых разных языков
" ( после их установки обязательно нужно удалить
" стандартные сниппеты, чтобы они не конфликтовали )
Bundle 'honza/vim-snippets'

" Удобное разворачивание текущего буфера на весь экран
" и сворачивание. Активируется по нажатию <C-w>o
Bundle 'ZoomWin'

" Работа с Git
Bundle 'tpope/vim-fugitive'

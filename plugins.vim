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
nmap B \\b
nmap W \\w
nmap E \\e
" Переназначил клавиши быстрого доступа так,
" чтобы последние клавиши было удобнее всего жать
let g:EasyMotion_keys = "abcdefghpqrstvwxyz.,mnouilkj"
"-----------------------------------------------------------

"-----------------------------------------------------------
" Самое лучшее автозавершение слов
Bundle 'Valloric/YouCompleteMe'
"-----------------------------------------------------------

"-----------------------------------------------------------
" CtrlP - нечеткий поиск по файлам, папкам, буферам, истории
" отмен
Bundle 'ctrlp.vim'
" Так было сказано сделать в описании к CtrlP
set runtimepath^=~/.vim/bundle/ctrlp.vim
" Открытие CtrlPBuffer
nmap <space>b :CtrlPBuffer<cr>
nmap <space>l :CtrlPLine<cr>
let g:ctrlp_custom_ignore = {
  \ 'dir':  '\v[\/]\.(git|hg|svn)|tmp$',
  \ 'file': '\v\.(exe|so|dll)$',
  \ 'link': 'some_bad_symbolic_links',
  \ }
" Полезности для RoR - быстрые сочетания клавиш для
" открытия нужных контроллеров, представлений и тп
nmap <space>m <c-p>model/
nmap <space><space> <c-p>
nmap <space>vv <c-p>views/
nmap <space>vs <c-p>views/show<left><left><left><left>
nmap <space>ve <c-p>views/edit<left><left><left><left>
nmap <space>vn <c-p>views/new<left><left><left>
nmap <space>vi <c-p>views/index<left><left><left><left><left>
nmap <space>vf <c-p>views/form<left><left><left><left>
nmap <space>c <c-p>controllers/
nmap <space>s <c-p>spec/
"-----------------------------------------------------------

"-----------------------------------------------------------
" Комментирование
Bundle 'tComment'
nmap <C-k> gcc
vmap ,s gc
nmap ,s gcc
nmap ,l gc
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
nmap <Space>u :UndotreeToggle<cr>
"-----------------------------------------------------------

"-----------------------------------------------------------
" Дерево файлов слева (можно и справа и вообще где угодно)
Bundle 'The-NERD-tree'
nmap <C-n> :NERDTreeToggle<cr>
"-----------------------------------------------------------

"-----------------------------------------------------------
" Клевая вещь - показывает, благодаря гиту, какие строки
" были добавлены, изменены
Bundle 'airblade/vim-gitgutter'
nmap <Space>g :GitGutterToggle<enter>
let g:gitgutter_enabled = 0
"-----------------------------------------------------------

"-----------------------------------------------------------
" Улучшенная статусная линия
Bundle 'bling/vim-airline'
" Замена стандартных табов на табы airline
let g:airline#extensions#tabline#enabled = 1
" Чтобы статусная строка отображалась всегда
set laststatus=2
let g:airline_theme='solarized'
" Использовать красивые значки для панели - нужно установить
" шрифты
let g:airline_powerline_fonts = 1
"-----------------------------------------------------------

"-----------------------------------------------------------
" Показывает отступы
Bundle 'nathanaelkane/vim-indent-guides'
nmap <space>t \ig
"-----------------------------------------------------------

"-----------------------------------------------------------
" Удаление текущего буфера без удаления сплитов
Bundle 'rbgrouleff/bclose.vim'
nmap <m-d> :Bclose<cr>
"-----------------------------------------------------------

"-----------------------------------------------------------
" Удобные плагины для режима выделения:
" ar расширяет текущее выделение,
" ir - сужает
Bundle 'kana/vim-textobj-user'
Bundle 'nelstrom/vim-textobj-rubyblock'
"-----------------------------------------------------------

"-----------------------------------------------------------
" Файловый менеджер. Умеет копировать, перемещать,
" переименовывать, показывать (или скрывать) скрытые файлы,
" вставлять, показывать предпросмотр. То есть, все то, что
" должен уметь файловый менеджер.
Bundle 'mbbill/VimExplorer'
nmap <Space>e :VE<cr>
"-----------------------------------------------------------

"-----------------------------------------------------------
" Поиск
Bundle 'mileszs/ack.vim'
nmap <Space>a :Ack<space>
"-----------------------------------------------------------

"-----------------------------------------------------------
" Избранные цветовые схемы для VIM.
Bundle 'tomasr/molokai'
Bundle 'altercation/vim-colors-solarized'
Bundle '29decibel/codeschool-vim-theme'
Bundle 'oceanlight'
" Кроме них мне также нравятся obsidian2,
" oceanlight, night, inkpot, maroloccio,
" manuscript, jellybeans, Lavender, Iceberg,
" Goldfish
"-----------------------------------------------------------

"-----------------------------------------------------------
" Работа с окружающими парными символами
" и тегами в VIM
Bundle 'tpope/vim-surround'
nmap ," cs'"
nmap ,' cs"'
"-----------------------------------------------------------

"-----------------------------------------------------------
" Автосохранение
Bundle 'vim-auto-save'
let g:auto_save = 1
"-----------------------------------------------------------

"-----------------------------------------------------------
" Rails
Bundle 'tpope/vim-rails'
Bundle 'rails.vim'
"-----------------------------------------------------------

"-----------------------------------------------------------
" Переключение true-false, старого и нового стилей
" хэшей в Ruby
Bundle 'zef/vim-cycle'
"-----------------------------------------------------------

" Автоподсветка поиска
Bundle 'IndexedSearch'

" Какие-то улучшения для Ruby
Bundle 'vim-ruby/vim-ruby'

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

" Много-много сниппетов для самых разных языков
" ( после их установки обязательно нужно удалить
" стандартные сниппеты, чтобы они не конфликтовали )
Bundle 'honza/vim-snippets'

" Удобное разворачивание текущего буфера на весь экран
" и сворачивание. Активируется по нажатию <C-w>o
Bundle 'ZoomWin'

" Работа с Git
Bundle 'tpope/vim-fugitive'

" Работа с форматом rabl
Bundle 'yaymukund/vim-rabl'

" Удобные отступы по запятым, двоеточиям, табам и т.п
Bundle 'junegunn/vim-easy-align'

" Увеличение-уменьшение числа под курсором
Bundle 'Increment-and-Decrement-number'

" Изменено поведение клавиш F, f, t, T
" а также освободились ';' и ','
Bundle 'rhysd/clever-f.vim'

" Автодополнение из Eclipse для Ruby
Bundle 'dansomething/vim-eclim'

" Повторение для surround VIM
Bundle 'tpope/vim-repeat'

" Делает исходные коды красивыми и няшными одним нажатием клавиш
Bundle 'maksimr/vim-jsbeautify'

" Возможность юзать перемещение в режиме ввода - нужно использовать Альт+ролд
" A-l
imap <A-l> <C-o>l
" A-k
imap <A-k> <C-o>k
" A-j
imap <A-j> <C-o>j
" A-h
imap <A-h> <C-o>h
" A-w
imap <A-w> <C-o>w
" A-e
imap <A-e> <C-o>e
" A-b
imap <A-b> <C-o>b
" A-A
imap <A-a> <C-o>A
" A-I
imap <A-i> <C-o>I
" A-c
imap <A-c> <C-o>C
" Отступы
nmap <C-[> <<
nmap <C-]> >>
" Если изменить отступы в режиме выделения,
" то режим выделения сохранится
vmap <c-[> <gv
vmap <c-]> >gv
" Для того чтобы в результате назначения новых
" отступов работал esc
nmap <esc> <C-c>
vmap <esc> <C-c>
" Переключение буферов вперед-назад
nmap <S-Space> :bp<enter>
nmap <C-Space> :bn<enter>
" Перезагрузка конфига
map <F8> :so ~/.vimrc<cr>
" Открытие редактирования вима при вводе :evim
cmap evim e ~/.vim/vimrc
"Показывает буферы при нажатии на <F2>
map <F2> :buffers<enter>
"При двукратном нажатии на j в режиме ввода
"редактор входит в нормальный режим
imap шш <esc>
imap ii <esc>
"Пробел в нормальном режиме перелистывает страницу вниз
nmap <Space> zz
"Открытие текущего файла в браузере
nmap <C-o>o :w<enter>:!opera -newtab %<enter>
nmap <C-o>c :w<enter>:!chromium-browser --new-tab %<enter>
nmap <C-o>f :w<enter>:!firefox -new-tab %<enter>
nmap ZO :w<enter>:!opera -newtab %<enter>
nmap ZC :w<enter>:!chromium-browser --new-tab %<enter>
nmap ZF :w<enter>:!firefox -new-tab %<enter>
"Сохранение на Ctrl+s
nmap <C-s> :w<CR>
imap <C-s> <C-o>:w<CR>
"Подтверждение на сохранение закрываемого файла
set confirm
"Включает возможность использовать 'внутреннюю' раскладку
"клавиатур. При включенной русской системной раскладке 
"VIM по-прежнему работает только в режиме ввода
"В ВикиУчебнике написан способ, который может заставить
"работать VIM при включенной системной раскладке
set keymap=russian-jcukenwin
"По-умолчанию поиск и вставка будут происходить на английском языке
set iminsert=0	
set imsearch=0
"Вставка из системного буфера обмена в режиме вставки
imap <C-v> <C-o>"+p
" При нажатии на Ctrl-f будет происходить смена раскладки
cmap <silent> <C-L> <C-^>
imap <silent> <C-L> <C-^>X<Esc>a<C-H>
nmap <silent> <C-L> a<C-^><Esc><CR>
vmap <silent> <C-L> <Esc>a<C-^><Esc><CR>gv
" Для вставки использовать системный буфер обмена
set clipboard=unnamed
" Подсветка всех слов, одинаковых с тем, на который был наведен курсор
autocmd CursorMoved * silent! exe printf("match Search /\\<%s\\>/", expand('<cword>'))
" При поиске подсвеченное слово устанавливать 
" по центру экрана
nmap n nzz
nmap N Nzz
nmap * *zz
nmap # #zz
nmap g* g*zz
nmap g# g#zz
" Открывает список буферов, начинает печатать :b,
" чтобы можно было выбрать номер буфера
nmap <M-b> :ls<enter>:b
" Перемещение на страницу вверх-вниз,
" установление текущей линии по-центру
nmap <M-j> <PageDown>zz
nmap <M-k> <PageUp>zz

nmap G Gzz

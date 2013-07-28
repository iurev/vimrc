" Возможность юзать перемещение в режиме ввода 
" нужно использовать Альт+клавишу перемещения
imap <A-l> <right>
imap <A-k> <C-o>k
imap <A-j> <C-o>j
imap <A-h> <C-o>h
imap <A-w> <C-o>w
imap <A-b> <C-o>b
imap <A-a> <C-o>A
imap <A-i> <C-o>I
imap <A-c> <C-o>C
" Отступы
nnoremap < <<
nnoremap > >>
" Если изменить отступы в режиме выделения,
" то режим выделения сохранится
vnoremap < <gv
vnoremap > >gv
" Переключение буферов вперед-назад
nmap <S-Space> :bp<enter>
nmap <C-Space> :bn<enter>
" Перезагрузка конфига VIM-а
map <F8> :so ~/.vimrc<cr>
" Показывает буферы при нажатии на <F2>
map <F2> :buffers<enter>
" При двукратном нажатии на i (или ш) в режиме ввода
" редактор входит в нормальный режим
imap <silent> шш <esc>
imap <silent> ii <esc>
" Пробел в нормальном режиме устанавливает текущую линию
" по-центру
nmap <Space> zz
" Сохранение на Ctrl+s
nmap <C-s> :w<CR>
vmap <C-s> <esc>:w<CR>gv
imap <C-s> <C-o>:w<CR>
" Вставка из системного буфера обмена в режиме вставки
imap <C-v> <C-o>"+p
" При нажатии на Ctrl-f будет происходить смена раскладки
cmap <silent> <C-L> <C-^>
imap <silent> <C-L> <C-^>X<Esc>a<C-H>
nmap <silent> <C-L> a<C-^><Esc><CR>
vmap <silent> <C-L> <Esc>a<C-^><Esc><CR>gv
" При поиске подсвеченное слово устанавливать 
" по центру экрана
nmap n nzz
nmap N Nzz
nmap * *zz
nmap # #zz
nmap g* g*zz
nmap g# g#zz
" Переместиться на пол-экрана вниз-вверх
" и установить текущую линию по центру экрана
nnoremap <c-d> <c-d>zz
nnoremap <c-u> <c-u>zz
" Когда страница листается вниз, сама нижняя
" строчка устанавливается по-центру
nmap G Gzz
" Перемещение между вкладками
nmap <M-n> :tabp<enter>
nmap <M-m> :tabn<enter>
" Создание сверху пустой строки и переход
" в нормальный режим
nmap <M-o> <S-o><esc>

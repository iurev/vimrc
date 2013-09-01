	syntax enable
if has('gui_running')
	colorscheme solarized
else
	colorscheme default
endif
set guioptions-=r " отключаем правый scrollbar
set guioptions-=R " отключаем правый scrollbar при вертикальном разделении окна
set guioptions-=b " отключаем нижний scrollbar
set guioptions-=l " отключаем левый scrollbar
set guioptions-=L " отключаем левый scrollbar при вертикальном разделении окна
set guioptions-=T " отключаем панель инструментов
set guioptions-=m " отключаем меню
" Установка шрифта monofur 18
set guifont=monofur\ for\ Powerline\ 17
" Включить нумерацию строк слева
:set number
"При запуске гуишный vim раскрывается на весь экран
if has("gui_running")
	au GUIEnter * :set lines=99999 columns=99999
end
" Показывать вводимые после ":" комманды без задержки
set showcmd
" Включена поддержка синтаксиса
syntax on
" Установить ширину NERDTree в 15 чего-то там
let g:NERDTreeWinSize = 15
" Отключение мигания курсора
set guicursor+=a:blinkon0
" Отключить тильды (~) на пустых строчках
" на самом деле, они останутся, но их цвет будет совпадать
" с цветом фона
hi NonText guifg=bg guibg=NONE
" Подсветка текущей линии
set cursorline
" Отсутствие нумерации
set nonumber

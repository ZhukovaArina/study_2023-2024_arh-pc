---
## Front matter
title: "Лабораторная работа №4"
subtitle: ""
author: "Жукова Арина Александровна"

## Generic otions
lang: ru-RU
toc-title: "Содержание"

## Bibliography
bibliography: bib/cite.bib
csl: pandoc/csl/gost-r-7-0-5-2008-numeric.csl

## Pdf output format
toc: true # Table of contents
toc-depth: 2
lof: true # List of figures
lot: true # List of tables
fontsize: 12pt
linestretch: 1.5
papersize: a4
documentclass: scrreprt
## I18n polyglossia
polyglossia-lang:
  name: russian
  options:
	- spelling=modern
	- babelshorthands=true
polyglossia-otherlangs:
  name: english
## I18n babel
babel-lang: russian
babel-otherlangs: english
## Fonts
mainfont: PT Serif
romanfont: PT Serif
sansfont: PT Sans
monofont: PT Mono
mainfontoptions: Ligatures=TeX
romanfontoptions: Ligatures=TeX
sansfontoptions: Ligatures=TeX,Scale=MatchLowercase
monofontoptions: Scale=MatchLowercase,Scale=0.9
## Biblatex
biblatex: true
biblio-style: "gost-numeric"
biblatexoptions:
  - parentracker=true
  - backend=biber
  - hyperref=auto
  - language=auto
  - autolang=other*
  - citestyle=gost-numeric
## Pandoc-crossref LaTeX customization
figureTitle: "Рис."
tableTitle: "Таблица"
listingTitle: "Листинг"
lofTitle: "Список иллюстраций"
lotTitle: "Список таблиц"
lolTitle: "Листинги"
## Misc options
indent: true
header-includes:
  - \usepackage{indentfirst}
  - \usepackage{float} # keep figures where there are in the text
  - \floatplacement{figure}{H} # keep figures where there are in the text
---

# Цель работы

Освоить процедуры компиляции и сборки программ, написанных на ассемблере NASM.

# Выполнение лабораторной работы
## Программа Hello world!

Создадим каталог для работы с программами на языке ассемблера NASM, перейдём в созданный каталог (рис.[@fig:001])

![Создание каталога](image/Рис2.1.png){#fig:001 width=100%}

Создадим текстовый файл с именем hello.asm, откроем это файл при помощи текстового редактора gedit (рис. [@fig:002]).

![Создание текстового файла](image/Рис2.2.png){#fig:002 width=100%}

Изменим содержимое текстового файла (рис.[@fig:003]

![Внесенте изменений в файл](image/Рис2.3.png){#fig:003 width=100%}

## Транслятор NASM

Проведём компиляцию файла hello.asm и проверим, что объектный код был записан правильно и файл hello.o был создан (рис. [@fig:004]).

![Компиляция файла](image/Рис2.4.png){#fig:004 width=100%}

## Расширенный синтаксис командной строки NASM

Cкомпилируем исходный файл hello.asm в obj.o  при этом формат выходного файла
будет elf, и в него будут включены символы для отладки (опция -g), кроме того, будет создан
файл листинга list.lst (опция -l). Проверим создание файлов (рис.[@fig:005]).

![Компиляция файла](image/Рис2.5.png){#fig:005 width=100%}

Чтобы узнать более подробную информацию введём команду man nasm. Для получения списка форматов объектного файла nasm -hf (рис.[@fig:006]-[@fig:007])

![Список команд](image/Рис2.7.png){#fig:006 width=100%}

![Подробная информация](image/Рис2.6.png){#fig:007 width=100%}

## Компоновщик LD

Передадим объектный файл hello.o на обработку компановщику, а также проверим, что исполняемый файл hello был создан (рис.[@fig:008]).

![Компановка файла hello.o](image/Рис2.8.png){#fig:008 width=100%}

Передадим объектный файл obj.o на обработку компановщику, а также проверим, что исполняемый файл main был создан (рис.[@fig:009]).

![Компановка файла obj.o](image/Рис2.9.png){#fig:009 width=100%}

Узнаем формат командной строки (рис.[@fig:010]).

![Формат командной строки](image/Рис2.10.png){#fig:010 width=100%}

Просматриваем более подробную информацию man ld (рис.[@fig:011]

![Подробная информация](image/Рис2.11.png){#fig:011 width=100%}

## Запуск исполняемого файла
Запускаем созданный исполняемый файл, находящийся в текущем каталоге (рис.[@fig:012])

![Запуск исполняемого файла](image/Рис2.12.png){#fig:012 width=100%}


# Задание для самостоятельной работы

1. Создаём копию файла hello.asm с именем lab4.asm в каталоге ~/work/arch-pc/lab04 (рис.[@fig:013])

![Создание копии](image/Рис3.1.png){#fig:013 width=100%}

2. Вносим изменения в файл lab4.asm при помощи текстового редактора gedit, чтобы вместо Hello world! на экран выводилась строка с моими фамилией и именем (рис.[@fig:014]).

![Создание копии](image/Рис3.2.png){#fig:014 width=100%}

3. Оттранслируем полученный текст программы lab4.asm в объектный файл. Выполним компоновку объектного файла и запустим получившийся исполняемый файл (рис.[@fig:015]).

![Запуск исполняемого файла](image/Рис3.3.png){#fig:015 width=100%}


4. Скопируйте файлы hello.asm и lab4.asm в Ваш локальный репозиторий в ката-
лог ~/work/study/2023-2024/"Архитектура компьютера"/arch-pc/labs/lab04/ (рис.[@fig:016]).

![Копирование файлов в локальный репозиторий](image/Рис3.5.png){#fig:016 width=100%}

Выгрузим файлы на GitHub (рис.[@fig:017]-[@fig:018]).

![Загрузка файлов на Github 1](image/Рис3.6.png){#fig:017 width=100%}

![Загрузка файлов на Github 2](image/Рис3.7.png){#fig:018 width=100%}

Проверим наличие файлов на Github (рис.[@fig:019]).

![Github](image/Рис3.8.png){#fig:019 width=100%}

# Выводы

При выполнении данной лабораторной работы мною были освоены процедуры компиляции и сборки программ, написанных на ассемблере NASM.


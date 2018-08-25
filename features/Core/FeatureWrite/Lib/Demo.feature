﻿# language: ru
@IgnoreOnCIMainBuild
#Эти две строки (encoding) и (language) не являются обязательными

#Далее идёт заголовок фичи
#В нём указывается название функциональности
#Затем роль (как кто), чего я хочу и для чего это надо
#Например:

Функционал: Исследование языка Gherkin
	Как Правильный разработчик
	Я Хочу Разобраться в том, какие синтаксические конструкции есть в языке Gherkin
	Чтобы Использовать полученные знания на практике

#символ решётки в начале строки означает комментарий
#символ @ означает тег, чтобы можно было тегировать (помечать) сценарии или фичи, например:
@IgnoreOnCIMainBuild
#это может пригодиться потом, например для отбора только некоторых фич из каталога, если их там много

#Далее идёт необязательная секция "Контекст", там обычно описывается что нам дано перед выполнением сценариев

Контекст:
	Дано У меня есть текстовый редактор Atom

#Далее идут сценарии. Они бывают двух видов. Это "Сценарий" и "Структура сценария"

Сценарий: Работа с параметрами demo
	Когда Я обрамляю слово кавычками "Тест"
	Тогда Я получаю слово обрамленное кавычками как параметр процедуры
	И эта процедура будет называться "ЯОбрамляюСловоКавычками(Парам01)"

Структура сценария: Объединение нескольких похожих сценариев в одном
	Когда Я обрамляю переменную угловыми скобками <Тест1>
	И     Я обрамляю переменную угловыми скобками <Тест2>
	Тогда мне необходимо указать ключевое слово "Примеры" и таблицу значений параметров

Примеры:
	|   Тест1          |	Тест2           |
	|	Проба           |	Проба           |
	|	08.04.1981     |	11.09.1983    |
	|	-150               |	'Строка'       |

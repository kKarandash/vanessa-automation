﻿# language: ru

@IgnoreOnCIMainBuild
@tree
@ExportScenarios


Функционал: Загрузить фичу в vanessa-behavior
	Как Разработчик
	Я Хочу чтобы чтобы у меня был сценарий для открытия Vanessa-Behavior в TestClient
	Чтобы я мог его переиспользовать
 

Сценарий: Я открываю VanessaBehavior в режиме TestClient

		Дано в Константе "ПутьКVanessaBehavior" указан существующий файл
		Дано Я запускаю сценарий открытия TestClient или подключаю уже существующий
		Когда В панели разделов я выбираю "Основная"
		И В панели функций я выбираю "Открыть vanessa behavior"
		И я фиксирую текущую форму
		Тогда открылось окно "* Vanessa Automation"
		И В открытой форме я перехожу к закладке с заголовком "Сервис"
		И В открытой форме я изменяю флаг с заголовком "Проверка работы Vanessa-Automation в режиме test client"
		И В открытой форме я перехожу к закладке с заголовком "Служебная"
		И В поле с именем "КаталогИнструментовСлужебный" я указываю значение реквизита объекта обработки "КаталогИнструментов"
		И В поле с именем "ДиапазонПортовTestclient" я указываю значение реквизита объекта обработки "ДиапазонПортовTestclient"
		И я отменяю фиксирование формы


Сценарий: Я открываю VanessaBehavior в режиме TestClient со стандартной библиотекой не подключая TestClient

		Дано в Константе "ПутьКVanessaBehavior" указан существующий файл
		Когда В панели разделов я выбираю "Основная"
		И В панели функций я выбираю "Открыть vanessa behavior"
		Тогда открылось окно "* Vanessa Automation"
		И я фиксирую текущую форму
		И В открытой форме я перехожу к закладке с заголовком "Сервис"
		И В открытой форме я изменяю флаг с заголовком "Проверка работы Vanessa-Automation в режиме test client"
		И В открытой форме я перехожу к закладке с заголовком "Служебная"
		И В поле с именем "КаталогИнструментовСлужебный" я указываю значение реквизита объекта обработки "КаталогИнструментов"
		И В поле с именем "ДиапазонПортовTestclient" я указываю значение реквизита объекта обработки "ДиапазонПортовTestclient"
		И В поле "Таймаут запуска TestClient" я ввожу текст "60"
		И В открытой форме я перехожу к закладке с заголовком "Библиотеки"
		Если поле с именем "ВерсияПоставки" имеет значение "standart" тогда
			И В открытой форме я нажимаю на кнопку с именем "КаталогиБиблиотекДобавить"
			И я добавляю в библиотеки строку с стандартной библиотекой "Libraries"
		И я отменяю фиксирование формы

		
		
		
Сценарий: Я открываю VanessaBehavior в режиме TestClient со стандартной библиотекой

		Дано в Константе "ПутьКVanessaBehavior" указан существующий файл
		Дано Я запускаю сценарий открытия TestClient или подключаю уже существующий
		Когда В панели разделов я выбираю "Основная"
		И В панели функций я выбираю "Открыть vanessa behavior"
		Тогда открылось окно "* Vanessa Automation"
		И я фиксирую текущую форму
		И В открытой форме я перехожу к закладке с заголовком "Сервис"
		И В открытой форме я изменяю флаг с заголовком "Проверка работы Vanessa-Automation в режиме test client"
		И я перехожу к закладке "Отчет о запуске сценариев"
		И В открытой форме я перехожу к закладке с заголовком "Служебная"
		И В поле с именем "КаталогИнструментовСлужебный" я указываю значение реквизита объекта обработки "КаталогИнструментов"
		И я перехожу к закладке "Сервис"
		И я перехожу к закладке "Основные"
		И В поле с именем "ДиапазонПортовTestclient" я указываю значение реквизита объекта обработки "ДиапазонПортовTestclient"
		И В поле "Таймаут запуска TestClient" я ввожу текст "60"
		И В открытой форме я перехожу к закладке с заголовком "Библиотеки"
		Если поле с именем "ВерсияПоставки" имеет значение "standart" тогда
			И В открытой форме я нажимаю на кнопку с именем "КаталогиБиблиотекДобавить"
			И я добавляю в библиотеки строку с стандартной библиотекой "Libraries"
		И я отменяю фиксирование формы

		
Сценарий: Я открываю VanessaBehavior в режиме TestClient со стандартной библиотекой для запуска в раннере

		Дано в Константе "ПутьКVanessaBehavior" указан существующий файл
		Когда В панели разделов я выбираю "Основная"
		И В панели функций я выбираю "Открыть vanessa behavior"
		Тогда открылось окно "* Vanessa Automation"
		И я фиксирую текущую форму
		И В открытой форме я перехожу к закладке с заголовком "Сервис"
		И В открытой форме я изменяю флаг с заголовком "Проверка работы Vanessa-Automation в режиме test client"
		И В открытой форме я перехожу к закладке с заголовком "Служебная"
		И В поле с именем "КаталогИнструментовСлужебный" я указываю значение реквизита объекта обработки "КаталогИнструментов"
		И В поле с именем "ДиапазонПортовTestclient" я указываю значение реквизита объекта обработки "ДиапазонПортовTestclient"
		И В поле "Таймаут запуска TestClient" я ввожу текст "60"
		И я снимаю флаг "Режим самотестирования"
		#И я нажимаю на кнопку "Сохранить настройки клиент"
		И В открытой форме я перехожу к закладке с заголовком "Библиотеки"
		Если поле с именем "ВерсияПоставки" имеет значение "standart" тогда
			И В открытой форме я нажимаю на кнопку с именем "КаталогиБиблиотекДобавить"
			И я добавляю в библиотеки строку с стандартной библиотекой "Libraries"
		И я отменяю фиксирование формы

				
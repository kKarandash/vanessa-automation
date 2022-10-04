﻿# language: ru

@lessons

Функционал: Интерактивная справка. Краткий обзор доступных инструментов при работе с редактором

Сценарий: Краткий обзор доступных инструментов при работе с редактором

	* Привет! В этом уроке я расскажу тебе про то, какие дополнительные инструменты доступны при разработке сценария тестирования. Давай откроем второй экземпляр Ванессы в режиме обучения.
		И я открываю Vanessa Automation в режиме обучения
		
	
	* Отлично. Смотри. Дополнительные инструменты находятся тут.
		И я запоминаю ID элемента формы Vanessa Automation с именем "ГруппаVanessaEditorИнструменты" в переменную "Id_ГруппаVanessaEditorИнструменты"
		И Я делаю подсветку кнопки VA с именем "ГруппаVanessaEditorИнструменты" и переход к ней "Дополнительные инструменты" 
		И я перемещаю мышь в центр экрана
	
	* Пункт меню - Библиотека шагов. Он открывает новое окно в котором содержится список всех доступных в данный момент шагов для написания сценариев.
		И Я делаю подсветку элемента формы VA по имени и клик по нему "VanessaEditorДобавитьИзвестныйШаг" "Библиотека шагов"

	* Более подробную информацию о библиотеке шагов смотри в соответствующем уроке посвященном библиотеке шагов.
	
	* Пока закроем это окно и движимся дальше

		И я делаю клик по элементу формы VA UI Automation 'ЭтотСеанс' 'ЗакрытьФормуИзвестныхШагов' UI Automation
		И пауза 1
		
	* Следующим идёт пункт Исследователь формы. Этот инструмент позволяет получить подробную информацию по состоянию формы клиента тестирования, о том какие есть пол^я в его формах и прочую информацию.
		И я делаю клик в поле "$Id_ГруппаVanessaEditorИнструменты$" UI Automation
		И пауза 1
		И Я делаю подсветку элемента VA "VanessaEditorИсследовательФормы" "Исследователь формы" и перемещаю курсор
		
	* Мы подробнее поговорим о нём в соответствующем уроке.
	
	* Далее идут пункты Запомнить состояние формы клиента тестирования и Забыть состояние формы клиента тестирования
		И Я делаю подсветку элемента VA "VanessaEditorЗапомнитьСостояниеФормыTestClient" "Запомнить состояние формы" и перемещаю курсор
		И Я делаю подсветку элемента VA "VanessaEditorЗабытьСостояниеФормыTestClient" "Забыть состояние формы" и перемещаю курсор

	* Эти опции используются когда нужно понять что изменилось в форме за определенный промежуток времени.
	* Об этом приёме будет рассказано в блоке про приёмы работы при написании тестов.

	* Далее идут Сохранить состояние текущей формы клиента тестирования в файл и Сохранить состояние всех форм клиента тестирования в файл
		И Я делаю подсветку элемента VA "VanessaEditorСохранитьСостояниеТекущейФормыКлиентаТестированияВФайл" "Сохранить состояние формы" и перемещаю курсор
		И Я делаю подсветку элемента VA "VanessaEditorСохранитьСостояниеВсехФормКлиентаТестированияВФайл" "Сохранить состояние всех форм" и перемещаю курсор

	* Эти команды позволяет сохранить данные о состоянии форм клиента тестирования в файл в формате mxl.
	* Мы будем говорить об этой возможности в разделе Приёмы работы - расследование причин падения тестов.

	* Далее идут четыре команды
	* Получить состояние всей формы в виде шагов
		И Я делаю подсветку элемента VA "VanessaEditorПолучитьИзмененияФормыGherkin" "Состояние всей формы в виде шагов" и перемещаю курсор
	* Получить состояние текущего элемента формы в виде шагов
		И Я делаю подсветку элемента VA "VanessaEditorПолучитьСостояниеТекущегоЭлементаФормы" "Получить состояние текущего элемента" и перемещаю курсор
	* Получить проверку сообщений пользователя в виде шагов
		И Я делаю подсветку элемента VA "VanessaEditorДобавитьПроверкуСообщенийПользователя" "Получить проверку сообщений пользователя" и перемещаю курсор
	* Получить шаг открытия навигационной ссылки текущего окна
		И Я делаю подсветку элемента VA "VanessaEditorПолучитьШагОткрытияНавигационнойСсылкиТекущегоОкна" "Получить шаг для открытия навигационной ссылки" и перемещаю курсор
	* Эти команды позволяют быстро получить проверочные шаги для текущей формы клиента тестирования.	
	* Об этом мы будем говорить подробнее в разделе "Как проверить состояние формы"

	* Далее идёт команда Показать/Скрыть табло переменных
		И Я делаю подсветку элемента формы VA по имени и клик по нему "VanessaEditorПоказатьСкрытьТаблоПеременных" "Табло переменных"

	* Она управляет видимостью панели, позволяющей посмотреть текущее состояние переменных и отредактировать их, если нужно.
		И я делаю подсветку у табло переменных VA "Табло переменных"
			

	* Мы поговорим об этом подробнее в разделе посвященному работе с табло переменных.
		И я делаю клик по элементу формы VA UI Automation 'ЭтотСеанс' 'ТаблоПеременныхЗакрытьТаблоПеременных' UI Automation

		И пауза 1

	* Далее идёт команда Подготовка и загрузка данных
		И я запоминаю ID элемента формы Vanessa Automation с именем "ГруппаVanessaEditorИнструменты" в переменную "Id_ГруппаVanessaEditorИнструменты"
		И я делаю клик в поле "$Id_ГруппаVanessaEditorИнструменты$" UI Automation
		И пауза 1
		И Я делаю подсветку элемента формы VA по имени и клик по нему "VanessaEditorОткрытьИнструментПодготовкаИЗагрузкаДанных" "Подготовка и загрузка данных"

	* Данный инструмент управляет созданием тестовых данных для работы сценариев.
	* Мы поговорим о нём подробнее в разделе посвященном созданию тестовых данных.
		И я делаю клик по элементу формы VA UI Automation 'ЭтотСеанс' 'MetadataListCloseForm' UI Automation
		И пауза 1


	* Далее идет команда Сравнить с другим фича файлом
		И я запоминаю ID элемента формы Vanessa Automation с именем "ГруппаVanessaEditorИнструменты" в переменную "Id_ГруппаVanessaEditorИнструменты"
		И я делаю клик в поле "$Id_ГруппаVanessaEditorИнструменты$" UI Automation
		И пауза 1
		И Я делаю подсветку элемента VA "VanessaEditorСравнитьСДругимФичаФайлом" "Сравнить с другим фича файлом" и перемещаю курсор
	* Она позволяет показать в редакторе сравнение текста данного фича файла с другим файлом. Это может быть полезно, когда нужно быстро посмотреть изменения относительно другого файла.


	* Далее идет команда Показать отчет Allure
		И Я делаю подсветку элемента VA "VanessaEditorПоказатьОтчетAllure" "Показать отчет Allure" и перемещаю курсор
	* Это нужно, когда требуется посмотреть результат локального запуска тестов в виде отчета Allure.
	* Мы поговорим об этом в разделе, посвященному отчету Allure.

	* Далее идет команда - Озвучить текущую строку 
		И Я делаю подсветку элемента VA "VanessaEditorОзвучитьТекущуюСтрокуРедактора" "Озвучить текущую строку" и перемещаю курсор
	* Она часто используется при создании авто документации в формате видео файлов.
	* Об этом мы поговорим в разделе посвященному созданию автоинструкций.

	* Далее идет команда - Получить координаты области для скриншота.
		И Я делаю подсветку элемента VA "VanessaEditorПолучитьКоординатыОбласти" "Получить координаты области для скриншота" и перемещаю курсор
	* Эта команда также используется при создании автоинструкций.

	* И нам осталось рассмотреть ещё одну команду - Настройки работы с браузером.
		И Я делаю подсветку элемента VA "ФормаНастройкиРаботыСБраузером" "Настройки работы с браузером" и перемещаю курсор
	* Эта команда используется тогда, когда используются шаги для прямой работы с браузером и произвольными сайтами.

	
	* На этом всё, переходи к следующему уроку интерактивной справки.

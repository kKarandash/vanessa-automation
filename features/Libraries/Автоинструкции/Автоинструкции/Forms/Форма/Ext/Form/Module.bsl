﻿
///////////////////////////////////////////////////
//Служебные функции и процедуры
///////////////////////////////////////////////////

&НаКлиенте
// контекст фреймворка Vanessa-Automation
Перем Ванесса;
 
&НаКлиенте
// Структура, в которой хранится состояние сценария между выполнением шагов. Очищается перед выполнением каждого сценария.
Перем Контекст Экспорт;
 
&НаКлиенте
// Структура, в которой можно хранить служебные данные между запусками сценариев. Существует, пока открыта форма Vanessa-Automation.
Перем КонтекстСохраняемый Экспорт;

// Делает отключение модуля
&НаКлиенте
Функция ОтключениеМодуля() Экспорт

	Ванесса = Неопределено;
	Контекст = Неопределено;
	КонтекстСохраняемый = Неопределено;

КонецФункции

&НаКлиенте
// Функция экспортирует список шагов, которые реализованы в данной внешней обработке.
Функция ПолучитьСписокТестов(КонтекстФреймворкаBDD) Экспорт
	Ванесса = КонтекстФреймворкаBDD;
	
	ВсеТесты = Новый Массив;
	
	Ванесса.ДобавитьШагВМассивТестов(
		ВсеТесты, 
		"ЯДобавляюПроизвольныйТекстВАвтоинструкцию(Парам)", 
		"ЯДобавляюПроизвольныйТекстВАвтоинструкцию", 
		"И я добавляю произвольный текст в автоинструкцию " + Символы.ПС +
		" |' <a id=""header"" /> '|" + Символы.ПС +
		" |''|" + Символы.ПС +
		" |' <a id=""Chapter 1"" /> '|" + Символы.ПС +
		" |''|" + Символы.ПС +
		" |' <a id=""Chapter 2"" /> '|" + Символы.ПС +
		" |''|" + Символы.ПС +
		" |' ## Оглавление '|" + Символы.ПС +
		" |''|" + Символы.ПС +
		" |' * <a href=""#header"">Перейти к оглавлению</a> '|" + Символы.ПС +
		" |'   * <a href=""#Chapter 1"">Глава 1</a> '|" + Символы.ПС +
		" |'     * <a href=""#Chapter 2"">Глава 2</a> '|", 
		"Позволяет добавить произвольный текст в автоинструкцию без скриншота шага. 
		|Например в MD этот шаг используется для добавления оглавления, и его наполнения. В MD этот шаг не будет автонумерован.", 
		"Прочее.Автоинструкции.ТекстовыеИнструкции.Универсальные");
	
	Ванесса.ДобавитьШагВМассивТестов(
		ВсеТесты, 
		"ЯДобавляюИзображениеВАвтоинструкцию(Парам)", 
		"ЯДобавляюИзображениеВАвтоинструкцию", 
		"И я добавляю изображение в автоинструкцию " + Символы.ПС + 
		" |'АлтернативныйТекст'|'Изображение1'|" + Символы.ПС + 
		" |'Путь'|'https://1cbn.ru/images/trading_scheme.png'|" + Символы.ПС + 
		" |'Подсказка'|'Мое изображение №1'|" + Символы.ПС + 
		" |'Ссылка'|'https://1cbn.ru'|" + Символы.ПС, 
		"Добавление изображения с гипрссылкой в автоинструкцию HTML или MD. Путь может быть задан 
		|как относительный ""../trading_scheme.png"", так и абсолютный ""https://1cbn.ru/images/trading_scheme.png"" ", 
		"Прочее.Автоинструкции.ТекстовыеИнструкции.Универсальные");
	
	Ванесса.ДобавитьШагВМассивТестов(
		ВсеТесты,
		"ЯДобавляюРазрывСтраницыВАвтоинструкцию()",
		"ЯДобавляюРазрывСтраницыВАвтоинструкцию",
		"И я добавляю разрыв страницы в автоинструкцию",
		"Вставляет разрыв страницы в инструкции MD и HTML",
		"Прочее.Автоинструкции.ТекстовыеИнструкции.Универсальные");
	
	Ванесса.ДобавитьШагВМассивТестов(
		ВсеТесты,
		"ЯДобавляюЗаголовокВАвтоинструкцию(ТабПарам)",
		"ЯДобавляюЗаголовокВАвтоинструкцию",
		"И я добавляю заголовок в автоинструкцию " + Символы.ПС +
		" |'Заголовок'|'Мой заголовок 2'|" + Символы.ПС +
		" |'Уровень  '|'2'|",
		"Добавляет заголовок в инструкции MD и HTML. Уровень заголовка влияет на условное офомление заголовка. 
		|Доступные значения уровня: 1; 2; 3",
		"Прочее.Автоинструкции.ТекстовыеИнструкции.Универсальные");
	
	Ванесса.ДобавитьШагВМассивТестов(
		ВсеТесты,
		"ЯДобавляюЯкорьВАвтоинструкцию(ТабПарам)",
		"ЯДобавляюЯкорьВАвтоинструкцию",
		"И я добавляю якорь в автоинструкцию" + Символы.ПС +
		" |'header'|",
		"Добавляет якорь в автоинструкцию с указанным id якоря",
		"Прочее.Автоинструкции.ТекстовыеИнструкции.Универсальные");
	
	Ванесса.ДобавитьШагВМассивТестов(
		ВсеТесты,
		"ЯДобавляюГиперссылкуВАвтоинструкцию(ТабПарам)",
		"ЯДобавляюГиперссылкуВАвтоинструкцию",
		"И я добавляю гиперссылку в автоинструкцию" + Символы.ПС +
		"	|'Ссылка'|'#header'|" + Символы.ПС +
		"	|'Текст'|'Оглавление'|",
		"Добавляет гиперссылку в автоинструкцию, например на ранее установленный якорь в документе (оглавление).",
		"Прочее.Автоинструкции.ТекстовыеИнструкции.Универсальные");
	
	Ванесса.ДобавитьШагВМассивТестов(
		ВсеТесты,
		"ЯДобавляюГоризонтальнуюЛиниюВАвтоинструкцию()",
		"ЯДобавляюГоризонтальнуюЛиниюВАвтоинструкцию",
		"И я добавляю горизонтальную линию в автоинструкцию",
		"Добавляет горизонтальную линию разрыва в автоинструкцию",
		"Прочее.Автоинструкции.ТекстовыеИнструкции.Универсальные");
	
	Ванесса.ДобавитьШагВМассивТестов(
		ВсеТесты,
		"ЯДобавляюСтилиВАвтоинструкцию(ТабПарам)",
		"ЯДобавляюСтилиВАвтоинструкцию",
		"И я добавляю стили в автоинструкцию" + Символы.ПС +
		"	|'h1{font-size: 40px; color: red} '|" + Символы.ПС +
		"	|'h2{font-size: 35px; align: center}'|" + Символы.ПС +
		"	|'p{font-size: 30px}'|",
		"Заменяет стили всего документа HTML автоинструкции. 
		|Шаг добавляется в любом месте инструкции, ограничений нет.
		|Параметр можно указать как одной строкой, так и многострочно.",
		"Прочее.Автоинструкции.ТекстовыеИнструкции.HTML");
	
	Ванесса.ДобавитьШагВМассивТестов(
		ВсеТесты,
		"ЯДобавляюНумерованноеОглавлениеВАвтоинструкцию(ТабПарам)",
		"ЯДобавляюНумерованноеОглавлениеВАвтоинструкцию",
		"И я добавляю нумерованное оглавление в автоинструкцию" + Символы.ПС + 
			"|'ID якоря' |'Текст  '|'ID якоря родителя'|" + Символы.ПС + 
			"|'#chapter1'|'Глава 1'|'                 '|" + Символы.ПС + 
			"|'#chapter2'|'Глава 2'|'#chapter1        '|",
		"Добавляет секцию содержания с нумерацией в автоинструкцию.",
		"Прочее.Автоинструкции.ТекстовыеИнструкции.HTML");
	
	Ванесса.ДобавитьШагВМассивТестов(
		ВсеТесты,
		"ЯДобавляюНеНумерованноеОглавлениеВАвтоинструкцию(ТабПарам)",
		"ЯДобавляюНеНумерованноеОглавлениеВАвтоинструкцию",
		"И я добавляю не нумерованное оглавление в автоинструкцию" + Символы.ПС + 
			"|'ID якоря' |'Текст  '|'ID якоря родителя'|" + Символы.ПС + 
			"|'#chapter1'|'Глава 1'|'                 '|" + Символы.ПС + 
			"|'#chapter2'|'Глава 2'|'#chapter1        '|",
		"Добавляет секцию содержания без нумерации в автоинструкцию.",
		"Прочее.Автоинструкции.ТекстовыеИнструкции.HTML");
	
	Ванесса.ДобавитьШагВМассивТестов(ВсеТесты, "ЯВставляюИзображениеИзФайлаВАвтоинструкцию(Парам01)", 
		"ЯВставляюИзображениеИзФайлаВАвтоинструкцию", 
		"И я вставляю изображение из файла в автоинструкцию ""КартинкаСписокСправочник1""" + Символы.ПС, 
		"Позволяет вставить изображение из файла в автоинструкцию. 
		|Поиск по имени файла производится в каталоге проекта в папке ""Файлы"".", 
		"Прочее.Автоинструкции.Вставка изображения из файла");
	
	Возврат ВсеТесты;
КонецФункции

&НаСервере
// Служебная функция.
Функция ПолучитьМакетСервер(ИмяМакета)
	ОбъектСервер = РеквизитФормыВЗначение("Объект");
	Возврат ОбъектСервер.ПолучитьМакет(ИмяМакета);
КонецФункции

&НаКлиенте
// Служебная функция для подключения библиотеки создания fixtures.
Функция ПолучитьМакетОбработки(ИмяМакета) Экспорт
	Возврат ПолучитьМакетСервер(ИмяМакета);
КонецФункции



///////////////////////////////////////////////////
//Работа со сценариями
///////////////////////////////////////////////////

&НаКлиенте
// Функция выполняется перед началом каждого сценария
Функция ПередНачаломСценария() Экспорт
	
КонецФункции

&НаКлиенте
// Функция выполняется перед окончанием каждого сценария
Функция ПередОкончаниемСценария() Экспорт
	
КонецФункции



///////////////////////////////////////////////////
//Реализация шагов
///////////////////////////////////////////////////

&НаКлиенте
//И я добавляю произвольный текст в автоинструкцию
//@ЯДобавляюПроизвольныйТекстВАвтоинструкцию()
Функция ЯДобавляюПроизвольныйТекстВАвтоинструкцию(Парам) Экспорт
	
	Если ТипЗнч(Парам) <> Тип("Массив") Или (ТипЗнч(Парам) = Тип("Массив") И Парам.Количество()) = 0 Тогда
		
		ВызватьИсключение НСтр("ru = 'Параметр текст не заполнен'");
		
	КонецЕсли
	
КонецФункции

&НаКлиенте
//И я добавляю изображение в автоинструкцию
//@ЯДобавляюИзображениеВАвтоинструкцию()
Функция ЯДобавляюИзображениеВАвтоинструкцию(Парам) Экспорт
	
	Если ТипЗнч(Парам) <> Тип("Массив") Или (ТипЗнч(Парам) = Тип("Массив") И Парам.Количество()) = 0 Тогда
		
		ВызватьИсключение НСтр("ru = 'Параметры не заполнен'");
		
	КонецЕсли;
	
	ПринятыеПараметры = Парам;
	
	// СоздаватьИнструкциюMarkdown
	Если Ванесса.Объект.СоздаватьИнструкциюMarkdown И Не Ванесса.Объект.СоздаватьИнструкциюHTML Тогда
		
		ШаблонСтрокиMD = "[![%1](%2 ""%3"")](%4)";
		// добавить проверки значений
		ПроизвольнаяСтрока = Ванесса._СтрШаблон(
			ШаблонСтрокиMD, 
			ПринятыеПараметры[0].Кол2, 
			ПринятыеПараметры[1].Кол2, 
			ПринятыеПараметры[2].Кол2, 
			ПринятыеПараметры[3].Кол2);
		
		Парам.Очистить();
		Парам.Добавить(Новый Структура("Кол1", ПроизвольнаяСтрока));
		
	// СоздаватьИнструкциюHTML
	ИначеЕсли Не Ванесса.Объект.СоздаватьИнструкциюMarkdown И Ванесса.Объект.СоздаватьИнструкциюHTML Тогда
		
		ДокументHTML = Новый ДокументHTML;
		УзелBODY = ДокументHTML.СоздатьЭлемент("body");
		ДокументHTML.ЭлементДокумента.ДобавитьДочерний(УзелBODY);
		
		УзелСсылка = ДокументHTML.СоздатьЭлемент("a");
		УзелСсылка.УстановитьАтрибут("href", ПринятыеПараметры[3].Кол2);
		УзелСсылка.УстановитьАтрибут("target", "_blank");
		
		УзелКартинка = ДокументHTML.СоздатьЭлемент("Img");
		УзелКартинка.УстановитьАтрибут("src", ПринятыеПараметры[1].Кол2);
		УзелКартинка.УстановитьАтрибут("alt", ПринятыеПараметры[0].Кол2);
		УзелКартинка.УстановитьАтрибут("title", ПринятыеПараметры[2].Кол2);
		УзелСсылка.ДобавитьДочерний(УзелКартинка);
		
		УзелBODY.ДобавитьДочерний(УзелСсылка);
		
		ЗаполнитьПереданныеВШагТаблицы(ДокументHTML);
		
	Иначе
		ВызватьИсключение "Не реализовано.";
	КонецЕсли;
	
КонецФункции

&НаКлиенте
//И я добавляю разрыв страницы в автоинструкцию
//@ЯДобавляюРазрывСтраницыВАвтоинструкцию()
Функция ЯДобавляюРазрывСтраницыВАвтоинструкцию() Экспорт
	
	// СоздаватьИнструкциюMarkdown
	Если Ванесса.Объект.СоздаватьИнструкциюMarkdown И Не Ванесса.Объект.СоздаватьИнструкциюHTML Тогда
		
		ЗначениеПараметра = "<div style=""page-break-after: always;""></div>";
		
	// СоздаватьИнструкциюHTML
	ИначеЕсли Не Ванесса.Объект.СоздаватьИнструкциюMarkdown И Ванесса.Объект.СоздаватьИнструкциюHTML Тогда
		
		ДокументHTML = Новый ДокументHTML;
		УзелBODY = ДокументHTML.СоздатьЭлемент("body");
		ДокументHTML.ЭлементДокумента.ДобавитьДочерний(УзелBODY);
		
		НовыйУзел = ДокументHTML.СоздатьЭлемент("div");
		НовыйУзел.УстановитьАтрибут("style", "page-break-after: always");
		УзелBODY.ДобавитьДочерний(НовыйУзел);
		
		ЗначениеПараметра = ДокументHTML;
		
	Иначе
		ВызватьИсключение "Не реализовано.";
	КонецЕсли;
	
	Парам = Новый Структура;
	Парам.Вставить("Кол1", ЗначениеПараметра);
	
	МассивПараметров = Новый Массив;
	МассивПараметров.Добавить(Парам);
	
	ПереданныеВШагТаблицы = Новый Массив;
	ПереданныеВШагТаблицы.Добавить(МассивПараметров);
	
	ТекущийШаг = Ванесса.ПолучитьСтруктуруТекущегоШагаИзМассивСценариевДляВыполнения();
	ТекущийШаг.Вставить("ПереданныеВШагТаблицы", ПереданныеВШагТаблицы);
	
КонецФункции

&НаКлиенте
//И я добавляю заголовок в автоинструкцию
//@ЯДобавляюЗаголовокВАвтоинструкцию(ТабПарам)
Функция ЯДобавляюЗаголовокВАвтоинструкцию(ТабПарам) Экспорт
	
	Если ТипЗнч(ТабПарам) <> Тип("Массив") Или (ТипЗнч(ТабПарам) = Тип("Массив") И ТабПарам.Количество() = 0) Тогда
		
		ВызватьИсключение НСтр("ru = 'Параметры не заполнены'");
		
	КонецЕсли;
	
	ПараметрЗаголовок = ТабПарам[0].Кол2;
	Если ПустаяСтрока(ПараметрЗаголовок) Тогда
			
			ВызватьИсключение НСтр("ru = 'Параметр ""Заголовок"" не заполнен'");
			
	КонецЕсли;
	
	ПараметрУровень = Число(ТабПарам[1].Кол2);
	Если ПараметрУровень < 1 Или ПараметрУровень > 3 Тогда
		
		ВызватьИсключение НСтр("ru = 'Параметр ""Уровень"" не заполнен'");
		
	КонецЕсли;
	
	// СоздаватьИнструкциюMarkdown
	Если Ванесса.Объект.СоздаватьИнструкциюMarkdown И Не Ванесса.Объект.СоздаватьИнструкциюHTML Тогда
		
		ШаблонСтрокиMD = "%1 %2";
		УровеньЗаголовка = "";
		Для Уровень = 1 По ПараметрУровень Цикл
			УровеньЗаголовка = УровеньЗаголовка + "#";
		КонецЦикла;
		ЗаголовокАвтоинструкции = Ванесса._СтрШаблон(ШаблонСтрокиMD, УровеньЗаголовка, ПараметрЗаголовок);
		
	// СоздаватьИнструкциюHTML
	ИначеЕсли Не Ванесса.Объект.СоздаватьИнструкциюMarkdown И Ванесса.Объект.СоздаватьИнструкциюHTML Тогда
		
		ШаблонИмяЭлемента = "h%1";
		ИмяЭлемента = Ванесса._СтрШаблон(ШаблонИмяЭлемента, ПараметрУровень);
		
		ДокументHTML = Новый ДокументHTML;
		УзелBODY = ДокументHTML.СоздатьЭлемент("body");
		ДокументHTML.ЭлементДокумента.ДобавитьДочерний(УзелBODY);
		
		НовыйУзел = ДокументHTML.СоздатьЭлемент(ИмяЭлемента);
		НовыйУзел.ТекстовоеСодержимое = ПараметрЗаголовок;
		УзелBODY.ДобавитьДочерний(НовыйУзел);
		
		ЗаголовокАвтоинструкции = ДокументHTML;
		
	Иначе
		ВызватьИсключение "Не реализовано.";
	КонецЕсли;
	
	ЗаполнитьПереданныеВШагТаблицы(ЗаголовокАвтоинструкции);
	
КонецФункции

&НаКлиенте
//И я добавляю якорь в автоинструкцию
//@ЯДобавляюЯкорьВАвтоинструкцию(ТабПарам)
Функция ЯДобавляюЯкорьВАвтоинструкцию(ТабПарам) Экспорт
	
	Если ТипЗнч(ТабПарам) <> Тип("Массив") 
		Или (ТипЗнч(ТабПарам) = Тип("Массив") И ТабПарам.Количество() = 0) 
		Или (ТипЗнч(ТабПарам) = Тип("Массив") И ПустаяСтрока(ТабПарам[0])) Тогда
		
		ВызватьИсключение НСтр("ru = 'Параметр не заполнен'");
		
	КонецЕсли;
	
	ПараметрIDЯкоря = ТабПарам[0].Кол1;
	
	// СоздаватьИнструкциюMarkdown
	Если Ванесса.Объект.СоздаватьИнструкциюMarkdown И Не Ванесса.Объект.СоздаватьИнструкциюHTML Тогда
		
		ШаблонПараметра = "<a id=""%1"" />";
		ЗначениеПараметра = Ванесса._СтрШаблон(ШаблонПараметра, ПараметрIDЯкоря);
		
	// СоздаватьИнструкциюHTML
	ИначеЕсли Не Ванесса.Объект.СоздаватьИнструкциюMarkdown И Ванесса.Объект.СоздаватьИнструкциюHTML Тогда
		
		ДокументHTML = Новый ДокументHTML;
		УзелBODY = ДокументHTML.СоздатьЭлемент("body");
		ДокументHTML.ЭлементДокумента.ДобавитьДочерний(УзелBODY);
		
		НовыйУзел = ДокументHTML.СоздатьЭлемент("a");
		НовыйУзел.УстановитьАтрибут("id", ПараметрIDЯкоря);
		УзелBODY.ДобавитьДочерний(НовыйУзел);
		
		ЗначениеПараметра = ДокументHTML;
		
	Иначе
		ВызватьИсключение "Не реализовано.";
	КонецЕсли;
	
	ЗаполнитьПереданныеВШагТаблицы(ЗначениеПараметра);
	
КонецФункции

&НаКлиенте
//И я добавляю гиперссылку в автоинструкцию
//@ЯДобавляюГиперссылкуВАвтоинструкцию(ТабПарам)
Функция ЯДобавляюГиперссылкуВАвтоинструкцию(ТабПарам) Экспорт
	
	Если ТипЗнч(ТабПарам) <> Тип("Массив") 
		Или (ТипЗнч(ТабПарам) = Тип("Массив") И ТабПарам.Количество() = 0) Тогда
		
		ВызватьИсключение НСтр("ru = 'Параметры не заполнены'");
		
	КонецЕсли;
	
	ПараметрСсылка = ТабПарам[0].Кол2;
	ПараметрТекст = ТабПарам[1].Кол2;
	
	// СоздаватьИнструкциюMarkdown
	Если Ванесса.Объект.СоздаватьИнструкциюMarkdown И Не Ванесса.Объект.СоздаватьИнструкциюHTML Тогда
		
		ШаблонПараметра = " * <a href=""%1"">%2</a>";
		ЗначениеПараметра = Ванесса._СтрШаблон(ШаблонПараметра, ПараметрСсылка, ПараметрТекст);
		
	// СоздаватьИнструкциюHTML
	ИначеЕсли Не Ванесса.Объект.СоздаватьИнструкциюMarkdown И Ванесса.Объект.СоздаватьИнструкциюHTML Тогда
		
		ДокументHTML = Новый ДокументHTML;
		УзелBODY = ДокументHTML.СоздатьЭлемент("body");
		ДокументHTML.ЭлементДокумента.ДобавитьДочерний(УзелBODY);
		
		УзелDiv = ДокументHTML.СоздатьЭлемент("div");
		ДокументHTML.ЭлементДокумента.ДобавитьДочерний(УзелDiv);
		
		ЗначениеСтиля = "margin-bottom: 10px; color:#1068bf; border-bottom: 1px solid #1068bf; padding-bottom: 2px;'";
		
		НовыйУзел = ДокументHTML.СоздатьЭлемент("a");
		НовыйУзел.УстановитьАтрибут("style", ЗначениеСтиля);
		НовыйУзел.УстановитьАтрибут("href", ПараметрСсылка);
		
		НовыйУзел.ТекстовоеСодержимое = ПараметрТекст;
		
		УзелDiv.ДобавитьДочерний(НовыйУзел);
		
		ЗначениеПараметра = ДокументHTML;
		
	Иначе
		ВызватьИсключение "Не реализовано.";
	КонецЕсли;
	
	ЗаполнитьПереданныеВШагТаблицы(ЗначениеПараметра);
	
КонецФункции

&НаКлиенте
//И я добавляю горизонтальную линию в автоинструкцию
//@ЯДобавляюГоризонтальнуюЛиниюВАвтоинструкцию()
Функция ЯДобавляюГоризонтальнуюЛиниюВАвтоинструкцию() Экспорт
	
	// СоздаватьИнструкциюMarkdown
	Если Ванесса.Объект.СоздаватьИнструкциюMarkdown И Не Ванесса.Объект.СоздаватьИнструкциюHTML Тогда
		
		ЗначениеПараметра = "***";
		
	// СоздаватьИнструкциюHTML
	ИначеЕсли Не Ванесса.Объект.СоздаватьИнструкциюMarkdown И Ванесса.Объект.СоздаватьИнструкциюHTML Тогда
		
		ДокументHTML = Новый ДокументHTML;
		УзелBODY = ДокументHTML.СоздатьЭлемент("body");
		ДокументHTML.ЭлементДокумента.ДобавитьДочерний(УзелBODY);
		
		ЗначениеСтиля = "border-bottom: medium solid; margin: 20px 0px";
		
		УзелБлок = ДокументHTML.СоздатьЭлемент("div");
		УзелБлок.УстановитьАтрибут("style", ЗначениеСтиля);
		УзелBODY.ДобавитьДочерний(УзелБлок);
		
		ЗначениеПараметра = ДокументHTML;
		
	Иначе
		ВызватьИсключение "Не реализовано.";
	КонецЕсли;
	
	Парам = Новый Структура;
	Парам.Вставить("Кол1", ЗначениеПараметра);
	
	МассивПараметров = Новый Массив;
	МассивПараметров.Добавить(Парам);
	
	ПереданныеВШагТаблицы = Новый Массив;
	ПереданныеВШагТаблицы.Добавить(МассивПараметров);
	
	ТекущийШаг = Ванесса.ПолучитьСтруктуруТекущегоШагаИзМассивСценариевДляВыполнения();
	ТекущийШаг.Вставить("ПереданныеВШагТаблицы", ПереданныеВШагТаблицы);
	
КонецФункции

&НаКлиенте
//И я добавляю стили в автоинструкцию
//@ЯДобавляюСтилиВАвтоинструкцию(ТабПарам)
Функция ЯДобавляюСтилиВАвтоинструкцию(ТабПарам) Экспорт
	
	Если ТипЗнч(ТабПарам) <> Тип("Массив") 
		Или (ТипЗнч(ТабПарам) = Тип("Массив") И ТабПарам.Количество() = 0) Тогда
		
		ВызватьИсключение НСтр("ru = 'Параметры не заполнены'");
		
	КонецЕсли;
	
	// СоздаватьИнструкциюHTML
	Если Не Ванесса.Объект.СоздаватьИнструкциюMarkdown И Ванесса.Объект.СоздаватьИнструкциюHTML Тогда
		
		ДокументHTML = Новый ДокументHTML;
		УзелHEAD = ДокументHTML.СоздатьЭлемент("head");
		
		УзелSTYLE = ДокументHTML.СоздатьЭлемент("style");
		УзелSTYLE.УстановитьАтрибут("type", "text/css");
		
		ТекстовоеСодержимое = "";
		ШаблонСтрокиСтилей = "%1 %2";
		Для Каждого Параметр Из ТабПарам Цикл
			ТекстовоеСодержимое = Ванесса._СтрШаблон(ШаблонСтрокиСтилей, ТекстовоеСодержимое, Параметр.Кол1);
		КонецЦикла;
		УзелSTYLE.ТекстовоеСодержимое = ТекстовоеСодержимое;
		
		УзелHEAD.ДобавитьДочерний(УзелSTYLE);
		ДокументHTML.ДобавитьДочерний(УзелHEAD);
		
		ЗаполнитьПереданныеВШагТаблицы(ДокументHTML);
		
	КонецЕсли;
	
КонецФункции

&НаКлиенте
//И я добавляю нумерованное оглавление в автоинструкцию
//@ЯДобавляюНумерованноеОглавлениеВАвтоинструкцию(ТабПарам)
Функция ЯДобавляюНумерованноеОглавлениеВАвтоинструкцию(ТабПарам) Экспорт
	
	Если ТипЗнч(ТабПарам) <> Тип("Массив") 
		Или (ТипЗнч(ТабПарам) = Тип("Массив") И ТабПарам.Количество() <= 1 ) Тогда
		
		ВызватьИсключение НСтр("ru = 'Параметры не заполнены'");
		
	КонецЕсли;
	
	ЗначениеПараметра = Неопределено;
	
	// СоздаватьИнструкциюMarkdown
	Если Ванесса.Объект.СоздаватьИнструкциюMarkdown И Не Ванесса.Объект.СоздаватьИнструкциюHTML Тогда
		
		Оглавление = "
			| ## Оглавление
			|
			|***
			|
			|";
		
		ШаблонСтроки = "%1 %2. <a href=""%3"">%4</a>";
		
		// Начинаем с 1 т.к. первая строка это заголовки.
		Для Индекс = 1 По ТабПарам.ВГраница() Цикл
			
			СтрокаПараметров = ТабПарам[Индекс];
			
			ПараметрID = СокрЛП(СтрокаПараметров.Кол1);
			ПараметрТекст = СокрЛП(СтрокаПараметров.Кол2);
			ПараметрРодитель = СокрЛП(СтрокаПараметров.Кол3);
			
			Если Не ПустаяСтрока(ПараметрРодитель) Тогда
				СтрокаОглавления = Ванесса._СтрШаблон(ШаблонСтроки, "    ", Индекс, ПараметрID, ПараметрТекст);
			Иначе
				СтрокаОглавления = Ванесса._СтрШаблон(ШаблонСтроки, "", Индекс, ПараметрID, ПараметрТекст);
			КонецЕсли;
			
			Оглавление = Оглавление + Символы.ПС + СтрокаОглавления;
			
		КонецЦикла;
		
		ЗаполнитьПереданныеВШагТаблицы(Оглавление);
		
	// СоздаватьИнструкциюHTML
	ИначеЕсли Не Ванесса.Объект.СоздаватьИнструкциюMarkdown И Ванесса.Объект.СоздаватьИнструкциюHTML Тогда
		
		СоздатьОглавление(ТабПарам, Истина, ЗначениеПараметра);
		ЗаполнитьПереданныеВШагТаблицы(ЗначениеПараметра);
		
	Иначе
		ВызватьИсключение "Не реализовано.";
	КонецЕсли;
	
КонецФункции

&НаКлиенте
//И я добавляю не нумерованное оглавление в автоинструкцию
//@ЯДобавляюНеНумерованноеОглавлениеВАвтоинструкцию(ТабПарам)
Функция ЯДобавляюНеНумерованноеОглавлениеВАвтоинструкцию(ТабПарам) Экспорт
	
	Если ТипЗнч(ТабПарам) <> Тип("Массив") 
		Или (ТипЗнч(ТабПарам) = Тип("Массив") И ТабПарам.Количество() <= 1 ) Тогда
		
		ВызватьИсключение НСтр("ru = 'Параметры не заполнены'");
		
	КонецЕсли;
	
	ЗначениеПараметра = "";
	
	// СоздаватьИнструкциюMarkdown
	Если Ванесса.Объект.СоздаватьИнструкциюMarkdown И Не Ванесса.Объект.СоздаватьИнструкциюHTML Тогда
		
		Оглавление = "
			| ## Оглавление
			|
			|***
			|
			|";
		
		ШаблонСтроки = "%1 * <a href=""%2"">%3</a>";
		
		// Начинаем с 1 т.к. первая строка это заголовки.
		Для Индекс = 1 По ТабПарам.ВГраница() Цикл
			
			СтрокаПараметров = ТабПарам[Индекс];
			
			ПараметрID = СокрЛП(СтрокаПараметров.Кол1);
			ПараметрТекст = СокрЛП(СтрокаПараметров.Кол2);
			ПараметрРодитель = СокрЛП(СтрокаПараметров.Кол3);
			
			Если Не ПустаяСтрока(ПараметрРодитель) Тогда
				СтрокаОглавления = Ванесса._СтрШаблон(ШаблонСтроки, "    ", ПараметрID, ПараметрТекст);
			Иначе
				СтрокаОглавления = Ванесса._СтрШаблон(ШаблонСтроки, "", ПараметрID, ПараметрТекст);
			КонецЕсли;
			
			Оглавление = Оглавление + Символы.ПС + СтрокаОглавления;
			
		КонецЦикла;
		
		ЗаполнитьПереданныеВШагТаблицы(Оглавление);
		
	// СоздаватьИнструкциюHTML
	ИначеЕсли Не Ванесса.Объект.СоздаватьИнструкциюMarkdown И Ванесса.Объект.СоздаватьИнструкциюHTML Тогда
		
		СоздатьОглавление(ТабПарам, Ложь, ЗначениеПараметра);
		ЗаполнитьПереданныеВШагТаблицы(ЗначениеПараметра);
		
	Иначе
		ВызватьИсключение "Не реализовано.";
	КонецЕсли;
	
КонецФункции

//И я вставляю изображение из файла в автоинструкцию
//@ЯВставляюИзображениеИзФайлаВАвтоинструкцию()
Функция ЯВставляюИзображениеИзФайлаВАвтоинструкцию(Парам01) Экспорт
	
	Если ТипЗнч(Парам01) <> Тип("Строка") ИЛИ ПустаяСтрока(Парам01) Тогда
		
		ВызватьИсключение НСтр("ru = 'Параметр имя файла не заполнен'");
		
	КонецЕсли
	
КонецФункции

#Область СлужебныеПроцедурыИФункции

&НаКлиенте
Процедура ЗаполнитьПереданныеВШагТаблицы(ЗначениеПараметра)
	
	ТекущийШаг = Ванесса.ПолучитьСтруктуруТекущегоШагаИзМассивСценариевДляВыполнения();
	ПереданныеВШагТаблицы = ТекущийШаг.ПереданныеВШагТаблицы[0];
	ПереданныеВШагТаблицы.Очистить();
	ПереданныеВШагТаблицы.Добавить(Новый Структура("Кол1", ЗначениеПараметра));
	
КонецПроцедуры

&НаКлиенте
Процедура СоздатьОглавление(ТабПарам, НумерованныйСписок, ЗначениеПараметра)
	
	ДокументHTML = Новый ДокументHTML;
	УзелBODY = ДокументHTML.СоздатьЭлемент("body");
	ДокументHTML.ЭлементДокумента.ДобавитьДочерний(УзелBODY);
	
	УзелСекция = ДокументHTML.СоздатьЭлемент("nav");
	УзелСекция.УстановитьАтрибут("class", "toc-wrapper");
	
	УзелСодержание = ДокументHTML.СоздатьЭлемент("h1");
	УзелСодержание.ТекстовоеСодержимое = "Содержание";
	
	УзелСекция.ДобавитьДочерний(УзелСодержание);
	
	Если НумерованныйСписок Тогда
		УзелСписокСодержания = ДокументHTML.СоздатьЭлемент("ol");
		УзелСписокСодержания.УстановитьАтрибут("class", "toc_ol");
	Иначе
		УзелСписокСодержания = ДокументHTML.СоздатьЭлемент("ul");
		УзелСписокСодержания.УстановитьАтрибут("class", "toc_ul");
	КонецЕсли;
	
	// Начинаем с 1 т.к. первая строка это заголовки.
	Для Индекс = 1 По ТабПарам.ВГраница() Цикл
		
		СтрокаОглавления = ТабПарам[Индекс];
		
		ПараметрID = СокрЛП(СтрокаОглавления.Кол1);
		ПараметрТекст = СокрЛП(СтрокаОглавления.Кол2);
		ПараметрРодитель = СокрЛП(СтрокаОглавления.Кол3);
		IDЭлемента = Сред(ПараметрID, 2, СтрДлина(ПараметрID));
		IDРодителя = Сред(ПараметрРодитель, 2, СтрДлина(ПараметрРодитель));
		УзелРодитель = Неопределено;
		
		Если Не ПустаяСтрока(IDРодителя) Тогда
			УзелРодитель = ДокументHTML.ПолучитьЭлементПоИдентификатору(IDРодителя);
			Если УзелРодитель <> Неопределено Тогда
				УзелВложенныйСписок = Неопределено;
				Для Каждого ДочернийУзел Из УзелРодитель.ДочерниеУзлы Цикл
					Если ДочернийУзел.ИмяУзла = "ol" Или ДочернийУзел.ИмяУзла = "ul" Тогда
						УзелВложенныйСписок = ДочернийУзел;
						Прервать;
					КонецЕсли;
				КонецЦикла;
				Если УзелВложенныйСписок = Неопределено Тогда
					Если НумерованныйСписок Тогда
						УзелВложенныйСписок = ДокументHTML.СоздатьЭлемент("ol");
					Иначе
						УзелВложенныйСписок = ДокументHTML.СоздатьЭлемент("ul");
					КонецЕсли;
				КонецЕсли;
			КонецЕсли;
		КонецЕсли;
		
		УзелЭлементСодержания = ДокументHTML.СоздатьЭлемент("li");
		УзелЭлементСодержания.УстановитьАтрибут("id", IDЭлемента);
		УзелЭлементСодержания.УстановитьАтрибутИдентификатор("id", Истина);
		
		Если Не НумерованныйСписок Тогда
			УзелЭлементСодержания.УстановитьАтрибут("content", "");
		КонецЕсли;
		
		НовыйУзел = ДокументHTML.СоздатьЭлемент("a");
		НовыйУзел.УстановитьАтрибут("href", ПараметрID);
		НовыйУзел.ТекстовоеСодержимое = ПараметрТекст;
		
		УзелЭлементСодержания.ДобавитьДочерний(НовыйУзел);
		
		Если УзелРодитель <> Неопределено И УзелВложенныйСписок <> Неопределено Тогда
			УзелВложенныйСписок.ДобавитьДочерний(УзелЭлементСодержания);
			УзелРодитель.ДобавитьДочерний(УзелВложенныйСписок);
		Иначе
			УзелСписокСодержания.ДобавитьДочерний(УзелЭлементСодержания);
		КонецЕсли;
		
	КонецЦикла;
	
	УзелСекция.ДобавитьДочерний(УзелСписокСодержания);
	УзелBODY.ДобавитьДочерний(УзелСекция);
	
	ЗначениеПараметра = ДокументHTML;
	
КонецПроцедуры

#КонецОбласти
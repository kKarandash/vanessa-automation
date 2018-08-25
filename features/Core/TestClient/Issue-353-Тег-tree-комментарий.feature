# language: ru

@IgnoreOn82Builds
@IgnoreOnOFBuilds
@IgnoreOnWeb


Функционал: Проверка парсинга фичи когда есть тег tree и используется комментарий

Как разработчик
Я хочу чтобы корректно происходил парсинг фичи с включенным тегом tree, когда используется комментарий
Чтобы я мог иcпользовать этот тег в своих фичах

Контекст: 
	Дано Я запускаю сценарий открытия TestClient или подключаю уже существующий


Сценарий: Проверка парсинга фичи когда есть тег tree и используется комментарий
	Когда Я открываю VanessaBehavior в режиме TestClient
	И В поле с именем "КаталогФичСлужебный" я указываю путь к служебной фиче "ФичаДляПроверкиРаботыКомментария_Тег_tree"
	И Я нажимаю на кнопку перезагрузить сценарии в Vanessa-Behavior TestClient
	И     таблица формы с именем "ДеревоТестов" стала равной:
		| 'Наименование'                                      |
		| 'ФичаДляПроверкиРаботыКомментария_Тег_tree.feature' |
		| 'ФичаДляПроверкиРаботыКомментария_Тег_tree'         |
		| 'Проверка иерархии в сценарии'                      |
		| 'Когда Вот иерархия с ошибкой'                      |
		| 'И вот второй шаг'                                  |
		| 'И вот третий шаг'                                  |
		| 'И Вот иерархия без ошибки'                         |
	
	
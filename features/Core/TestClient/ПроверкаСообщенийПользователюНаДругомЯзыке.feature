# language: ru

@IgnoreOn82Builds
@IgnoreOnOFBuilds
@IgnoreOnWeb


@tree

Функциональность: Проверка сообщений пользователю на другом языке


Сценарий: Проверка сообщений пользователю на английском языке
		
	Дано Я закрыл все окна клиентского приложения
	И я закрываю сеанс TESTCLIENT
	Когда в базе есть пользователь "VanessaUserEN" с паролем "1" с языком "English"
	Когда Я копирую текущий профиль TestClient с установкой параметров:
		| 'Имя подключения' | 'Порт' | 'Логин'         | 'Пароль' |  'Дополнительные параметры строки запуска'  |
		| 'VanessaUserEN'   | '1'    | 'VanessaUserEN' | '1'      |   '/Len /Vlen'                              |	
	И Я подключаю клиент тестирования "VanessaUserEN" из таблицы клиентов тестирования
	И В командном интерфейсе я выбираю 'Основная' 'ОткрытьVanessaAutomation'
	Когда открылось окно '*autotest: Vanessa Automation'
	И я перехожу к закладке "Service and Settings"
	И я изменяю флаг 'Check Vanessa-Automation on 1C test client session'
	И я перехожу к закладке "Extended"
	И я активизирую поле с именем "КаталогИнструментовСлужебный"
	И В поле с именем "КаталогИнструментовСлужебный" я указываю значение реквизита объекта обработки "КаталогИнструментов"
	И я активизирую поле с именем "КаталогФичСлужебный"
	И я активизирую поле с именем "КаталогФичСлужебный"
	И я активизирую поле с именем "КаталогИнструментовСлужебный"
	И я запоминаю значение текущего поля как "ПутьКВанессе"
		
	И Я запоминаю значение выражения '$ПутьКВанессе$ + "\\features\Core\ExpectedSomething\ExpectedForms.feature"' в переменную "ПутьКФиче"
	И в поле с именем "КаталогФичСлужебный" я ввожу значение выражения "$ПутьКФиче$"
	И я перехожу к закладке "Run scenarios"
	И я нажимаю на кнопку 'Reload scenario'
	И у элемента с именем "ФлагСценарииЗагружены" я жду значения "Yes" в течение 30 секунд
	Когда в логе сообщений TestClient есть строки:
		| 'Features loaded' |
				
Сценарий: Удаление служебных пользователей
	Когда Я удаляю пользователя "VanessaUserEN"
	И я закрываю TestClient "VanessaUserEN"
	И в таблице клиентов тестирования я активизирую строку 'Этот клиент'
	
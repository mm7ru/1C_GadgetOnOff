// Получить данные выбора.
// 
// Параметры:
//  Пользователь - ПользовательИнформационнойБазы
// 
// Возвращаемое значение:
//  
Функция ПолучитьПользователя(Пользователь) Экспорт
	ПользовательСсылка = НайтиПоНаименованию(Пользователь.Имя);
	Если (ПользовательСсылка.Пустая()) Тогда
		НовыйПользователь = СоздатьЭлемент();
		НовыйПользователь.Наименование = Пользователь.Имя;
		НовыйПользователь.FullName = Пользователь.ПолноеИмя;
		НовыйПользователь.ЗаполнитьТаблицуРолей();
		
		НовыйПользователь.Записать();
		ПользовательСсылка = НовыйПользователь.Ссылка;
	КонецЕсли;	
	Возврат ПользовательСсылка;
КонецФункции
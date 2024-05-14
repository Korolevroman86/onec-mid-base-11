#Область ПрограммныйИнтерфейс

//Определяет имя формы и вызывает соответвующую процедуру для добавления полей на форму
//  Параметры:
//   Форма - ФормаКлиентскогоПриложения
//
Процедура ДобавлениеРеквизитовНаФорму(Форма) Экспорт;
//НачалоДоработки
//Королёв Р.В.14.05.2024 
//Определяет имя формы и вызывает соответвующую процедуру для добавления полей на форму

	ИмяФормы = Форма.ИмяФормы;
	
	Если ИмяФормы = "Документ.РеализацияТоваровУслуг.Форма.ФормаДокумента" Тогда  
		
		ДобавитьПолеВГруппуШапкаПраво(Форма);

	ИначеЕсли ИмяФормы = "Документ.ПоступлениеТоваровУслуг.Форма.ФормаДокумента" Тогда 
		
		ДобавитьПолеВГруппуШапкаПраво(Форма);
		
	ИначеЕсли ИмяФормы = "Документ.ЗаказПокупателя.Форма.ФормаДокумента" Тогда  
		
		ДобавитьПолеВГруппуШапкаПраво(Форма); 
			
    ИначеЕсли ИмяФормы = "Документ.ОплатаОтПокупателя.Форма.ФормаДокумента" Тогда 
		
		ДобавитьПолеНаФормуПередОснование(Форма); 
		
	ИначеЕсли ИмяФормы = "Документ.ОплатаПоставщику.Форма.ФормаДокумента" Тогда 
		
		ДобавитьПолеНаФормуПередСумма(Форма);
		
	КонецЕсли;

//КонецДоработки	
КонецПроцедуры

#КонецОбласти

#Область СлужебныеПроцедурыИФункции

Процедура ДобавитьПолеВГруппуШапкаПраво(Форма)
//НачалоДоработки
//Королёв Р.В.14.05.2024 
//Добавляет на форму поле "Контактное лицо"

	 ПолеВвода = Форма.Элементы.Добавить("КонтактноеЛицо", Тип("ПолеФормы"), Форма.Элементы.ГруппаШапкаПраво);
	 ПолеВвода.Вид = ВидПоляФормы.ПолеВвода;
	 ПолеВвода.ПутьКДанным = "Объект.KRV_КонтактноеЛицо";
//КонецДоработки	 
КонецПроцедуры 

Процедура ДобавитьПолеНаФормуПередСумма(Форма) 
//НачалоДоработки
//Королёв Р.В.14.05.2024 
//Добавляет на форму поле "Контактное лицо"	 

	 ПолеВвода = Форма.Элементы.Вставить("КонтактноеЛицо", Тип("ПолеФормы"), ,Форма.Элементы.СуммаДокумента);
	 ПолеВвода.Вид = ВидПоляФормы.ПолеВвода;
	 ПолеВвода.ПутьКДанным = "Объект.KRV_КонтактноеЛицо";
	 
//КонецДоработки	
КонецПроцедуры

 
Процедура ДобавитьПолеНаФормуПередОснование(Форма) 
//НачалоДоработки
//Королёв Р.В.14.05.2024 
//Добавляет на форму поле "Контактное лицо"

	 ПолеВвода = Форма.Элементы.Вставить("КонтактноеЛицо", Тип("ПолеФормы"), ,Форма.Элементы.Основание);
	 ПолеВвода.Вид = ВидПоляФормы.ПолеВвода;
	 ПолеВвода.ПутьКДанным = "Объект.KRV_КонтактноеЛицо";
	 
//КонецДоработки	  
КонецПроцедуры

#КонецОбласти


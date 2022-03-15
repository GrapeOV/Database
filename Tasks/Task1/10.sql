--10.	Показать название фирмы (Name) из таблицы Purchasing.Vendor. Если фирма называется 'Advanced Bicycles',
--заменить значение поля Name на NULL. Названия полей оставить без изменений.
SELECT NULLIF([Name], 'Advanced Bicycles') as [Name] FROM Purchasing.Vendor
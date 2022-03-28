--[2.3 Пункт]Для каждого пола найти суммарное количество часов отпуска из таблицы (поставить фильтр: работник был принят до 2008 года) HumanResourcles.Employee, не учитывать пустые значения 
USE AdventureWorks2019

SELECT Gender, sum(VacationHours) AS NumberOFhours2008
From HumanResources.Employee
WHERE Year(HireDate) < 2008
GROUP BY gender
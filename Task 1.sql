--[4.1 Пункт] Показать Фамилию Имя и Отчество самого пожилого сотрудника (Тaблицы HumanResources.Employee и Person.Person) Показать поля FirstName, MiddleName, LastName
USE AdventureWorks2019

SELECT a.FirstName, a.MiddleName, a.LastName, b.BirthDate
FROM Person.Person a, HumanResources.Employee b
WHERE b.BirthDate = (SELECT min(b.BirthDate) FROM HumanResources.Employee b)

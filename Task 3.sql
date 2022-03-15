--[3.3 Пункт] Показать список ID людей (поле BusinessEntityId) в котором указано работает ли человек в  магазине или нет из таблиц Sales.Store, Person.BusinessEntity, используя RIGHT OUTER JOIN
USE AdventureWorks2019

select a.BusinessEntityID, count(b.SalesPersonID) 
from Person.Person a
RIGHT JOIN Sales.Store b ON a.BusinessEntityID = b.SalesPersonID
group by a.BusinessEntityID
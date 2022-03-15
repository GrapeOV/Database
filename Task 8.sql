--[3.8 Пункт] Показать список ID которые содержатся в таблице Sales.Store(поле BusinessEntityID), но не содержатся в таблицах Sales.Customer(поле CustomerID)
USE AdventureWorks2019

select BusinessEntityID from Sales.Store
where not BusinessEntityID in (select CustomerId from Sales.Customer)
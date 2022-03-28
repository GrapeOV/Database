--[3.8 Пункт] Показать список ID которые содержатся в таблице Sales.Store(поле BusinessEntityID), но не содержатся в таблицах Sales.Customer(поле CustomerID)
USE AdventureWorks2019

SELECT BusinessEntityID
FROM Sales.Store
EXCEPT
SELECT CustomerID
FROM Sales.Customer

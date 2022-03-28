--[3.5 Пункт] Показать список складов (LocationID), на которых содержатся  несколько продуктов (ProductID) из таблицы Production.ProductInventory
USE AdventureWorks2019

SELECT DISTINCT a.LocationID, a.ProductID
FROM Production.ProductInventory as a
join Production.ProductInventory as b on a.LocationID = b.LocationID
and a.ProductID <> b.ProductID

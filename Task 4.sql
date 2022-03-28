--[3.4 Пункт] Показать список продуктов (ProductID) которые содержатся на нескольких складах (LocationID) из таблиц Production.BusinessEntity
USE AdventureWorks2019

SELECT DISTINCT a.ProductID, a.LocationID
FROM Production.ProductInventory as a
JOIN Production.ProductInventory as b ON a.ProductID = b.LocationID
AND a.LocationID <> b.LocationID

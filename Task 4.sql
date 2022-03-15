--[3.4 Пункт] Показать список продуктов (ProductID) которые содержатся на нескольких складах (LocationID) из таблиц Production.BusinessEntity
USE AdventureWorks2019

select ProductID 
from (select ProductID, count(*) as cnt from Production.ProductInventory group by ProductID) A
where cnt>1
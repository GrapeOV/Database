--[4.3 Пункт] Показать товар, для которого существует более 2 цветов в той же подкатегории (Таблица Production.Product). Показать поля [Name], COLOR и ProductSubcategoryID
USE AdventureWorks2019

select ProductSubcategoryID, Color, count(*) as cnt 
from Production.Product
where not ProductSubcategoryID is null and not Color is null
group by ProductSubcategoryID, Color
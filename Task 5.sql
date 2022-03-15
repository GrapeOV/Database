--[4.5 Пункт] Показать товары, цена которых больше средней цены в любой модели продуктов 
--(Таблица Production.Product). Показать поля [Name], ListPrice и ProductModelID
	use AdventureWorks2019

select  a.Name, a.ListPrice, a.ProductModelID
from Production.Product a
LEFT JOIN (
	select ProductModelID, avg(ListPrice) as AP from Production.Product
	where not ProductModelID is null
	group by ProductModelID) b
on a.ProductModelID = b.ProductModelID
where a.ListPrice > b.AP
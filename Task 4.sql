--[4.4 Пункт] Показать товары, цена которых равна максимальной цене товара из той же подкатегории 
--(Таблица Production.Product). Показать поля [Name],ListPrice и ProductSubcategoryID
	use AdventureWorks2019

	select a.Name, a.ProductSubcategoryID, b.MP
	from Production.Product a, 
	(select ProductSubcategoryID, max(ListPrice) as MP from Production.Product
	where not ProductSubcategoryID is null
	group by ProductSubcategoryID) b
	where a.ProductSubcategoryID = b.ProductSubcategoryID
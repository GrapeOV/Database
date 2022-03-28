--[4.4 Пункт] Показать товары, цена которых равна максимальной цене товара из той же подкатегории 
--(Таблица Production.Product). Показать поля [Name],ListPrice и ProductSubcategoryID
	use AdventureWorks2019

	SELECT [Name], ListPrice, a.ProductSubcategoryID
	FROM Production.Product as a
	join 
	(
	   SELECT ProductSubcategoryID, MAX(ListPrice) as MAXLISTpr
	   FROM Production.Product
	   WHERE ProductSubcategoryID IS NOT NULL
	   GROUP BY ProductSubcategoryID
	)
	as b ON a.ProductSubcategoryID = b.ProductSubcategoryID and a.ListPrice = b.MAXLISTpr

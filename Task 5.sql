--[4.5 Пункт] Показать товары, цена которых больше средней цены в любой модели продуктов 
--(Таблица Production.Product). Показать поля [Name], ListPrice и ProductModelID
	use AdventureWorks2019

SELECT [Name], ListPrice, ProductModelID 
FROM Production.Product
WHERE ListPrice > ALL(
  SELECT AVG(ListPrice) AS AVGLISTPRICE 
  FROM Production.Product
  WHERE ProductModelID IS NOT NULL 
  GROUP BY ProductModelID
)

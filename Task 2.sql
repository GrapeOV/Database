--[3.2 Пункт] Показать список продуктов (поле Name) в котором указано, есть ли у продукта название модели или нет, из таблиц ProductionModel Production.Product, используя LEFT OUTER JOIN
USE AdventureWorks2019

SELECT a.Name as ProductName, b.Name as ModelName
from Production.Product a
LEFT OUTER JOIN Production.ProductModel b
ON a.ProductModelID = b.ProductModelID
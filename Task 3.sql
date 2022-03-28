--[4.3 Пункт] Показать товар, для которого существует более 2 цветов в той же подкатегории (Таблица Production.Product). Показать поля [Name], COLOR и ProductSubcategoryID
USE AdventureWorks2019

SELECT p1.[Name], p1.Color, p1.ProductSubcategoryID
FROM Production.Product as p1
WHERE p1.Color IS NOT NULL
AND p1.ProductSubcategoryID IS NOT NULL
AND (
SELECT COUNT(DISTINCT p2.Color) as ColorCount
FROM Production.Product as p2
WHERE p2.color IS NOT NULL
AND p1.ProductSubcategoryID = p2.ProductSubcategoryID
) > 2
ORDER BY p1.Name, p1.ProductSubcategoryID

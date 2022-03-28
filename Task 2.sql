--[2.2 Пункт]Найти средний вес (Weight) из таблицы Production.Product, не учитывать пустые значения 
USE AdventureWorks2019

SELECT AVG(Weight) as AvgWeight 
FROM Production.Product 
WHERE Weight>0

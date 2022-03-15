--[2.1 Пункт] Найти минимальную цену товара (ListPrice) из таблицы Production.Product
USE AdventureWorks2019

SELECT MIN(ListPrice) as min 
FROM Production.Product
--WHERE ListPrice>0
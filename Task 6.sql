--[3.6 Пункт] Показать список продуктов из таблицы Production.Product  с таким же цветом как у продукта ML Road Frame - W - Yellow 38 
USE AdventureWorks2019

SELECT*FROM Production.Product
WHERE color = (select color from Production.Product where name ='ML Road Frame-W-Yellow, 38')
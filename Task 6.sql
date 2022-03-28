--[3.6 Пункт] Показать список продуктов из таблицы Production.Product  с таким же цветом как у продукта ML Road Frame - W - Yellow 38 
USE AdventureWorks2019

SELECT DISTINCT a.Name, a.color
From Production.Product as a
join Production.Product as b on a.Name  = b.Name 
and a.color = b.color WHERE a.color = (select color from Production.Product where name ='ML Road Frame-W-Yellow, 38')

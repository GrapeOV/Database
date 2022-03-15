--[2.5 Пункт] Вывести BisinessEntityID, LastReceiptDate, предусмотреть вывод общей суммы для всех 
--StandardPrice у различных BisinessEntityID из таблицы Purchasing.ProductVendor (Использовать ROOLUP)

USE AdventureWorks2019

select BusinessEntityID, StandardPrice, max(LastReceiptDate)
from  Purchasing.ProductVendor
group by
ROLLUP(BusinessEntityID, StandardPrice)
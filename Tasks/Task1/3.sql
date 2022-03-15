--3. Показать поля ProductID, BusinessEntityID, AverageLeadTime, StandardPrice из таблицы 
--Purchasing.ProductVendor, для товаров, имеющих цену продажи (поле не пустое) 
--при последней покупке (LastReceiptCost).
SELECT ProductID, BusinessEntityID, AverageLeadTime, StandardPrice FROM Purchasing.ProductVendor
WHERE LastReceiptCost IS NOT NULL

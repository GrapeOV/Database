--[4.2 Пункт] Определить количество сотрудников и штат(StateProvinceName) в котором проживает максимальное число сотрудников (Представление Sales.vSalesPerson)
USE AdventureWorks2019

SELECT TOP 1 StateProvinceName, COUNT(*) AS NumPerson
FROM Sales.vSalesPerson
GROUP BY StateProvinceName
ORDER BY COUNT(*) DESC
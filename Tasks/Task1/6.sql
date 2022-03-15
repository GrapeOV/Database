--6.	Показать ID (StateProvinceID) и название (Name) регионов или штатов, а также ID страны, на территории
--которой они располагаются (TerritoryID) из таблицы Person.StateProvince. Показать только регионы
--из списка ('Alaska', 'Alabama', 'Colorado', 'Georgia', 'Iowa'), используя оператор IN.
SELECT StateProvinceID, [Name], TerritoryID FROM Person.StateProvince
WHERE [Name] IN ('Alaska', 'Alabama', 'Colorado', 'Georgia', 'Iowa')
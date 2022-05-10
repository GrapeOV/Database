--2.	Показать местоположение выбранного произведения;
SELECT [Address] FROM Warehouse as a
JOIN Stock as b ON a.WarehouseID = b.WarehouseID
WHERE b.ArtID = (SELECT ArtID FROM Art WHERE [Name] = '9 вал')
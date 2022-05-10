--3.	Показать список носителей для выбранного произведения
SELECT DISTINCT StorageMedium.StorageMediumType FROM Art, StorageMedium
WHERE Art.[Name] = '9 вал' AND Art.StorageMediumID = StorageMedium.StorageMediumID
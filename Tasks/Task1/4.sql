--4.	Показать уникальные названия городов из таблицы Person.Address, у которых известна долгота и широта
--(SpatialLocation).
SELECT DISTINCT City FROM Person.Address
WHERE SpatialLocation IS NOT NULL
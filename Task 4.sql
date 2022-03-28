--[2.4 Пункт] Вывести пол, где среднее количество часов выходных больше 50 
USE AdventureWorks2019

SELECT Gender, AVG(VacationHours) AS Average_Hours
From HumanResources.Employee
GROUP BY Gender
HAVING AVG(VacationHours) > 50
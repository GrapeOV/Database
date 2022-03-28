--[3.1 Пункт]Показать номера телефонов (PhoneNumber) и поля PersonType FirstName LastName из таблиц Person.Person Person.PersonPhone
USE AdventureWorks2019

SELECT a.FirstName, a.LastName, a.PersonType, b.PhoneNumber
from Person.Person a
LEFT JOIN Person.PersonPhone b
ON a.BusinessEntityID = b.BusinessEntityID

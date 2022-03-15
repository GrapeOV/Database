--[3.7 Пункт] Показать комбинированный список таблиц Person.AddressType, Person.ContactType, по полям ID, Name, ModifiedDate используя UNION
USE AdventureWorks2019

select AddressTypeID, Name, ModifiedDate
from Person.AddressType

union

select ContactTypeID, Name, ModifiedDate
from Person.ContactType
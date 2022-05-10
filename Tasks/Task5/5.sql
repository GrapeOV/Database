--5.	Находить произведение по названию, году, коллекции и т.д.
SELECT Art.[Name], Art.[Name], Album.[Name] FROM Art, Album
WHERE Art.[Name] = '9 вал' AND Composition.CollectionID = Collection.CollectionID
AND Collection.[Name] = 'Наследие юнеско' AND YEAR(Collection.DateOfProduction) = 1999
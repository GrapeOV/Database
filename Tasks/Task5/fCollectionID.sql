CREATE FUNCTION dbo.fCollectionID
(
	@CollectionName NVARCHAR(255)
)
RETURNS UNIQUEIDENTIFIER
AS
BEGIN
	DECLARE @ID_Collection UNIQUEIDENTIFIER = 
			(SELECT TOP 1 ID
			FROM Collection
			WHERE [Name] = @CollectionName);
	RETURN @ID_Collection
END;
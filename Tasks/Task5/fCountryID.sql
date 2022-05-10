CREATE FUNCTION dbo.fCountryID
(
	@CountryName VARCHAR(50)
)
RETURNS UNIQUEIDENTIFIER
AS
BEGIN
	DECLARE @ID_Country UNIQUEIDENTIFIER = 
			(SELECT TOP 1 ID
			FROM Country
			WHERE [Name] = @CountryName);
	RETURN @ID_Country;
END;
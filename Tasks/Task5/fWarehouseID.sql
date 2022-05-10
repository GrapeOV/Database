CREATE FUNCTION dbo.fWarehouseID
(
	@Address VARCHAR(255)
)
RETURNS UNIQUEIDENTIFIER
AS
BEGIN
	DECLARE @ID_Warehouse UNIQUEIDENTIFIER = 
			(SELECT TOP 1 ID
			FROM Warehouse
			WHERE [Address] = @Address);
	RETURN @ID_Warehouse;
END;
--Процедура вставки данных в таблицу Collection
--CREATE 
CREATE PROC pCollectionInsert
(
	 @Name VARCHAR(255),
	 @DateOfProduction date
)
AS
BEGIN	
	BEGIN TRY
		BEGIN TRAN Insertion
			INSERT INTO [Collection]
			VALUES(NEWID(), @Name, @DateOfProduction)
		COMMIT TRAN
	END TRY
	BEGIN CATCH
	    ROLLBACK
		RAISERROR ('Unknown Error',16,1)
	END CATCH;
END;
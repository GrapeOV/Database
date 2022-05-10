CREATE PROC dbo.pArtInsert
(
	  @SerialNumber VARCHAR(255),
	  @AuthorFirstName NVARCHAR(50),
	  @AuthorPatronicName NVARCHAR(50),
	  @AuthorLastName NVARCHAR(50),
	  @Name VARCHAR(50),
	  @Description VARCHAR(50),
	  @Grade INT,
	  @CollectionName VARCHAR(255),
	  @StorageMediumType VARCHAR(50),
	  @CountryName VARCHAR(50),
	  @GenreName VARCHAR(50),
	  @Price FLOAT
)
AS
BEGIN
	BEGIN TRY
		BEGIN TRAN Insertion

			--1. Найти ID Author
			DECLARE @ID_Author UNIQUEIDENTIFIER = dbo.fAuthorID(@AuthorName);


			--2. Найти ID Collection
			DECLARE @ID_Collection UNIQUEIDENTIFIER = dbo.fCollectionID(@CollectionName);

			--3. Найти ID StorageMediumType
			DECLARE @ID_StorageMedium UNIQUEIDENTIFIER = dbo.fStorageMediumID(@StorageMediumType);

			--4. Найти ID Country
			DECLARE @ID_Country UNIQUEIDENTIFIER = dbo.fCountryID(@CountryName);

			--5. Найти ID Genre
			DECLARE @ID_Genre UNIQUEIDENTIFIER = dbo.fGenreID(@GenreName);

			--6. Вставляем новую запись в таблицу Art
			INSERT INTO Art
			VALUES(NEWID(), @SerialNumber, @ID_Author, @Name, @Duration, @ID_Collection, @ID_StorageMedium, @ID_Country, @ID_Genre, @Price);

		COMMIT
	END TRY
	BEGIN CATCH
	    ROLLBACK;
		DECLARE @ErrorMessage NVARCHAR(4000);
		DECLARE @ErrorSeverity INT;
		DECLARE @ErrorState INT;

		SELECT 
			@ErrorMessage = ERROR_MESSAGE(),
			@ErrorSeverity = ERROR_SEVERITY(),
			@ErrorState = ERROR_STATE();

		RAISERROR	(@ErrorMessage, -- Message text.
					@ErrorSeverity, -- Severity.
					@ErrorState -- State.
					);
	END CATCH;
END;
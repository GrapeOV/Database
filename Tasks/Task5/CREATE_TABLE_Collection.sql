USE ArtShop;

CREATE TABLE [Collection] (
    ID UNIQUEIDENTIFIER DEFAULT NEWID()
	CONSTRAINT PK_Collection PRIMARY KEY,
    [Name] VARCHAR(255) NOT NULL,
	DateOfProduction date,
);


ALTER TABLE [Collection]
ADD CONSTRAINT ch_EmptyCollectionName
CHECK (LEN([Name]) > 1);
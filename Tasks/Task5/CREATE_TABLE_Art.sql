USE ArtShop;

CREATE TABLE Art
(
	ID UNIQUEIDENTIFIER DEFAULT NEWID()
	CONSTRAINT PK_Art PRIMARY KEY,

	SerialNumber VARCHAR(255) NOT NULL,

	ID_Author UNIQUEIDENTIFIER NOT NULL
	CONSTRAINT FK_Author FOREIGN KEY 
	REFERENCES Author(ID)
	ON DELETE CASCADE 
	ON UPDATE CASCADE,

	[Name] VARCHAR(50) NOT NULL,
	[Description] VARCHAR(50),
	Grade INT NOT NULL,

	ID_Collection UNIQUEIDENTIFIER NOT NULL
	CONSTRAINT FK_Collection FOREIGN KEY 
	REFERENCES [Collection](ID)
	ON DELETE CASCADE 
	ON UPDATE CASCADE,

	ID_StorageMedium UNIQUEIDENTIFIER NOT NULL
	CONSTRAINT FK_StorageMedium FOREIGN KEY 
	REFERENCES StorageMedium(ID)
	ON DELETE CASCADE 
	ON UPDATE CASCADE,

	ID_Country UNIQUEIDENTIFIER NOT NULL
	CONSTRAINT FK_Country FOREIGN KEY 
	REFERENCES Country(ID)
	ON DELETE CASCADE 
	ON UPDATE CASCADE,

	ID_Genre UNIQUEIDENTIFIER NOT NULL
	CONSTRAINT FK_Genre FOREIGN KEY 
	REFERENCES Genre(ID)
	ON DELETE CASCADE 
	ON UPDATE CASCADE,

	Price FLOAT NOT NULL,
);

ALTER TABLE Art
ADD CONSTRAINT u_ArtSerialNumber UNIQUE(SerialNumber);
USE ArtShop;

CREATE TABLE Author (
    ID UNIQUEIDENTIFIER DEFAULT NEWID()
	CONSTRAINT PK_Author PRIMARY KEY,
    [Name] NVARCHAR(50) NOT NULL,
    Birthday date,
);

ALTER TABLE Author
ADD CONSTRAINT ch_EmptyAuthorName
CHECK (LEN([Name]) > 1);

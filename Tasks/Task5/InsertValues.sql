USE ArtShop;

--Insert Author
EXEC dbo.pAuthorInsert @FirstName = N'����' , @PatronicName = NULL, @LastName = '�����������', @Birthday = '1817-07-28'
EXEC dbo.pAuthorInsert @FirstName = N'�������' , @PatronicName = NULL, @LastName = '��� ���', @Birthday = '1853-04-30'
EXEC dbo.pAuthorInsert @FirstName = N'���������' , @PatronicName = NULL, @LastName = '����', @Birthday = '1904-05-11'


-- Insert Collection
EXEC dbo.pCollectionInsert @Name = '�������� ��������' , @Description = '��� ������ ���������', @DateOfProduction = '2017-09-11'
EXEC dbo.pCollectionInsert @Name = '������� ���������' , @Description = '�������� ��������', @DateOfProduction = '2003-06-03'
EXEC dbo.pCollectionInsert @Name = '�������� ������' , @Description = '������ ��������� �����', @DateOfProduction = '1999-12-23'


-- Insert Storage Medium
EXEC dbo.pStorageMediumInsert @StorageMediumType = 'NFT'
EXEC dbo.pStorageMediumInsert @StorageMediumType = 'Canvas'
EXEC dbo.pStorageMediumInsert @StorageMediumType = 'Online'


-- Insert Countries
EXEC dbo.pCountryInsert @Name = 'USA'
EXEC dbo.pCountryInsert @Name = 'France'
EXEC dbo.pCountryInsert @Name = 'Russia'


-- Insert Genres
EXEC dbo.pGenreInsert @Name = '��������'
EXEC dbo.pGenreInsert @Name = '����������'
EXEC dbo.pGenreInsert @Name = '�������������'


-- Insert Art
EXEC dbo.pArtInsert @SerialNumber='100D232E354',
@AuthorFirstName = '����',
@AuthorPatronicName = NULL, 
@AuthorLastName = '�����������',
@Name = '9 ���', 
@Grade = 5, 
@CollectionName = '�������� ������', 
@StorageMediumType = 'Canvas', 
@CountryName = 'Russia', 
@GenreName = '��������', 
@Price = 500

EXEC dbo.pArtInsert @SerialNumber='200D332E454',
@AuthorFirstName = '����',
@AuthorPatronicName = NULL, 
@AuthorLastName = '�����������',
@Name = '������ ����. �������� � ��������', 
@Grade = 5, 
@CollectionName = '������� ���������', 
@StorageMediumType = 'Online', 
@CountryName = 'Russia', 
@GenreName = '��������', 
@Price = 700

EXEC dbo.pArtInsert @SerialNumber='300D432E554',
@AuthorFirstName = '�������',
@AuthorPatronicName = NULL, 
@AuthorLastName = '��� ���',
@Name = '�����', 
@Grade = 4, 
@CollectionName = '�������� ��������', 
@StorageMediumType = 'NFT', 
@CountryName = 'France', 
@GenreName = '�������������', 
@Price = 600

EXEC dbo.pArtInsert @SerialNumber='400D532E654',
@AuthorFirstName = '���������',
@AuthorPatronicName = NULL, 
@AuthorLastName = '����',
@Name = '����������� �������', 
@Grade = 3, 
@CollectionName = '�������� ������', 
@StorageMediumType = 'Canvas', 
@CountryName = 'USA', 
@GenreName = '����������', 
@Price = 100


-- Insert Warehouse
EXEC dbo.pWarehouseInsert @Address='ul. Kosmonavtov 35-11,Vyborg,Leningradskaya oblast', @TelephoneNumber='89100900602'
EXEC dbo.pWarehouseInsert @Address='Sheldon Cooper & Leonard Hofstadter,Apt 4B 2311 North Los Robles Avenue,Pasadena', @TelephoneNumber='89100900703'


-- Insert Stock
EXEC dbo.pStockInsert @SerialNumber='100D232E354', @Address='ul. Kosmonavtov 35-11,Vyborg,Leningradskaya oblast'
EXEC dbo.pStockInsert @SerialNumber='200D332E454', @Address='ul. Kosmonavtov 35-11,Vyborg,Leningradskaya oblast'
EXEC dbo.pStockInsert @SerialNumber='300D432E554', @Address='ul. Kosmonavtov 35-11,Vyborg,Leningradskaya oblast'
EXEC dbo.pStockInsert @SerialNumber='400D532E654', @Address='Sheldon Cooper & Leonard Hofstadter,Apt 4B 2311 North Los Robles Avenue,Pasadena'
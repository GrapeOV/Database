USE ArtShop;

--Insert Author
EXEC dbo.pAuthorInsert @FirstName = N'Иван' , @PatronicName = NULL, @LastName = 'Айвазовский', @Birthday = '1817-07-28'
EXEC dbo.pAuthorInsert @FirstName = N'Винсент' , @PatronicName = NULL, @LastName = 'Ван Гог', @Birthday = '1853-04-30'
EXEC dbo.pAuthorInsert @FirstName = N'Сальвадор' , @PatronicName = NULL, @LastName = 'Дали', @Birthday = '1904-05-11'


-- Insert Collection
EXEC dbo.pCollectionInsert @Name = 'Музейный экспонат' , @Description = 'Под особым контролем', @DateOfProduction = '2017-09-11'
EXEC dbo.pCollectionInsert @Name = 'Частная коллекция' , @Description = 'Бережное хранение', @DateOfProduction = '2003-06-03'
EXEC dbo.pCollectionInsert @Name = 'Наследие юнеско' , @Description = 'Высоко леквидный актив', @DateOfProduction = '1999-12-23'


-- Insert Storage Medium
EXEC dbo.pStorageMediumInsert @StorageMediumType = 'NFT'
EXEC dbo.pStorageMediumInsert @StorageMediumType = 'Canvas'
EXEC dbo.pStorageMediumInsert @StorageMediumType = 'Online'


-- Insert Countries
EXEC dbo.pCountryInsert @Name = 'USA'
EXEC dbo.pCountryInsert @Name = 'France'
EXEC dbo.pCountryInsert @Name = 'Russia'


-- Insert Genres
EXEC dbo.pGenreInsert @Name = 'Живопись'
EXEC dbo.pGenreInsert @Name = 'Сюрреализм'
EXEC dbo.pGenreInsert @Name = 'Постмодернизм'


-- Insert Art
EXEC dbo.pArtInsert @SerialNumber='100D232E354',
@AuthorFirstName = 'Иван',
@AuthorPatronicName = NULL, 
@AuthorLastName = 'Айвазовский',
@Name = '9 Вал', 
@Grade = 5, 
@CollectionName = 'Наследие юнеско', 
@StorageMediumType = 'Canvas', 
@CountryName = 'Russia', 
@GenreName = 'Живопись', 
@Price = 500

EXEC dbo.pArtInsert @SerialNumber='200D332E454',
@AuthorFirstName = 'Иван',
@AuthorPatronicName = NULL, 
@AuthorLastName = 'Айвазовский',
@Name = 'Лунная Ночь. Купальня в Феодосии', 
@Grade = 5, 
@CollectionName = 'Частная коллекция', 
@StorageMediumType = 'Online', 
@CountryName = 'Russia', 
@GenreName = 'Живопись', 
@Price = 700

EXEC dbo.pArtInsert @SerialNumber='300D432E554',
@AuthorFirstName = 'Винсент',
@AuthorPatronicName = NULL, 
@AuthorLastName = 'Ван Гог',
@Name = 'Ирисы', 
@Grade = 4, 
@CollectionName = 'Музейный экспонат', 
@StorageMediumType = 'NFT', 
@CountryName = 'France', 
@GenreName = 'Постмодернизм', 
@Price = 600

EXEC dbo.pArtInsert @SerialNumber='400D532E654',
@AuthorFirstName = 'Сальвадор',
@AuthorPatronicName = NULL, 
@AuthorLastName = 'Дали',
@Name = 'Постоянство времени', 
@Grade = 3, 
@CollectionName = 'Наслежие юнеско', 
@StorageMediumType = 'Canvas', 
@CountryName = 'USA', 
@GenreName = 'Сюрреализм', 
@Price = 100


-- Insert Warehouse
EXEC dbo.pWarehouseInsert @Address='ul. Kosmonavtov 35-11,Vyborg,Leningradskaya oblast', @TelephoneNumber='89100900602'
EXEC dbo.pWarehouseInsert @Address='Sheldon Cooper & Leonard Hofstadter,Apt 4B 2311 North Los Robles Avenue,Pasadena', @TelephoneNumber='89100900703'


-- Insert Stock
EXEC dbo.pStockInsert @SerialNumber='100D232E354', @Address='ul. Kosmonavtov 35-11,Vyborg,Leningradskaya oblast'
EXEC dbo.pStockInsert @SerialNumber='200D332E454', @Address='ul. Kosmonavtov 35-11,Vyborg,Leningradskaya oblast'
EXEC dbo.pStockInsert @SerialNumber='300D432E554', @Address='ul. Kosmonavtov 35-11,Vyborg,Leningradskaya oblast'
EXEC dbo.pStockInsert @SerialNumber='400D532E654', @Address='Sheldon Cooper & Leonard Hofstadter,Apt 4B 2311 North Los Robles Avenue,Pasadena'
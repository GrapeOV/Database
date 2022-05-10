--4.	Показать список произведений по жанру исполнения;
SELECT DISTINCT Art.[Name] FROM Art, Genre
WHERE Genre.[Name] = 'Живопись' AND Genre.GenreID = Art.GenreID
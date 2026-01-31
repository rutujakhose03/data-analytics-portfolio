use project_movie_database;
show tables;
select * from directors;
select * from movies;
select count(*) from movies;
SELECT * FROM directors
WHERE name IN ('James Cameron', 'Luc Besson', 'John Woo');
SELECT * FROM directors
WHERE name LIKE 'S%';
SELECT COUNT(*) AS female_directors FROM directors WHERE gender = 1;
SELECT name FROM directors WHERE gender = 1 ORDER BY id LIMIT 1 OFFSET 9;
SELECT original_title, popularity FROM movies ORDER BY popularity DESC LIMIT 3;
SELECT original_title, revenue FROM movies ORDER BY revenue DESC LIMIT 3;
SELECT original_title, vote_average
FROM movies WHERE release_date >= '2000-01-01' ORDER BY vote_average DESC LIMIT 1;
SELECT m.original_title FROM movies m JOIN directors d ON m.director_id = d.id WHERE d.name = 'Brenda Chapman';
SELECT d.name, COUNT(m.id) AS total_movies FROM movies m JOIN directors d ON m.director_id = d.id
GROUP BY d.name ORDER BY total_movies DESC LIMIT 1;
SELECT d.name, SUM(m.revenue) AS total_revenue FROM movies m
JOIN directors d ON m.director_id = d.id GROUP BY d.name ORDER BY total_revenue DESC LIMIT 1;
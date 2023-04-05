-- 1 
SELECT * FROM pixar.theater;
SELECT t.title, b.domestic_sales, b.international_sales
FROM  pixar.box_office AS b
INNER JOIN pixar.movies AS t ON t.id = b.movie_id;

-- 2 
SELECT t.title, (b.domestic_sales + b.international_sales) AS vendas
FROM  pixar.box_office AS b
INNER JOIN pixar.movies AS t ON t.id = b.movie_id
WHERE   b.international_sales > b.domestic_sales;

-- 3
SELECT t.title, b.rating
FROM  pixar.box_office AS b
INNER JOIN pixar.movies AS t ON t.id = b.movie_id
ORDER BY t.title DESC, b.rating DESC;

-- 4 
SELECT t.name,
    t.location,
    m.title,
    m.director,
    m.year,
    m.length_minutes
FROM  pixar.theater AS t
LEFT JOIN pixar.movies AS m ON m.theater_id = t.id
ORDER BY t.name ASC ;

-- 5
SELECT t.name,
    t.location,
    m.title,
    m.director,
    m.year,
    m.length_minutes
FROM  pixar.theater AS t
RIGHT JOIN pixar.movies AS m ON m.theater_id = t.id
ORDER BY t.name ASC ;

-- 6
SELECT * FROM pixar.box_office;
SELECT 
    m.title,
    m.director,
    m.year,
    m.length_minutes
FROM  pixar.movies AS m
INNER JOIN  pixar.box_office AS b ON b.movie_id = m.id
WHERE m.theater_id <>  'NULL' AND  b.rating > 8;

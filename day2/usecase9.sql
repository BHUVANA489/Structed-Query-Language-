USE cdg_hyd_jfs_058;

SELECT * FROM movies;


INSERT INTO movies
(movie_code, title, genre, original_language, release_date, duration_minutes, director_name, age_certificate, audience_rating, production_budget, catalog_status)
VALUES
('MOV27001', 'Whispers in the Valley', 'Drama', 'Tamil', '2026-02-14', 128, 'Meera Krishnan', 'PARENTAL_GUIDANCE', 8.1, 42000000.00, 'RELEASED');


INSERT INTO movies
(movie_code, title, genre, original_language, release_date, duration_minutes, director_name, age_certificate, audience_rating, production_budget, catalog_status)
VALUES
('MOV27002', 'Beyond the Stars', 'Science Fiction', 'English', '2026-06-18', 142, 'Alex Morgan', 'PARENTAL_GUIDANCE', 7.8, 95000000.00, 'RELEASED'),
('MOV27003', 'The Little Banyan', 'Animation', 'Telugu', '2026-08-05', 102, 'Kiran Rao', 'ALL_AGES', 8.6, 22000000.00, 'RELEASED');


INSERT INTO movies
(movie_code, title, genre, original_language, release_date, duration_minutes, director_name, age_certificate, audience_rating, production_budget, catalog_status)
VALUES
('MOV27004', 'Shadows of Tomorrow', 'Thriller', 'English', NULL, 120, 'Nisha Kapoor', 'UNRATED', NULL, NULL, 'UPCOMING'),
('MOV25005', 'The Silent Port', 'Mystery', 'Malayalam', '2024-03-15', 115, 'Arun Das', 'ADULT', 7.1, 28000000.00, 'ARCHIVED');


-- Valid duration
INSERT INTO movies
(movie_code, title, genre, original_language, release_date, duration_minutes, director_name, age_certificate, audience_rating, production_budget, catalog_status)
VALUES
('MOV27006', 'Whispers in the Valley 2', 'Drama', 'Tamil', '2026-02-14', 130, 'Meera Krishnan', 'PARENTAL_GUIDANCE', 8.1, 42000000.00, 'RELEASED');


-- Valid rating
INSERT INTO movies
(movie_code, title, genre, original_language, release_date, duration_minutes, director_name, age_certificate, audience_rating, production_budget, catalog_status)
VALUES
('MOV27007', 'Beyond the Stars 2', 'Science Fiction', 'English', '2026-06-18', 142, 'Alex Morgan', 'PARENTAL_GUIDANCE', 9.1, 95000000.00, 'RELEASED');


-- Valid production budget
INSERT INTO movies
(movie_code, title, genre, original_language, release_date, duration_minutes, director_name, age_certificate, audience_rating, production_budget, catalog_status)
VALUES
('MOV27008', 'The Hidden Garden', 'Drama', 'Hindi', '2026-04-12', 118, 'Rahul Mehta', 'PARENTAL_GUIDANCE', 8.0, 38000000.00, 'RELEASED');


-- Valid age certificate
INSERT INTO movies
(movie_code, title, genre, original_language, release_date, duration_minutes, director_name, age_certificate, audience_rating, production_budget, catalog_status)
VALUES
('MOV27009', 'The Hidden Garden 2', 'Drama', 'Hindi', '2026-04-12', 118, 'Rahul Mehta', 'ALL_AGES', 8.0, 38000000.00, 'RELEASED');


-- Unique movie code
INSERT INTO movies
(movie_code, title, genre, original_language, release_date, duration_minutes, director_name, age_certificate, audience_rating, production_budget, catalog_status)
VALUES
('MOV27010', 'Whispers in the Valley 3', 'Drama', 'Tamil', '2026-02-14', 128, 'Meera Krishnan', 'PARENTAL_GUIDANCE', 8.1, 42000000.00, 'RELEASED');


UPDATE movies
SET release_date = '2027-04-16',
    age_certificate = 'PARENTAL_GUIDANCE'
WHERE movie_code = 'MOV27004';


UPDATE movies
SET audience_rating = 8.9
WHERE movie_code = 'MOV27003';


UPDATE movies
SET production_budget = production_budget * 1.05
WHERE genre = 'Science Fiction'
AND production_budget IS NOT NULL;


UPDATE movies
SET catalog_status = 'ARCHIVED'
WHERE catalog_status = 'RELEASED'
AND release_date < '2025-01-01';


UPDATE movies
SET audience_rating = 9.0
WHERE movie_code = 'MOV25005';


SELECT * FROM movies
WHERE catalog_status = 'ARCHIVED'
AND movie_code = 'MOV25005';


DELETE FROM movies
WHERE catalog_status = 'ARCHIVED'
AND movie_code = 'MOV25005';


INSERT INTO movies
(movie_code, title, genre, original_language, release_date, duration_minutes, director_name, age_certificate, audience_rating, production_budget, catalog_status)
VALUES
('MOV-TEMP-02', 'Legends of the Deccan', 'Fantasy', 'Telugu', '2026-05-20', 145, 'Aravind Kumar', 'PARENTAL_GUIDANCE', 9.0, 280000000.00, 'RELEASED');


SELECT * FROM movies
WHERE movie_code = 'MOV-TEMP-02';


DELETE FROM movies
WHERE movie_code = 'MOV-TEMP-02';


SELECT * FROM movies;
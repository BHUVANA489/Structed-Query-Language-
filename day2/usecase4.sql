USE cdg_hyd_jfs_058;

SELECT * FROM books;

INSERT INTO books 
(isbn, title, author_name, genre, publisher, publication_year, page_count, book_format, price, copies_available, language)
VALUES 
('9780143456789', 'The Art of Learning', 'Arjun Mehta', 'Education', 'Bright Books', 2020, 352, 'HARDCOVER', 3999.00, 8, 'English');


INSERT INTO books 
(isbn, title, author_name, genre, publisher, publication_year, page_count, book_format, price, copies_available, language)
VALUES 
('9780143456790', 'Mastering Python', 'Neha Sharma', 'Programming', 'TechWorld Press', 2021, 520, 'PAPERBACK', 2800.00, 15, 'English'),
('9780143456791', 'Computer Networks Explained', 'Vikram Rao', 'Computer Science', 'Future Press', 2023, 480, 'HARDCOVER', 5200.00, 5, 'English');


INSERT INTO books 
(isbn, title, author_name, genre, publisher, publication_year, page_count, book_format, price, copies_available, language)
VALUES 
('9780000000101', 'The Coastal Journey', 'Riya Sen', 'Fiction', NULL, 2024, 310, 'PAPERBACK', 549.00, 18, 'English'),
('9780000000102', 'Learning SQL Basics', 'Amit Rao', 'Education', 'Knowledge House', 2026, 240, 'EBOOK', 349.00, 0, 'English');


-- publication year 999
INSERT INTO books 
(isbn, title, author_name, genre, publisher, publication_year, page_count, book_format, price, copies_available, language)
VALUES 
('9780143456792', 'The Art of Learning', 'Arjun Mehta', 'Education', 'Bright Books', 999, 352, 'HARDCOVER', 3999.00, 8, 'English');


-- page count with 0
INSERT INTO books 
(isbn, title, author_name, genre, publisher, publication_year, page_count, book_format, price, copies_available, language)
VALUES 
('9780143456793', 'The Art of Learning', 'Arjun Mehta', 'Education', 'Bright Books', 2020, 0, 'HARDCOVER', 3999.00, 8, 'English');


-- negative price
INSERT INTO books 
(isbn, title, author_name, genre, publisher, publication_year, page_count, book_format, price, copies_available, language)
VALUES 
('9780143456794', 'Mastering Python', 'Neha Sharma', 'Programming', 'TechWorld Press', 2021, 520, 'PAPERBACK', -2800.00, 15, 'English');


-- book format AUDIOBOOK
INSERT INTO books 
(isbn, title, author_name, genre, publisher, publication_year, page_count, book_format, price, copies_available, language)
VALUES 
('9780143456795', 'Mastering Python', 'Neha Sharma', 'Programming', 'TechWorld Press', 2021, 520, 'AUDIOBOOK', 2800.00, 15, 'English');


-- duplicate ISBN
INSERT INTO books 
(isbn, title, author_name, genre, publisher, publication_year, page_count, book_format, price, copies_available, language)
VALUES 
('9780000000102', 'Mastering Python', 'Arjun Mehta', 'Programming', 'Knowledge House', 2026, 240, 'EBOOK', 349.00, 0, 'English');


UPDATE books 
SET copies_available = copies_available + 10 
WHERE title = 'Mastering Python';


UPDATE books 
SET price = price * 0.9 
WHERE book_format = 'EBOOK';


UPDATE books 
SET publisher = 'Greenfield Publications' 
WHERE title = 'The Coastal Journey';


UPDATE books 
SET copies_available = 15 
WHERE title = 'Learning SQL Basics';


UPDATE books 
SET page_count = 0 
WHERE title = 'Computer Networks Explained';


SELECT * FROM books 
WHERE isbn = 9780000000101;

DELETE FROM books 
WHERE isbn = 9780000000101;


INSERT INTO books 
(isbn, title, author_name, genre, publisher, publication_year, page_count, book_format, price, copies_available, language)
VALUES 
('9780000000199', 'The Coastal Journey', 'Riya Sen', 'Fiction', NULL, 2024, 310, 'PAPERBACK', 549.00, 18, 'English');


SELECT * FROM books 
WHERE isbn = 9780000000199;


DELETE FROM books 
WHERE isbn = 9780000000199;
UPDATE book
SET available=false
WHERE book_id=12;

INSERT INTO loan (loan_id, patron_id, date_out, book_id)
VALUES (1, 5, '2020-12-01', 12);

UPDATE patron
SET loan_id=1
WHERE patron_id = 5;

UPDATE book
SET available=true
WHERE book_id=12;

UPDATE loan
SET date_in='2020-12-01'
WHERE loan_id=1;

UPDATE patron
SET loan_id=null
WHERE patron_id=5;

SELECT first_name, last_name
FROM patron
WHERE patron.loan_id >= 0;

SELECT genres
FROM book
RIGHT JOIN genre ON book.genre_id = genre.genre_id
WHERE book.available = 0



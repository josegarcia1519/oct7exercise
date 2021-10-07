Join¶
Get all invoices where the unit_price on the invoice_line is greater than $0.99.
SELECT *
FROM invoice i
JOIN invoice_line il ON il.invoice_id = i.invoice_id
WHERE il.unit_price > 0.99;


Get the invoice_date, customer first_name and last_name, and total from all invoices.

SELECT i.invoice_date, i.total, c.first_name, c.last_name
FROM invoice i
JOIN customer c ON c.customer_id = i.customer_id;


Get the customer first_name and last_name and the support rep’s first_name and last_name from all customers.
Support reps are on the employee table.

SELECT c.first_name, c.last_name, e.first_name, e.last_name
FROM customer c
JOIN employee e ON e.employee_id = c.support_rep_id; 

Get the album title and the artist name from all albums.
SELECT al.title, ar.name
FROM album al
JOIN artist ar ON ar.artist_id = al.artist_id;

Get all playlist_track track_ids where the playlist name is Music.

SELECT pt.track_id
FROM  playlist p
join playlist_track pt
p.playlist_id = pt.playlist_id
WHERE p.name = 'Music'


Get all track name`s for `playlist_id.
SELECT t.name, pt.playlist_id
FROM playlist_track pt
JOIN track t ON pt.track_id = t.track_id

Get all track name`s and the playlist `name that they’re on ( 2 joins ).

SELECT pl.playlist_id, pl.name, t.name
FROM playlist pl
JOIN playlist_track pt ON pt.playlist_id = pl.playlist_id
JOIN track t ON t.track_id = pt.track_id;

Get all track name`s and album `title`s that are the genre `Alternative & Punk ( 2 joins ).
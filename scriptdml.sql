-- DML Data Manipulation Language (DML) adalah bahasa untuk manipulasi database
-- MEMBUAT DATABASE
CREATE DATABASE testDB;
USE testDB;
-- MEMBUAT TABEL
CREATE TABLE products
(
    id          VARCHAR(10)  NOT NULL,
    name        VARCHAR(100) NOT NULL,
    category TEXT,
    price       INT UNSIGNED NOT NULL,
    quantity    INT UNSIGNED NOT NULL DEFAULT 0,
    created_at  TIMESTAMP    NOT NULL DEFAULT CURRENT_TIMESTAMP
);
-- 
SHOW TABLES;
DESCRIBE products;
-- ALIAS
-- ALIAS untuk kolom (ingin mengubah nama kolom atau nama tabel ketika melakukan SELECT )
SELECT id       AS Kode,
       name     AS Nama,
       category AS Kategori,
       price    AS Harga,
       quantity AS Jumlah
FROM products;
-- ALIAS untuk tabel
SELECT p.id       AS Kode,
       p.name     AS Nama,
       p.category AS Kategori,
       p.price    AS Harga,
       p.quantity AS Jumlah
FROM products AS p;
-- INSERT data
INSERT INTO products(id, category, name, price, quantity)
VALUES ('P0006', 'Makanan', 'Bakso Rusuk', 25000, 200),
       ('P0007', 'Minuman', 'Es Jeruk', 10000, 300),
       ('P0008', 'Minuman', 'Es Campur', 15000, 500),
       ('P0009', 'Minuman', 'Es Teh Manis', 5000, 400),
       ('P0010', 'Lain-Lain', 'Kerupuk', 2500, 1000),
       ('P0011', 'Lain-Lain', 'Keripik Udang', 10000, 300),
       ('P0012', 'Lain-Lain', 'Es Krim', 5000, 200),
       ('P0013', 'Makanan', 'Mie Ayam Jamur', 20000, 50),
       ('P0014', 'Makanan', 'Bakso Telor', 20000, 150),
       ('P0015', 'Makanan', 'Bakso Jando', 25000, 300);
-- INSERT data
INSERT INTO products(id, name, price, quantity)
VALUES ('P9999', 'Bakso Telor', 20000, 150),
       ('P9999', 'Bakso Jando', 25000, 300);
-- melihat tabel
SELECT *
FROM products
-- WHERE OPERATOR
-- WHERE >= lebih dari atau sama dengan
SELECT *
FROM products
WHERE quantity >= 100;
-- WHERE != tidak sama dengan
SELECT *
FROM products
WHERE category != 'Makanan';
-- WHERE AND jawabannya tidak ada
SELECT *
FROM products
WHERE category = 'Makanan'
  AND price < 20000;
-- WHERE OR
SELECT *
FROM products
WHERE category = 'Makanan'
  OR price < 20000;
-- WHERE penambahan kurung
SELECT *
FROM products
WHERE (category = 'Makanan' OR quantity > 500)
  AND price > 20000;
-- WHERE dan LIKE (mencari sebagian data, tidak sensitif); coba NOT LIKE
SELECT *
FROM products
WHERE name LIKE 'ES%';
-- WHERE dan NULL (data kosong); coba NOT NULL
SELECT *
FROM products
WHERE category IS NULL;
-- WHERE dan BETWEEN (diantara); coba NOT BETWEEN
SELECT *
FROM products
WHERE price BETWEEN 10000 AND 20000;
--WHERE dan IN (mencari beberapa nilai)
SELECT *
FROM products
WHERE category IN ('Makanan', 'Minuman');





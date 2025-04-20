-- DML Data Manipulation Language (DML) adalah bahasa untuk manipulasi database
-- MEMBUAT DATABASE
CREATE DATABASE testDB;
USE testDB;
-- MEMBUAT TABEL
CREATE TABLE products
(
    id          VARCHAR(10)  NOT NULL,
    name        VARCHAR(100) NOT NULL,
    description TEXT,
    price       INT UNSIGNED NOT NULL,
    quantity    INT UNSIGNED NOT NULL DEFAULT 0,
    created_at  TIMESTAMP    NOT NULL DEFAULT CURRENT_TIMESTAMP
);
-- MELIHAT TABEL DAN MENDESKRIPSIKANNYA
SHOW TABLES;
DESCRIBE products;
-- ALIAS
-- ALIAS UNTUK KOLOM (ingin mengubah nama kolom atau nama tabel ketika melakukan SELECT )
SELECT id       AS Kode,
       name     AS Nama,
       category AS Kategori,
       price    AS Harga,
       quantity AS Jumlah
FROM products;






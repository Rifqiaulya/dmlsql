-- DML Data Manipulation Language (DML) adalah bahasa untuk mengkueri informasi dari database dengan akses seperti memasukkan, menghapus, dan memodifikasi baris dalam database
CREATE TABLE products
(
    id          VARCHAR(10)  NOT NULL,
    name        VARCHAR(100) NOT NULL,
    description TEXT,
    price       INT UNSIGNED NOT NULL,
    quantity    INT UNSIGNED NOT NULL DEFAULT 0,
    created_at  TIMESTAMP    NOT NULL DEFAULT CURRENT_TIMESTAMP
);

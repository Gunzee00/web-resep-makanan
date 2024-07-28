Cara instalasi

Projek ini menggunakan laravel 9.
jadi instal terlebih dahulu laravel kamu.

Jalankan command artisan berikut

PHP artisan key:generate
composer install

karena databasenya tidak menggunakan migration, maka set databasenya pada env. menggunakan 
database yang saya buat di folder yang bernama resep-makanan-coba.sql

lalu jalankan php artisan serve